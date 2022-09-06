module FUBlock(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_issue_0_valid,
  input         io_issue_0_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_0_bits_uop_cf_pd_brType,
  input         io_issue_0_bits_uop_cf_pd_isCall,
  input         io_issue_0_bits_uop_cf_pd_isRet,
  input         io_issue_0_bits_uop_cf_pred_taken,
  input         io_issue_0_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_issue_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_0_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_0_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_0_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_0_bits_uop_ctrl_imm,
  input         io_issue_0_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_0_bits_uop_robIdx_value,
  input  [63:0] io_issue_0_bits_src_0,
  input  [63:0] io_issue_0_bits_src_1,
  input         io_issue_1_valid,
  input         io_issue_1_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_1_bits_uop_cf_pd_brType,
  input         io_issue_1_bits_uop_cf_pd_isCall,
  input         io_issue_1_bits_uop_cf_pd_isRet,
  input         io_issue_1_bits_uop_cf_pred_taken,
  input         io_issue_1_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_issue_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_1_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_1_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_1_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_1_bits_uop_ctrl_imm,
  input         io_issue_1_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_1_bits_uop_robIdx_value,
  input  [63:0] io_issue_1_bits_src_0,
  input  [63:0] io_issue_1_bits_src_1,
  input         io_issue_2_valid,
  input         io_issue_2_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_2_bits_uop_cf_pd_brType,
  input         io_issue_2_bits_uop_cf_pd_isCall,
  input         io_issue_2_bits_uop_cf_pd_isRet,
  input         io_issue_2_bits_uop_cf_pred_taken,
  input         io_issue_2_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_issue_2_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_2_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_2_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_2_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_2_bits_uop_ctrl_imm,
  input         io_issue_2_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_2_bits_uop_robIdx_value,
  input  [63:0] io_issue_2_bits_src_0,
  input  [63:0] io_issue_2_bits_src_1,
  input         io_issue_3_valid,
  input         io_issue_3_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_3_bits_uop_cf_pd_brType,
  input         io_issue_3_bits_uop_cf_pd_isCall,
  input         io_issue_3_bits_uop_cf_pd_isRet,
  input         io_issue_3_bits_uop_cf_pred_taken,
  input         io_issue_3_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_issue_3_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_3_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_3_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_3_bits_uop_ctrl_fuOpType,
  input  [19:0] io_issue_3_bits_uop_ctrl_imm,
  input         io_issue_3_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_3_bits_uop_robIdx_value,
  input  [63:0] io_issue_3_bits_src_0,
  input  [63:0] io_issue_3_bits_src_1,
  output        io_issue_4_ready,
  input         io_issue_4_valid,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_0,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_1,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_2,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_3,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_4,
  input         io_issue_4_bits_uop_cf_trigger_backendHit_5,
  input  [3:0]  io_issue_4_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_4_bits_uop_ctrl_fuOpType,
  input         io_issue_4_bits_uop_ctrl_rfWen,
  input         io_issue_4_bits_uop_ctrl_fpWen,
  input  [6:0]  io_issue_4_bits_uop_pdest,
  input         io_issue_4_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_4_bits_uop_robIdx_value,
  input  [63:0] io_issue_4_bits_src_0,
  input  [63:0] io_issue_4_bits_src_1,
  output        io_issue_5_ready,
  input         io_issue_5_valid,
  input  [38:0] io_issue_5_bits_uop_cf_pc,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_0,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_1,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_2,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_3,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_4,
  input         io_issue_5_bits_uop_cf_trigger_backendHit_5,
  input         io_issue_5_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_issue_5_bits_uop_cf_pd_brType,
  input         io_issue_5_bits_uop_cf_pd_isCall,
  input         io_issue_5_bits_uop_cf_pd_isRet,
  input         io_issue_5_bits_uop_cf_pred_taken,
  input         io_issue_5_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_issue_5_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_issue_5_bits_uop_cf_ftqOffset,
  input  [3:0]  io_issue_5_bits_uop_ctrl_fuType,
  input  [6:0]  io_issue_5_bits_uop_ctrl_fuOpType,
  input         io_issue_5_bits_uop_ctrl_rfWen,
  input         io_issue_5_bits_uop_ctrl_fpWen,
  input  [19:0] io_issue_5_bits_uop_ctrl_imm,
  input         io_issue_5_bits_uop_ctrl_fpu_typeTagOut,
  input         io_issue_5_bits_uop_ctrl_fpu_fromInt,
  input         io_issue_5_bits_uop_ctrl_fpu_wflags,
  input  [1:0]  io_issue_5_bits_uop_ctrl_fpu_typ,
  input  [2:0]  io_issue_5_bits_uop_ctrl_fpu_rm,
  input  [6:0]  io_issue_5_bits_uop_pdest,
  input         io_issue_5_bits_uop_robIdx_flag,
  input  [6:0]  io_issue_5_bits_uop_robIdx_value,
  input  [63:0] io_issue_5_bits_src_0,
  input  [63:0] io_issue_5_bits_src_1,
  output [63:0] io_writeback_0_bits_data,
  output        io_writeback_0_bits_redirectValid,
  output        io_writeback_0_bits_redirect_cfiUpdate_isMisPred,
  output [63:0] io_writeback_1_bits_data,
  output        io_writeback_1_bits_redirectValid,
  output        io_writeback_1_bits_redirect_cfiUpdate_isMisPred,
  output [63:0] io_writeback_2_bits_data,
  output        io_writeback_2_bits_redirectValid,
  output        io_writeback_2_bits_redirect_cfiUpdate_isMisPred,
  output [63:0] io_writeback_3_bits_data,
  output        io_writeback_3_bits_redirectValid,
  output        io_writeback_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_writeback_4_valid,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_0,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_1,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_2,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_3,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_4,
  output        io_writeback_4_bits_uop_cf_trigger_backendHit_5,
  output        io_writeback_4_bits_uop_ctrl_rfWen,
  output        io_writeback_4_bits_uop_ctrl_fpWen,
  output [6:0]  io_writeback_4_bits_uop_pdest,
  output        io_writeback_4_bits_uop_robIdx_flag,
  output [6:0]  io_writeback_4_bits_uop_robIdx_value,
  output [63:0] io_writeback_4_bits_data,
  input         io_writeback_5_ready,
  output        io_writeback_5_valid,
  output        io_writeback_5_bits_uop_cf_exceptionVec_2,
  output        io_writeback_5_bits_uop_cf_exceptionVec_3,
  output        io_writeback_5_bits_uop_cf_exceptionVec_8,
  output        io_writeback_5_bits_uop_cf_exceptionVec_9,
  output        io_writeback_5_bits_uop_cf_exceptionVec_11,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_0,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_1,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_2,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_3,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_4,
  output        io_writeback_5_bits_uop_cf_trigger_backendHit_5,
  output        io_writeback_5_bits_uop_ctrl_rfWen,
  output        io_writeback_5_bits_uop_ctrl_fpWen,
  output        io_writeback_5_bits_uop_ctrl_flushPipe,
  output [6:0]  io_writeback_5_bits_uop_pdest,
  output        io_writeback_5_bits_uop_robIdx_flag,
  output [6:0]  io_writeback_5_bits_uop_robIdx_value,
  output [63:0] io_writeback_5_bits_data,
  output [4:0]  io_writeback_5_bits_fflags,
  output        io_writeback_5_bits_redirectValid,
  output        io_writeback_5_bits_redirect_cfiUpdate_isMisPred,
  output        io_writeback_5_bits_debug_isPerfCnt,
  output        io_extra_exuRedirect_0_valid,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_0_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_0_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_0_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_0_bits_uop_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_0_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_0_bits_redirectValid,
  output        io_extra_exuRedirect_0_bits_redirect_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_0_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag,
  output [5:0]  io_extra_exuRedirect_0_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_0_bits_redirect_ftqOffset,
  output [38:0] io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target,
  output        io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_1_valid,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_1_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_1_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_1_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_1_bits_uop_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_1_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_1_bits_redirectValid,
  output        io_extra_exuRedirect_1_bits_redirect_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_1_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag,
  output [5:0]  io_extra_exuRedirect_1_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_1_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_2_valid,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_2_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_2_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_2_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_2_bits_uop_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_2_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_2_bits_redirectValid,
  output        io_extra_exuRedirect_2_bits_redirect_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_2_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag,
  output [5:0]  io_extra_exuRedirect_2_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_2_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_3_valid,
  output        io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_3_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_3_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_3_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_3_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_3_bits_uop_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_3_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_3_bits_redirectValid,
  output        io_extra_exuRedirect_3_bits_redirect_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_3_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag,
  output [5:0]  io_extra_exuRedirect_3_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_3_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_extra_exuRedirect_4_valid,
  output        io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC,
  output [1:0]  io_extra_exuRedirect_4_bits_uop_cf_pd_brType,
  output        io_extra_exuRedirect_4_bits_uop_cf_pd_isCall,
  output        io_extra_exuRedirect_4_bits_uop_cf_pd_isRet,
  output [19:0] io_extra_exuRedirect_4_bits_uop_ctrl_imm,
  output        io_extra_exuRedirect_4_bits_uop_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_4_bits_uop_robIdx_value,
  output        io_extra_exuRedirect_4_bits_redirectValid,
  output        io_extra_exuRedirect_4_bits_redirect_robIdx_flag,
  output [6:0]  io_extra_exuRedirect_4_bits_redirect_robIdx_value,
  output        io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag,
  output [5:0]  io_extra_exuRedirect_4_bits_redirect_ftqIdx_value,
  output [2:0]  io_extra_exuRedirect_4_bits_redirect_ftqOffset,
  output        io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken,
  output        io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred,
  input  [7:0]  io_extra_csrio_hartId,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsLsu_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_0_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_1_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_2_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_3_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_4_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_5_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_6_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_7_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_8_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_9_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_10_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_11_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_12_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_13_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_14_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_15_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_16_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_17_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_18_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_19_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_20_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_21_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_22_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_23_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_24_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_25_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_26_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_27_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_28_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_29_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_30_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_31_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_32_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_33_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_34_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_35_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_36_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_37_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_38_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_39_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_40_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_41_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_42_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_43_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_44_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_45_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_46_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_47_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_48_value,
  input  [5:0]  io_extra_csrio_perf_perfEventsHc_49_value,
  input  [2:0]  io_extra_csrio_perf_retiredInstr,
  input         io_extra_csrio_fpu_fflags_valid,
  input  [4:0]  io_extra_csrio_fpu_fflags_bits,
  input         io_extra_csrio_fpu_dirty_fs,
  output [2:0]  io_extra_csrio_fpu_frm,
  input         io_extra_csrio_exception_valid,
  input  [38:0] io_extra_csrio_exception_bits_uop_cf_pc,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_0,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_1,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_2,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_3,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_4,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_5,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_6,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_7,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_8,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_9,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_11,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_12,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_13,
  input         io_extra_csrio_exception_bits_uop_cf_exceptionVec_15,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         io_extra_csrio_exception_bits_uop_ctrl_singleStep,
  input         io_extra_csrio_exception_bits_isInterrupt,
  output        io_extra_csrio_isXRet,
  output [38:0] io_extra_csrio_trapTarget,
  output        io_extra_csrio_interrupt,
  output        io_extra_csrio_wfi_event,
  input  [38:0] io_extra_csrio_memExceptionVAddr,
  input         io_extra_csrio_externalInterrupt_mtip,
  input         io_extra_csrio_externalInterrupt_msip,
  input         io_extra_csrio_externalInterrupt_meip,
  input         io_extra_csrio_externalInterrupt_seip,
  input         io_extra_csrio_externalInterrupt_debug,
  output        io_extra_csrio_tlb_satp_changed,
  output [3:0]  io_extra_csrio_tlb_satp_mode,
  output [15:0] io_extra_csrio_tlb_satp_asid,
  output [43:0] io_extra_csrio_tlb_satp_ppn,
  output        io_extra_csrio_tlb_priv_mxr,
  output        io_extra_csrio_tlb_priv_sum,
  output [1:0]  io_extra_csrio_tlb_priv_imode,
  output [1:0]  io_extra_csrio_tlb_priv_dmode,
  output        io_extra_csrio_customCtrl_l1I_pf_enable,
  output        io_extra_csrio_customCtrl_icache_parity_enable,
  output        io_extra_csrio_customCtrl_lvpred_disable,
  output        io_extra_csrio_customCtrl_no_spec_load,
  output        io_extra_csrio_customCtrl_storeset_wait_store,
  output [4:0]  io_extra_csrio_customCtrl_lvpred_timeout,
  output        io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_btb_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_tage_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_sc_enable,
  output        io_extra_csrio_customCtrl_bp_ctrl_ras_enable,
  output [3:0]  io_extra_csrio_customCtrl_sbuffer_threshold,
  output        io_extra_csrio_customCtrl_ldld_vio_check_enable,
  output        io_extra_csrio_customCtrl_soft_prefetch_enable,
  output        io_extra_csrio_customCtrl_cache_error_enable,
  output        io_extra_csrio_customCtrl_svinval_enable,
  output        io_extra_csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] io_extra_csrio_customCtrl_distribute_csr_waddr,
  output [63:0] io_extra_csrio_customCtrl_distribute_csr_wdata,
  output        io_extra_csrio_customCtrl_singlestep,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        io_extra_csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  io_extra_csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        io_extra_csrio_customCtrl_trigger_enable_0,
  output        io_extra_csrio_customCtrl_trigger_enable_1,
  output        io_extra_csrio_customCtrl_trigger_enable_2,
  output        io_extra_csrio_customCtrl_trigger_enable_3,
  output        io_extra_csrio_customCtrl_trigger_enable_4,
  output        io_extra_csrio_customCtrl_trigger_enable_5,
  output        io_extra_csrio_customCtrl_trigger_enable_6,
  output        io_extra_csrio_customCtrl_trigger_enable_7,
  output        io_extra_csrio_customCtrl_trigger_enable_8,
  output        io_extra_csrio_customCtrl_trigger_enable_9,
  input         io_extra_csrio_distributedUpdate_0_wvalid,
  input  [11:0] io_extra_csrio_distributedUpdate_0_waddr,
  input  [63:0] io_extra_csrio_distributedUpdate_0_wdata,
  input         io_extra_csrio_distributedUpdate_1_wvalid,
  input  [11:0] io_extra_csrio_distributedUpdate_1_waddr,
  input  [63:0] io_extra_csrio_distributedUpdate_1_wdata,
  output        io_extra_fenceio_sfence_valid,
  output        io_extra_fenceio_sfence_bits_rs1,
  output        io_extra_fenceio_sfence_bits_rs2,
  output [38:0] io_extra_fenceio_sfence_bits_addr,
  output [15:0] io_extra_fenceio_sfence_bits_asid,
  output        io_extra_fenceio_sbuffer_flushSb,
  input         io_extra_fenceio_sbuffer_sbIsEmpty
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
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [63:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [63:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [63:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [63:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [63:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [63:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [63:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [63:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [63:0] _RAND_182;
`endif // RANDOMIZE_REG_INIT
  wire  exeUnits_0_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_0_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_0_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_0_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_0_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_0_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_0_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_0_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_0_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_0_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_0_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_1_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_1_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_1_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_1_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_1_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_1_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_1_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_1_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_1_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_2_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_2_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_2_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_2_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_2_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_2_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_2_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_2_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_2_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_2_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_2_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_2_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_2_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_3_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_3_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_3_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_3_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_3_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_3_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_3_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_3_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_3_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_4_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_fromInt_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_4_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_4_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_4_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_4_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_4_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_clock; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_reset; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_valid; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_io_fromInt_bits_uop_cf_pc; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_io_fromInt_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_pred_taken; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_io_fromInt_bits_uop_cf_ftqOffset; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_5_io_fromInt_bits_uop_ctrl_fuType; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_fromInt_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_5_io_fromInt_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_fromInt; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_fromInt_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_fromInt_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_fromInt_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_io_fromInt_bits_src_0; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_io_fromInt_bits_src_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_redirect_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_redirect_bits_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_redirect_bits_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_redirect_bits_level; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_ready; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_ctrl_flushPipe; // @[FUBlock.scala 66:74]
  wire [19:0] exeUnits_5_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_out_bits_uop_pdest; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_io_out_bits_data; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_5_io_out_bits_fflags; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_redirectValid; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 66:74]
  wire [6:0] exeUnits_5_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_io_out_bits_redirect_cfiUpdate_target; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_io_out_bits_debug_isPerfCnt; // @[FUBlock.scala 66:74]
  wire [7:0] exeUnits_5_csrio_hartId; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsFrontend_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsCtrl_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsLsu_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_0_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_1_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_2_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_3_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_4_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_5_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_6_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_7_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_8_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_9_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_10_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_11_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_12_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_13_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_14_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_15_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_16_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_17_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_18_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_19_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_20_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_21_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_22_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_23_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_24_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_25_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_26_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_27_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_28_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_29_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_30_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_31_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_32_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_33_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_34_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_35_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_36_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_37_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_38_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_39_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_40_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_41_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_42_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_43_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_44_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_45_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_46_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_47_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_48_value; // @[FUBlock.scala 66:74]
  wire [5:0] exeUnits_5_csrio_perf_perfEventsHc_49_value; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_csrio_perf_retiredInstr; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_fpu_fflags_valid; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_5_csrio_fpu_fflags_bits; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_fpu_dirty_fs; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_csrio_fpu_frm; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_valid; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_csrio_exception_bits_uop_cf_pc; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_6; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_7; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_12; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_13; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_15; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_uop_ctrl_singleStep; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_exception_bits_isInterrupt; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_isXRet; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_csrio_trapTarget; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_interrupt; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_wfi_event; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_csrio_memExceptionVAddr; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_externalInterrupt_mtip; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_externalInterrupt_msip; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_externalInterrupt_meip; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_externalInterrupt_seip; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_externalInterrupt_debug; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_tlb_satp_changed; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_5_csrio_tlb_satp_mode; // @[FUBlock.scala 66:74]
  wire [15:0] exeUnits_5_csrio_tlb_satp_asid; // @[FUBlock.scala 66:74]
  wire [43:0] exeUnits_5_csrio_tlb_satp_ppn; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_tlb_priv_mxr; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_tlb_priv_sum; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_csrio_tlb_priv_imode; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_csrio_tlb_priv_dmode; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_l1I_pf_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_icache_parity_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_lvpred_disable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_no_spec_load; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_storeset_wait_store; // @[FUBlock.scala 66:74]
  wire [4:0] exeUnits_5_csrio_customCtrl_lvpred_timeout; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_bp_ctrl_btb_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_bp_ctrl_tage_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_bp_ctrl_sc_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_bp_ctrl_ras_enable; // @[FUBlock.scala 66:74]
  wire [3:0] exeUnits_5_csrio_customCtrl_sbuffer_threshold; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_ldld_vio_check_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_soft_prefetch_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_cache_error_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_svinval_enable; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_distribute_csr_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_5_csrio_customCtrl_distribute_csr_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_csrio_customCtrl_distribute_csr_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_singlestep; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_frontend_trigger_t_valid; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_mem_trigger_t_valid; // @[FUBlock.scala 66:74]
  wire [2:0] exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_addr; // @[FUBlock.scala 66:74]
  wire [1:0] exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_0; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_2; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_3; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_4; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_5; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_6; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_7; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_8; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_customCtrl_trigger_enable_9; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_distributedUpdate_0_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_5_csrio_distributedUpdate_0_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_csrio_distributedUpdate_0_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_csrio_distributedUpdate_1_wvalid; // @[FUBlock.scala 66:74]
  wire [11:0] exeUnits_5_csrio_distributedUpdate_1_waddr; // @[FUBlock.scala 66:74]
  wire [63:0] exeUnits_5_csrio_distributedUpdate_1_wdata; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_fenceio_sfence_valid; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_fenceio_sfence_bits_rs1; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_fenceio_sfence_bits_rs2; // @[FUBlock.scala 66:74]
  wire [38:0] exeUnits_5_fenceio_sfence_bits_addr; // @[FUBlock.scala 66:74]
  wire [15:0] exeUnits_5_fenceio_sfence_bits_asid; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_fenceio_sbuffer_flushSb; // @[FUBlock.scala 66:74]
  wire  exeUnits_5_fenceio_sbuffer_sbIsEmpty; // @[FUBlock.scala 66:74]
  wire  _io_extra_exuRedirect_0_valid_T = exeUnits_5_io_out_ready & exeUnits_5_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_1_valid_T = exeUnits_3_io_out_ready & exeUnits_3_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_2_valid_T = exeUnits_2_io_out_ready & exeUnits_2_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_3_valid_T = exeUnits_1_io_out_ready & exeUnits_1_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _io_extra_exuRedirect_4_valid_T = exeUnits_0_io_out_ready & exeUnits_0_io_out_valid; // @[Decoupled.scala 50:35]
  reg [5:0] REG_perfEventsFrontend_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsFrontend_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsCtrl_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsLsu_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_0_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_1_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_2_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_3_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_4_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_5_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_6_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_7_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_8_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_9_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_10_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_11_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_12_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_13_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_14_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_15_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_16_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_17_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_18_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_19_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_20_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_21_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_22_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_23_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_24_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_25_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_26_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_27_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_28_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_29_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_30_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_31_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_32_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_33_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_34_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_35_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_36_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_37_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_38_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_39_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_40_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_41_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_42_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_43_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_44_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_45_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_46_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_47_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_48_value; // @[FUBlock.scala 87:36]
  reg [5:0] REG_perfEventsHc_49_value; // @[FUBlock.scala 87:36]
  reg [2:0] REG_retiredInstr; // @[FUBlock.scala 87:36]
  reg  io_extra_csrio_customCtrl_REG_l1I_pf_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_icache_parity_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_lvpred_disable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_no_spec_load; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_storeset_wait_store; // @[FUBlock.scala 89:55]
  reg [4:0] io_extra_csrio_customCtrl_REG_lvpred_timeout; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable; // @[FUBlock.scala 89:55]
  reg [3:0] io_extra_csrio_customCtrl_REG_sbuffer_threshold; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_ldld_vio_check_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_soft_prefetch_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_cache_error_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_svinval_enable; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_distribute_csr_wvalid; // @[FUBlock.scala 89:55]
  reg [11:0] io_extra_csrio_customCtrl_REG_distribute_csr_waddr; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_distribute_csr_wdata; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_singlestep; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_valid; // @[FUBlock.scala 89:55]
  reg [2:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
  reg [1:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
  reg [63:0] io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_0; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_1; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_2; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_3; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_4; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_5; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_6; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_7; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_8; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_trigger_enable_9; // @[FUBlock.scala 89:55]
  reg  io_extra_csrio_customCtrl_REG_1_l1I_pf_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_icache_parity_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_lvpred_disable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_no_spec_load; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_storeset_wait_store; // @[FUBlock.scala 89:47]
  reg [4:0] io_extra_csrio_customCtrl_REG_1_lvpred_timeout; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable; // @[FUBlock.scala 89:47]
  reg [3:0] io_extra_csrio_customCtrl_REG_1_sbuffer_threshold; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_soft_prefetch_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_cache_error_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_svinval_enable; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid; // @[FUBlock.scala 89:47]
  reg [11:0] io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_singlestep; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid; // @[FUBlock.scala 89:47]
  reg [2:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
  reg [1:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
  reg [63:0] io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_0; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_1; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_2; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_3; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_4; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_5; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_6; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_7; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_8; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_customCtrl_REG_1_trigger_enable_9; // @[FUBlock.scala 89:47]
  reg  io_extra_csrio_tlb_REG_satp_changed; // @[FUBlock.scala 90:48]
  reg [3:0] io_extra_csrio_tlb_REG_satp_mode; // @[FUBlock.scala 90:48]
  reg [15:0] io_extra_csrio_tlb_REG_satp_asid; // @[FUBlock.scala 90:48]
  reg [43:0] io_extra_csrio_tlb_REG_satp_ppn; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_priv_mxr; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_priv_sum; // @[FUBlock.scala 90:48]
  reg [1:0] io_extra_csrio_tlb_REG_priv_imode; // @[FUBlock.scala 90:48]
  reg [1:0] io_extra_csrio_tlb_REG_priv_dmode; // @[FUBlock.scala 90:48]
  reg  io_extra_csrio_tlb_REG_1_satp_changed; // @[FUBlock.scala 90:40]
  reg [3:0] io_extra_csrio_tlb_REG_1_satp_mode; // @[FUBlock.scala 90:40]
  reg [15:0] io_extra_csrio_tlb_REG_1_satp_asid; // @[FUBlock.scala 90:40]
  reg [43:0] io_extra_csrio_tlb_REG_1_satp_ppn; // @[FUBlock.scala 90:40]
  reg  io_extra_csrio_tlb_REG_1_priv_mxr; // @[FUBlock.scala 90:40]
  reg  io_extra_csrio_tlb_REG_1_priv_sum; // @[FUBlock.scala 90:40]
  reg [1:0] io_extra_csrio_tlb_REG_1_priv_imode; // @[FUBlock.scala 90:40]
  reg [1:0] io_extra_csrio_tlb_REG_1_priv_dmode; // @[FUBlock.scala 90:40]
  reg  REG_1_0_wvalid; // @[FUBlock.scala 92:49]
  reg [11:0] REG_1_0_waddr; // @[FUBlock.scala 92:49]
  reg [63:0] REG_1_0_wdata; // @[FUBlock.scala 92:49]
  reg  REG_1_1_wvalid; // @[FUBlock.scala 92:49]
  reg [11:0] REG_1_1_waddr; // @[FUBlock.scala 92:49]
  reg [63:0] REG_1_1_wdata; // @[FUBlock.scala 92:49]
  AluExeUnit exeUnits_0 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_0_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_0_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_0_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_0_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_0_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_0_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_0_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_0_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_0_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_0_io_out_ready),
    .io_out_valid(exeUnits_0_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_0_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_0_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_0_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_0_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_0_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_0_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_0_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_0_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_0_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_0_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_0_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_0_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_0_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_0_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_0_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  AluExeUnit exeUnits_1 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_1_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_1_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_1_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_1_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_1_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_1_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_1_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_1_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_1_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_1_io_out_ready),
    .io_out_valid(exeUnits_1_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_1_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_1_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_1_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_1_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_1_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_1_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_1_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_1_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_1_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_1_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_1_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_1_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_1_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_1_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  AluExeUnit exeUnits_2 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_2_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_2_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_2_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_2_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_2_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_2_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_2_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_2_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_2_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_2_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_2_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_2_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_2_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_2_io_out_ready),
    .io_out_valid(exeUnits_2_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_2_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_2_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_2_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_2_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_2_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_2_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_2_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_2_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_2_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_2_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_2_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_2_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_2_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_2_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_2_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_2_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  AluExeUnit exeUnits_3 ( // @[FUBlock.scala 66:74]
    .io_fromInt_valid(exeUnits_3_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_3_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_3_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_3_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_3_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_3_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_3_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_3_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_3_io_fromInt_bits_src_1),
    .io_out_ready(exeUnits_3_io_out_ready),
    .io_out_valid(exeUnits_3_io_out_valid),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_3_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_3_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_3_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_3_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_imm(exeUnits_3_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_robIdx_flag(exeUnits_3_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_3_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_3_io_out_bits_data),
    .io_out_bits_redirectValid(exeUnits_3_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_3_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_3_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_3_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_3_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_3_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_taken(exeUnits_3_io_out_bits_redirect_cfiUpdate_taken),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred)
  );
  MulDivExeUnit exeUnits_4 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_4_clock),
    .reset(exeUnits_4_reset),
    .io_fromInt_ready(exeUnits_4_io_fromInt_ready),
    .io_fromInt_valid(exeUnits_4_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_trigger_backendHit_0(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_0),
    .io_fromInt_bits_uop_cf_trigger_backendHit_1(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_1),
    .io_fromInt_bits_uop_cf_trigger_backendHit_2(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_2),
    .io_fromInt_bits_uop_cf_trigger_backendHit_3(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_3),
    .io_fromInt_bits_uop_cf_trigger_backendHit_4(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_4),
    .io_fromInt_bits_uop_cf_trigger_backendHit_5(exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_5),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_4_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_4_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_rfWen(exeUnits_4_io_fromInt_bits_uop_ctrl_rfWen),
    .io_fromInt_bits_uop_ctrl_fpWen(exeUnits_4_io_fromInt_bits_uop_ctrl_fpWen),
    .io_fromInt_bits_uop_pdest(exeUnits_4_io_fromInt_bits_uop_pdest),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_4_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_4_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_4_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_4_io_fromInt_bits_src_1),
    .io_redirect_valid(exeUnits_4_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_4_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_4_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_4_io_redirect_bits_level),
    .io_out_valid(exeUnits_4_io_out_valid),
    .io_out_bits_uop_cf_trigger_backendHit_0(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_4_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_4_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(exeUnits_4_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_4_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_4_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_4_io_out_bits_data)
  );
  JumpCSRExeUnit exeUnits_5 ( // @[FUBlock.scala 66:74]
    .clock(exeUnits_5_clock),
    .reset(exeUnits_5_reset),
    .io_fromInt_ready(exeUnits_5_io_fromInt_ready),
    .io_fromInt_valid(exeUnits_5_io_fromInt_valid),
    .io_fromInt_bits_uop_cf_pc(exeUnits_5_io_fromInt_bits_uop_cf_pc),
    .io_fromInt_bits_uop_cf_trigger_backendHit_0(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_0),
    .io_fromInt_bits_uop_cf_trigger_backendHit_1(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_1),
    .io_fromInt_bits_uop_cf_trigger_backendHit_2(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_2),
    .io_fromInt_bits_uop_cf_trigger_backendHit_3(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_3),
    .io_fromInt_bits_uop_cf_trigger_backendHit_4(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_4),
    .io_fromInt_bits_uop_cf_trigger_backendHit_5(exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_5),
    .io_fromInt_bits_uop_cf_pd_isRVC(exeUnits_5_io_fromInt_bits_uop_cf_pd_isRVC),
    .io_fromInt_bits_uop_cf_pd_brType(exeUnits_5_io_fromInt_bits_uop_cf_pd_brType),
    .io_fromInt_bits_uop_cf_pd_isCall(exeUnits_5_io_fromInt_bits_uop_cf_pd_isCall),
    .io_fromInt_bits_uop_cf_pd_isRet(exeUnits_5_io_fromInt_bits_uop_cf_pd_isRet),
    .io_fromInt_bits_uop_cf_pred_taken(exeUnits_5_io_fromInt_bits_uop_cf_pred_taken),
    .io_fromInt_bits_uop_cf_ftqPtr_flag(exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_flag),
    .io_fromInt_bits_uop_cf_ftqPtr_value(exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_value),
    .io_fromInt_bits_uop_cf_ftqOffset(exeUnits_5_io_fromInt_bits_uop_cf_ftqOffset),
    .io_fromInt_bits_uop_ctrl_fuType(exeUnits_5_io_fromInt_bits_uop_ctrl_fuType),
    .io_fromInt_bits_uop_ctrl_fuOpType(exeUnits_5_io_fromInt_bits_uop_ctrl_fuOpType),
    .io_fromInt_bits_uop_ctrl_rfWen(exeUnits_5_io_fromInt_bits_uop_ctrl_rfWen),
    .io_fromInt_bits_uop_ctrl_fpWen(exeUnits_5_io_fromInt_bits_uop_ctrl_fpWen),
    .io_fromInt_bits_uop_ctrl_imm(exeUnits_5_io_fromInt_bits_uop_ctrl_imm),
    .io_fromInt_bits_uop_ctrl_fpu_typeTagOut(exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typeTagOut),
    .io_fromInt_bits_uop_ctrl_fpu_fromInt(exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_fromInt),
    .io_fromInt_bits_uop_ctrl_fpu_wflags(exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_wflags),
    .io_fromInt_bits_uop_ctrl_fpu_typ(exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typ),
    .io_fromInt_bits_uop_ctrl_fpu_rm(exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_rm),
    .io_fromInt_bits_uop_pdest(exeUnits_5_io_fromInt_bits_uop_pdest),
    .io_fromInt_bits_uop_robIdx_flag(exeUnits_5_io_fromInt_bits_uop_robIdx_flag),
    .io_fromInt_bits_uop_robIdx_value(exeUnits_5_io_fromInt_bits_uop_robIdx_value),
    .io_fromInt_bits_src_0(exeUnits_5_io_fromInt_bits_src_0),
    .io_fromInt_bits_src_1(exeUnits_5_io_fromInt_bits_src_1),
    .io_redirect_valid(exeUnits_5_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exeUnits_5_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exeUnits_5_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exeUnits_5_io_redirect_bits_level),
    .io_out_ready(exeUnits_5_io_out_ready),
    .io_out_valid(exeUnits_5_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(exeUnits_5_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(exeUnits_5_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(exeUnits_5_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(exeUnits_5_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(exeUnits_5_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_trigger_backendHit_0(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_pd_isRVC(exeUnits_5_io_out_bits_uop_cf_pd_isRVC),
    .io_out_bits_uop_cf_pd_brType(exeUnits_5_io_out_bits_uop_cf_pd_brType),
    .io_out_bits_uop_cf_pd_isCall(exeUnits_5_io_out_bits_uop_cf_pd_isCall),
    .io_out_bits_uop_cf_pd_isRet(exeUnits_5_io_out_bits_uop_cf_pd_isRet),
    .io_out_bits_uop_ctrl_rfWen(exeUnits_5_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(exeUnits_5_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(exeUnits_5_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_ctrl_imm(exeUnits_5_io_out_bits_uop_ctrl_imm),
    .io_out_bits_uop_pdest(exeUnits_5_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(exeUnits_5_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(exeUnits_5_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(exeUnits_5_io_out_bits_data),
    .io_out_bits_fflags(exeUnits_5_io_out_bits_fflags),
    .io_out_bits_redirectValid(exeUnits_5_io_out_bits_redirectValid),
    .io_out_bits_redirect_robIdx_flag(exeUnits_5_io_out_bits_redirect_robIdx_flag),
    .io_out_bits_redirect_robIdx_value(exeUnits_5_io_out_bits_redirect_robIdx_value),
    .io_out_bits_redirect_ftqIdx_flag(exeUnits_5_io_out_bits_redirect_ftqIdx_flag),
    .io_out_bits_redirect_ftqIdx_value(exeUnits_5_io_out_bits_redirect_ftqIdx_value),
    .io_out_bits_redirect_ftqOffset(exeUnits_5_io_out_bits_redirect_ftqOffset),
    .io_out_bits_redirect_cfiUpdate_target(exeUnits_5_io_out_bits_redirect_cfiUpdate_target),
    .io_out_bits_redirect_cfiUpdate_isMisPred(exeUnits_5_io_out_bits_redirect_cfiUpdate_isMisPred),
    .io_out_bits_debug_isPerfCnt(exeUnits_5_io_out_bits_debug_isPerfCnt),
    .csrio_hartId(exeUnits_5_csrio_hartId),
    .csrio_perf_perfEventsFrontend_0_value(exeUnits_5_csrio_perf_perfEventsFrontend_0_value),
    .csrio_perf_perfEventsFrontend_1_value(exeUnits_5_csrio_perf_perfEventsFrontend_1_value),
    .csrio_perf_perfEventsFrontend_2_value(exeUnits_5_csrio_perf_perfEventsFrontend_2_value),
    .csrio_perf_perfEventsFrontend_3_value(exeUnits_5_csrio_perf_perfEventsFrontend_3_value),
    .csrio_perf_perfEventsFrontend_4_value(exeUnits_5_csrio_perf_perfEventsFrontend_4_value),
    .csrio_perf_perfEventsFrontend_5_value(exeUnits_5_csrio_perf_perfEventsFrontend_5_value),
    .csrio_perf_perfEventsFrontend_6_value(exeUnits_5_csrio_perf_perfEventsFrontend_6_value),
    .csrio_perf_perfEventsFrontend_7_value(exeUnits_5_csrio_perf_perfEventsFrontend_7_value),
    .csrio_perf_perfEventsCtrl_0_value(exeUnits_5_csrio_perf_perfEventsCtrl_0_value),
    .csrio_perf_perfEventsCtrl_1_value(exeUnits_5_csrio_perf_perfEventsCtrl_1_value),
    .csrio_perf_perfEventsCtrl_2_value(exeUnits_5_csrio_perf_perfEventsCtrl_2_value),
    .csrio_perf_perfEventsCtrl_3_value(exeUnits_5_csrio_perf_perfEventsCtrl_3_value),
    .csrio_perf_perfEventsCtrl_4_value(exeUnits_5_csrio_perf_perfEventsCtrl_4_value),
    .csrio_perf_perfEventsCtrl_5_value(exeUnits_5_csrio_perf_perfEventsCtrl_5_value),
    .csrio_perf_perfEventsCtrl_6_value(exeUnits_5_csrio_perf_perfEventsCtrl_6_value),
    .csrio_perf_perfEventsCtrl_7_value(exeUnits_5_csrio_perf_perfEventsCtrl_7_value),
    .csrio_perf_perfEventsLsu_0_value(exeUnits_5_csrio_perf_perfEventsLsu_0_value),
    .csrio_perf_perfEventsLsu_1_value(exeUnits_5_csrio_perf_perfEventsLsu_1_value),
    .csrio_perf_perfEventsLsu_2_value(exeUnits_5_csrio_perf_perfEventsLsu_2_value),
    .csrio_perf_perfEventsLsu_3_value(exeUnits_5_csrio_perf_perfEventsLsu_3_value),
    .csrio_perf_perfEventsLsu_4_value(exeUnits_5_csrio_perf_perfEventsLsu_4_value),
    .csrio_perf_perfEventsLsu_5_value(exeUnits_5_csrio_perf_perfEventsLsu_5_value),
    .csrio_perf_perfEventsLsu_6_value(exeUnits_5_csrio_perf_perfEventsLsu_6_value),
    .csrio_perf_perfEventsLsu_7_value(exeUnits_5_csrio_perf_perfEventsLsu_7_value),
    .csrio_perf_perfEventsHc_0_value(exeUnits_5_csrio_perf_perfEventsHc_0_value),
    .csrio_perf_perfEventsHc_1_value(exeUnits_5_csrio_perf_perfEventsHc_1_value),
    .csrio_perf_perfEventsHc_2_value(exeUnits_5_csrio_perf_perfEventsHc_2_value),
    .csrio_perf_perfEventsHc_3_value(exeUnits_5_csrio_perf_perfEventsHc_3_value),
    .csrio_perf_perfEventsHc_4_value(exeUnits_5_csrio_perf_perfEventsHc_4_value),
    .csrio_perf_perfEventsHc_5_value(exeUnits_5_csrio_perf_perfEventsHc_5_value),
    .csrio_perf_perfEventsHc_6_value(exeUnits_5_csrio_perf_perfEventsHc_6_value),
    .csrio_perf_perfEventsHc_7_value(exeUnits_5_csrio_perf_perfEventsHc_7_value),
    .csrio_perf_perfEventsHc_8_value(exeUnits_5_csrio_perf_perfEventsHc_8_value),
    .csrio_perf_perfEventsHc_9_value(exeUnits_5_csrio_perf_perfEventsHc_9_value),
    .csrio_perf_perfEventsHc_10_value(exeUnits_5_csrio_perf_perfEventsHc_10_value),
    .csrio_perf_perfEventsHc_11_value(exeUnits_5_csrio_perf_perfEventsHc_11_value),
    .csrio_perf_perfEventsHc_12_value(exeUnits_5_csrio_perf_perfEventsHc_12_value),
    .csrio_perf_perfEventsHc_13_value(exeUnits_5_csrio_perf_perfEventsHc_13_value),
    .csrio_perf_perfEventsHc_14_value(exeUnits_5_csrio_perf_perfEventsHc_14_value),
    .csrio_perf_perfEventsHc_15_value(exeUnits_5_csrio_perf_perfEventsHc_15_value),
    .csrio_perf_perfEventsHc_16_value(exeUnits_5_csrio_perf_perfEventsHc_16_value),
    .csrio_perf_perfEventsHc_17_value(exeUnits_5_csrio_perf_perfEventsHc_17_value),
    .csrio_perf_perfEventsHc_18_value(exeUnits_5_csrio_perf_perfEventsHc_18_value),
    .csrio_perf_perfEventsHc_19_value(exeUnits_5_csrio_perf_perfEventsHc_19_value),
    .csrio_perf_perfEventsHc_20_value(exeUnits_5_csrio_perf_perfEventsHc_20_value),
    .csrio_perf_perfEventsHc_21_value(exeUnits_5_csrio_perf_perfEventsHc_21_value),
    .csrio_perf_perfEventsHc_22_value(exeUnits_5_csrio_perf_perfEventsHc_22_value),
    .csrio_perf_perfEventsHc_23_value(exeUnits_5_csrio_perf_perfEventsHc_23_value),
    .csrio_perf_perfEventsHc_24_value(exeUnits_5_csrio_perf_perfEventsHc_24_value),
    .csrio_perf_perfEventsHc_25_value(exeUnits_5_csrio_perf_perfEventsHc_25_value),
    .csrio_perf_perfEventsHc_26_value(exeUnits_5_csrio_perf_perfEventsHc_26_value),
    .csrio_perf_perfEventsHc_27_value(exeUnits_5_csrio_perf_perfEventsHc_27_value),
    .csrio_perf_perfEventsHc_28_value(exeUnits_5_csrio_perf_perfEventsHc_28_value),
    .csrio_perf_perfEventsHc_29_value(exeUnits_5_csrio_perf_perfEventsHc_29_value),
    .csrio_perf_perfEventsHc_30_value(exeUnits_5_csrio_perf_perfEventsHc_30_value),
    .csrio_perf_perfEventsHc_31_value(exeUnits_5_csrio_perf_perfEventsHc_31_value),
    .csrio_perf_perfEventsHc_32_value(exeUnits_5_csrio_perf_perfEventsHc_32_value),
    .csrio_perf_perfEventsHc_33_value(exeUnits_5_csrio_perf_perfEventsHc_33_value),
    .csrio_perf_perfEventsHc_34_value(exeUnits_5_csrio_perf_perfEventsHc_34_value),
    .csrio_perf_perfEventsHc_35_value(exeUnits_5_csrio_perf_perfEventsHc_35_value),
    .csrio_perf_perfEventsHc_36_value(exeUnits_5_csrio_perf_perfEventsHc_36_value),
    .csrio_perf_perfEventsHc_37_value(exeUnits_5_csrio_perf_perfEventsHc_37_value),
    .csrio_perf_perfEventsHc_38_value(exeUnits_5_csrio_perf_perfEventsHc_38_value),
    .csrio_perf_perfEventsHc_39_value(exeUnits_5_csrio_perf_perfEventsHc_39_value),
    .csrio_perf_perfEventsHc_40_value(exeUnits_5_csrio_perf_perfEventsHc_40_value),
    .csrio_perf_perfEventsHc_41_value(exeUnits_5_csrio_perf_perfEventsHc_41_value),
    .csrio_perf_perfEventsHc_42_value(exeUnits_5_csrio_perf_perfEventsHc_42_value),
    .csrio_perf_perfEventsHc_43_value(exeUnits_5_csrio_perf_perfEventsHc_43_value),
    .csrio_perf_perfEventsHc_44_value(exeUnits_5_csrio_perf_perfEventsHc_44_value),
    .csrio_perf_perfEventsHc_45_value(exeUnits_5_csrio_perf_perfEventsHc_45_value),
    .csrio_perf_perfEventsHc_46_value(exeUnits_5_csrio_perf_perfEventsHc_46_value),
    .csrio_perf_perfEventsHc_47_value(exeUnits_5_csrio_perf_perfEventsHc_47_value),
    .csrio_perf_perfEventsHc_48_value(exeUnits_5_csrio_perf_perfEventsHc_48_value),
    .csrio_perf_perfEventsHc_49_value(exeUnits_5_csrio_perf_perfEventsHc_49_value),
    .csrio_perf_retiredInstr(exeUnits_5_csrio_perf_retiredInstr),
    .csrio_fpu_fflags_valid(exeUnits_5_csrio_fpu_fflags_valid),
    .csrio_fpu_fflags_bits(exeUnits_5_csrio_fpu_fflags_bits),
    .csrio_fpu_dirty_fs(exeUnits_5_csrio_fpu_dirty_fs),
    .csrio_fpu_frm(exeUnits_5_csrio_fpu_frm),
    .csrio_exception_valid(exeUnits_5_csrio_exception_valid),
    .csrio_exception_bits_uop_cf_pc(exeUnits_5_csrio_exception_bits_uop_cf_pc),
    .csrio_exception_bits_uop_cf_exceptionVec_0(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_0),
    .csrio_exception_bits_uop_cf_exceptionVec_1(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_1),
    .csrio_exception_bits_uop_cf_exceptionVec_2(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_2),
    .csrio_exception_bits_uop_cf_exceptionVec_3(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_3),
    .csrio_exception_bits_uop_cf_exceptionVec_4(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_4),
    .csrio_exception_bits_uop_cf_exceptionVec_5(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_5),
    .csrio_exception_bits_uop_cf_exceptionVec_6(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_6),
    .csrio_exception_bits_uop_cf_exceptionVec_7(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_7),
    .csrio_exception_bits_uop_cf_exceptionVec_8(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_8),
    .csrio_exception_bits_uop_cf_exceptionVec_9(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_9),
    .csrio_exception_bits_uop_cf_exceptionVec_11(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_11),
    .csrio_exception_bits_uop_cf_exceptionVec_12(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_12),
    .csrio_exception_bits_uop_cf_exceptionVec_13(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_13),
    .csrio_exception_bits_uop_cf_exceptionVec_15(exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_15),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_0(exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_1(exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_2(exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .csrio_exception_bits_uop_cf_trigger_frontendHit_3(exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_0(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .csrio_exception_bits_uop_cf_trigger_backendHit_1(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .csrio_exception_bits_uop_cf_trigger_backendHit_2(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .csrio_exception_bits_uop_cf_trigger_backendHit_3(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .csrio_exception_bits_uop_cf_trigger_backendHit_4(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .csrio_exception_bits_uop_cf_trigger_backendHit_5(exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .csrio_exception_bits_uop_cf_crossPageIPFFix(exeUnits_5_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .csrio_exception_bits_uop_ctrl_singleStep(exeUnits_5_csrio_exception_bits_uop_ctrl_singleStep),
    .csrio_exception_bits_isInterrupt(exeUnits_5_csrio_exception_bits_isInterrupt),
    .csrio_isXRet(exeUnits_5_csrio_isXRet),
    .csrio_trapTarget(exeUnits_5_csrio_trapTarget),
    .csrio_interrupt(exeUnits_5_csrio_interrupt),
    .csrio_wfi_event(exeUnits_5_csrio_wfi_event),
    .csrio_memExceptionVAddr(exeUnits_5_csrio_memExceptionVAddr),
    .csrio_externalInterrupt_mtip(exeUnits_5_csrio_externalInterrupt_mtip),
    .csrio_externalInterrupt_msip(exeUnits_5_csrio_externalInterrupt_msip),
    .csrio_externalInterrupt_meip(exeUnits_5_csrio_externalInterrupt_meip),
    .csrio_externalInterrupt_seip(exeUnits_5_csrio_externalInterrupt_seip),
    .csrio_externalInterrupt_debug(exeUnits_5_csrio_externalInterrupt_debug),
    .csrio_tlb_satp_changed(exeUnits_5_csrio_tlb_satp_changed),
    .csrio_tlb_satp_mode(exeUnits_5_csrio_tlb_satp_mode),
    .csrio_tlb_satp_asid(exeUnits_5_csrio_tlb_satp_asid),
    .csrio_tlb_satp_ppn(exeUnits_5_csrio_tlb_satp_ppn),
    .csrio_tlb_priv_mxr(exeUnits_5_csrio_tlb_priv_mxr),
    .csrio_tlb_priv_sum(exeUnits_5_csrio_tlb_priv_sum),
    .csrio_tlb_priv_imode(exeUnits_5_csrio_tlb_priv_imode),
    .csrio_tlb_priv_dmode(exeUnits_5_csrio_tlb_priv_dmode),
    .csrio_customCtrl_l1I_pf_enable(exeUnits_5_csrio_customCtrl_l1I_pf_enable),
    .csrio_customCtrl_icache_parity_enable(exeUnits_5_csrio_customCtrl_icache_parity_enable),
    .csrio_customCtrl_lvpred_disable(exeUnits_5_csrio_customCtrl_lvpred_disable),
    .csrio_customCtrl_no_spec_load(exeUnits_5_csrio_customCtrl_no_spec_load),
    .csrio_customCtrl_storeset_wait_store(exeUnits_5_csrio_customCtrl_storeset_wait_store),
    .csrio_customCtrl_lvpred_timeout(exeUnits_5_csrio_customCtrl_lvpred_timeout),
    .csrio_customCtrl_bp_ctrl_ubtb_enable(exeUnits_5_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .csrio_customCtrl_bp_ctrl_btb_enable(exeUnits_5_csrio_customCtrl_bp_ctrl_btb_enable),
    .csrio_customCtrl_bp_ctrl_tage_enable(exeUnits_5_csrio_customCtrl_bp_ctrl_tage_enable),
    .csrio_customCtrl_bp_ctrl_sc_enable(exeUnits_5_csrio_customCtrl_bp_ctrl_sc_enable),
    .csrio_customCtrl_bp_ctrl_ras_enable(exeUnits_5_csrio_customCtrl_bp_ctrl_ras_enable),
    .csrio_customCtrl_sbuffer_threshold(exeUnits_5_csrio_customCtrl_sbuffer_threshold),
    .csrio_customCtrl_ldld_vio_check_enable(exeUnits_5_csrio_customCtrl_ldld_vio_check_enable),
    .csrio_customCtrl_soft_prefetch_enable(exeUnits_5_csrio_customCtrl_soft_prefetch_enable),
    .csrio_customCtrl_cache_error_enable(exeUnits_5_csrio_customCtrl_cache_error_enable),
    .csrio_customCtrl_svinval_enable(exeUnits_5_csrio_customCtrl_svinval_enable),
    .csrio_customCtrl_distribute_csr_wvalid(exeUnits_5_csrio_customCtrl_distribute_csr_wvalid),
    .csrio_customCtrl_distribute_csr_waddr(exeUnits_5_csrio_customCtrl_distribute_csr_waddr),
    .csrio_customCtrl_distribute_csr_wdata(exeUnits_5_csrio_customCtrl_distribute_csr_wdata),
    .csrio_customCtrl_singlestep(exeUnits_5_csrio_customCtrl_singlestep),
    .csrio_customCtrl_frontend_trigger_t_valid(exeUnits_5_csrio_customCtrl_frontend_trigger_t_valid),
    .csrio_customCtrl_frontend_trigger_t_bits_addr(exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_select(
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_mem_trigger_t_valid(exeUnits_5_csrio_customCtrl_mem_trigger_t_valid),
    .csrio_customCtrl_mem_trigger_t_bits_addr(exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_addr),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType)
      ,
    .csrio_customCtrl_mem_trigger_t_bits_tdata_select(exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_chain(exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .csrio_customCtrl_trigger_enable_0(exeUnits_5_csrio_customCtrl_trigger_enable_0),
    .csrio_customCtrl_trigger_enable_1(exeUnits_5_csrio_customCtrl_trigger_enable_1),
    .csrio_customCtrl_trigger_enable_2(exeUnits_5_csrio_customCtrl_trigger_enable_2),
    .csrio_customCtrl_trigger_enable_3(exeUnits_5_csrio_customCtrl_trigger_enable_3),
    .csrio_customCtrl_trigger_enable_4(exeUnits_5_csrio_customCtrl_trigger_enable_4),
    .csrio_customCtrl_trigger_enable_5(exeUnits_5_csrio_customCtrl_trigger_enable_5),
    .csrio_customCtrl_trigger_enable_6(exeUnits_5_csrio_customCtrl_trigger_enable_6),
    .csrio_customCtrl_trigger_enable_7(exeUnits_5_csrio_customCtrl_trigger_enable_7),
    .csrio_customCtrl_trigger_enable_8(exeUnits_5_csrio_customCtrl_trigger_enable_8),
    .csrio_customCtrl_trigger_enable_9(exeUnits_5_csrio_customCtrl_trigger_enable_9),
    .csrio_distributedUpdate_0_wvalid(exeUnits_5_csrio_distributedUpdate_0_wvalid),
    .csrio_distributedUpdate_0_waddr(exeUnits_5_csrio_distributedUpdate_0_waddr),
    .csrio_distributedUpdate_0_wdata(exeUnits_5_csrio_distributedUpdate_0_wdata),
    .csrio_distributedUpdate_1_wvalid(exeUnits_5_csrio_distributedUpdate_1_wvalid),
    .csrio_distributedUpdate_1_waddr(exeUnits_5_csrio_distributedUpdate_1_waddr),
    .csrio_distributedUpdate_1_wdata(exeUnits_5_csrio_distributedUpdate_1_wdata),
    .fenceio_sfence_valid(exeUnits_5_fenceio_sfence_valid),
    .fenceio_sfence_bits_rs1(exeUnits_5_fenceio_sfence_bits_rs1),
    .fenceio_sfence_bits_rs2(exeUnits_5_fenceio_sfence_bits_rs2),
    .fenceio_sfence_bits_addr(exeUnits_5_fenceio_sfence_bits_addr),
    .fenceio_sfence_bits_asid(exeUnits_5_fenceio_sfence_bits_asid),
    .fenceio_sbuffer_flushSb(exeUnits_5_fenceio_sbuffer_flushSb),
    .fenceio_sbuffer_sbIsEmpty(exeUnits_5_fenceio_sbuffer_sbIsEmpty)
  );
  assign io_issue_4_ready = exeUnits_4_io_fromInt_ready; // @[FUBlock.scala 72:12]
  assign io_issue_5_ready = exeUnits_5_io_fromInt_ready; // @[FUBlock.scala 72:12]
  assign io_writeback_0_bits_data = exeUnits_0_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_redirectValid = exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_0_bits_redirect_cfiUpdate_isMisPred = exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_data = exeUnits_1_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_redirectValid = exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_1_bits_redirect_cfiUpdate_isMisPred = exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_data = exeUnits_2_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_redirectValid = exeUnits_2_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_2_bits_redirect_cfiUpdate_isMisPred = exeUnits_2_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_data = exeUnits_3_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_redirectValid = exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_3_bits_redirect_cfiUpdate_isMisPred = exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_4_valid = exeUnits_4_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_0 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_1 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_2 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_3 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_4 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_cf_trigger_backendHit_5 = exeUnits_4_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_ctrl_rfWen = exeUnits_4_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_ctrl_fpWen = exeUnits_4_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_pdest = exeUnits_4_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_robIdx_flag = exeUnits_4_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_uop_robIdx_value = exeUnits_4_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_4_bits_data = exeUnits_4_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_5_valid = exeUnits_5_io_out_valid; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_exceptionVec_2 = exeUnits_5_io_out_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_exceptionVec_3 = exeUnits_5_io_out_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_exceptionVec_8 = exeUnits_5_io_out_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_exceptionVec_9 = exeUnits_5_io_out_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_exceptionVec_11 = exeUnits_5_io_out_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_0 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_1 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_2 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_3 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_4 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_cf_trigger_backendHit_5 = exeUnits_5_io_out_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_ctrl_rfWen = exeUnits_5_io_out_bits_uop_ctrl_rfWen; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_ctrl_fpWen = exeUnits_5_io_out_bits_uop_ctrl_fpWen; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_ctrl_flushPipe = exeUnits_5_io_out_bits_uop_ctrl_flushPipe; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_pdest = exeUnits_5_io_out_bits_uop_pdest; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_robIdx_flag = exeUnits_5_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_uop_robIdx_value = exeUnits_5_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_data = exeUnits_5_io_out_bits_data; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_fflags = exeUnits_5_io_out_bits_fflags; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_redirectValid = exeUnits_5_io_out_bits_redirectValid; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_redirect_cfiUpdate_isMisPred = exeUnits_5_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 73:16]
  assign io_writeback_5_bits_debug_isPerfCnt = exeUnits_5_io_out_bits_debug_isPerfCnt; // @[FUBlock.scala 73:16]
  assign io_extra_exuRedirect_0_valid = _io_extra_exuRedirect_0_valid_T & exeUnits_5_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC = exeUnits_5_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_brType = exeUnits_5_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isCall = exeUnits_5_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_cf_pd_isRet = exeUnits_5_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_ctrl_imm = exeUnits_5_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_robIdx_flag = exeUnits_5_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_uop_robIdx_value = exeUnits_5_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirectValid = exeUnits_5_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_robIdx_flag = exeUnits_5_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_robIdx_value = exeUnits_5_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag = exeUnits_5_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqIdx_value = exeUnits_5_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_ftqOffset = exeUnits_5_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target = exeUnits_5_io_out_bits_redirect_cfiUpdate_target; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred = exeUnits_5_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_valid = _io_extra_exuRedirect_1_valid_T & exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC = exeUnits_3_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_brType = exeUnits_3_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isCall = exeUnits_3_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_cf_pd_isRet = exeUnits_3_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_ctrl_imm = exeUnits_3_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_robIdx_flag = exeUnits_3_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_uop_robIdx_value = exeUnits_3_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirectValid = exeUnits_3_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_robIdx_flag = exeUnits_3_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_robIdx_value = exeUnits_3_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag = exeUnits_3_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqIdx_value = exeUnits_3_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_ftqOffset = exeUnits_3_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken = exeUnits_3_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred = exeUnits_3_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_valid = _io_extra_exuRedirect_2_valid_T & exeUnits_2_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC = exeUnits_2_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_brType = exeUnits_2_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isCall = exeUnits_2_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_cf_pd_isRet = exeUnits_2_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_ctrl_imm = exeUnits_2_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_robIdx_flag = exeUnits_2_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_uop_robIdx_value = exeUnits_2_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirectValid = exeUnits_2_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_robIdx_flag = exeUnits_2_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_robIdx_value = exeUnits_2_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag = exeUnits_2_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqIdx_value = exeUnits_2_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_ftqOffset = exeUnits_2_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken = exeUnits_2_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred = exeUnits_2_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_valid = _io_extra_exuRedirect_3_valid_T & exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC = exeUnits_1_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_cf_pd_brType = exeUnits_1_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_cf_pd_isCall = exeUnits_1_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_cf_pd_isRet = exeUnits_1_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_ctrl_imm = exeUnits_1_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_robIdx_flag = exeUnits_1_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_uop_robIdx_value = exeUnits_1_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirectValid = exeUnits_1_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_robIdx_flag = exeUnits_1_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_robIdx_value = exeUnits_1_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag = exeUnits_1_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_ftqIdx_value = exeUnits_1_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_ftqOffset = exeUnits_1_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken = exeUnits_1_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred = exeUnits_1_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_valid = _io_extra_exuRedirect_4_valid_T & exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 78:27]
  assign io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC = exeUnits_0_io_out_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_cf_pd_brType = exeUnits_0_io_out_bits_uop_cf_pd_brType; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_cf_pd_isCall = exeUnits_0_io_out_bits_uop_cf_pd_isCall; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_cf_pd_isRet = exeUnits_0_io_out_bits_uop_cf_pd_isRet; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_ctrl_imm = exeUnits_0_io_out_bits_uop_ctrl_imm; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_robIdx_flag = exeUnits_0_io_out_bits_uop_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_uop_robIdx_value = exeUnits_0_io_out_bits_uop_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirectValid = exeUnits_0_io_out_bits_redirectValid; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_robIdx_flag = exeUnits_0_io_out_bits_redirect_robIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_robIdx_value = exeUnits_0_io_out_bits_redirect_robIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag = exeUnits_0_io_out_bits_redirect_ftqIdx_flag; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_ftqIdx_value = exeUnits_0_io_out_bits_redirect_ftqIdx_value; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_ftqOffset = exeUnits_0_io_out_bits_redirect_ftqOffset; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken = exeUnits_0_io_out_bits_redirect_cfiUpdate_taken; // @[FUBlock.scala 79:14]
  assign io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred = exeUnits_0_io_out_bits_redirect_cfiUpdate_isMisPred; // @[FUBlock.scala 79:14]
  assign io_extra_csrio_fpu_frm = exeUnits_5_csrio_fpu_frm; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_isXRet = exeUnits_5_csrio_isXRet; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_trapTarget = exeUnits_5_csrio_trapTarget; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_interrupt = exeUnits_5_csrio_interrupt; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_wfi_event = exeUnits_5_csrio_wfi_event; // @[FUBlock.scala 86:21]
  assign io_extra_csrio_tlb_satp_changed = io_extra_csrio_tlb_REG_1_satp_changed; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_mode = io_extra_csrio_tlb_REG_1_satp_mode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_asid = io_extra_csrio_tlb_REG_1_satp_asid; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_satp_ppn = io_extra_csrio_tlb_REG_1_satp_ppn; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_mxr = io_extra_csrio_tlb_REG_1_priv_mxr; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_sum = io_extra_csrio_tlb_REG_1_priv_sum; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_imode = io_extra_csrio_tlb_REG_1_priv_imode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_tlb_priv_dmode = io_extra_csrio_tlb_REG_1_priv_dmode; // @[FUBlock.scala 90:30]
  assign io_extra_csrio_customCtrl_l1I_pf_enable = io_extra_csrio_customCtrl_REG_1_l1I_pf_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_icache_parity_enable = io_extra_csrio_customCtrl_REG_1_icache_parity_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_lvpred_disable = io_extra_csrio_customCtrl_REG_1_lvpred_disable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_no_spec_load = io_extra_csrio_customCtrl_REG_1_no_spec_load; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_storeset_wait_store = io_extra_csrio_customCtrl_REG_1_storeset_wait_store; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_lvpred_timeout = io_extra_csrio_customCtrl_REG_1_lvpred_timeout; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_btb_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_tage_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_sc_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_bp_ctrl_ras_enable = io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_sbuffer_threshold = io_extra_csrio_customCtrl_REG_1_sbuffer_threshold; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_ldld_vio_check_enable = io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_soft_prefetch_enable = io_extra_csrio_customCtrl_REG_1_soft_prefetch_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_cache_error_enable = io_extra_csrio_customCtrl_REG_1_cache_error_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_svinval_enable = io_extra_csrio_customCtrl_REG_1_svinval_enable; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_wvalid = io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_waddr =
    io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_distribute_csr_wdata =
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_singlestep = io_extra_csrio_customCtrl_REG_1_singlestep; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_valid = io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_valid = io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_addr = io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 =
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_0 = io_extra_csrio_customCtrl_REG_1_trigger_enable_0; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_1 = io_extra_csrio_customCtrl_REG_1_trigger_enable_1; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_2 = io_extra_csrio_customCtrl_REG_1_trigger_enable_2; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_3 = io_extra_csrio_customCtrl_REG_1_trigger_enable_3; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_4 = io_extra_csrio_customCtrl_REG_1_trigger_enable_4; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_5 = io_extra_csrio_customCtrl_REG_1_trigger_enable_5; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_6 = io_extra_csrio_customCtrl_REG_1_trigger_enable_6; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_7 = io_extra_csrio_customCtrl_REG_1_trigger_enable_7; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_8 = io_extra_csrio_customCtrl_REG_1_trigger_enable_8; // @[FUBlock.scala 89:37]
  assign io_extra_csrio_customCtrl_trigger_enable_9 = io_extra_csrio_customCtrl_REG_1_trigger_enable_9; // @[FUBlock.scala 89:37]
  assign io_extra_fenceio_sfence_valid = exeUnits_5_fenceio_sfence_valid; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_rs1 = exeUnits_5_fenceio_sfence_bits_rs1; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_rs2 = exeUnits_5_fenceio_sfence_bits_rs2; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_addr = exeUnits_5_fenceio_sfence_bits_addr; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sfence_bits_asid = exeUnits_5_fenceio_sfence_bits_asid; // @[FUBlock.scala 96:23]
  assign io_extra_fenceio_sbuffer_flushSb = exeUnits_5_fenceio_sbuffer_flushSb; // @[FUBlock.scala 96:23]
  assign exeUnits_0_io_fromInt_valid = io_issue_0_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_0_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_brType = io_issue_0_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isCall = io_issue_0_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pd_isRet = io_issue_0_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_pred_taken = io_issue_0_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_0_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_0_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_cf_ftqOffset = io_issue_0_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_fuType = io_issue_0_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_0_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_ctrl_imm = io_issue_0_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_robIdx_flag = io_issue_0_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_uop_robIdx_value = io_issue_0_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_src_0 = io_issue_0_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_fromInt_bits_src_1 = io_issue_0_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_0_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_1_io_fromInt_valid = io_issue_1_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_1_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_brType = io_issue_1_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isCall = io_issue_1_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pd_isRet = io_issue_1_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_pred_taken = io_issue_1_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_1_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_1_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_cf_ftqOffset = io_issue_1_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_fuType = io_issue_1_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_1_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_ctrl_imm = io_issue_1_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_robIdx_flag = io_issue_1_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_uop_robIdx_value = io_issue_1_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_src_0 = io_issue_1_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_fromInt_bits_src_1 = io_issue_1_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_1_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_2_io_fromInt_valid = io_issue_2_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_2_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_pd_brType = io_issue_2_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_pd_isCall = io_issue_2_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_pd_isRet = io_issue_2_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_pred_taken = io_issue_2_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_2_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_2_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_cf_ftqOffset = io_issue_2_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_fuType = io_issue_2_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_2_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_ctrl_imm = io_issue_2_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_robIdx_flag = io_issue_2_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_uop_robIdx_value = io_issue_2_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_src_0 = io_issue_2_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_fromInt_bits_src_1 = io_issue_2_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_2_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_3_io_fromInt_valid = io_issue_3_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_3_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_brType = io_issue_3_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isCall = io_issue_3_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pd_isRet = io_issue_3_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_pred_taken = io_issue_3_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_3_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_3_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_cf_ftqOffset = io_issue_3_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fuType = io_issue_3_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_3_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_ctrl_imm = io_issue_3_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_robIdx_flag = io_issue_3_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_uop_robIdx_value = io_issue_3_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_src_0 = io_issue_3_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_fromInt_bits_src_1 = io_issue_3_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_3_io_out_ready = 1'h1; // @[FUBlock.scala 73:16]
  assign exeUnits_4_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_4_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_4_io_fromInt_valid = io_issue_4_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_0 = io_issue_4_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_1 = io_issue_4_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_2 = io_issue_4_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_3 = io_issue_4_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_4 = io_issue_4_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_cf_trigger_backendHit_5 = io_issue_4_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_ctrl_fuType = io_issue_4_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_4_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_ctrl_rfWen = io_issue_4_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_ctrl_fpWen = io_issue_4_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_pdest = io_issue_4_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_robIdx_flag = io_issue_4_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_uop_robIdx_value = io_issue_4_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_src_0 = io_issue_4_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_fromInt_bits_src_1 = io_issue_4_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_4_io_redirect_valid = io_redirect_valid; // @[FUBlock.scala 83:21]
  assign exeUnits_4_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[FUBlock.scala 83:21]
  assign exeUnits_4_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[FUBlock.scala 83:21]
  assign exeUnits_4_io_redirect_bits_level = io_redirect_bits_level; // @[FUBlock.scala 83:21]
  assign exeUnits_5_clock = clock; // @[FUBlock.scala 66:74]
  assign exeUnits_5_reset = reset; // @[FUBlock.scala 66:74]
  assign exeUnits_5_io_fromInt_valid = io_issue_5_valid; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pc = io_issue_5_bits_uop_cf_pc; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_0 = io_issue_5_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_1 = io_issue_5_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_2 = io_issue_5_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_3 = io_issue_5_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_4 = io_issue_5_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_trigger_backendHit_5 = io_issue_5_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pd_isRVC = io_issue_5_bits_uop_cf_pd_isRVC; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pd_brType = io_issue_5_bits_uop_cf_pd_brType; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pd_isCall = io_issue_5_bits_uop_cf_pd_isCall; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pd_isRet = io_issue_5_bits_uop_cf_pd_isRet; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_pred_taken = io_issue_5_bits_uop_cf_pred_taken; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_flag = io_issue_5_bits_uop_cf_ftqPtr_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_ftqPtr_value = io_issue_5_bits_uop_cf_ftqPtr_value; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_cf_ftqOffset = io_issue_5_bits_uop_cf_ftqOffset; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fuType = io_issue_5_bits_uop_ctrl_fuType; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fuOpType = io_issue_5_bits_uop_ctrl_fuOpType; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_rfWen = io_issue_5_bits_uop_ctrl_rfWen; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpWen = io_issue_5_bits_uop_ctrl_fpWen; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_imm = io_issue_5_bits_uop_ctrl_imm; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typeTagOut = io_issue_5_bits_uop_ctrl_fpu_typeTagOut; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_fromInt = io_issue_5_bits_uop_ctrl_fpu_fromInt; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_wflags = io_issue_5_bits_uop_ctrl_fpu_wflags; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_typ = io_issue_5_bits_uop_ctrl_fpu_typ; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_ctrl_fpu_rm = io_issue_5_bits_uop_ctrl_fpu_rm; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_pdest = io_issue_5_bits_uop_pdest; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_robIdx_flag = io_issue_5_bits_uop_robIdx_flag; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_uop_robIdx_value = io_issue_5_bits_uop_robIdx_value; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_src_0 = io_issue_5_bits_src_0; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_fromInt_bits_src_1 = io_issue_5_bits_src_1; // @[FUBlock.scala 72:12]
  assign exeUnits_5_io_redirect_valid = io_redirect_valid; // @[FUBlock.scala 83:21]
  assign exeUnits_5_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[FUBlock.scala 83:21]
  assign exeUnits_5_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[FUBlock.scala 83:21]
  assign exeUnits_5_io_redirect_bits_level = io_redirect_bits_level; // @[FUBlock.scala 83:21]
  assign exeUnits_5_io_out_ready = io_writeback_5_ready; // @[FUBlock.scala 73:16]
  assign exeUnits_5_csrio_hartId = io_extra_csrio_hartId; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_0_value = REG_perfEventsFrontend_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_1_value = REG_perfEventsFrontend_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_2_value = REG_perfEventsFrontend_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_3_value = REG_perfEventsFrontend_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_4_value = REG_perfEventsFrontend_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_5_value = REG_perfEventsFrontend_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_6_value = REG_perfEventsFrontend_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsFrontend_7_value = REG_perfEventsFrontend_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_0_value = REG_perfEventsCtrl_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_1_value = REG_perfEventsCtrl_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_2_value = REG_perfEventsCtrl_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_3_value = REG_perfEventsCtrl_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_4_value = REG_perfEventsCtrl_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_5_value = REG_perfEventsCtrl_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_6_value = REG_perfEventsCtrl_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsCtrl_7_value = REG_perfEventsCtrl_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_0_value = REG_perfEventsLsu_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_1_value = REG_perfEventsLsu_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_2_value = REG_perfEventsLsu_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_3_value = REG_perfEventsLsu_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_4_value = REG_perfEventsLsu_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_5_value = REG_perfEventsLsu_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_6_value = REG_perfEventsLsu_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsLsu_7_value = REG_perfEventsLsu_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_0_value = REG_perfEventsHc_0_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_1_value = REG_perfEventsHc_1_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_2_value = REG_perfEventsHc_2_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_3_value = REG_perfEventsHc_3_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_4_value = REG_perfEventsHc_4_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_5_value = REG_perfEventsHc_5_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_6_value = REG_perfEventsHc_6_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_7_value = REG_perfEventsHc_7_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_8_value = REG_perfEventsHc_8_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_9_value = REG_perfEventsHc_9_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_10_value = REG_perfEventsHc_10_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_11_value = REG_perfEventsHc_11_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_12_value = REG_perfEventsHc_12_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_13_value = REG_perfEventsHc_13_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_14_value = REG_perfEventsHc_14_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_15_value = REG_perfEventsHc_15_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_16_value = REG_perfEventsHc_16_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_17_value = REG_perfEventsHc_17_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_18_value = REG_perfEventsHc_18_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_19_value = REG_perfEventsHc_19_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_20_value = REG_perfEventsHc_20_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_21_value = REG_perfEventsHc_21_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_22_value = REG_perfEventsHc_22_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_23_value = REG_perfEventsHc_23_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_24_value = REG_perfEventsHc_24_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_25_value = REG_perfEventsHc_25_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_26_value = REG_perfEventsHc_26_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_27_value = REG_perfEventsHc_27_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_28_value = REG_perfEventsHc_28_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_29_value = REG_perfEventsHc_29_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_30_value = REG_perfEventsHc_30_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_31_value = REG_perfEventsHc_31_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_32_value = REG_perfEventsHc_32_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_33_value = REG_perfEventsHc_33_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_34_value = REG_perfEventsHc_34_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_35_value = REG_perfEventsHc_35_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_36_value = REG_perfEventsHc_36_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_37_value = REG_perfEventsHc_37_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_38_value = REG_perfEventsHc_38_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_39_value = REG_perfEventsHc_39_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_40_value = REG_perfEventsHc_40_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_41_value = REG_perfEventsHc_41_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_42_value = REG_perfEventsHc_42_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_43_value = REG_perfEventsHc_43_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_44_value = REG_perfEventsHc_44_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_45_value = REG_perfEventsHc_45_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_46_value = REG_perfEventsHc_46_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_47_value = REG_perfEventsHc_47_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_48_value = REG_perfEventsHc_48_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_perfEventsHc_49_value = REG_perfEventsHc_49_value; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_perf_retiredInstr = REG_retiredInstr; // @[FUBlock.scala 87:26]
  assign exeUnits_5_csrio_fpu_fflags_valid = io_extra_csrio_fpu_fflags_valid; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_fpu_fflags_bits = io_extra_csrio_fpu_fflags_bits; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_fpu_dirty_fs = io_extra_csrio_fpu_dirty_fs; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_valid = io_extra_csrio_exception_valid; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_pc = io_extra_csrio_exception_bits_uop_cf_pc; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_0 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_1 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_2 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_3 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_4 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_5 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_6 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_7 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_8 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_9 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_11 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_12 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_13 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_exceptionVec_15 = io_extra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_cf_crossPageIPFFix = io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_uop_ctrl_singleStep = io_extra_csrio_exception_bits_uop_ctrl_singleStep; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_exception_bits_isInterrupt = io_extra_csrio_exception_bits_isInterrupt; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_memExceptionVAddr = io_extra_csrio_memExceptionVAddr; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_externalInterrupt_mtip = io_extra_csrio_externalInterrupt_mtip; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_externalInterrupt_msip = io_extra_csrio_externalInterrupt_msip; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_externalInterrupt_meip = io_extra_csrio_externalInterrupt_meip; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_externalInterrupt_seip = io_extra_csrio_externalInterrupt_seip; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_externalInterrupt_debug = io_extra_csrio_externalInterrupt_debug; // @[FUBlock.scala 86:21]
  assign exeUnits_5_csrio_distributedUpdate_0_wvalid = REG_1_0_wvalid; // @[FUBlock.scala 92:39]
  assign exeUnits_5_csrio_distributedUpdate_0_waddr = REG_1_0_waddr; // @[FUBlock.scala 92:39]
  assign exeUnits_5_csrio_distributedUpdate_0_wdata = REG_1_0_wdata; // @[FUBlock.scala 92:39]
  assign exeUnits_5_csrio_distributedUpdate_1_wvalid = REG_1_1_wvalid; // @[FUBlock.scala 92:39]
  assign exeUnits_5_csrio_distributedUpdate_1_waddr = REG_1_1_waddr; // @[FUBlock.scala 92:39]
  assign exeUnits_5_csrio_distributedUpdate_1_wdata = REG_1_1_wdata; // @[FUBlock.scala 92:39]
  assign exeUnits_5_fenceio_sbuffer_sbIsEmpty = io_extra_fenceio_sbuffer_sbIsEmpty; // @[FUBlock.scala 96:23]
  always @(posedge clock) begin
    REG_perfEventsFrontend_0_value <= io_extra_csrio_perf_perfEventsFrontend_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_1_value <= io_extra_csrio_perf_perfEventsFrontend_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_2_value <= io_extra_csrio_perf_perfEventsFrontend_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_3_value <= io_extra_csrio_perf_perfEventsFrontend_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_4_value <= io_extra_csrio_perf_perfEventsFrontend_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_5_value <= io_extra_csrio_perf_perfEventsFrontend_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_6_value <= io_extra_csrio_perf_perfEventsFrontend_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsFrontend_7_value <= io_extra_csrio_perf_perfEventsFrontend_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_0_value <= io_extra_csrio_perf_perfEventsCtrl_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_1_value <= io_extra_csrio_perf_perfEventsCtrl_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_2_value <= io_extra_csrio_perf_perfEventsCtrl_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_3_value <= io_extra_csrio_perf_perfEventsCtrl_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_4_value <= io_extra_csrio_perf_perfEventsCtrl_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_5_value <= io_extra_csrio_perf_perfEventsCtrl_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_6_value <= io_extra_csrio_perf_perfEventsCtrl_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsCtrl_7_value <= io_extra_csrio_perf_perfEventsCtrl_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_0_value <= io_extra_csrio_perf_perfEventsLsu_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_1_value <= io_extra_csrio_perf_perfEventsLsu_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_2_value <= io_extra_csrio_perf_perfEventsLsu_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_3_value <= io_extra_csrio_perf_perfEventsLsu_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_4_value <= io_extra_csrio_perf_perfEventsLsu_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_5_value <= io_extra_csrio_perf_perfEventsLsu_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_6_value <= io_extra_csrio_perf_perfEventsLsu_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsLsu_7_value <= io_extra_csrio_perf_perfEventsLsu_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_0_value <= io_extra_csrio_perf_perfEventsHc_0_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_1_value <= io_extra_csrio_perf_perfEventsHc_1_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_2_value <= io_extra_csrio_perf_perfEventsHc_2_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_3_value <= io_extra_csrio_perf_perfEventsHc_3_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_4_value <= io_extra_csrio_perf_perfEventsHc_4_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_5_value <= io_extra_csrio_perf_perfEventsHc_5_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_6_value <= io_extra_csrio_perf_perfEventsHc_6_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_7_value <= io_extra_csrio_perf_perfEventsHc_7_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_8_value <= io_extra_csrio_perf_perfEventsHc_8_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_9_value <= io_extra_csrio_perf_perfEventsHc_9_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_10_value <= io_extra_csrio_perf_perfEventsHc_10_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_11_value <= io_extra_csrio_perf_perfEventsHc_11_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_12_value <= io_extra_csrio_perf_perfEventsHc_12_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_13_value <= io_extra_csrio_perf_perfEventsHc_13_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_14_value <= io_extra_csrio_perf_perfEventsHc_14_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_15_value <= io_extra_csrio_perf_perfEventsHc_15_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_16_value <= io_extra_csrio_perf_perfEventsHc_16_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_17_value <= io_extra_csrio_perf_perfEventsHc_17_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_18_value <= io_extra_csrio_perf_perfEventsHc_18_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_19_value <= io_extra_csrio_perf_perfEventsHc_19_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_20_value <= io_extra_csrio_perf_perfEventsHc_20_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_21_value <= io_extra_csrio_perf_perfEventsHc_21_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_22_value <= io_extra_csrio_perf_perfEventsHc_22_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_23_value <= io_extra_csrio_perf_perfEventsHc_23_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_24_value <= io_extra_csrio_perf_perfEventsHc_24_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_25_value <= io_extra_csrio_perf_perfEventsHc_25_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_26_value <= io_extra_csrio_perf_perfEventsHc_26_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_27_value <= io_extra_csrio_perf_perfEventsHc_27_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_28_value <= io_extra_csrio_perf_perfEventsHc_28_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_29_value <= io_extra_csrio_perf_perfEventsHc_29_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_30_value <= io_extra_csrio_perf_perfEventsHc_30_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_31_value <= io_extra_csrio_perf_perfEventsHc_31_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_32_value <= io_extra_csrio_perf_perfEventsHc_32_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_33_value <= io_extra_csrio_perf_perfEventsHc_33_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_34_value <= io_extra_csrio_perf_perfEventsHc_34_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_35_value <= io_extra_csrio_perf_perfEventsHc_35_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_36_value <= io_extra_csrio_perf_perfEventsHc_36_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_37_value <= io_extra_csrio_perf_perfEventsHc_37_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_38_value <= io_extra_csrio_perf_perfEventsHc_38_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_39_value <= io_extra_csrio_perf_perfEventsHc_39_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_40_value <= io_extra_csrio_perf_perfEventsHc_40_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_41_value <= io_extra_csrio_perf_perfEventsHc_41_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_42_value <= io_extra_csrio_perf_perfEventsHc_42_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_43_value <= io_extra_csrio_perf_perfEventsHc_43_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_44_value <= io_extra_csrio_perf_perfEventsHc_44_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_45_value <= io_extra_csrio_perf_perfEventsHc_45_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_46_value <= io_extra_csrio_perf_perfEventsHc_46_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_47_value <= io_extra_csrio_perf_perfEventsHc_47_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_48_value <= io_extra_csrio_perf_perfEventsHc_48_value; // @[FUBlock.scala 87:36]
    REG_perfEventsHc_49_value <= io_extra_csrio_perf_perfEventsHc_49_value; // @[FUBlock.scala 87:36]
    REG_retiredInstr <= io_extra_csrio_perf_retiredInstr; // @[FUBlock.scala 87:36]
    io_extra_csrio_customCtrl_REG_l1I_pf_enable <= exeUnits_5_csrio_customCtrl_l1I_pf_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_icache_parity_enable <= exeUnits_5_csrio_customCtrl_icache_parity_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_lvpred_disable <= exeUnits_5_csrio_customCtrl_lvpred_disable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_no_spec_load <= exeUnits_5_csrio_customCtrl_no_spec_load; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_storeset_wait_store <= exeUnits_5_csrio_customCtrl_storeset_wait_store; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_lvpred_timeout <= exeUnits_5_csrio_customCtrl_lvpred_timeout; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable <= exeUnits_5_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable <= exeUnits_5_csrio_customCtrl_bp_ctrl_btb_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable <= exeUnits_5_csrio_customCtrl_bp_ctrl_tage_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable <= exeUnits_5_csrio_customCtrl_bp_ctrl_sc_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable <= exeUnits_5_csrio_customCtrl_bp_ctrl_ras_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_sbuffer_threshold <= exeUnits_5_csrio_customCtrl_sbuffer_threshold; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_ldld_vio_check_enable <= exeUnits_5_csrio_customCtrl_ldld_vio_check_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_soft_prefetch_enable <= exeUnits_5_csrio_customCtrl_soft_prefetch_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_cache_error_enable <= exeUnits_5_csrio_customCtrl_cache_error_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_svinval_enable <= exeUnits_5_csrio_customCtrl_svinval_enable; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_wvalid <= exeUnits_5_csrio_customCtrl_distribute_csr_wvalid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_waddr <= exeUnits_5_csrio_customCtrl_distribute_csr_waddr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_distribute_csr_wdata <= exeUnits_5_csrio_customCtrl_distribute_csr_wdata; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_singlestep <= exeUnits_5_csrio_customCtrl_singlestep; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid <= exeUnits_5_csrio_customCtrl_frontend_trigger_t_valid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2 <=
      exeUnits_5_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_valid <= exeUnits_5_csrio_customCtrl_mem_trigger_t_valid; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr <= exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType <=
      exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select <=
      exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain <=
      exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2 <=
      exeUnits_5_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_0 <= exeUnits_5_csrio_customCtrl_trigger_enable_0; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_1 <= exeUnits_5_csrio_customCtrl_trigger_enable_1; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_2 <= exeUnits_5_csrio_customCtrl_trigger_enable_2; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_3 <= exeUnits_5_csrio_customCtrl_trigger_enable_3; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_4 <= exeUnits_5_csrio_customCtrl_trigger_enable_4; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_5 <= exeUnits_5_csrio_customCtrl_trigger_enable_5; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_6 <= exeUnits_5_csrio_customCtrl_trigger_enable_6; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_7 <= exeUnits_5_csrio_customCtrl_trigger_enable_7; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_8 <= exeUnits_5_csrio_customCtrl_trigger_enable_8; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_trigger_enable_9 <= exeUnits_5_csrio_customCtrl_trigger_enable_9; // @[FUBlock.scala 89:55]
    io_extra_csrio_customCtrl_REG_1_l1I_pf_enable <= io_extra_csrio_customCtrl_REG_l1I_pf_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_icache_parity_enable <= io_extra_csrio_customCtrl_REG_icache_parity_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_lvpred_disable <= io_extra_csrio_customCtrl_REG_lvpred_disable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_no_spec_load <= io_extra_csrio_customCtrl_REG_no_spec_load; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_storeset_wait_store <= io_extra_csrio_customCtrl_REG_storeset_wait_store; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_lvpred_timeout <= io_extra_csrio_customCtrl_REG_lvpred_timeout; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable <= io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_sbuffer_threshold <= io_extra_csrio_customCtrl_REG_sbuffer_threshold; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable <= io_extra_csrio_customCtrl_REG_ldld_vio_check_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_soft_prefetch_enable <= io_extra_csrio_customCtrl_REG_soft_prefetch_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_cache_error_enable <= io_extra_csrio_customCtrl_REG_cache_error_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_svinval_enable <= io_extra_csrio_customCtrl_REG_svinval_enable; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid <= io_extra_csrio_customCtrl_REG_distribute_csr_wvalid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr <=
      io_extra_csrio_customCtrl_REG_distribute_csr_waddr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata <=
      io_extra_csrio_customCtrl_REG_distribute_csr_wdata; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_singlestep <= io_extra_csrio_customCtrl_REG_singlestep; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid <= io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2 <=
      io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid <= io_extra_csrio_customCtrl_REG_mem_trigger_t_valid; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr <= io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2 <=
      io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_0 <= io_extra_csrio_customCtrl_REG_trigger_enable_0; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_1 <= io_extra_csrio_customCtrl_REG_trigger_enable_1; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_2 <= io_extra_csrio_customCtrl_REG_trigger_enable_2; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_3 <= io_extra_csrio_customCtrl_REG_trigger_enable_3; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_4 <= io_extra_csrio_customCtrl_REG_trigger_enable_4; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_5 <= io_extra_csrio_customCtrl_REG_trigger_enable_5; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_6 <= io_extra_csrio_customCtrl_REG_trigger_enable_6; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_7 <= io_extra_csrio_customCtrl_REG_trigger_enable_7; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_8 <= io_extra_csrio_customCtrl_REG_trigger_enable_8; // @[FUBlock.scala 89:47]
    io_extra_csrio_customCtrl_REG_1_trigger_enable_9 <= io_extra_csrio_customCtrl_REG_trigger_enable_9; // @[FUBlock.scala 89:47]
    io_extra_csrio_tlb_REG_satp_changed <= exeUnits_5_csrio_tlb_satp_changed; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_mode <= exeUnits_5_csrio_tlb_satp_mode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_asid <= exeUnits_5_csrio_tlb_satp_asid; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_satp_ppn <= exeUnits_5_csrio_tlb_satp_ppn; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_mxr <= exeUnits_5_csrio_tlb_priv_mxr; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_sum <= exeUnits_5_csrio_tlb_priv_sum; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_imode <= exeUnits_5_csrio_tlb_priv_imode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_priv_dmode <= exeUnits_5_csrio_tlb_priv_dmode; // @[FUBlock.scala 90:48]
    io_extra_csrio_tlb_REG_1_satp_changed <= io_extra_csrio_tlb_REG_satp_changed; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_mode <= io_extra_csrio_tlb_REG_satp_mode; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_asid <= io_extra_csrio_tlb_REG_satp_asid; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_satp_ppn <= io_extra_csrio_tlb_REG_satp_ppn; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_mxr <= io_extra_csrio_tlb_REG_priv_mxr; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_sum <= io_extra_csrio_tlb_REG_priv_sum; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_imode <= io_extra_csrio_tlb_REG_priv_imode; // @[FUBlock.scala 90:40]
    io_extra_csrio_tlb_REG_1_priv_dmode <= io_extra_csrio_tlb_REG_priv_dmode; // @[FUBlock.scala 90:40]
    REG_1_0_wvalid <= io_extra_csrio_distributedUpdate_0_wvalid; // @[FUBlock.scala 92:49]
    REG_1_0_waddr <= io_extra_csrio_distributedUpdate_0_waddr; // @[FUBlock.scala 92:49]
    REG_1_0_wdata <= io_extra_csrio_distributedUpdate_0_wdata; // @[FUBlock.scala 92:49]
    REG_1_1_wvalid <= io_extra_csrio_distributedUpdate_1_wvalid; // @[FUBlock.scala 92:49]
    REG_1_1_waddr <= io_extra_csrio_distributedUpdate_1_waddr; // @[FUBlock.scala 92:49]
    REG_1_1_wdata <= io_extra_csrio_distributedUpdate_1_wdata; // @[FUBlock.scala 92:49]
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
  REG_perfEventsFrontend_0_value = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  REG_perfEventsFrontend_1_value = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  REG_perfEventsFrontend_2_value = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  REG_perfEventsFrontend_3_value = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  REG_perfEventsFrontend_4_value = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  REG_perfEventsFrontend_5_value = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  REG_perfEventsFrontend_6_value = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  REG_perfEventsFrontend_7_value = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  REG_perfEventsCtrl_0_value = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  REG_perfEventsCtrl_1_value = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  REG_perfEventsCtrl_2_value = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  REG_perfEventsCtrl_3_value = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  REG_perfEventsCtrl_4_value = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  REG_perfEventsCtrl_5_value = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  REG_perfEventsCtrl_6_value = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  REG_perfEventsCtrl_7_value = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  REG_perfEventsLsu_0_value = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  REG_perfEventsLsu_1_value = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  REG_perfEventsLsu_2_value = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  REG_perfEventsLsu_3_value = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  REG_perfEventsLsu_4_value = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  REG_perfEventsLsu_5_value = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  REG_perfEventsLsu_6_value = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  REG_perfEventsLsu_7_value = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  REG_perfEventsHc_0_value = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  REG_perfEventsHc_1_value = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  REG_perfEventsHc_2_value = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  REG_perfEventsHc_3_value = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  REG_perfEventsHc_4_value = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  REG_perfEventsHc_5_value = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  REG_perfEventsHc_6_value = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  REG_perfEventsHc_7_value = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  REG_perfEventsHc_8_value = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  REG_perfEventsHc_9_value = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  REG_perfEventsHc_10_value = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  REG_perfEventsHc_11_value = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  REG_perfEventsHc_12_value = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  REG_perfEventsHc_13_value = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  REG_perfEventsHc_14_value = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  REG_perfEventsHc_15_value = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  REG_perfEventsHc_16_value = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  REG_perfEventsHc_17_value = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  REG_perfEventsHc_18_value = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  REG_perfEventsHc_19_value = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  REG_perfEventsHc_20_value = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  REG_perfEventsHc_21_value = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  REG_perfEventsHc_22_value = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  REG_perfEventsHc_23_value = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  REG_perfEventsHc_24_value = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  REG_perfEventsHc_25_value = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  REG_perfEventsHc_26_value = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  REG_perfEventsHc_27_value = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  REG_perfEventsHc_28_value = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  REG_perfEventsHc_29_value = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  REG_perfEventsHc_30_value = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  REG_perfEventsHc_31_value = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  REG_perfEventsHc_32_value = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  REG_perfEventsHc_33_value = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  REG_perfEventsHc_34_value = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  REG_perfEventsHc_35_value = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  REG_perfEventsHc_36_value = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  REG_perfEventsHc_37_value = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  REG_perfEventsHc_38_value = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  REG_perfEventsHc_39_value = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  REG_perfEventsHc_40_value = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  REG_perfEventsHc_41_value = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  REG_perfEventsHc_42_value = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  REG_perfEventsHc_43_value = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  REG_perfEventsHc_44_value = _RAND_68[5:0];
  _RAND_69 = {1{`RANDOM}};
  REG_perfEventsHc_45_value = _RAND_69[5:0];
  _RAND_70 = {1{`RANDOM}};
  REG_perfEventsHc_46_value = _RAND_70[5:0];
  _RAND_71 = {1{`RANDOM}};
  REG_perfEventsHc_47_value = _RAND_71[5:0];
  _RAND_72 = {1{`RANDOM}};
  REG_perfEventsHc_48_value = _RAND_72[5:0];
  _RAND_73 = {1{`RANDOM}};
  REG_perfEventsHc_49_value = _RAND_73[5:0];
  _RAND_74 = {1{`RANDOM}};
  REG_retiredInstr = _RAND_74[2:0];
  _RAND_75 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_l1I_pf_enable = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_icache_parity_enable = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_lvpred_disable = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_no_spec_load = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_storeset_wait_store = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_lvpred_timeout = _RAND_80[4:0];
  _RAND_81 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_ubtb_enable = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_btb_enable = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_tage_enable = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_sc_enable = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_bp_ctrl_ras_enable = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_sbuffer_threshold = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_ldld_vio_check_enable = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_soft_prefetch_enable = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_cache_error_enable = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_svinval_enable = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_wvalid = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_waddr = _RAND_92[11:0];
  _RAND_93 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_distribute_csr_wdata = _RAND_93[63:0];
  _RAND_94 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_singlestep = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_valid = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_addr = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_matchType = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_select = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_timing = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_chain = _RAND_100[0:0];
  _RAND_101 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_frontend_trigger_t_bits_tdata_tdata2 = _RAND_101[63:0];
  _RAND_102 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_valid = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_addr = _RAND_103[2:0];
  _RAND_104 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_matchType = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_select = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_chain = _RAND_106[0:0];
  _RAND_107 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_mem_trigger_t_bits_tdata_tdata2 = _RAND_107[63:0];
  _RAND_108 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_2 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_3 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_4 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_5 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_6 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_7 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_8 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_trigger_enable_9 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_l1I_pf_enable = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_icache_parity_enable = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_lvpred_disable = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_no_spec_load = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_storeset_wait_store = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_lvpred_timeout = _RAND_123[4:0];
  _RAND_124 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ubtb_enable = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_btb_enable = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_tage_enable = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_sc_enable = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_bp_ctrl_ras_enable = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_sbuffer_threshold = _RAND_129[3:0];
  _RAND_130 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_ldld_vio_check_enable = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_soft_prefetch_enable = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_cache_error_enable = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_svinval_enable = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_wvalid = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_waddr = _RAND_135[11:0];
  _RAND_136 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_distribute_csr_wdata = _RAND_136[63:0];
  _RAND_137 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_singlestep = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_valid = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_addr = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_matchType = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_select = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_timing = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_chain = _RAND_143[0:0];
  _RAND_144 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_frontend_trigger_t_bits_tdata_tdata2 = _RAND_144[63:0];
  _RAND_145 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_valid = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_addr = _RAND_146[2:0];
  _RAND_147 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_matchType = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_select = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_chain = _RAND_149[0:0];
  _RAND_150 = {2{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_mem_trigger_t_bits_tdata_tdata2 = _RAND_150[63:0];
  _RAND_151 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_0 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_1 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_2 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_3 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_4 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_5 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_6 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_7 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_8 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  io_extra_csrio_customCtrl_REG_1_trigger_enable_9 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_changed = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_mode = _RAND_162[3:0];
  _RAND_163 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_asid = _RAND_163[15:0];
  _RAND_164 = {2{`RANDOM}};
  io_extra_csrio_tlb_REG_satp_ppn = _RAND_164[43:0];
  _RAND_165 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_mxr = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_sum = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_imode = _RAND_167[1:0];
  _RAND_168 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_priv_dmode = _RAND_168[1:0];
  _RAND_169 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_changed = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_mode = _RAND_170[3:0];
  _RAND_171 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_asid = _RAND_171[15:0];
  _RAND_172 = {2{`RANDOM}};
  io_extra_csrio_tlb_REG_1_satp_ppn = _RAND_172[43:0];
  _RAND_173 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_mxr = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_sum = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_imode = _RAND_175[1:0];
  _RAND_176 = {1{`RANDOM}};
  io_extra_csrio_tlb_REG_1_priv_dmode = _RAND_176[1:0];
  _RAND_177 = {1{`RANDOM}};
  REG_1_0_wvalid = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  REG_1_0_waddr = _RAND_178[11:0];
  _RAND_179 = {2{`RANDOM}};
  REG_1_0_wdata = _RAND_179[63:0];
  _RAND_180 = {1{`RANDOM}};
  REG_1_1_wvalid = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  REG_1_1_waddr = _RAND_181[11:0];
  _RAND_182 = {2{`RANDOM}};
  REG_1_1_wdata = _RAND_182[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
