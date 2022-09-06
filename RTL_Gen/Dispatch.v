module Dispatch(
  input         clock,
  input         reset,
  output        io_fromRename_0_ready,
  input         io_fromRename_0_valid,
  input         io_fromRename_0_bits_cf_exceptionVec_1,
  input         io_fromRename_0_bits_cf_exceptionVec_2,
  input         io_fromRename_0_bits_cf_exceptionVec_12,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_0_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_0_bits_cf_trigger_backendEn_0,
  input         io_fromRename_0_bits_cf_trigger_backendEn_1,
  input         io_fromRename_0_bits_cf_trigger_backendHit_0,
  input         io_fromRename_0_bits_cf_trigger_backendHit_1,
  input         io_fromRename_0_bits_cf_trigger_backendHit_2,
  input         io_fromRename_0_bits_cf_trigger_backendHit_3,
  input         io_fromRename_0_bits_cf_trigger_backendHit_4,
  input         io_fromRename_0_bits_cf_trigger_backendHit_5,
  input         io_fromRename_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_0_bits_cf_pd_brType,
  input         io_fromRename_0_bits_cf_pd_isCall,
  input         io_fromRename_0_bits_cf_pd_isRet,
  input         io_fromRename_0_bits_cf_pred_taken,
  input         io_fromRename_0_bits_cf_crossPageIPFFix,
  input         io_fromRename_0_bits_cf_storeSetHit,
  input         io_fromRename_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_0_bits_cf_ssid,
  input         io_fromRename_0_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromRename_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_0_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_0_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_0_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_0_bits_ctrl_fuOpType,
  input         io_fromRename_0_bits_ctrl_rfWen,
  input         io_fromRename_0_bits_ctrl_fpWen,
  input         io_fromRename_0_bits_ctrl_isRVCORETrap,
  input         io_fromRename_0_bits_ctrl_noSpecExec,
  input         io_fromRename_0_bits_ctrl_blockBackward,
  input         io_fromRename_0_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_0_bits_ctrl_selImm,
  input  [19:0] io_fromRename_0_bits_ctrl_imm,
  input  [2:0]  io_fromRename_0_bits_ctrl_commitType,
  input         io_fromRename_0_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_0_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_0_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_0_bits_ctrl_fpu_fromInt,
  input         io_fromRename_0_bits_ctrl_fpu_wflags,
  input         io_fromRename_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_0_bits_ctrl_fpu_div,
  input         io_fromRename_0_bits_ctrl_fpu_sqrt,
  input         io_fromRename_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_0_bits_ctrl_fpu_fmt,
  input         io_fromRename_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_0_bits_ctrl_fpu_rm,
  input         io_fromRename_0_bits_ctrl_isMove,
  input  [6:0]  io_fromRename_0_bits_psrc_0,
  input  [6:0]  io_fromRename_0_bits_psrc_1,
  input  [6:0]  io_fromRename_0_bits_psrc_2,
  input  [6:0]  io_fromRename_0_bits_pdest,
  input  [6:0]  io_fromRename_0_bits_old_pdest,
  input         io_fromRename_0_bits_robIdx_flag,
  input  [6:0]  io_fromRename_0_bits_robIdx_value,
  input         io_fromRename_0_bits_eliminatedMove,
  output        io_fromRename_1_ready,
  input         io_fromRename_1_valid,
  input         io_fromRename_1_bits_cf_exceptionVec_1,
  input         io_fromRename_1_bits_cf_exceptionVec_2,
  input         io_fromRename_1_bits_cf_exceptionVec_12,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_1_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_1_bits_cf_trigger_backendEn_0,
  input         io_fromRename_1_bits_cf_trigger_backendEn_1,
  input         io_fromRename_1_bits_cf_trigger_backendHit_0,
  input         io_fromRename_1_bits_cf_trigger_backendHit_1,
  input         io_fromRename_1_bits_cf_trigger_backendHit_2,
  input         io_fromRename_1_bits_cf_trigger_backendHit_3,
  input         io_fromRename_1_bits_cf_trigger_backendHit_4,
  input         io_fromRename_1_bits_cf_trigger_backendHit_5,
  input         io_fromRename_1_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_1_bits_cf_pd_brType,
  input         io_fromRename_1_bits_cf_pd_isCall,
  input         io_fromRename_1_bits_cf_pd_isRet,
  input         io_fromRename_1_bits_cf_pred_taken,
  input         io_fromRename_1_bits_cf_crossPageIPFFix,
  input         io_fromRename_1_bits_cf_storeSetHit,
  input         io_fromRename_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_1_bits_cf_ssid,
  input         io_fromRename_1_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromRename_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_1_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_1_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_1_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_1_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_1_bits_ctrl_fuOpType,
  input         io_fromRename_1_bits_ctrl_rfWen,
  input         io_fromRename_1_bits_ctrl_fpWen,
  input         io_fromRename_1_bits_ctrl_isRVCORETrap,
  input         io_fromRename_1_bits_ctrl_noSpecExec,
  input         io_fromRename_1_bits_ctrl_blockBackward,
  input         io_fromRename_1_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_1_bits_ctrl_selImm,
  input  [19:0] io_fromRename_1_bits_ctrl_imm,
  input  [2:0]  io_fromRename_1_bits_ctrl_commitType,
  input         io_fromRename_1_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_1_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_1_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_1_bits_ctrl_fpu_fromInt,
  input         io_fromRename_1_bits_ctrl_fpu_wflags,
  input         io_fromRename_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_1_bits_ctrl_fpu_div,
  input         io_fromRename_1_bits_ctrl_fpu_sqrt,
  input         io_fromRename_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_1_bits_ctrl_fpu_fmt,
  input         io_fromRename_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_1_bits_ctrl_fpu_rm,
  input         io_fromRename_1_bits_ctrl_isMove,
  input  [6:0]  io_fromRename_1_bits_psrc_0,
  input  [6:0]  io_fromRename_1_bits_psrc_1,
  input  [6:0]  io_fromRename_1_bits_psrc_2,
  input  [6:0]  io_fromRename_1_bits_pdest,
  input  [6:0]  io_fromRename_1_bits_old_pdest,
  input         io_fromRename_1_bits_robIdx_flag,
  input  [6:0]  io_fromRename_1_bits_robIdx_value,
  input         io_fromRename_1_bits_eliminatedMove,
  output        io_fromRename_2_ready,
  input         io_fromRename_2_valid,
  input         io_fromRename_2_bits_cf_exceptionVec_1,
  input         io_fromRename_2_bits_cf_exceptionVec_2,
  input         io_fromRename_2_bits_cf_exceptionVec_12,
  input         io_fromRename_2_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_2_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_2_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_2_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_2_bits_cf_trigger_backendEn_0,
  input         io_fromRename_2_bits_cf_trigger_backendEn_1,
  input         io_fromRename_2_bits_cf_trigger_backendHit_0,
  input         io_fromRename_2_bits_cf_trigger_backendHit_1,
  input         io_fromRename_2_bits_cf_trigger_backendHit_2,
  input         io_fromRename_2_bits_cf_trigger_backendHit_3,
  input         io_fromRename_2_bits_cf_trigger_backendHit_4,
  input         io_fromRename_2_bits_cf_trigger_backendHit_5,
  input         io_fromRename_2_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_2_bits_cf_pd_brType,
  input         io_fromRename_2_bits_cf_pd_isCall,
  input         io_fromRename_2_bits_cf_pd_isRet,
  input         io_fromRename_2_bits_cf_pred_taken,
  input         io_fromRename_2_bits_cf_crossPageIPFFix,
  input         io_fromRename_2_bits_cf_storeSetHit,
  input         io_fromRename_2_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_2_bits_cf_ssid,
  input         io_fromRename_2_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromRename_2_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_2_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_2_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_2_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_2_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_2_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_2_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_2_bits_ctrl_fuOpType,
  input         io_fromRename_2_bits_ctrl_rfWen,
  input         io_fromRename_2_bits_ctrl_fpWen,
  input         io_fromRename_2_bits_ctrl_isRVCORETrap,
  input         io_fromRename_2_bits_ctrl_noSpecExec,
  input         io_fromRename_2_bits_ctrl_blockBackward,
  input         io_fromRename_2_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_2_bits_ctrl_selImm,
  input  [19:0] io_fromRename_2_bits_ctrl_imm,
  input  [2:0]  io_fromRename_2_bits_ctrl_commitType,
  input         io_fromRename_2_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_2_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_2_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_2_bits_ctrl_fpu_fromInt,
  input         io_fromRename_2_bits_ctrl_fpu_wflags,
  input         io_fromRename_2_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_2_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_2_bits_ctrl_fpu_div,
  input         io_fromRename_2_bits_ctrl_fpu_sqrt,
  input         io_fromRename_2_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_2_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_2_bits_ctrl_fpu_fmt,
  input         io_fromRename_2_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_2_bits_ctrl_fpu_rm,
  input         io_fromRename_2_bits_ctrl_isMove,
  input  [6:0]  io_fromRename_2_bits_psrc_0,
  input  [6:0]  io_fromRename_2_bits_psrc_1,
  input  [6:0]  io_fromRename_2_bits_psrc_2,
  input  [6:0]  io_fromRename_2_bits_pdest,
  input  [6:0]  io_fromRename_2_bits_old_pdest,
  input         io_fromRename_2_bits_robIdx_flag,
  input  [6:0]  io_fromRename_2_bits_robIdx_value,
  input         io_fromRename_2_bits_eliminatedMove,
  output        io_fromRename_3_ready,
  input         io_fromRename_3_valid,
  input         io_fromRename_3_bits_cf_exceptionVec_1,
  input         io_fromRename_3_bits_cf_exceptionVec_2,
  input         io_fromRename_3_bits_cf_exceptionVec_12,
  input         io_fromRename_3_bits_cf_trigger_frontendHit_0,
  input         io_fromRename_3_bits_cf_trigger_frontendHit_1,
  input         io_fromRename_3_bits_cf_trigger_frontendHit_2,
  input         io_fromRename_3_bits_cf_trigger_frontendHit_3,
  input         io_fromRename_3_bits_cf_trigger_backendEn_0,
  input         io_fromRename_3_bits_cf_trigger_backendEn_1,
  input         io_fromRename_3_bits_cf_trigger_backendHit_0,
  input         io_fromRename_3_bits_cf_trigger_backendHit_1,
  input         io_fromRename_3_bits_cf_trigger_backendHit_2,
  input         io_fromRename_3_bits_cf_trigger_backendHit_3,
  input         io_fromRename_3_bits_cf_trigger_backendHit_4,
  input         io_fromRename_3_bits_cf_trigger_backendHit_5,
  input         io_fromRename_3_bits_cf_pd_isRVC,
  input  [1:0]  io_fromRename_3_bits_cf_pd_brType,
  input         io_fromRename_3_bits_cf_pd_isCall,
  input         io_fromRename_3_bits_cf_pd_isRet,
  input         io_fromRename_3_bits_cf_pred_taken,
  input         io_fromRename_3_bits_cf_crossPageIPFFix,
  input         io_fromRename_3_bits_cf_storeSetHit,
  input         io_fromRename_3_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromRename_3_bits_cf_ssid,
  input         io_fromRename_3_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromRename_3_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromRename_3_bits_cf_ftqOffset,
  input  [1:0]  io_fromRename_3_bits_ctrl_srcType_0,
  input  [1:0]  io_fromRename_3_bits_ctrl_srcType_1,
  input  [1:0]  io_fromRename_3_bits_ctrl_srcType_2,
  input  [4:0]  io_fromRename_3_bits_ctrl_ldest,
  input  [3:0]  io_fromRename_3_bits_ctrl_fuType,
  input  [6:0]  io_fromRename_3_bits_ctrl_fuOpType,
  input         io_fromRename_3_bits_ctrl_rfWen,
  input         io_fromRename_3_bits_ctrl_fpWen,
  input         io_fromRename_3_bits_ctrl_isRVCORETrap,
  input         io_fromRename_3_bits_ctrl_noSpecExec,
  input         io_fromRename_3_bits_ctrl_blockBackward,
  input         io_fromRename_3_bits_ctrl_flushPipe,
  input  [3:0]  io_fromRename_3_bits_ctrl_selImm,
  input  [19:0] io_fromRename_3_bits_ctrl_imm,
  input  [2:0]  io_fromRename_3_bits_ctrl_commitType,
  input         io_fromRename_3_bits_ctrl_fpu_isAddSub,
  input         io_fromRename_3_bits_ctrl_fpu_typeTagIn,
  input         io_fromRename_3_bits_ctrl_fpu_typeTagOut,
  input         io_fromRename_3_bits_ctrl_fpu_fromInt,
  input         io_fromRename_3_bits_ctrl_fpu_wflags,
  input         io_fromRename_3_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromRename_3_bits_ctrl_fpu_fmaCmd,
  input         io_fromRename_3_bits_ctrl_fpu_div,
  input         io_fromRename_3_bits_ctrl_fpu_sqrt,
  input         io_fromRename_3_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromRename_3_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromRename_3_bits_ctrl_fpu_fmt,
  input         io_fromRename_3_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromRename_3_bits_ctrl_fpu_rm,
  input         io_fromRename_3_bits_ctrl_isMove,
  input  [6:0]  io_fromRename_3_bits_psrc_0,
  input  [6:0]  io_fromRename_3_bits_psrc_1,
  input  [6:0]  io_fromRename_3_bits_psrc_2,
  input  [6:0]  io_fromRename_3_bits_pdest,
  input  [6:0]  io_fromRename_3_bits_old_pdest,
  input         io_fromRename_3_bits_robIdx_flag,
  input  [6:0]  io_fromRename_3_bits_robIdx_value,
  input         io_fromRename_3_bits_eliminatedMove,
  output        io_recv_0,
  output        io_recv_1,
  output        io_recv_2,
  output        io_recv_3,
  input         io_enqRob_canAccept,
  input         io_enqRob_isEmpty,
  output        io_enqRob_needAlloc_0,
  output        io_enqRob_needAlloc_1,
  output        io_enqRob_needAlloc_2,
  output        io_enqRob_needAlloc_3,
  output        io_enqRob_req_0_valid,
  output        io_enqRob_req_0_bits_cf_exceptionVec_1,
  output        io_enqRob_req_0_bits_cf_exceptionVec_2,
  output        io_enqRob_req_0_bits_cf_exceptionVec_12,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_0_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_0_bits_cf_pd_isRVC,
  output        io_enqRob_req_0_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_0_bits_cf_loadWaitBit,
  output        io_enqRob_req_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_enqRob_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_0_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_0_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_0_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_0_bits_ctrl_fuOpType,
  output        io_enqRob_req_0_bits_ctrl_rfWen,
  output        io_enqRob_req_0_bits_ctrl_fpWen,
  output        io_enqRob_req_0_bits_ctrl_isRVCORETrap,
  output        io_enqRob_req_0_bits_ctrl_noSpecExec,
  output        io_enqRob_req_0_bits_ctrl_blockBackward,
  output        io_enqRob_req_0_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_0_bits_ctrl_commitType,
  output        io_enqRob_req_0_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_0_bits_ctrl_isMove,
  output        io_enqRob_req_0_bits_ctrl_singleStep,
  output [6:0]  io_enqRob_req_0_bits_pdest,
  output [6:0]  io_enqRob_req_0_bits_old_pdest,
  output        io_enqRob_req_0_bits_robIdx_flag,
  output [6:0]  io_enqRob_req_0_bits_robIdx_value,
  output        io_enqRob_req_0_bits_eliminatedMove,
  output        io_enqRob_req_1_valid,
  output        io_enqRob_req_1_bits_cf_exceptionVec_1,
  output        io_enqRob_req_1_bits_cf_exceptionVec_2,
  output        io_enqRob_req_1_bits_cf_exceptionVec_12,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_1_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_1_bits_cf_pd_isRVC,
  output        io_enqRob_req_1_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_1_bits_cf_loadWaitBit,
  output        io_enqRob_req_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_enqRob_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_1_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_1_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_1_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_1_bits_ctrl_fuOpType,
  output        io_enqRob_req_1_bits_ctrl_rfWen,
  output        io_enqRob_req_1_bits_ctrl_fpWen,
  output        io_enqRob_req_1_bits_ctrl_isRVCORETrap,
  output        io_enqRob_req_1_bits_ctrl_noSpecExec,
  output        io_enqRob_req_1_bits_ctrl_blockBackward,
  output        io_enqRob_req_1_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_1_bits_ctrl_commitType,
  output        io_enqRob_req_1_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_1_bits_ctrl_isMove,
  output        io_enqRob_req_1_bits_ctrl_singleStep,
  output [6:0]  io_enqRob_req_1_bits_pdest,
  output [6:0]  io_enqRob_req_1_bits_old_pdest,
  output        io_enqRob_req_1_bits_robIdx_flag,
  output [6:0]  io_enqRob_req_1_bits_robIdx_value,
  output        io_enqRob_req_1_bits_eliminatedMove,
  output        io_enqRob_req_2_valid,
  output        io_enqRob_req_2_bits_cf_exceptionVec_1,
  output        io_enqRob_req_2_bits_cf_exceptionVec_2,
  output        io_enqRob_req_2_bits_cf_exceptionVec_12,
  output        io_enqRob_req_2_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_2_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_2_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_2_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_2_bits_cf_pd_isRVC,
  output        io_enqRob_req_2_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_2_bits_cf_loadWaitBit,
  output        io_enqRob_req_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_enqRob_req_2_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_2_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_2_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_2_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_2_bits_ctrl_fuOpType,
  output        io_enqRob_req_2_bits_ctrl_rfWen,
  output        io_enqRob_req_2_bits_ctrl_fpWen,
  output        io_enqRob_req_2_bits_ctrl_isRVCORETrap,
  output        io_enqRob_req_2_bits_ctrl_noSpecExec,
  output        io_enqRob_req_2_bits_ctrl_blockBackward,
  output        io_enqRob_req_2_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_2_bits_ctrl_commitType,
  output        io_enqRob_req_2_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_2_bits_ctrl_isMove,
  output        io_enqRob_req_2_bits_ctrl_singleStep,
  output [6:0]  io_enqRob_req_2_bits_pdest,
  output [6:0]  io_enqRob_req_2_bits_old_pdest,
  output        io_enqRob_req_2_bits_robIdx_flag,
  output [6:0]  io_enqRob_req_2_bits_robIdx_value,
  output        io_enqRob_req_2_bits_eliminatedMove,
  output        io_enqRob_req_3_valid,
  output        io_enqRob_req_3_bits_cf_exceptionVec_1,
  output        io_enqRob_req_3_bits_cf_exceptionVec_2,
  output        io_enqRob_req_3_bits_cf_exceptionVec_12,
  output        io_enqRob_req_3_bits_cf_trigger_frontendHit_0,
  output        io_enqRob_req_3_bits_cf_trigger_frontendHit_1,
  output        io_enqRob_req_3_bits_cf_trigger_frontendHit_2,
  output        io_enqRob_req_3_bits_cf_trigger_frontendHit_3,
  output        io_enqRob_req_3_bits_cf_pd_isRVC,
  output        io_enqRob_req_3_bits_cf_crossPageIPFFix,
  output        io_enqRob_req_3_bits_cf_loadWaitBit,
  output        io_enqRob_req_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_enqRob_req_3_bits_cf_ftqPtr_value,
  output [2:0]  io_enqRob_req_3_bits_cf_ftqOffset,
  output [4:0]  io_enqRob_req_3_bits_ctrl_ldest,
  output [3:0]  io_enqRob_req_3_bits_ctrl_fuType,
  output [6:0]  io_enqRob_req_3_bits_ctrl_fuOpType,
  output        io_enqRob_req_3_bits_ctrl_rfWen,
  output        io_enqRob_req_3_bits_ctrl_fpWen,
  output        io_enqRob_req_3_bits_ctrl_isRVCORETrap,
  output        io_enqRob_req_3_bits_ctrl_noSpecExec,
  output        io_enqRob_req_3_bits_ctrl_blockBackward,
  output        io_enqRob_req_3_bits_ctrl_flushPipe,
  output [2:0]  io_enqRob_req_3_bits_ctrl_commitType,
  output        io_enqRob_req_3_bits_ctrl_fpu_wflags,
  output        io_enqRob_req_3_bits_ctrl_isMove,
  output        io_enqRob_req_3_bits_ctrl_singleStep,
  output [6:0]  io_enqRob_req_3_bits_pdest,
  output [6:0]  io_enqRob_req_3_bits_old_pdest,
  output        io_enqRob_req_3_bits_robIdx_flag,
  output [6:0]  io_enqRob_req_3_bits_robIdx_value,
  output        io_enqRob_req_3_bits_eliminatedMove,
  output        io_allocPregs_0_isInt,
  output        io_allocPregs_0_isFp,
  output [6:0]  io_allocPregs_0_preg,
  output        io_allocPregs_1_isInt,
  output        io_allocPregs_1_isFp,
  output [6:0]  io_allocPregs_1_preg,
  output        io_allocPregs_2_isInt,
  output        io_allocPregs_2_isFp,
  output [6:0]  io_allocPregs_2_preg,
  output        io_allocPregs_3_isInt,
  output        io_allocPregs_3_isFp,
  output [6:0]  io_allocPregs_3_preg,
  input         io_toIntDq_canAccept,
  output        io_toIntDq_needAlloc_0,
  output        io_toIntDq_needAlloc_1,
  output        io_toIntDq_needAlloc_2,
  output        io_toIntDq_req_0_valid,
  output        io_toIntDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_0,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_1,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_2,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_3,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_4,
  output        io_toIntDq_req_0_bits_cf_trigger_backendHit_5,
  output        io_toIntDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_0_bits_cf_pd_brType,
  output        io_toIntDq_req_0_bits_cf_pd_isCall,
  output        io_toIntDq_req_0_bits_cf_pd_isRet,
  output        io_toIntDq_req_0_bits_cf_pred_taken,
  output [6:0]  io_toIntDq_req_0_bits_cf_waitForRobIdx_value,
  output        io_toIntDq_req_0_bits_cf_loadWaitBit,
  output        io_toIntDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_0_bits_cf_ssid,
  output        io_toIntDq_req_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_toIntDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_0_bits_ctrl_fuOpType,
  output        io_toIntDq_req_0_bits_ctrl_rfWen,
  output        io_toIntDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_0_bits_ctrl_imm,
  output        io_toIntDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_0_bits_ctrl_fpu_div,
  output        io_toIntDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_0_bits_ctrl_fpu_rm,
  output [6:0]  io_toIntDq_req_0_bits_psrc_0,
  output [6:0]  io_toIntDq_req_0_bits_psrc_1,
  output [6:0]  io_toIntDq_req_0_bits_psrc_2,
  output [6:0]  io_toIntDq_req_0_bits_pdest,
  output        io_toIntDq_req_0_bits_robIdx_flag,
  output [6:0]  io_toIntDq_req_0_bits_robIdx_value,
  output        io_toIntDq_req_1_valid,
  output        io_toIntDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_0,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_1,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_2,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_3,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_4,
  output        io_toIntDq_req_1_bits_cf_trigger_backendHit_5,
  output        io_toIntDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_1_bits_cf_pd_brType,
  output        io_toIntDq_req_1_bits_cf_pd_isCall,
  output        io_toIntDq_req_1_bits_cf_pd_isRet,
  output        io_toIntDq_req_1_bits_cf_pred_taken,
  output [6:0]  io_toIntDq_req_1_bits_cf_waitForRobIdx_value,
  output        io_toIntDq_req_1_bits_cf_loadWaitBit,
  output        io_toIntDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_1_bits_cf_ssid,
  output        io_toIntDq_req_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_toIntDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_1_bits_ctrl_fuOpType,
  output        io_toIntDq_req_1_bits_ctrl_rfWen,
  output        io_toIntDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_1_bits_ctrl_imm,
  output        io_toIntDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_1_bits_ctrl_fpu_div,
  output        io_toIntDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_1_bits_ctrl_fpu_rm,
  output [6:0]  io_toIntDq_req_1_bits_psrc_0,
  output [6:0]  io_toIntDq_req_1_bits_psrc_1,
  output [6:0]  io_toIntDq_req_1_bits_psrc_2,
  output [6:0]  io_toIntDq_req_1_bits_pdest,
  output        io_toIntDq_req_1_bits_robIdx_flag,
  output [6:0]  io_toIntDq_req_1_bits_robIdx_value,
  output        io_toIntDq_req_2_valid,
  output        io_toIntDq_req_2_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_2_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_0,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_1,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_2,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_3,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_4,
  output        io_toIntDq_req_2_bits_cf_trigger_backendHit_5,
  output        io_toIntDq_req_2_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_2_bits_cf_pd_brType,
  output        io_toIntDq_req_2_bits_cf_pd_isCall,
  output        io_toIntDq_req_2_bits_cf_pd_isRet,
  output        io_toIntDq_req_2_bits_cf_pred_taken,
  output [6:0]  io_toIntDq_req_2_bits_cf_waitForRobIdx_value,
  output        io_toIntDq_req_2_bits_cf_loadWaitBit,
  output        io_toIntDq_req_2_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_2_bits_cf_ssid,
  output        io_toIntDq_req_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_toIntDq_req_2_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_2_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_2_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_2_bits_ctrl_fuOpType,
  output        io_toIntDq_req_2_bits_ctrl_rfWen,
  output        io_toIntDq_req_2_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_2_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_2_bits_ctrl_imm,
  output        io_toIntDq_req_2_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_2_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_2_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_2_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_2_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_2_bits_ctrl_fpu_div,
  output        io_toIntDq_req_2_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_2_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_2_bits_ctrl_fpu_rm,
  output [6:0]  io_toIntDq_req_2_bits_psrc_0,
  output [6:0]  io_toIntDq_req_2_bits_psrc_1,
  output [6:0]  io_toIntDq_req_2_bits_psrc_2,
  output [6:0]  io_toIntDq_req_2_bits_pdest,
  output        io_toIntDq_req_2_bits_robIdx_flag,
  output [6:0]  io_toIntDq_req_2_bits_robIdx_value,
  output        io_toIntDq_req_3_valid,
  output        io_toIntDq_req_3_bits_cf_trigger_backendEn_0,
  output        io_toIntDq_req_3_bits_cf_trigger_backendEn_1,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_0,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_1,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_2,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_3,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_4,
  output        io_toIntDq_req_3_bits_cf_trigger_backendHit_5,
  output        io_toIntDq_req_3_bits_cf_pd_isRVC,
  output [1:0]  io_toIntDq_req_3_bits_cf_pd_brType,
  output        io_toIntDq_req_3_bits_cf_pd_isCall,
  output        io_toIntDq_req_3_bits_cf_pd_isRet,
  output        io_toIntDq_req_3_bits_cf_pred_taken,
  output [6:0]  io_toIntDq_req_3_bits_cf_waitForRobIdx_value,
  output        io_toIntDq_req_3_bits_cf_loadWaitBit,
  output        io_toIntDq_req_3_bits_cf_loadWaitStrict,
  output [4:0]  io_toIntDq_req_3_bits_cf_ssid,
  output        io_toIntDq_req_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_toIntDq_req_3_bits_cf_ftqPtr_value,
  output [2:0]  io_toIntDq_req_3_bits_cf_ftqOffset,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_srcType_0,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_srcType_1,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_srcType_2,
  output [3:0]  io_toIntDq_req_3_bits_ctrl_fuType,
  output [6:0]  io_toIntDq_req_3_bits_ctrl_fuOpType,
  output        io_toIntDq_req_3_bits_ctrl_rfWen,
  output        io_toIntDq_req_3_bits_ctrl_fpWen,
  output [3:0]  io_toIntDq_req_3_bits_ctrl_selImm,
  output [19:0] io_toIntDq_req_3_bits_ctrl_imm,
  output        io_toIntDq_req_3_bits_ctrl_fpu_isAddSub,
  output        io_toIntDq_req_3_bits_ctrl_fpu_typeTagIn,
  output        io_toIntDq_req_3_bits_ctrl_fpu_typeTagOut,
  output        io_toIntDq_req_3_bits_ctrl_fpu_fromInt,
  output        io_toIntDq_req_3_bits_ctrl_fpu_wflags,
  output        io_toIntDq_req_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_fpu_fmaCmd,
  output        io_toIntDq_req_3_bits_ctrl_fpu_div,
  output        io_toIntDq_req_3_bits_ctrl_fpu_sqrt,
  output        io_toIntDq_req_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_fpu_typ,
  output [1:0]  io_toIntDq_req_3_bits_ctrl_fpu_fmt,
  output        io_toIntDq_req_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_toIntDq_req_3_bits_ctrl_fpu_rm,
  output [6:0]  io_toIntDq_req_3_bits_psrc_0,
  output [6:0]  io_toIntDq_req_3_bits_psrc_1,
  output [6:0]  io_toIntDq_req_3_bits_psrc_2,
  output [6:0]  io_toIntDq_req_3_bits_pdest,
  output        io_toIntDq_req_3_bits_robIdx_flag,
  output [6:0]  io_toIntDq_req_3_bits_robIdx_value,
  input         io_toFpDq_canAccept,
  output        io_toFpDq_needAlloc_0,
  output        io_toFpDq_needAlloc_1,
  output        io_toFpDq_needAlloc_2,
  output        io_toFpDq_req_0_valid,
  output        io_toFpDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_0,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_1,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_2,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_3,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_4,
  output        io_toFpDq_req_0_bits_cf_trigger_backendHit_5,
  output        io_toFpDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_0_bits_cf_pd_brType,
  output        io_toFpDq_req_0_bits_cf_pd_isCall,
  output        io_toFpDq_req_0_bits_cf_pd_isRet,
  output        io_toFpDq_req_0_bits_cf_pred_taken,
  output [6:0]  io_toFpDq_req_0_bits_cf_waitForRobIdx_value,
  output        io_toFpDq_req_0_bits_cf_loadWaitBit,
  output        io_toFpDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_0_bits_cf_ssid,
  output        io_toFpDq_req_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_toFpDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_0_bits_ctrl_fuOpType,
  output        io_toFpDq_req_0_bits_ctrl_rfWen,
  output        io_toFpDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_0_bits_ctrl_imm,
  output        io_toFpDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_0_bits_ctrl_fpu_div,
  output        io_toFpDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_0_bits_ctrl_fpu_rm,
  output [6:0]  io_toFpDq_req_0_bits_psrc_0,
  output [6:0]  io_toFpDq_req_0_bits_psrc_1,
  output [6:0]  io_toFpDq_req_0_bits_psrc_2,
  output [6:0]  io_toFpDq_req_0_bits_pdest,
  output        io_toFpDq_req_0_bits_robIdx_flag,
  output [6:0]  io_toFpDq_req_0_bits_robIdx_value,
  output        io_toFpDq_req_1_valid,
  output        io_toFpDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_0,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_1,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_2,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_3,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_4,
  output        io_toFpDq_req_1_bits_cf_trigger_backendHit_5,
  output        io_toFpDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_1_bits_cf_pd_brType,
  output        io_toFpDq_req_1_bits_cf_pd_isCall,
  output        io_toFpDq_req_1_bits_cf_pd_isRet,
  output        io_toFpDq_req_1_bits_cf_pred_taken,
  output [6:0]  io_toFpDq_req_1_bits_cf_waitForRobIdx_value,
  output        io_toFpDq_req_1_bits_cf_loadWaitBit,
  output        io_toFpDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_1_bits_cf_ssid,
  output        io_toFpDq_req_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_toFpDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_1_bits_ctrl_fuOpType,
  output        io_toFpDq_req_1_bits_ctrl_rfWen,
  output        io_toFpDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_1_bits_ctrl_imm,
  output        io_toFpDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_1_bits_ctrl_fpu_div,
  output        io_toFpDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_1_bits_ctrl_fpu_rm,
  output [6:0]  io_toFpDq_req_1_bits_psrc_0,
  output [6:0]  io_toFpDq_req_1_bits_psrc_1,
  output [6:0]  io_toFpDq_req_1_bits_psrc_2,
  output [6:0]  io_toFpDq_req_1_bits_pdest,
  output        io_toFpDq_req_1_bits_robIdx_flag,
  output [6:0]  io_toFpDq_req_1_bits_robIdx_value,
  output        io_toFpDq_req_2_valid,
  output        io_toFpDq_req_2_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_2_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_0,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_1,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_2,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_3,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_4,
  output        io_toFpDq_req_2_bits_cf_trigger_backendHit_5,
  output        io_toFpDq_req_2_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_2_bits_cf_pd_brType,
  output        io_toFpDq_req_2_bits_cf_pd_isCall,
  output        io_toFpDq_req_2_bits_cf_pd_isRet,
  output        io_toFpDq_req_2_bits_cf_pred_taken,
  output [6:0]  io_toFpDq_req_2_bits_cf_waitForRobIdx_value,
  output        io_toFpDq_req_2_bits_cf_loadWaitBit,
  output        io_toFpDq_req_2_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_2_bits_cf_ssid,
  output        io_toFpDq_req_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_toFpDq_req_2_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_2_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_2_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_2_bits_ctrl_fuOpType,
  output        io_toFpDq_req_2_bits_ctrl_rfWen,
  output        io_toFpDq_req_2_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_2_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_2_bits_ctrl_imm,
  output        io_toFpDq_req_2_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_2_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_2_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_2_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_2_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_2_bits_ctrl_fpu_div,
  output        io_toFpDq_req_2_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_2_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_2_bits_ctrl_fpu_rm,
  output [6:0]  io_toFpDq_req_2_bits_psrc_0,
  output [6:0]  io_toFpDq_req_2_bits_psrc_1,
  output [6:0]  io_toFpDq_req_2_bits_psrc_2,
  output [6:0]  io_toFpDq_req_2_bits_pdest,
  output        io_toFpDq_req_2_bits_robIdx_flag,
  output [6:0]  io_toFpDq_req_2_bits_robIdx_value,
  output        io_toFpDq_req_3_valid,
  output        io_toFpDq_req_3_bits_cf_trigger_backendEn_0,
  output        io_toFpDq_req_3_bits_cf_trigger_backendEn_1,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_0,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_1,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_2,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_3,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_4,
  output        io_toFpDq_req_3_bits_cf_trigger_backendHit_5,
  output        io_toFpDq_req_3_bits_cf_pd_isRVC,
  output [1:0]  io_toFpDq_req_3_bits_cf_pd_brType,
  output        io_toFpDq_req_3_bits_cf_pd_isCall,
  output        io_toFpDq_req_3_bits_cf_pd_isRet,
  output        io_toFpDq_req_3_bits_cf_pred_taken,
  output [6:0]  io_toFpDq_req_3_bits_cf_waitForRobIdx_value,
  output        io_toFpDq_req_3_bits_cf_loadWaitBit,
  output        io_toFpDq_req_3_bits_cf_loadWaitStrict,
  output [4:0]  io_toFpDq_req_3_bits_cf_ssid,
  output        io_toFpDq_req_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_toFpDq_req_3_bits_cf_ftqPtr_value,
  output [2:0]  io_toFpDq_req_3_bits_cf_ftqOffset,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_srcType_0,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_srcType_1,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_srcType_2,
  output [3:0]  io_toFpDq_req_3_bits_ctrl_fuType,
  output [6:0]  io_toFpDq_req_3_bits_ctrl_fuOpType,
  output        io_toFpDq_req_3_bits_ctrl_rfWen,
  output        io_toFpDq_req_3_bits_ctrl_fpWen,
  output [3:0]  io_toFpDq_req_3_bits_ctrl_selImm,
  output [19:0] io_toFpDq_req_3_bits_ctrl_imm,
  output        io_toFpDq_req_3_bits_ctrl_fpu_isAddSub,
  output        io_toFpDq_req_3_bits_ctrl_fpu_typeTagIn,
  output        io_toFpDq_req_3_bits_ctrl_fpu_typeTagOut,
  output        io_toFpDq_req_3_bits_ctrl_fpu_fromInt,
  output        io_toFpDq_req_3_bits_ctrl_fpu_wflags,
  output        io_toFpDq_req_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_fpu_fmaCmd,
  output        io_toFpDq_req_3_bits_ctrl_fpu_div,
  output        io_toFpDq_req_3_bits_ctrl_fpu_sqrt,
  output        io_toFpDq_req_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_fpu_typ,
  output [1:0]  io_toFpDq_req_3_bits_ctrl_fpu_fmt,
  output        io_toFpDq_req_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_toFpDq_req_3_bits_ctrl_fpu_rm,
  output [6:0]  io_toFpDq_req_3_bits_psrc_0,
  output [6:0]  io_toFpDq_req_3_bits_psrc_1,
  output [6:0]  io_toFpDq_req_3_bits_psrc_2,
  output [6:0]  io_toFpDq_req_3_bits_pdest,
  output        io_toFpDq_req_3_bits_robIdx_flag,
  output [6:0]  io_toFpDq_req_3_bits_robIdx_value,
  input         io_toLsDq_canAccept,
  output        io_toLsDq_needAlloc_0,
  output        io_toLsDq_needAlloc_1,
  output        io_toLsDq_needAlloc_2,
  output        io_toLsDq_req_0_valid,
  output        io_toLsDq_req_0_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_0_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_0,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_1,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_2,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_3,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_4,
  output        io_toLsDq_req_0_bits_cf_trigger_backendHit_5,
  output        io_toLsDq_req_0_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_0_bits_cf_pd_brType,
  output        io_toLsDq_req_0_bits_cf_pd_isCall,
  output        io_toLsDq_req_0_bits_cf_pd_isRet,
  output        io_toLsDq_req_0_bits_cf_pred_taken,
  output [6:0]  io_toLsDq_req_0_bits_cf_waitForRobIdx_value,
  output        io_toLsDq_req_0_bits_cf_loadWaitBit,
  output        io_toLsDq_req_0_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_0_bits_cf_ssid,
  output        io_toLsDq_req_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_toLsDq_req_0_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_0_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_0_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_0_bits_ctrl_fuOpType,
  output        io_toLsDq_req_0_bits_ctrl_rfWen,
  output        io_toLsDq_req_0_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_0_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_0_bits_ctrl_imm,
  output        io_toLsDq_req_0_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_0_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_0_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_0_bits_ctrl_fpu_div,
  output        io_toLsDq_req_0_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_0_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_0_bits_ctrl_fpu_rm,
  output [6:0]  io_toLsDq_req_0_bits_psrc_0,
  output [6:0]  io_toLsDq_req_0_bits_psrc_1,
  output [6:0]  io_toLsDq_req_0_bits_psrc_2,
  output [6:0]  io_toLsDq_req_0_bits_pdest,
  output        io_toLsDq_req_0_bits_robIdx_flag,
  output [6:0]  io_toLsDq_req_0_bits_robIdx_value,
  output        io_toLsDq_req_1_valid,
  output        io_toLsDq_req_1_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_1_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_0,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_1,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_2,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_3,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_4,
  output        io_toLsDq_req_1_bits_cf_trigger_backendHit_5,
  output        io_toLsDq_req_1_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_1_bits_cf_pd_brType,
  output        io_toLsDq_req_1_bits_cf_pd_isCall,
  output        io_toLsDq_req_1_bits_cf_pd_isRet,
  output        io_toLsDq_req_1_bits_cf_pred_taken,
  output [6:0]  io_toLsDq_req_1_bits_cf_waitForRobIdx_value,
  output        io_toLsDq_req_1_bits_cf_loadWaitBit,
  output        io_toLsDq_req_1_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_1_bits_cf_ssid,
  output        io_toLsDq_req_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_toLsDq_req_1_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_1_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_1_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_1_bits_ctrl_fuOpType,
  output        io_toLsDq_req_1_bits_ctrl_rfWen,
  output        io_toLsDq_req_1_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_1_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_1_bits_ctrl_imm,
  output        io_toLsDq_req_1_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_1_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_1_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_1_bits_ctrl_fpu_div,
  output        io_toLsDq_req_1_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_1_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_1_bits_ctrl_fpu_rm,
  output [6:0]  io_toLsDq_req_1_bits_psrc_0,
  output [6:0]  io_toLsDq_req_1_bits_psrc_1,
  output [6:0]  io_toLsDq_req_1_bits_psrc_2,
  output [6:0]  io_toLsDq_req_1_bits_pdest,
  output        io_toLsDq_req_1_bits_robIdx_flag,
  output [6:0]  io_toLsDq_req_1_bits_robIdx_value,
  output        io_toLsDq_req_2_valid,
  output        io_toLsDq_req_2_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_2_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_0,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_1,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_2,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_3,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_4,
  output        io_toLsDq_req_2_bits_cf_trigger_backendHit_5,
  output        io_toLsDq_req_2_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_2_bits_cf_pd_brType,
  output        io_toLsDq_req_2_bits_cf_pd_isCall,
  output        io_toLsDq_req_2_bits_cf_pd_isRet,
  output        io_toLsDq_req_2_bits_cf_pred_taken,
  output [6:0]  io_toLsDq_req_2_bits_cf_waitForRobIdx_value,
  output        io_toLsDq_req_2_bits_cf_loadWaitBit,
  output        io_toLsDq_req_2_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_2_bits_cf_ssid,
  output        io_toLsDq_req_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_toLsDq_req_2_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_2_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_2_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_2_bits_ctrl_fuOpType,
  output        io_toLsDq_req_2_bits_ctrl_rfWen,
  output        io_toLsDq_req_2_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_2_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_2_bits_ctrl_imm,
  output        io_toLsDq_req_2_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_2_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_2_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_2_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_2_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_2_bits_ctrl_fpu_div,
  output        io_toLsDq_req_2_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_2_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_2_bits_ctrl_fpu_rm,
  output [6:0]  io_toLsDq_req_2_bits_psrc_0,
  output [6:0]  io_toLsDq_req_2_bits_psrc_1,
  output [6:0]  io_toLsDq_req_2_bits_psrc_2,
  output [6:0]  io_toLsDq_req_2_bits_pdest,
  output        io_toLsDq_req_2_bits_robIdx_flag,
  output [6:0]  io_toLsDq_req_2_bits_robIdx_value,
  output        io_toLsDq_req_3_valid,
  output        io_toLsDq_req_3_bits_cf_trigger_backendEn_0,
  output        io_toLsDq_req_3_bits_cf_trigger_backendEn_1,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_0,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_1,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_2,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_3,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_4,
  output        io_toLsDq_req_3_bits_cf_trigger_backendHit_5,
  output        io_toLsDq_req_3_bits_cf_pd_isRVC,
  output [1:0]  io_toLsDq_req_3_bits_cf_pd_brType,
  output        io_toLsDq_req_3_bits_cf_pd_isCall,
  output        io_toLsDq_req_3_bits_cf_pd_isRet,
  output        io_toLsDq_req_3_bits_cf_pred_taken,
  output [6:0]  io_toLsDq_req_3_bits_cf_waitForRobIdx_value,
  output        io_toLsDq_req_3_bits_cf_loadWaitBit,
  output        io_toLsDq_req_3_bits_cf_loadWaitStrict,
  output [4:0]  io_toLsDq_req_3_bits_cf_ssid,
  output        io_toLsDq_req_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_toLsDq_req_3_bits_cf_ftqPtr_value,
  output [2:0]  io_toLsDq_req_3_bits_cf_ftqOffset,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_srcType_0,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_srcType_1,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_srcType_2,
  output [3:0]  io_toLsDq_req_3_bits_ctrl_fuType,
  output [6:0]  io_toLsDq_req_3_bits_ctrl_fuOpType,
  output        io_toLsDq_req_3_bits_ctrl_rfWen,
  output        io_toLsDq_req_3_bits_ctrl_fpWen,
  output [3:0]  io_toLsDq_req_3_bits_ctrl_selImm,
  output [19:0] io_toLsDq_req_3_bits_ctrl_imm,
  output        io_toLsDq_req_3_bits_ctrl_fpu_isAddSub,
  output        io_toLsDq_req_3_bits_ctrl_fpu_typeTagIn,
  output        io_toLsDq_req_3_bits_ctrl_fpu_typeTagOut,
  output        io_toLsDq_req_3_bits_ctrl_fpu_fromInt,
  output        io_toLsDq_req_3_bits_ctrl_fpu_wflags,
  output        io_toLsDq_req_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_fpu_fmaCmd,
  output        io_toLsDq_req_3_bits_ctrl_fpu_div,
  output        io_toLsDq_req_3_bits_ctrl_fpu_sqrt,
  output        io_toLsDq_req_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_fpu_typ,
  output [1:0]  io_toLsDq_req_3_bits_ctrl_fpu_fmt,
  output        io_toLsDq_req_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_toLsDq_req_3_bits_ctrl_fpu_rm,
  output [6:0]  io_toLsDq_req_3_bits_psrc_0,
  output [6:0]  io_toLsDq_req_3_bits_psrc_1,
  output [6:0]  io_toLsDq_req_3_bits_psrc_2,
  output [6:0]  io_toLsDq_req_3_bits_pdest,
  output        io_toLsDq_req_3_bits_robIdx_flag,
  output [6:0]  io_toLsDq_req_3_bits_robIdx_value,
  input         io_redirect_valid,
  input         io_singleStep,
  output        io_lfst_req_0_valid,
  output        io_lfst_req_0_bits_isstore,
  output [4:0]  io_lfst_req_0_bits_ssid,
  output        io_lfst_req_0_bits_robIdx_flag,
  output [6:0]  io_lfst_req_0_bits_robIdx_value,
  output        io_lfst_req_1_valid,
  output        io_lfst_req_1_bits_isstore,
  output [4:0]  io_lfst_req_1_bits_ssid,
  output        io_lfst_req_1_bits_robIdx_flag,
  output [6:0]  io_lfst_req_1_bits_robIdx_value,
  output        io_lfst_req_2_valid,
  output        io_lfst_req_2_bits_isstore,
  output [4:0]  io_lfst_req_2_bits_ssid,
  output        io_lfst_req_2_bits_robIdx_flag,
  output [6:0]  io_lfst_req_2_bits_robIdx_value,
  output        io_lfst_req_3_valid,
  output        io_lfst_req_3_bits_isstore,
  output [4:0]  io_lfst_req_3_bits_ssid,
  output        io_lfst_req_3_bits_robIdx_flag,
  output [6:0]  io_lfst_req_3_bits_robIdx_value,
  input         io_lfst_resp_0_bits_shouldWait,
  input  [6:0]  io_lfst_resp_0_bits_robIdx_value,
  input         io_lfst_resp_1_bits_shouldWait,
  input  [6:0]  io_lfst_resp_1_bits_robIdx_value,
  input         io_lfst_resp_2_bits_shouldWait,
  input  [6:0]  io_lfst_resp_2_bits_robIdx_value,
  input         io_lfst_resp_3_bits_shouldWait,
  input  [6:0]  io_lfst_resp_3_bits_robIdx_value,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value,
  output [5:0]  io_perf_8_value
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
`endif // RANDOMIZE_REG_INIT
  wire  isInt_0 = ~io_fromRename_0_bits_ctrl_fuType[3]; // @[package.scala 77:34]
  wire  isInt_1 = ~io_fromRename_1_bits_ctrl_fuType[3]; // @[package.scala 77:34]
  wire  isInt_2 = ~io_fromRename_2_bits_ctrl_fuType[3]; // @[package.scala 77:34]
  wire  isInt_3 = ~io_fromRename_3_bits_ctrl_fuType[3]; // @[package.scala 77:34]
  wire  _isBranch_T = io_fromRename_0_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_2 = io_fromRename_0_bits_ctrl_fuType == 4'h0; // @[package.scala 78:42]
  wire  isBranch_0 = ~_isBranch_T | _isBranch_T_2; // @[Dispatch.scala 81:28]
  wire  _isBranch_T_4 = io_fromRename_1_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_6 = io_fromRename_1_bits_ctrl_fuType == 4'h0; // @[package.scala 78:42]
  wire  isBranch_1 = ~_isBranch_T_4 | _isBranch_T_6; // @[Dispatch.scala 81:28]
  wire  _isBranch_T_8 = io_fromRename_2_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_10 = io_fromRename_2_bits_ctrl_fuType == 4'h0; // @[package.scala 78:42]
  wire  isBranch_2 = ~_isBranch_T_8 | _isBranch_T_10; // @[Dispatch.scala 81:28]
  wire  _isBranch_T_12 = io_fromRename_3_bits_cf_pd_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _isBranch_T_14 = io_fromRename_3_bits_ctrl_fuType == 4'h0; // @[package.scala 78:42]
  wire  isBranch_3 = ~_isBranch_T_12 | _isBranch_T_14; // @[Dispatch.scala 81:28]
  wire  isFp_0 = io_fromRename_0_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 79:46]
  wire  isFp_1 = io_fromRename_1_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 79:46]
  wire  isFp_2 = io_fromRename_2_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 79:46]
  wire  isFp_3 = io_fromRename_3_bits_ctrl_fuType[3:2] == 2'h2; // @[package.scala 79:46]
  wire  isMem_0 = io_fromRename_0_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  isMem_1 = io_fromRename_1_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  isMem_2 = io_fromRename_2_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  isMem_3 = io_fromRename_3_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  _isLs_T_3 = ~io_fromRename_0_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_0 = isMem_0 & ~io_fromRename_0_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_8 = ~io_fromRename_1_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_1 = isMem_1 & ~io_fromRename_1_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_13 = ~io_fromRename_2_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_2 = isMem_2 & ~io_fromRename_2_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_18 = ~io_fromRename_3_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_3 = isMem_3 & ~io_fromRename_3_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  isStore_0 = isMem_0 & io_fromRename_0_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_1 = isMem_1 & io_fromRename_1_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_2 = isMem_2 & io_fromRename_2_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_3 = isMem_3 & io_fromRename_3_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  reg  singleStepStatus; // @[Dispatch.scala 96:33]
  wire  _T = io_fromRename_0_ready & io_fromRename_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = io_singleStep & _T | singleStepStatus; // @[Dispatch.scala 100:22 96:33 99:57]
  wire  _checkpoint_id_T_1 = io_fromRename_1_ready & io_fromRename_1_valid; // @[Decoupled.scala 50:35]
  wire  _checkpoint_id_T_2 = io_fromRename_2_ready & io_fromRename_2_valid; // @[Decoupled.scala 50:35]
  wire  _checkpoint_id_T_3 = io_fromRename_3_ready & io_fromRename_3_valid; // @[Decoupled.scala 50:35]
  wire  _updatedCommitType_0_T_2 = isStore_0 & _isLs_T_3 | isBranch_0; // @[Dispatch.scala 113:68]
  wire [1:0] _updatedCommitType_0_T_3 = {isLs_0,_updatedCommitType_0_T_2}; // @[Cat.scala 31:58]
  wire [2:0] updatedCommitType_0 = {{1'd0}, _updatedCommitType_0_T_3}; // @[Dispatch.scala 105:31 113:26]
  wire  _T_9 = io_fromRename_0_bits_cf_trigger_frontendHit_0 | io_fromRename_0_bits_cf_trigger_frontendHit_1 |
    io_fromRename_0_bits_cf_trigger_frontendHit_2 | io_fromRename_0_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire  _updatedCommitType_1_T_2 = isStore_1 & _isLs_T_8 | isBranch_1; // @[Dispatch.scala 113:68]
  wire [1:0] _updatedCommitType_1_T_3 = {isLs_1,_updatedCommitType_1_T_2}; // @[Cat.scala 31:58]
  wire [2:0] updatedCommitType_1 = {{1'd0}, _updatedCommitType_1_T_3}; // @[Dispatch.scala 105:31 113:26]
  wire  _T_17 = io_fromRename_1_bits_cf_trigger_frontendHit_0 | io_fromRename_1_bits_cf_trigger_frontendHit_1 |
    io_fromRename_1_bits_cf_trigger_frontendHit_2 | io_fromRename_1_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire  _updatedCommitType_2_T_2 = isStore_2 & _isLs_T_13 | isBranch_2; // @[Dispatch.scala 113:68]
  wire [1:0] _updatedCommitType_2_T_3 = {isLs_2,_updatedCommitType_2_T_2}; // @[Cat.scala 31:58]
  wire [2:0] updatedCommitType_2 = {{1'd0}, _updatedCommitType_2_T_3}; // @[Dispatch.scala 105:31 113:26]
  wire  _T_25 = io_fromRename_2_bits_cf_trigger_frontendHit_0 | io_fromRename_2_bits_cf_trigger_frontendHit_1 |
    io_fromRename_2_bits_cf_trigger_frontendHit_2 | io_fromRename_2_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire  _updatedCommitType_3_T_2 = isStore_3 & _isLs_T_18 | isBranch_3; // @[Dispatch.scala 113:68]
  wire [1:0] _updatedCommitType_3_T_3 = {isLs_3,_updatedCommitType_3_T_2}; // @[Cat.scala 31:58]
  wire [2:0] updatedCommitType_3 = {{1'd0}, _updatedCommitType_3_T_3}; // @[Dispatch.scala 105:31 113:26]
  wire  _T_33 = io_fromRename_3_bits_cf_trigger_frontendHit_0 | io_fromRename_3_bits_cf_trigger_frontendHit_1 |
    io_fromRename_3_bits_cf_trigger_frontendHit_2 | io_fromRename_3_bits_cf_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire [15:0] _hasException_T = {2'h0,1'h0,io_fromRename_0_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_0_bits_cf_exceptionVec_2,io_fromRename_0_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 182:49]
  wire  hasException_0 = |_hasException_T | _T_9; // @[Dispatch.scala 182:86]
  wire [15:0] _hasException_T_7 = {2'h0,1'h0,io_fromRename_1_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_1_bits_cf_exceptionVec_2,io_fromRename_1_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 182:49]
  wire  hasException_1 = |_hasException_T_7 | _T_17; // @[Dispatch.scala 182:86]
  wire [15:0] _hasException_T_14 = {2'h0,1'h0,io_fromRename_2_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_2_bits_cf_exceptionVec_2,io_fromRename_2_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 182:49]
  wire  hasException_2 = |_hasException_T_14 | _T_25; // @[Dispatch.scala 182:86]
  wire [15:0] _hasException_T_21 = {2'h0,1'h0,io_fromRename_3_bits_cf_exceptionVec_12,4'h0,4'h0,1'h0,
    io_fromRename_3_bits_cf_exceptionVec_2,io_fromRename_3_bits_cf_exceptionVec_1,1'h0}; // @[Dispatch.scala 182:49]
  wire  hasException_3 = |_hasException_T_21 | _T_33; // @[Dispatch.scala 182:86]
  wire  _thisIsBlocked_T = ~io_enqRob_isEmpty; // @[Dispatch.scala 186:29]
  wire  thisIsBlocked_0 = io_fromRename_0_bits_ctrl_noSpecExec & ~io_enqRob_isEmpty; // @[Dispatch.scala 186:26]
  wire  thisIsBlocked_1 = io_fromRename_1_bits_ctrl_noSpecExec & (_thisIsBlocked_T | |io_fromRename_0_valid); // @[Dispatch.scala 185:32]
  wire [1:0] _thisIsBlocked_T_7 = {io_fromRename_0_valid,io_fromRename_1_valid}; // @[Cat.scala 31:58]
  wire  thisIsBlocked_2 = io_fromRename_2_bits_ctrl_noSpecExec & (_thisIsBlocked_T | |_thisIsBlocked_T_7); // @[Dispatch.scala 185:32]
  wire [2:0] _thisIsBlocked_T_12 = {io_fromRename_0_valid,io_fromRename_1_valid,io_fromRename_2_valid}; // @[Cat.scala 31:58]
  wire  thisIsBlocked_3 = io_fromRename_3_bits_ctrl_noSpecExec & (_thisIsBlocked_T | |_thisIsBlocked_T_12); // @[Dispatch.scala 185:32]
  wire  nextCanOut_0 = ~io_fromRename_0_bits_ctrl_noSpecExec & ~io_fromRename_0_bits_ctrl_blockBackward | ~
    io_fromRename_0_valid; // @[Dispatch.scala 189:47]
  wire  nextCanOut_1 = ~io_fromRename_1_bits_ctrl_noSpecExec & ~io_fromRename_1_bits_ctrl_blockBackward | ~
    io_fromRename_1_valid; // @[Dispatch.scala 189:47]
  wire  nextCanOut_2 = ~io_fromRename_2_bits_ctrl_noSpecExec & ~io_fromRename_2_bits_ctrl_blockBackward | ~
    io_fromRename_2_valid; // @[Dispatch.scala 189:47]
  wire  notBlockedByPrevious_1 = &nextCanOut_0; // @[Dispatch.scala 193:51]
  wire [1:0] _notBlockedByPrevious_T_1 = {nextCanOut_0,nextCanOut_1}; // @[Cat.scala 31:58]
  wire  notBlockedByPrevious_2 = &_notBlockedByPrevious_T_1; // @[Dispatch.scala 193:51]
  wire [2:0] _notBlockedByPrevious_T_3 = {nextCanOut_0,nextCanOut_1,nextCanOut_2}; // @[Cat.scala 31:58]
  wire  notBlockedByPrevious_3 = &_notBlockedByPrevious_T_3; // @[Dispatch.scala 193:51]
  wire  thisCanActualOut_0 = ~thisIsBlocked_0; // @[Dispatch.scala 201:57]
  wire  thisCanActualOut_1 = ~thisIsBlocked_1 & notBlockedByPrevious_1; // @[Dispatch.scala 201:75]
  wire  thisCanActualOut_2 = ~thisIsBlocked_2 & notBlockedByPrevious_2; // @[Dispatch.scala 201:75]
  wire  thisCanActualOut_3 = ~thisIsBlocked_3 & notBlockedByPrevious_3; // @[Dispatch.scala 201:75]
  wire  hasValidException_0 = io_fromRename_0_valid & hasException_0; // @[Dispatch.scala 202:79]
  wire  hasValidException_1 = io_fromRename_1_valid & hasException_1; // @[Dispatch.scala 202:79]
  wire  hasValidException_2 = io_fromRename_2_valid & hasException_2; // @[Dispatch.scala 202:79]
  wire  canEnterDpq = ~hasException_0 & thisCanActualOut_0 & io_enqRob_canAccept; // @[Dispatch.scala 213:88]
  wire  _io_toIntDq_needAlloc_0_T_1 = ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 218:70]
  wire  _io_toIntDq_needAlloc_0_T_2 = io_fromRename_0_valid & isInt_0 & ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  wire  _io_toIntDq_req_0_valid_T_3 = _io_toIntDq_needAlloc_0_T_2 & canEnterDpq; // @[Dispatch.scala 219:87]
  wire  _io_toFpDq_needAlloc_0_T = io_fromRename_0_valid & isFp_0; // @[Dispatch.scala 223:55]
  wire  _io_toFpDq_req_0_valid_T_1 = _io_toFpDq_needAlloc_0_T & canEnterDpq; // @[Dispatch.scala 224:66]
  wire  _io_toLsDq_needAlloc_0_T = io_fromRename_0_valid & isMem_0; // @[Dispatch.scala 228:55]
  wire  _io_toLsDq_req_0_valid_T_1 = _io_toLsDq_needAlloc_0_T & canEnterDpq; // @[Dispatch.scala 229:67]
  wire  previousHasException = |hasValidException_0; // @[Dispatch.scala 212:99]
  wire  canEnterDpq_1 = ~hasException_1 & thisCanActualOut_1 & ~previousHasException & io_enqRob_canAccept; // @[Dispatch.scala 213:88]
  wire  _io_toIntDq_needAlloc_1_T_1 = ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 218:70]
  wire  _io_toIntDq_needAlloc_1_T_2 = io_fromRename_1_valid & isInt_1 & ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  wire  _io_toIntDq_req_1_valid_T_3 = _io_toIntDq_needAlloc_1_T_2 & canEnterDpq_1; // @[Dispatch.scala 219:87]
  wire  _io_toFpDq_needAlloc_1_T = io_fromRename_1_valid & isFp_1; // @[Dispatch.scala 223:55]
  wire  _io_toFpDq_req_1_valid_T_1 = _io_toFpDq_needAlloc_1_T & canEnterDpq_1; // @[Dispatch.scala 224:66]
  wire  _io_toLsDq_needAlloc_1_T = io_fromRename_1_valid & isMem_1; // @[Dispatch.scala 228:55]
  wire  _io_toLsDq_req_1_valid_T_1 = _io_toLsDq_needAlloc_1_T & canEnterDpq_1; // @[Dispatch.scala 229:67]
  wire [1:0] _previousHasException_T = {hasValidException_1,hasValidException_0}; // @[Dispatch.scala 212:92]
  wire  previousHasException_1 = |_previousHasException_T; // @[Dispatch.scala 212:99]
  wire  canEnterDpq_2 = ~hasException_2 & thisCanActualOut_2 & ~previousHasException_1 & io_enqRob_canAccept; // @[Dispatch.scala 213:88]
  wire  _io_toIntDq_needAlloc_2_T_1 = ~io_fromRename_2_bits_eliminatedMove; // @[Dispatch.scala 218:70]
  wire  _io_toIntDq_needAlloc_2_T_2 = io_fromRename_2_valid & isInt_2 & ~io_fromRename_2_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  wire  _io_toIntDq_req_2_valid_T_3 = _io_toIntDq_needAlloc_2_T_2 & canEnterDpq_2; // @[Dispatch.scala 219:87]
  wire  _io_toFpDq_needAlloc_2_T = io_fromRename_2_valid & isFp_2; // @[Dispatch.scala 223:55]
  wire  _io_toFpDq_req_2_valid_T_1 = _io_toFpDq_needAlloc_2_T & canEnterDpq_2; // @[Dispatch.scala 224:66]
  wire  _io_toLsDq_needAlloc_2_T = io_fromRename_2_valid & isMem_2; // @[Dispatch.scala 228:55]
  wire  _io_toLsDq_req_2_valid_T_1 = _io_toLsDq_needAlloc_2_T & canEnterDpq_2; // @[Dispatch.scala 229:67]
  wire [2:0] _previousHasException_T_1 = {hasValidException_2,hasValidException_1,hasValidException_0}; // @[Dispatch.scala 212:92]
  wire  previousHasException_2 = |_previousHasException_T_1; // @[Dispatch.scala 212:99]
  wire  canEnterDpq_3 = ~hasException_3 & thisCanActualOut_3 & ~previousHasException_2 & io_enqRob_canAccept; // @[Dispatch.scala 213:88]
  wire  _io_toIntDq_needAlloc_3_T_1 = ~io_fromRename_3_bits_eliminatedMove; // @[Dispatch.scala 218:70]
  wire  _io_toIntDq_needAlloc_3_T_2 = io_fromRename_3_valid & isInt_3 & ~io_fromRename_3_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  wire  _io_toIntDq_req_3_valid_T_3 = _io_toIntDq_needAlloc_3_T_2 & canEnterDpq_3; // @[Dispatch.scala 219:87]
  wire  _io_toFpDq_needAlloc_3_T = io_fromRename_3_valid & isFp_3; // @[Dispatch.scala 223:55]
  wire  _io_toFpDq_req_3_valid_T_1 = _io_toFpDq_needAlloc_3_T & canEnterDpq_3; // @[Dispatch.scala 224:66]
  wire  _io_toLsDq_needAlloc_3_T = io_fromRename_3_valid & isMem_3; // @[Dispatch.scala 228:55]
  wire  _io_toLsDq_req_3_valid_T_1 = _io_toLsDq_needAlloc_3_T & canEnterDpq_3; // @[Dispatch.scala 229:67]
  wire [3:0] _hasValidInstr_T = {io_fromRename_3_valid,io_fromRename_2_valid,io_fromRename_1_valid,io_fromRename_0_valid
    }; // @[Dispatch.scala 241:59]
  wire  hasValidInstr = |_hasValidInstr_T; // @[Dispatch.scala 241:66]
  wire  _hasSpecialInstr_T_1 = io_fromRename_0_valid & (io_fromRename_0_bits_ctrl_blockBackward |
    io_fromRename_0_bits_ctrl_noSpecExec); // @[Dispatch.scala 242:83]
  wire  _hasSpecialInstr_T_3 = io_fromRename_1_valid & (io_fromRename_1_bits_ctrl_blockBackward |
    io_fromRename_1_bits_ctrl_noSpecExec); // @[Dispatch.scala 242:83]
  wire  _hasSpecialInstr_T_5 = io_fromRename_2_valid & (io_fromRename_2_bits_ctrl_blockBackward |
    io_fromRename_2_bits_ctrl_noSpecExec); // @[Dispatch.scala 242:83]
  wire  _hasSpecialInstr_T_7 = io_fromRename_3_valid & (io_fromRename_3_bits_ctrl_blockBackward |
    io_fromRename_3_bits_ctrl_noSpecExec); // @[Dispatch.scala 242:83]
  wire [3:0] _hasSpecialInstr_T_8 = {_hasSpecialInstr_T_1,_hasSpecialInstr_T_3,_hasSpecialInstr_T_5,_hasSpecialInstr_T_7
    }; // @[Cat.scala 31:58]
  wire  hasSpecialInstr = |_hasSpecialInstr_T_8; // @[Dispatch.scala 242:128]
  wire [1:0] _T_139 = io_fromRename_0_valid + io_fromRename_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_141 = io_fromRename_2_valid + io_fromRename_3_valid; // @[Bitwise.scala 48:55]
  wire  _T_154 = io_fromRename_0_valid & ~io_recv_0; // @[Dispatch.scala 265:100]
  wire  _T_156 = io_fromRename_1_valid & ~io_recv_1; // @[Dispatch.scala 265:100]
  wire  _T_158 = io_fromRename_2_valid & ~io_recv_2; // @[Dispatch.scala 265:100]
  wire  _T_160 = io_fromRename_3_valid & ~io_recv_3; // @[Dispatch.scala 265:100]
  wire [1:0] _T_161 = _T_154 + _T_156; // @[Bitwise.scala 48:55]
  wire [1:0] _T_163 = _T_158 + _T_160; // @[Bitwise.scala 48:55]
  wire  _T_170 = hasValidInstr & ~io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 266:105]
  wire  _T_172 = hasValidInstr & io_enqRob_canAccept; // @[Dispatch.scala 267:60]
  wire  _T_175 = hasValidInstr & io_enqRob_canAccept & ~io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 267:108]
  wire  _T_178 = _T_172 & io_toIntDq_canAccept; // @[Dispatch.scala 268:82]
  wire  _T_180 = _T_172 & io_toIntDq_canAccept & ~io_toFpDq_canAccept; // @[Dispatch.scala 268:106]
  wire  _T_184 = _T_178 & io_toFpDq_canAccept; // @[Dispatch.scala 269:106]
  wire  _T_185 = ~io_toLsDq_canAccept; // @[Dispatch.scala 269:132]
  wire  _T_187 = io_fromRename_0_valid & io_fromRename_0_ready; // @[Dispatch.scala 272:72]
  wire  _T_188 = io_fromRename_1_valid & io_fromRename_0_ready; // @[Dispatch.scala 272:72]
  wire  _T_189 = io_fromRename_2_valid & io_fromRename_0_ready; // @[Dispatch.scala 272:72]
  wire  _T_190 = io_fromRename_3_valid & io_fromRename_0_ready; // @[Dispatch.scala 272:72]
  wire [1:0] _T_191 = _T_187 + _T_188; // @[Bitwise.scala 48:55]
  wire [1:0] _T_193 = _T_189 + _T_190; // @[Bitwise.scala 48:55]
  reg [2:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign io_fromRename_0_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 245:46]
  assign io_fromRename_1_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 245:46]
  assign io_fromRename_2_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 245:46]
  assign io_fromRename_3_ready = ~hasValidInstr | ~hasSpecialInstr & io_enqRob_canAccept & io_toIntDq_canAccept &
    io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 245:46]
  assign io_recv_0 = thisCanActualOut_0 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 244:109]
  assign io_recv_1 = thisCanActualOut_1 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 244:109]
  assign io_recv_2 = thisCanActualOut_2 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 244:109]
  assign io_recv_3 = thisCanActualOut_3 & io_enqRob_canAccept & io_toIntDq_canAccept & io_toFpDq_canAccept &
    io_toLsDq_canAccept; // @[Dispatch.scala 244:109]
  assign io_enqRob_needAlloc_0 = io_fromRename_0_valid; // @[Dispatch.scala 206:28]
  assign io_enqRob_needAlloc_1 = io_fromRename_1_valid; // @[Dispatch.scala 206:28]
  assign io_enqRob_needAlloc_2 = io_fromRename_2_valid; // @[Dispatch.scala 206:28]
  assign io_enqRob_needAlloc_3 = io_fromRename_3_valid; // @[Dispatch.scala 206:28]
  assign io_enqRob_req_0_valid = io_fromRename_0_valid & thisCanActualOut_0 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 207:124]
  assign io_enqRob_req_0_bits_cf_exceptionVec_1 = io_fromRename_0_bits_cf_exceptionVec_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_exceptionVec_2 = io_fromRename_0_bits_cf_exceptionVec_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_exceptionVec_12 = io_fromRename_0_bits_cf_exceptionVec_12; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_0 = io_fromRename_0_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_1 = io_fromRename_0_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_2 = io_fromRename_0_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_trigger_frontendHit_3 = io_fromRename_0_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_crossPageIPFFix = io_fromRename_0_bits_cf_crossPageIPFFix; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_loadWaitBit = io_lfst_resp_0_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_enqRob_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_ldest = io_fromRename_0_bits_ctrl_ldest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_isRVCORETrap = io_fromRename_0_bits_ctrl_isRVCORETrap; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_noSpecExec = io_fromRename_0_bits_ctrl_noSpecExec; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_blockBackward = io_fromRename_0_bits_ctrl_blockBackward; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_flushPipe = io_fromRename_0_bits_ctrl_flushPipe; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_commitType = ~io_fromRename_0_bits_ctrl_commitType[2] ? updatedCommitType_0 :
    io_fromRename_0_bits_ctrl_commitType; // @[Dispatch.scala 115:19 118:71 119:37]
  assign io_enqRob_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_isMove = io_fromRename_0_bits_ctrl_isMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_ctrl_singleStep = io_singleStep & singleStepStatus; // @[Dispatch.scala 138:52]
  assign io_enqRob_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_old_pdest = io_fromRename_0_bits_old_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_0_bits_eliminatedMove = io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_valid = io_fromRename_1_valid & thisCanActualOut_1 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 207:124]
  assign io_enqRob_req_1_bits_cf_exceptionVec_1 = io_fromRename_1_bits_cf_exceptionVec_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_exceptionVec_2 = io_fromRename_1_bits_cf_exceptionVec_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_exceptionVec_12 = io_fromRename_1_bits_cf_exceptionVec_12; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_0 = io_fromRename_1_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_1 = io_fromRename_1_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_2 = io_fromRename_1_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_trigger_frontendHit_3 = io_fromRename_1_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_crossPageIPFFix = io_fromRename_1_bits_cf_crossPageIPFFix; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_loadWaitBit = io_lfst_resp_1_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_enqRob_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_ldest = io_fromRename_1_bits_ctrl_ldest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_isRVCORETrap = io_fromRename_1_bits_ctrl_isRVCORETrap; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_noSpecExec = io_fromRename_1_bits_ctrl_noSpecExec; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_blockBackward = io_fromRename_1_bits_ctrl_blockBackward; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_flushPipe = io_fromRename_1_bits_ctrl_flushPipe; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_commitType = ~io_fromRename_1_bits_ctrl_commitType[2] ? updatedCommitType_1 :
    io_fromRename_1_bits_ctrl_commitType; // @[Dispatch.scala 115:19 118:71 119:37]
  assign io_enqRob_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_isMove = io_fromRename_1_bits_ctrl_isMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_ctrl_singleStep = io_singleStep; // @[Dispatch.scala 138:52]
  assign io_enqRob_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_old_pdest = io_fromRename_1_bits_old_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_1_bits_eliminatedMove = io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_valid = io_fromRename_2_valid & thisCanActualOut_2 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 207:124]
  assign io_enqRob_req_2_bits_cf_exceptionVec_1 = io_fromRename_2_bits_cf_exceptionVec_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_exceptionVec_2 = io_fromRename_2_bits_cf_exceptionVec_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_exceptionVec_12 = io_fromRename_2_bits_cf_exceptionVec_12; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_trigger_frontendHit_0 = io_fromRename_2_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_trigger_frontendHit_1 = io_fromRename_2_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_trigger_frontendHit_2 = io_fromRename_2_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_trigger_frontendHit_3 = io_fromRename_2_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_pd_isRVC = io_fromRename_2_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_crossPageIPFFix = io_fromRename_2_bits_cf_crossPageIPFFix; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_loadWaitBit = io_lfst_resp_2_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_enqRob_req_2_bits_cf_ftqPtr_flag = io_fromRename_2_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_ftqPtr_value = io_fromRename_2_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_cf_ftqOffset = io_fromRename_2_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_ldest = io_fromRename_2_bits_ctrl_ldest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_fuType = io_fromRename_2_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_fuOpType = io_fromRename_2_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_rfWen = io_fromRename_2_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_fpWen = io_fromRename_2_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_isRVCORETrap = io_fromRename_2_bits_ctrl_isRVCORETrap; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_noSpecExec = io_fromRename_2_bits_ctrl_noSpecExec; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_blockBackward = io_fromRename_2_bits_ctrl_blockBackward; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_flushPipe = io_fromRename_2_bits_ctrl_flushPipe; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_commitType = ~io_fromRename_2_bits_ctrl_commitType[2] ? updatedCommitType_2 :
    io_fromRename_2_bits_ctrl_commitType; // @[Dispatch.scala 115:19 118:71 119:37]
  assign io_enqRob_req_2_bits_ctrl_fpu_wflags = io_fromRename_2_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_isMove = io_fromRename_2_bits_ctrl_isMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_ctrl_singleStep = io_singleStep; // @[Dispatch.scala 138:52]
  assign io_enqRob_req_2_bits_pdest = io_fromRename_2_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_old_pdest = io_fromRename_2_bits_old_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_robIdx_flag = io_fromRename_2_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_robIdx_value = io_fromRename_2_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_2_bits_eliminatedMove = io_fromRename_2_bits_eliminatedMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_valid = io_fromRename_3_valid & thisCanActualOut_3 & io_toIntDq_canAccept & io_toFpDq_canAccept
     & io_toLsDq_canAccept; // @[Dispatch.scala 207:124]
  assign io_enqRob_req_3_bits_cf_exceptionVec_1 = io_fromRename_3_bits_cf_exceptionVec_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_exceptionVec_2 = io_fromRename_3_bits_cf_exceptionVec_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_exceptionVec_12 = io_fromRename_3_bits_cf_exceptionVec_12; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_trigger_frontendHit_0 = io_fromRename_3_bits_cf_trigger_frontendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_trigger_frontendHit_1 = io_fromRename_3_bits_cf_trigger_frontendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_trigger_frontendHit_2 = io_fromRename_3_bits_cf_trigger_frontendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_trigger_frontendHit_3 = io_fromRename_3_bits_cf_trigger_frontendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_pd_isRVC = io_fromRename_3_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_crossPageIPFFix = io_fromRename_3_bits_cf_crossPageIPFFix; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_loadWaitBit = io_lfst_resp_3_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_enqRob_req_3_bits_cf_ftqPtr_flag = io_fromRename_3_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_ftqPtr_value = io_fromRename_3_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_cf_ftqOffset = io_fromRename_3_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_ldest = io_fromRename_3_bits_ctrl_ldest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_fuType = io_fromRename_3_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_fuOpType = io_fromRename_3_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_rfWen = io_fromRename_3_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_fpWen = io_fromRename_3_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_isRVCORETrap = io_fromRename_3_bits_ctrl_isRVCORETrap; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_noSpecExec = io_fromRename_3_bits_ctrl_noSpecExec; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_blockBackward = io_fromRename_3_bits_ctrl_blockBackward; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_flushPipe = io_fromRename_3_bits_ctrl_flushPipe; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_commitType = ~io_fromRename_3_bits_ctrl_commitType[2] ? updatedCommitType_3 :
    io_fromRename_3_bits_ctrl_commitType; // @[Dispatch.scala 115:19 118:71 119:37]
  assign io_enqRob_req_3_bits_ctrl_fpu_wflags = io_fromRename_3_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_isMove = io_fromRename_3_bits_ctrl_isMove; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_ctrl_singleStep = io_singleStep; // @[Dispatch.scala 138:52]
  assign io_enqRob_req_3_bits_pdest = io_fromRename_3_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_old_pdest = io_fromRename_3_bits_old_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_robIdx_flag = io_fromRename_3_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_robIdx_value = io_fromRename_3_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_enqRob_req_3_bits_eliminatedMove = io_fromRename_3_bits_eliminatedMove; // @[Dispatch.scala 104:24 115:19]
  assign io_allocPregs_0_isInt = io_fromRename_0_valid & io_fromRename_0_bits_ctrl_rfWen &
    io_fromRename_0_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_0_T_1; // @[Dispatch.scala 252:136]
  assign io_allocPregs_0_isFp = io_fromRename_0_valid & io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 253:54]
  assign io_allocPregs_0_preg = io_fromRename_0_bits_pdest; // @[Dispatch.scala 254:28]
  assign io_allocPregs_1_isInt = io_fromRename_1_valid & io_fromRename_1_bits_ctrl_rfWen &
    io_fromRename_1_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_1_T_1; // @[Dispatch.scala 252:136]
  assign io_allocPregs_1_isFp = io_fromRename_1_valid & io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 253:54]
  assign io_allocPregs_1_preg = io_fromRename_1_bits_pdest; // @[Dispatch.scala 254:28]
  assign io_allocPregs_2_isInt = io_fromRename_2_valid & io_fromRename_2_bits_ctrl_rfWen &
    io_fromRename_2_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_2_T_1; // @[Dispatch.scala 252:136]
  assign io_allocPregs_2_isFp = io_fromRename_2_valid & io_fromRename_2_bits_ctrl_fpWen; // @[Dispatch.scala 253:54]
  assign io_allocPregs_2_preg = io_fromRename_2_bits_pdest; // @[Dispatch.scala 254:28]
  assign io_allocPregs_3_isInt = io_fromRename_3_valid & io_fromRename_3_bits_ctrl_rfWen &
    io_fromRename_3_bits_ctrl_ldest != 5'h0 & _io_toIntDq_needAlloc_3_T_1; // @[Dispatch.scala 252:136]
  assign io_allocPregs_3_isFp = io_fromRename_3_valid & io_fromRename_3_bits_ctrl_fpWen; // @[Dispatch.scala 253:54]
  assign io_allocPregs_3_preg = io_fromRename_3_bits_pdest; // @[Dispatch.scala 254:28]
  assign io_toIntDq_needAlloc_0 = io_fromRename_0_valid & isInt_0 & ~io_fromRename_0_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  assign io_toIntDq_needAlloc_1 = io_fromRename_1_valid & isInt_1 & ~io_fromRename_1_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  assign io_toIntDq_needAlloc_2 = io_fromRename_2_valid & isInt_2 & ~io_fromRename_2_bits_eliminatedMove; // @[Dispatch.scala 218:67]
  assign io_toIntDq_req_0_valid = _io_toIntDq_req_0_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 220:67]
  assign io_toIntDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_0 = io_fromRename_0_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_1 = io_fromRename_0_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_2 = io_fromRename_0_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_3 = io_fromRename_0_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_4 = io_fromRename_0_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_trigger_backendHit_5 = io_fromRename_0_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_waitForRobIdx_value = io_lfst_resp_0_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toIntDq_req_0_bits_cf_loadWaitBit = io_lfst_resp_0_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toIntDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_psrc_0 = io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_valid = _io_toIntDq_req_1_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 220:67]
  assign io_toIntDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_0 = io_fromRename_1_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_1 = io_fromRename_1_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_2 = io_fromRename_1_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_3 = io_fromRename_1_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_4 = io_fromRename_1_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_trigger_backendHit_5 = io_fromRename_1_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_waitForRobIdx_value = io_lfst_resp_1_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toIntDq_req_1_bits_cf_loadWaitBit = io_lfst_resp_1_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toIntDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_psrc_0 = io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_valid = _io_toIntDq_req_2_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 220:67]
  assign io_toIntDq_req_2_bits_cf_trigger_backendEn_0 = io_fromRename_2_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendEn_1 = io_fromRename_2_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_0 = io_fromRename_2_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_1 = io_fromRename_2_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_2 = io_fromRename_2_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_3 = io_fromRename_2_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_4 = io_fromRename_2_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_trigger_backendHit_5 = io_fromRename_2_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_pd_isRVC = io_fromRename_2_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_pd_brType = io_fromRename_2_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_pd_isCall = io_fromRename_2_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_pd_isRet = io_fromRename_2_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_pred_taken = io_fromRename_2_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_waitForRobIdx_value = io_lfst_resp_2_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toIntDq_req_2_bits_cf_loadWaitBit = io_lfst_resp_2_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toIntDq_req_2_bits_cf_loadWaitStrict = io_fromRename_2_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_ssid = io_fromRename_2_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_ftqPtr_flag = io_fromRename_2_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_ftqPtr_value = io_fromRename_2_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_cf_ftqOffset = io_fromRename_2_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_srcType_0 = io_fromRename_2_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_srcType_1 = io_fromRename_2_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_srcType_2 = io_fromRename_2_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fuType = io_fromRename_2_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fuOpType = io_fromRename_2_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_rfWen = io_fromRename_2_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpWen = io_fromRename_2_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_selImm = io_fromRename_2_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_imm = io_fromRename_2_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_isAddSub = io_fromRename_2_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_typeTagIn = io_fromRename_2_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_typeTagOut = io_fromRename_2_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_fromInt = io_fromRename_2_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_wflags = io_fromRename_2_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_fpWen = io_fromRename_2_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_fmaCmd = io_fromRename_2_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_div = io_fromRename_2_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_sqrt = io_fromRename_2_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_fcvt = io_fromRename_2_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_typ = io_fromRename_2_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_fmt = io_fromRename_2_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_ren3 = io_fromRename_2_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_ctrl_fpu_rm = io_fromRename_2_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_psrc_0 = io_fromRename_2_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_psrc_1 = io_fromRename_2_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_psrc_2 = io_fromRename_2_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_pdest = io_fromRename_2_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_robIdx_flag = io_fromRename_2_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_2_bits_robIdx_value = io_fromRename_2_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_valid = _io_toIntDq_req_3_valid_T_3 & io_toFpDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 220:67]
  assign io_toIntDq_req_3_bits_cf_trigger_backendEn_0 = io_fromRename_3_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendEn_1 = io_fromRename_3_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_0 = io_fromRename_3_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_1 = io_fromRename_3_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_2 = io_fromRename_3_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_3 = io_fromRename_3_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_4 = io_fromRename_3_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_trigger_backendHit_5 = io_fromRename_3_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_pd_isRVC = io_fromRename_3_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_pd_brType = io_fromRename_3_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_pd_isCall = io_fromRename_3_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_pd_isRet = io_fromRename_3_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_pred_taken = io_fromRename_3_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_waitForRobIdx_value = io_lfst_resp_3_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toIntDq_req_3_bits_cf_loadWaitBit = io_lfst_resp_3_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toIntDq_req_3_bits_cf_loadWaitStrict = io_fromRename_3_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_ssid = io_fromRename_3_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_ftqPtr_flag = io_fromRename_3_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_ftqPtr_value = io_fromRename_3_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_cf_ftqOffset = io_fromRename_3_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_srcType_0 = io_fromRename_3_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_srcType_1 = io_fromRename_3_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_srcType_2 = io_fromRename_3_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fuType = io_fromRename_3_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fuOpType = io_fromRename_3_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_rfWen = io_fromRename_3_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpWen = io_fromRename_3_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_selImm = io_fromRename_3_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_imm = io_fromRename_3_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_isAddSub = io_fromRename_3_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_typeTagIn = io_fromRename_3_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_typeTagOut = io_fromRename_3_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_fromInt = io_fromRename_3_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_wflags = io_fromRename_3_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_fpWen = io_fromRename_3_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_fmaCmd = io_fromRename_3_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_div = io_fromRename_3_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_sqrt = io_fromRename_3_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_fcvt = io_fromRename_3_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_typ = io_fromRename_3_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_fmt = io_fromRename_3_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_ren3 = io_fromRename_3_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_ctrl_fpu_rm = io_fromRename_3_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_psrc_0 = io_fromRename_3_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_psrc_1 = io_fromRename_3_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_psrc_2 = io_fromRename_3_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_pdest = io_fromRename_3_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_robIdx_flag = io_fromRename_3_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toIntDq_req_3_bits_robIdx_value = io_fromRename_3_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_needAlloc_0 = io_fromRename_0_valid & isFp_0; // @[Dispatch.scala 223:55]
  assign io_toFpDq_needAlloc_1 = io_fromRename_1_valid & isFp_1; // @[Dispatch.scala 223:55]
  assign io_toFpDq_needAlloc_2 = io_fromRename_2_valid & isFp_2; // @[Dispatch.scala 223:55]
  assign io_toFpDq_req_0_valid = _io_toFpDq_req_0_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 225:68]
  assign io_toFpDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_0 = io_fromRename_0_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_1 = io_fromRename_0_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_2 = io_fromRename_0_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_3 = io_fromRename_0_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_4 = io_fromRename_0_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_trigger_backendHit_5 = io_fromRename_0_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_waitForRobIdx_value = io_lfst_resp_0_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toFpDq_req_0_bits_cf_loadWaitBit = io_lfst_resp_0_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toFpDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_psrc_0 = io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_valid = _io_toFpDq_req_1_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 225:68]
  assign io_toFpDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_0 = io_fromRename_1_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_1 = io_fromRename_1_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_2 = io_fromRename_1_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_3 = io_fromRename_1_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_4 = io_fromRename_1_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_trigger_backendHit_5 = io_fromRename_1_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_waitForRobIdx_value = io_lfst_resp_1_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toFpDq_req_1_bits_cf_loadWaitBit = io_lfst_resp_1_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toFpDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_psrc_0 = io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_valid = _io_toFpDq_req_2_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 225:68]
  assign io_toFpDq_req_2_bits_cf_trigger_backendEn_0 = io_fromRename_2_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendEn_1 = io_fromRename_2_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_0 = io_fromRename_2_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_1 = io_fromRename_2_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_2 = io_fromRename_2_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_3 = io_fromRename_2_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_4 = io_fromRename_2_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_trigger_backendHit_5 = io_fromRename_2_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_pd_isRVC = io_fromRename_2_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_pd_brType = io_fromRename_2_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_pd_isCall = io_fromRename_2_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_pd_isRet = io_fromRename_2_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_pred_taken = io_fromRename_2_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_waitForRobIdx_value = io_lfst_resp_2_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toFpDq_req_2_bits_cf_loadWaitBit = io_lfst_resp_2_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toFpDq_req_2_bits_cf_loadWaitStrict = io_fromRename_2_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_ssid = io_fromRename_2_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_ftqPtr_flag = io_fromRename_2_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_ftqPtr_value = io_fromRename_2_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_cf_ftqOffset = io_fromRename_2_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_srcType_0 = io_fromRename_2_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_srcType_1 = io_fromRename_2_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_srcType_2 = io_fromRename_2_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fuType = io_fromRename_2_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fuOpType = io_fromRename_2_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_rfWen = io_fromRename_2_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpWen = io_fromRename_2_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_selImm = io_fromRename_2_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_imm = io_fromRename_2_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_isAddSub = io_fromRename_2_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_typeTagIn = io_fromRename_2_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_typeTagOut = io_fromRename_2_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_fromInt = io_fromRename_2_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_wflags = io_fromRename_2_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_fpWen = io_fromRename_2_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_fmaCmd = io_fromRename_2_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_div = io_fromRename_2_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_sqrt = io_fromRename_2_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_fcvt = io_fromRename_2_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_typ = io_fromRename_2_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_fmt = io_fromRename_2_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_ren3 = io_fromRename_2_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_ctrl_fpu_rm = io_fromRename_2_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_psrc_0 = io_fromRename_2_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_psrc_1 = io_fromRename_2_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_psrc_2 = io_fromRename_2_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_pdest = io_fromRename_2_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_robIdx_flag = io_fromRename_2_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_2_bits_robIdx_value = io_fromRename_2_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_valid = _io_toFpDq_req_3_valid_T_1 & io_toIntDq_canAccept & io_toLsDq_canAccept; // @[Dispatch.scala 225:68]
  assign io_toFpDq_req_3_bits_cf_trigger_backendEn_0 = io_fromRename_3_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendEn_1 = io_fromRename_3_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_0 = io_fromRename_3_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_1 = io_fromRename_3_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_2 = io_fromRename_3_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_3 = io_fromRename_3_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_4 = io_fromRename_3_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_trigger_backendHit_5 = io_fromRename_3_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_pd_isRVC = io_fromRename_3_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_pd_brType = io_fromRename_3_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_pd_isCall = io_fromRename_3_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_pd_isRet = io_fromRename_3_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_pred_taken = io_fromRename_3_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_waitForRobIdx_value = io_lfst_resp_3_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toFpDq_req_3_bits_cf_loadWaitBit = io_lfst_resp_3_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toFpDq_req_3_bits_cf_loadWaitStrict = io_fromRename_3_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_ssid = io_fromRename_3_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_ftqPtr_flag = io_fromRename_3_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_ftqPtr_value = io_fromRename_3_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_cf_ftqOffset = io_fromRename_3_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_srcType_0 = io_fromRename_3_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_srcType_1 = io_fromRename_3_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_srcType_2 = io_fromRename_3_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fuType = io_fromRename_3_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fuOpType = io_fromRename_3_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_rfWen = io_fromRename_3_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpWen = io_fromRename_3_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_selImm = io_fromRename_3_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_imm = io_fromRename_3_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_isAddSub = io_fromRename_3_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_typeTagIn = io_fromRename_3_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_typeTagOut = io_fromRename_3_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_fromInt = io_fromRename_3_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_wflags = io_fromRename_3_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_fpWen = io_fromRename_3_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_fmaCmd = io_fromRename_3_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_div = io_fromRename_3_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_sqrt = io_fromRename_3_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_fcvt = io_fromRename_3_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_typ = io_fromRename_3_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_fmt = io_fromRename_3_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_ren3 = io_fromRename_3_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_ctrl_fpu_rm = io_fromRename_3_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_psrc_0 = io_fromRename_3_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_psrc_1 = io_fromRename_3_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_psrc_2 = io_fromRename_3_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_pdest = io_fromRename_3_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_robIdx_flag = io_fromRename_3_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toFpDq_req_3_bits_robIdx_value = io_fromRename_3_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_needAlloc_0 = io_fromRename_0_valid & isMem_0; // @[Dispatch.scala 228:55]
  assign io_toLsDq_needAlloc_1 = io_fromRename_1_valid & isMem_1; // @[Dispatch.scala 228:55]
  assign io_toLsDq_needAlloc_2 = io_fromRename_2_valid & isMem_2; // @[Dispatch.scala 228:55]
  assign io_toLsDq_req_0_valid = _io_toLsDq_req_0_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 230:68]
  assign io_toLsDq_req_0_bits_cf_trigger_backendEn_0 = io_fromRename_0_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendEn_1 = io_fromRename_0_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_0 = io_fromRename_0_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_1 = io_fromRename_0_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_2 = io_fromRename_0_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_3 = io_fromRename_0_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_4 = io_fromRename_0_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_trigger_backendHit_5 = io_fromRename_0_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_pd_isRVC = io_fromRename_0_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_pd_brType = io_fromRename_0_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_pd_isCall = io_fromRename_0_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_pd_isRet = io_fromRename_0_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_pred_taken = io_fromRename_0_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_waitForRobIdx_value = io_lfst_resp_0_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toLsDq_req_0_bits_cf_loadWaitBit = io_lfst_resp_0_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toLsDq_req_0_bits_cf_loadWaitStrict = io_fromRename_0_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_ftqPtr_flag = io_fromRename_0_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_ftqPtr_value = io_fromRename_0_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_cf_ftqOffset = io_fromRename_0_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_0 = io_fromRename_0_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_1 = io_fromRename_0_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_srcType_2 = io_fromRename_0_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fuType = io_fromRename_0_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fuOpType = io_fromRename_0_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_rfWen = io_fromRename_0_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpWen = io_fromRename_0_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_selImm = io_fromRename_0_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_imm = io_fromRename_0_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_isAddSub = io_fromRename_0_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typeTagIn = io_fromRename_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typeTagOut = io_fromRename_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fromInt = io_fromRename_0_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_wflags = io_fromRename_0_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fpWen = io_fromRename_0_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fmaCmd = io_fromRename_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_div = io_fromRename_0_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_sqrt = io_fromRename_0_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fcvt = io_fromRename_0_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_typ = io_fromRename_0_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_fmt = io_fromRename_0_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_ren3 = io_fromRename_0_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_ctrl_fpu_rm = io_fromRename_0_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_psrc_0 = io_fromRename_0_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_psrc_1 = io_fromRename_0_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_psrc_2 = io_fromRename_0_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_pdest = io_fromRename_0_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_valid = _io_toLsDq_req_1_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 230:68]
  assign io_toLsDq_req_1_bits_cf_trigger_backendEn_0 = io_fromRename_1_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendEn_1 = io_fromRename_1_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_0 = io_fromRename_1_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_1 = io_fromRename_1_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_2 = io_fromRename_1_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_3 = io_fromRename_1_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_4 = io_fromRename_1_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_trigger_backendHit_5 = io_fromRename_1_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_pd_isRVC = io_fromRename_1_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_pd_brType = io_fromRename_1_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_pd_isCall = io_fromRename_1_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_pd_isRet = io_fromRename_1_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_pred_taken = io_fromRename_1_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_waitForRobIdx_value = io_lfst_resp_1_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toLsDq_req_1_bits_cf_loadWaitBit = io_lfst_resp_1_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toLsDq_req_1_bits_cf_loadWaitStrict = io_fromRename_1_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_ftqPtr_flag = io_fromRename_1_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_ftqPtr_value = io_fromRename_1_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_cf_ftqOffset = io_fromRename_1_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_0 = io_fromRename_1_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_1 = io_fromRename_1_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_srcType_2 = io_fromRename_1_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fuType = io_fromRename_1_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fuOpType = io_fromRename_1_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_rfWen = io_fromRename_1_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpWen = io_fromRename_1_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_selImm = io_fromRename_1_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_imm = io_fromRename_1_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_isAddSub = io_fromRename_1_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typeTagIn = io_fromRename_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typeTagOut = io_fromRename_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fromInt = io_fromRename_1_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_wflags = io_fromRename_1_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fpWen = io_fromRename_1_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fmaCmd = io_fromRename_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_div = io_fromRename_1_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_sqrt = io_fromRename_1_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fcvt = io_fromRename_1_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_typ = io_fromRename_1_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_fmt = io_fromRename_1_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_ren3 = io_fromRename_1_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_ctrl_fpu_rm = io_fromRename_1_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_psrc_0 = io_fromRename_1_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_psrc_1 = io_fromRename_1_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_psrc_2 = io_fromRename_1_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_pdest = io_fromRename_1_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_valid = _io_toLsDq_req_2_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 230:68]
  assign io_toLsDq_req_2_bits_cf_trigger_backendEn_0 = io_fromRename_2_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendEn_1 = io_fromRename_2_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_0 = io_fromRename_2_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_1 = io_fromRename_2_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_2 = io_fromRename_2_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_3 = io_fromRename_2_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_4 = io_fromRename_2_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_trigger_backendHit_5 = io_fromRename_2_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_pd_isRVC = io_fromRename_2_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_pd_brType = io_fromRename_2_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_pd_isCall = io_fromRename_2_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_pd_isRet = io_fromRename_2_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_pred_taken = io_fromRename_2_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_waitForRobIdx_value = io_lfst_resp_2_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toLsDq_req_2_bits_cf_loadWaitBit = io_lfst_resp_2_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toLsDq_req_2_bits_cf_loadWaitStrict = io_fromRename_2_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_ssid = io_fromRename_2_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_ftqPtr_flag = io_fromRename_2_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_ftqPtr_value = io_fromRename_2_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_cf_ftqOffset = io_fromRename_2_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_srcType_0 = io_fromRename_2_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_srcType_1 = io_fromRename_2_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_srcType_2 = io_fromRename_2_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fuType = io_fromRename_2_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fuOpType = io_fromRename_2_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_rfWen = io_fromRename_2_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpWen = io_fromRename_2_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_selImm = io_fromRename_2_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_imm = io_fromRename_2_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_isAddSub = io_fromRename_2_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_typeTagIn = io_fromRename_2_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_typeTagOut = io_fromRename_2_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_fromInt = io_fromRename_2_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_wflags = io_fromRename_2_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_fpWen = io_fromRename_2_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_fmaCmd = io_fromRename_2_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_div = io_fromRename_2_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_sqrt = io_fromRename_2_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_fcvt = io_fromRename_2_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_typ = io_fromRename_2_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_fmt = io_fromRename_2_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_ren3 = io_fromRename_2_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_ctrl_fpu_rm = io_fromRename_2_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_psrc_0 = io_fromRename_2_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_psrc_1 = io_fromRename_2_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_psrc_2 = io_fromRename_2_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_pdest = io_fromRename_2_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_robIdx_flag = io_fromRename_2_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_2_bits_robIdx_value = io_fromRename_2_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_valid = _io_toLsDq_req_3_valid_T_1 & io_toIntDq_canAccept & io_toFpDq_canAccept; // @[Dispatch.scala 230:68]
  assign io_toLsDq_req_3_bits_cf_trigger_backendEn_0 = io_fromRename_3_bits_cf_trigger_backendEn_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendEn_1 = io_fromRename_3_bits_cf_trigger_backendEn_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_0 = io_fromRename_3_bits_cf_trigger_backendHit_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_1 = io_fromRename_3_bits_cf_trigger_backendHit_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_2 = io_fromRename_3_bits_cf_trigger_backendHit_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_3 = io_fromRename_3_bits_cf_trigger_backendHit_3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_4 = io_fromRename_3_bits_cf_trigger_backendHit_4; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_trigger_backendHit_5 = io_fromRename_3_bits_cf_trigger_backendHit_5; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_pd_isRVC = io_fromRename_3_bits_cf_pd_isRVC; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_pd_brType = io_fromRename_3_bits_cf_pd_brType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_pd_isCall = io_fromRename_3_bits_cf_pd_isCall; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_pd_isRet = io_fromRename_3_bits_cf_pd_isRet; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_pred_taken = io_fromRename_3_bits_cf_pred_taken; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_waitForRobIdx_value = io_lfst_resp_3_bits_robIdx_value; // @[Dispatch.scala 104:24 132:38]
  assign io_toLsDq_req_3_bits_cf_loadWaitBit = io_lfst_resp_3_bits_shouldWait; // @[Dispatch.scala 104:24 131:36]
  assign io_toLsDq_req_3_bits_cf_loadWaitStrict = io_fromRename_3_bits_cf_loadWaitStrict; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_ssid = io_fromRename_3_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_ftqPtr_flag = io_fromRename_3_bits_cf_ftqPtr_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_ftqPtr_value = io_fromRename_3_bits_cf_ftqPtr_value; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_cf_ftqOffset = io_fromRename_3_bits_cf_ftqOffset; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_srcType_0 = io_fromRename_3_bits_ctrl_srcType_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_srcType_1 = io_fromRename_3_bits_ctrl_srcType_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_srcType_2 = io_fromRename_3_bits_ctrl_srcType_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fuType = io_fromRename_3_bits_ctrl_fuType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fuOpType = io_fromRename_3_bits_ctrl_fuOpType; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_rfWen = io_fromRename_3_bits_ctrl_rfWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpWen = io_fromRename_3_bits_ctrl_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_selImm = io_fromRename_3_bits_ctrl_selImm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_imm = io_fromRename_3_bits_ctrl_imm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_isAddSub = io_fromRename_3_bits_ctrl_fpu_isAddSub; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_typeTagIn = io_fromRename_3_bits_ctrl_fpu_typeTagIn; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_typeTagOut = io_fromRename_3_bits_ctrl_fpu_typeTagOut; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_fromInt = io_fromRename_3_bits_ctrl_fpu_fromInt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_wflags = io_fromRename_3_bits_ctrl_fpu_wflags; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_fpWen = io_fromRename_3_bits_ctrl_fpu_fpWen; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_fmaCmd = io_fromRename_3_bits_ctrl_fpu_fmaCmd; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_div = io_fromRename_3_bits_ctrl_fpu_div; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_sqrt = io_fromRename_3_bits_ctrl_fpu_sqrt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_fcvt = io_fromRename_3_bits_ctrl_fpu_fcvt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_typ = io_fromRename_3_bits_ctrl_fpu_typ; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_fmt = io_fromRename_3_bits_ctrl_fpu_fmt; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_ren3 = io_fromRename_3_bits_ctrl_fpu_ren3; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_ctrl_fpu_rm = io_fromRename_3_bits_ctrl_fpu_rm; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_psrc_0 = io_fromRename_3_bits_psrc_0; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_psrc_1 = io_fromRename_3_bits_psrc_1; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_psrc_2 = io_fromRename_3_bits_psrc_2; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_pdest = io_fromRename_3_bits_pdest; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_robIdx_flag = io_fromRename_3_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_toLsDq_req_3_bits_robIdx_value = io_fromRename_3_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_0_valid = _T & io_fromRename_0_bits_cf_storeSetHit; // @[Dispatch.scala 124:53]
  assign io_lfst_req_0_bits_isstore = isMem_0 & io_fromRename_0_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  assign io_lfst_req_0_bits_ssid = io_fromRename_0_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_0_bits_robIdx_flag = io_fromRename_0_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_0_bits_robIdx_value = io_fromRename_0_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_1_valid = _checkpoint_id_T_1 & io_fromRename_1_bits_cf_storeSetHit; // @[Dispatch.scala 124:53]
  assign io_lfst_req_1_bits_isstore = isMem_1 & io_fromRename_1_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  assign io_lfst_req_1_bits_ssid = io_fromRename_1_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_1_bits_robIdx_flag = io_fromRename_1_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_1_bits_robIdx_value = io_fromRename_1_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_2_valid = _checkpoint_id_T_2 & io_fromRename_2_bits_cf_storeSetHit; // @[Dispatch.scala 124:53]
  assign io_lfst_req_2_bits_isstore = isMem_2 & io_fromRename_2_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  assign io_lfst_req_2_bits_ssid = io_fromRename_2_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_2_bits_robIdx_flag = io_fromRename_2_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_2_bits_robIdx_value = io_fromRename_2_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_3_valid = _checkpoint_id_T_3 & io_fromRename_3_bits_cf_storeSetHit; // @[Dispatch.scala 124:53]
  assign io_lfst_req_3_bits_isstore = isMem_3 & io_fromRename_3_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  assign io_lfst_req_3_bits_ssid = io_fromRename_3_bits_cf_ssid; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_3_bits_robIdx_flag = io_fromRename_3_bits_robIdx_flag; // @[Dispatch.scala 104:24 115:19]
  assign io_lfst_req_3_bits_robIdx_value = io_fromRename_3_bits_robIdx_value; // @[Dispatch.scala 104:24 115:19]
  assign io_perf_0_value = {{3'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{3'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{3'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = {{5'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (reset) begin // @[Dispatch.scala 96:33]
      singleStepStatus <= 1'h0; // @[Dispatch.scala 96:33]
    end else if (io_redirect_valid) begin // @[Dispatch.scala 97:28]
      singleStepStatus <= 1'h0; // @[Dispatch.scala 98:22]
    end else begin
      singleStepStatus <= _GEN_0;
    end
    io_perf_0_value_REG <= _T_191 + _T_193; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= ~hasValidInstr; // @[Dispatch.scala 273:37]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_139 + _T_141; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_161 + _T_163; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= _T_170 & io_toLsDq_canAccept; // @[Dispatch.scala 277:122]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= _T_175 & io_toLsDq_canAccept; // @[Dispatch.scala 278:122]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= _T_180 & io_toLsDq_canAccept; // @[Dispatch.scala 279:122]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= _T_184 & _T_185; // @[Dispatch.scala 280:121]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  singleStepStatus = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
