module DispatchQueue(
  input         clock,
  input         reset,
  output        io_enq_canAccept,
  input         io_enq_needAlloc_0,
  input         io_enq_needAlloc_1,
  input         io_enq_needAlloc_2,
  input         io_enq_req_0_valid,
  input         io_enq_req_0_bits_cf_trigger_backendEn_0,
  input         io_enq_req_0_bits_cf_trigger_backendEn_1,
  input         io_enq_req_0_bits_cf_trigger_backendHit_0,
  input         io_enq_req_0_bits_cf_trigger_backendHit_1,
  input         io_enq_req_0_bits_cf_trigger_backendHit_2,
  input         io_enq_req_0_bits_cf_trigger_backendHit_3,
  input         io_enq_req_0_bits_cf_trigger_backendHit_4,
  input         io_enq_req_0_bits_cf_trigger_backendHit_5,
  input         io_enq_req_0_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_0_bits_cf_pd_brType,
  input         io_enq_req_0_bits_cf_pd_isCall,
  input         io_enq_req_0_bits_cf_pd_isRet,
  input         io_enq_req_0_bits_cf_pred_taken,
  input  [6:0]  io_enq_req_0_bits_cf_waitForRobIdx_value,
  input         io_enq_req_0_bits_cf_loadWaitBit,
  input         io_enq_req_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_0_bits_cf_ssid,
  input         io_enq_req_0_bits_cf_ftqPtr_flag,
  input  [5:0]  io_enq_req_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_0_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_0_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_0_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_0_bits_ctrl_fuOpType,
  input         io_enq_req_0_bits_ctrl_rfWen,
  input         io_enq_req_0_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_0_bits_ctrl_selImm,
  input  [19:0] io_enq_req_0_bits_ctrl_imm,
  input         io_enq_req_0_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_0_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_0_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_0_bits_ctrl_fpu_fromInt,
  input         io_enq_req_0_bits_ctrl_fpu_wflags,
  input         io_enq_req_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_0_bits_ctrl_fpu_div,
  input         io_enq_req_0_bits_ctrl_fpu_sqrt,
  input         io_enq_req_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_0_bits_ctrl_fpu_fmt,
  input         io_enq_req_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_0_bits_ctrl_fpu_rm,
  input  [6:0]  io_enq_req_0_bits_psrc_0,
  input  [6:0]  io_enq_req_0_bits_psrc_1,
  input  [6:0]  io_enq_req_0_bits_psrc_2,
  input  [6:0]  io_enq_req_0_bits_pdest,
  input         io_enq_req_0_bits_robIdx_flag,
  input  [6:0]  io_enq_req_0_bits_robIdx_value,
  input         io_enq_req_1_valid,
  input         io_enq_req_1_bits_cf_trigger_backendEn_0,
  input         io_enq_req_1_bits_cf_trigger_backendEn_1,
  input         io_enq_req_1_bits_cf_trigger_backendHit_0,
  input         io_enq_req_1_bits_cf_trigger_backendHit_1,
  input         io_enq_req_1_bits_cf_trigger_backendHit_2,
  input         io_enq_req_1_bits_cf_trigger_backendHit_3,
  input         io_enq_req_1_bits_cf_trigger_backendHit_4,
  input         io_enq_req_1_bits_cf_trigger_backendHit_5,
  input         io_enq_req_1_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_1_bits_cf_pd_brType,
  input         io_enq_req_1_bits_cf_pd_isCall,
  input         io_enq_req_1_bits_cf_pd_isRet,
  input         io_enq_req_1_bits_cf_pred_taken,
  input  [6:0]  io_enq_req_1_bits_cf_waitForRobIdx_value,
  input         io_enq_req_1_bits_cf_loadWaitBit,
  input         io_enq_req_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_1_bits_cf_ssid,
  input         io_enq_req_1_bits_cf_ftqPtr_flag,
  input  [5:0]  io_enq_req_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_1_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_1_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_1_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_1_bits_ctrl_fuOpType,
  input         io_enq_req_1_bits_ctrl_rfWen,
  input         io_enq_req_1_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_1_bits_ctrl_selImm,
  input  [19:0] io_enq_req_1_bits_ctrl_imm,
  input         io_enq_req_1_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_1_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_1_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_1_bits_ctrl_fpu_fromInt,
  input         io_enq_req_1_bits_ctrl_fpu_wflags,
  input         io_enq_req_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_1_bits_ctrl_fpu_div,
  input         io_enq_req_1_bits_ctrl_fpu_sqrt,
  input         io_enq_req_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_1_bits_ctrl_fpu_fmt,
  input         io_enq_req_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_1_bits_ctrl_fpu_rm,
  input  [6:0]  io_enq_req_1_bits_psrc_0,
  input  [6:0]  io_enq_req_1_bits_psrc_1,
  input  [6:0]  io_enq_req_1_bits_psrc_2,
  input  [6:0]  io_enq_req_1_bits_pdest,
  input         io_enq_req_1_bits_robIdx_flag,
  input  [6:0]  io_enq_req_1_bits_robIdx_value,
  input         io_enq_req_2_valid,
  input         io_enq_req_2_bits_cf_trigger_backendEn_0,
  input         io_enq_req_2_bits_cf_trigger_backendEn_1,
  input         io_enq_req_2_bits_cf_trigger_backendHit_0,
  input         io_enq_req_2_bits_cf_trigger_backendHit_1,
  input         io_enq_req_2_bits_cf_trigger_backendHit_2,
  input         io_enq_req_2_bits_cf_trigger_backendHit_3,
  input         io_enq_req_2_bits_cf_trigger_backendHit_4,
  input         io_enq_req_2_bits_cf_trigger_backendHit_5,
  input         io_enq_req_2_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_2_bits_cf_pd_brType,
  input         io_enq_req_2_bits_cf_pd_isCall,
  input         io_enq_req_2_bits_cf_pd_isRet,
  input         io_enq_req_2_bits_cf_pred_taken,
  input  [6:0]  io_enq_req_2_bits_cf_waitForRobIdx_value,
  input         io_enq_req_2_bits_cf_loadWaitBit,
  input         io_enq_req_2_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_2_bits_cf_ssid,
  input         io_enq_req_2_bits_cf_ftqPtr_flag,
  input  [5:0]  io_enq_req_2_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_2_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_2_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_2_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_2_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_2_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_2_bits_ctrl_fuOpType,
  input         io_enq_req_2_bits_ctrl_rfWen,
  input         io_enq_req_2_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_2_bits_ctrl_selImm,
  input  [19:0] io_enq_req_2_bits_ctrl_imm,
  input         io_enq_req_2_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_2_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_2_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_2_bits_ctrl_fpu_fromInt,
  input         io_enq_req_2_bits_ctrl_fpu_wflags,
  input         io_enq_req_2_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_2_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_2_bits_ctrl_fpu_div,
  input         io_enq_req_2_bits_ctrl_fpu_sqrt,
  input         io_enq_req_2_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_2_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_2_bits_ctrl_fpu_fmt,
  input         io_enq_req_2_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_2_bits_ctrl_fpu_rm,
  input  [6:0]  io_enq_req_2_bits_psrc_0,
  input  [6:0]  io_enq_req_2_bits_psrc_1,
  input  [6:0]  io_enq_req_2_bits_psrc_2,
  input  [6:0]  io_enq_req_2_bits_pdest,
  input         io_enq_req_2_bits_robIdx_flag,
  input  [6:0]  io_enq_req_2_bits_robIdx_value,
  input         io_enq_req_3_valid,
  input         io_enq_req_3_bits_cf_trigger_backendEn_0,
  input         io_enq_req_3_bits_cf_trigger_backendEn_1,
  input         io_enq_req_3_bits_cf_trigger_backendHit_0,
  input         io_enq_req_3_bits_cf_trigger_backendHit_1,
  input         io_enq_req_3_bits_cf_trigger_backendHit_2,
  input         io_enq_req_3_bits_cf_trigger_backendHit_3,
  input         io_enq_req_3_bits_cf_trigger_backendHit_4,
  input         io_enq_req_3_bits_cf_trigger_backendHit_5,
  input         io_enq_req_3_bits_cf_pd_isRVC,
  input  [1:0]  io_enq_req_3_bits_cf_pd_brType,
  input         io_enq_req_3_bits_cf_pd_isCall,
  input         io_enq_req_3_bits_cf_pd_isRet,
  input         io_enq_req_3_bits_cf_pred_taken,
  input  [6:0]  io_enq_req_3_bits_cf_waitForRobIdx_value,
  input         io_enq_req_3_bits_cf_loadWaitBit,
  input         io_enq_req_3_bits_cf_loadWaitStrict,
  input  [4:0]  io_enq_req_3_bits_cf_ssid,
  input         io_enq_req_3_bits_cf_ftqPtr_flag,
  input  [5:0]  io_enq_req_3_bits_cf_ftqPtr_value,
  input  [2:0]  io_enq_req_3_bits_cf_ftqOffset,
  input  [1:0]  io_enq_req_3_bits_ctrl_srcType_0,
  input  [1:0]  io_enq_req_3_bits_ctrl_srcType_1,
  input  [1:0]  io_enq_req_3_bits_ctrl_srcType_2,
  input  [3:0]  io_enq_req_3_bits_ctrl_fuType,
  input  [6:0]  io_enq_req_3_bits_ctrl_fuOpType,
  input         io_enq_req_3_bits_ctrl_rfWen,
  input         io_enq_req_3_bits_ctrl_fpWen,
  input  [3:0]  io_enq_req_3_bits_ctrl_selImm,
  input  [19:0] io_enq_req_3_bits_ctrl_imm,
  input         io_enq_req_3_bits_ctrl_fpu_isAddSub,
  input         io_enq_req_3_bits_ctrl_fpu_typeTagIn,
  input         io_enq_req_3_bits_ctrl_fpu_typeTagOut,
  input         io_enq_req_3_bits_ctrl_fpu_fromInt,
  input         io_enq_req_3_bits_ctrl_fpu_wflags,
  input         io_enq_req_3_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_enq_req_3_bits_ctrl_fpu_fmaCmd,
  input         io_enq_req_3_bits_ctrl_fpu_div,
  input         io_enq_req_3_bits_ctrl_fpu_sqrt,
  input         io_enq_req_3_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_enq_req_3_bits_ctrl_fpu_typ,
  input  [1:0]  io_enq_req_3_bits_ctrl_fpu_fmt,
  input         io_enq_req_3_bits_ctrl_fpu_ren3,
  input  [2:0]  io_enq_req_3_bits_ctrl_fpu_rm,
  input  [6:0]  io_enq_req_3_bits_psrc_0,
  input  [6:0]  io_enq_req_3_bits_psrc_1,
  input  [6:0]  io_enq_req_3_bits_psrc_2,
  input  [6:0]  io_enq_req_3_bits_pdest,
  input         io_enq_req_3_bits_robIdx_flag,
  input  [6:0]  io_enq_req_3_bits_robIdx_value,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output        io_deq_0_bits_cf_trigger_backendEn_0,
  output        io_deq_0_bits_cf_trigger_backendEn_1,
  output        io_deq_0_bits_cf_trigger_backendHit_0,
  output        io_deq_0_bits_cf_trigger_backendHit_1,
  output        io_deq_0_bits_cf_trigger_backendHit_2,
  output        io_deq_0_bits_cf_trigger_backendHit_3,
  output        io_deq_0_bits_cf_trigger_backendHit_4,
  output        io_deq_0_bits_cf_trigger_backendHit_5,
  output        io_deq_0_bits_cf_pd_isRVC,
  output [1:0]  io_deq_0_bits_cf_pd_brType,
  output        io_deq_0_bits_cf_pd_isCall,
  output        io_deq_0_bits_cf_pd_isRet,
  output        io_deq_0_bits_cf_pred_taken,
  output [6:0]  io_deq_0_bits_cf_waitForRobIdx_value,
  output        io_deq_0_bits_cf_loadWaitBit,
  output        io_deq_0_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_0_bits_cf_ssid,
  output        io_deq_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_deq_0_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_0_bits_cf_ftqOffset,
  output [1:0]  io_deq_0_bits_ctrl_srcType_0,
  output [1:0]  io_deq_0_bits_ctrl_srcType_1,
  output [1:0]  io_deq_0_bits_ctrl_srcType_2,
  output [3:0]  io_deq_0_bits_ctrl_fuType,
  output [6:0]  io_deq_0_bits_ctrl_fuOpType,
  output        io_deq_0_bits_ctrl_rfWen,
  output        io_deq_0_bits_ctrl_fpWen,
  output [3:0]  io_deq_0_bits_ctrl_selImm,
  output [19:0] io_deq_0_bits_ctrl_imm,
  output        io_deq_0_bits_ctrl_fpu_isAddSub,
  output        io_deq_0_bits_ctrl_fpu_typeTagIn,
  output        io_deq_0_bits_ctrl_fpu_typeTagOut,
  output        io_deq_0_bits_ctrl_fpu_fromInt,
  output        io_deq_0_bits_ctrl_fpu_wflags,
  output        io_deq_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_deq_0_bits_ctrl_fpu_fmaCmd,
  output        io_deq_0_bits_ctrl_fpu_div,
  output        io_deq_0_bits_ctrl_fpu_sqrt,
  output        io_deq_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_deq_0_bits_ctrl_fpu_typ,
  output [1:0]  io_deq_0_bits_ctrl_fpu_fmt,
  output        io_deq_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_deq_0_bits_ctrl_fpu_rm,
  output [6:0]  io_deq_0_bits_psrc_0,
  output [6:0]  io_deq_0_bits_psrc_1,
  output [6:0]  io_deq_0_bits_psrc_2,
  output [6:0]  io_deq_0_bits_pdest,
  output        io_deq_0_bits_robIdx_flag,
  output [6:0]  io_deq_0_bits_robIdx_value,
  output        io_deq_0_bits_lqIdx_flag,
  output [5:0]  io_deq_0_bits_lqIdx_value,
  output        io_deq_0_bits_sqIdx_flag,
  output [4:0]  io_deq_0_bits_sqIdx_value,
  input         io_deq_1_ready,
  output        io_deq_1_valid,
  output        io_deq_1_bits_cf_trigger_backendEn_0,
  output        io_deq_1_bits_cf_trigger_backendEn_1,
  output        io_deq_1_bits_cf_trigger_backendHit_0,
  output        io_deq_1_bits_cf_trigger_backendHit_1,
  output        io_deq_1_bits_cf_trigger_backendHit_2,
  output        io_deq_1_bits_cf_trigger_backendHit_3,
  output        io_deq_1_bits_cf_trigger_backendHit_4,
  output        io_deq_1_bits_cf_trigger_backendHit_5,
  output        io_deq_1_bits_cf_pd_isRVC,
  output [1:0]  io_deq_1_bits_cf_pd_brType,
  output        io_deq_1_bits_cf_pd_isCall,
  output        io_deq_1_bits_cf_pd_isRet,
  output        io_deq_1_bits_cf_pred_taken,
  output [6:0]  io_deq_1_bits_cf_waitForRobIdx_value,
  output        io_deq_1_bits_cf_loadWaitBit,
  output        io_deq_1_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_1_bits_cf_ssid,
  output        io_deq_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_deq_1_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_1_bits_cf_ftqOffset,
  output [1:0]  io_deq_1_bits_ctrl_srcType_0,
  output [1:0]  io_deq_1_bits_ctrl_srcType_1,
  output [1:0]  io_deq_1_bits_ctrl_srcType_2,
  output [3:0]  io_deq_1_bits_ctrl_fuType,
  output [6:0]  io_deq_1_bits_ctrl_fuOpType,
  output        io_deq_1_bits_ctrl_rfWen,
  output        io_deq_1_bits_ctrl_fpWen,
  output [3:0]  io_deq_1_bits_ctrl_selImm,
  output [19:0] io_deq_1_bits_ctrl_imm,
  output        io_deq_1_bits_ctrl_fpu_isAddSub,
  output        io_deq_1_bits_ctrl_fpu_typeTagIn,
  output        io_deq_1_bits_ctrl_fpu_typeTagOut,
  output        io_deq_1_bits_ctrl_fpu_fromInt,
  output        io_deq_1_bits_ctrl_fpu_wflags,
  output        io_deq_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_deq_1_bits_ctrl_fpu_fmaCmd,
  output        io_deq_1_bits_ctrl_fpu_div,
  output        io_deq_1_bits_ctrl_fpu_sqrt,
  output        io_deq_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_deq_1_bits_ctrl_fpu_typ,
  output [1:0]  io_deq_1_bits_ctrl_fpu_fmt,
  output        io_deq_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_deq_1_bits_ctrl_fpu_rm,
  output [6:0]  io_deq_1_bits_psrc_0,
  output [6:0]  io_deq_1_bits_psrc_1,
  output [6:0]  io_deq_1_bits_psrc_2,
  output [6:0]  io_deq_1_bits_pdest,
  output        io_deq_1_bits_robIdx_flag,
  output [6:0]  io_deq_1_bits_robIdx_value,
  output        io_deq_1_bits_lqIdx_flag,
  output [5:0]  io_deq_1_bits_lqIdx_value,
  output        io_deq_1_bits_sqIdx_flag,
  output [4:0]  io_deq_1_bits_sqIdx_value,
  input         io_deq_2_ready,
  output        io_deq_2_valid,
  output        io_deq_2_bits_cf_trigger_backendEn_0,
  output        io_deq_2_bits_cf_trigger_backendEn_1,
  output        io_deq_2_bits_cf_trigger_backendHit_0,
  output        io_deq_2_bits_cf_trigger_backendHit_1,
  output        io_deq_2_bits_cf_trigger_backendHit_2,
  output        io_deq_2_bits_cf_trigger_backendHit_3,
  output        io_deq_2_bits_cf_trigger_backendHit_4,
  output        io_deq_2_bits_cf_trigger_backendHit_5,
  output        io_deq_2_bits_cf_pd_isRVC,
  output [1:0]  io_deq_2_bits_cf_pd_brType,
  output        io_deq_2_bits_cf_pd_isCall,
  output        io_deq_2_bits_cf_pd_isRet,
  output        io_deq_2_bits_cf_pred_taken,
  output [6:0]  io_deq_2_bits_cf_waitForRobIdx_value,
  output        io_deq_2_bits_cf_loadWaitBit,
  output        io_deq_2_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_2_bits_cf_ssid,
  output        io_deq_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_deq_2_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_2_bits_cf_ftqOffset,
  output [1:0]  io_deq_2_bits_ctrl_srcType_0,
  output [1:0]  io_deq_2_bits_ctrl_srcType_1,
  output [3:0]  io_deq_2_bits_ctrl_fuType,
  output [6:0]  io_deq_2_bits_ctrl_fuOpType,
  output        io_deq_2_bits_ctrl_rfWen,
  output        io_deq_2_bits_ctrl_fpWen,
  output [3:0]  io_deq_2_bits_ctrl_selImm,
  output [19:0] io_deq_2_bits_ctrl_imm,
  output        io_deq_2_bits_ctrl_fpu_isAddSub,
  output        io_deq_2_bits_ctrl_fpu_typeTagIn,
  output        io_deq_2_bits_ctrl_fpu_typeTagOut,
  output        io_deq_2_bits_ctrl_fpu_fromInt,
  output        io_deq_2_bits_ctrl_fpu_wflags,
  output        io_deq_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_deq_2_bits_ctrl_fpu_fmaCmd,
  output        io_deq_2_bits_ctrl_fpu_div,
  output        io_deq_2_bits_ctrl_fpu_sqrt,
  output        io_deq_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_deq_2_bits_ctrl_fpu_typ,
  output [1:0]  io_deq_2_bits_ctrl_fpu_fmt,
  output        io_deq_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_deq_2_bits_ctrl_fpu_rm,
  output [6:0]  io_deq_2_bits_psrc_0,
  output [6:0]  io_deq_2_bits_psrc_1,
  output [6:0]  io_deq_2_bits_pdest,
  output        io_deq_2_bits_robIdx_flag,
  output [6:0]  io_deq_2_bits_robIdx_value,
  output        io_deq_2_bits_lqIdx_flag,
  output [5:0]  io_deq_2_bits_lqIdx_value,
  output        io_deq_2_bits_sqIdx_flag,
  output [4:0]  io_deq_2_bits_sqIdx_value,
  input         io_deq_3_ready,
  output        io_deq_3_valid,
  output        io_deq_3_bits_cf_trigger_backendEn_0,
  output        io_deq_3_bits_cf_trigger_backendEn_1,
  output        io_deq_3_bits_cf_trigger_backendHit_0,
  output        io_deq_3_bits_cf_trigger_backendHit_1,
  output        io_deq_3_bits_cf_trigger_backendHit_2,
  output        io_deq_3_bits_cf_trigger_backendHit_3,
  output        io_deq_3_bits_cf_trigger_backendHit_4,
  output        io_deq_3_bits_cf_trigger_backendHit_5,
  output        io_deq_3_bits_cf_pd_isRVC,
  output [1:0]  io_deq_3_bits_cf_pd_brType,
  output        io_deq_3_bits_cf_pd_isCall,
  output        io_deq_3_bits_cf_pd_isRet,
  output        io_deq_3_bits_cf_pred_taken,
  output [6:0]  io_deq_3_bits_cf_waitForRobIdx_value,
  output        io_deq_3_bits_cf_loadWaitBit,
  output        io_deq_3_bits_cf_loadWaitStrict,
  output [4:0]  io_deq_3_bits_cf_ssid,
  output        io_deq_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_deq_3_bits_cf_ftqPtr_value,
  output [2:0]  io_deq_3_bits_cf_ftqOffset,
  output [1:0]  io_deq_3_bits_ctrl_srcType_0,
  output [1:0]  io_deq_3_bits_ctrl_srcType_1,
  output [3:0]  io_deq_3_bits_ctrl_fuType,
  output [6:0]  io_deq_3_bits_ctrl_fuOpType,
  output        io_deq_3_bits_ctrl_rfWen,
  output        io_deq_3_bits_ctrl_fpWen,
  output [3:0]  io_deq_3_bits_ctrl_selImm,
  output [19:0] io_deq_3_bits_ctrl_imm,
  output        io_deq_3_bits_ctrl_fpu_isAddSub,
  output        io_deq_3_bits_ctrl_fpu_typeTagIn,
  output        io_deq_3_bits_ctrl_fpu_typeTagOut,
  output        io_deq_3_bits_ctrl_fpu_fromInt,
  output        io_deq_3_bits_ctrl_fpu_wflags,
  output        io_deq_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_deq_3_bits_ctrl_fpu_fmaCmd,
  output        io_deq_3_bits_ctrl_fpu_div,
  output        io_deq_3_bits_ctrl_fpu_sqrt,
  output        io_deq_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_deq_3_bits_ctrl_fpu_typ,
  output [1:0]  io_deq_3_bits_ctrl_fpu_fmt,
  output        io_deq_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_deq_3_bits_ctrl_fpu_rm,
  output [6:0]  io_deq_3_bits_psrc_0,
  output [6:0]  io_deq_3_bits_psrc_1,
  output [6:0]  io_deq_3_bits_pdest,
  output        io_deq_3_bits_robIdx_flag,
  output [6:0]  io_deq_3_bits_robIdx_value,
  output        io_deq_3_bits_lqIdx_flag,
  output [5:0]  io_deq_3_bits_lqIdx_value,
  output        io_deq_3_bits_sqIdx_flag,
  output [4:0]  io_deq_3_bits_sqIdx_value,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
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
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_raddr_0; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_raddr_1; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_raddr_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_raddr_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_0_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_0_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_0_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_0_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_rdata_0_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_0_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_lqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_0_lqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_0_sqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_0_sqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_1_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_1_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_1_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_1_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_rdata_1_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_1_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_1_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_1_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_lqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_1_lqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_1_sqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_1_sqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_2_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_2_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_2_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_2_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_2_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_2_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_2_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_rdata_2_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_2_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_2_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_2_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_2_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_2_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_lqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_2_lqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_2_sqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_2_sqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_3_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_3_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_3_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_3_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_3_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_3_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_rdata_3_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_rdata_3_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_rdata_3_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_rdata_3_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_3_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_3_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_rdata_3_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_lqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_rdata_3_lqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_rdata_3_sqIdx_flag; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_rdata_3_sqIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wen_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wen_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wen_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wen_3; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_waddr_0; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_waddr_1; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_waddr_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_waddr_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_wdata_0_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_wdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_0_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_0_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_0_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_wdata_0_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_0_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_wdata_1_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_wdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_1_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_1_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_1_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_wdata_1_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_1_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_1_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_1_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_1_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_wdata_2_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_wdata_2_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_2_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_2_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_2_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_wdata_2_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_2_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_2_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_2_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_2_pdest; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendEn_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendEn_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_0; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_1; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_2; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_3; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_4; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_trigger_backendHit_5; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_pd_isRVC; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_cf_pd_brType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_pd_isCall; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_pd_isRet; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_pred_taken; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_cf_waitForRobIdx_value; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_loadWaitBit; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_loadWaitStrict; // @[DispatchQueue.scala 49:26]
  wire [4:0] dataModule_io_wdata_3_cf_ssid; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_cf_ftqPtr_flag; // @[DispatchQueue.scala 49:26]
  wire [5:0] dataModule_io_wdata_3_cf_ftqPtr_value; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_3_cf_ftqOffset; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_srcType_0; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_srcType_1; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_srcType_2; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_3_ctrl_fuType; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_ctrl_fuOpType; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_rfWen; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpWen; // @[DispatchQueue.scala 49:26]
  wire [3:0] dataModule_io_wdata_3_ctrl_selImm; // @[DispatchQueue.scala 49:26]
  wire [19:0] dataModule_io_wdata_3_ctrl_imm; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_fromInt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_wflags; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_fpWen; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_div; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_sqrt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_fcvt; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_fpu_typ; // @[DispatchQueue.scala 49:26]
  wire [1:0] dataModule_io_wdata_3_ctrl_fpu_fmt; // @[DispatchQueue.scala 49:26]
  wire  dataModule_io_wdata_3_ctrl_fpu_ren3; // @[DispatchQueue.scala 49:26]
  wire [2:0] dataModule_io_wdata_3_ctrl_fpu_rm; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_psrc_0; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_psrc_1; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_psrc_2; // @[DispatchQueue.scala 49:26]
  wire [6:0] dataModule_io_wdata_3_pdest; // @[DispatchQueue.scala 49:26]
  reg  robIdxEntries_0_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_0_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_1_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_1_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_2_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_2_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_3_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_3_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_4_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_4_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_5_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_5_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_6_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_6_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_7_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_7_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_8_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_8_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_9_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_9_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_10_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_10_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_11_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_11_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_12_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_12_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_13_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_13_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_14_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_14_value; // @[DispatchQueue.scala 50:26]
  reg  robIdxEntries_15_flag; // @[DispatchQueue.scala 50:26]
  reg [6:0] robIdxEntries_15_value; // @[DispatchQueue.scala 50:26]
  reg  stateEntries_0; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_1; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_2; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_3; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_4; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_5; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_6; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_7; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_8; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_9; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_10; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_11; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_12; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_13; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_14; // @[DispatchQueue.scala 52:29]
  reg  stateEntries_15; // @[DispatchQueue.scala 52:29]
  reg  headPtr_0_flag; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_0_value; // @[DispatchQueue.scala 57:24]
  reg  headPtr_1_flag; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_1_value; // @[DispatchQueue.scala 57:24]
  reg  headPtr_2_flag; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_2_value; // @[DispatchQueue.scala 57:24]
  reg  headPtr_3_flag; // @[DispatchQueue.scala 57:24]
  reg [3:0] headPtr_3_value; // @[DispatchQueue.scala 57:24]
  wire [15:0] _headPtrMask_T = 16'h1 << headPtr_0_value; // @[OneHot.scala 57:35]
  wire [15:0] headPtrMask = _headPtrMask_T - 16'h1; // @[BitUtils.scala 142:75]
  reg  tailPtr_0_flag; // @[DispatchQueue.scala 60:24]
  reg [3:0] tailPtr_0_value; // @[DispatchQueue.scala 60:24]
  reg  tailPtr_1_flag; // @[DispatchQueue.scala 60:24]
  reg [3:0] tailPtr_1_value; // @[DispatchQueue.scala 60:24]
  reg  tailPtr_2_flag; // @[DispatchQueue.scala 60:24]
  reg [3:0] tailPtr_2_value; // @[DispatchQueue.scala 60:24]
  reg  tailPtr_3_flag; // @[DispatchQueue.scala 60:24]
  reg [3:0] tailPtr_3_value; // @[DispatchQueue.scala 60:24]
  reg  allowEnqueue; // @[DispatchQueue.scala 64:29]
  wire [7:0] isTrueEmpty_lo = {stateEntries_8,stateEntries_9,stateEntries_10,stateEntries_11,stateEntries_12,
    stateEntries_13,stateEntries_14,stateEntries_15}; // @[Cat.scala 31:58]
  wire [15:0] _isTrueEmpty_T_16 = {stateEntries_0,stateEntries_1,stateEntries_2,stateEntries_3,stateEntries_4,
    stateEntries_5,stateEntries_6,stateEntries_7,isTrueEmpty_lo}; // @[Cat.scala 31:58]
  wire  isTrueEmpty = ~(|_isTrueEmpty_T_16); // @[DispatchQueue.scala 66:21]
  wire  _canActualEnqueue_T = ~io_redirect_valid; // @[DispatchQueue.scala 68:40]
  wire  canActualEnqueue = allowEnqueue & ~io_redirect_valid; // @[DispatchQueue.scala 68:37]
  wire [6:0] _GEN_0 = 4'h0 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_0_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_1 = 4'h1 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_1_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_2 = 4'h2 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_2_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_3 = 4'h3 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_3_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_4 = 4'h4 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_4_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_5 = 4'h5 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_5_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_6 = 4'h6 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_6_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_7 = 4'h7 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_7_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_8 = 4'h8 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_8_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_9 = 4'h9 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_9_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_10 = 4'ha == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_10_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_11 = 4'hb == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_11_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_12 = 4'hc == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_12_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_13 = 4'hd == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_13_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_14 = 4'he == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_14_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire [6:0] _GEN_15 = 4'hf == tailPtr_0_value ? io_enq_req_0_bits_robIdx_value : robIdxEntries_15_value; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_16 = 4'h0 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_0_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_17 = 4'h1 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_1_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_18 = 4'h2 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_2_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_19 = 4'h3 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_3_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_20 = 4'h4 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_4_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_21 = 4'h5 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_5_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_22 = 4'h6 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_6_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_23 = 4'h7 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_7_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_24 = 4'h8 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_8_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_25 = 4'h9 == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_9_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_26 = 4'ha == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_10_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_27 = 4'hb == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_11_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_28 = 4'hc == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_12_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_29 = 4'hd == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_13_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_30 = 4'he == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_14_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_31 = 4'hf == tailPtr_0_value ? io_enq_req_0_bits_robIdx_flag : robIdxEntries_15_flag; // @[DispatchQueue.scala 50:26 92:{41,41}]
  wire  _GEN_32 = 4'h0 == tailPtr_0_value | stateEntries_0; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_33 = 4'h1 == tailPtr_0_value | stateEntries_1; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_34 = 4'h2 == tailPtr_0_value | stateEntries_2; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_35 = 4'h3 == tailPtr_0_value | stateEntries_3; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_36 = 4'h4 == tailPtr_0_value | stateEntries_4; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_37 = 4'h5 == tailPtr_0_value | stateEntries_5; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_38 = 4'h6 == tailPtr_0_value | stateEntries_6; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_39 = 4'h7 == tailPtr_0_value | stateEntries_7; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_40 = 4'h8 == tailPtr_0_value | stateEntries_8; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_41 = 4'h9 == tailPtr_0_value | stateEntries_9; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_42 = 4'ha == tailPtr_0_value | stateEntries_10; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_43 = 4'hb == tailPtr_0_value | stateEntries_11; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_44 = 4'hc == tailPtr_0_value | stateEntries_12; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_45 = 4'hd == tailPtr_0_value | stateEntries_13; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_46 = 4'he == tailPtr_0_value | stateEntries_14; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire  _GEN_47 = 4'hf == tailPtr_0_value | stateEntries_15; // @[DispatchQueue.scala 52:29 94:{40,40}]
  wire [6:0] _GEN_50 = io_enq_req_0_valid & canActualEnqueue ? _GEN_0 : robIdxEntries_0_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_51 = io_enq_req_0_valid & canActualEnqueue ? _GEN_1 : robIdxEntries_1_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_52 = io_enq_req_0_valid & canActualEnqueue ? _GEN_2 : robIdxEntries_2_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_53 = io_enq_req_0_valid & canActualEnqueue ? _GEN_3 : robIdxEntries_3_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_54 = io_enq_req_0_valid & canActualEnqueue ? _GEN_4 : robIdxEntries_4_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_55 = io_enq_req_0_valid & canActualEnqueue ? _GEN_5 : robIdxEntries_5_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_56 = io_enq_req_0_valid & canActualEnqueue ? _GEN_6 : robIdxEntries_6_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_57 = io_enq_req_0_valid & canActualEnqueue ? _GEN_7 : robIdxEntries_7_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_58 = io_enq_req_0_valid & canActualEnqueue ? _GEN_8 : robIdxEntries_8_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_59 = io_enq_req_0_valid & canActualEnqueue ? _GEN_9 : robIdxEntries_9_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_60 = io_enq_req_0_valid & canActualEnqueue ? _GEN_10 : robIdxEntries_10_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_61 = io_enq_req_0_valid & canActualEnqueue ? _GEN_11 : robIdxEntries_11_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_62 = io_enq_req_0_valid & canActualEnqueue ? _GEN_12 : robIdxEntries_12_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_63 = io_enq_req_0_valid & canActualEnqueue ? _GEN_13 : robIdxEntries_13_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_64 = io_enq_req_0_valid & canActualEnqueue ? _GEN_14 : robIdxEntries_14_value; // @[DispatchQueue.scala 50:26 88:51]
  wire [6:0] _GEN_65 = io_enq_req_0_valid & canActualEnqueue ? _GEN_15 : robIdxEntries_15_value; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_66 = io_enq_req_0_valid & canActualEnqueue ? _GEN_16 : robIdxEntries_0_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_67 = io_enq_req_0_valid & canActualEnqueue ? _GEN_17 : robIdxEntries_1_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_68 = io_enq_req_0_valid & canActualEnqueue ? _GEN_18 : robIdxEntries_2_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_69 = io_enq_req_0_valid & canActualEnqueue ? _GEN_19 : robIdxEntries_3_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_70 = io_enq_req_0_valid & canActualEnqueue ? _GEN_20 : robIdxEntries_4_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_71 = io_enq_req_0_valid & canActualEnqueue ? _GEN_21 : robIdxEntries_5_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_72 = io_enq_req_0_valid & canActualEnqueue ? _GEN_22 : robIdxEntries_6_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_73 = io_enq_req_0_valid & canActualEnqueue ? _GEN_23 : robIdxEntries_7_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_74 = io_enq_req_0_valid & canActualEnqueue ? _GEN_24 : robIdxEntries_8_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_75 = io_enq_req_0_valid & canActualEnqueue ? _GEN_25 : robIdxEntries_9_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_76 = io_enq_req_0_valid & canActualEnqueue ? _GEN_26 : robIdxEntries_10_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_77 = io_enq_req_0_valid & canActualEnqueue ? _GEN_27 : robIdxEntries_11_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_78 = io_enq_req_0_valid & canActualEnqueue ? _GEN_28 : robIdxEntries_12_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_79 = io_enq_req_0_valid & canActualEnqueue ? _GEN_29 : robIdxEntries_13_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_80 = io_enq_req_0_valid & canActualEnqueue ? _GEN_30 : robIdxEntries_14_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_81 = io_enq_req_0_valid & canActualEnqueue ? _GEN_31 : robIdxEntries_15_flag; // @[DispatchQueue.scala 50:26 88:51]
  wire  _GEN_204 = io_enq_req_0_valid & canActualEnqueue ? _GEN_32 : stateEntries_0; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_205 = io_enq_req_0_valid & canActualEnqueue ? _GEN_33 : stateEntries_1; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_206 = io_enq_req_0_valid & canActualEnqueue ? _GEN_34 : stateEntries_2; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_207 = io_enq_req_0_valid & canActualEnqueue ? _GEN_35 : stateEntries_3; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_208 = io_enq_req_0_valid & canActualEnqueue ? _GEN_36 : stateEntries_4; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_209 = io_enq_req_0_valid & canActualEnqueue ? _GEN_37 : stateEntries_5; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_210 = io_enq_req_0_valid & canActualEnqueue ? _GEN_38 : stateEntries_6; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_211 = io_enq_req_0_valid & canActualEnqueue ? _GEN_39 : stateEntries_7; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_212 = io_enq_req_0_valid & canActualEnqueue ? _GEN_40 : stateEntries_8; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_213 = io_enq_req_0_valid & canActualEnqueue ? _GEN_41 : stateEntries_9; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_214 = io_enq_req_0_valid & canActualEnqueue ? _GEN_42 : stateEntries_10; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_215 = io_enq_req_0_valid & canActualEnqueue ? _GEN_43 : stateEntries_11; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_216 = io_enq_req_0_valid & canActualEnqueue ? _GEN_44 : stateEntries_12; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_217 = io_enq_req_0_valid & canActualEnqueue ? _GEN_45 : stateEntries_13; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_218 = io_enq_req_0_valid & canActualEnqueue ? _GEN_46 : stateEntries_14; // @[DispatchQueue.scala 52:29 88:51]
  wire  _GEN_219 = io_enq_req_0_valid & canActualEnqueue ? _GEN_47 : stateEntries_15; // @[DispatchQueue.scala 52:29 88:51]
  wire [3:0] _GEN_221 = io_enq_needAlloc_0 ? tailPtr_1_value : tailPtr_0_value; // @[DispatchQueue.scala 91:{30,30}]
  wire [1:0] _GEN_1247 = {{1'd0}, io_enq_needAlloc_0}; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_222 = 2'h2 == _GEN_1247 ? tailPtr_2_value : _GEN_221; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_223 = 2'h3 == _GEN_1247 ? tailPtr_3_value : _GEN_222; // @[DispatchQueue.scala 91:{30,30}]
  wire [6:0] _GEN_224 = 4'h0 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_50; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_225 = 4'h1 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_51; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_226 = 4'h2 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_52; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_227 = 4'h3 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_53; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_228 = 4'h4 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_54; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_229 = 4'h5 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_55; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_230 = 4'h6 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_56; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_231 = 4'h7 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_57; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_232 = 4'h8 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_58; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_233 = 4'h9 == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_59; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_234 = 4'ha == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_60; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_235 = 4'hb == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_61; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_236 = 4'hc == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_62; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_237 = 4'hd == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_63; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_238 = 4'he == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_64; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_239 = 4'hf == _GEN_223 ? io_enq_req_1_bits_robIdx_value : _GEN_65; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_240 = 4'h0 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_66; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_241 = 4'h1 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_67; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_242 = 4'h2 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_68; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_243 = 4'h3 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_69; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_244 = 4'h4 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_70; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_245 = 4'h5 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_71; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_246 = 4'h6 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_72; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_247 = 4'h7 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_73; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_248 = 4'h8 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_74; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_249 = 4'h9 == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_75; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_250 = 4'ha == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_76; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_251 = 4'hb == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_77; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_252 = 4'hc == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_78; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_253 = 4'hd == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_79; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_254 = 4'he == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_80; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_255 = 4'hf == _GEN_223 ? io_enq_req_1_bits_robIdx_flag : _GEN_81; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_256 = 4'h0 == _GEN_223 | _GEN_204; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_257 = 4'h1 == _GEN_223 | _GEN_205; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_258 = 4'h2 == _GEN_223 | _GEN_206; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_259 = 4'h3 == _GEN_223 | _GEN_207; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_260 = 4'h4 == _GEN_223 | _GEN_208; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_261 = 4'h5 == _GEN_223 | _GEN_209; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_262 = 4'h6 == _GEN_223 | _GEN_210; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_263 = 4'h7 == _GEN_223 | _GEN_211; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_264 = 4'h8 == _GEN_223 | _GEN_212; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_265 = 4'h9 == _GEN_223 | _GEN_213; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_266 = 4'ha == _GEN_223 | _GEN_214; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_267 = 4'hb == _GEN_223 | _GEN_215; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_268 = 4'hc == _GEN_223 | _GEN_216; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_269 = 4'hd == _GEN_223 | _GEN_217; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_270 = 4'he == _GEN_223 | _GEN_218; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_271 = 4'hf == _GEN_223 | _GEN_219; // @[DispatchQueue.scala 94:{40,40}]
  wire [6:0] _GEN_274 = io_enq_req_1_valid & canActualEnqueue ? _GEN_224 : _GEN_50; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_275 = io_enq_req_1_valid & canActualEnqueue ? _GEN_225 : _GEN_51; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_276 = io_enq_req_1_valid & canActualEnqueue ? _GEN_226 : _GEN_52; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_277 = io_enq_req_1_valid & canActualEnqueue ? _GEN_227 : _GEN_53; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_278 = io_enq_req_1_valid & canActualEnqueue ? _GEN_228 : _GEN_54; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_279 = io_enq_req_1_valid & canActualEnqueue ? _GEN_229 : _GEN_55; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_280 = io_enq_req_1_valid & canActualEnqueue ? _GEN_230 : _GEN_56; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_281 = io_enq_req_1_valid & canActualEnqueue ? _GEN_231 : _GEN_57; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_282 = io_enq_req_1_valid & canActualEnqueue ? _GEN_232 : _GEN_58; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_283 = io_enq_req_1_valid & canActualEnqueue ? _GEN_233 : _GEN_59; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_284 = io_enq_req_1_valid & canActualEnqueue ? _GEN_234 : _GEN_60; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_285 = io_enq_req_1_valid & canActualEnqueue ? _GEN_235 : _GEN_61; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_286 = io_enq_req_1_valid & canActualEnqueue ? _GEN_236 : _GEN_62; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_287 = io_enq_req_1_valid & canActualEnqueue ? _GEN_237 : _GEN_63; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_288 = io_enq_req_1_valid & canActualEnqueue ? _GEN_238 : _GEN_64; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_289 = io_enq_req_1_valid & canActualEnqueue ? _GEN_239 : _GEN_65; // @[DispatchQueue.scala 88:51]
  wire  _GEN_290 = io_enq_req_1_valid & canActualEnqueue ? _GEN_240 : _GEN_66; // @[DispatchQueue.scala 88:51]
  wire  _GEN_291 = io_enq_req_1_valid & canActualEnqueue ? _GEN_241 : _GEN_67; // @[DispatchQueue.scala 88:51]
  wire  _GEN_292 = io_enq_req_1_valid & canActualEnqueue ? _GEN_242 : _GEN_68; // @[DispatchQueue.scala 88:51]
  wire  _GEN_293 = io_enq_req_1_valid & canActualEnqueue ? _GEN_243 : _GEN_69; // @[DispatchQueue.scala 88:51]
  wire  _GEN_294 = io_enq_req_1_valid & canActualEnqueue ? _GEN_244 : _GEN_70; // @[DispatchQueue.scala 88:51]
  wire  _GEN_295 = io_enq_req_1_valid & canActualEnqueue ? _GEN_245 : _GEN_71; // @[DispatchQueue.scala 88:51]
  wire  _GEN_296 = io_enq_req_1_valid & canActualEnqueue ? _GEN_246 : _GEN_72; // @[DispatchQueue.scala 88:51]
  wire  _GEN_297 = io_enq_req_1_valid & canActualEnqueue ? _GEN_247 : _GEN_73; // @[DispatchQueue.scala 88:51]
  wire  _GEN_298 = io_enq_req_1_valid & canActualEnqueue ? _GEN_248 : _GEN_74; // @[DispatchQueue.scala 88:51]
  wire  _GEN_299 = io_enq_req_1_valid & canActualEnqueue ? _GEN_249 : _GEN_75; // @[DispatchQueue.scala 88:51]
  wire  _GEN_300 = io_enq_req_1_valid & canActualEnqueue ? _GEN_250 : _GEN_76; // @[DispatchQueue.scala 88:51]
  wire  _GEN_301 = io_enq_req_1_valid & canActualEnqueue ? _GEN_251 : _GEN_77; // @[DispatchQueue.scala 88:51]
  wire  _GEN_302 = io_enq_req_1_valid & canActualEnqueue ? _GEN_252 : _GEN_78; // @[DispatchQueue.scala 88:51]
  wire  _GEN_303 = io_enq_req_1_valid & canActualEnqueue ? _GEN_253 : _GEN_79; // @[DispatchQueue.scala 88:51]
  wire  _GEN_304 = io_enq_req_1_valid & canActualEnqueue ? _GEN_254 : _GEN_80; // @[DispatchQueue.scala 88:51]
  wire  _GEN_305 = io_enq_req_1_valid & canActualEnqueue ? _GEN_255 : _GEN_81; // @[DispatchQueue.scala 88:51]
  wire  _GEN_429 = io_enq_req_1_valid & canActualEnqueue ? _GEN_256 : _GEN_204; // @[DispatchQueue.scala 88:51]
  wire  _GEN_430 = io_enq_req_1_valid & canActualEnqueue ? _GEN_257 : _GEN_205; // @[DispatchQueue.scala 88:51]
  wire  _GEN_431 = io_enq_req_1_valid & canActualEnqueue ? _GEN_258 : _GEN_206; // @[DispatchQueue.scala 88:51]
  wire  _GEN_432 = io_enq_req_1_valid & canActualEnqueue ? _GEN_259 : _GEN_207; // @[DispatchQueue.scala 88:51]
  wire  _GEN_433 = io_enq_req_1_valid & canActualEnqueue ? _GEN_260 : _GEN_208; // @[DispatchQueue.scala 88:51]
  wire  _GEN_434 = io_enq_req_1_valid & canActualEnqueue ? _GEN_261 : _GEN_209; // @[DispatchQueue.scala 88:51]
  wire  _GEN_435 = io_enq_req_1_valid & canActualEnqueue ? _GEN_262 : _GEN_210; // @[DispatchQueue.scala 88:51]
  wire  _GEN_436 = io_enq_req_1_valid & canActualEnqueue ? _GEN_263 : _GEN_211; // @[DispatchQueue.scala 88:51]
  wire  _GEN_437 = io_enq_req_1_valid & canActualEnqueue ? _GEN_264 : _GEN_212; // @[DispatchQueue.scala 88:51]
  wire  _GEN_438 = io_enq_req_1_valid & canActualEnqueue ? _GEN_265 : _GEN_213; // @[DispatchQueue.scala 88:51]
  wire  _GEN_439 = io_enq_req_1_valid & canActualEnqueue ? _GEN_266 : _GEN_214; // @[DispatchQueue.scala 88:51]
  wire  _GEN_440 = io_enq_req_1_valid & canActualEnqueue ? _GEN_267 : _GEN_215; // @[DispatchQueue.scala 88:51]
  wire  _GEN_441 = io_enq_req_1_valid & canActualEnqueue ? _GEN_268 : _GEN_216; // @[DispatchQueue.scala 88:51]
  wire  _GEN_442 = io_enq_req_1_valid & canActualEnqueue ? _GEN_269 : _GEN_217; // @[DispatchQueue.scala 88:51]
  wire  _GEN_443 = io_enq_req_1_valid & canActualEnqueue ? _GEN_270 : _GEN_218; // @[DispatchQueue.scala 88:51]
  wire  _GEN_444 = io_enq_req_1_valid & canActualEnqueue ? _GEN_271 : _GEN_219; // @[DispatchQueue.scala 88:51]
  wire [1:0] sel = io_enq_needAlloc_0 + io_enq_needAlloc_1; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_446 = 2'h1 == sel ? tailPtr_1_value : tailPtr_0_value; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_447 = 2'h2 == sel ? tailPtr_2_value : _GEN_446; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_448 = 2'h3 == sel ? tailPtr_3_value : _GEN_447; // @[DispatchQueue.scala 91:{30,30}]
  wire [6:0] _GEN_449 = 4'h0 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_274; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_450 = 4'h1 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_275; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_451 = 4'h2 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_276; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_452 = 4'h3 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_277; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_453 = 4'h4 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_278; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_454 = 4'h5 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_279; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_455 = 4'h6 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_280; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_456 = 4'h7 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_281; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_457 = 4'h8 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_282; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_458 = 4'h9 == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_283; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_459 = 4'ha == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_284; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_460 = 4'hb == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_285; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_461 = 4'hc == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_286; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_462 = 4'hd == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_287; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_463 = 4'he == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_288; // @[DispatchQueue.scala 92:{41,41}]
  wire [6:0] _GEN_464 = 4'hf == _GEN_448 ? io_enq_req_2_bits_robIdx_value : _GEN_289; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_465 = 4'h0 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_290; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_466 = 4'h1 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_291; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_467 = 4'h2 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_292; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_468 = 4'h3 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_293; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_469 = 4'h4 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_294; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_470 = 4'h5 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_295; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_471 = 4'h6 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_296; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_472 = 4'h7 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_297; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_473 = 4'h8 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_298; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_474 = 4'h9 == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_299; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_475 = 4'ha == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_300; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_476 = 4'hb == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_301; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_477 = 4'hc == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_302; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_478 = 4'hd == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_303; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_479 = 4'he == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_304; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_480 = 4'hf == _GEN_448 ? io_enq_req_2_bits_robIdx_flag : _GEN_305; // @[DispatchQueue.scala 92:{41,41}]
  wire  _GEN_481 = 4'h0 == _GEN_448 | _GEN_429; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_482 = 4'h1 == _GEN_448 | _GEN_430; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_483 = 4'h2 == _GEN_448 | _GEN_431; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_484 = 4'h3 == _GEN_448 | _GEN_432; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_485 = 4'h4 == _GEN_448 | _GEN_433; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_486 = 4'h5 == _GEN_448 | _GEN_434; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_487 = 4'h6 == _GEN_448 | _GEN_435; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_488 = 4'h7 == _GEN_448 | _GEN_436; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_489 = 4'h8 == _GEN_448 | _GEN_437; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_490 = 4'h9 == _GEN_448 | _GEN_438; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_491 = 4'ha == _GEN_448 | _GEN_439; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_492 = 4'hb == _GEN_448 | _GEN_440; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_493 = 4'hc == _GEN_448 | _GEN_441; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_494 = 4'hd == _GEN_448 | _GEN_442; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_495 = 4'he == _GEN_448 | _GEN_443; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_496 = 4'hf == _GEN_448 | _GEN_444; // @[DispatchQueue.scala 94:{40,40}]
  wire [1:0] _T_5 = io_enq_req_0_valid + io_enq_req_1_valid; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_499 = io_enq_req_2_valid & canActualEnqueue ? _GEN_449 : _GEN_274; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_500 = io_enq_req_2_valid & canActualEnqueue ? _GEN_450 : _GEN_275; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_501 = io_enq_req_2_valid & canActualEnqueue ? _GEN_451 : _GEN_276; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_502 = io_enq_req_2_valid & canActualEnqueue ? _GEN_452 : _GEN_277; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_503 = io_enq_req_2_valid & canActualEnqueue ? _GEN_453 : _GEN_278; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_504 = io_enq_req_2_valid & canActualEnqueue ? _GEN_454 : _GEN_279; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_505 = io_enq_req_2_valid & canActualEnqueue ? _GEN_455 : _GEN_280; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_506 = io_enq_req_2_valid & canActualEnqueue ? _GEN_456 : _GEN_281; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_507 = io_enq_req_2_valid & canActualEnqueue ? _GEN_457 : _GEN_282; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_508 = io_enq_req_2_valid & canActualEnqueue ? _GEN_458 : _GEN_283; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_509 = io_enq_req_2_valid & canActualEnqueue ? _GEN_459 : _GEN_284; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_510 = io_enq_req_2_valid & canActualEnqueue ? _GEN_460 : _GEN_285; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_511 = io_enq_req_2_valid & canActualEnqueue ? _GEN_461 : _GEN_286; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_512 = io_enq_req_2_valid & canActualEnqueue ? _GEN_462 : _GEN_287; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_513 = io_enq_req_2_valid & canActualEnqueue ? _GEN_463 : _GEN_288; // @[DispatchQueue.scala 88:51]
  wire [6:0] _GEN_514 = io_enq_req_2_valid & canActualEnqueue ? _GEN_464 : _GEN_289; // @[DispatchQueue.scala 88:51]
  wire  _GEN_515 = io_enq_req_2_valid & canActualEnqueue ? _GEN_465 : _GEN_290; // @[DispatchQueue.scala 88:51]
  wire  _GEN_516 = io_enq_req_2_valid & canActualEnqueue ? _GEN_466 : _GEN_291; // @[DispatchQueue.scala 88:51]
  wire  _GEN_517 = io_enq_req_2_valid & canActualEnqueue ? _GEN_467 : _GEN_292; // @[DispatchQueue.scala 88:51]
  wire  _GEN_518 = io_enq_req_2_valid & canActualEnqueue ? _GEN_468 : _GEN_293; // @[DispatchQueue.scala 88:51]
  wire  _GEN_519 = io_enq_req_2_valid & canActualEnqueue ? _GEN_469 : _GEN_294; // @[DispatchQueue.scala 88:51]
  wire  _GEN_520 = io_enq_req_2_valid & canActualEnqueue ? _GEN_470 : _GEN_295; // @[DispatchQueue.scala 88:51]
  wire  _GEN_521 = io_enq_req_2_valid & canActualEnqueue ? _GEN_471 : _GEN_296; // @[DispatchQueue.scala 88:51]
  wire  _GEN_522 = io_enq_req_2_valid & canActualEnqueue ? _GEN_472 : _GEN_297; // @[DispatchQueue.scala 88:51]
  wire  _GEN_523 = io_enq_req_2_valid & canActualEnqueue ? _GEN_473 : _GEN_298; // @[DispatchQueue.scala 88:51]
  wire  _GEN_524 = io_enq_req_2_valid & canActualEnqueue ? _GEN_474 : _GEN_299; // @[DispatchQueue.scala 88:51]
  wire  _GEN_525 = io_enq_req_2_valid & canActualEnqueue ? _GEN_475 : _GEN_300; // @[DispatchQueue.scala 88:51]
  wire  _GEN_526 = io_enq_req_2_valid & canActualEnqueue ? _GEN_476 : _GEN_301; // @[DispatchQueue.scala 88:51]
  wire  _GEN_527 = io_enq_req_2_valid & canActualEnqueue ? _GEN_477 : _GEN_302; // @[DispatchQueue.scala 88:51]
  wire  _GEN_528 = io_enq_req_2_valid & canActualEnqueue ? _GEN_478 : _GEN_303; // @[DispatchQueue.scala 88:51]
  wire  _GEN_529 = io_enq_req_2_valid & canActualEnqueue ? _GEN_479 : _GEN_304; // @[DispatchQueue.scala 88:51]
  wire  _GEN_530 = io_enq_req_2_valid & canActualEnqueue ? _GEN_480 : _GEN_305; // @[DispatchQueue.scala 88:51]
  wire  _GEN_654 = io_enq_req_2_valid & canActualEnqueue ? _GEN_481 : _GEN_429; // @[DispatchQueue.scala 88:51]
  wire  _GEN_655 = io_enq_req_2_valid & canActualEnqueue ? _GEN_482 : _GEN_430; // @[DispatchQueue.scala 88:51]
  wire  _GEN_656 = io_enq_req_2_valid & canActualEnqueue ? _GEN_483 : _GEN_431; // @[DispatchQueue.scala 88:51]
  wire  _GEN_657 = io_enq_req_2_valid & canActualEnqueue ? _GEN_484 : _GEN_432; // @[DispatchQueue.scala 88:51]
  wire  _GEN_658 = io_enq_req_2_valid & canActualEnqueue ? _GEN_485 : _GEN_433; // @[DispatchQueue.scala 88:51]
  wire  _GEN_659 = io_enq_req_2_valid & canActualEnqueue ? _GEN_486 : _GEN_434; // @[DispatchQueue.scala 88:51]
  wire  _GEN_660 = io_enq_req_2_valid & canActualEnqueue ? _GEN_487 : _GEN_435; // @[DispatchQueue.scala 88:51]
  wire  _GEN_661 = io_enq_req_2_valid & canActualEnqueue ? _GEN_488 : _GEN_436; // @[DispatchQueue.scala 88:51]
  wire  _GEN_662 = io_enq_req_2_valid & canActualEnqueue ? _GEN_489 : _GEN_437; // @[DispatchQueue.scala 88:51]
  wire  _GEN_663 = io_enq_req_2_valid & canActualEnqueue ? _GEN_490 : _GEN_438; // @[DispatchQueue.scala 88:51]
  wire  _GEN_664 = io_enq_req_2_valid & canActualEnqueue ? _GEN_491 : _GEN_439; // @[DispatchQueue.scala 88:51]
  wire  _GEN_665 = io_enq_req_2_valid & canActualEnqueue ? _GEN_492 : _GEN_440; // @[DispatchQueue.scala 88:51]
  wire  _GEN_666 = io_enq_req_2_valid & canActualEnqueue ? _GEN_493 : _GEN_441; // @[DispatchQueue.scala 88:51]
  wire  _GEN_667 = io_enq_req_2_valid & canActualEnqueue ? _GEN_494 : _GEN_442; // @[DispatchQueue.scala 88:51]
  wire  _GEN_668 = io_enq_req_2_valid & canActualEnqueue ? _GEN_495 : _GEN_443; // @[DispatchQueue.scala 88:51]
  wire  _GEN_669 = io_enq_req_2_valid & canActualEnqueue ? _GEN_496 : _GEN_444; // @[DispatchQueue.scala 88:51]
  wire [1:0] _sel_T_1 = io_enq_needAlloc_1 + io_enq_needAlloc_2; // @[Bitwise.scala 48:55]
  wire [2:0] _sel_T_3 = _GEN_1247 + _sel_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] sel_1 = _sel_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_671 = 2'h1 == sel_1 ? tailPtr_1_value : tailPtr_0_value; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_672 = 2'h2 == sel_1 ? tailPtr_2_value : _GEN_671; // @[DispatchQueue.scala 91:{30,30}]
  wire [3:0] _GEN_673 = 2'h3 == sel_1 ? tailPtr_3_value : _GEN_672; // @[DispatchQueue.scala 91:{30,30}]
  wire  _GEN_706 = 4'h0 == _GEN_673 | _GEN_654; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_707 = 4'h1 == _GEN_673 | _GEN_655; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_708 = 4'h2 == _GEN_673 | _GEN_656; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_709 = 4'h3 == _GEN_673 | _GEN_657; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_710 = 4'h4 == _GEN_673 | _GEN_658; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_711 = 4'h5 == _GEN_673 | _GEN_659; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_712 = 4'h6 == _GEN_673 | _GEN_660; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_713 = 4'h7 == _GEN_673 | _GEN_661; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_714 = 4'h8 == _GEN_673 | _GEN_662; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_715 = 4'h9 == _GEN_673 | _GEN_663; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_716 = 4'ha == _GEN_673 | _GEN_664; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_717 = 4'hb == _GEN_673 | _GEN_665; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_718 = 4'hc == _GEN_673 | _GEN_666; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_719 = 4'hd == _GEN_673 | _GEN_667; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_720 = 4'he == _GEN_673 | _GEN_668; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_721 = 4'hf == _GEN_673 | _GEN_669; // @[DispatchQueue.scala 94:{40,40}]
  wire  _GEN_879 = io_enq_req_3_valid & canActualEnqueue ? _GEN_706 : _GEN_654; // @[DispatchQueue.scala 88:51]
  wire  _GEN_880 = io_enq_req_3_valid & canActualEnqueue ? _GEN_707 : _GEN_655; // @[DispatchQueue.scala 88:51]
  wire  _GEN_881 = io_enq_req_3_valid & canActualEnqueue ? _GEN_708 : _GEN_656; // @[DispatchQueue.scala 88:51]
  wire  _GEN_882 = io_enq_req_3_valid & canActualEnqueue ? _GEN_709 : _GEN_657; // @[DispatchQueue.scala 88:51]
  wire  _GEN_883 = io_enq_req_3_valid & canActualEnqueue ? _GEN_710 : _GEN_658; // @[DispatchQueue.scala 88:51]
  wire  _GEN_884 = io_enq_req_3_valid & canActualEnqueue ? _GEN_711 : _GEN_659; // @[DispatchQueue.scala 88:51]
  wire  _GEN_885 = io_enq_req_3_valid & canActualEnqueue ? _GEN_712 : _GEN_660; // @[DispatchQueue.scala 88:51]
  wire  _GEN_886 = io_enq_req_3_valid & canActualEnqueue ? _GEN_713 : _GEN_661; // @[DispatchQueue.scala 88:51]
  wire  _GEN_887 = io_enq_req_3_valid & canActualEnqueue ? _GEN_714 : _GEN_662; // @[DispatchQueue.scala 88:51]
  wire  _GEN_888 = io_enq_req_3_valid & canActualEnqueue ? _GEN_715 : _GEN_663; // @[DispatchQueue.scala 88:51]
  wire  _GEN_889 = io_enq_req_3_valid & canActualEnqueue ? _GEN_716 : _GEN_664; // @[DispatchQueue.scala 88:51]
  wire  _GEN_890 = io_enq_req_3_valid & canActualEnqueue ? _GEN_717 : _GEN_665; // @[DispatchQueue.scala 88:51]
  wire  _GEN_891 = io_enq_req_3_valid & canActualEnqueue ? _GEN_718 : _GEN_666; // @[DispatchQueue.scala 88:51]
  wire  _GEN_892 = io_enq_req_3_valid & canActualEnqueue ? _GEN_719 : _GEN_667; // @[DispatchQueue.scala 88:51]
  wire  _GEN_893 = io_enq_req_3_valid & canActualEnqueue ? _GEN_720 : _GEN_668; // @[DispatchQueue.scala 88:51]
  wire  _GEN_894 = io_enq_req_3_valid & canActualEnqueue ? _GEN_721 : _GEN_669; // @[DispatchQueue.scala 88:51]
  wire  _T_14 = io_deq_0_ready & io_deq_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_895 = 4'h0 == headPtr_0_value ? 1'h0 : _GEN_879; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_896 = 4'h1 == headPtr_0_value ? 1'h0 : _GEN_880; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_897 = 4'h2 == headPtr_0_value ? 1'h0 : _GEN_881; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_898 = 4'h3 == headPtr_0_value ? 1'h0 : _GEN_882; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_899 = 4'h4 == headPtr_0_value ? 1'h0 : _GEN_883; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_900 = 4'h5 == headPtr_0_value ? 1'h0 : _GEN_884; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_901 = 4'h6 == headPtr_0_value ? 1'h0 : _GEN_885; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_902 = 4'h7 == headPtr_0_value ? 1'h0 : _GEN_886; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_903 = 4'h8 == headPtr_0_value ? 1'h0 : _GEN_887; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_904 = 4'h9 == headPtr_0_value ? 1'h0 : _GEN_888; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_905 = 4'ha == headPtr_0_value ? 1'h0 : _GEN_889; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_906 = 4'hb == headPtr_0_value ? 1'h0 : _GEN_890; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_907 = 4'hc == headPtr_0_value ? 1'h0 : _GEN_891; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_908 = 4'hd == headPtr_0_value ? 1'h0 : _GEN_892; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_909 = 4'he == headPtr_0_value ? 1'h0 : _GEN_893; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_910 = 4'hf == headPtr_0_value ? 1'h0 : _GEN_894; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_911 = _T_14 & _canActualEnqueue_T ? _GEN_895 : _GEN_879; // @[DispatchQueue.scala 101:50]
  wire  _GEN_912 = _T_14 & _canActualEnqueue_T ? _GEN_896 : _GEN_880; // @[DispatchQueue.scala 101:50]
  wire  _GEN_913 = _T_14 & _canActualEnqueue_T ? _GEN_897 : _GEN_881; // @[DispatchQueue.scala 101:50]
  wire  _GEN_914 = _T_14 & _canActualEnqueue_T ? _GEN_898 : _GEN_882; // @[DispatchQueue.scala 101:50]
  wire  _GEN_915 = _T_14 & _canActualEnqueue_T ? _GEN_899 : _GEN_883; // @[DispatchQueue.scala 101:50]
  wire  _GEN_916 = _T_14 & _canActualEnqueue_T ? _GEN_900 : _GEN_884; // @[DispatchQueue.scala 101:50]
  wire  _GEN_917 = _T_14 & _canActualEnqueue_T ? _GEN_901 : _GEN_885; // @[DispatchQueue.scala 101:50]
  wire  _GEN_918 = _T_14 & _canActualEnqueue_T ? _GEN_902 : _GEN_886; // @[DispatchQueue.scala 101:50]
  wire  _GEN_919 = _T_14 & _canActualEnqueue_T ? _GEN_903 : _GEN_887; // @[DispatchQueue.scala 101:50]
  wire  _GEN_920 = _T_14 & _canActualEnqueue_T ? _GEN_904 : _GEN_888; // @[DispatchQueue.scala 101:50]
  wire  _GEN_921 = _T_14 & _canActualEnqueue_T ? _GEN_905 : _GEN_889; // @[DispatchQueue.scala 101:50]
  wire  _GEN_922 = _T_14 & _canActualEnqueue_T ? _GEN_906 : _GEN_890; // @[DispatchQueue.scala 101:50]
  wire  _GEN_923 = _T_14 & _canActualEnqueue_T ? _GEN_907 : _GEN_891; // @[DispatchQueue.scala 101:50]
  wire  _GEN_924 = _T_14 & _canActualEnqueue_T ? _GEN_908 : _GEN_892; // @[DispatchQueue.scala 101:50]
  wire  _GEN_925 = _T_14 & _canActualEnqueue_T ? _GEN_909 : _GEN_893; // @[DispatchQueue.scala 101:50]
  wire  _GEN_926 = _T_14 & _canActualEnqueue_T ? _GEN_910 : _GEN_894; // @[DispatchQueue.scala 101:50]
  wire  _T_17 = io_deq_1_ready & io_deq_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_927 = 4'h0 == headPtr_1_value ? 1'h0 : _GEN_911; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_928 = 4'h1 == headPtr_1_value ? 1'h0 : _GEN_912; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_929 = 4'h2 == headPtr_1_value ? 1'h0 : _GEN_913; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_930 = 4'h3 == headPtr_1_value ? 1'h0 : _GEN_914; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_931 = 4'h4 == headPtr_1_value ? 1'h0 : _GEN_915; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_932 = 4'h5 == headPtr_1_value ? 1'h0 : _GEN_916; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_933 = 4'h6 == headPtr_1_value ? 1'h0 : _GEN_917; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_934 = 4'h7 == headPtr_1_value ? 1'h0 : _GEN_918; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_935 = 4'h8 == headPtr_1_value ? 1'h0 : _GEN_919; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_936 = 4'h9 == headPtr_1_value ? 1'h0 : _GEN_920; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_937 = 4'ha == headPtr_1_value ? 1'h0 : _GEN_921; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_938 = 4'hb == headPtr_1_value ? 1'h0 : _GEN_922; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_939 = 4'hc == headPtr_1_value ? 1'h0 : _GEN_923; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_940 = 4'hd == headPtr_1_value ? 1'h0 : _GEN_924; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_941 = 4'he == headPtr_1_value ? 1'h0 : _GEN_925; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_942 = 4'hf == headPtr_1_value ? 1'h0 : _GEN_926; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_943 = _T_17 & _canActualEnqueue_T ? _GEN_927 : _GEN_911; // @[DispatchQueue.scala 101:50]
  wire  _GEN_944 = _T_17 & _canActualEnqueue_T ? _GEN_928 : _GEN_912; // @[DispatchQueue.scala 101:50]
  wire  _GEN_945 = _T_17 & _canActualEnqueue_T ? _GEN_929 : _GEN_913; // @[DispatchQueue.scala 101:50]
  wire  _GEN_946 = _T_17 & _canActualEnqueue_T ? _GEN_930 : _GEN_914; // @[DispatchQueue.scala 101:50]
  wire  _GEN_947 = _T_17 & _canActualEnqueue_T ? _GEN_931 : _GEN_915; // @[DispatchQueue.scala 101:50]
  wire  _GEN_948 = _T_17 & _canActualEnqueue_T ? _GEN_932 : _GEN_916; // @[DispatchQueue.scala 101:50]
  wire  _GEN_949 = _T_17 & _canActualEnqueue_T ? _GEN_933 : _GEN_917; // @[DispatchQueue.scala 101:50]
  wire  _GEN_950 = _T_17 & _canActualEnqueue_T ? _GEN_934 : _GEN_918; // @[DispatchQueue.scala 101:50]
  wire  _GEN_951 = _T_17 & _canActualEnqueue_T ? _GEN_935 : _GEN_919; // @[DispatchQueue.scala 101:50]
  wire  _GEN_952 = _T_17 & _canActualEnqueue_T ? _GEN_936 : _GEN_920; // @[DispatchQueue.scala 101:50]
  wire  _GEN_953 = _T_17 & _canActualEnqueue_T ? _GEN_937 : _GEN_921; // @[DispatchQueue.scala 101:50]
  wire  _GEN_954 = _T_17 & _canActualEnqueue_T ? _GEN_938 : _GEN_922; // @[DispatchQueue.scala 101:50]
  wire  _GEN_955 = _T_17 & _canActualEnqueue_T ? _GEN_939 : _GEN_923; // @[DispatchQueue.scala 101:50]
  wire  _GEN_956 = _T_17 & _canActualEnqueue_T ? _GEN_940 : _GEN_924; // @[DispatchQueue.scala 101:50]
  wire  _GEN_957 = _T_17 & _canActualEnqueue_T ? _GEN_941 : _GEN_925; // @[DispatchQueue.scala 101:50]
  wire  _GEN_958 = _T_17 & _canActualEnqueue_T ? _GEN_942 : _GEN_926; // @[DispatchQueue.scala 101:50]
  wire  _T_20 = io_deq_2_ready & io_deq_2_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_959 = 4'h0 == headPtr_2_value ? 1'h0 : _GEN_943; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_960 = 4'h1 == headPtr_2_value ? 1'h0 : _GEN_944; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_961 = 4'h2 == headPtr_2_value ? 1'h0 : _GEN_945; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_962 = 4'h3 == headPtr_2_value ? 1'h0 : _GEN_946; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_963 = 4'h4 == headPtr_2_value ? 1'h0 : _GEN_947; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_964 = 4'h5 == headPtr_2_value ? 1'h0 : _GEN_948; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_965 = 4'h6 == headPtr_2_value ? 1'h0 : _GEN_949; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_966 = 4'h7 == headPtr_2_value ? 1'h0 : _GEN_950; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_967 = 4'h8 == headPtr_2_value ? 1'h0 : _GEN_951; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_968 = 4'h9 == headPtr_2_value ? 1'h0 : _GEN_952; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_969 = 4'ha == headPtr_2_value ? 1'h0 : _GEN_953; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_970 = 4'hb == headPtr_2_value ? 1'h0 : _GEN_954; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_971 = 4'hc == headPtr_2_value ? 1'h0 : _GEN_955; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_972 = 4'hd == headPtr_2_value ? 1'h0 : _GEN_956; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_973 = 4'he == headPtr_2_value ? 1'h0 : _GEN_957; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_974 = 4'hf == headPtr_2_value ? 1'h0 : _GEN_958; // @[DispatchQueue.scala 102:{38,38}]
  wire  _GEN_975 = _T_20 & _canActualEnqueue_T ? _GEN_959 : _GEN_943; // @[DispatchQueue.scala 101:50]
  wire  _GEN_976 = _T_20 & _canActualEnqueue_T ? _GEN_960 : _GEN_944; // @[DispatchQueue.scala 101:50]
  wire  _GEN_977 = _T_20 & _canActualEnqueue_T ? _GEN_961 : _GEN_945; // @[DispatchQueue.scala 101:50]
  wire  _GEN_978 = _T_20 & _canActualEnqueue_T ? _GEN_962 : _GEN_946; // @[DispatchQueue.scala 101:50]
  wire  _GEN_979 = _T_20 & _canActualEnqueue_T ? _GEN_963 : _GEN_947; // @[DispatchQueue.scala 101:50]
  wire  _GEN_980 = _T_20 & _canActualEnqueue_T ? _GEN_964 : _GEN_948; // @[DispatchQueue.scala 101:50]
  wire  _GEN_981 = _T_20 & _canActualEnqueue_T ? _GEN_965 : _GEN_949; // @[DispatchQueue.scala 101:50]
  wire  _GEN_982 = _T_20 & _canActualEnqueue_T ? _GEN_966 : _GEN_950; // @[DispatchQueue.scala 101:50]
  wire  _GEN_983 = _T_20 & _canActualEnqueue_T ? _GEN_967 : _GEN_951; // @[DispatchQueue.scala 101:50]
  wire  _GEN_984 = _T_20 & _canActualEnqueue_T ? _GEN_968 : _GEN_952; // @[DispatchQueue.scala 101:50]
  wire  _GEN_985 = _T_20 & _canActualEnqueue_T ? _GEN_969 : _GEN_953; // @[DispatchQueue.scala 101:50]
  wire  _GEN_986 = _T_20 & _canActualEnqueue_T ? _GEN_970 : _GEN_954; // @[DispatchQueue.scala 101:50]
  wire  _GEN_987 = _T_20 & _canActualEnqueue_T ? _GEN_971 : _GEN_955; // @[DispatchQueue.scala 101:50]
  wire  _GEN_988 = _T_20 & _canActualEnqueue_T ? _GEN_972 : _GEN_956; // @[DispatchQueue.scala 101:50]
  wire  _GEN_989 = _T_20 & _canActualEnqueue_T ? _GEN_973 : _GEN_957; // @[DispatchQueue.scala 101:50]
  wire  _GEN_990 = _T_20 & _canActualEnqueue_T ? _GEN_974 : _GEN_958; // @[DispatchQueue.scala 101:50]
  wire  _T_23 = io_deq_3_ready & io_deq_3_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _needCancel_0_flushItself_T_1 = {robIdxEntries_0_flag,robIdxEntries_0_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _needCancel_0_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _needCancel_0_flushItself_T_3 = _needCancel_0_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_0_flushItself = io_redirect_bits_level & _needCancel_0_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_0_differentFlag = robIdxEntries_0_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_0_compare = robIdxEntries_0_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_0_T_1 = needCancel_0_differentFlag ^ needCancel_0_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_0_T_3 = io_redirect_valid & (needCancel_0_flushItself | _needCancel_0_T_1); // @[Rob.scala 36:20]
  wire  needCancel_0 = stateEntries_0 & _needCancel_0_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_1_flushItself_T_1 = {robIdxEntries_1_flag,robIdxEntries_1_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_1_flushItself_T_3 = _needCancel_1_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_1_flushItself = io_redirect_bits_level & _needCancel_1_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_1_differentFlag = robIdxEntries_1_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_1_compare = robIdxEntries_1_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_1_T_1 = needCancel_1_differentFlag ^ needCancel_1_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_1_T_3 = io_redirect_valid & (needCancel_1_flushItself | _needCancel_1_T_1); // @[Rob.scala 36:20]
  wire  needCancel_1 = stateEntries_1 & _needCancel_1_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_2_flushItself_T_1 = {robIdxEntries_2_flag,robIdxEntries_2_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_2_flushItself_T_3 = _needCancel_2_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_2_flushItself = io_redirect_bits_level & _needCancel_2_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_2_differentFlag = robIdxEntries_2_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_2_compare = robIdxEntries_2_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_2_T_1 = needCancel_2_differentFlag ^ needCancel_2_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_2_T_3 = io_redirect_valid & (needCancel_2_flushItself | _needCancel_2_T_1); // @[Rob.scala 36:20]
  wire  needCancel_2 = stateEntries_2 & _needCancel_2_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_3_flushItself_T_1 = {robIdxEntries_3_flag,robIdxEntries_3_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_3_flushItself_T_3 = _needCancel_3_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_3_flushItself = io_redirect_bits_level & _needCancel_3_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_3_differentFlag = robIdxEntries_3_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_3_compare = robIdxEntries_3_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_3_T_1 = needCancel_3_differentFlag ^ needCancel_3_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_3_T_3 = io_redirect_valid & (needCancel_3_flushItself | _needCancel_3_T_1); // @[Rob.scala 36:20]
  wire  needCancel_3 = stateEntries_3 & _needCancel_3_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_4_flushItself_T_1 = {robIdxEntries_4_flag,robIdxEntries_4_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_4_flushItself_T_3 = _needCancel_4_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_4_flushItself = io_redirect_bits_level & _needCancel_4_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_4_differentFlag = robIdxEntries_4_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_4_compare = robIdxEntries_4_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_4_T_1 = needCancel_4_differentFlag ^ needCancel_4_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_4_T_3 = io_redirect_valid & (needCancel_4_flushItself | _needCancel_4_T_1); // @[Rob.scala 36:20]
  wire  needCancel_4 = stateEntries_4 & _needCancel_4_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_5_flushItself_T_1 = {robIdxEntries_5_flag,robIdxEntries_5_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_5_flushItself_T_3 = _needCancel_5_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_5_flushItself = io_redirect_bits_level & _needCancel_5_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_5_differentFlag = robIdxEntries_5_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_5_compare = robIdxEntries_5_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_5_T_1 = needCancel_5_differentFlag ^ needCancel_5_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_5_T_3 = io_redirect_valid & (needCancel_5_flushItself | _needCancel_5_T_1); // @[Rob.scala 36:20]
  wire  needCancel_5 = stateEntries_5 & _needCancel_5_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_6_flushItself_T_1 = {robIdxEntries_6_flag,robIdxEntries_6_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_6_flushItself_T_3 = _needCancel_6_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_6_flushItself = io_redirect_bits_level & _needCancel_6_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_6_differentFlag = robIdxEntries_6_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_6_compare = robIdxEntries_6_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_6_T_1 = needCancel_6_differentFlag ^ needCancel_6_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_6_T_3 = io_redirect_valid & (needCancel_6_flushItself | _needCancel_6_T_1); // @[Rob.scala 36:20]
  wire  needCancel_6 = stateEntries_6 & _needCancel_6_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_7_flushItself_T_1 = {robIdxEntries_7_flag,robIdxEntries_7_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_7_flushItself_T_3 = _needCancel_7_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_7_flushItself = io_redirect_bits_level & _needCancel_7_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_7_differentFlag = robIdxEntries_7_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_7_compare = robIdxEntries_7_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_7_T_1 = needCancel_7_differentFlag ^ needCancel_7_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_7_T_3 = io_redirect_valid & (needCancel_7_flushItself | _needCancel_7_T_1); // @[Rob.scala 36:20]
  wire  needCancel_7 = stateEntries_7 & _needCancel_7_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_8_flushItself_T_1 = {robIdxEntries_8_flag,robIdxEntries_8_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_8_flushItself_T_3 = _needCancel_8_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_8_flushItself = io_redirect_bits_level & _needCancel_8_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_8_differentFlag = robIdxEntries_8_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_8_compare = robIdxEntries_8_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_8_T_1 = needCancel_8_differentFlag ^ needCancel_8_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_8_T_3 = io_redirect_valid & (needCancel_8_flushItself | _needCancel_8_T_1); // @[Rob.scala 36:20]
  wire  needCancel_8 = stateEntries_8 & _needCancel_8_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_9_flushItself_T_1 = {robIdxEntries_9_flag,robIdxEntries_9_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_9_flushItself_T_3 = _needCancel_9_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_9_flushItself = io_redirect_bits_level & _needCancel_9_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_9_differentFlag = robIdxEntries_9_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_9_compare = robIdxEntries_9_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_9_T_1 = needCancel_9_differentFlag ^ needCancel_9_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_9_T_3 = io_redirect_valid & (needCancel_9_flushItself | _needCancel_9_T_1); // @[Rob.scala 36:20]
  wire  needCancel_9 = stateEntries_9 & _needCancel_9_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_10_flushItself_T_1 = {robIdxEntries_10_flag,robIdxEntries_10_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_10_flushItself_T_3 = _needCancel_10_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_10_flushItself = io_redirect_bits_level & _needCancel_10_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_10_differentFlag = robIdxEntries_10_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_10_compare = robIdxEntries_10_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_10_T_1 = needCancel_10_differentFlag ^ needCancel_10_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_10_T_3 = io_redirect_valid & (needCancel_10_flushItself | _needCancel_10_T_1); // @[Rob.scala 36:20]
  wire  needCancel_10 = stateEntries_10 & _needCancel_10_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_11_flushItself_T_1 = {robIdxEntries_11_flag,robIdxEntries_11_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_11_flushItself_T_3 = _needCancel_11_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_11_flushItself = io_redirect_bits_level & _needCancel_11_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_11_differentFlag = robIdxEntries_11_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_11_compare = robIdxEntries_11_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_11_T_1 = needCancel_11_differentFlag ^ needCancel_11_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_11_T_3 = io_redirect_valid & (needCancel_11_flushItself | _needCancel_11_T_1); // @[Rob.scala 36:20]
  wire  needCancel_11 = stateEntries_11 & _needCancel_11_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_12_flushItself_T_1 = {robIdxEntries_12_flag,robIdxEntries_12_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_12_flushItself_T_3 = _needCancel_12_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_12_flushItself = io_redirect_bits_level & _needCancel_12_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_12_differentFlag = robIdxEntries_12_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_12_compare = robIdxEntries_12_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_12_T_1 = needCancel_12_differentFlag ^ needCancel_12_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_12_T_3 = io_redirect_valid & (needCancel_12_flushItself | _needCancel_12_T_1); // @[Rob.scala 36:20]
  wire  needCancel_12 = stateEntries_12 & _needCancel_12_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_13_flushItself_T_1 = {robIdxEntries_13_flag,robIdxEntries_13_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_13_flushItself_T_3 = _needCancel_13_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_13_flushItself = io_redirect_bits_level & _needCancel_13_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_13_differentFlag = robIdxEntries_13_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_13_compare = robIdxEntries_13_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_13_T_1 = needCancel_13_differentFlag ^ needCancel_13_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_13_T_3 = io_redirect_valid & (needCancel_13_flushItself | _needCancel_13_T_1); // @[Rob.scala 36:20]
  wire  needCancel_13 = stateEntries_13 & _needCancel_13_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_14_flushItself_T_1 = {robIdxEntries_14_flag,robIdxEntries_14_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_14_flushItself_T_3 = _needCancel_14_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_14_flushItself = io_redirect_bits_level & _needCancel_14_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_14_differentFlag = robIdxEntries_14_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_14_compare = robIdxEntries_14_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_14_T_1 = needCancel_14_differentFlag ^ needCancel_14_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_14_T_3 = io_redirect_valid & (needCancel_14_flushItself | _needCancel_14_T_1); // @[Rob.scala 36:20]
  wire  needCancel_14 = stateEntries_14 & _needCancel_14_T_3; // @[DispatchQueue.scala 111:52]
  wire [7:0] _needCancel_15_flushItself_T_1 = {robIdxEntries_15_flag,robIdxEntries_15_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_15_flushItself_T_3 = _needCancel_15_flushItself_T_1 == _needCancel_0_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_15_flushItself = io_redirect_bits_level & _needCancel_15_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_15_differentFlag = robIdxEntries_15_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_15_compare = robIdxEntries_15_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_15_T_1 = needCancel_15_differentFlag ^ needCancel_15_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_15_T_3 = io_redirect_valid & (needCancel_15_flushItself | _needCancel_15_T_1); // @[Rob.scala 36:20]
  wire  needCancel_15 = stateEntries_15 & _needCancel_15_T_3; // @[DispatchQueue.scala 111:52]
  wire [3:0] _currentValidCounter_T_2 = tailPtr_0_value - headPtr_0_value; // @[CircularQueuePtr.scala 80:21]
  wire [4:0] _GEN_1299 = {{1'd0}, tailPtr_0_value}; // @[CircularQueuePtr.scala 81:25]
  wire [4:0] _currentValidCounter_T_4 = 5'h10 + _GEN_1299; // @[CircularQueuePtr.scala 81:25]
  wire [4:0] _GEN_1300 = {{1'd0}, headPtr_0_value}; // @[CircularQueuePtr.scala 81:41]
  wire [4:0] _currentValidCounter_T_6 = _currentValidCounter_T_4 - _GEN_1300; // @[CircularQueuePtr.scala 81:41]
  wire [4:0] currentValidCounter = tailPtr_0_flag == headPtr_0_flag ? {{1'd0}, _currentValidCounter_T_2} :
    _currentValidCounter_T_6; // @[CircularQueuePtr.scala 79:8]
  wire [4:0] numDeqTry = currentValidCounter > 5'h4 ? 5'h4 : currentValidCounter; // @[DispatchQueue.scala 131:22]
  wire  _numDeqFire_T_1 = ~_T_14; // @[DispatchQueue.scala 136:5]
  wire  _GEN_1040 = 4'h1 == headPtr_1_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1041 = 4'h2 == headPtr_1_value ? stateEntries_2 : _GEN_1040; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1042 = 4'h3 == headPtr_1_value ? stateEntries_3 : _GEN_1041; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1043 = 4'h4 == headPtr_1_value ? stateEntries_4 : _GEN_1042; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1044 = 4'h5 == headPtr_1_value ? stateEntries_5 : _GEN_1043; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1045 = 4'h6 == headPtr_1_value ? stateEntries_6 : _GEN_1044; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1046 = 4'h7 == headPtr_1_value ? stateEntries_7 : _GEN_1045; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1047 = 4'h8 == headPtr_1_value ? stateEntries_8 : _GEN_1046; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1048 = 4'h9 == headPtr_1_value ? stateEntries_9 : _GEN_1047; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1049 = 4'ha == headPtr_1_value ? stateEntries_10 : _GEN_1048; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1050 = 4'hb == headPtr_1_value ? stateEntries_11 : _GEN_1049; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1051 = 4'hc == headPtr_1_value ? stateEntries_12 : _GEN_1050; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1052 = 4'hd == headPtr_1_value ? stateEntries_13 : _GEN_1051; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1053 = 4'he == headPtr_1_value ? stateEntries_14 : _GEN_1052; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1054 = 4'hf == headPtr_1_value ? stateEntries_15 : _GEN_1053; // @[DispatchQueue.scala 136:{76,76}]
  wire  _numDeqFire_T_6 = ~_T_17 & _GEN_1054; // @[DispatchQueue.scala 136:17]
  wire  _GEN_1056 = 4'h1 == headPtr_2_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1057 = 4'h2 == headPtr_2_value ? stateEntries_2 : _GEN_1056; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1058 = 4'h3 == headPtr_2_value ? stateEntries_3 : _GEN_1057; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1059 = 4'h4 == headPtr_2_value ? stateEntries_4 : _GEN_1058; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1060 = 4'h5 == headPtr_2_value ? stateEntries_5 : _GEN_1059; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1061 = 4'h6 == headPtr_2_value ? stateEntries_6 : _GEN_1060; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1062 = 4'h7 == headPtr_2_value ? stateEntries_7 : _GEN_1061; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1063 = 4'h8 == headPtr_2_value ? stateEntries_8 : _GEN_1062; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1064 = 4'h9 == headPtr_2_value ? stateEntries_9 : _GEN_1063; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1065 = 4'ha == headPtr_2_value ? stateEntries_10 : _GEN_1064; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1066 = 4'hb == headPtr_2_value ? stateEntries_11 : _GEN_1065; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1067 = 4'hc == headPtr_2_value ? stateEntries_12 : _GEN_1066; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1068 = 4'hd == headPtr_2_value ? stateEntries_13 : _GEN_1067; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1069 = 4'he == headPtr_2_value ? stateEntries_14 : _GEN_1068; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1070 = 4'hf == headPtr_2_value ? stateEntries_15 : _GEN_1069; // @[DispatchQueue.scala 136:{76,76}]
  wire  _numDeqFire_T_10 = ~_T_20 & _GEN_1070; // @[DispatchQueue.scala 136:17]
  wire  _GEN_1072 = 4'h1 == headPtr_3_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1073 = 4'h2 == headPtr_3_value ? stateEntries_2 : _GEN_1072; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1074 = 4'h3 == headPtr_3_value ? stateEntries_3 : _GEN_1073; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1075 = 4'h4 == headPtr_3_value ? stateEntries_4 : _GEN_1074; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1076 = 4'h5 == headPtr_3_value ? stateEntries_5 : _GEN_1075; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1077 = 4'h6 == headPtr_3_value ? stateEntries_6 : _GEN_1076; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1078 = 4'h7 == headPtr_3_value ? stateEntries_7 : _GEN_1077; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1079 = 4'h8 == headPtr_3_value ? stateEntries_8 : _GEN_1078; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1080 = 4'h9 == headPtr_3_value ? stateEntries_9 : _GEN_1079; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1081 = 4'ha == headPtr_3_value ? stateEntries_10 : _GEN_1080; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1082 = 4'hb == headPtr_3_value ? stateEntries_11 : _GEN_1081; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1083 = 4'hc == headPtr_3_value ? stateEntries_12 : _GEN_1082; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1084 = 4'hd == headPtr_3_value ? stateEntries_13 : _GEN_1083; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1085 = 4'he == headPtr_3_value ? stateEntries_14 : _GEN_1084; // @[DispatchQueue.scala 136:{76,76}]
  wire  _GEN_1086 = 4'hf == headPtr_3_value ? stateEntries_15 : _GEN_1085; // @[DispatchQueue.scala 136:{76,76}]
  wire  _numDeqFire_T_14 = ~_T_23 & _GEN_1086; // @[DispatchQueue.scala 136:17]
  wire [2:0] _numDeqFire_T_15 = _numDeqFire_T_14 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _numDeqFire_T_16 = _numDeqFire_T_10 ? 3'h2 : _numDeqFire_T_15; // @[Mux.scala 47:70]
  wire [2:0] _numDeqFire_T_17 = _numDeqFire_T_6 ? 3'h1 : _numDeqFire_T_16; // @[Mux.scala 47:70]
  wire [2:0] numDeqFire = _numDeqFire_T_1 ? 3'h0 : _numDeqFire_T_17; // @[Mux.scala 47:70]
  wire [4:0] _GEN_1301 = {{2'd0}, numDeqFire}; // @[DispatchQueue.scala 138:30]
  wire [4:0] numDeq = numDeqTry > _GEN_1301 ? {{2'd0}, numDeqFire} : numDeqTry; // @[DispatchQueue.scala 138:19]
  wire [4:0] _nextHeadPtr_0_new_ptr_T = {headPtr_0_flag,headPtr_0_value}; // @[Cat.scala 31:58]
  wire [4:0] _nextHeadPtr_0_new_ptr_T_2 = _nextHeadPtr_0_new_ptr_T + numDeq; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] nextHeadPtr_0_new_ptr_value = _nextHeadPtr_0_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  nextHeadPtr_0_new_ptr_flag = _nextHeadPtr_0_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _nextHeadPtr_1_new_ptr_T = {headPtr_1_flag,headPtr_1_value}; // @[Cat.scala 31:58]
  wire [4:0] _nextHeadPtr_1_new_ptr_T_2 = _nextHeadPtr_1_new_ptr_T + numDeq; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] nextHeadPtr_1_new_ptr_value = _nextHeadPtr_1_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  nextHeadPtr_1_new_ptr_flag = _nextHeadPtr_1_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _nextHeadPtr_2_new_ptr_T = {headPtr_2_flag,headPtr_2_value}; // @[Cat.scala 31:58]
  wire [4:0] _nextHeadPtr_2_new_ptr_T_2 = _nextHeadPtr_2_new_ptr_T + numDeq; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] nextHeadPtr_2_new_ptr_value = _nextHeadPtr_2_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  nextHeadPtr_2_new_ptr_flag = _nextHeadPtr_2_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _nextHeadPtr_3_new_ptr_T = {headPtr_3_flag,headPtr_3_value}; // @[Cat.scala 31:58]
  wire [4:0] _nextHeadPtr_3_new_ptr_T_2 = _nextHeadPtr_3_new_ptr_T + numDeq; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] nextHeadPtr_3_new_ptr_value = _nextHeadPtr_3_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  nextHeadPtr_3_new_ptr_flag = _nextHeadPtr_3_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  reg  lastCycleMisprediction; // @[DispatchQueue.scala 149:39]
  wire  _loValidBitVec_T_1 = stateEntries_0 & headPtrMask[0]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_3 = stateEntries_1 & headPtrMask[1]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_5 = stateEntries_2 & headPtrMask[2]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_7 = stateEntries_3 & headPtrMask[3]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_9 = stateEntries_4 & headPtrMask[4]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_11 = stateEntries_5 & headPtrMask[5]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_13 = stateEntries_6 & headPtrMask[6]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_15 = stateEntries_7 & headPtrMask[7]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_17 = stateEntries_8 & headPtrMask[8]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_19 = stateEntries_9 & headPtrMask[9]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_21 = stateEntries_10 & headPtrMask[10]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_23 = stateEntries_11 & headPtrMask[11]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_25 = stateEntries_12 & headPtrMask[12]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_27 = stateEntries_13 & headPtrMask[13]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_29 = stateEntries_14 & headPtrMask[14]; // @[DispatchQueue.scala 152:66]
  wire  _loValidBitVec_T_31 = stateEntries_15 & headPtrMask[15]; // @[DispatchQueue.scala 152:66]
  wire [7:0] loValidBitVec_lo = {_loValidBitVec_T_17,_loValidBitVec_T_19,_loValidBitVec_T_21,_loValidBitVec_T_23,
    _loValidBitVec_T_25,_loValidBitVec_T_27,_loValidBitVec_T_29,_loValidBitVec_T_31}; // @[Cat.scala 31:58]
  wire [15:0] loValidBitVec = {_loValidBitVec_T_1,_loValidBitVec_T_3,_loValidBitVec_T_5,_loValidBitVec_T_7,
    _loValidBitVec_T_9,_loValidBitVec_T_11,_loValidBitVec_T_13,_loValidBitVec_T_15,loValidBitVec_lo}; // @[Cat.scala 31:58]
  wire  _hiValidBitVec_T_2 = stateEntries_0 & ~headPtrMask[0]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_5 = stateEntries_1 & ~headPtrMask[1]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_8 = stateEntries_2 & ~headPtrMask[2]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_11 = stateEntries_3 & ~headPtrMask[3]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_14 = stateEntries_4 & ~headPtrMask[4]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_17 = stateEntries_5 & ~headPtrMask[5]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_20 = stateEntries_6 & ~headPtrMask[6]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_23 = stateEntries_7 & ~headPtrMask[7]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_26 = stateEntries_8 & ~headPtrMask[8]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_29 = stateEntries_9 & ~headPtrMask[9]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_32 = stateEntries_10 & ~headPtrMask[10]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_35 = stateEntries_11 & ~headPtrMask[11]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_38 = stateEntries_12 & ~headPtrMask[12]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_41 = stateEntries_13 & ~headPtrMask[13]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_44 = stateEntries_14 & ~headPtrMask[14]; // @[DispatchQueue.scala 153:66]
  wire  _hiValidBitVec_T_47 = stateEntries_15 & ~headPtrMask[15]; // @[DispatchQueue.scala 153:66]
  wire [7:0] hiValidBitVec_lo = {_hiValidBitVec_T_26,_hiValidBitVec_T_29,_hiValidBitVec_T_32,_hiValidBitVec_T_35,
    _hiValidBitVec_T_38,_hiValidBitVec_T_41,_hiValidBitVec_T_44,_hiValidBitVec_T_47}; // @[Cat.scala 31:58]
  wire [15:0] hiValidBitVec = {_hiValidBitVec_T_2,_hiValidBitVec_T_5,_hiValidBitVec_T_8,_hiValidBitVec_T_11,
    _hiValidBitVec_T_14,_hiValidBitVec_T_17,_hiValidBitVec_T_20,_hiValidBitVec_T_23,hiValidBitVec_lo}; // @[Cat.scala 31:58]
  wire  _flippedFlag_T = |loValidBitVec; // @[DispatchQueue.scala 154:35]
  wire  flippedFlag = |loValidBitVec | stateEntries_15; // @[DispatchQueue.scala 154:39]
  wire [15:0] _leadingZeros_T_1 = _flippedFlag_T ? loValidBitVec : hiValidBitVec; // @[DispatchQueue.scala 155:41]
  wire [3:0] _leadingZeros_T_18 = _leadingZeros_T_1[14] ? 4'he : 4'hf; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_19 = _leadingZeros_T_1[13] ? 4'hd : _leadingZeros_T_18; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_20 = _leadingZeros_T_1[12] ? 4'hc : _leadingZeros_T_19; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_21 = _leadingZeros_T_1[11] ? 4'hb : _leadingZeros_T_20; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_22 = _leadingZeros_T_1[10] ? 4'ha : _leadingZeros_T_21; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_23 = _leadingZeros_T_1[9] ? 4'h9 : _leadingZeros_T_22; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_24 = _leadingZeros_T_1[8] ? 4'h8 : _leadingZeros_T_23; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_25 = _leadingZeros_T_1[7] ? 4'h7 : _leadingZeros_T_24; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_26 = _leadingZeros_T_1[6] ? 4'h6 : _leadingZeros_T_25; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_27 = _leadingZeros_T_1[5] ? 4'h5 : _leadingZeros_T_26; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_28 = _leadingZeros_T_1[4] ? 4'h4 : _leadingZeros_T_27; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_29 = _leadingZeros_T_1[3] ? 4'h3 : _leadingZeros_T_28; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_30 = _leadingZeros_T_1[2] ? 4'h2 : _leadingZeros_T_29; // @[Mux.scala 47:70]
  wire [3:0] _leadingZeros_T_31 = _leadingZeros_T_1[1] ? 4'h1 : _leadingZeros_T_30; // @[Mux.scala 47:70]
  wire [3:0] leadingZeros = _leadingZeros_T_1[0] ? 4'h0 : _leadingZeros_T_31; // @[Mux.scala 47:70]
  wire [4:0] _GEN_1302 = {{1'd0}, leadingZeros}; // @[DispatchQueue.scala 156:60]
  wire [4:0] _lastOneIndex_T_2 = 5'h10 - _GEN_1302; // @[DispatchQueue.scala 156:60]
  wire [4:0] lastOneIndex = leadingZeros == 4'h0 ? 5'h0 : _lastOneIndex_T_2; // @[DispatchQueue.scala 156:25]
  wire  walkedTailPtr_flag = flippedFlag ^ headPtr_0_flag; // @[DispatchQueue.scala 158:37]
  wire [1:0] _numEnq_T_2 = io_enq_req_2_valid + io_enq_req_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _numEnq_T_4 = _T_5 + _numEnq_T_2; // @[Bitwise.scala 48:55]
  wire [2:0] numEnq = io_enq_canAccept ? _numEnq_T_4 : 3'h0; // @[DispatchQueue.scala 162:19]
  wire [3:0] walkedTailPtr_value = lastOneIndex[3:0]; // @[DispatchQueue.scala 157:27 159:23]
  wire [4:0] _tailPtr_0_new_ptr_T = {tailPtr_0_flag,tailPtr_0_value}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_1303 = {{2'd0}, numEnq}; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] _tailPtr_0_new_ptr_T_2 = _tailPtr_0_new_ptr_T + _GEN_1303; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_0_new_ptr_value = _tailPtr_0_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_0_new_ptr_flag = _tailPtr_0_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  reg  lastLastCycleMisprediction; // @[DispatchQueue.scala 169:43]
  wire [4:0] _tailPtr_1_new_ptr_T_2 = _tailPtr_0_new_ptr_T + 5'h1; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_1_new_ptr_value = _tailPtr_1_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_1_new_ptr_flag = _tailPtr_1_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _tailPtr_1_new_ptr_T_5 = {tailPtr_1_flag,tailPtr_1_value}; // @[Cat.scala 31:58]
  wire [4:0] _tailPtr_1_new_ptr_T_7 = _tailPtr_1_new_ptr_T_5 + _GEN_1303; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_1_new_ptr_1_value = _tailPtr_1_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_1_new_ptr_1_flag = _tailPtr_1_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _tailPtr_2_new_ptr_T_2 = _tailPtr_0_new_ptr_T + 5'h2; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_2_new_ptr_value = _tailPtr_2_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_2_new_ptr_flag = _tailPtr_2_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _tailPtr_2_new_ptr_T_5 = {tailPtr_2_flag,tailPtr_2_value}; // @[Cat.scala 31:58]
  wire [4:0] _tailPtr_2_new_ptr_T_7 = _tailPtr_2_new_ptr_T_5 + _GEN_1303; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_2_new_ptr_1_value = _tailPtr_2_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_2_new_ptr_1_flag = _tailPtr_2_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _tailPtr_3_new_ptr_T_2 = _tailPtr_0_new_ptr_T + 5'h3; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_3_new_ptr_value = _tailPtr_3_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_3_new_ptr_flag = _tailPtr_3_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _tailPtr_3_new_ptr_T_5 = {tailPtr_3_flag,tailPtr_3_value}; // @[Cat.scala 31:58]
  wire [4:0] _tailPtr_3_new_ptr_T_7 = _tailPtr_3_new_ptr_T_5 + _GEN_1303; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] tailPtr_3_new_ptr_1_value = _tailPtr_3_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtr_3_new_ptr_1_flag = _tailPtr_3_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _allowEnqueue_T_2 = 5'hc - currentValidCounter; // @[DispatchQueue.scala 186:101]
  wire  _allowEnqueue_T_4 = currentValidCounter > 5'hc ? 1'h0 : _GEN_1303 <= _allowEnqueue_T_2; // @[DispatchQueue.scala 186:22]
  wire [6:0] _GEN_1088 = 4'h1 == headPtr_0_value ? robIdxEntries_1_value : robIdxEntries_0_value; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1089 = 4'h2 == headPtr_0_value ? robIdxEntries_2_value : _GEN_1088; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1090 = 4'h3 == headPtr_0_value ? robIdxEntries_3_value : _GEN_1089; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1091 = 4'h4 == headPtr_0_value ? robIdxEntries_4_value : _GEN_1090; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1092 = 4'h5 == headPtr_0_value ? robIdxEntries_5_value : _GEN_1091; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1093 = 4'h6 == headPtr_0_value ? robIdxEntries_6_value : _GEN_1092; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1094 = 4'h7 == headPtr_0_value ? robIdxEntries_7_value : _GEN_1093; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1095 = 4'h8 == headPtr_0_value ? robIdxEntries_8_value : _GEN_1094; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1096 = 4'h9 == headPtr_0_value ? robIdxEntries_9_value : _GEN_1095; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1097 = 4'ha == headPtr_0_value ? robIdxEntries_10_value : _GEN_1096; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1098 = 4'hb == headPtr_0_value ? robIdxEntries_11_value : _GEN_1097; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1099 = 4'hc == headPtr_0_value ? robIdxEntries_12_value : _GEN_1098; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1100 = 4'hd == headPtr_0_value ? robIdxEntries_13_value : _GEN_1099; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1101 = 4'he == headPtr_0_value ? robIdxEntries_14_value : _GEN_1100; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1104 = 4'h1 == headPtr_0_value ? robIdxEntries_1_flag : robIdxEntries_0_flag; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1105 = 4'h2 == headPtr_0_value ? robIdxEntries_2_flag : _GEN_1104; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1106 = 4'h3 == headPtr_0_value ? robIdxEntries_3_flag : _GEN_1105; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1107 = 4'h4 == headPtr_0_value ? robIdxEntries_4_flag : _GEN_1106; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1108 = 4'h5 == headPtr_0_value ? robIdxEntries_5_flag : _GEN_1107; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1109 = 4'h6 == headPtr_0_value ? robIdxEntries_6_flag : _GEN_1108; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1110 = 4'h7 == headPtr_0_value ? robIdxEntries_7_flag : _GEN_1109; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1111 = 4'h8 == headPtr_0_value ? robIdxEntries_8_flag : _GEN_1110; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1112 = 4'h9 == headPtr_0_value ? robIdxEntries_9_flag : _GEN_1111; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1113 = 4'ha == headPtr_0_value ? robIdxEntries_10_flag : _GEN_1112; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1114 = 4'hb == headPtr_0_value ? robIdxEntries_11_flag : _GEN_1113; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1115 = 4'hc == headPtr_0_value ? robIdxEntries_12_flag : _GEN_1114; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1116 = 4'hd == headPtr_0_value ? robIdxEntries_13_flag : _GEN_1115; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1117 = 4'he == headPtr_0_value ? robIdxEntries_14_flag : _GEN_1116; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1120 = 4'h1 == headPtr_0_value ? stateEntries_1 : stateEntries_0; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1121 = 4'h2 == headPtr_0_value ? stateEntries_2 : _GEN_1120; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1122 = 4'h3 == headPtr_0_value ? stateEntries_3 : _GEN_1121; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1123 = 4'h4 == headPtr_0_value ? stateEntries_4 : _GEN_1122; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1124 = 4'h5 == headPtr_0_value ? stateEntries_5 : _GEN_1123; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1125 = 4'h6 == headPtr_0_value ? stateEntries_6 : _GEN_1124; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1126 = 4'h7 == headPtr_0_value ? stateEntries_7 : _GEN_1125; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1127 = 4'h8 == headPtr_0_value ? stateEntries_8 : _GEN_1126; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1128 = 4'h9 == headPtr_0_value ? stateEntries_9 : _GEN_1127; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1129 = 4'ha == headPtr_0_value ? stateEntries_10 : _GEN_1128; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1130 = 4'hb == headPtr_0_value ? stateEntries_11 : _GEN_1129; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1131 = 4'hc == headPtr_0_value ? stateEntries_12 : _GEN_1130; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1132 = 4'hd == headPtr_0_value ? stateEntries_13 : _GEN_1131; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1133 = 4'he == headPtr_0_value ? stateEntries_14 : _GEN_1132; // @[DispatchQueue.scala 198:{55,55}]
  wire  _GEN_1134 = 4'hf == headPtr_0_value ? stateEntries_15 : _GEN_1133; // @[DispatchQueue.scala 198:{55,55}]
  wire [6:0] _GEN_1136 = 4'h1 == headPtr_1_value ? robIdxEntries_1_value : robIdxEntries_0_value; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1137 = 4'h2 == headPtr_1_value ? robIdxEntries_2_value : _GEN_1136; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1138 = 4'h3 == headPtr_1_value ? robIdxEntries_3_value : _GEN_1137; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1139 = 4'h4 == headPtr_1_value ? robIdxEntries_4_value : _GEN_1138; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1140 = 4'h5 == headPtr_1_value ? robIdxEntries_5_value : _GEN_1139; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1141 = 4'h6 == headPtr_1_value ? robIdxEntries_6_value : _GEN_1140; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1142 = 4'h7 == headPtr_1_value ? robIdxEntries_7_value : _GEN_1141; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1143 = 4'h8 == headPtr_1_value ? robIdxEntries_8_value : _GEN_1142; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1144 = 4'h9 == headPtr_1_value ? robIdxEntries_9_value : _GEN_1143; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1145 = 4'ha == headPtr_1_value ? robIdxEntries_10_value : _GEN_1144; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1146 = 4'hb == headPtr_1_value ? robIdxEntries_11_value : _GEN_1145; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1147 = 4'hc == headPtr_1_value ? robIdxEntries_12_value : _GEN_1146; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1148 = 4'hd == headPtr_1_value ? robIdxEntries_13_value : _GEN_1147; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1149 = 4'he == headPtr_1_value ? robIdxEntries_14_value : _GEN_1148; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1152 = 4'h1 == headPtr_1_value ? robIdxEntries_1_flag : robIdxEntries_0_flag; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1153 = 4'h2 == headPtr_1_value ? robIdxEntries_2_flag : _GEN_1152; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1154 = 4'h3 == headPtr_1_value ? robIdxEntries_3_flag : _GEN_1153; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1155 = 4'h4 == headPtr_1_value ? robIdxEntries_4_flag : _GEN_1154; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1156 = 4'h5 == headPtr_1_value ? robIdxEntries_5_flag : _GEN_1155; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1157 = 4'h6 == headPtr_1_value ? robIdxEntries_6_flag : _GEN_1156; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1158 = 4'h7 == headPtr_1_value ? robIdxEntries_7_flag : _GEN_1157; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1159 = 4'h8 == headPtr_1_value ? robIdxEntries_8_flag : _GEN_1158; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1160 = 4'h9 == headPtr_1_value ? robIdxEntries_9_flag : _GEN_1159; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1161 = 4'ha == headPtr_1_value ? robIdxEntries_10_flag : _GEN_1160; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1162 = 4'hb == headPtr_1_value ? robIdxEntries_11_flag : _GEN_1161; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1163 = 4'hc == headPtr_1_value ? robIdxEntries_12_flag : _GEN_1162; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1164 = 4'hd == headPtr_1_value ? robIdxEntries_13_flag : _GEN_1163; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1165 = 4'he == headPtr_1_value ? robIdxEntries_14_flag : _GEN_1164; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1168 = 4'h1 == headPtr_2_value ? robIdxEntries_1_value : robIdxEntries_0_value; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1169 = 4'h2 == headPtr_2_value ? robIdxEntries_2_value : _GEN_1168; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1170 = 4'h3 == headPtr_2_value ? robIdxEntries_3_value : _GEN_1169; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1171 = 4'h4 == headPtr_2_value ? robIdxEntries_4_value : _GEN_1170; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1172 = 4'h5 == headPtr_2_value ? robIdxEntries_5_value : _GEN_1171; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1173 = 4'h6 == headPtr_2_value ? robIdxEntries_6_value : _GEN_1172; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1174 = 4'h7 == headPtr_2_value ? robIdxEntries_7_value : _GEN_1173; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1175 = 4'h8 == headPtr_2_value ? robIdxEntries_8_value : _GEN_1174; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1176 = 4'h9 == headPtr_2_value ? robIdxEntries_9_value : _GEN_1175; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1177 = 4'ha == headPtr_2_value ? robIdxEntries_10_value : _GEN_1176; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1178 = 4'hb == headPtr_2_value ? robIdxEntries_11_value : _GEN_1177; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1179 = 4'hc == headPtr_2_value ? robIdxEntries_12_value : _GEN_1178; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1180 = 4'hd == headPtr_2_value ? robIdxEntries_13_value : _GEN_1179; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1181 = 4'he == headPtr_2_value ? robIdxEntries_14_value : _GEN_1180; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1184 = 4'h1 == headPtr_2_value ? robIdxEntries_1_flag : robIdxEntries_0_flag; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1185 = 4'h2 == headPtr_2_value ? robIdxEntries_2_flag : _GEN_1184; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1186 = 4'h3 == headPtr_2_value ? robIdxEntries_3_flag : _GEN_1185; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1187 = 4'h4 == headPtr_2_value ? robIdxEntries_4_flag : _GEN_1186; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1188 = 4'h5 == headPtr_2_value ? robIdxEntries_5_flag : _GEN_1187; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1189 = 4'h6 == headPtr_2_value ? robIdxEntries_6_flag : _GEN_1188; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1190 = 4'h7 == headPtr_2_value ? robIdxEntries_7_flag : _GEN_1189; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1191 = 4'h8 == headPtr_2_value ? robIdxEntries_8_flag : _GEN_1190; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1192 = 4'h9 == headPtr_2_value ? robIdxEntries_9_flag : _GEN_1191; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1193 = 4'ha == headPtr_2_value ? robIdxEntries_10_flag : _GEN_1192; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1194 = 4'hb == headPtr_2_value ? robIdxEntries_11_flag : _GEN_1193; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1195 = 4'hc == headPtr_2_value ? robIdxEntries_12_flag : _GEN_1194; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1196 = 4'hd == headPtr_2_value ? robIdxEntries_13_flag : _GEN_1195; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1197 = 4'he == headPtr_2_value ? robIdxEntries_14_flag : _GEN_1196; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1200 = 4'h1 == headPtr_3_value ? robIdxEntries_1_value : robIdxEntries_0_value; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1201 = 4'h2 == headPtr_3_value ? robIdxEntries_2_value : _GEN_1200; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1202 = 4'h3 == headPtr_3_value ? robIdxEntries_3_value : _GEN_1201; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1203 = 4'h4 == headPtr_3_value ? robIdxEntries_4_value : _GEN_1202; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1204 = 4'h5 == headPtr_3_value ? robIdxEntries_5_value : _GEN_1203; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1205 = 4'h6 == headPtr_3_value ? robIdxEntries_6_value : _GEN_1204; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1206 = 4'h7 == headPtr_3_value ? robIdxEntries_7_value : _GEN_1205; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1207 = 4'h8 == headPtr_3_value ? robIdxEntries_8_value : _GEN_1206; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1208 = 4'h9 == headPtr_3_value ? robIdxEntries_9_value : _GEN_1207; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1209 = 4'ha == headPtr_3_value ? robIdxEntries_10_value : _GEN_1208; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1210 = 4'hb == headPtr_3_value ? robIdxEntries_11_value : _GEN_1209; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1211 = 4'hc == headPtr_3_value ? robIdxEntries_12_value : _GEN_1210; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1212 = 4'hd == headPtr_3_value ? robIdxEntries_13_value : _GEN_1211; // @[DispatchQueue.scala 195:{27,27}]
  wire [6:0] _GEN_1213 = 4'he == headPtr_3_value ? robIdxEntries_14_value : _GEN_1212; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1216 = 4'h1 == headPtr_3_value ? robIdxEntries_1_flag : robIdxEntries_0_flag; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1217 = 4'h2 == headPtr_3_value ? robIdxEntries_2_flag : _GEN_1216; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1218 = 4'h3 == headPtr_3_value ? robIdxEntries_3_flag : _GEN_1217; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1219 = 4'h4 == headPtr_3_value ? robIdxEntries_4_flag : _GEN_1218; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1220 = 4'h5 == headPtr_3_value ? robIdxEntries_5_flag : _GEN_1219; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1221 = 4'h6 == headPtr_3_value ? robIdxEntries_6_flag : _GEN_1220; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1222 = 4'h7 == headPtr_3_value ? robIdxEntries_7_flag : _GEN_1221; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1223 = 4'h8 == headPtr_3_value ? robIdxEntries_8_flag : _GEN_1222; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1224 = 4'h9 == headPtr_3_value ? robIdxEntries_9_flag : _GEN_1223; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1225 = 4'ha == headPtr_3_value ? robIdxEntries_10_flag : _GEN_1224; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1226 = 4'hb == headPtr_3_value ? robIdxEntries_11_flag : _GEN_1225; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1227 = 4'hc == headPtr_3_value ? robIdxEntries_12_flag : _GEN_1226; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1228 = 4'hd == headPtr_3_value ? robIdxEntries_13_flag : _GEN_1227; // @[DispatchQueue.scala 195:{27,27}]
  wire  _GEN_1229 = 4'he == headPtr_3_value ? robIdxEntries_14_flag : _GEN_1228; // @[DispatchQueue.scala 195:{27,27}]
  wire [1:0] _T_106 = stateEntries_0 + stateEntries_1; // @[Bitwise.scala 48:55]
  wire [1:0] _T_108 = stateEntries_2 + stateEntries_3; // @[Bitwise.scala 48:55]
  wire [2:0] _T_110 = _T_106 + _T_108; // @[Bitwise.scala 48:55]
  wire [1:0] _T_112 = stateEntries_4 + stateEntries_5; // @[Bitwise.scala 48:55]
  wire [1:0] _T_114 = stateEntries_6 + stateEntries_7; // @[Bitwise.scala 48:55]
  wire [2:0] _T_116 = _T_112 + _T_114; // @[Bitwise.scala 48:55]
  wire [3:0] _T_118 = _T_110 + _T_116; // @[Bitwise.scala 48:55]
  wire [1:0] _T_120 = stateEntries_8 + stateEntries_9; // @[Bitwise.scala 48:55]
  wire [1:0] _T_122 = stateEntries_10 + stateEntries_11; // @[Bitwise.scala 48:55]
  wire [2:0] _T_124 = _T_120 + _T_122; // @[Bitwise.scala 48:55]
  wire [1:0] _T_126 = stateEntries_12 + stateEntries_13; // @[Bitwise.scala 48:55]
  wire [1:0] _T_128 = stateEntries_14 + stateEntries_15; // @[Bitwise.scala 48:55]
  wire [2:0] _T_130 = _T_126 + _T_128; // @[Bitwise.scala 48:55]
  wire [3:0] _T_132 = _T_124 + _T_130; // @[Bitwise.scala 48:55]
  wire [4:0] _T_134 = _T_118 + _T_132; // @[Bitwise.scala 48:55]
  wire  _T_136 = ~allowEnqueue; // @[DispatchQueue.scala 218:64]
  wire [1:0] _T_141 = _T_14 + _T_17; // @[Bitwise.scala 48:55]
  wire [1:0] _T_143 = _T_20 + _T_23; // @[Bitwise.scala 48:55]
  wire [1:0] _T_147 = io_deq_0_valid + io_deq_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_149 = io_deq_2_valid + io_deq_3_valid; // @[Bitwise.scala 48:55]
  wire [4:0] _T_215 = 5'h10 / 3'h4; // @[DispatchQueue.scala 231:85]
  wire [4:0] _T_311 = 5'h10 / 2'h2; // @[DispatchQueue.scala 232:151]
  wire [6:0] _T_408 = 5'h10 * 2'h3; // @[DispatchQueue.scala 233:151]
  wire [6:0] _T_409 = _T_408 / 3'h4; // @[DispatchQueue.scala 233:157]
  wire [6:0] _GEN_1309 = {{2'd0}, _T_134}; // @[DispatchQueue.scala 233:140]
  reg [2:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  SyncDataModuleTemplate_10 dataModule ( // @[DispatchQueue.scala 49:26]
    .clock(dataModule_clock),
    .io_raddr_0(dataModule_io_raddr_0),
    .io_raddr_1(dataModule_io_raddr_1),
    .io_raddr_2(dataModule_io_raddr_2),
    .io_raddr_3(dataModule_io_raddr_3),
    .io_rdata_0_cf_trigger_backendEn_0(dataModule_io_rdata_0_cf_trigger_backendEn_0),
    .io_rdata_0_cf_trigger_backendEn_1(dataModule_io_rdata_0_cf_trigger_backendEn_1),
    .io_rdata_0_cf_trigger_backendHit_0(dataModule_io_rdata_0_cf_trigger_backendHit_0),
    .io_rdata_0_cf_trigger_backendHit_1(dataModule_io_rdata_0_cf_trigger_backendHit_1),
    .io_rdata_0_cf_trigger_backendHit_2(dataModule_io_rdata_0_cf_trigger_backendHit_2),
    .io_rdata_0_cf_trigger_backendHit_3(dataModule_io_rdata_0_cf_trigger_backendHit_3),
    .io_rdata_0_cf_trigger_backendHit_4(dataModule_io_rdata_0_cf_trigger_backendHit_4),
    .io_rdata_0_cf_trigger_backendHit_5(dataModule_io_rdata_0_cf_trigger_backendHit_5),
    .io_rdata_0_cf_pd_isRVC(dataModule_io_rdata_0_cf_pd_isRVC),
    .io_rdata_0_cf_pd_brType(dataModule_io_rdata_0_cf_pd_brType),
    .io_rdata_0_cf_pd_isCall(dataModule_io_rdata_0_cf_pd_isCall),
    .io_rdata_0_cf_pd_isRet(dataModule_io_rdata_0_cf_pd_isRet),
    .io_rdata_0_cf_pred_taken(dataModule_io_rdata_0_cf_pred_taken),
    .io_rdata_0_cf_waitForRobIdx_value(dataModule_io_rdata_0_cf_waitForRobIdx_value),
    .io_rdata_0_cf_loadWaitBit(dataModule_io_rdata_0_cf_loadWaitBit),
    .io_rdata_0_cf_loadWaitStrict(dataModule_io_rdata_0_cf_loadWaitStrict),
    .io_rdata_0_cf_ssid(dataModule_io_rdata_0_cf_ssid),
    .io_rdata_0_cf_ftqPtr_flag(dataModule_io_rdata_0_cf_ftqPtr_flag),
    .io_rdata_0_cf_ftqPtr_value(dataModule_io_rdata_0_cf_ftqPtr_value),
    .io_rdata_0_cf_ftqOffset(dataModule_io_rdata_0_cf_ftqOffset),
    .io_rdata_0_ctrl_srcType_0(dataModule_io_rdata_0_ctrl_srcType_0),
    .io_rdata_0_ctrl_srcType_1(dataModule_io_rdata_0_ctrl_srcType_1),
    .io_rdata_0_ctrl_srcType_2(dataModule_io_rdata_0_ctrl_srcType_2),
    .io_rdata_0_ctrl_fuType(dataModule_io_rdata_0_ctrl_fuType),
    .io_rdata_0_ctrl_fuOpType(dataModule_io_rdata_0_ctrl_fuOpType),
    .io_rdata_0_ctrl_rfWen(dataModule_io_rdata_0_ctrl_rfWen),
    .io_rdata_0_ctrl_fpWen(dataModule_io_rdata_0_ctrl_fpWen),
    .io_rdata_0_ctrl_selImm(dataModule_io_rdata_0_ctrl_selImm),
    .io_rdata_0_ctrl_imm(dataModule_io_rdata_0_ctrl_imm),
    .io_rdata_0_ctrl_fpu_isAddSub(dataModule_io_rdata_0_ctrl_fpu_isAddSub),
    .io_rdata_0_ctrl_fpu_typeTagIn(dataModule_io_rdata_0_ctrl_fpu_typeTagIn),
    .io_rdata_0_ctrl_fpu_typeTagOut(dataModule_io_rdata_0_ctrl_fpu_typeTagOut),
    .io_rdata_0_ctrl_fpu_fromInt(dataModule_io_rdata_0_ctrl_fpu_fromInt),
    .io_rdata_0_ctrl_fpu_wflags(dataModule_io_rdata_0_ctrl_fpu_wflags),
    .io_rdata_0_ctrl_fpu_fpWen(dataModule_io_rdata_0_ctrl_fpu_fpWen),
    .io_rdata_0_ctrl_fpu_fmaCmd(dataModule_io_rdata_0_ctrl_fpu_fmaCmd),
    .io_rdata_0_ctrl_fpu_div(dataModule_io_rdata_0_ctrl_fpu_div),
    .io_rdata_0_ctrl_fpu_sqrt(dataModule_io_rdata_0_ctrl_fpu_sqrt),
    .io_rdata_0_ctrl_fpu_fcvt(dataModule_io_rdata_0_ctrl_fpu_fcvt),
    .io_rdata_0_ctrl_fpu_typ(dataModule_io_rdata_0_ctrl_fpu_typ),
    .io_rdata_0_ctrl_fpu_fmt(dataModule_io_rdata_0_ctrl_fpu_fmt),
    .io_rdata_0_ctrl_fpu_ren3(dataModule_io_rdata_0_ctrl_fpu_ren3),
    .io_rdata_0_ctrl_fpu_rm(dataModule_io_rdata_0_ctrl_fpu_rm),
    .io_rdata_0_psrc_0(dataModule_io_rdata_0_psrc_0),
    .io_rdata_0_psrc_1(dataModule_io_rdata_0_psrc_1),
    .io_rdata_0_psrc_2(dataModule_io_rdata_0_psrc_2),
    .io_rdata_0_pdest(dataModule_io_rdata_0_pdest),
    .io_rdata_0_lqIdx_flag(dataModule_io_rdata_0_lqIdx_flag),
    .io_rdata_0_lqIdx_value(dataModule_io_rdata_0_lqIdx_value),
    .io_rdata_0_sqIdx_flag(dataModule_io_rdata_0_sqIdx_flag),
    .io_rdata_0_sqIdx_value(dataModule_io_rdata_0_sqIdx_value),
    .io_rdata_1_cf_trigger_backendEn_0(dataModule_io_rdata_1_cf_trigger_backendEn_0),
    .io_rdata_1_cf_trigger_backendEn_1(dataModule_io_rdata_1_cf_trigger_backendEn_1),
    .io_rdata_1_cf_trigger_backendHit_0(dataModule_io_rdata_1_cf_trigger_backendHit_0),
    .io_rdata_1_cf_trigger_backendHit_1(dataModule_io_rdata_1_cf_trigger_backendHit_1),
    .io_rdata_1_cf_trigger_backendHit_2(dataModule_io_rdata_1_cf_trigger_backendHit_2),
    .io_rdata_1_cf_trigger_backendHit_3(dataModule_io_rdata_1_cf_trigger_backendHit_3),
    .io_rdata_1_cf_trigger_backendHit_4(dataModule_io_rdata_1_cf_trigger_backendHit_4),
    .io_rdata_1_cf_trigger_backendHit_5(dataModule_io_rdata_1_cf_trigger_backendHit_5),
    .io_rdata_1_cf_pd_isRVC(dataModule_io_rdata_1_cf_pd_isRVC),
    .io_rdata_1_cf_pd_brType(dataModule_io_rdata_1_cf_pd_brType),
    .io_rdata_1_cf_pd_isCall(dataModule_io_rdata_1_cf_pd_isCall),
    .io_rdata_1_cf_pd_isRet(dataModule_io_rdata_1_cf_pd_isRet),
    .io_rdata_1_cf_pred_taken(dataModule_io_rdata_1_cf_pred_taken),
    .io_rdata_1_cf_waitForRobIdx_value(dataModule_io_rdata_1_cf_waitForRobIdx_value),
    .io_rdata_1_cf_loadWaitBit(dataModule_io_rdata_1_cf_loadWaitBit),
    .io_rdata_1_cf_loadWaitStrict(dataModule_io_rdata_1_cf_loadWaitStrict),
    .io_rdata_1_cf_ssid(dataModule_io_rdata_1_cf_ssid),
    .io_rdata_1_cf_ftqPtr_flag(dataModule_io_rdata_1_cf_ftqPtr_flag),
    .io_rdata_1_cf_ftqPtr_value(dataModule_io_rdata_1_cf_ftqPtr_value),
    .io_rdata_1_cf_ftqOffset(dataModule_io_rdata_1_cf_ftqOffset),
    .io_rdata_1_ctrl_srcType_0(dataModule_io_rdata_1_ctrl_srcType_0),
    .io_rdata_1_ctrl_srcType_1(dataModule_io_rdata_1_ctrl_srcType_1),
    .io_rdata_1_ctrl_srcType_2(dataModule_io_rdata_1_ctrl_srcType_2),
    .io_rdata_1_ctrl_fuType(dataModule_io_rdata_1_ctrl_fuType),
    .io_rdata_1_ctrl_fuOpType(dataModule_io_rdata_1_ctrl_fuOpType),
    .io_rdata_1_ctrl_rfWen(dataModule_io_rdata_1_ctrl_rfWen),
    .io_rdata_1_ctrl_fpWen(dataModule_io_rdata_1_ctrl_fpWen),
    .io_rdata_1_ctrl_selImm(dataModule_io_rdata_1_ctrl_selImm),
    .io_rdata_1_ctrl_imm(dataModule_io_rdata_1_ctrl_imm),
    .io_rdata_1_ctrl_fpu_isAddSub(dataModule_io_rdata_1_ctrl_fpu_isAddSub),
    .io_rdata_1_ctrl_fpu_typeTagIn(dataModule_io_rdata_1_ctrl_fpu_typeTagIn),
    .io_rdata_1_ctrl_fpu_typeTagOut(dataModule_io_rdata_1_ctrl_fpu_typeTagOut),
    .io_rdata_1_ctrl_fpu_fromInt(dataModule_io_rdata_1_ctrl_fpu_fromInt),
    .io_rdata_1_ctrl_fpu_wflags(dataModule_io_rdata_1_ctrl_fpu_wflags),
    .io_rdata_1_ctrl_fpu_fpWen(dataModule_io_rdata_1_ctrl_fpu_fpWen),
    .io_rdata_1_ctrl_fpu_fmaCmd(dataModule_io_rdata_1_ctrl_fpu_fmaCmd),
    .io_rdata_1_ctrl_fpu_div(dataModule_io_rdata_1_ctrl_fpu_div),
    .io_rdata_1_ctrl_fpu_sqrt(dataModule_io_rdata_1_ctrl_fpu_sqrt),
    .io_rdata_1_ctrl_fpu_fcvt(dataModule_io_rdata_1_ctrl_fpu_fcvt),
    .io_rdata_1_ctrl_fpu_typ(dataModule_io_rdata_1_ctrl_fpu_typ),
    .io_rdata_1_ctrl_fpu_fmt(dataModule_io_rdata_1_ctrl_fpu_fmt),
    .io_rdata_1_ctrl_fpu_ren3(dataModule_io_rdata_1_ctrl_fpu_ren3),
    .io_rdata_1_ctrl_fpu_rm(dataModule_io_rdata_1_ctrl_fpu_rm),
    .io_rdata_1_psrc_0(dataModule_io_rdata_1_psrc_0),
    .io_rdata_1_psrc_1(dataModule_io_rdata_1_psrc_1),
    .io_rdata_1_psrc_2(dataModule_io_rdata_1_psrc_2),
    .io_rdata_1_pdest(dataModule_io_rdata_1_pdest),
    .io_rdata_1_lqIdx_flag(dataModule_io_rdata_1_lqIdx_flag),
    .io_rdata_1_lqIdx_value(dataModule_io_rdata_1_lqIdx_value),
    .io_rdata_1_sqIdx_flag(dataModule_io_rdata_1_sqIdx_flag),
    .io_rdata_1_sqIdx_value(dataModule_io_rdata_1_sqIdx_value),
    .io_rdata_2_cf_trigger_backendEn_0(dataModule_io_rdata_2_cf_trigger_backendEn_0),
    .io_rdata_2_cf_trigger_backendEn_1(dataModule_io_rdata_2_cf_trigger_backendEn_1),
    .io_rdata_2_cf_trigger_backendHit_0(dataModule_io_rdata_2_cf_trigger_backendHit_0),
    .io_rdata_2_cf_trigger_backendHit_1(dataModule_io_rdata_2_cf_trigger_backendHit_1),
    .io_rdata_2_cf_trigger_backendHit_2(dataModule_io_rdata_2_cf_trigger_backendHit_2),
    .io_rdata_2_cf_trigger_backendHit_3(dataModule_io_rdata_2_cf_trigger_backendHit_3),
    .io_rdata_2_cf_trigger_backendHit_4(dataModule_io_rdata_2_cf_trigger_backendHit_4),
    .io_rdata_2_cf_trigger_backendHit_5(dataModule_io_rdata_2_cf_trigger_backendHit_5),
    .io_rdata_2_cf_pd_isRVC(dataModule_io_rdata_2_cf_pd_isRVC),
    .io_rdata_2_cf_pd_brType(dataModule_io_rdata_2_cf_pd_brType),
    .io_rdata_2_cf_pd_isCall(dataModule_io_rdata_2_cf_pd_isCall),
    .io_rdata_2_cf_pd_isRet(dataModule_io_rdata_2_cf_pd_isRet),
    .io_rdata_2_cf_pred_taken(dataModule_io_rdata_2_cf_pred_taken),
    .io_rdata_2_cf_waitForRobIdx_value(dataModule_io_rdata_2_cf_waitForRobIdx_value),
    .io_rdata_2_cf_loadWaitBit(dataModule_io_rdata_2_cf_loadWaitBit),
    .io_rdata_2_cf_loadWaitStrict(dataModule_io_rdata_2_cf_loadWaitStrict),
    .io_rdata_2_cf_ssid(dataModule_io_rdata_2_cf_ssid),
    .io_rdata_2_cf_ftqPtr_flag(dataModule_io_rdata_2_cf_ftqPtr_flag),
    .io_rdata_2_cf_ftqPtr_value(dataModule_io_rdata_2_cf_ftqPtr_value),
    .io_rdata_2_cf_ftqOffset(dataModule_io_rdata_2_cf_ftqOffset),
    .io_rdata_2_ctrl_srcType_0(dataModule_io_rdata_2_ctrl_srcType_0),
    .io_rdata_2_ctrl_srcType_1(dataModule_io_rdata_2_ctrl_srcType_1),
    .io_rdata_2_ctrl_fuType(dataModule_io_rdata_2_ctrl_fuType),
    .io_rdata_2_ctrl_fuOpType(dataModule_io_rdata_2_ctrl_fuOpType),
    .io_rdata_2_ctrl_rfWen(dataModule_io_rdata_2_ctrl_rfWen),
    .io_rdata_2_ctrl_fpWen(dataModule_io_rdata_2_ctrl_fpWen),
    .io_rdata_2_ctrl_selImm(dataModule_io_rdata_2_ctrl_selImm),
    .io_rdata_2_ctrl_imm(dataModule_io_rdata_2_ctrl_imm),
    .io_rdata_2_ctrl_fpu_isAddSub(dataModule_io_rdata_2_ctrl_fpu_isAddSub),
    .io_rdata_2_ctrl_fpu_typeTagIn(dataModule_io_rdata_2_ctrl_fpu_typeTagIn),
    .io_rdata_2_ctrl_fpu_typeTagOut(dataModule_io_rdata_2_ctrl_fpu_typeTagOut),
    .io_rdata_2_ctrl_fpu_fromInt(dataModule_io_rdata_2_ctrl_fpu_fromInt),
    .io_rdata_2_ctrl_fpu_wflags(dataModule_io_rdata_2_ctrl_fpu_wflags),
    .io_rdata_2_ctrl_fpu_fpWen(dataModule_io_rdata_2_ctrl_fpu_fpWen),
    .io_rdata_2_ctrl_fpu_fmaCmd(dataModule_io_rdata_2_ctrl_fpu_fmaCmd),
    .io_rdata_2_ctrl_fpu_div(dataModule_io_rdata_2_ctrl_fpu_div),
    .io_rdata_2_ctrl_fpu_sqrt(dataModule_io_rdata_2_ctrl_fpu_sqrt),
    .io_rdata_2_ctrl_fpu_fcvt(dataModule_io_rdata_2_ctrl_fpu_fcvt),
    .io_rdata_2_ctrl_fpu_typ(dataModule_io_rdata_2_ctrl_fpu_typ),
    .io_rdata_2_ctrl_fpu_fmt(dataModule_io_rdata_2_ctrl_fpu_fmt),
    .io_rdata_2_ctrl_fpu_ren3(dataModule_io_rdata_2_ctrl_fpu_ren3),
    .io_rdata_2_ctrl_fpu_rm(dataModule_io_rdata_2_ctrl_fpu_rm),
    .io_rdata_2_psrc_0(dataModule_io_rdata_2_psrc_0),
    .io_rdata_2_psrc_1(dataModule_io_rdata_2_psrc_1),
    .io_rdata_2_pdest(dataModule_io_rdata_2_pdest),
    .io_rdata_2_lqIdx_flag(dataModule_io_rdata_2_lqIdx_flag),
    .io_rdata_2_lqIdx_value(dataModule_io_rdata_2_lqIdx_value),
    .io_rdata_2_sqIdx_flag(dataModule_io_rdata_2_sqIdx_flag),
    .io_rdata_2_sqIdx_value(dataModule_io_rdata_2_sqIdx_value),
    .io_rdata_3_cf_trigger_backendEn_0(dataModule_io_rdata_3_cf_trigger_backendEn_0),
    .io_rdata_3_cf_trigger_backendEn_1(dataModule_io_rdata_3_cf_trigger_backendEn_1),
    .io_rdata_3_cf_trigger_backendHit_0(dataModule_io_rdata_3_cf_trigger_backendHit_0),
    .io_rdata_3_cf_trigger_backendHit_1(dataModule_io_rdata_3_cf_trigger_backendHit_1),
    .io_rdata_3_cf_trigger_backendHit_2(dataModule_io_rdata_3_cf_trigger_backendHit_2),
    .io_rdata_3_cf_trigger_backendHit_3(dataModule_io_rdata_3_cf_trigger_backendHit_3),
    .io_rdata_3_cf_trigger_backendHit_4(dataModule_io_rdata_3_cf_trigger_backendHit_4),
    .io_rdata_3_cf_trigger_backendHit_5(dataModule_io_rdata_3_cf_trigger_backendHit_5),
    .io_rdata_3_cf_pd_isRVC(dataModule_io_rdata_3_cf_pd_isRVC),
    .io_rdata_3_cf_pd_brType(dataModule_io_rdata_3_cf_pd_brType),
    .io_rdata_3_cf_pd_isCall(dataModule_io_rdata_3_cf_pd_isCall),
    .io_rdata_3_cf_pd_isRet(dataModule_io_rdata_3_cf_pd_isRet),
    .io_rdata_3_cf_pred_taken(dataModule_io_rdata_3_cf_pred_taken),
    .io_rdata_3_cf_waitForRobIdx_value(dataModule_io_rdata_3_cf_waitForRobIdx_value),
    .io_rdata_3_cf_loadWaitBit(dataModule_io_rdata_3_cf_loadWaitBit),
    .io_rdata_3_cf_loadWaitStrict(dataModule_io_rdata_3_cf_loadWaitStrict),
    .io_rdata_3_cf_ssid(dataModule_io_rdata_3_cf_ssid),
    .io_rdata_3_cf_ftqPtr_flag(dataModule_io_rdata_3_cf_ftqPtr_flag),
    .io_rdata_3_cf_ftqPtr_value(dataModule_io_rdata_3_cf_ftqPtr_value),
    .io_rdata_3_cf_ftqOffset(dataModule_io_rdata_3_cf_ftqOffset),
    .io_rdata_3_ctrl_srcType_0(dataModule_io_rdata_3_ctrl_srcType_0),
    .io_rdata_3_ctrl_srcType_1(dataModule_io_rdata_3_ctrl_srcType_1),
    .io_rdata_3_ctrl_fuType(dataModule_io_rdata_3_ctrl_fuType),
    .io_rdata_3_ctrl_fuOpType(dataModule_io_rdata_3_ctrl_fuOpType),
    .io_rdata_3_ctrl_rfWen(dataModule_io_rdata_3_ctrl_rfWen),
    .io_rdata_3_ctrl_fpWen(dataModule_io_rdata_3_ctrl_fpWen),
    .io_rdata_3_ctrl_selImm(dataModule_io_rdata_3_ctrl_selImm),
    .io_rdata_3_ctrl_imm(dataModule_io_rdata_3_ctrl_imm),
    .io_rdata_3_ctrl_fpu_isAddSub(dataModule_io_rdata_3_ctrl_fpu_isAddSub),
    .io_rdata_3_ctrl_fpu_typeTagIn(dataModule_io_rdata_3_ctrl_fpu_typeTagIn),
    .io_rdata_3_ctrl_fpu_typeTagOut(dataModule_io_rdata_3_ctrl_fpu_typeTagOut),
    .io_rdata_3_ctrl_fpu_fromInt(dataModule_io_rdata_3_ctrl_fpu_fromInt),
    .io_rdata_3_ctrl_fpu_wflags(dataModule_io_rdata_3_ctrl_fpu_wflags),
    .io_rdata_3_ctrl_fpu_fpWen(dataModule_io_rdata_3_ctrl_fpu_fpWen),
    .io_rdata_3_ctrl_fpu_fmaCmd(dataModule_io_rdata_3_ctrl_fpu_fmaCmd),
    .io_rdata_3_ctrl_fpu_div(dataModule_io_rdata_3_ctrl_fpu_div),
    .io_rdata_3_ctrl_fpu_sqrt(dataModule_io_rdata_3_ctrl_fpu_sqrt),
    .io_rdata_3_ctrl_fpu_fcvt(dataModule_io_rdata_3_ctrl_fpu_fcvt),
    .io_rdata_3_ctrl_fpu_typ(dataModule_io_rdata_3_ctrl_fpu_typ),
    .io_rdata_3_ctrl_fpu_fmt(dataModule_io_rdata_3_ctrl_fpu_fmt),
    .io_rdata_3_ctrl_fpu_ren3(dataModule_io_rdata_3_ctrl_fpu_ren3),
    .io_rdata_3_ctrl_fpu_rm(dataModule_io_rdata_3_ctrl_fpu_rm),
    .io_rdata_3_psrc_0(dataModule_io_rdata_3_psrc_0),
    .io_rdata_3_psrc_1(dataModule_io_rdata_3_psrc_1),
    .io_rdata_3_pdest(dataModule_io_rdata_3_pdest),
    .io_rdata_3_lqIdx_flag(dataModule_io_rdata_3_lqIdx_flag),
    .io_rdata_3_lqIdx_value(dataModule_io_rdata_3_lqIdx_value),
    .io_rdata_3_sqIdx_flag(dataModule_io_rdata_3_sqIdx_flag),
    .io_rdata_3_sqIdx_value(dataModule_io_rdata_3_sqIdx_value),
    .io_wen_0(dataModule_io_wen_0),
    .io_wen_1(dataModule_io_wen_1),
    .io_wen_2(dataModule_io_wen_2),
    .io_wen_3(dataModule_io_wen_3),
    .io_waddr_0(dataModule_io_waddr_0),
    .io_waddr_1(dataModule_io_waddr_1),
    .io_waddr_2(dataModule_io_waddr_2),
    .io_waddr_3(dataModule_io_waddr_3),
    .io_wdata_0_cf_trigger_backendEn_0(dataModule_io_wdata_0_cf_trigger_backendEn_0),
    .io_wdata_0_cf_trigger_backendEn_1(dataModule_io_wdata_0_cf_trigger_backendEn_1),
    .io_wdata_0_cf_trigger_backendHit_0(dataModule_io_wdata_0_cf_trigger_backendHit_0),
    .io_wdata_0_cf_trigger_backendHit_1(dataModule_io_wdata_0_cf_trigger_backendHit_1),
    .io_wdata_0_cf_trigger_backendHit_2(dataModule_io_wdata_0_cf_trigger_backendHit_2),
    .io_wdata_0_cf_trigger_backendHit_3(dataModule_io_wdata_0_cf_trigger_backendHit_3),
    .io_wdata_0_cf_trigger_backendHit_4(dataModule_io_wdata_0_cf_trigger_backendHit_4),
    .io_wdata_0_cf_trigger_backendHit_5(dataModule_io_wdata_0_cf_trigger_backendHit_5),
    .io_wdata_0_cf_pd_isRVC(dataModule_io_wdata_0_cf_pd_isRVC),
    .io_wdata_0_cf_pd_brType(dataModule_io_wdata_0_cf_pd_brType),
    .io_wdata_0_cf_pd_isCall(dataModule_io_wdata_0_cf_pd_isCall),
    .io_wdata_0_cf_pd_isRet(dataModule_io_wdata_0_cf_pd_isRet),
    .io_wdata_0_cf_pred_taken(dataModule_io_wdata_0_cf_pred_taken),
    .io_wdata_0_cf_waitForRobIdx_value(dataModule_io_wdata_0_cf_waitForRobIdx_value),
    .io_wdata_0_cf_loadWaitBit(dataModule_io_wdata_0_cf_loadWaitBit),
    .io_wdata_0_cf_loadWaitStrict(dataModule_io_wdata_0_cf_loadWaitStrict),
    .io_wdata_0_cf_ssid(dataModule_io_wdata_0_cf_ssid),
    .io_wdata_0_cf_ftqPtr_flag(dataModule_io_wdata_0_cf_ftqPtr_flag),
    .io_wdata_0_cf_ftqPtr_value(dataModule_io_wdata_0_cf_ftqPtr_value),
    .io_wdata_0_cf_ftqOffset(dataModule_io_wdata_0_cf_ftqOffset),
    .io_wdata_0_ctrl_srcType_0(dataModule_io_wdata_0_ctrl_srcType_0),
    .io_wdata_0_ctrl_srcType_1(dataModule_io_wdata_0_ctrl_srcType_1),
    .io_wdata_0_ctrl_srcType_2(dataModule_io_wdata_0_ctrl_srcType_2),
    .io_wdata_0_ctrl_fuType(dataModule_io_wdata_0_ctrl_fuType),
    .io_wdata_0_ctrl_fuOpType(dataModule_io_wdata_0_ctrl_fuOpType),
    .io_wdata_0_ctrl_rfWen(dataModule_io_wdata_0_ctrl_rfWen),
    .io_wdata_0_ctrl_fpWen(dataModule_io_wdata_0_ctrl_fpWen),
    .io_wdata_0_ctrl_selImm(dataModule_io_wdata_0_ctrl_selImm),
    .io_wdata_0_ctrl_imm(dataModule_io_wdata_0_ctrl_imm),
    .io_wdata_0_ctrl_fpu_isAddSub(dataModule_io_wdata_0_ctrl_fpu_isAddSub),
    .io_wdata_0_ctrl_fpu_typeTagIn(dataModule_io_wdata_0_ctrl_fpu_typeTagIn),
    .io_wdata_0_ctrl_fpu_typeTagOut(dataModule_io_wdata_0_ctrl_fpu_typeTagOut),
    .io_wdata_0_ctrl_fpu_fromInt(dataModule_io_wdata_0_ctrl_fpu_fromInt),
    .io_wdata_0_ctrl_fpu_wflags(dataModule_io_wdata_0_ctrl_fpu_wflags),
    .io_wdata_0_ctrl_fpu_fpWen(dataModule_io_wdata_0_ctrl_fpu_fpWen),
    .io_wdata_0_ctrl_fpu_fmaCmd(dataModule_io_wdata_0_ctrl_fpu_fmaCmd),
    .io_wdata_0_ctrl_fpu_div(dataModule_io_wdata_0_ctrl_fpu_div),
    .io_wdata_0_ctrl_fpu_sqrt(dataModule_io_wdata_0_ctrl_fpu_sqrt),
    .io_wdata_0_ctrl_fpu_fcvt(dataModule_io_wdata_0_ctrl_fpu_fcvt),
    .io_wdata_0_ctrl_fpu_typ(dataModule_io_wdata_0_ctrl_fpu_typ),
    .io_wdata_0_ctrl_fpu_fmt(dataModule_io_wdata_0_ctrl_fpu_fmt),
    .io_wdata_0_ctrl_fpu_ren3(dataModule_io_wdata_0_ctrl_fpu_ren3),
    .io_wdata_0_ctrl_fpu_rm(dataModule_io_wdata_0_ctrl_fpu_rm),
    .io_wdata_0_psrc_0(dataModule_io_wdata_0_psrc_0),
    .io_wdata_0_psrc_1(dataModule_io_wdata_0_psrc_1),
    .io_wdata_0_psrc_2(dataModule_io_wdata_0_psrc_2),
    .io_wdata_0_pdest(dataModule_io_wdata_0_pdest),
    .io_wdata_1_cf_trigger_backendEn_0(dataModule_io_wdata_1_cf_trigger_backendEn_0),
    .io_wdata_1_cf_trigger_backendEn_1(dataModule_io_wdata_1_cf_trigger_backendEn_1),
    .io_wdata_1_cf_trigger_backendHit_0(dataModule_io_wdata_1_cf_trigger_backendHit_0),
    .io_wdata_1_cf_trigger_backendHit_1(dataModule_io_wdata_1_cf_trigger_backendHit_1),
    .io_wdata_1_cf_trigger_backendHit_2(dataModule_io_wdata_1_cf_trigger_backendHit_2),
    .io_wdata_1_cf_trigger_backendHit_3(dataModule_io_wdata_1_cf_trigger_backendHit_3),
    .io_wdata_1_cf_trigger_backendHit_4(dataModule_io_wdata_1_cf_trigger_backendHit_4),
    .io_wdata_1_cf_trigger_backendHit_5(dataModule_io_wdata_1_cf_trigger_backendHit_5),
    .io_wdata_1_cf_pd_isRVC(dataModule_io_wdata_1_cf_pd_isRVC),
    .io_wdata_1_cf_pd_brType(dataModule_io_wdata_1_cf_pd_brType),
    .io_wdata_1_cf_pd_isCall(dataModule_io_wdata_1_cf_pd_isCall),
    .io_wdata_1_cf_pd_isRet(dataModule_io_wdata_1_cf_pd_isRet),
    .io_wdata_1_cf_pred_taken(dataModule_io_wdata_1_cf_pred_taken),
    .io_wdata_1_cf_waitForRobIdx_value(dataModule_io_wdata_1_cf_waitForRobIdx_value),
    .io_wdata_1_cf_loadWaitBit(dataModule_io_wdata_1_cf_loadWaitBit),
    .io_wdata_1_cf_loadWaitStrict(dataModule_io_wdata_1_cf_loadWaitStrict),
    .io_wdata_1_cf_ssid(dataModule_io_wdata_1_cf_ssid),
    .io_wdata_1_cf_ftqPtr_flag(dataModule_io_wdata_1_cf_ftqPtr_flag),
    .io_wdata_1_cf_ftqPtr_value(dataModule_io_wdata_1_cf_ftqPtr_value),
    .io_wdata_1_cf_ftqOffset(dataModule_io_wdata_1_cf_ftqOffset),
    .io_wdata_1_ctrl_srcType_0(dataModule_io_wdata_1_ctrl_srcType_0),
    .io_wdata_1_ctrl_srcType_1(dataModule_io_wdata_1_ctrl_srcType_1),
    .io_wdata_1_ctrl_srcType_2(dataModule_io_wdata_1_ctrl_srcType_2),
    .io_wdata_1_ctrl_fuType(dataModule_io_wdata_1_ctrl_fuType),
    .io_wdata_1_ctrl_fuOpType(dataModule_io_wdata_1_ctrl_fuOpType),
    .io_wdata_1_ctrl_rfWen(dataModule_io_wdata_1_ctrl_rfWen),
    .io_wdata_1_ctrl_fpWen(dataModule_io_wdata_1_ctrl_fpWen),
    .io_wdata_1_ctrl_selImm(dataModule_io_wdata_1_ctrl_selImm),
    .io_wdata_1_ctrl_imm(dataModule_io_wdata_1_ctrl_imm),
    .io_wdata_1_ctrl_fpu_isAddSub(dataModule_io_wdata_1_ctrl_fpu_isAddSub),
    .io_wdata_1_ctrl_fpu_typeTagIn(dataModule_io_wdata_1_ctrl_fpu_typeTagIn),
    .io_wdata_1_ctrl_fpu_typeTagOut(dataModule_io_wdata_1_ctrl_fpu_typeTagOut),
    .io_wdata_1_ctrl_fpu_fromInt(dataModule_io_wdata_1_ctrl_fpu_fromInt),
    .io_wdata_1_ctrl_fpu_wflags(dataModule_io_wdata_1_ctrl_fpu_wflags),
    .io_wdata_1_ctrl_fpu_fpWen(dataModule_io_wdata_1_ctrl_fpu_fpWen),
    .io_wdata_1_ctrl_fpu_fmaCmd(dataModule_io_wdata_1_ctrl_fpu_fmaCmd),
    .io_wdata_1_ctrl_fpu_div(dataModule_io_wdata_1_ctrl_fpu_div),
    .io_wdata_1_ctrl_fpu_sqrt(dataModule_io_wdata_1_ctrl_fpu_sqrt),
    .io_wdata_1_ctrl_fpu_fcvt(dataModule_io_wdata_1_ctrl_fpu_fcvt),
    .io_wdata_1_ctrl_fpu_typ(dataModule_io_wdata_1_ctrl_fpu_typ),
    .io_wdata_1_ctrl_fpu_fmt(dataModule_io_wdata_1_ctrl_fpu_fmt),
    .io_wdata_1_ctrl_fpu_ren3(dataModule_io_wdata_1_ctrl_fpu_ren3),
    .io_wdata_1_ctrl_fpu_rm(dataModule_io_wdata_1_ctrl_fpu_rm),
    .io_wdata_1_psrc_0(dataModule_io_wdata_1_psrc_0),
    .io_wdata_1_psrc_1(dataModule_io_wdata_1_psrc_1),
    .io_wdata_1_psrc_2(dataModule_io_wdata_1_psrc_2),
    .io_wdata_1_pdest(dataModule_io_wdata_1_pdest),
    .io_wdata_2_cf_trigger_backendEn_0(dataModule_io_wdata_2_cf_trigger_backendEn_0),
    .io_wdata_2_cf_trigger_backendEn_1(dataModule_io_wdata_2_cf_trigger_backendEn_1),
    .io_wdata_2_cf_trigger_backendHit_0(dataModule_io_wdata_2_cf_trigger_backendHit_0),
    .io_wdata_2_cf_trigger_backendHit_1(dataModule_io_wdata_2_cf_trigger_backendHit_1),
    .io_wdata_2_cf_trigger_backendHit_2(dataModule_io_wdata_2_cf_trigger_backendHit_2),
    .io_wdata_2_cf_trigger_backendHit_3(dataModule_io_wdata_2_cf_trigger_backendHit_3),
    .io_wdata_2_cf_trigger_backendHit_4(dataModule_io_wdata_2_cf_trigger_backendHit_4),
    .io_wdata_2_cf_trigger_backendHit_5(dataModule_io_wdata_2_cf_trigger_backendHit_5),
    .io_wdata_2_cf_pd_isRVC(dataModule_io_wdata_2_cf_pd_isRVC),
    .io_wdata_2_cf_pd_brType(dataModule_io_wdata_2_cf_pd_brType),
    .io_wdata_2_cf_pd_isCall(dataModule_io_wdata_2_cf_pd_isCall),
    .io_wdata_2_cf_pd_isRet(dataModule_io_wdata_2_cf_pd_isRet),
    .io_wdata_2_cf_pred_taken(dataModule_io_wdata_2_cf_pred_taken),
    .io_wdata_2_cf_waitForRobIdx_value(dataModule_io_wdata_2_cf_waitForRobIdx_value),
    .io_wdata_2_cf_loadWaitBit(dataModule_io_wdata_2_cf_loadWaitBit),
    .io_wdata_2_cf_loadWaitStrict(dataModule_io_wdata_2_cf_loadWaitStrict),
    .io_wdata_2_cf_ssid(dataModule_io_wdata_2_cf_ssid),
    .io_wdata_2_cf_ftqPtr_flag(dataModule_io_wdata_2_cf_ftqPtr_flag),
    .io_wdata_2_cf_ftqPtr_value(dataModule_io_wdata_2_cf_ftqPtr_value),
    .io_wdata_2_cf_ftqOffset(dataModule_io_wdata_2_cf_ftqOffset),
    .io_wdata_2_ctrl_srcType_0(dataModule_io_wdata_2_ctrl_srcType_0),
    .io_wdata_2_ctrl_srcType_1(dataModule_io_wdata_2_ctrl_srcType_1),
    .io_wdata_2_ctrl_srcType_2(dataModule_io_wdata_2_ctrl_srcType_2),
    .io_wdata_2_ctrl_fuType(dataModule_io_wdata_2_ctrl_fuType),
    .io_wdata_2_ctrl_fuOpType(dataModule_io_wdata_2_ctrl_fuOpType),
    .io_wdata_2_ctrl_rfWen(dataModule_io_wdata_2_ctrl_rfWen),
    .io_wdata_2_ctrl_fpWen(dataModule_io_wdata_2_ctrl_fpWen),
    .io_wdata_2_ctrl_selImm(dataModule_io_wdata_2_ctrl_selImm),
    .io_wdata_2_ctrl_imm(dataModule_io_wdata_2_ctrl_imm),
    .io_wdata_2_ctrl_fpu_isAddSub(dataModule_io_wdata_2_ctrl_fpu_isAddSub),
    .io_wdata_2_ctrl_fpu_typeTagIn(dataModule_io_wdata_2_ctrl_fpu_typeTagIn),
    .io_wdata_2_ctrl_fpu_typeTagOut(dataModule_io_wdata_2_ctrl_fpu_typeTagOut),
    .io_wdata_2_ctrl_fpu_fromInt(dataModule_io_wdata_2_ctrl_fpu_fromInt),
    .io_wdata_2_ctrl_fpu_wflags(dataModule_io_wdata_2_ctrl_fpu_wflags),
    .io_wdata_2_ctrl_fpu_fpWen(dataModule_io_wdata_2_ctrl_fpu_fpWen),
    .io_wdata_2_ctrl_fpu_fmaCmd(dataModule_io_wdata_2_ctrl_fpu_fmaCmd),
    .io_wdata_2_ctrl_fpu_div(dataModule_io_wdata_2_ctrl_fpu_div),
    .io_wdata_2_ctrl_fpu_sqrt(dataModule_io_wdata_2_ctrl_fpu_sqrt),
    .io_wdata_2_ctrl_fpu_fcvt(dataModule_io_wdata_2_ctrl_fpu_fcvt),
    .io_wdata_2_ctrl_fpu_typ(dataModule_io_wdata_2_ctrl_fpu_typ),
    .io_wdata_2_ctrl_fpu_fmt(dataModule_io_wdata_2_ctrl_fpu_fmt),
    .io_wdata_2_ctrl_fpu_ren3(dataModule_io_wdata_2_ctrl_fpu_ren3),
    .io_wdata_2_ctrl_fpu_rm(dataModule_io_wdata_2_ctrl_fpu_rm),
    .io_wdata_2_psrc_0(dataModule_io_wdata_2_psrc_0),
    .io_wdata_2_psrc_1(dataModule_io_wdata_2_psrc_1),
    .io_wdata_2_psrc_2(dataModule_io_wdata_2_psrc_2),
    .io_wdata_2_pdest(dataModule_io_wdata_2_pdest),
    .io_wdata_3_cf_trigger_backendEn_0(dataModule_io_wdata_3_cf_trigger_backendEn_0),
    .io_wdata_3_cf_trigger_backendEn_1(dataModule_io_wdata_3_cf_trigger_backendEn_1),
    .io_wdata_3_cf_trigger_backendHit_0(dataModule_io_wdata_3_cf_trigger_backendHit_0),
    .io_wdata_3_cf_trigger_backendHit_1(dataModule_io_wdata_3_cf_trigger_backendHit_1),
    .io_wdata_3_cf_trigger_backendHit_2(dataModule_io_wdata_3_cf_trigger_backendHit_2),
    .io_wdata_3_cf_trigger_backendHit_3(dataModule_io_wdata_3_cf_trigger_backendHit_3),
    .io_wdata_3_cf_trigger_backendHit_4(dataModule_io_wdata_3_cf_trigger_backendHit_4),
    .io_wdata_3_cf_trigger_backendHit_5(dataModule_io_wdata_3_cf_trigger_backendHit_5),
    .io_wdata_3_cf_pd_isRVC(dataModule_io_wdata_3_cf_pd_isRVC),
    .io_wdata_3_cf_pd_brType(dataModule_io_wdata_3_cf_pd_brType),
    .io_wdata_3_cf_pd_isCall(dataModule_io_wdata_3_cf_pd_isCall),
    .io_wdata_3_cf_pd_isRet(dataModule_io_wdata_3_cf_pd_isRet),
    .io_wdata_3_cf_pred_taken(dataModule_io_wdata_3_cf_pred_taken),
    .io_wdata_3_cf_waitForRobIdx_value(dataModule_io_wdata_3_cf_waitForRobIdx_value),
    .io_wdata_3_cf_loadWaitBit(dataModule_io_wdata_3_cf_loadWaitBit),
    .io_wdata_3_cf_loadWaitStrict(dataModule_io_wdata_3_cf_loadWaitStrict),
    .io_wdata_3_cf_ssid(dataModule_io_wdata_3_cf_ssid),
    .io_wdata_3_cf_ftqPtr_flag(dataModule_io_wdata_3_cf_ftqPtr_flag),
    .io_wdata_3_cf_ftqPtr_value(dataModule_io_wdata_3_cf_ftqPtr_value),
    .io_wdata_3_cf_ftqOffset(dataModule_io_wdata_3_cf_ftqOffset),
    .io_wdata_3_ctrl_srcType_0(dataModule_io_wdata_3_ctrl_srcType_0),
    .io_wdata_3_ctrl_srcType_1(dataModule_io_wdata_3_ctrl_srcType_1),
    .io_wdata_3_ctrl_srcType_2(dataModule_io_wdata_3_ctrl_srcType_2),
    .io_wdata_3_ctrl_fuType(dataModule_io_wdata_3_ctrl_fuType),
    .io_wdata_3_ctrl_fuOpType(dataModule_io_wdata_3_ctrl_fuOpType),
    .io_wdata_3_ctrl_rfWen(dataModule_io_wdata_3_ctrl_rfWen),
    .io_wdata_3_ctrl_fpWen(dataModule_io_wdata_3_ctrl_fpWen),
    .io_wdata_3_ctrl_selImm(dataModule_io_wdata_3_ctrl_selImm),
    .io_wdata_3_ctrl_imm(dataModule_io_wdata_3_ctrl_imm),
    .io_wdata_3_ctrl_fpu_isAddSub(dataModule_io_wdata_3_ctrl_fpu_isAddSub),
    .io_wdata_3_ctrl_fpu_typeTagIn(dataModule_io_wdata_3_ctrl_fpu_typeTagIn),
    .io_wdata_3_ctrl_fpu_typeTagOut(dataModule_io_wdata_3_ctrl_fpu_typeTagOut),
    .io_wdata_3_ctrl_fpu_fromInt(dataModule_io_wdata_3_ctrl_fpu_fromInt),
    .io_wdata_3_ctrl_fpu_wflags(dataModule_io_wdata_3_ctrl_fpu_wflags),
    .io_wdata_3_ctrl_fpu_fpWen(dataModule_io_wdata_3_ctrl_fpu_fpWen),
    .io_wdata_3_ctrl_fpu_fmaCmd(dataModule_io_wdata_3_ctrl_fpu_fmaCmd),
    .io_wdata_3_ctrl_fpu_div(dataModule_io_wdata_3_ctrl_fpu_div),
    .io_wdata_3_ctrl_fpu_sqrt(dataModule_io_wdata_3_ctrl_fpu_sqrt),
    .io_wdata_3_ctrl_fpu_fcvt(dataModule_io_wdata_3_ctrl_fpu_fcvt),
    .io_wdata_3_ctrl_fpu_typ(dataModule_io_wdata_3_ctrl_fpu_typ),
    .io_wdata_3_ctrl_fpu_fmt(dataModule_io_wdata_3_ctrl_fpu_fmt),
    .io_wdata_3_ctrl_fpu_ren3(dataModule_io_wdata_3_ctrl_fpu_ren3),
    .io_wdata_3_ctrl_fpu_rm(dataModule_io_wdata_3_ctrl_fpu_rm),
    .io_wdata_3_psrc_0(dataModule_io_wdata_3_psrc_0),
    .io_wdata_3_psrc_1(dataModule_io_wdata_3_psrc_1),
    .io_wdata_3_psrc_2(dataModule_io_wdata_3_psrc_2),
    .io_wdata_3_pdest(dataModule_io_wdata_3_pdest)
  );
  assign io_enq_canAccept = allowEnqueue; // @[DispatchQueue.scala 83:20]
  assign io_deq_0_valid = _GEN_1134 & ~lastCycleMisprediction; // @[DispatchQueue.scala 198:67]
  assign io_deq_0_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_0_cf_trigger_backendEn_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_0_cf_trigger_backendEn_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_0 = dataModule_io_rdata_0_cf_trigger_backendHit_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_1 = dataModule_io_rdata_0_cf_trigger_backendHit_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_2 = dataModule_io_rdata_0_cf_trigger_backendHit_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_3 = dataModule_io_rdata_0_cf_trigger_backendHit_3; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_4 = dataModule_io_rdata_0_cf_trigger_backendHit_4; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_trigger_backendHit_5 = dataModule_io_rdata_0_cf_trigger_backendHit_5; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_pd_isRVC = dataModule_io_rdata_0_cf_pd_isRVC; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_pd_brType = dataModule_io_rdata_0_cf_pd_brType; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_pd_isCall = dataModule_io_rdata_0_cf_pd_isCall; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_pd_isRet = dataModule_io_rdata_0_cf_pd_isRet; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_pred_taken = dataModule_io_rdata_0_cf_pred_taken; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_waitForRobIdx_value = dataModule_io_rdata_0_cf_waitForRobIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_loadWaitBit = dataModule_io_rdata_0_cf_loadWaitBit; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_loadWaitStrict = dataModule_io_rdata_0_cf_loadWaitStrict; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_ssid = dataModule_io_rdata_0_cf_ssid; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_ftqPtr_flag = dataModule_io_rdata_0_cf_ftqPtr_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_ftqPtr_value = dataModule_io_rdata_0_cf_ftqPtr_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_cf_ftqOffset = dataModule_io_rdata_0_cf_ftqOffset; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_srcType_0 = dataModule_io_rdata_0_ctrl_srcType_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_srcType_1 = dataModule_io_rdata_0_ctrl_srcType_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_srcType_2 = dataModule_io_rdata_0_ctrl_srcType_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fuType = dataModule_io_rdata_0_ctrl_fuType; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fuOpType = dataModule_io_rdata_0_ctrl_fuOpType; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_rfWen = dataModule_io_rdata_0_ctrl_rfWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpWen = dataModule_io_rdata_0_ctrl_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_selImm = dataModule_io_rdata_0_ctrl_selImm; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_imm = dataModule_io_rdata_0_ctrl_imm; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_isAddSub = dataModule_io_rdata_0_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_typeTagIn = dataModule_io_rdata_0_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_typeTagOut = dataModule_io_rdata_0_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_fromInt = dataModule_io_rdata_0_ctrl_fpu_fromInt; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_wflags = dataModule_io_rdata_0_ctrl_fpu_wflags; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_fpWen = dataModule_io_rdata_0_ctrl_fpu_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_fmaCmd = dataModule_io_rdata_0_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_div = dataModule_io_rdata_0_ctrl_fpu_div; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_sqrt = dataModule_io_rdata_0_ctrl_fpu_sqrt; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_fcvt = dataModule_io_rdata_0_ctrl_fpu_fcvt; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_typ = dataModule_io_rdata_0_ctrl_fpu_typ; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_fmt = dataModule_io_rdata_0_ctrl_fpu_fmt; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_ren3 = dataModule_io_rdata_0_ctrl_fpu_ren3; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_ctrl_fpu_rm = dataModule_io_rdata_0_ctrl_fpu_rm; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_psrc_0 = dataModule_io_rdata_0_psrc_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_psrc_1 = dataModule_io_rdata_0_psrc_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_psrc_2 = dataModule_io_rdata_0_psrc_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_pdest = dataModule_io_rdata_0_pdest; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_robIdx_flag = 4'hf == headPtr_0_value ? robIdxEntries_15_flag : _GEN_1117; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_0_bits_robIdx_value = 4'hf == headPtr_0_value ? robIdxEntries_15_value : _GEN_1101; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_0_bits_lqIdx_flag = dataModule_io_rdata_0_lqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_lqIdx_value = dataModule_io_rdata_0_lqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_sqIdx_flag = dataModule_io_rdata_0_sqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_0_bits_sqIdx_value = dataModule_io_rdata_0_sqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_valid = _GEN_1054 & ~lastCycleMisprediction; // @[DispatchQueue.scala 198:67]
  assign io_deq_1_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_1_cf_trigger_backendEn_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_1_cf_trigger_backendEn_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_0 = dataModule_io_rdata_1_cf_trigger_backendHit_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_1 = dataModule_io_rdata_1_cf_trigger_backendHit_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_2 = dataModule_io_rdata_1_cf_trigger_backendHit_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_3 = dataModule_io_rdata_1_cf_trigger_backendHit_3; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_4 = dataModule_io_rdata_1_cf_trigger_backendHit_4; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_trigger_backendHit_5 = dataModule_io_rdata_1_cf_trigger_backendHit_5; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_pd_isRVC = dataModule_io_rdata_1_cf_pd_isRVC; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_pd_brType = dataModule_io_rdata_1_cf_pd_brType; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_pd_isCall = dataModule_io_rdata_1_cf_pd_isCall; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_pd_isRet = dataModule_io_rdata_1_cf_pd_isRet; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_pred_taken = dataModule_io_rdata_1_cf_pred_taken; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_waitForRobIdx_value = dataModule_io_rdata_1_cf_waitForRobIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_loadWaitBit = dataModule_io_rdata_1_cf_loadWaitBit; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_loadWaitStrict = dataModule_io_rdata_1_cf_loadWaitStrict; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_ssid = dataModule_io_rdata_1_cf_ssid; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_ftqPtr_flag = dataModule_io_rdata_1_cf_ftqPtr_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_ftqPtr_value = dataModule_io_rdata_1_cf_ftqPtr_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_cf_ftqOffset = dataModule_io_rdata_1_cf_ftqOffset; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_srcType_0 = dataModule_io_rdata_1_ctrl_srcType_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_srcType_1 = dataModule_io_rdata_1_ctrl_srcType_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_srcType_2 = dataModule_io_rdata_1_ctrl_srcType_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fuType = dataModule_io_rdata_1_ctrl_fuType; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fuOpType = dataModule_io_rdata_1_ctrl_fuOpType; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_rfWen = dataModule_io_rdata_1_ctrl_rfWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpWen = dataModule_io_rdata_1_ctrl_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_selImm = dataModule_io_rdata_1_ctrl_selImm; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_imm = dataModule_io_rdata_1_ctrl_imm; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_isAddSub = dataModule_io_rdata_1_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_typeTagIn = dataModule_io_rdata_1_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_typeTagOut = dataModule_io_rdata_1_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_fromInt = dataModule_io_rdata_1_ctrl_fpu_fromInt; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_wflags = dataModule_io_rdata_1_ctrl_fpu_wflags; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_fpWen = dataModule_io_rdata_1_ctrl_fpu_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_fmaCmd = dataModule_io_rdata_1_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_div = dataModule_io_rdata_1_ctrl_fpu_div; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_sqrt = dataModule_io_rdata_1_ctrl_fpu_sqrt; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_fcvt = dataModule_io_rdata_1_ctrl_fpu_fcvt; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_typ = dataModule_io_rdata_1_ctrl_fpu_typ; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_fmt = dataModule_io_rdata_1_ctrl_fpu_fmt; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_ren3 = dataModule_io_rdata_1_ctrl_fpu_ren3; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_ctrl_fpu_rm = dataModule_io_rdata_1_ctrl_fpu_rm; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_psrc_0 = dataModule_io_rdata_1_psrc_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_psrc_1 = dataModule_io_rdata_1_psrc_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_psrc_2 = dataModule_io_rdata_1_psrc_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_pdest = dataModule_io_rdata_1_pdest; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_robIdx_flag = 4'hf == headPtr_1_value ? robIdxEntries_15_flag : _GEN_1165; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_1_bits_robIdx_value = 4'hf == headPtr_1_value ? robIdxEntries_15_value : _GEN_1149; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_1_bits_lqIdx_flag = dataModule_io_rdata_1_lqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_lqIdx_value = dataModule_io_rdata_1_lqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_sqIdx_flag = dataModule_io_rdata_1_sqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_1_bits_sqIdx_value = dataModule_io_rdata_1_sqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_valid = _GEN_1070 & ~lastCycleMisprediction; // @[DispatchQueue.scala 198:67]
  assign io_deq_2_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_2_cf_trigger_backendEn_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_2_cf_trigger_backendEn_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_0 = dataModule_io_rdata_2_cf_trigger_backendHit_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_1 = dataModule_io_rdata_2_cf_trigger_backendHit_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_2 = dataModule_io_rdata_2_cf_trigger_backendHit_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_3 = dataModule_io_rdata_2_cf_trigger_backendHit_3; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_4 = dataModule_io_rdata_2_cf_trigger_backendHit_4; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_trigger_backendHit_5 = dataModule_io_rdata_2_cf_trigger_backendHit_5; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_pd_isRVC = dataModule_io_rdata_2_cf_pd_isRVC; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_pd_brType = dataModule_io_rdata_2_cf_pd_brType; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_pd_isCall = dataModule_io_rdata_2_cf_pd_isCall; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_pd_isRet = dataModule_io_rdata_2_cf_pd_isRet; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_pred_taken = dataModule_io_rdata_2_cf_pred_taken; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_waitForRobIdx_value = dataModule_io_rdata_2_cf_waitForRobIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_loadWaitBit = dataModule_io_rdata_2_cf_loadWaitBit; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_loadWaitStrict = dataModule_io_rdata_2_cf_loadWaitStrict; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_ssid = dataModule_io_rdata_2_cf_ssid; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_ftqPtr_flag = dataModule_io_rdata_2_cf_ftqPtr_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_ftqPtr_value = dataModule_io_rdata_2_cf_ftqPtr_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_cf_ftqOffset = dataModule_io_rdata_2_cf_ftqOffset; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_srcType_0 = dataModule_io_rdata_2_ctrl_srcType_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_srcType_1 = dataModule_io_rdata_2_ctrl_srcType_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fuType = dataModule_io_rdata_2_ctrl_fuType; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fuOpType = dataModule_io_rdata_2_ctrl_fuOpType; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_rfWen = dataModule_io_rdata_2_ctrl_rfWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpWen = dataModule_io_rdata_2_ctrl_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_selImm = dataModule_io_rdata_2_ctrl_selImm; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_imm = dataModule_io_rdata_2_ctrl_imm; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_isAddSub = dataModule_io_rdata_2_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_typeTagIn = dataModule_io_rdata_2_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_typeTagOut = dataModule_io_rdata_2_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_fromInt = dataModule_io_rdata_2_ctrl_fpu_fromInt; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_wflags = dataModule_io_rdata_2_ctrl_fpu_wflags; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_fpWen = dataModule_io_rdata_2_ctrl_fpu_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_fmaCmd = dataModule_io_rdata_2_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_div = dataModule_io_rdata_2_ctrl_fpu_div; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_sqrt = dataModule_io_rdata_2_ctrl_fpu_sqrt; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_fcvt = dataModule_io_rdata_2_ctrl_fpu_fcvt; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_typ = dataModule_io_rdata_2_ctrl_fpu_typ; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_fmt = dataModule_io_rdata_2_ctrl_fpu_fmt; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_ren3 = dataModule_io_rdata_2_ctrl_fpu_ren3; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_ctrl_fpu_rm = dataModule_io_rdata_2_ctrl_fpu_rm; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_psrc_0 = dataModule_io_rdata_2_psrc_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_psrc_1 = dataModule_io_rdata_2_psrc_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_pdest = dataModule_io_rdata_2_pdest; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_robIdx_flag = 4'hf == headPtr_2_value ? robIdxEntries_15_flag : _GEN_1197; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_2_bits_robIdx_value = 4'hf == headPtr_2_value ? robIdxEntries_15_value : _GEN_1181; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_2_bits_lqIdx_flag = dataModule_io_rdata_2_lqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_lqIdx_value = dataModule_io_rdata_2_lqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_sqIdx_flag = dataModule_io_rdata_2_sqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_2_bits_sqIdx_value = dataModule_io_rdata_2_sqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_valid = _GEN_1086 & ~lastCycleMisprediction; // @[DispatchQueue.scala 198:67]
  assign io_deq_3_bits_cf_trigger_backendEn_0 = dataModule_io_rdata_3_cf_trigger_backendEn_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendEn_1 = dataModule_io_rdata_3_cf_trigger_backendEn_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_0 = dataModule_io_rdata_3_cf_trigger_backendHit_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_1 = dataModule_io_rdata_3_cf_trigger_backendHit_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_2 = dataModule_io_rdata_3_cf_trigger_backendHit_2; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_3 = dataModule_io_rdata_3_cf_trigger_backendHit_3; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_4 = dataModule_io_rdata_3_cf_trigger_backendHit_4; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_trigger_backendHit_5 = dataModule_io_rdata_3_cf_trigger_backendHit_5; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_pd_isRVC = dataModule_io_rdata_3_cf_pd_isRVC; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_pd_brType = dataModule_io_rdata_3_cf_pd_brType; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_pd_isCall = dataModule_io_rdata_3_cf_pd_isCall; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_pd_isRet = dataModule_io_rdata_3_cf_pd_isRet; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_pred_taken = dataModule_io_rdata_3_cf_pred_taken; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_waitForRobIdx_value = dataModule_io_rdata_3_cf_waitForRobIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_loadWaitBit = dataModule_io_rdata_3_cf_loadWaitBit; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_loadWaitStrict = dataModule_io_rdata_3_cf_loadWaitStrict; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_ssid = dataModule_io_rdata_3_cf_ssid; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_ftqPtr_flag = dataModule_io_rdata_3_cf_ftqPtr_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_ftqPtr_value = dataModule_io_rdata_3_cf_ftqPtr_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_cf_ftqOffset = dataModule_io_rdata_3_cf_ftqOffset; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_srcType_0 = dataModule_io_rdata_3_ctrl_srcType_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_srcType_1 = dataModule_io_rdata_3_ctrl_srcType_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fuType = dataModule_io_rdata_3_ctrl_fuType; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fuOpType = dataModule_io_rdata_3_ctrl_fuOpType; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_rfWen = dataModule_io_rdata_3_ctrl_rfWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpWen = dataModule_io_rdata_3_ctrl_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_selImm = dataModule_io_rdata_3_ctrl_selImm; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_imm = dataModule_io_rdata_3_ctrl_imm; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_isAddSub = dataModule_io_rdata_3_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_typeTagIn = dataModule_io_rdata_3_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_typeTagOut = dataModule_io_rdata_3_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_fromInt = dataModule_io_rdata_3_ctrl_fpu_fromInt; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_wflags = dataModule_io_rdata_3_ctrl_fpu_wflags; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_fpWen = dataModule_io_rdata_3_ctrl_fpu_fpWen; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_fmaCmd = dataModule_io_rdata_3_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_div = dataModule_io_rdata_3_ctrl_fpu_div; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_sqrt = dataModule_io_rdata_3_ctrl_fpu_sqrt; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_fcvt = dataModule_io_rdata_3_ctrl_fpu_fcvt; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_typ = dataModule_io_rdata_3_ctrl_fpu_typ; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_fmt = dataModule_io_rdata_3_ctrl_fpu_fmt; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_ren3 = dataModule_io_rdata_3_ctrl_fpu_ren3; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_ctrl_fpu_rm = dataModule_io_rdata_3_ctrl_fpu_rm; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_psrc_0 = dataModule_io_rdata_3_psrc_0; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_psrc_1 = dataModule_io_rdata_3_psrc_1; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_pdest = dataModule_io_rdata_3_pdest; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_robIdx_flag = 4'hf == headPtr_3_value ? robIdxEntries_15_flag : _GEN_1229; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_3_bits_robIdx_value = 4'hf == headPtr_3_value ? robIdxEntries_15_value : _GEN_1213; // @[DispatchQueue.scala 195:{27,27}]
  assign io_deq_3_bits_lqIdx_flag = dataModule_io_rdata_3_lqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_lqIdx_value = dataModule_io_rdata_3_lqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_sqIdx_flag = dataModule_io_rdata_3_sqIdx_flag; // @[DispatchQueue.scala 194:20]
  assign io_deq_3_bits_sqIdx_value = dataModule_io_rdata_3_sqIdx_value; // @[DispatchQueue.scala 194:20]
  assign io_perf_0_value = {{3'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{3'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign dataModule_clock = clock;
  assign dataModule_io_raddr_0 = io_redirect_valid ? headPtr_0_value : nextHeadPtr_0_new_ptr_value; // @[DispatchQueue.scala 142:26]
  assign dataModule_io_raddr_1 = io_redirect_valid ? headPtr_1_value : nextHeadPtr_1_new_ptr_value; // @[DispatchQueue.scala 142:26]
  assign dataModule_io_raddr_2 = io_redirect_valid ? headPtr_2_value : nextHeadPtr_2_new_ptr_value; // @[DispatchQueue.scala 142:26]
  assign dataModule_io_raddr_3 = io_redirect_valid ? headPtr_3_value : nextHeadPtr_3_new_ptr_value; // @[DispatchQueue.scala 142:26]
  assign dataModule_io_wen_0 = io_enq_req_0_valid & canActualEnqueue; // @[DispatchQueue.scala 88:30]
  assign dataModule_io_wen_1 = io_enq_req_1_valid & canActualEnqueue; // @[DispatchQueue.scala 88:30]
  assign dataModule_io_wen_2 = io_enq_req_2_valid & canActualEnqueue; // @[DispatchQueue.scala 88:30]
  assign dataModule_io_wen_3 = io_enq_req_3_valid & canActualEnqueue; // @[DispatchQueue.scala 88:30]
  assign dataModule_io_waddr_0 = tailPtr_0_value; // @[DispatchQueue.scala 88:51 91:30]
  assign dataModule_io_waddr_1 = 2'h3 == _GEN_1247 ? tailPtr_3_value : _GEN_222; // @[DispatchQueue.scala 91:{30,30}]
  assign dataModule_io_waddr_2 = 2'h3 == sel ? tailPtr_3_value : _GEN_447; // @[DispatchQueue.scala 91:{30,30}]
  assign dataModule_io_waddr_3 = 2'h3 == sel_1 ? tailPtr_3_value : _GEN_672; // @[DispatchQueue.scala 91:{30,30}]
  assign dataModule_io_wdata_0_cf_trigger_backendEn_0 = io_enq_req_0_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendEn_1 = io_enq_req_0_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_0 = io_enq_req_0_bits_cf_trigger_backendHit_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_1 = io_enq_req_0_bits_cf_trigger_backendHit_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_2 = io_enq_req_0_bits_cf_trigger_backendHit_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_3 = io_enq_req_0_bits_cf_trigger_backendHit_3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_4 = io_enq_req_0_bits_cf_trigger_backendHit_4; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_trigger_backendHit_5 = io_enq_req_0_bits_cf_trigger_backendHit_5; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_pd_isRVC = io_enq_req_0_bits_cf_pd_isRVC; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_pd_brType = io_enq_req_0_bits_cf_pd_brType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_pd_isCall = io_enq_req_0_bits_cf_pd_isCall; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_pd_isRet = io_enq_req_0_bits_cf_pd_isRet; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_pred_taken = io_enq_req_0_bits_cf_pred_taken; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_waitForRobIdx_value = io_enq_req_0_bits_cf_waitForRobIdx_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_loadWaitBit = io_enq_req_0_bits_cf_loadWaitBit; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_loadWaitStrict = io_enq_req_0_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_ssid = io_enq_req_0_bits_cf_ssid; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_ftqPtr_flag = io_enq_req_0_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_ftqPtr_value = io_enq_req_0_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_cf_ftqOffset = io_enq_req_0_bits_cf_ftqOffset; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_srcType_0 = io_enq_req_0_bits_ctrl_srcType_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_srcType_1 = io_enq_req_0_bits_ctrl_srcType_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_srcType_2 = io_enq_req_0_bits_ctrl_srcType_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fuType = io_enq_req_0_bits_ctrl_fuType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fuOpType = io_enq_req_0_bits_ctrl_fuOpType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_rfWen = io_enq_req_0_bits_ctrl_rfWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpWen = io_enq_req_0_bits_ctrl_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_selImm = io_enq_req_0_bits_ctrl_selImm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_imm = io_enq_req_0_bits_ctrl_imm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_isAddSub = io_enq_req_0_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_typeTagIn = io_enq_req_0_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_typeTagOut = io_enq_req_0_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_fromInt = io_enq_req_0_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_wflags = io_enq_req_0_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_fpWen = io_enq_req_0_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_fmaCmd = io_enq_req_0_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_div = io_enq_req_0_bits_ctrl_fpu_div; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_sqrt = io_enq_req_0_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_fcvt = io_enq_req_0_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_typ = io_enq_req_0_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_fmt = io_enq_req_0_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_ren3 = io_enq_req_0_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_ctrl_fpu_rm = io_enq_req_0_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_psrc_0 = io_enq_req_0_bits_psrc_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_psrc_1 = io_enq_req_0_bits_psrc_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_psrc_2 = io_enq_req_0_bits_psrc_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_0_pdest = io_enq_req_0_bits_pdest; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendEn_0 = io_enq_req_1_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendEn_1 = io_enq_req_1_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_0 = io_enq_req_1_bits_cf_trigger_backendHit_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_1 = io_enq_req_1_bits_cf_trigger_backendHit_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_2 = io_enq_req_1_bits_cf_trigger_backendHit_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_3 = io_enq_req_1_bits_cf_trigger_backendHit_3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_4 = io_enq_req_1_bits_cf_trigger_backendHit_4; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_trigger_backendHit_5 = io_enq_req_1_bits_cf_trigger_backendHit_5; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_pd_isRVC = io_enq_req_1_bits_cf_pd_isRVC; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_pd_brType = io_enq_req_1_bits_cf_pd_brType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_pd_isCall = io_enq_req_1_bits_cf_pd_isCall; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_pd_isRet = io_enq_req_1_bits_cf_pd_isRet; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_pred_taken = io_enq_req_1_bits_cf_pred_taken; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_waitForRobIdx_value = io_enq_req_1_bits_cf_waitForRobIdx_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_loadWaitBit = io_enq_req_1_bits_cf_loadWaitBit; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_loadWaitStrict = io_enq_req_1_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_ssid = io_enq_req_1_bits_cf_ssid; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_ftqPtr_flag = io_enq_req_1_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_ftqPtr_value = io_enq_req_1_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_cf_ftqOffset = io_enq_req_1_bits_cf_ftqOffset; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_srcType_0 = io_enq_req_1_bits_ctrl_srcType_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_srcType_1 = io_enq_req_1_bits_ctrl_srcType_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_srcType_2 = io_enq_req_1_bits_ctrl_srcType_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fuType = io_enq_req_1_bits_ctrl_fuType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fuOpType = io_enq_req_1_bits_ctrl_fuOpType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_rfWen = io_enq_req_1_bits_ctrl_rfWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpWen = io_enq_req_1_bits_ctrl_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_selImm = io_enq_req_1_bits_ctrl_selImm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_imm = io_enq_req_1_bits_ctrl_imm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_isAddSub = io_enq_req_1_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_typeTagIn = io_enq_req_1_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_typeTagOut = io_enq_req_1_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_fromInt = io_enq_req_1_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_wflags = io_enq_req_1_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_fpWen = io_enq_req_1_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_fmaCmd = io_enq_req_1_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_div = io_enq_req_1_bits_ctrl_fpu_div; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_sqrt = io_enq_req_1_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_fcvt = io_enq_req_1_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_typ = io_enq_req_1_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_fmt = io_enq_req_1_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_ren3 = io_enq_req_1_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_ctrl_fpu_rm = io_enq_req_1_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_psrc_0 = io_enq_req_1_bits_psrc_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_psrc_1 = io_enq_req_1_bits_psrc_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_psrc_2 = io_enq_req_1_bits_psrc_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_1_pdest = io_enq_req_1_bits_pdest; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendEn_0 = io_enq_req_2_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendEn_1 = io_enq_req_2_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_0 = io_enq_req_2_bits_cf_trigger_backendHit_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_1 = io_enq_req_2_bits_cf_trigger_backendHit_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_2 = io_enq_req_2_bits_cf_trigger_backendHit_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_3 = io_enq_req_2_bits_cf_trigger_backendHit_3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_4 = io_enq_req_2_bits_cf_trigger_backendHit_4; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_trigger_backendHit_5 = io_enq_req_2_bits_cf_trigger_backendHit_5; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_pd_isRVC = io_enq_req_2_bits_cf_pd_isRVC; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_pd_brType = io_enq_req_2_bits_cf_pd_brType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_pd_isCall = io_enq_req_2_bits_cf_pd_isCall; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_pd_isRet = io_enq_req_2_bits_cf_pd_isRet; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_pred_taken = io_enq_req_2_bits_cf_pred_taken; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_waitForRobIdx_value = io_enq_req_2_bits_cf_waitForRobIdx_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_loadWaitBit = io_enq_req_2_bits_cf_loadWaitBit; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_loadWaitStrict = io_enq_req_2_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_ssid = io_enq_req_2_bits_cf_ssid; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_ftqPtr_flag = io_enq_req_2_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_ftqPtr_value = io_enq_req_2_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_cf_ftqOffset = io_enq_req_2_bits_cf_ftqOffset; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_srcType_0 = io_enq_req_2_bits_ctrl_srcType_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_srcType_1 = io_enq_req_2_bits_ctrl_srcType_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_srcType_2 = io_enq_req_2_bits_ctrl_srcType_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fuType = io_enq_req_2_bits_ctrl_fuType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fuOpType = io_enq_req_2_bits_ctrl_fuOpType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_rfWen = io_enq_req_2_bits_ctrl_rfWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpWen = io_enq_req_2_bits_ctrl_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_selImm = io_enq_req_2_bits_ctrl_selImm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_imm = io_enq_req_2_bits_ctrl_imm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_isAddSub = io_enq_req_2_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_typeTagIn = io_enq_req_2_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_typeTagOut = io_enq_req_2_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_fromInt = io_enq_req_2_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_wflags = io_enq_req_2_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_fpWen = io_enq_req_2_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_fmaCmd = io_enq_req_2_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_div = io_enq_req_2_bits_ctrl_fpu_div; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_sqrt = io_enq_req_2_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_fcvt = io_enq_req_2_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_typ = io_enq_req_2_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_fmt = io_enq_req_2_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_ren3 = io_enq_req_2_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_ctrl_fpu_rm = io_enq_req_2_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_psrc_0 = io_enq_req_2_bits_psrc_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_psrc_1 = io_enq_req_2_bits_psrc_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_psrc_2 = io_enq_req_2_bits_psrc_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_2_pdest = io_enq_req_2_bits_pdest; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendEn_0 = io_enq_req_3_bits_cf_trigger_backendEn_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendEn_1 = io_enq_req_3_bits_cf_trigger_backendEn_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_0 = io_enq_req_3_bits_cf_trigger_backendHit_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_1 = io_enq_req_3_bits_cf_trigger_backendHit_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_2 = io_enq_req_3_bits_cf_trigger_backendHit_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_3 = io_enq_req_3_bits_cf_trigger_backendHit_3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_4 = io_enq_req_3_bits_cf_trigger_backendHit_4; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_trigger_backendHit_5 = io_enq_req_3_bits_cf_trigger_backendHit_5; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_pd_isRVC = io_enq_req_3_bits_cf_pd_isRVC; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_pd_brType = io_enq_req_3_bits_cf_pd_brType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_pd_isCall = io_enq_req_3_bits_cf_pd_isCall; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_pd_isRet = io_enq_req_3_bits_cf_pd_isRet; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_pred_taken = io_enq_req_3_bits_cf_pred_taken; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_waitForRobIdx_value = io_enq_req_3_bits_cf_waitForRobIdx_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_loadWaitBit = io_enq_req_3_bits_cf_loadWaitBit; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_loadWaitStrict = io_enq_req_3_bits_cf_loadWaitStrict; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_ssid = io_enq_req_3_bits_cf_ssid; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_ftqPtr_flag = io_enq_req_3_bits_cf_ftqPtr_flag; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_ftqPtr_value = io_enq_req_3_bits_cf_ftqPtr_value; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_cf_ftqOffset = io_enq_req_3_bits_cf_ftqOffset; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_srcType_0 = io_enq_req_3_bits_ctrl_srcType_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_srcType_1 = io_enq_req_3_bits_ctrl_srcType_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_srcType_2 = io_enq_req_3_bits_ctrl_srcType_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fuType = io_enq_req_3_bits_ctrl_fuType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fuOpType = io_enq_req_3_bits_ctrl_fuOpType; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_rfWen = io_enq_req_3_bits_ctrl_rfWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpWen = io_enq_req_3_bits_ctrl_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_selImm = io_enq_req_3_bits_ctrl_selImm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_imm = io_enq_req_3_bits_ctrl_imm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_isAddSub = io_enq_req_3_bits_ctrl_fpu_isAddSub; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_typeTagIn = io_enq_req_3_bits_ctrl_fpu_typeTagIn; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_typeTagOut = io_enq_req_3_bits_ctrl_fpu_typeTagOut; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_fromInt = io_enq_req_3_bits_ctrl_fpu_fromInt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_wflags = io_enq_req_3_bits_ctrl_fpu_wflags; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_fpWen = io_enq_req_3_bits_ctrl_fpu_fpWen; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_fmaCmd = io_enq_req_3_bits_ctrl_fpu_fmaCmd; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_div = io_enq_req_3_bits_ctrl_fpu_div; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_sqrt = io_enq_req_3_bits_ctrl_fpu_sqrt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_fcvt = io_enq_req_3_bits_ctrl_fpu_fcvt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_typ = io_enq_req_3_bits_ctrl_fpu_typ; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_fmt = io_enq_req_3_bits_ctrl_fpu_fmt; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_ren3 = io_enq_req_3_bits_ctrl_fpu_ren3; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_ctrl_fpu_rm = io_enq_req_3_bits_ctrl_fpu_rm; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_psrc_0 = io_enq_req_3_bits_psrc_0; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_psrc_1 = io_enq_req_3_bits_psrc_1; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_psrc_2 = io_enq_req_3_bits_psrc_2; // @[DispatchQueue.scala 86:{33,33}]
  assign dataModule_io_wdata_3_pdest = io_enq_req_3_bits_pdest; // @[DispatchQueue.scala 86:{33,33}]
  always @(posedge clock) begin
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h0 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_0_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_0_flag <= _GEN_515;
      end
    end else begin
      robIdxEntries_0_flag <= _GEN_515;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h0 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_0_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_0_value <= _GEN_499;
      end
    end else begin
      robIdxEntries_0_value <= _GEN_499;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h1 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_1_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_1_flag <= _GEN_516;
      end
    end else begin
      robIdxEntries_1_flag <= _GEN_516;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h1 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_1_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_1_value <= _GEN_500;
      end
    end else begin
      robIdxEntries_1_value <= _GEN_500;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h2 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_2_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_2_flag <= _GEN_517;
      end
    end else begin
      robIdxEntries_2_flag <= _GEN_517;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h2 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_2_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_2_value <= _GEN_501;
      end
    end else begin
      robIdxEntries_2_value <= _GEN_501;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h3 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_3_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_3_flag <= _GEN_518;
      end
    end else begin
      robIdxEntries_3_flag <= _GEN_518;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h3 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_3_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_3_value <= _GEN_502;
      end
    end else begin
      robIdxEntries_3_value <= _GEN_502;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h4 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_4_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_4_flag <= _GEN_519;
      end
    end else begin
      robIdxEntries_4_flag <= _GEN_519;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h4 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_4_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_4_value <= _GEN_503;
      end
    end else begin
      robIdxEntries_4_value <= _GEN_503;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h5 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_5_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_5_flag <= _GEN_520;
      end
    end else begin
      robIdxEntries_5_flag <= _GEN_520;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h5 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_5_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_5_value <= _GEN_504;
      end
    end else begin
      robIdxEntries_5_value <= _GEN_504;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h6 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_6_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_6_flag <= _GEN_521;
      end
    end else begin
      robIdxEntries_6_flag <= _GEN_521;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h6 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_6_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_6_value <= _GEN_505;
      end
    end else begin
      robIdxEntries_6_value <= _GEN_505;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h7 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_7_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_7_flag <= _GEN_522;
      end
    end else begin
      robIdxEntries_7_flag <= _GEN_522;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h7 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_7_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_7_value <= _GEN_506;
      end
    end else begin
      robIdxEntries_7_value <= _GEN_506;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h8 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_8_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_8_flag <= _GEN_523;
      end
    end else begin
      robIdxEntries_8_flag <= _GEN_523;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h8 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_8_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_8_value <= _GEN_507;
      end
    end else begin
      robIdxEntries_8_value <= _GEN_507;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h9 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_9_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_9_flag <= _GEN_524;
      end
    end else begin
      robIdxEntries_9_flag <= _GEN_524;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'h9 == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_9_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_9_value <= _GEN_508;
      end
    end else begin
      robIdxEntries_9_value <= _GEN_508;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'ha == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_10_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_10_flag <= _GEN_525;
      end
    end else begin
      robIdxEntries_10_flag <= _GEN_525;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'ha == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_10_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_10_value <= _GEN_509;
      end
    end else begin
      robIdxEntries_10_value <= _GEN_509;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hb == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_11_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_11_flag <= _GEN_526;
      end
    end else begin
      robIdxEntries_11_flag <= _GEN_526;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hb == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_11_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_11_value <= _GEN_510;
      end
    end else begin
      robIdxEntries_11_value <= _GEN_510;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hc == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_12_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_12_flag <= _GEN_527;
      end
    end else begin
      robIdxEntries_12_flag <= _GEN_527;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hc == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_12_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_12_value <= _GEN_511;
      end
    end else begin
      robIdxEntries_12_value <= _GEN_511;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hd == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_13_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_13_flag <= _GEN_528;
      end
    end else begin
      robIdxEntries_13_flag <= _GEN_528;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hd == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_13_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_13_value <= _GEN_512;
      end
    end else begin
      robIdxEntries_13_value <= _GEN_512;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'he == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_14_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_14_flag <= _GEN_529;
      end
    end else begin
      robIdxEntries_14_flag <= _GEN_529;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'he == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_14_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_14_value <= _GEN_513;
      end
    end else begin
      robIdxEntries_14_value <= _GEN_513;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hf == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_15_flag <= io_enq_req_3_bits_robIdx_flag; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_15_flag <= _GEN_530;
      end
    end else begin
      robIdxEntries_15_flag <= _GEN_530;
    end
    if (io_enq_req_3_valid & canActualEnqueue) begin // @[DispatchQueue.scala 88:51]
      if (4'hf == _GEN_673) begin // @[DispatchQueue.scala 92:41]
        robIdxEntries_15_value <= io_enq_req_3_bits_robIdx_value; // @[DispatchQueue.scala 92:41]
      end else begin
        robIdxEntries_15_value <= _GEN_514;
      end
    end else begin
      robIdxEntries_15_value <= _GEN_514;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_0 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_0) begin // @[DispatchQueue.scala 113:25]
      stateEntries_0 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h0 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_0 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_0 <= _GEN_975;
      end
    end else begin
      stateEntries_0 <= _GEN_975;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_1 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_1) begin // @[DispatchQueue.scala 113:25]
      stateEntries_1 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h1 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_1 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_1 <= _GEN_976;
      end
    end else begin
      stateEntries_1 <= _GEN_976;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_2 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_2) begin // @[DispatchQueue.scala 113:25]
      stateEntries_2 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h2 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_2 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_2 <= _GEN_977;
      end
    end else begin
      stateEntries_2 <= _GEN_977;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_3 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_3) begin // @[DispatchQueue.scala 113:25]
      stateEntries_3 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h3 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_3 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_3 <= _GEN_978;
      end
    end else begin
      stateEntries_3 <= _GEN_978;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_4 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_4) begin // @[DispatchQueue.scala 113:25]
      stateEntries_4 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h4 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_4 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_4 <= _GEN_979;
      end
    end else begin
      stateEntries_4 <= _GEN_979;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_5 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_5) begin // @[DispatchQueue.scala 113:25]
      stateEntries_5 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h5 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_5 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_5 <= _GEN_980;
      end
    end else begin
      stateEntries_5 <= _GEN_980;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_6 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_6) begin // @[DispatchQueue.scala 113:25]
      stateEntries_6 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h6 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_6 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_6 <= _GEN_981;
      end
    end else begin
      stateEntries_6 <= _GEN_981;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_7 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_7) begin // @[DispatchQueue.scala 113:25]
      stateEntries_7 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h7 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_7 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_7 <= _GEN_982;
      end
    end else begin
      stateEntries_7 <= _GEN_982;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_8 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_8) begin // @[DispatchQueue.scala 113:25]
      stateEntries_8 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h8 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_8 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_8 <= _GEN_983;
      end
    end else begin
      stateEntries_8 <= _GEN_983;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_9 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_9) begin // @[DispatchQueue.scala 113:25]
      stateEntries_9 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'h9 == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_9 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_9 <= _GEN_984;
      end
    end else begin
      stateEntries_9 <= _GEN_984;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_10 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_10) begin // @[DispatchQueue.scala 113:25]
      stateEntries_10 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'ha == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_10 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_10 <= _GEN_985;
      end
    end else begin
      stateEntries_10 <= _GEN_985;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_11 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_11) begin // @[DispatchQueue.scala 113:25]
      stateEntries_11 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'hb == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_11 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_11 <= _GEN_986;
      end
    end else begin
      stateEntries_11 <= _GEN_986;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_12 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_12) begin // @[DispatchQueue.scala 113:25]
      stateEntries_12 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'hc == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_12 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_12 <= _GEN_987;
      end
    end else begin
      stateEntries_12 <= _GEN_987;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_13 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_13) begin // @[DispatchQueue.scala 113:25]
      stateEntries_13 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'hd == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_13 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_13 <= _GEN_988;
      end
    end else begin
      stateEntries_13 <= _GEN_988;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_14 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_14) begin // @[DispatchQueue.scala 113:25]
      stateEntries_14 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'he == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_14 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_14 <= _GEN_989;
      end
    end else begin
      stateEntries_14 <= _GEN_989;
    end
    if (reset) begin // @[DispatchQueue.scala 52:29]
      stateEntries_15 <= 1'h0; // @[DispatchQueue.scala 52:29]
    end else if (needCancel_15) begin // @[DispatchQueue.scala 113:25]
      stateEntries_15 <= 1'h0; // @[DispatchQueue.scala 114:23]
    end else if (_T_23 & _canActualEnqueue_T) begin // @[DispatchQueue.scala 101:50]
      if (4'hf == headPtr_3_value) begin // @[DispatchQueue.scala 102:38]
        stateEntries_15 <= 1'h0; // @[DispatchQueue.scala 102:38]
      end else begin
        stateEntries_15 <= _GEN_990;
      end
    end else begin
      stateEntries_15 <= _GEN_990;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_0_flag <= 1'h0; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_0_flag <= nextHeadPtr_0_new_ptr_flag;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_0_value <= 4'h0; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_0_value <= nextHeadPtr_0_new_ptr_value;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_1_flag <= 1'h0; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_1_flag <= nextHeadPtr_1_new_ptr_flag;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_1_value <= 4'h1; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_1_value <= nextHeadPtr_1_new_ptr_value;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_2_flag <= 1'h0; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_2_flag <= nextHeadPtr_2_new_ptr_flag;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_2_value <= 4'h2; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_2_value <= nextHeadPtr_2_new_ptr_value;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_3_flag <= 1'h0; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_3_flag <= nextHeadPtr_3_new_ptr_flag;
    end
    if (reset) begin // @[DispatchQueue.scala 57:24]
      headPtr_3_value <= 4'h3; // @[DispatchQueue.scala 57:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 142:26]
      headPtr_3_value <= nextHeadPtr_3_new_ptr_value;
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_0_flag <= 1'h0; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 163:20]
      if (lastCycleMisprediction) begin // @[DispatchQueue.scala 165:8]
        if (isTrueEmpty) begin // @[DispatchQueue.scala 166:10]
          tailPtr_0_flag <= headPtr_0_flag;
        end else begin
          tailPtr_0_flag <= walkedTailPtr_flag;
        end
      end else begin
        tailPtr_0_flag <= tailPtr_0_new_ptr_flag;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_0_value <= 4'h0; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 163:20]
      if (lastCycleMisprediction) begin // @[DispatchQueue.scala 165:8]
        if (isTrueEmpty) begin // @[DispatchQueue.scala 166:10]
          tailPtr_0_value <= headPtr_0_value;
        end else begin
          tailPtr_0_value <= walkedTailPtr_value;
        end
      end else begin
        tailPtr_0_value <= tailPtr_0_new_ptr_value;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_1_flag <= 1'h0; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_1_flag <= tailPtr_1_new_ptr_flag;
      end else begin
        tailPtr_1_flag <= tailPtr_1_new_ptr_1_flag;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_1_value <= 4'h1; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_1_value <= tailPtr_1_new_ptr_value;
      end else begin
        tailPtr_1_value <= tailPtr_1_new_ptr_1_value;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_2_flag <= 1'h0; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_2_flag <= tailPtr_2_new_ptr_flag;
      end else begin
        tailPtr_2_flag <= tailPtr_2_new_ptr_1_flag;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_2_value <= 4'h2; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_2_value <= tailPtr_2_new_ptr_value;
      end else begin
        tailPtr_2_value <= tailPtr_2_new_ptr_1_value;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_3_flag <= 1'h0; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_3_flag <= tailPtr_3_new_ptr_flag;
      end else begin
        tailPtr_3_flag <= tailPtr_3_new_ptr_1_flag;
      end
    end
    if (reset) begin // @[DispatchQueue.scala 60:24]
      tailPtr_3_value <= 4'h3; // @[DispatchQueue.scala 60:24]
    end else if (!(io_redirect_valid)) begin // @[DispatchQueue.scala 171:22]
      if (lastLastCycleMisprediction) begin // @[DispatchQueue.scala 173:10]
        tailPtr_3_value <= tailPtr_3_new_ptr_value;
      end else begin
        tailPtr_3_value <= tailPtr_3_new_ptr_1_value;
      end
    end
    allowEnqueue <= reset | _allowEnqueue_T_4; // @[DispatchQueue.scala 186:16 64:{29,29}]
    lastCycleMisprediction <= io_redirect_valid; // @[DispatchQueue.scala 149:39]
    lastLastCycleMisprediction <= lastCycleMisprediction; // @[DispatchQueue.scala 169:43]
    if (io_enq_canAccept) begin // @[DispatchQueue.scala 162:19]
      io_perf_0_value_REG <= _numEnq_T_4;
    end else begin
      io_perf_0_value_REG <= 3'h0;
    end
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_141 + _T_143; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_147 + _T_149; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= currentValidCounter <= 5'hc & _T_136; // @[DispatchQueue.scala 223:61]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _T_134 < _T_215; // @[DispatchQueue.scala 231:75]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= _T_134 > _T_215 & _T_134 <= _T_311; // @[DispatchQueue.scala 232:93]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= _T_134 > _T_311 & _GEN_1309 <= _T_409; // @[DispatchQueue.scala 233:93]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= _GEN_1309 > _T_409; // @[DispatchQueue.scala 234:75]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  robIdxEntries_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  robIdxEntries_0_value = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  robIdxEntries_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  robIdxEntries_1_value = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  robIdxEntries_2_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  robIdxEntries_2_value = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  robIdxEntries_3_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  robIdxEntries_3_value = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  robIdxEntries_4_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  robIdxEntries_4_value = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  robIdxEntries_5_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  robIdxEntries_5_value = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  robIdxEntries_6_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  robIdxEntries_6_value = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  robIdxEntries_7_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  robIdxEntries_7_value = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  robIdxEntries_8_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  robIdxEntries_8_value = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  robIdxEntries_9_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  robIdxEntries_9_value = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  robIdxEntries_10_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  robIdxEntries_10_value = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  robIdxEntries_11_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  robIdxEntries_11_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  robIdxEntries_12_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  robIdxEntries_12_value = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  robIdxEntries_13_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  robIdxEntries_13_value = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  robIdxEntries_14_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  robIdxEntries_14_value = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  robIdxEntries_15_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  robIdxEntries_15_value = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  stateEntries_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  stateEntries_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  stateEntries_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  stateEntries_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  stateEntries_4 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  stateEntries_5 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  stateEntries_6 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  stateEntries_7 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  stateEntries_8 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  stateEntries_9 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  stateEntries_10 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  stateEntries_11 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  stateEntries_12 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  stateEntries_13 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  stateEntries_14 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  stateEntries_15 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  headPtr_0_flag = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  headPtr_0_value = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  headPtr_1_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  headPtr_1_value = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  headPtr_2_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  headPtr_2_value = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  headPtr_3_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  headPtr_3_value = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  tailPtr_0_flag = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  tailPtr_0_value = _RAND_57[3:0];
  _RAND_58 = {1{`RANDOM}};
  tailPtr_1_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  tailPtr_1_value = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  tailPtr_2_flag = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  tailPtr_2_value = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  tailPtr_3_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  tailPtr_3_value = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  allowEnqueue = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  lastCycleMisprediction = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  lastLastCycleMisprediction = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_69[2:0];
  _RAND_70 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_71[2:0];
  _RAND_72 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_72[2:0];
  _RAND_73 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_82[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
