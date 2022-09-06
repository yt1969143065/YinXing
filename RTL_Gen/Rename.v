module Rename(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_robCommits_isWalk,
  input         io_robCommits_valid_0,
  input         io_robCommits_valid_1,
  input         io_robCommits_valid_2,
  input         io_robCommits_valid_3,
  input         io_robCommits_info_0_rfWen,
  input         io_robCommits_info_0_fpWen,
  input  [6:0]  io_robCommits_info_0_pdest,
  input  [6:0]  io_robCommits_info_0_old_pdest,
  input         io_robCommits_info_1_rfWen,
  input         io_robCommits_info_1_fpWen,
  input  [6:0]  io_robCommits_info_1_pdest,
  input  [6:0]  io_robCommits_info_1_old_pdest,
  input         io_robCommits_info_2_rfWen,
  input         io_robCommits_info_2_fpWen,
  input  [6:0]  io_robCommits_info_2_pdest,
  input  [6:0]  io_robCommits_info_2_old_pdest,
  input         io_robCommits_info_3_rfWen,
  input         io_robCommits_info_3_fpWen,
  input  [6:0]  io_robCommits_info_3_pdest,
  input  [6:0]  io_robCommits_info_3_old_pdest,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [9:0]  io_in_0_bits_cf_foldpc,
  input         io_in_0_bits_cf_exceptionVec_1,
  input         io_in_0_bits_cf_exceptionVec_2,
  input         io_in_0_bits_cf_exceptionVec_12,
  input         io_in_0_bits_cf_trigger_frontendHit_0,
  input         io_in_0_bits_cf_trigger_frontendHit_1,
  input         io_in_0_bits_cf_trigger_frontendHit_2,
  input         io_in_0_bits_cf_trigger_frontendHit_3,
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
  input         io_in_0_bits_cf_crossPageIPFFix,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [1:0]  io_in_0_bits_ctrl_srcType_2,
  input  [4:0]  io_in_0_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_0_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_0_bits_ctrl_ldest,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input         io_in_0_bits_ctrl_isRVCORETrap,
  input         io_in_0_bits_ctrl_noSpecExec,
  input         io_in_0_bits_ctrl_blockBackward,
  input         io_in_0_bits_ctrl_flushPipe,
  input  [3:0]  io_in_0_bits_ctrl_selImm,
  input  [19:0] io_in_0_bits_ctrl_imm,
  input  [2:0]  io_in_0_bits_ctrl_commitType,
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
  input         io_in_0_bits_ctrl_isMove,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [9:0]  io_in_1_bits_cf_foldpc,
  input         io_in_1_bits_cf_exceptionVec_1,
  input         io_in_1_bits_cf_exceptionVec_2,
  input         io_in_1_bits_cf_exceptionVec_12,
  input         io_in_1_bits_cf_trigger_frontendHit_0,
  input         io_in_1_bits_cf_trigger_frontendHit_1,
  input         io_in_1_bits_cf_trigger_frontendHit_2,
  input         io_in_1_bits_cf_trigger_frontendHit_3,
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
  input         io_in_1_bits_cf_crossPageIPFFix,
  input         io_in_1_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_1_bits_cf_ftqOffset,
  input  [1:0]  io_in_1_bits_ctrl_srcType_0,
  input  [1:0]  io_in_1_bits_ctrl_srcType_1,
  input  [1:0]  io_in_1_bits_ctrl_srcType_2,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_1_bits_ctrl_lsrc_2,
  input  [4:0]  io_in_1_bits_ctrl_ldest,
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input         io_in_1_bits_ctrl_isRVCORETrap,
  input         io_in_1_bits_ctrl_noSpecExec,
  input         io_in_1_bits_ctrl_blockBackward,
  input         io_in_1_bits_ctrl_flushPipe,
  input  [3:0]  io_in_1_bits_ctrl_selImm,
  input  [19:0] io_in_1_bits_ctrl_imm,
  input  [2:0]  io_in_1_bits_ctrl_commitType,
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
  input         io_in_1_bits_ctrl_isMove,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [9:0]  io_in_2_bits_cf_foldpc,
  input         io_in_2_bits_cf_exceptionVec_1,
  input         io_in_2_bits_cf_exceptionVec_2,
  input         io_in_2_bits_cf_exceptionVec_12,
  input         io_in_2_bits_cf_trigger_frontendHit_0,
  input         io_in_2_bits_cf_trigger_frontendHit_1,
  input         io_in_2_bits_cf_trigger_frontendHit_2,
  input         io_in_2_bits_cf_trigger_frontendHit_3,
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
  input         io_in_2_bits_cf_crossPageIPFFix,
  input         io_in_2_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_2_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_2_bits_cf_ftqOffset,
  input  [1:0]  io_in_2_bits_ctrl_srcType_0,
  input  [1:0]  io_in_2_bits_ctrl_srcType_1,
  input  [1:0]  io_in_2_bits_ctrl_srcType_2,
  input  [4:0]  io_in_2_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_2_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_2_bits_ctrl_lsrc_2,
  input  [4:0]  io_in_2_bits_ctrl_ldest,
  input  [3:0]  io_in_2_bits_ctrl_fuType,
  input  [6:0]  io_in_2_bits_ctrl_fuOpType,
  input         io_in_2_bits_ctrl_rfWen,
  input         io_in_2_bits_ctrl_fpWen,
  input         io_in_2_bits_ctrl_isRVCORETrap,
  input         io_in_2_bits_ctrl_noSpecExec,
  input         io_in_2_bits_ctrl_blockBackward,
  input         io_in_2_bits_ctrl_flushPipe,
  input  [3:0]  io_in_2_bits_ctrl_selImm,
  input  [19:0] io_in_2_bits_ctrl_imm,
  input  [2:0]  io_in_2_bits_ctrl_commitType,
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
  input         io_in_2_bits_ctrl_isMove,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [9:0]  io_in_3_bits_cf_foldpc,
  input         io_in_3_bits_cf_exceptionVec_1,
  input         io_in_3_bits_cf_exceptionVec_2,
  input         io_in_3_bits_cf_exceptionVec_12,
  input         io_in_3_bits_cf_trigger_frontendHit_0,
  input         io_in_3_bits_cf_trigger_frontendHit_1,
  input         io_in_3_bits_cf_trigger_frontendHit_2,
  input         io_in_3_bits_cf_trigger_frontendHit_3,
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
  input         io_in_3_bits_cf_crossPageIPFFix,
  input         io_in_3_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_3_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_3_bits_cf_ftqOffset,
  input  [1:0]  io_in_3_bits_ctrl_srcType_0,
  input  [1:0]  io_in_3_bits_ctrl_srcType_1,
  input  [1:0]  io_in_3_bits_ctrl_srcType_2,
  input  [4:0]  io_in_3_bits_ctrl_lsrc_0,
  input  [4:0]  io_in_3_bits_ctrl_lsrc_1,
  input  [4:0]  io_in_3_bits_ctrl_lsrc_2,
  input  [4:0]  io_in_3_bits_ctrl_ldest,
  input  [3:0]  io_in_3_bits_ctrl_fuType,
  input  [6:0]  io_in_3_bits_ctrl_fuOpType,
  input         io_in_3_bits_ctrl_rfWen,
  input         io_in_3_bits_ctrl_fpWen,
  input         io_in_3_bits_ctrl_isRVCORETrap,
  input         io_in_3_bits_ctrl_noSpecExec,
  input         io_in_3_bits_ctrl_blockBackward,
  input         io_in_3_bits_ctrl_flushPipe,
  input  [3:0]  io_in_3_bits_ctrl_selImm,
  input  [19:0] io_in_3_bits_ctrl_imm,
  input  [2:0]  io_in_3_bits_ctrl_commitType,
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
  input         io_in_3_bits_ctrl_isMove,
  input         io_ssit_0_valid,
  input  [4:0]  io_ssit_0_ssid,
  input         io_ssit_0_strict,
  input         io_ssit_1_valid,
  input  [4:0]  io_ssit_1_ssid,
  input         io_ssit_1_strict,
  input         io_ssit_2_valid,
  input  [4:0]  io_ssit_2_ssid,
  input         io_ssit_2_strict,
  input         io_ssit_3_valid,
  input  [4:0]  io_ssit_3_ssid,
  input         io_ssit_3_strict,
  input  [6:0]  io_intReadPorts_0_0,
  input  [6:0]  io_intReadPorts_0_1,
  input  [6:0]  io_intReadPorts_0_2,
  input  [6:0]  io_intReadPorts_1_0,
  input  [6:0]  io_intReadPorts_1_1,
  input  [6:0]  io_intReadPorts_1_2,
  input  [6:0]  io_intReadPorts_2_0,
  input  [6:0]  io_intReadPorts_2_1,
  input  [6:0]  io_intReadPorts_2_2,
  input  [6:0]  io_intReadPorts_3_0,
  input  [6:0]  io_intReadPorts_3_1,
  input  [6:0]  io_intReadPorts_3_2,
  input  [6:0]  io_fpReadPorts_0_0,
  input  [6:0]  io_fpReadPorts_0_1,
  input  [6:0]  io_fpReadPorts_0_2,
  input  [6:0]  io_fpReadPorts_0_3,
  input  [6:0]  io_fpReadPorts_1_0,
  input  [6:0]  io_fpReadPorts_1_1,
  input  [6:0]  io_fpReadPorts_1_2,
  input  [6:0]  io_fpReadPorts_1_3,
  input  [6:0]  io_fpReadPorts_2_0,
  input  [6:0]  io_fpReadPorts_2_1,
  input  [6:0]  io_fpReadPorts_2_2,
  input  [6:0]  io_fpReadPorts_2_3,
  input  [6:0]  io_fpReadPorts_3_0,
  input  [6:0]  io_fpReadPorts_3_1,
  input  [6:0]  io_fpReadPorts_3_2,
  input  [6:0]  io_fpReadPorts_3_3,
  output        io_intRenamePorts_0_wen,
  output [4:0]  io_intRenamePorts_0_addr,
  output [6:0]  io_intRenamePorts_0_data,
  output        io_intRenamePorts_1_wen,
  output [4:0]  io_intRenamePorts_1_addr,
  output [6:0]  io_intRenamePorts_1_data,
  output        io_intRenamePorts_2_wen,
  output [4:0]  io_intRenamePorts_2_addr,
  output [6:0]  io_intRenamePorts_2_data,
  output        io_intRenamePorts_3_wen,
  output [4:0]  io_intRenamePorts_3_addr,
  output [6:0]  io_intRenamePorts_3_data,
  output        io_fpRenamePorts_0_wen,
  output [4:0]  io_fpRenamePorts_0_addr,
  output [6:0]  io_fpRenamePorts_0_data,
  output        io_fpRenamePorts_1_wen,
  output [4:0]  io_fpRenamePorts_1_addr,
  output [6:0]  io_fpRenamePorts_1_data,
  output        io_fpRenamePorts_2_wen,
  output [4:0]  io_fpRenamePorts_2_addr,
  output [6:0]  io_fpRenamePorts_2_data,
  output        io_fpRenamePorts_3_wen,
  output [4:0]  io_fpRenamePorts_3_addr,
  output [6:0]  io_fpRenamePorts_3_data,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output        io_out_0_bits_cf_exceptionVec_1,
  output        io_out_0_bits_cf_exceptionVec_2,
  output        io_out_0_bits_cf_exceptionVec_12,
  output        io_out_0_bits_cf_trigger_frontendHit_0,
  output        io_out_0_bits_cf_trigger_frontendHit_1,
  output        io_out_0_bits_cf_trigger_frontendHit_2,
  output        io_out_0_bits_cf_trigger_frontendHit_3,
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
  output        io_out_0_bits_cf_crossPageIPFFix,
  output        io_out_0_bits_cf_storeSetHit,
  output        io_out_0_bits_cf_loadWaitStrict,
  output [4:0]  io_out_0_bits_cf_ssid,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [1:0]  io_out_0_bits_ctrl_srcType_1,
  output [1:0]  io_out_0_bits_ctrl_srcType_2,
  output [4:0]  io_out_0_bits_ctrl_ldest,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output        io_out_0_bits_ctrl_isRVCORETrap,
  output        io_out_0_bits_ctrl_noSpecExec,
  output        io_out_0_bits_ctrl_blockBackward,
  output        io_out_0_bits_ctrl_flushPipe,
  output [3:0]  io_out_0_bits_ctrl_selImm,
  output [19:0] io_out_0_bits_ctrl_imm,
  output [2:0]  io_out_0_bits_ctrl_commitType,
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
  output        io_out_0_bits_ctrl_isMove,
  output [6:0]  io_out_0_bits_psrc_0,
  output [6:0]  io_out_0_bits_psrc_1,
  output [6:0]  io_out_0_bits_psrc_2,
  output [6:0]  io_out_0_bits_pdest,
  output [6:0]  io_out_0_bits_old_pdest,
  output        io_out_0_bits_robIdx_flag,
  output [6:0]  io_out_0_bits_robIdx_value,
  output        io_out_0_bits_eliminatedMove,
  output        io_out_1_valid,
  output        io_out_1_bits_cf_exceptionVec_1,
  output        io_out_1_bits_cf_exceptionVec_2,
  output        io_out_1_bits_cf_exceptionVec_12,
  output        io_out_1_bits_cf_trigger_frontendHit_0,
  output        io_out_1_bits_cf_trigger_frontendHit_1,
  output        io_out_1_bits_cf_trigger_frontendHit_2,
  output        io_out_1_bits_cf_trigger_frontendHit_3,
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
  output        io_out_1_bits_cf_crossPageIPFFix,
  output        io_out_1_bits_cf_storeSetHit,
  output        io_out_1_bits_cf_loadWaitStrict,
  output [4:0]  io_out_1_bits_cf_ssid,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [1:0]  io_out_1_bits_ctrl_srcType_1,
  output [1:0]  io_out_1_bits_ctrl_srcType_2,
  output [4:0]  io_out_1_bits_ctrl_ldest,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output        io_out_1_bits_ctrl_isRVCORETrap,
  output        io_out_1_bits_ctrl_noSpecExec,
  output        io_out_1_bits_ctrl_blockBackward,
  output        io_out_1_bits_ctrl_flushPipe,
  output [3:0]  io_out_1_bits_ctrl_selImm,
  output [19:0] io_out_1_bits_ctrl_imm,
  output [2:0]  io_out_1_bits_ctrl_commitType,
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
  output        io_out_1_bits_ctrl_isMove,
  output [6:0]  io_out_1_bits_psrc_0,
  output [6:0]  io_out_1_bits_psrc_1,
  output [6:0]  io_out_1_bits_psrc_2,
  output [6:0]  io_out_1_bits_pdest,
  output [6:0]  io_out_1_bits_old_pdest,
  output        io_out_1_bits_robIdx_flag,
  output [6:0]  io_out_1_bits_robIdx_value,
  output        io_out_1_bits_eliminatedMove,
  output        io_out_2_valid,
  output        io_out_2_bits_cf_exceptionVec_1,
  output        io_out_2_bits_cf_exceptionVec_2,
  output        io_out_2_bits_cf_exceptionVec_12,
  output        io_out_2_bits_cf_trigger_frontendHit_0,
  output        io_out_2_bits_cf_trigger_frontendHit_1,
  output        io_out_2_bits_cf_trigger_frontendHit_2,
  output        io_out_2_bits_cf_trigger_frontendHit_3,
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
  output        io_out_2_bits_cf_crossPageIPFFix,
  output        io_out_2_bits_cf_storeSetHit,
  output        io_out_2_bits_cf_loadWaitStrict,
  output [4:0]  io_out_2_bits_cf_ssid,
  output        io_out_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_2_bits_cf_ftqPtr_value,
  output [2:0]  io_out_2_bits_cf_ftqOffset,
  output [1:0]  io_out_2_bits_ctrl_srcType_0,
  output [1:0]  io_out_2_bits_ctrl_srcType_1,
  output [1:0]  io_out_2_bits_ctrl_srcType_2,
  output [4:0]  io_out_2_bits_ctrl_ldest,
  output [3:0]  io_out_2_bits_ctrl_fuType,
  output [6:0]  io_out_2_bits_ctrl_fuOpType,
  output        io_out_2_bits_ctrl_rfWen,
  output        io_out_2_bits_ctrl_fpWen,
  output        io_out_2_bits_ctrl_isRVCORETrap,
  output        io_out_2_bits_ctrl_noSpecExec,
  output        io_out_2_bits_ctrl_blockBackward,
  output        io_out_2_bits_ctrl_flushPipe,
  output [3:0]  io_out_2_bits_ctrl_selImm,
  output [19:0] io_out_2_bits_ctrl_imm,
  output [2:0]  io_out_2_bits_ctrl_commitType,
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
  output        io_out_2_bits_ctrl_isMove,
  output [6:0]  io_out_2_bits_psrc_0,
  output [6:0]  io_out_2_bits_psrc_1,
  output [6:0]  io_out_2_bits_psrc_2,
  output [6:0]  io_out_2_bits_pdest,
  output [6:0]  io_out_2_bits_old_pdest,
  output        io_out_2_bits_robIdx_flag,
  output [6:0]  io_out_2_bits_robIdx_value,
  output        io_out_2_bits_eliminatedMove,
  output        io_out_3_valid,
  output        io_out_3_bits_cf_exceptionVec_1,
  output        io_out_3_bits_cf_exceptionVec_2,
  output        io_out_3_bits_cf_exceptionVec_12,
  output        io_out_3_bits_cf_trigger_frontendHit_0,
  output        io_out_3_bits_cf_trigger_frontendHit_1,
  output        io_out_3_bits_cf_trigger_frontendHit_2,
  output        io_out_3_bits_cf_trigger_frontendHit_3,
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
  output        io_out_3_bits_cf_crossPageIPFFix,
  output        io_out_3_bits_cf_storeSetHit,
  output        io_out_3_bits_cf_loadWaitStrict,
  output [4:0]  io_out_3_bits_cf_ssid,
  output        io_out_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_3_bits_cf_ftqPtr_value,
  output [2:0]  io_out_3_bits_cf_ftqOffset,
  output [1:0]  io_out_3_bits_ctrl_srcType_0,
  output [1:0]  io_out_3_bits_ctrl_srcType_1,
  output [1:0]  io_out_3_bits_ctrl_srcType_2,
  output [4:0]  io_out_3_bits_ctrl_ldest,
  output [3:0]  io_out_3_bits_ctrl_fuType,
  output [6:0]  io_out_3_bits_ctrl_fuOpType,
  output        io_out_3_bits_ctrl_rfWen,
  output        io_out_3_bits_ctrl_fpWen,
  output        io_out_3_bits_ctrl_isRVCORETrap,
  output        io_out_3_bits_ctrl_noSpecExec,
  output        io_out_3_bits_ctrl_blockBackward,
  output        io_out_3_bits_ctrl_flushPipe,
  output [3:0]  io_out_3_bits_ctrl_selImm,
  output [19:0] io_out_3_bits_ctrl_imm,
  output [2:0]  io_out_3_bits_ctrl_commitType,
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
  output        io_out_3_bits_ctrl_isMove,
  output [6:0]  io_out_3_bits_psrc_0,
  output [6:0]  io_out_3_bits_psrc_1,
  output [6:0]  io_out_3_bits_psrc_2,
  output [6:0]  io_out_3_bits_pdest,
  output [6:0]  io_out_3_bits_old_pdest,
  output        io_out_3_bits_robIdx_flag,
  output [6:0]  io_out_3_bits_robIdx_value,
  output        io_out_3_bits_eliminatedMove,
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
  output [5:0]  io_perf_12_value,
  output [5:0]  io_perf_13_value
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
`endif // RANDOMIZE_REG_INIT
  wire  intFreeList_clock; // @[Rename.scala 50:27]
  wire  intFreeList_reset; // @[Rename.scala 50:27]
  wire  intFreeList_io_redirect; // @[Rename.scala 50:27]
  wire  intFreeList_io_walk; // @[Rename.scala 50:27]
  wire  intFreeList_io_allocateReq_0; // @[Rename.scala 50:27]
  wire  intFreeList_io_allocateReq_1; // @[Rename.scala 50:27]
  wire  intFreeList_io_allocateReq_2; // @[Rename.scala 50:27]
  wire  intFreeList_io_allocateReq_3; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_allocatePhyReg_0; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_allocatePhyReg_1; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_allocatePhyReg_2; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_allocatePhyReg_3; // @[Rename.scala 50:27]
  wire  intFreeList_io_canAllocate; // @[Rename.scala 50:27]
  wire  intFreeList_io_doAllocate; // @[Rename.scala 50:27]
  wire  intFreeList_io_freeReq_0; // @[Rename.scala 50:27]
  wire  intFreeList_io_freeReq_1; // @[Rename.scala 50:27]
  wire  intFreeList_io_freeReq_2; // @[Rename.scala 50:27]
  wire  intFreeList_io_freeReq_3; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_freePhyReg_0; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_freePhyReg_1; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_freePhyReg_2; // @[Rename.scala 50:27]
  wire [6:0] intFreeList_io_freePhyReg_3; // @[Rename.scala 50:27]
  wire [5:0] intFreeList_io_perf_0_value; // @[Rename.scala 50:27]
  wire [5:0] intFreeList_io_perf_1_value; // @[Rename.scala 50:27]
  wire [5:0] intFreeList_io_perf_2_value; // @[Rename.scala 50:27]
  wire [5:0] intFreeList_io_perf_3_value; // @[Rename.scala 50:27]
  wire  intRefCounter_clock; // @[Rename.scala 51:29]
  wire  intRefCounter_reset; // @[Rename.scala 51:29]
  wire  intRefCounter_io_allocate_0_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_allocate_0_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_allocate_1_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_allocate_1_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_allocate_2_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_allocate_2_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_allocate_3_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_allocate_3_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_deallocate_0_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_deallocate_0_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_deallocate_1_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_deallocate_1_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_deallocate_2_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_deallocate_2_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_deallocate_3_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_deallocate_3_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_freeRegs_0_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_freeRegs_0_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_freeRegs_1_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_freeRegs_1_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_freeRegs_2_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_freeRegs_2_bits; // @[Rename.scala 51:29]
  wire  intRefCounter_io_freeRegs_3_valid; // @[Rename.scala 51:29]
  wire [6:0] intRefCounter_io_freeRegs_3_bits; // @[Rename.scala 51:29]
  wire  fpFreeList_clock; // @[Rename.scala 52:26]
  wire  fpFreeList_reset; // @[Rename.scala 52:26]
  wire  fpFreeList_io_redirect; // @[Rename.scala 52:26]
  wire  fpFreeList_io_walk; // @[Rename.scala 52:26]
  wire  fpFreeList_io_allocateReq_0; // @[Rename.scala 52:26]
  wire  fpFreeList_io_allocateReq_1; // @[Rename.scala 52:26]
  wire  fpFreeList_io_allocateReq_2; // @[Rename.scala 52:26]
  wire  fpFreeList_io_allocateReq_3; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_allocatePhyReg_0; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_allocatePhyReg_1; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_allocatePhyReg_2; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_allocatePhyReg_3; // @[Rename.scala 52:26]
  wire  fpFreeList_io_canAllocate; // @[Rename.scala 52:26]
  wire  fpFreeList_io_doAllocate; // @[Rename.scala 52:26]
  wire  fpFreeList_io_freeReq_0; // @[Rename.scala 52:26]
  wire  fpFreeList_io_freeReq_1; // @[Rename.scala 52:26]
  wire  fpFreeList_io_freeReq_2; // @[Rename.scala 52:26]
  wire  fpFreeList_io_freeReq_3; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_freePhyReg_0; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_freePhyReg_1; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_freePhyReg_2; // @[Rename.scala 52:26]
  wire [6:0] fpFreeList_io_freePhyReg_3; // @[Rename.scala 52:26]
  wire [2:0] fpFreeList_io_stepBack; // @[Rename.scala 52:26]
  wire [5:0] fpFreeList_io_perf_0_value; // @[Rename.scala 52:26]
  wire [5:0] fpFreeList_io_perf_1_value; // @[Rename.scala 52:26]
  wire [5:0] fpFreeList_io_perf_2_value; // @[Rename.scala 52:26]
  wire [5:0] fpFreeList_io_perf_3_value; // @[Rename.scala 52:26]
  wire  _fpFreeList_io_stepBack_T = io_robCommits_valid_0 & io_robCommits_info_0_fpWen; // @[Rename.scala 68:97]
  wire  _fpFreeList_io_stepBack_T_1 = io_robCommits_valid_1 & io_robCommits_info_1_fpWen; // @[Rename.scala 68:97]
  wire  _fpFreeList_io_stepBack_T_2 = io_robCommits_valid_2 & io_robCommits_info_2_fpWen; // @[Rename.scala 68:97]
  wire  _fpFreeList_io_stepBack_T_3 = io_robCommits_valid_3 & io_robCommits_info_3_fpWen; // @[Rename.scala 68:97]
  wire [1:0] _fpFreeList_io_stepBack_T_4 = _fpFreeList_io_stepBack_T + _fpFreeList_io_stepBack_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] _fpFreeList_io_stepBack_T_6 = _fpFreeList_io_stepBack_T_2 + _fpFreeList_io_stepBack_T_3; // @[Bitwise.scala 48:55]
  wire  _canOut_T_2 = ~io_robCommits_isWalk; // @[Rename.scala 76:94]
  wire  canOut = io_out_0_ready & fpFreeList_io_canAllocate & intFreeList_io_canAllocate & ~io_robCommits_isWalk; // @[Rename.scala 76:91]
  wire [1:0] _validCount_T = io_in_0_valid + io_in_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _validCount_T_2 = io_in_2_valid + io_in_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] validCount = _validCount_T + _validCount_T_2; // @[Bitwise.scala 48:55]
  reg  robIdxHead_flag; // @[Rename.scala 81:27]
  reg [6:0] robIdxHead_value; // @[Rename.scala 81:27]
  reg  lastCycleMisprediction; // @[Rename.scala 82:39]
  wire [7:0] _robIdxHeadNext_new_ptr_T = {robIdxHead_flag,robIdxHead_value}; // @[Cat.scala 31:58]
  wire [7:0] _robIdxHeadNext_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + 8'h1; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] robIdxHeadNext_new_ptr_value = _robIdxHeadNext_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  robIdxHeadNext_new_ptr_flag = _robIdxHeadNext_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _GEN_16 = {{5'd0}, validCount}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _robIdxHeadNext_new_ptr_T_7 = _robIdxHeadNext_new_ptr_T + _GEN_16; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] robIdxHeadNext_new_ptr_1_value = _robIdxHeadNext_new_ptr_T_7[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  robIdxHeadNext_new_ptr_1_flag = _robIdxHeadNext_new_ptr_T_7[7]; // @[CircularQueuePtr.scala 40:59]
  wire [3:0] _hasValid_T = {io_in_0_valid,io_in_1_valid,io_in_2_valid,io_in_3_valid}; // @[Cat.scala 31:58]
  wire  hasValid = |_hasValid_T; // @[Rename.scala 105:42]
  wire  needFpDest_0 = io_in_0_valid & io_in_0_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  wire  _needIntDest_0_T_1 = io_in_0_bits_ctrl_rfWen & io_in_0_bits_ctrl_ldest != 5'h0; // @[Rename.scala 56:44]
  wire  needIntDest_0 = io_in_0_valid & _needIntDest_0_T_1; // @[Rename.scala 130:31]
  wire [8:0] _uops_0_robIdx_new_ptr_T_1 = {{1'd0}, _robIdxHeadNext_new_ptr_T}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] uops_0_psrc_0 = io_in_0_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_0_0 : io_fpReadPorts_0_0; // @[Rename.scala 144:27]
  wire [6:0] _uops_0_pdest_T = needFpDest_0 ? fpFreeList_io_allocatePhyReg_0 : 7'h0; // @[Rename.scala 153:10]
  wire [6:0] uops_0_pdest = needIntDest_0 ? intFreeList_io_allocatePhyReg_0 : _uops_0_pdest_T; // @[Rename.scala 151:25]
  wire [9:0] _io_out_0_bits_ctrl_imm_T = {io_in_0_bits_ctrl_lsrc_1,io_in_0_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire  _intSpecWen_0_T_4 = ~io_redirect_valid; // @[Rename.scala 167:124]
  wire  needFpDest_1 = io_in_1_valid & io_in_1_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  wire  _needIntDest_1_T_1 = io_in_1_bits_ctrl_rfWen & io_in_1_bits_ctrl_ldest != 5'h0; // @[Rename.scala 56:44]
  wire  needIntDest_1 = io_in_1_valid & _needIntDest_1_T_1; // @[Rename.scala 130:31]
  wire [7:0] _GEN_17 = {{7'd0}, io_in_0_valid}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _uops_1_robIdx_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + _GEN_17; // @[CircularQueuePtr.scala 40:46]
  wire  _uops_1_psrc_0_T = io_in_1_bits_ctrl_srcType_0 == 2'h0; // @[Rename.scala 144:52]
  wire [6:0] uops_1_psrc_0 = io_in_1_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_1_0 : io_fpReadPorts_1_0; // @[Rename.scala 144:27]
  wire  _uops_1_psrc_1_T = io_in_1_bits_ctrl_srcType_1 == 2'h0; // @[Rename.scala 145:52]
  wire [6:0] uops_1_psrc_1 = io_in_1_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_1_1 : io_fpReadPorts_1_1; // @[Rename.scala 145:27]
  wire [6:0] uops_1_old_pdest = io_in_1_bits_ctrl_rfWen ? io_intReadPorts_1_2 : io_fpReadPorts_1_3; // @[Rename.scala 147:29]
  wire [6:0] _uops_1_pdest_T = needFpDest_1 ? fpFreeList_io_allocatePhyReg_1 : 7'h0; // @[Rename.scala 153:10]
  wire [6:0] uops_1_pdest = needIntDest_1 ? intFreeList_io_allocatePhyReg_1 : _uops_1_pdest_T; // @[Rename.scala 151:25]
  wire [9:0] _io_out_1_bits_ctrl_imm_T = {io_in_1_bits_ctrl_lsrc_1,io_in_1_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_1 = io_out_1_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_1_bits_ctrl_imm_T} : io_in_1_bits_ctrl_imm; // @[Rename.scala 160:20 161:56 162:31]
  wire  needFpDest_2 = io_in_2_valid & io_in_2_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  wire  _needIntDest_2_T_1 = io_in_2_bits_ctrl_rfWen & io_in_2_bits_ctrl_ldest != 5'h0; // @[Rename.scala 56:44]
  wire  needIntDest_2 = io_in_2_valid & _needIntDest_2_T_1; // @[Rename.scala 130:31]
  wire [7:0] _GEN_18 = {{6'd0}, _validCount_T}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _uops_2_robIdx_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + _GEN_18; // @[CircularQueuePtr.scala 40:46]
  wire  _uops_2_psrc_0_T = io_in_2_bits_ctrl_srcType_0 == 2'h0; // @[Rename.scala 144:52]
  wire [6:0] uops_2_psrc_0 = io_in_2_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_2_0 : io_fpReadPorts_2_0; // @[Rename.scala 144:27]
  wire  _uops_2_psrc_1_T = io_in_2_bits_ctrl_srcType_1 == 2'h0; // @[Rename.scala 145:52]
  wire [6:0] uops_2_psrc_1 = io_in_2_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_2_1 : io_fpReadPorts_2_1; // @[Rename.scala 145:27]
  wire [6:0] uops_2_old_pdest = io_in_2_bits_ctrl_rfWen ? io_intReadPorts_2_2 : io_fpReadPorts_2_3; // @[Rename.scala 147:29]
  wire [6:0] _uops_2_pdest_T = needFpDest_2 ? fpFreeList_io_allocatePhyReg_2 : 7'h0; // @[Rename.scala 153:10]
  wire [6:0] uops_2_pdest = needIntDest_2 ? intFreeList_io_allocatePhyReg_2 : _uops_2_pdest_T; // @[Rename.scala 151:25]
  wire [9:0] _io_out_2_bits_ctrl_imm_T = {io_in_2_bits_ctrl_lsrc_1,io_in_2_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_2 = io_out_2_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_2_bits_ctrl_imm_T} : io_in_2_bits_ctrl_imm; // @[Rename.scala 160:20 161:56 162:31]
  wire  needFpDest_3 = io_in_3_valid & io_in_3_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  wire  _needIntDest_3_T_1 = io_in_3_bits_ctrl_rfWen & io_in_3_bits_ctrl_ldest != 5'h0; // @[Rename.scala 56:44]
  wire  needIntDest_3 = io_in_3_valid & _needIntDest_3_T_1; // @[Rename.scala 130:31]
  wire [1:0] _uops_3_robIdx_T = io_in_1_valid + io_in_2_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_19 = {{1'd0}, io_in_0_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _uops_3_robIdx_T_2 = _GEN_19 + _uops_3_robIdx_T; // @[Bitwise.scala 48:55]
  wire [7:0] _GEN_20 = {{6'd0}, _uops_3_robIdx_T_2[1:0]}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _uops_3_robIdx_new_ptr_T_2 = _robIdxHeadNext_new_ptr_T + _GEN_20; // @[CircularQueuePtr.scala 40:46]
  wire  _uops_3_psrc_0_T = io_in_3_bits_ctrl_srcType_0 == 2'h0; // @[Rename.scala 144:52]
  wire [6:0] uops_3_psrc_0 = io_in_3_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_3_0 : io_fpReadPorts_3_0; // @[Rename.scala 144:27]
  wire  _uops_3_psrc_1_T = io_in_3_bits_ctrl_srcType_1 == 2'h0; // @[Rename.scala 145:52]
  wire [6:0] uops_3_psrc_1 = io_in_3_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_3_1 : io_fpReadPorts_3_1; // @[Rename.scala 145:27]
  wire [6:0] uops_3_old_pdest = io_in_3_bits_ctrl_rfWen ? io_intReadPorts_3_2 : io_fpReadPorts_3_3; // @[Rename.scala 147:29]
  wire [6:0] _uops_3_pdest_T = needFpDest_3 ? fpFreeList_io_allocatePhyReg_3 : 7'h0; // @[Rename.scala 153:10]
  wire [6:0] uops_3_pdest = needIntDest_3 ? intFreeList_io_allocatePhyReg_3 : _uops_3_pdest_T; // @[Rename.scala 151:25]
  wire [9:0] _io_out_3_bits_ctrl_imm_T = {io_in_3_bits_ctrl_lsrc_1,io_in_3_bits_ctrl_lsrc_0}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_3 = io_out_3_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_3_bits_ctrl_imm_T} : io_in_3_bits_ctrl_imm; // @[Rename.scala 160:20 161:56 162:31]
  wire  fpCond_0 = io_in_1_bits_ctrl_srcType_0 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_1 = io_in_1_bits_ctrl_srcType_1 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_2 = io_in_1_bits_ctrl_srcType_2 == 2'h2; // @[Rename.scala 198:51]
  wire  intCond_2 = io_in_1_bits_ctrl_srcType_2 == 2'h0; // @[Rename.scala 199:52]
  wire  destToSrc_indexMatch = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch = _uops_1_psrc_0_T & needIntDest_0 | fpCond_0 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0 = destToSrc_indexMatch & destToSrc_writeMatch; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_1 = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_1 = _uops_1_psrc_1_T & needIntDest_0 | fpCond_1 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_1 = destToSrc_indexMatch_1 & destToSrc_writeMatch_1; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_2 = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_2 = intCond_2 & needIntDest_0 | fpCond_2 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_2 = destToSrc_indexMatch_2 & destToSrc_writeMatch_2; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_3 = io_in_0_bits_ctrl_ldest == io_in_1_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_3 = needIntDest_1 & needIntDest_0 | needFpDest_1 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_3 = destToSrc_indexMatch_3 & destToSrc_writeMatch_3; // @[Rename.scala 205:20]
  wire [6:0] _io_out_1_bits_psrc_0_T_1 = destToSrc_0 ? io_out_0_bits_pdest : uops_1_psrc_0; // @[Rename.scala 210:23]
  wire [6:0] _io_out_1_bits_psrc_1_T_1 = destToSrc_0_1 ? io_out_0_bits_pdest : uops_1_psrc_1; // @[Rename.scala 213:23]
  wire  last_is_lui = io_in_0_bits_ctrl_selImm == 4'h2 & io_in_0_bits_ctrl_srcType_0 != 2'h1; // @[Rename.scala 224:70]
  wire  this_is_load = io_in_1_bits_ctrl_fuType == 4'hc & ~io_in_1_bits_ctrl_fuOpType[3]; // @[Rename.scala 225:65]
  wire  lui_to_load = io_in_0_valid & destToSrc_indexMatch; // @[Rename.scala 226:42]
  wire  fused_lui_load = last_is_lui & this_is_load & lui_to_load; // @[Rename.scala 227:54]
  wire [11:0] io_out_1_bits_ctrl_imm_loadImm = io_in_1_bits_ctrl_imm[11:0]; // @[DecodeUnit.scala 553:27]
  wire [19:0] _io_out_1_bits_ctrl_imm_T_2 = {io_in_0_bits_ctrl_imm[7:0],io_out_1_bits_ctrl_imm_loadImm}; // @[Cat.scala 31:58]
  wire  fpCond_0_1 = io_in_2_bits_ctrl_srcType_0 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_1_1 = io_in_2_bits_ctrl_srcType_1 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_2_1 = io_in_2_bits_ctrl_srcType_2 == 2'h2; // @[Rename.scala 198:51]
  wire  intCond_2_1 = io_in_2_bits_ctrl_srcType_2 == 2'h0; // @[Rename.scala 199:52]
  wire  destToSrc_indexMatch_4 = io_in_0_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_4 = _uops_2_psrc_0_T & needIntDest_0 | fpCond_0_1 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_4 = destToSrc_indexMatch_4 & destToSrc_writeMatch_4; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_5 = io_in_1_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_5 = _uops_2_psrc_0_T & needIntDest_1 | fpCond_0_1 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1 = destToSrc_indexMatch_5 & destToSrc_writeMatch_5; // @[Rename.scala 205:20]
  wire [1:0] bypassCond_0_1 = {destToSrc_1,destToSrc_0_4}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_6 = io_in_0_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_6 = _uops_2_psrc_1_T & needIntDest_0 | fpCond_1_1 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_5 = destToSrc_indexMatch_6 & destToSrc_writeMatch_6; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_7 = io_in_1_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_7 = _uops_2_psrc_1_T & needIntDest_1 | fpCond_1_1 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_1 = destToSrc_indexMatch_7 & destToSrc_writeMatch_7; // @[Rename.scala 205:20]
  wire [1:0] bypassCond_1_1 = {destToSrc_1_1,destToSrc_0_5}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_8 = io_in_0_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_8 = intCond_2_1 & needIntDest_0 | fpCond_2_1 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_6 = destToSrc_indexMatch_8 & destToSrc_writeMatch_8; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_9 = io_in_1_bits_ctrl_ldest == io_in_2_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_9 = intCond_2_1 & needIntDest_1 | fpCond_2_1 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_2 = destToSrc_indexMatch_9 & destToSrc_writeMatch_9; // @[Rename.scala 205:20]
  wire [1:0] bypassCond_2_1 = {destToSrc_1_2,destToSrc_0_6}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_10 = io_in_0_bits_ctrl_ldest == io_in_2_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_10 = needIntDest_2 & needIntDest_0 | needFpDest_2 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_7 = destToSrc_indexMatch_10 & destToSrc_writeMatch_10; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_11 = io_in_1_bits_ctrl_ldest == io_in_2_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_11 = needIntDest_2 & needIntDest_1 | needFpDest_2 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_3 = destToSrc_indexMatch_11 & destToSrc_writeMatch_11; // @[Rename.scala 205:20]
  wire [1:0] bypassCond_3_1 = {destToSrc_1_3,destToSrc_0_7}; // @[Rename.scala 207:50]
  wire [6:0] _io_out_2_bits_psrc_0_T_2 = bypassCond_0_1[0] ? io_out_0_bits_pdest : uops_2_psrc_0; // @[Rename.scala 210:23]
  wire [6:0] _io_out_2_bits_psrc_0_T_3 = bypassCond_0_1[1] ? io_out_1_bits_pdest : _io_out_2_bits_psrc_0_T_2; // @[Rename.scala 210:23]
  wire [6:0] _io_out_2_bits_psrc_1_T_2 = bypassCond_1_1[0] ? io_out_0_bits_pdest : uops_2_psrc_1; // @[Rename.scala 213:23]
  wire [6:0] _io_out_2_bits_psrc_1_T_3 = bypassCond_1_1[1] ? io_out_1_bits_pdest : _io_out_2_bits_psrc_1_T_2; // @[Rename.scala 213:23]
  wire [6:0] _io_out_2_bits_psrc_2_T_2 = bypassCond_2_1[0] ? io_out_0_bits_pdest : io_fpReadPorts_2_2; // @[Rename.scala 216:23]
  wire [6:0] _io_out_2_bits_old_pdest_T_2 = bypassCond_3_1[0] ? io_out_0_bits_pdest : uops_2_old_pdest; // @[Rename.scala 219:23]
  wire  last_is_lui_1 = io_in_1_bits_ctrl_selImm == 4'h2 & io_in_1_bits_ctrl_srcType_0 != 2'h1; // @[Rename.scala 224:70]
  wire  this_is_load_1 = io_in_2_bits_ctrl_fuType == 4'hc & ~io_in_2_bits_ctrl_fuOpType[3]; // @[Rename.scala 225:65]
  wire  lui_to_load_1 = io_in_1_valid & destToSrc_indexMatch_5; // @[Rename.scala 226:42]
  wire  fused_lui_load_1 = last_is_lui_1 & this_is_load_1 & lui_to_load_1; // @[Rename.scala 227:54]
  wire [11:0] io_out_2_bits_ctrl_imm_loadImm = io_in_2_bits_ctrl_imm[11:0]; // @[DecodeUnit.scala 553:27]
  wire [19:0] _io_out_2_bits_ctrl_imm_T_2 = {io_in_1_bits_ctrl_imm[7:0],io_out_2_bits_ctrl_imm_loadImm}; // @[Cat.scala 31:58]
  wire  fpCond_0_2 = io_in_3_bits_ctrl_srcType_0 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_1_2 = io_in_3_bits_ctrl_srcType_1 == 2'h2; // @[Rename.scala 198:51]
  wire  fpCond_2_2 = io_in_3_bits_ctrl_srcType_2 == 2'h2; // @[Rename.scala 198:51]
  wire  intCond_2_2 = io_in_3_bits_ctrl_srcType_2 == 2'h0; // @[Rename.scala 199:52]
  wire  destToSrc_indexMatch_12 = io_in_0_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_12 = _uops_3_psrc_0_T & needIntDest_0 | fpCond_0_2 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_8 = destToSrc_indexMatch_12 & destToSrc_writeMatch_12; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_13 = io_in_1_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_13 = _uops_3_psrc_0_T & needIntDest_1 | fpCond_0_2 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_4 = destToSrc_indexMatch_13 & destToSrc_writeMatch_13; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_14 = io_in_2_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_0; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_14 = _uops_3_psrc_0_T & needIntDest_2 | fpCond_0_2 & needFpDest_2; // @[Rename.scala 204:51]
  wire  destToSrc_2 = destToSrc_indexMatch_14 & destToSrc_writeMatch_14; // @[Rename.scala 205:20]
  wire [2:0] bypassCond_0_2 = {destToSrc_2,destToSrc_1_4,destToSrc_0_8}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_15 = io_in_0_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_15 = _uops_3_psrc_1_T & needIntDest_0 | fpCond_1_2 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_9 = destToSrc_indexMatch_15 & destToSrc_writeMatch_15; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_16 = io_in_1_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_16 = _uops_3_psrc_1_T & needIntDest_1 | fpCond_1_2 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_5 = destToSrc_indexMatch_16 & destToSrc_writeMatch_16; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_17 = io_in_2_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_1; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_17 = _uops_3_psrc_1_T & needIntDest_2 | fpCond_1_2 & needFpDest_2; // @[Rename.scala 204:51]
  wire  destToSrc_2_1 = destToSrc_indexMatch_17 & destToSrc_writeMatch_17; // @[Rename.scala 205:20]
  wire [2:0] bypassCond_1_2 = {destToSrc_2_1,destToSrc_1_5,destToSrc_0_9}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_18 = io_in_0_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_18 = intCond_2_2 & needIntDest_0 | fpCond_2_2 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_10 = destToSrc_indexMatch_18 & destToSrc_writeMatch_18; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_19 = io_in_1_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_19 = intCond_2_2 & needIntDest_1 | fpCond_2_2 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_6 = destToSrc_indexMatch_19 & destToSrc_writeMatch_19; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_20 = io_in_2_bits_ctrl_ldest == io_in_3_bits_ctrl_lsrc_2; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_20 = intCond_2_2 & needIntDest_2 | fpCond_2_2 & needFpDest_2; // @[Rename.scala 204:51]
  wire  destToSrc_2_2 = destToSrc_indexMatch_20 & destToSrc_writeMatch_20; // @[Rename.scala 205:20]
  wire [2:0] bypassCond_2_2 = {destToSrc_2_2,destToSrc_1_6,destToSrc_0_10}; // @[Rename.scala 207:50]
  wire  destToSrc_indexMatch_21 = io_in_0_bits_ctrl_ldest == io_in_3_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_21 = needIntDest_3 & needIntDest_0 | needFpDest_3 & needFpDest_0; // @[Rename.scala 204:51]
  wire  destToSrc_0_11 = destToSrc_indexMatch_21 & destToSrc_writeMatch_21; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_22 = io_in_1_bits_ctrl_ldest == io_in_3_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_22 = needIntDest_3 & needIntDest_1 | needFpDest_3 & needFpDest_1; // @[Rename.scala 204:51]
  wire  destToSrc_1_7 = destToSrc_indexMatch_22 & destToSrc_writeMatch_22; // @[Rename.scala 205:20]
  wire  destToSrc_indexMatch_23 = io_in_2_bits_ctrl_ldest == io_in_3_bits_ctrl_ldest; // @[Rename.scala 203:45]
  wire  destToSrc_writeMatch_23 = needIntDest_3 & needIntDest_2 | needFpDest_3 & needFpDest_2; // @[Rename.scala 204:51]
  wire  destToSrc_2_3 = destToSrc_indexMatch_23 & destToSrc_writeMatch_23; // @[Rename.scala 205:20]
  wire [2:0] bypassCond_3_2 = {destToSrc_2_3,destToSrc_1_7,destToSrc_0_11}; // @[Rename.scala 207:50]
  wire [6:0] _io_out_3_bits_psrc_0_T_3 = bypassCond_0_2[0] ? io_out_0_bits_pdest : uops_3_psrc_0; // @[Rename.scala 210:23]
  wire [6:0] _io_out_3_bits_psrc_0_T_4 = bypassCond_0_2[1] ? io_out_1_bits_pdest : _io_out_3_bits_psrc_0_T_3; // @[Rename.scala 210:23]
  wire [6:0] _io_out_3_bits_psrc_0_T_5 = bypassCond_0_2[2] ? io_out_2_bits_pdest : _io_out_3_bits_psrc_0_T_4; // @[Rename.scala 210:23]
  wire [6:0] _io_out_3_bits_psrc_1_T_3 = bypassCond_1_2[0] ? io_out_0_bits_pdest : uops_3_psrc_1; // @[Rename.scala 213:23]
  wire [6:0] _io_out_3_bits_psrc_1_T_4 = bypassCond_1_2[1] ? io_out_1_bits_pdest : _io_out_3_bits_psrc_1_T_3; // @[Rename.scala 213:23]
  wire [6:0] _io_out_3_bits_psrc_1_T_5 = bypassCond_1_2[2] ? io_out_2_bits_pdest : _io_out_3_bits_psrc_1_T_4; // @[Rename.scala 213:23]
  wire [6:0] _io_out_3_bits_psrc_2_T_3 = bypassCond_2_2[0] ? io_out_0_bits_pdest : io_fpReadPorts_3_2; // @[Rename.scala 216:23]
  wire [6:0] _io_out_3_bits_psrc_2_T_4 = bypassCond_2_2[1] ? io_out_1_bits_pdest : _io_out_3_bits_psrc_2_T_3; // @[Rename.scala 216:23]
  wire [6:0] _io_out_3_bits_old_pdest_T_3 = bypassCond_3_2[0] ? io_out_0_bits_pdest : uops_3_old_pdest; // @[Rename.scala 219:23]
  wire [6:0] _io_out_3_bits_old_pdest_T_4 = bypassCond_3_2[1] ? io_out_1_bits_pdest : _io_out_3_bits_old_pdest_T_3; // @[Rename.scala 219:23]
  wire  last_is_lui_2 = io_in_2_bits_ctrl_selImm == 4'h2 & io_in_2_bits_ctrl_srcType_0 != 2'h1; // @[Rename.scala 224:70]
  wire  this_is_load_2 = io_in_3_bits_ctrl_fuType == 4'hc & ~io_in_3_bits_ctrl_fuOpType[3]; // @[Rename.scala 225:65]
  wire  lui_to_load_2 = io_in_2_valid & destToSrc_indexMatch_14; // @[Rename.scala 226:42]
  wire  fused_lui_load_2 = last_is_lui_2 & this_is_load_2 & lui_to_load_2; // @[Rename.scala 227:54]
  wire [11:0] io_out_3_bits_ctrl_imm_loadImm = io_in_3_bits_ctrl_imm[11:0]; // @[DecodeUnit.scala 553:27]
  wire [19:0] _io_out_3_bits_ctrl_imm_T_2 = {io_in_2_bits_ctrl_imm[7:0],io_out_3_bits_ctrl_imm_loadImm}; // @[Cat.scala 31:58]
  wire  _T_28 = io_in_0_valid & ~io_in_0_ready; // @[Rename.scala 315:92]
  wire  _T_30 = io_in_1_valid & ~io_in_1_ready; // @[Rename.scala 315:92]
  wire  _T_32 = io_in_2_valid & ~io_in_2_ready; // @[Rename.scala 315:92]
  wire  _T_34 = io_in_3_valid & ~io_in_3_ready; // @[Rename.scala 315:92]
  wire [1:0] _T_35 = _T_28 + _T_30; // @[Bitwise.scala 48:55]
  wire [1:0] _T_37 = _T_32 + _T_34; // @[Bitwise.scala 48:55]
  wire  _T_44 = hasValid & ~io_out_0_ready & fpFreeList_io_canAllocate & intFreeList_io_canAllocate; // @[Rename.scala 316:106]
  wire  _T_47 = hasValid & io_out_0_ready; // @[Rename.scala 317:51]
  wire  _T_50 = hasValid & io_out_0_ready & ~fpFreeList_io_canAllocate & intFreeList_io_canAllocate; // @[Rename.scala 317:100]
  wire  _T_54 = _T_47 & fpFreeList_io_canAllocate; // @[Rename.scala 318:71]
  wire  _T_56 = _T_47 & fpFreeList_io_canAllocate & ~intFreeList_io_canAllocate; // @[Rename.scala 318:100]
  wire  _T_61 = _T_54 & intFreeList_io_canAllocate; // @[Rename.scala 319:101]
  wire  _T_83 = io_in_0_valid & io_in_0_ready; // @[Rename.scala 327:64]
  wire  _T_84 = io_in_1_valid & io_in_0_ready; // @[Rename.scala 327:64]
  wire  _T_85 = io_in_2_valid & io_in_0_ready; // @[Rename.scala 327:64]
  wire  _T_86 = io_in_3_valid & io_in_0_ready; // @[Rename.scala 327:64]
  wire [1:0] _T_87 = _T_83 + _T_84; // @[Bitwise.scala 48:55]
  wire [1:0] _T_89 = _T_85 + _T_86; // @[Bitwise.scala 48:55]
  reg [2:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
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
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  MEFreeList intFreeList ( // @[Rename.scala 50:27]
    .clock(intFreeList_clock),
    .reset(intFreeList_reset),
    .io_redirect(intFreeList_io_redirect),
    .io_walk(intFreeList_io_walk),
    .io_allocateReq_0(intFreeList_io_allocateReq_0),
    .io_allocateReq_1(intFreeList_io_allocateReq_1),
    .io_allocateReq_2(intFreeList_io_allocateReq_2),
    .io_allocateReq_3(intFreeList_io_allocateReq_3),
    .io_allocatePhyReg_0(intFreeList_io_allocatePhyReg_0),
    .io_allocatePhyReg_1(intFreeList_io_allocatePhyReg_1),
    .io_allocatePhyReg_2(intFreeList_io_allocatePhyReg_2),
    .io_allocatePhyReg_3(intFreeList_io_allocatePhyReg_3),
    .io_canAllocate(intFreeList_io_canAllocate),
    .io_doAllocate(intFreeList_io_doAllocate),
    .io_freeReq_0(intFreeList_io_freeReq_0),
    .io_freeReq_1(intFreeList_io_freeReq_1),
    .io_freeReq_2(intFreeList_io_freeReq_2),
    .io_freeReq_3(intFreeList_io_freeReq_3),
    .io_freePhyReg_0(intFreeList_io_freePhyReg_0),
    .io_freePhyReg_1(intFreeList_io_freePhyReg_1),
    .io_freePhyReg_2(intFreeList_io_freePhyReg_2),
    .io_freePhyReg_3(intFreeList_io_freePhyReg_3),
    .io_perf_0_value(intFreeList_io_perf_0_value),
    .io_perf_1_value(intFreeList_io_perf_1_value),
    .io_perf_2_value(intFreeList_io_perf_2_value),
    .io_perf_3_value(intFreeList_io_perf_3_value)
  );
  RefCounter intRefCounter ( // @[Rename.scala 51:29]
    .clock(intRefCounter_clock),
    .reset(intRefCounter_reset),
    .io_allocate_0_valid(intRefCounter_io_allocate_0_valid),
    .io_allocate_0_bits(intRefCounter_io_allocate_0_bits),
    .io_allocate_1_valid(intRefCounter_io_allocate_1_valid),
    .io_allocate_1_bits(intRefCounter_io_allocate_1_bits),
    .io_allocate_2_valid(intRefCounter_io_allocate_2_valid),
    .io_allocate_2_bits(intRefCounter_io_allocate_2_bits),
    .io_allocate_3_valid(intRefCounter_io_allocate_3_valid),
    .io_allocate_3_bits(intRefCounter_io_allocate_3_bits),
    .io_deallocate_0_valid(intRefCounter_io_deallocate_0_valid),
    .io_deallocate_0_bits(intRefCounter_io_deallocate_0_bits),
    .io_deallocate_1_valid(intRefCounter_io_deallocate_1_valid),
    .io_deallocate_1_bits(intRefCounter_io_deallocate_1_bits),
    .io_deallocate_2_valid(intRefCounter_io_deallocate_2_valid),
    .io_deallocate_2_bits(intRefCounter_io_deallocate_2_bits),
    .io_deallocate_3_valid(intRefCounter_io_deallocate_3_valid),
    .io_deallocate_3_bits(intRefCounter_io_deallocate_3_bits),
    .io_freeRegs_0_valid(intRefCounter_io_freeRegs_0_valid),
    .io_freeRegs_0_bits(intRefCounter_io_freeRegs_0_bits),
    .io_freeRegs_1_valid(intRefCounter_io_freeRegs_1_valid),
    .io_freeRegs_1_bits(intRefCounter_io_freeRegs_1_bits),
    .io_freeRegs_2_valid(intRefCounter_io_freeRegs_2_valid),
    .io_freeRegs_2_bits(intRefCounter_io_freeRegs_2_bits),
    .io_freeRegs_3_valid(intRefCounter_io_freeRegs_3_valid),
    .io_freeRegs_3_bits(intRefCounter_io_freeRegs_3_bits)
  );
  StdFreeList fpFreeList ( // @[Rename.scala 52:26]
    .clock(fpFreeList_clock),
    .reset(fpFreeList_reset),
    .io_redirect(fpFreeList_io_redirect),
    .io_walk(fpFreeList_io_walk),
    .io_allocateReq_0(fpFreeList_io_allocateReq_0),
    .io_allocateReq_1(fpFreeList_io_allocateReq_1),
    .io_allocateReq_2(fpFreeList_io_allocateReq_2),
    .io_allocateReq_3(fpFreeList_io_allocateReq_3),
    .io_allocatePhyReg_0(fpFreeList_io_allocatePhyReg_0),
    .io_allocatePhyReg_1(fpFreeList_io_allocatePhyReg_1),
    .io_allocatePhyReg_2(fpFreeList_io_allocatePhyReg_2),
    .io_allocatePhyReg_3(fpFreeList_io_allocatePhyReg_3),
    .io_canAllocate(fpFreeList_io_canAllocate),
    .io_doAllocate(fpFreeList_io_doAllocate),
    .io_freeReq_0(fpFreeList_io_freeReq_0),
    .io_freeReq_1(fpFreeList_io_freeReq_1),
    .io_freeReq_2(fpFreeList_io_freeReq_2),
    .io_freeReq_3(fpFreeList_io_freeReq_3),
    .io_freePhyReg_0(fpFreeList_io_freePhyReg_0),
    .io_freePhyReg_1(fpFreeList_io_freePhyReg_1),
    .io_freePhyReg_2(fpFreeList_io_freePhyReg_2),
    .io_freePhyReg_3(fpFreeList_io_freePhyReg_3),
    .io_stepBack(fpFreeList_io_stepBack),
    .io_perf_0_value(fpFreeList_io_perf_0_value),
    .io_perf_1_value(fpFreeList_io_perf_1_value),
    .io_perf_2_value(fpFreeList_io_perf_2_value),
    .io_perf_3_value(fpFreeList_io_perf_3_value)
  );
  assign io_in_0_ready = ~hasValid | canOut; // @[Rename.scala 135:33]
  assign io_in_1_ready = ~hasValid | canOut; // @[Rename.scala 135:33]
  assign io_in_2_ready = ~hasValid | canOut; // @[Rename.scala 135:33]
  assign io_in_3_ready = ~hasValid | canOut; // @[Rename.scala 135:33]
  assign io_intRenamePorts_0_wen = needIntDest_0 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign io_intRenamePorts_0_addr = io_in_0_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_intRenamePorts_0_data = io_out_0_bits_pdest; // @[Rename.scala 267:21]
  assign io_intRenamePorts_1_wen = needIntDest_1 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign io_intRenamePorts_1_addr = io_in_1_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_intRenamePorts_1_data = io_out_1_bits_pdest; // @[Rename.scala 267:21]
  assign io_intRenamePorts_2_wen = needIntDest_2 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign io_intRenamePorts_2_addr = io_in_2_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_intRenamePorts_2_data = io_out_2_bits_pdest; // @[Rename.scala 267:21]
  assign io_intRenamePorts_3_wen = needIntDest_3 & intFreeList_io_canAllocate & intFreeList_io_doAllocate & _canOut_T_2
     & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign io_intRenamePorts_3_addr = io_in_3_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_intRenamePorts_3_data = io_out_3_bits_pdest; // @[Rename.scala 267:21]
  assign io_fpRenamePorts_0_wen = needFpDest_0 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 168:117]
  assign io_fpRenamePorts_0_addr = io_in_0_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_fpRenamePorts_0_data = fpFreeList_io_allocatePhyReg_0; // @[Rename.scala 263:21]
  assign io_fpRenamePorts_1_wen = needFpDest_1 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 168:117]
  assign io_fpRenamePorts_1_addr = io_in_1_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_fpRenamePorts_1_data = fpFreeList_io_allocatePhyReg_1; // @[Rename.scala 263:21]
  assign io_fpRenamePorts_2_wen = needFpDest_2 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 168:117]
  assign io_fpRenamePorts_2_addr = io_in_2_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_fpRenamePorts_2_data = fpFreeList_io_allocatePhyReg_2; // @[Rename.scala 263:21]
  assign io_fpRenamePorts_3_wen = needFpDest_3 & fpFreeList_io_canAllocate & fpFreeList_io_doAllocate & _canOut_T_2 &
    _intSpecWen_0_T_4; // @[Rename.scala 168:117]
  assign io_fpRenamePorts_3_addr = io_in_3_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_fpRenamePorts_3_data = fpFreeList_io_allocatePhyReg_3; // @[Rename.scala 263:21]
  assign io_out_0_valid = io_in_0_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 159:98]
  assign io_out_0_bits_cf_exceptionVec_1 = io_in_0_bits_cf_exceptionVec_1; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_exceptionVec_2 = io_in_0_bits_cf_exceptionVec_2; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_exceptionVec_12 = io_in_0_bits_cf_exceptionVec_12; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_frontendHit_0 = io_in_0_bits_cf_trigger_frontendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_frontendHit_1 = io_in_0_bits_cf_trigger_frontendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_frontendHit_2 = io_in_0_bits_cf_trigger_frontendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_frontendHit_3 = io_in_0_bits_cf_trigger_frontendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_0 = io_in_0_bits_cf_trigger_backendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_1 = io_in_0_bits_cf_trigger_backendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_2 = io_in_0_bits_cf_trigger_backendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_3 = io_in_0_bits_cf_trigger_backendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_4 = io_in_0_bits_cf_trigger_backendHit_4; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_trigger_backendHit_5 = io_in_0_bits_cf_trigger_backendHit_5; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_crossPageIPFFix = io_in_0_bits_cf_crossPageIPFFix; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_storeSetHit = io_ssit_0_valid; // @[Rename.scala 92:18 119:28]
  assign io_out_0_bits_cf_loadWaitStrict = io_ssit_0_strict & io_ssit_0_valid; // @[Rename.scala 120:52]
  assign io_out_0_bits_cf_ssid = io_ssit_0_ssid; // @[Rename.scala 92:18 121:21]
  assign io_out_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[Rename.scala 115:16 92:18]
  assign io_out_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_srcType_2 = io_in_0_bits_ctrl_srcType_2; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_ldest = io_in_0_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_isRVCORETrap = io_in_0_bits_ctrl_isRVCORETrap; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_noSpecExec = io_in_0_bits_ctrl_noSpecExec; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_blockBackward = io_in_0_bits_ctrl_blockBackward; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_flushPipe = io_in_0_bits_ctrl_flushPipe; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_selImm = io_in_0_bits_ctrl_selImm; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_imm = io_out_0_bits_ctrl_fuType == 4'h3 ? {{10'd0}, _io_out_0_bits_ctrl_imm_T} :
    io_in_0_bits_ctrl_imm; // @[Rename.scala 160:20 161:56 162:31]
  assign io_out_0_bits_ctrl_commitType = io_in_0_bits_ctrl_commitType; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_ctrl_isMove = io_in_0_bits_ctrl_isMove; // @[Rename.scala 116:18 92:18]
  assign io_out_0_bits_psrc_0 = io_in_0_bits_ctrl_srcType_0 == 2'h0 ? io_intReadPorts_0_0 : io_fpReadPorts_0_0; // @[Rename.scala 144:27]
  assign io_out_0_bits_psrc_1 = io_in_0_bits_ctrl_srcType_1 == 2'h0 ? io_intReadPorts_0_1 : io_fpReadPorts_0_1; // @[Rename.scala 145:27]
  assign io_out_0_bits_psrc_2 = io_fpReadPorts_0_2; // @[Rename.scala 92:18 146:21]
  assign io_out_0_bits_pdest = io_in_0_bits_ctrl_isMove ? uops_0_psrc_0 : uops_0_pdest; // @[Rename.scala 195:30]
  assign io_out_0_bits_old_pdest = io_in_0_bits_ctrl_rfWen ? io_intReadPorts_0_2 : io_fpReadPorts_0_3; // @[Rename.scala 147:29]
  assign io_out_0_bits_robIdx_flag = _uops_0_robIdx_new_ptr_T_1[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_0_bits_robIdx_value = _uops_0_robIdx_new_ptr_T_1[6:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_0_bits_eliminatedMove = io_in_0_bits_ctrl_isMove; // @[Rename.scala 92:18 148:28]
  assign io_out_1_valid = io_in_1_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 159:98]
  assign io_out_1_bits_cf_exceptionVec_1 = io_in_1_bits_cf_exceptionVec_1; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_exceptionVec_2 = io_in_1_bits_cf_exceptionVec_2; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_exceptionVec_12 = io_in_1_bits_cf_exceptionVec_12; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_frontendHit_0 = io_in_1_bits_cf_trigger_frontendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_frontendHit_1 = io_in_1_bits_cf_trigger_frontendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_frontendHit_2 = io_in_1_bits_cf_trigger_frontendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_frontendHit_3 = io_in_1_bits_cf_trigger_frontendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_0 = io_in_1_bits_cf_trigger_backendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_1 = io_in_1_bits_cf_trigger_backendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_2 = io_in_1_bits_cf_trigger_backendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_3 = io_in_1_bits_cf_trigger_backendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_4 = io_in_1_bits_cf_trigger_backendHit_4; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_trigger_backendHit_5 = io_in_1_bits_cf_trigger_backendHit_5; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_crossPageIPFFix = io_in_1_bits_cf_crossPageIPFFix; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_storeSetHit = io_ssit_1_valid; // @[Rename.scala 92:18 119:28]
  assign io_out_1_bits_cf_loadWaitStrict = io_ssit_1_strict & io_ssit_1_valid; // @[Rename.scala 120:52]
  assign io_out_1_bits_cf_ssid = io_ssit_1_ssid; // @[Rename.scala 92:18 121:21]
  assign io_out_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[Rename.scala 115:16 92:18]
  assign io_out_1_bits_ctrl_srcType_0 = fused_lui_load ? 2'h1 : io_in_1_bits_ctrl_srcType_0; // @[Rename.scala 160:20 228:27 232:38]
  assign io_out_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_srcType_2 = io_in_1_bits_ctrl_srcType_2; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_ldest = io_in_1_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_isRVCORETrap = io_in_1_bits_ctrl_isRVCORETrap; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_noSpecExec = io_in_1_bits_ctrl_noSpecExec; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_blockBackward = io_in_1_bits_ctrl_blockBackward; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_flushPipe = io_in_1_bits_ctrl_flushPipe; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_selImm = io_in_1_bits_ctrl_selImm; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_imm = fused_lui_load ? _io_out_1_bits_ctrl_imm_T_2 : _GEN_1; // @[Rename.scala 228:27 233:31]
  assign io_out_1_bits_ctrl_commitType = io_in_1_bits_ctrl_commitType; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_isAddSub = io_in_1_bits_ctrl_fpu_isAddSub; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = io_in_1_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = io_in_1_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_fromInt = io_in_1_bits_ctrl_fpu_fromInt; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_wflags = io_in_1_bits_ctrl_fpu_wflags; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_fpWen = io_in_1_bits_ctrl_fpu_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = io_in_1_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_div = io_in_1_bits_ctrl_fpu_div; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_sqrt = io_in_1_bits_ctrl_fpu_sqrt; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_fcvt = io_in_1_bits_ctrl_fpu_fcvt; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_typ = io_in_1_bits_ctrl_fpu_typ; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_fmt = io_in_1_bits_ctrl_fpu_fmt; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_ren3 = io_in_1_bits_ctrl_fpu_ren3; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_fpu_rm = io_in_1_bits_ctrl_fpu_rm; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_ctrl_isMove = io_in_1_bits_ctrl_isMove; // @[Rename.scala 116:18 92:18]
  assign io_out_1_bits_psrc_0 = fused_lui_load ? io_in_0_bits_ctrl_imm[14:8] : _io_out_1_bits_psrc_0_T_1; // @[Rename.scala 228:27 209:28 238:30]
  assign io_out_1_bits_psrc_1 = fused_lui_load ? {{2'd0}, io_in_0_bits_ctrl_imm[19:15]} : _io_out_1_bits_psrc_1_T_1; // @[Rename.scala 228:27 212:28 239:30]
  assign io_out_1_bits_psrc_2 = destToSrc_0_2 ? io_out_0_bits_pdest : io_fpReadPorts_1_2; // @[Rename.scala 216:23]
  assign io_out_1_bits_pdest = io_in_1_bits_ctrl_isMove ? io_out_1_bits_psrc_0 : uops_1_pdest; // @[Rename.scala 221:32]
  assign io_out_1_bits_old_pdest = destToSrc_0_3 ? io_out_0_bits_pdest : uops_1_old_pdest; // @[Rename.scala 219:23]
  assign io_out_1_bits_robIdx_flag = _uops_1_robIdx_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_1_bits_robIdx_value = _uops_1_robIdx_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_1_bits_eliminatedMove = io_in_1_bits_ctrl_isMove; // @[Rename.scala 92:18 148:28]
  assign io_out_2_valid = io_in_2_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 159:98]
  assign io_out_2_bits_cf_exceptionVec_1 = io_in_2_bits_cf_exceptionVec_1; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_exceptionVec_2 = io_in_2_bits_cf_exceptionVec_2; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_exceptionVec_12 = io_in_2_bits_cf_exceptionVec_12; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_frontendHit_0 = io_in_2_bits_cf_trigger_frontendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_frontendHit_1 = io_in_2_bits_cf_trigger_frontendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_frontendHit_2 = io_in_2_bits_cf_trigger_frontendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_frontendHit_3 = io_in_2_bits_cf_trigger_frontendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendEn_0 = io_in_2_bits_cf_trigger_backendEn_0; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendEn_1 = io_in_2_bits_cf_trigger_backendEn_1; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_0 = io_in_2_bits_cf_trigger_backendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_1 = io_in_2_bits_cf_trigger_backendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_2 = io_in_2_bits_cf_trigger_backendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_3 = io_in_2_bits_cf_trigger_backendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_4 = io_in_2_bits_cf_trigger_backendHit_4; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_trigger_backendHit_5 = io_in_2_bits_cf_trigger_backendHit_5; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_pd_isRVC = io_in_2_bits_cf_pd_isRVC; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_pd_brType = io_in_2_bits_cf_pd_brType; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_pd_isCall = io_in_2_bits_cf_pd_isCall; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_pd_isRet = io_in_2_bits_cf_pd_isRet; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_pred_taken = io_in_2_bits_cf_pred_taken; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_crossPageIPFFix = io_in_2_bits_cf_crossPageIPFFix; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_storeSetHit = io_ssit_2_valid; // @[Rename.scala 92:18 119:28]
  assign io_out_2_bits_cf_loadWaitStrict = io_ssit_2_strict & io_ssit_2_valid; // @[Rename.scala 120:52]
  assign io_out_2_bits_cf_ssid = io_ssit_2_ssid; // @[Rename.scala 92:18 121:21]
  assign io_out_2_bits_cf_ftqPtr_flag = io_in_2_bits_cf_ftqPtr_flag; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_ftqPtr_value = io_in_2_bits_cf_ftqPtr_value; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_cf_ftqOffset = io_in_2_bits_cf_ftqOffset; // @[Rename.scala 115:16 92:18]
  assign io_out_2_bits_ctrl_srcType_0 = fused_lui_load_1 ? 2'h1 : io_in_2_bits_ctrl_srcType_0; // @[Rename.scala 160:20 228:27 232:38]
  assign io_out_2_bits_ctrl_srcType_1 = io_in_2_bits_ctrl_srcType_1; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_srcType_2 = io_in_2_bits_ctrl_srcType_2; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_ldest = io_in_2_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fuType = io_in_2_bits_ctrl_fuType; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fuOpType = io_in_2_bits_ctrl_fuOpType; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_rfWen = io_in_2_bits_ctrl_rfWen; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpWen = io_in_2_bits_ctrl_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_isRVCORETrap = io_in_2_bits_ctrl_isRVCORETrap; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_noSpecExec = io_in_2_bits_ctrl_noSpecExec; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_blockBackward = io_in_2_bits_ctrl_blockBackward; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_flushPipe = io_in_2_bits_ctrl_flushPipe; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_selImm = io_in_2_bits_ctrl_selImm; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_imm = fused_lui_load_1 ? _io_out_2_bits_ctrl_imm_T_2 : _GEN_2; // @[Rename.scala 228:27 233:31]
  assign io_out_2_bits_ctrl_commitType = io_in_2_bits_ctrl_commitType; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_isAddSub = io_in_2_bits_ctrl_fpu_isAddSub; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_typeTagIn = io_in_2_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_typeTagOut = io_in_2_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_fromInt = io_in_2_bits_ctrl_fpu_fromInt; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_wflags = io_in_2_bits_ctrl_fpu_wflags; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_fpWen = io_in_2_bits_ctrl_fpu_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_fmaCmd = io_in_2_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_div = io_in_2_bits_ctrl_fpu_div; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_sqrt = io_in_2_bits_ctrl_fpu_sqrt; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_fcvt = io_in_2_bits_ctrl_fpu_fcvt; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_typ = io_in_2_bits_ctrl_fpu_typ; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_fmt = io_in_2_bits_ctrl_fpu_fmt; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_ren3 = io_in_2_bits_ctrl_fpu_ren3; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_fpu_rm = io_in_2_bits_ctrl_fpu_rm; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_ctrl_isMove = io_in_2_bits_ctrl_isMove; // @[Rename.scala 116:18 92:18]
  assign io_out_2_bits_psrc_0 = fused_lui_load_1 ? io_in_1_bits_ctrl_imm[14:8] : _io_out_2_bits_psrc_0_T_3; // @[Rename.scala 228:27 209:28 238:30]
  assign io_out_2_bits_psrc_1 = fused_lui_load_1 ? {{2'd0}, io_in_1_bits_ctrl_imm[19:15]} : _io_out_2_bits_psrc_1_T_3; // @[Rename.scala 228:27 212:28 239:30]
  assign io_out_2_bits_psrc_2 = bypassCond_2_1[1] ? io_out_1_bits_pdest : _io_out_2_bits_psrc_2_T_2; // @[Rename.scala 216:23]
  assign io_out_2_bits_pdest = io_in_2_bits_ctrl_isMove ? io_out_2_bits_psrc_0 : uops_2_pdest; // @[Rename.scala 221:32]
  assign io_out_2_bits_old_pdest = bypassCond_3_1[1] ? io_out_1_bits_pdest : _io_out_2_bits_old_pdest_T_2; // @[Rename.scala 219:23]
  assign io_out_2_bits_robIdx_flag = _uops_2_robIdx_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_2_bits_robIdx_value = _uops_2_robIdx_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_2_bits_eliminatedMove = io_in_2_bits_ctrl_isMove; // @[Rename.scala 92:18 148:28]
  assign io_out_3_valid = io_in_3_valid & intFreeList_io_canAllocate & fpFreeList_io_canAllocate & _canOut_T_2; // @[Rename.scala 159:98]
  assign io_out_3_bits_cf_exceptionVec_1 = io_in_3_bits_cf_exceptionVec_1; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_exceptionVec_2 = io_in_3_bits_cf_exceptionVec_2; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_exceptionVec_12 = io_in_3_bits_cf_exceptionVec_12; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_frontendHit_0 = io_in_3_bits_cf_trigger_frontendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_frontendHit_1 = io_in_3_bits_cf_trigger_frontendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_frontendHit_2 = io_in_3_bits_cf_trigger_frontendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_frontendHit_3 = io_in_3_bits_cf_trigger_frontendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendEn_0 = io_in_3_bits_cf_trigger_backendEn_0; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendEn_1 = io_in_3_bits_cf_trigger_backendEn_1; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_0 = io_in_3_bits_cf_trigger_backendHit_0; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_1 = io_in_3_bits_cf_trigger_backendHit_1; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_2 = io_in_3_bits_cf_trigger_backendHit_2; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_3 = io_in_3_bits_cf_trigger_backendHit_3; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_4 = io_in_3_bits_cf_trigger_backendHit_4; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_trigger_backendHit_5 = io_in_3_bits_cf_trigger_backendHit_5; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_pd_isRVC = io_in_3_bits_cf_pd_isRVC; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_pd_brType = io_in_3_bits_cf_pd_brType; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_pd_isCall = io_in_3_bits_cf_pd_isCall; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_pd_isRet = io_in_3_bits_cf_pd_isRet; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_pred_taken = io_in_3_bits_cf_pred_taken; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_crossPageIPFFix = io_in_3_bits_cf_crossPageIPFFix; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_storeSetHit = io_ssit_3_valid; // @[Rename.scala 92:18 119:28]
  assign io_out_3_bits_cf_loadWaitStrict = io_ssit_3_strict & io_ssit_3_valid; // @[Rename.scala 120:52]
  assign io_out_3_bits_cf_ssid = io_ssit_3_ssid; // @[Rename.scala 92:18 121:21]
  assign io_out_3_bits_cf_ftqPtr_flag = io_in_3_bits_cf_ftqPtr_flag; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_ftqPtr_value = io_in_3_bits_cf_ftqPtr_value; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_cf_ftqOffset = io_in_3_bits_cf_ftqOffset; // @[Rename.scala 115:16 92:18]
  assign io_out_3_bits_ctrl_srcType_0 = fused_lui_load_2 ? 2'h1 : io_in_3_bits_ctrl_srcType_0; // @[Rename.scala 160:20 228:27 232:38]
  assign io_out_3_bits_ctrl_srcType_1 = io_in_3_bits_ctrl_srcType_1; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_srcType_2 = io_in_3_bits_ctrl_srcType_2; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_ldest = io_in_3_bits_ctrl_ldest; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fuType = io_in_3_bits_ctrl_fuType; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fuOpType = io_in_3_bits_ctrl_fuOpType; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_rfWen = io_in_3_bits_ctrl_rfWen; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpWen = io_in_3_bits_ctrl_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_isRVCORETrap = io_in_3_bits_ctrl_isRVCORETrap; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_noSpecExec = io_in_3_bits_ctrl_noSpecExec; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_blockBackward = io_in_3_bits_ctrl_blockBackward; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_flushPipe = io_in_3_bits_ctrl_flushPipe; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_selImm = io_in_3_bits_ctrl_selImm; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_imm = fused_lui_load_2 ? _io_out_3_bits_ctrl_imm_T_2 : _GEN_3; // @[Rename.scala 228:27 233:31]
  assign io_out_3_bits_ctrl_commitType = io_in_3_bits_ctrl_commitType; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_isAddSub = io_in_3_bits_ctrl_fpu_isAddSub; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_typeTagIn = io_in_3_bits_ctrl_fpu_typeTagIn; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_typeTagOut = io_in_3_bits_ctrl_fpu_typeTagOut; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_fromInt = io_in_3_bits_ctrl_fpu_fromInt; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_wflags = io_in_3_bits_ctrl_fpu_wflags; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_fpWen = io_in_3_bits_ctrl_fpu_fpWen; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_fmaCmd = io_in_3_bits_ctrl_fpu_fmaCmd; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_div = io_in_3_bits_ctrl_fpu_div; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_sqrt = io_in_3_bits_ctrl_fpu_sqrt; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_fcvt = io_in_3_bits_ctrl_fpu_fcvt; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_typ = io_in_3_bits_ctrl_fpu_typ; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_fmt = io_in_3_bits_ctrl_fpu_fmt; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_ren3 = io_in_3_bits_ctrl_fpu_ren3; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_fpu_rm = io_in_3_bits_ctrl_fpu_rm; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_ctrl_isMove = io_in_3_bits_ctrl_isMove; // @[Rename.scala 116:18 92:18]
  assign io_out_3_bits_psrc_0 = fused_lui_load_2 ? io_in_2_bits_ctrl_imm[14:8] : _io_out_3_bits_psrc_0_T_5; // @[Rename.scala 228:27 209:28 238:30]
  assign io_out_3_bits_psrc_1 = fused_lui_load_2 ? {{2'd0}, io_in_2_bits_ctrl_imm[19:15]} : _io_out_3_bits_psrc_1_T_5; // @[Rename.scala 228:27 212:28 239:30]
  assign io_out_3_bits_psrc_2 = bypassCond_2_2[2] ? io_out_2_bits_pdest : _io_out_3_bits_psrc_2_T_4; // @[Rename.scala 216:23]
  assign io_out_3_bits_pdest = io_in_3_bits_ctrl_isMove ? io_out_3_bits_psrc_0 : uops_3_pdest; // @[Rename.scala 221:32]
  assign io_out_3_bits_old_pdest = bypassCond_3_2[2] ? io_out_2_bits_pdest : _io_out_3_bits_old_pdest_T_4; // @[Rename.scala 219:23]
  assign io_out_3_bits_robIdx_flag = _uops_3_robIdx_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_3_bits_robIdx_value = _uops_3_robIdx_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_3_bits_eliminatedMove = io_in_3_bits_ctrl_isMove; // @[Rename.scala 92:18 148:28]
  assign io_perf_0_value = {{3'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign intFreeList_clock = clock;
  assign intFreeList_reset = reset;
  assign intFreeList_io_redirect = io_redirect_valid; // @[Rename.scala 64:20]
  assign intFreeList_io_walk = io_robCommits_isWalk; // @[Rename.scala 65:16]
  assign intFreeList_io_allocateReq_0 = needIntDest_0 & ~io_in_0_bits_ctrl_isMove; // @[Rename.scala 132:53]
  assign intFreeList_io_allocateReq_1 = needIntDest_1 & ~io_in_1_bits_ctrl_isMove; // @[Rename.scala 132:53]
  assign intFreeList_io_allocateReq_2 = needIntDest_2 & ~io_in_2_bits_ctrl_isMove; // @[Rename.scala 132:53]
  assign intFreeList_io_allocateReq_3 = needIntDest_3 & ~io_in_3_bits_ctrl_isMove; // @[Rename.scala 132:53]
  assign intFreeList_io_doAllocate = fpFreeList_io_canAllocate & io_out_0_ready; // @[Rename.scala 72:58]
  assign intFreeList_io_freeReq_0 = intRefCounter_io_freeRegs_0_valid; // @[Rename.scala 277:35]
  assign intFreeList_io_freeReq_1 = intRefCounter_io_freeRegs_1_valid; // @[Rename.scala 277:35]
  assign intFreeList_io_freeReq_2 = intRefCounter_io_freeRegs_2_valid; // @[Rename.scala 277:35]
  assign intFreeList_io_freeReq_3 = intRefCounter_io_freeRegs_3_valid; // @[Rename.scala 277:35]
  assign intFreeList_io_freePhyReg_0 = intRefCounter_io_freeRegs_0_bits; // @[Rename.scala 278:38]
  assign intFreeList_io_freePhyReg_1 = intRefCounter_io_freeRegs_1_bits; // @[Rename.scala 278:38]
  assign intFreeList_io_freePhyReg_2 = intRefCounter_io_freeRegs_2_bits; // @[Rename.scala 278:38]
  assign intFreeList_io_freePhyReg_3 = intRefCounter_io_freeRegs_3_bits; // @[Rename.scala 278:38]
  assign intRefCounter_clock = clock;
  assign intRefCounter_reset = reset;
  assign intRefCounter_io_allocate_0_valid = needIntDest_0 & intFreeList_io_canAllocate & intFreeList_io_doAllocate &
    _canOut_T_2 & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign intRefCounter_io_allocate_0_bits = io_out_0_bits_pdest; // @[Rename.scala 171:39]
  assign intRefCounter_io_allocate_1_valid = needIntDest_1 & intFreeList_io_canAllocate & intFreeList_io_doAllocate &
    _canOut_T_2 & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign intRefCounter_io_allocate_1_bits = io_out_1_bits_pdest; // @[Rename.scala 171:39]
  assign intRefCounter_io_allocate_2_valid = needIntDest_2 & intFreeList_io_canAllocate & intFreeList_io_doAllocate &
    _canOut_T_2 & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign intRefCounter_io_allocate_2_bits = io_out_2_bits_pdest; // @[Rename.scala 171:39]
  assign intRefCounter_io_allocate_3_valid = needIntDest_3 & intFreeList_io_canAllocate & intFreeList_io_doAllocate &
    _canOut_T_2 & ~io_redirect_valid; // @[Rename.scala 167:121]
  assign intRefCounter_io_allocate_3_bits = io_out_3_bits_pdest; // @[Rename.scala 171:39]
  assign intRefCounter_io_deallocate_0_valid = io_robCommits_valid_0 & io_robCommits_info_0_rfWen; // @[Rename.scala 281:68]
  assign intRefCounter_io_deallocate_0_bits = io_robCommits_isWalk ? io_robCommits_info_0_pdest :
    io_robCommits_info_0_old_pdest; // @[Rename.scala 282:47]
  assign intRefCounter_io_deallocate_1_valid = io_robCommits_valid_1 & io_robCommits_info_1_rfWen; // @[Rename.scala 281:68]
  assign intRefCounter_io_deallocate_1_bits = io_robCommits_isWalk ? io_robCommits_info_1_pdest :
    io_robCommits_info_1_old_pdest; // @[Rename.scala 282:47]
  assign intRefCounter_io_deallocate_2_valid = io_robCommits_valid_2 & io_robCommits_info_2_rfWen; // @[Rename.scala 281:68]
  assign intRefCounter_io_deallocate_2_bits = io_robCommits_isWalk ? io_robCommits_info_2_pdest :
    io_robCommits_info_2_old_pdest; // @[Rename.scala 282:47]
  assign intRefCounter_io_deallocate_3_valid = io_robCommits_valid_3 & io_robCommits_info_3_rfWen; // @[Rename.scala 281:68]
  assign intRefCounter_io_deallocate_3_bits = io_robCommits_isWalk ? io_robCommits_info_3_pdest :
    io_robCommits_info_3_old_pdest; // @[Rename.scala 282:47]
  assign fpFreeList_clock = clock;
  assign fpFreeList_reset = reset;
  assign fpFreeList_io_redirect = io_redirect_valid; // @[Rename.scala 64:20]
  assign fpFreeList_io_walk = io_robCommits_isWalk; // @[Rename.scala 65:16]
  assign fpFreeList_io_allocateReq_0 = io_in_0_valid & io_in_0_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  assign fpFreeList_io_allocateReq_1 = io_in_1_valid & io_in_1_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  assign fpFreeList_io_allocateReq_2 = io_in_2_valid & io_in_2_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  assign fpFreeList_io_allocateReq_3 = io_in_3_valid & io_in_3_bits_ctrl_fpWen; // @[Rename.scala 129:30]
  assign fpFreeList_io_doAllocate = intFreeList_io_canAllocate & io_out_0_ready; // @[Rename.scala 73:58]
  assign fpFreeList_io_freeReq_0 = _fpFreeList_io_stepBack_T & _canOut_T_2; // @[Rename.scala 274:54]
  assign fpFreeList_io_freeReq_1 = _fpFreeList_io_stepBack_T_1 & _canOut_T_2; // @[Rename.scala 274:54]
  assign fpFreeList_io_freeReq_2 = _fpFreeList_io_stepBack_T_2 & _canOut_T_2; // @[Rename.scala 274:54]
  assign fpFreeList_io_freeReq_3 = _fpFreeList_io_stepBack_T_3 & _canOut_T_2; // @[Rename.scala 274:54]
  assign fpFreeList_io_freePhyReg_0 = io_robCommits_info_0_old_pdest; // @[Rename.scala 275:37]
  assign fpFreeList_io_freePhyReg_1 = io_robCommits_info_1_old_pdest; // @[Rename.scala 275:37]
  assign fpFreeList_io_freePhyReg_2 = io_robCommits_info_2_old_pdest; // @[Rename.scala 275:37]
  assign fpFreeList_io_freePhyReg_3 = io_robCommits_info_3_old_pdest; // @[Rename.scala 275:37]
  assign fpFreeList_io_stepBack = _fpFreeList_io_stepBack_T_4 + _fpFreeList_io_stepBack_T_6; // @[Bitwise.scala 48:55]
  always @(posedge clock) begin
    if (reset) begin // @[Rename.scala 81:27]
      robIdxHead_flag <= 1'h0; // @[Rename.scala 81:27]
    end else if (io_redirect_valid) begin // @[Rename.scala 83:27]
      robIdxHead_flag <= io_redirect_bits_robIdx_flag;
    end else if (lastCycleMisprediction) begin // @[Rename.scala 84:13]
      robIdxHead_flag <= robIdxHeadNext_new_ptr_flag;
    end else if (canOut) begin // @[Rename.scala 85:29]
      robIdxHead_flag <= robIdxHeadNext_new_ptr_1_flag;
    end
    if (reset) begin // @[Rename.scala 81:27]
      robIdxHead_value <= 7'h0; // @[Rename.scala 81:27]
    end else if (io_redirect_valid) begin // @[Rename.scala 83:27]
      robIdxHead_value <= io_redirect_bits_robIdx_value;
    end else if (lastCycleMisprediction) begin // @[Rename.scala 84:13]
      robIdxHead_value <= robIdxHeadNext_new_ptr_value;
    end else if (canOut) begin // @[Rename.scala 85:29]
      robIdxHead_value <= robIdxHeadNext_new_ptr_1_value;
    end
    lastCycleMisprediction <= io_redirect_valid & ~io_redirect_bits_level; // @[Rename.scala 82:58]
    io_perf_0_value_REG <= _T_87 + _T_89; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_35 + _T_37; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_44 & _canOut_T_2; // @[Rename.scala 329:127]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_50 & _canOut_T_2; // @[Rename.scala 330:127]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _T_56 & _canOut_T_2; // @[Rename.scala 331:127]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= _T_61 & io_robCommits_isWalk; // @[Rename.scala 332:127]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= intFreeList_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= intFreeList_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= intFreeList_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= intFreeList_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= fpFreeList_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= fpFreeList_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_12_value_REG <= fpFreeList_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_13_value_REG <= fpFreeList_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  robIdxHead_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  robIdxHead_value = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  lastCycleMisprediction = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_30[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
