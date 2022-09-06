module LsqWrappper(
  input          clock,
  input          reset,
  input  [1:0]   io_enq_needAlloc_0,
  input  [1:0]   io_enq_needAlloc_1,
  input  [1:0]   io_enq_needAlloc_2,
  input  [1:0]   io_enq_needAlloc_3,
  input          io_enq_req_0_valid,
  input          io_enq_req_0_bits_robIdx_flag,
  input  [6:0]   io_enq_req_0_bits_robIdx_value,
  input  [5:0]   io_enq_req_0_bits_lqIdx_value,
  input  [4:0]   io_enq_req_0_bits_sqIdx_value,
  input          io_enq_req_1_valid,
  input          io_enq_req_1_bits_robIdx_flag,
  input  [6:0]   io_enq_req_1_bits_robIdx_value,
  input  [5:0]   io_enq_req_1_bits_lqIdx_value,
  input  [4:0]   io_enq_req_1_bits_sqIdx_value,
  input          io_enq_req_2_valid,
  input          io_enq_req_2_bits_robIdx_flag,
  input  [6:0]   io_enq_req_2_bits_robIdx_value,
  input  [5:0]   io_enq_req_2_bits_lqIdx_value,
  input  [4:0]   io_enq_req_2_bits_sqIdx_value,
  input          io_enq_req_3_valid,
  input          io_enq_req_3_bits_robIdx_flag,
  input  [6:0]   io_enq_req_3_bits_robIdx_value,
  input  [5:0]   io_enq_req_3_bits_lqIdx_value,
  input  [4:0]   io_enq_req_3_bits_sqIdx_value,
  input          io_brqRedirect_valid,
  input          io_brqRedirect_bits_robIdx_flag,
  input  [6:0]   io_brqRedirect_bits_robIdx_value,
  input          io_brqRedirect_bits_level,
  input          io_loadIn_0_valid,
  input          io_loadIn_0_bits_uop_cf_exceptionVec_4,
  input          io_loadIn_0_bits_uop_cf_exceptionVec_5,
  input          io_loadIn_0_bits_uop_cf_exceptionVec_13,
  input          io_loadIn_0_bits_uop_cf_trigger_backendEn_1,
  input          io_loadIn_0_bits_uop_cf_trigger_backendHit_0,
  input          io_loadIn_0_bits_uop_cf_trigger_backendHit_1,
  input          io_loadIn_0_bits_uop_cf_trigger_backendHit_4,
  input          io_loadIn_0_bits_uop_cf_ftqPtr_flag,
  input  [5:0]   io_loadIn_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_loadIn_0_bits_uop_cf_ftqOffset,
  input  [6:0]   io_loadIn_0_bits_uop_ctrl_fuOpType,
  input          io_loadIn_0_bits_uop_ctrl_rfWen,
  input          io_loadIn_0_bits_uop_ctrl_fpWen,
  input          io_loadIn_0_bits_uop_ctrl_flushPipe,
  input          io_loadIn_0_bits_uop_ctrl_replayInst,
  input  [6:0]   io_loadIn_0_bits_uop_pdest,
  input          io_loadIn_0_bits_uop_robIdx_flag,
  input  [6:0]   io_loadIn_0_bits_uop_robIdx_value,
  input  [5:0]   io_loadIn_0_bits_uop_lqIdx_value,
  input  [38:0]  io_loadIn_0_bits_vaddr,
  input  [35:0]  io_loadIn_0_bits_paddr,
  input  [7:0]   io_loadIn_0_bits_mask,
  input          io_loadIn_0_bits_miss,
  input          io_loadIn_0_bits_mmio,
  input          io_loadIn_0_bits_forwardMask_0,
  input          io_loadIn_0_bits_forwardMask_1,
  input          io_loadIn_0_bits_forwardMask_2,
  input          io_loadIn_0_bits_forwardMask_3,
  input          io_loadIn_0_bits_forwardMask_4,
  input          io_loadIn_0_bits_forwardMask_5,
  input          io_loadIn_0_bits_forwardMask_6,
  input          io_loadIn_0_bits_forwardMask_7,
  input  [7:0]   io_loadIn_0_bits_forwardData_0,
  input  [7:0]   io_loadIn_0_bits_forwardData_1,
  input  [7:0]   io_loadIn_0_bits_forwardData_2,
  input  [7:0]   io_loadIn_0_bits_forwardData_3,
  input  [7:0]   io_loadIn_0_bits_forwardData_4,
  input  [7:0]   io_loadIn_0_bits_forwardData_5,
  input  [7:0]   io_loadIn_0_bits_forwardData_6,
  input  [7:0]   io_loadIn_0_bits_forwardData_7,
  input          io_loadIn_1_valid,
  input          io_loadIn_1_bits_uop_cf_exceptionVec_4,
  input          io_loadIn_1_bits_uop_cf_exceptionVec_5,
  input          io_loadIn_1_bits_uop_cf_exceptionVec_13,
  input          io_loadIn_1_bits_uop_cf_trigger_backendEn_1,
  input          io_loadIn_1_bits_uop_cf_trigger_backendHit_0,
  input          io_loadIn_1_bits_uop_cf_trigger_backendHit_1,
  input          io_loadIn_1_bits_uop_cf_trigger_backendHit_4,
  input          io_loadIn_1_bits_uop_cf_ftqPtr_flag,
  input  [5:0]   io_loadIn_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_loadIn_1_bits_uop_cf_ftqOffset,
  input  [6:0]   io_loadIn_1_bits_uop_ctrl_fuOpType,
  input          io_loadIn_1_bits_uop_ctrl_rfWen,
  input          io_loadIn_1_bits_uop_ctrl_fpWen,
  input          io_loadIn_1_bits_uop_ctrl_flushPipe,
  input          io_loadIn_1_bits_uop_ctrl_replayInst,
  input  [6:0]   io_loadIn_1_bits_uop_pdest,
  input          io_loadIn_1_bits_uop_robIdx_flag,
  input  [6:0]   io_loadIn_1_bits_uop_robIdx_value,
  input  [5:0]   io_loadIn_1_bits_uop_lqIdx_value,
  input  [38:0]  io_loadIn_1_bits_vaddr,
  input  [35:0]  io_loadIn_1_bits_paddr,
  input  [7:0]   io_loadIn_1_bits_mask,
  input          io_loadIn_1_bits_miss,
  input          io_loadIn_1_bits_mmio,
  input          io_loadIn_1_bits_forwardMask_0,
  input          io_loadIn_1_bits_forwardMask_1,
  input          io_loadIn_1_bits_forwardMask_2,
  input          io_loadIn_1_bits_forwardMask_3,
  input          io_loadIn_1_bits_forwardMask_4,
  input          io_loadIn_1_bits_forwardMask_5,
  input          io_loadIn_1_bits_forwardMask_6,
  input          io_loadIn_1_bits_forwardMask_7,
  input  [7:0]   io_loadIn_1_bits_forwardData_0,
  input  [7:0]   io_loadIn_1_bits_forwardData_1,
  input  [7:0]   io_loadIn_1_bits_forwardData_2,
  input  [7:0]   io_loadIn_1_bits_forwardData_3,
  input  [7:0]   io_loadIn_1_bits_forwardData_4,
  input  [7:0]   io_loadIn_1_bits_forwardData_5,
  input  [7:0]   io_loadIn_1_bits_forwardData_6,
  input  [7:0]   io_loadIn_1_bits_forwardData_7,
  input          io_storeIn_0_valid,
  input  [5:0]   io_storeIn_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_storeIn_0_bits_uop_cf_ftqOffset,
  input  [6:0]   io_storeIn_0_bits_uop_ctrl_fuOpType,
  input          io_storeIn_0_bits_uop_robIdx_flag,
  input  [6:0]   io_storeIn_0_bits_uop_robIdx_value,
  input          io_storeIn_0_bits_uop_lqIdx_flag,
  input  [5:0]   io_storeIn_0_bits_uop_lqIdx_value,
  input  [4:0]   io_storeIn_0_bits_uop_sqIdx_value,
  input  [38:0]  io_storeIn_0_bits_vaddr,
  input  [35:0]  io_storeIn_0_bits_paddr,
  input  [7:0]   io_storeIn_0_bits_mask,
  input          io_storeIn_0_bits_wlineflag,
  input          io_storeIn_0_bits_miss,
  input          io_storeIn_1_valid,
  input  [5:0]   io_storeIn_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]   io_storeIn_1_bits_uop_cf_ftqOffset,
  input  [6:0]   io_storeIn_1_bits_uop_ctrl_fuOpType,
  input          io_storeIn_1_bits_uop_robIdx_flag,
  input  [6:0]   io_storeIn_1_bits_uop_robIdx_value,
  input          io_storeIn_1_bits_uop_lqIdx_flag,
  input  [5:0]   io_storeIn_1_bits_uop_lqIdx_value,
  input  [4:0]   io_storeIn_1_bits_uop_sqIdx_value,
  input  [38:0]  io_storeIn_1_bits_vaddr,
  input  [35:0]  io_storeIn_1_bits_paddr,
  input  [7:0]   io_storeIn_1_bits_mask,
  input          io_storeIn_1_bits_wlineflag,
  input          io_storeIn_1_bits_miss,
  input          io_storeInRe_0_mmio,
  input          io_storeInRe_1_mmio,
  input          io_storeDataIn_0_valid,
  input  [6:0]   io_storeDataIn_0_bits_uop_ctrl_fuOpType,
  input  [4:0]   io_storeDataIn_0_bits_uop_sqIdx_value,
  input  [63:0]  io_storeDataIn_0_bits_data,
  input          io_storeDataIn_1_valid,
  input  [6:0]   io_storeDataIn_1_bits_uop_ctrl_fuOpType,
  input  [4:0]   io_storeDataIn_1_bits_uop_sqIdx_value,
  input  [63:0]  io_storeDataIn_1_bits_data,
  input          io_loadDataForwarded_0,
  input          io_loadDataForwarded_1,
  input          io_dcacheRequireReplay_0,
  input          io_dcacheRequireReplay_1,
  input          io_sbuffer_0_ready,
  output         io_sbuffer_0_valid,
  output [35:0]  io_sbuffer_0_bits_addr,
  output [63:0]  io_sbuffer_0_bits_data,
  output [7:0]   io_sbuffer_0_bits_mask,
  output [38:0]  io_sbuffer_0_bits_vaddr,
  output         io_sbuffer_0_bits_wline,
  input          io_sbuffer_1_ready,
  output         io_sbuffer_1_valid,
  output [35:0]  io_sbuffer_1_bits_addr,
  output [63:0]  io_sbuffer_1_bits_data,
  output [7:0]   io_sbuffer_1_bits_mask,
  output [38:0]  io_sbuffer_1_bits_vaddr,
  output         io_sbuffer_1_bits_wline,
  input          io_ldout_0_ready,
  output         io_ldout_0_valid,
  output         io_ldout_0_bits_uop_cf_exceptionVec_4,
  output         io_ldout_0_bits_uop_cf_exceptionVec_5,
  output         io_ldout_0_bits_uop_cf_exceptionVec_13,
  output         io_ldout_0_bits_uop_cf_trigger_backendEn_1,
  output         io_ldout_0_bits_uop_cf_trigger_backendHit_0,
  output         io_ldout_0_bits_uop_cf_trigger_backendHit_1,
  output         io_ldout_0_bits_uop_cf_trigger_backendHit_4,
  output         io_ldout_0_bits_uop_ctrl_rfWen,
  output         io_ldout_0_bits_uop_ctrl_fpWen,
  output         io_ldout_0_bits_uop_ctrl_flushPipe,
  output         io_ldout_0_bits_uop_ctrl_replayInst,
  output [6:0]   io_ldout_0_bits_uop_pdest,
  output         io_ldout_0_bits_uop_robIdx_flag,
  output [6:0]   io_ldout_0_bits_uop_robIdx_value,
  output [63:0]  io_ldout_0_bits_data,
  output         io_ldout_0_bits_debug_isMMIO,
  input          io_ldout_1_ready,
  output         io_ldout_1_valid,
  output         io_ldout_1_bits_uop_cf_exceptionVec_4,
  output         io_ldout_1_bits_uop_cf_exceptionVec_5,
  output         io_ldout_1_bits_uop_cf_exceptionVec_13,
  output         io_ldout_1_bits_uop_cf_trigger_backendEn_1,
  output         io_ldout_1_bits_uop_cf_trigger_backendHit_0,
  output         io_ldout_1_bits_uop_cf_trigger_backendHit_1,
  output         io_ldout_1_bits_uop_cf_trigger_backendHit_4,
  output         io_ldout_1_bits_uop_ctrl_rfWen,
  output         io_ldout_1_bits_uop_ctrl_fpWen,
  output         io_ldout_1_bits_uop_ctrl_flushPipe,
  output         io_ldout_1_bits_uop_ctrl_replayInst,
  output [6:0]   io_ldout_1_bits_uop_pdest,
  output         io_ldout_1_bits_uop_robIdx_flag,
  output [6:0]   io_ldout_1_bits_uop_robIdx_value,
  output [63:0]  io_ldout_1_bits_data,
  output         io_ldout_1_bits_debug_isMMIO,
  input          io_mmioStout_ready,
  output         io_mmioStout_valid,
  output         io_mmioStout_bits_uop_robIdx_flag,
  output [6:0]   io_mmioStout_bits_uop_robIdx_value,
  input  [38:0]  io_forward_0_vaddr,
  input  [35:0]  io_forward_0_paddr,
  input  [7:0]   io_forward_0_mask,
  input          io_forward_0_uop_cf_ftqPtr_flag,
  input  [5:0]   io_forward_0_uop_cf_ftqPtr_value,
  input  [2:0]   io_forward_0_uop_cf_ftqOffset,
  input          io_forward_0_uop_robIdx_flag,
  input  [6:0]   io_forward_0_uop_robIdx_value,
  input          io_forward_0_valid,
  output         io_forward_0_forwardMask_0,
  output         io_forward_0_forwardMask_1,
  output         io_forward_0_forwardMask_2,
  output         io_forward_0_forwardMask_3,
  output         io_forward_0_forwardMask_4,
  output         io_forward_0_forwardMask_5,
  output         io_forward_0_forwardMask_6,
  output         io_forward_0_forwardMask_7,
  output [7:0]   io_forward_0_forwardData_0,
  output [7:0]   io_forward_0_forwardData_1,
  output [7:0]   io_forward_0_forwardData_2,
  output [7:0]   io_forward_0_forwardData_3,
  output [7:0]   io_forward_0_forwardData_4,
  output [7:0]   io_forward_0_forwardData_5,
  output [7:0]   io_forward_0_forwardData_6,
  output [7:0]   io_forward_0_forwardData_7,
  input          io_forward_0_sqIdx_flag,
  output         io_forward_0_dataInvalid,
  output         io_forward_0_matchInvalid,
  input  [31:0]  io_forward_0_sqIdxMask,
  output         io_forward_0_dataInvalidFast,
  output [4:0]   io_forward_0_dataInvalidSqIdx,
  input  [38:0]  io_forward_1_vaddr,
  input  [35:0]  io_forward_1_paddr,
  input  [7:0]   io_forward_1_mask,
  input          io_forward_1_uop_cf_ftqPtr_flag,
  input  [5:0]   io_forward_1_uop_cf_ftqPtr_value,
  input  [2:0]   io_forward_1_uop_cf_ftqOffset,
  input          io_forward_1_uop_robIdx_flag,
  input  [6:0]   io_forward_1_uop_robIdx_value,
  input          io_forward_1_valid,
  output         io_forward_1_forwardMask_0,
  output         io_forward_1_forwardMask_1,
  output         io_forward_1_forwardMask_2,
  output         io_forward_1_forwardMask_3,
  output         io_forward_1_forwardMask_4,
  output         io_forward_1_forwardMask_5,
  output         io_forward_1_forwardMask_6,
  output         io_forward_1_forwardMask_7,
  output [7:0]   io_forward_1_forwardData_0,
  output [7:0]   io_forward_1_forwardData_1,
  output [7:0]   io_forward_1_forwardData_2,
  output [7:0]   io_forward_1_forwardData_3,
  output [7:0]   io_forward_1_forwardData_4,
  output [7:0]   io_forward_1_forwardData_5,
  output [7:0]   io_forward_1_forwardData_6,
  output [7:0]   io_forward_1_forwardData_7,
  input          io_forward_1_sqIdx_flag,
  output         io_forward_1_dataInvalid,
  output         io_forward_1_matchInvalid,
  input  [31:0]  io_forward_1_sqIdxMask,
  output         io_forward_1_dataInvalidFast,
  output [4:0]   io_forward_1_dataInvalidSqIdx,
  output         io_loadViolationQuery_0_req_ready,
  input          io_loadViolationQuery_0_req_valid,
  input          io_loadViolationQuery_0_req_bits_uop_lqIdx_flag,
  input  [5:0]   io_loadViolationQuery_0_req_bits_uop_lqIdx_value,
  input  [35:0]  io_loadViolationQuery_0_req_bits_paddr,
  output         io_loadViolationQuery_0_resp_valid,
  output         io_loadViolationQuery_0_resp_bits_have_violation,
  output         io_loadViolationQuery_1_req_ready,
  input          io_loadViolationQuery_1_req_valid,
  input          io_loadViolationQuery_1_req_bits_uop_lqIdx_flag,
  input  [5:0]   io_loadViolationQuery_1_req_bits_uop_lqIdx_value,
  input  [35:0]  io_loadViolationQuery_1_req_bits_paddr,
  output         io_loadViolationQuery_1_resp_valid,
  output         io_loadViolationQuery_1_resp_bits_have_violation,
  input  [2:0]   io_rob_lcommit,
  input  [2:0]   io_rob_scommit,
  input          io_rob_pendingld,
  input          io_rob_pendingst,
  input          io_rob_commit,
  output         io_rollback_valid,
  output         io_rollback_bits_robIdx_flag,
  output [6:0]   io_rollback_bits_robIdx_value,
  output         io_rollback_bits_ftqIdx_flag,
  output [5:0]   io_rollback_bits_ftqIdx_value,
  output [2:0]   io_rollback_bits_ftqOffset,
  output [5:0]   io_rollback_bits_stFtqIdx_value,
  output [2:0]   io_rollback_bits_stFtqOffset,
  input          io_refill_valid,
  input  [35:0]  io_refill_bits_addr,
  input  [255:0] io_refill_bits_data,
  input          io_release_valid,
  input  [35:0]  io_release_bits_paddr,
  input          io_uncache_req_ready,
  output         io_uncache_req_valid,
  output [4:0]   io_uncache_req_bits_cmd,
  output [35:0]  io_uncache_req_bits_addr,
  output [63:0]  io_uncache_req_bits_data,
  output [7:0]   io_uncache_req_bits_mask,
  output         io_uncache_resp_ready,
  input          io_uncache_resp_valid,
  input  [63:0]  io_uncache_resp_bits_data,
  input          io_exceptionAddr_isStore,
  output [38:0]  io_exceptionAddr_vaddr,
  output         io_sqempty,
  output         io_issuePtrExt_flag,
  output [4:0]   io_issuePtrExt_value,
  output [5:0]   io_lqCancelCnt,
  output [5:0]   io_sqCancelCnt,
  output [1:0]   io_sqDeq,
  input          io_trigger_0_hitLoadAddrTriggerHitVec_0,
  input          io_trigger_0_hitLoadAddrTriggerHitVec_1,
  input          io_trigger_0_hitLoadAddrTriggerHitVec_2,
  output         io_trigger_0_lqLoadAddrTriggerHitVec_0,
  output         io_trigger_0_lqLoadAddrTriggerHitVec_1,
  output         io_trigger_0_lqLoadAddrTriggerHitVec_2,
  input          io_trigger_1_hitLoadAddrTriggerHitVec_0,
  input          io_trigger_1_hitLoadAddrTriggerHitVec_1,
  input          io_trigger_1_hitLoadAddrTriggerHitVec_2,
  output         io_trigger_1_lqLoadAddrTriggerHitVec_0,
  output         io_trigger_1_lqLoadAddrTriggerHitVec_1,
  output         io_trigger_1_lqLoadAddrTriggerHitVec_2,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value,
  output [5:0]   io_perf_13_value,
  output [5:0]   io_perf_14_value,
  output [5:0]   io_perf_15_value,
  output [5:0]   io_perf_16_value,
  output [5:0]   io_perf_17_value
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
`endif // RANDOMIZE_REG_INIT
  wire  loadQueue_clock; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_reset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_canAccept; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_sqCanAccept; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_0_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_0_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_enq_req_0_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_enq_req_0_bits_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_1_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_1_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_enq_req_1_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_enq_req_1_bits_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_2_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_2_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_enq_req_2_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_enq_req_2_bits_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_3_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_enq_req_3_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_enq_req_3_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_enq_req_3_bits_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_brqRedirect_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_brqRedirect_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_brqRedirect_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_brqRedirect_bits_level; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_loadIn_0_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_0_bits_uop_pdest; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadIn_0_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [38:0] loadQueue_io_loadIn_0_bits_vaddr; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_loadIn_0_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_miss; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_mmio; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_2; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_3; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_6; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_0_bits_forwardMask_7; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_0; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_1; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_2; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_3; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_4; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_5; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_6; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_0_bits_forwardData_7; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_loadIn_1_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_1_bits_uop_pdest; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_loadIn_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadIn_1_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [38:0] loadQueue_io_loadIn_1_bits_vaddr; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_loadIn_1_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_miss; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_mmio; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_2; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_3; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_6; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadIn_1_bits_forwardMask_7; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_0; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_1; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_2; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_3; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_4; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_5; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_6; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_loadIn_1_bits_forwardData_7; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_0_valid; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_storeIn_0_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_storeIn_0_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_storeIn_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_0_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_storeIn_0_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_storeIn_0_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_storeIn_0_bits_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_1_valid; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_storeIn_1_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_storeIn_1_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_storeIn_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_storeIn_1_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_storeIn_1_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_storeIn_1_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_storeIn_1_bits_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadDataForwarded_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadDataForwarded_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_dcacheRequireReplay_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_dcacheRequireReplay_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_ldout_0_bits_uop_pdest; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_ldout_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [63:0] loadQueue_io_ldout_0_bits_data; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_0_bits_debug_isMMIO; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_ldout_1_bits_uop_pdest; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_ldout_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire [63:0] loadQueue_io_ldout_1_bits_data; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_ldout_1_bits_debug_isMMIO; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_load_s1_0_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_load_s1_0_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_0_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_load_s1_0_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_load_s1_0_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_0_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_load_s1_0_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_0_valid; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_load_s1_1_paddr; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_load_s1_1_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_1_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_load_s1_1_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_load_s1_1_uop_cf_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_1_uop_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_load_s1_1_uop_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_load_s1_1_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_0_req_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_0_req_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_loadViolationQuery_0_req_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_0_resp_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_0_resp_bits_have_violation; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_1_req_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_1_req_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_loadViolationQuery_1_req_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_1_resp_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_loadViolationQuery_1_resp_bits_have_violation; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_rob_lcommit; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_rob_pendingld; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_rob_commit; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_rollback_valid; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_rollback_bits_robIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [6:0] loadQueue_io_rollback_bits_robIdx_value; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_rollback_bits_ftqIdx_flag; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_rollback_bits_ftqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_rollback_bits_ftqOffset; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_rollback_bits_stFtqIdx_value; // @[LSQWrapper.scala 88:25]
  wire [2:0] loadQueue_io_rollback_bits_stFtqOffset; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_refill_valid; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_refill_bits_addr; // @[LSQWrapper.scala 88:25]
  wire [255:0] loadQueue_io_refill_bits_data; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_release_valid; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_release_bits_paddr; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_uncache_req_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_uncache_req_valid; // @[LSQWrapper.scala 88:25]
  wire [35:0] loadQueue_io_uncache_req_bits_addr; // @[LSQWrapper.scala 88:25]
  wire [63:0] loadQueue_io_uncache_req_bits_data; // @[LSQWrapper.scala 88:25]
  wire [7:0] loadQueue_io_uncache_req_bits_mask; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_uncache_resp_ready; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_uncache_resp_valid; // @[LSQWrapper.scala 88:25]
  wire [63:0] loadQueue_io_uncache_resp_bits_data; // @[LSQWrapper.scala 88:25]
  wire [38:0] loadQueue_io_exceptionAddr_vaddr; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_lqCancelCnt; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 88:25]
  wire  loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_0_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_1_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_2_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_3_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_4_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_5_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_6_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_7_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_8_value; // @[LSQWrapper.scala 88:25]
  wire [5:0] loadQueue_io_perf_9_value; // @[LSQWrapper.scala 88:25]
  wire  storeQueue_clock; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_reset; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_canAccept; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_lqCanAccept; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_0_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_0_bits_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_enq_req_0_bits_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_enq_req_0_bits_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_1_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_1_bits_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_enq_req_1_bits_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_enq_req_1_bits_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_2_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_2_bits_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_enq_req_2_bits_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_enq_req_2_bits_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_3_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_enq_req_3_bits_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_enq_req_3_bits_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_enq_req_3_bits_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_brqRedirect_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_brqRedirect_bits_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_brqRedirect_bits_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_brqRedirect_bits_level; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_0_valid; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_storeIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_storeIn_0_bits_uop_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_storeIn_0_bits_vaddr; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_storeIn_0_bits_paddr; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_storeIn_0_bits_mask; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_0_bits_wlineflag; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_0_bits_miss; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_1_valid; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_storeIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_storeIn_1_bits_uop_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_storeIn_1_bits_vaddr; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_storeIn_1_bits_paddr; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_storeIn_1_bits_mask; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_1_bits_wlineflag; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeIn_1_bits_miss; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeInRe_0_mmio; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeInRe_1_mmio; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeDataIn_0_valid; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_storeDataIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_storeDataIn_0_bits_uop_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire [63:0] storeQueue_io_storeDataIn_0_bits_data; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_storeDataIn_1_valid; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_storeDataIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_storeDataIn_1_bits_uop_sqIdx_value; // @[LSQWrapper.scala 89:26]
  wire [63:0] storeQueue_io_storeDataIn_1_bits_data; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_0_ready; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_0_valid; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_sbuffer_0_bits_addr; // @[LSQWrapper.scala 89:26]
  wire [63:0] storeQueue_io_sbuffer_0_bits_data; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_sbuffer_0_bits_mask; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_sbuffer_0_bits_vaddr; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_0_bits_wline; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_1_ready; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_1_valid; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_sbuffer_1_bits_addr; // @[LSQWrapper.scala 89:26]
  wire [63:0] storeQueue_io_sbuffer_1_bits_data; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_sbuffer_1_bits_mask; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_sbuffer_1_bits_vaddr; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sbuffer_1_bits_wline; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_mmioStout_ready; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_mmioStout_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_mmioStout_bits_uop_robIdx_flag; // @[LSQWrapper.scala 89:26]
  wire [6:0] storeQueue_io_mmioStout_bits_uop_robIdx_value; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_forward_0_vaddr; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_forward_0_paddr; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_0; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_1; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_2; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_3; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_4; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_5; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_6; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_forwardMask_7; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_0; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_1; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_2; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_3; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_4; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_5; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_6; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_0_forwardData_7; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_sqIdx_flag; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_dataInvalid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_matchInvalid; // @[LSQWrapper.scala 89:26]
  wire [31:0] storeQueue_io_forward_0_sqIdxMask; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_0_dataInvalidFast; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_forward_0_dataInvalidSqIdx; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_forward_1_vaddr; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_forward_1_paddr; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_valid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_0; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_1; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_2; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_3; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_4; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_5; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_6; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_forwardMask_7; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_0; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_1; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_2; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_3; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_4; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_5; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_6; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_forward_1_forwardData_7; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_sqIdx_flag; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_dataInvalid; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_matchInvalid; // @[LSQWrapper.scala 89:26]
  wire [31:0] storeQueue_io_forward_1_sqIdxMask; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_forward_1_dataInvalidFast; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_forward_1_dataInvalidSqIdx; // @[LSQWrapper.scala 89:26]
  wire [2:0] storeQueue_io_rob_scommit; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_rob_pendingst; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_uncache_req_ready; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_uncache_req_valid; // @[LSQWrapper.scala 89:26]
  wire [35:0] storeQueue_io_uncache_req_bits_addr; // @[LSQWrapper.scala 89:26]
  wire [63:0] storeQueue_io_uncache_req_bits_data; // @[LSQWrapper.scala 89:26]
  wire [7:0] storeQueue_io_uncache_req_bits_mask; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_uncache_resp_ready; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_uncache_resp_valid; // @[LSQWrapper.scala 89:26]
  wire [38:0] storeQueue_io_exceptionAddr_vaddr; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_sqempty; // @[LSQWrapper.scala 89:26]
  wire  storeQueue_io_issuePtrExt_flag; // @[LSQWrapper.scala 89:26]
  wire [4:0] storeQueue_io_issuePtrExt_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_sqCancelCnt; // @[LSQWrapper.scala 89:26]
  wire [1:0] storeQueue_io_sqDeq; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_0_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_1_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_2_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_3_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_4_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_5_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_6_value; // @[LSQWrapper.scala 89:26]
  wire [5:0] storeQueue_io_perf_7_value; // @[LSQWrapper.scala 89:26]
  reg  io_exceptionAddr_vaddr_REG; // @[LSQWrapper.scala 157:40]
  reg [1:0] pendingstate; // @[LSQWrapper.scala 161:29]
  wire  _T_1 = io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_3 = io_uncache_resp_ready & io_uncache_resp_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_1 = _T_3 ? 2'h0 : pendingstate; // @[LSQWrapper.scala 170:35 171:22 161:29]
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
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_17_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  LoadQueue loadQueue ( // @[LSQWrapper.scala 88:25]
    .clock(loadQueue_clock),
    .reset(loadQueue_reset),
    .io_enq_canAccept(loadQueue_io_enq_canAccept),
    .io_enq_sqCanAccept(loadQueue_io_enq_sqCanAccept),
    .io_enq_req_0_valid(loadQueue_io_enq_req_0_valid),
    .io_enq_req_0_bits_robIdx_flag(loadQueue_io_enq_req_0_bits_robIdx_flag),
    .io_enq_req_0_bits_robIdx_value(loadQueue_io_enq_req_0_bits_robIdx_value),
    .io_enq_req_0_bits_lqIdx_value(loadQueue_io_enq_req_0_bits_lqIdx_value),
    .io_enq_req_1_valid(loadQueue_io_enq_req_1_valid),
    .io_enq_req_1_bits_robIdx_flag(loadQueue_io_enq_req_1_bits_robIdx_flag),
    .io_enq_req_1_bits_robIdx_value(loadQueue_io_enq_req_1_bits_robIdx_value),
    .io_enq_req_1_bits_lqIdx_value(loadQueue_io_enq_req_1_bits_lqIdx_value),
    .io_enq_req_2_valid(loadQueue_io_enq_req_2_valid),
    .io_enq_req_2_bits_robIdx_flag(loadQueue_io_enq_req_2_bits_robIdx_flag),
    .io_enq_req_2_bits_robIdx_value(loadQueue_io_enq_req_2_bits_robIdx_value),
    .io_enq_req_2_bits_lqIdx_value(loadQueue_io_enq_req_2_bits_lqIdx_value),
    .io_enq_req_3_valid(loadQueue_io_enq_req_3_valid),
    .io_enq_req_3_bits_robIdx_flag(loadQueue_io_enq_req_3_bits_robIdx_flag),
    .io_enq_req_3_bits_robIdx_value(loadQueue_io_enq_req_3_bits_robIdx_value),
    .io_enq_req_3_bits_lqIdx_value(loadQueue_io_enq_req_3_bits_lqIdx_value),
    .io_brqRedirect_valid(loadQueue_io_brqRedirect_valid),
    .io_brqRedirect_bits_robIdx_flag(loadQueue_io_brqRedirect_bits_robIdx_flag),
    .io_brqRedirect_bits_robIdx_value(loadQueue_io_brqRedirect_bits_robIdx_value),
    .io_brqRedirect_bits_level(loadQueue_io_brqRedirect_bits_level),
    .io_loadIn_0_valid(loadQueue_io_loadIn_0_valid),
    .io_loadIn_0_bits_uop_cf_exceptionVec_4(loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_4),
    .io_loadIn_0_bits_uop_cf_exceptionVec_5(loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_5),
    .io_loadIn_0_bits_uop_cf_exceptionVec_13(loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_13),
    .io_loadIn_0_bits_uop_cf_trigger_backendEn_1(loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendEn_1),
    .io_loadIn_0_bits_uop_cf_trigger_backendHit_0(loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_0),
    .io_loadIn_0_bits_uop_cf_trigger_backendHit_1(loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_1),
    .io_loadIn_0_bits_uop_cf_trigger_backendHit_4(loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_4),
    .io_loadIn_0_bits_uop_cf_ftqPtr_flag(loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_flag),
    .io_loadIn_0_bits_uop_cf_ftqPtr_value(loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_value),
    .io_loadIn_0_bits_uop_cf_ftqOffset(loadQueue_io_loadIn_0_bits_uop_cf_ftqOffset),
    .io_loadIn_0_bits_uop_ctrl_fuOpType(loadQueue_io_loadIn_0_bits_uop_ctrl_fuOpType),
    .io_loadIn_0_bits_uop_ctrl_rfWen(loadQueue_io_loadIn_0_bits_uop_ctrl_rfWen),
    .io_loadIn_0_bits_uop_ctrl_fpWen(loadQueue_io_loadIn_0_bits_uop_ctrl_fpWen),
    .io_loadIn_0_bits_uop_ctrl_flushPipe(loadQueue_io_loadIn_0_bits_uop_ctrl_flushPipe),
    .io_loadIn_0_bits_uop_ctrl_replayInst(loadQueue_io_loadIn_0_bits_uop_ctrl_replayInst),
    .io_loadIn_0_bits_uop_pdest(loadQueue_io_loadIn_0_bits_uop_pdest),
    .io_loadIn_0_bits_uop_robIdx_flag(loadQueue_io_loadIn_0_bits_uop_robIdx_flag),
    .io_loadIn_0_bits_uop_robIdx_value(loadQueue_io_loadIn_0_bits_uop_robIdx_value),
    .io_loadIn_0_bits_uop_lqIdx_value(loadQueue_io_loadIn_0_bits_uop_lqIdx_value),
    .io_loadIn_0_bits_vaddr(loadQueue_io_loadIn_0_bits_vaddr),
    .io_loadIn_0_bits_paddr(loadQueue_io_loadIn_0_bits_paddr),
    .io_loadIn_0_bits_mask(loadQueue_io_loadIn_0_bits_mask),
    .io_loadIn_0_bits_miss(loadQueue_io_loadIn_0_bits_miss),
    .io_loadIn_0_bits_mmio(loadQueue_io_loadIn_0_bits_mmio),
    .io_loadIn_0_bits_forwardMask_0(loadQueue_io_loadIn_0_bits_forwardMask_0),
    .io_loadIn_0_bits_forwardMask_1(loadQueue_io_loadIn_0_bits_forwardMask_1),
    .io_loadIn_0_bits_forwardMask_2(loadQueue_io_loadIn_0_bits_forwardMask_2),
    .io_loadIn_0_bits_forwardMask_3(loadQueue_io_loadIn_0_bits_forwardMask_3),
    .io_loadIn_0_bits_forwardMask_4(loadQueue_io_loadIn_0_bits_forwardMask_4),
    .io_loadIn_0_bits_forwardMask_5(loadQueue_io_loadIn_0_bits_forwardMask_5),
    .io_loadIn_0_bits_forwardMask_6(loadQueue_io_loadIn_0_bits_forwardMask_6),
    .io_loadIn_0_bits_forwardMask_7(loadQueue_io_loadIn_0_bits_forwardMask_7),
    .io_loadIn_0_bits_forwardData_0(loadQueue_io_loadIn_0_bits_forwardData_0),
    .io_loadIn_0_bits_forwardData_1(loadQueue_io_loadIn_0_bits_forwardData_1),
    .io_loadIn_0_bits_forwardData_2(loadQueue_io_loadIn_0_bits_forwardData_2),
    .io_loadIn_0_bits_forwardData_3(loadQueue_io_loadIn_0_bits_forwardData_3),
    .io_loadIn_0_bits_forwardData_4(loadQueue_io_loadIn_0_bits_forwardData_4),
    .io_loadIn_0_bits_forwardData_5(loadQueue_io_loadIn_0_bits_forwardData_5),
    .io_loadIn_0_bits_forwardData_6(loadQueue_io_loadIn_0_bits_forwardData_6),
    .io_loadIn_0_bits_forwardData_7(loadQueue_io_loadIn_0_bits_forwardData_7),
    .io_loadIn_1_valid(loadQueue_io_loadIn_1_valid),
    .io_loadIn_1_bits_uop_cf_exceptionVec_4(loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_4),
    .io_loadIn_1_bits_uop_cf_exceptionVec_5(loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_5),
    .io_loadIn_1_bits_uop_cf_exceptionVec_13(loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_13),
    .io_loadIn_1_bits_uop_cf_trigger_backendEn_1(loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendEn_1),
    .io_loadIn_1_bits_uop_cf_trigger_backendHit_0(loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_0),
    .io_loadIn_1_bits_uop_cf_trigger_backendHit_1(loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_1),
    .io_loadIn_1_bits_uop_cf_trigger_backendHit_4(loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_4),
    .io_loadIn_1_bits_uop_cf_ftqPtr_flag(loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_flag),
    .io_loadIn_1_bits_uop_cf_ftqPtr_value(loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_value),
    .io_loadIn_1_bits_uop_cf_ftqOffset(loadQueue_io_loadIn_1_bits_uop_cf_ftqOffset),
    .io_loadIn_1_bits_uop_ctrl_fuOpType(loadQueue_io_loadIn_1_bits_uop_ctrl_fuOpType),
    .io_loadIn_1_bits_uop_ctrl_rfWen(loadQueue_io_loadIn_1_bits_uop_ctrl_rfWen),
    .io_loadIn_1_bits_uop_ctrl_fpWen(loadQueue_io_loadIn_1_bits_uop_ctrl_fpWen),
    .io_loadIn_1_bits_uop_ctrl_flushPipe(loadQueue_io_loadIn_1_bits_uop_ctrl_flushPipe),
    .io_loadIn_1_bits_uop_ctrl_replayInst(loadQueue_io_loadIn_1_bits_uop_ctrl_replayInst),
    .io_loadIn_1_bits_uop_pdest(loadQueue_io_loadIn_1_bits_uop_pdest),
    .io_loadIn_1_bits_uop_robIdx_flag(loadQueue_io_loadIn_1_bits_uop_robIdx_flag),
    .io_loadIn_1_bits_uop_robIdx_value(loadQueue_io_loadIn_1_bits_uop_robIdx_value),
    .io_loadIn_1_bits_uop_lqIdx_value(loadQueue_io_loadIn_1_bits_uop_lqIdx_value),
    .io_loadIn_1_bits_vaddr(loadQueue_io_loadIn_1_bits_vaddr),
    .io_loadIn_1_bits_paddr(loadQueue_io_loadIn_1_bits_paddr),
    .io_loadIn_1_bits_mask(loadQueue_io_loadIn_1_bits_mask),
    .io_loadIn_1_bits_miss(loadQueue_io_loadIn_1_bits_miss),
    .io_loadIn_1_bits_mmio(loadQueue_io_loadIn_1_bits_mmio),
    .io_loadIn_1_bits_forwardMask_0(loadQueue_io_loadIn_1_bits_forwardMask_0),
    .io_loadIn_1_bits_forwardMask_1(loadQueue_io_loadIn_1_bits_forwardMask_1),
    .io_loadIn_1_bits_forwardMask_2(loadQueue_io_loadIn_1_bits_forwardMask_2),
    .io_loadIn_1_bits_forwardMask_3(loadQueue_io_loadIn_1_bits_forwardMask_3),
    .io_loadIn_1_bits_forwardMask_4(loadQueue_io_loadIn_1_bits_forwardMask_4),
    .io_loadIn_1_bits_forwardMask_5(loadQueue_io_loadIn_1_bits_forwardMask_5),
    .io_loadIn_1_bits_forwardMask_6(loadQueue_io_loadIn_1_bits_forwardMask_6),
    .io_loadIn_1_bits_forwardMask_7(loadQueue_io_loadIn_1_bits_forwardMask_7),
    .io_loadIn_1_bits_forwardData_0(loadQueue_io_loadIn_1_bits_forwardData_0),
    .io_loadIn_1_bits_forwardData_1(loadQueue_io_loadIn_1_bits_forwardData_1),
    .io_loadIn_1_bits_forwardData_2(loadQueue_io_loadIn_1_bits_forwardData_2),
    .io_loadIn_1_bits_forwardData_3(loadQueue_io_loadIn_1_bits_forwardData_3),
    .io_loadIn_1_bits_forwardData_4(loadQueue_io_loadIn_1_bits_forwardData_4),
    .io_loadIn_1_bits_forwardData_5(loadQueue_io_loadIn_1_bits_forwardData_5),
    .io_loadIn_1_bits_forwardData_6(loadQueue_io_loadIn_1_bits_forwardData_6),
    .io_loadIn_1_bits_forwardData_7(loadQueue_io_loadIn_1_bits_forwardData_7),
    .io_storeIn_0_valid(loadQueue_io_storeIn_0_valid),
    .io_storeIn_0_bits_uop_cf_ftqPtr_value(loadQueue_io_storeIn_0_bits_uop_cf_ftqPtr_value),
    .io_storeIn_0_bits_uop_cf_ftqOffset(loadQueue_io_storeIn_0_bits_uop_cf_ftqOffset),
    .io_storeIn_0_bits_uop_robIdx_flag(loadQueue_io_storeIn_0_bits_uop_robIdx_flag),
    .io_storeIn_0_bits_uop_robIdx_value(loadQueue_io_storeIn_0_bits_uop_robIdx_value),
    .io_storeIn_0_bits_uop_lqIdx_flag(loadQueue_io_storeIn_0_bits_uop_lqIdx_flag),
    .io_storeIn_0_bits_uop_lqIdx_value(loadQueue_io_storeIn_0_bits_uop_lqIdx_value),
    .io_storeIn_0_bits_paddr(loadQueue_io_storeIn_0_bits_paddr),
    .io_storeIn_0_bits_mask(loadQueue_io_storeIn_0_bits_mask),
    .io_storeIn_1_valid(loadQueue_io_storeIn_1_valid),
    .io_storeIn_1_bits_uop_cf_ftqPtr_value(loadQueue_io_storeIn_1_bits_uop_cf_ftqPtr_value),
    .io_storeIn_1_bits_uop_cf_ftqOffset(loadQueue_io_storeIn_1_bits_uop_cf_ftqOffset),
    .io_storeIn_1_bits_uop_robIdx_flag(loadQueue_io_storeIn_1_bits_uop_robIdx_flag),
    .io_storeIn_1_bits_uop_robIdx_value(loadQueue_io_storeIn_1_bits_uop_robIdx_value),
    .io_storeIn_1_bits_uop_lqIdx_flag(loadQueue_io_storeIn_1_bits_uop_lqIdx_flag),
    .io_storeIn_1_bits_uop_lqIdx_value(loadQueue_io_storeIn_1_bits_uop_lqIdx_value),
    .io_storeIn_1_bits_paddr(loadQueue_io_storeIn_1_bits_paddr),
    .io_storeIn_1_bits_mask(loadQueue_io_storeIn_1_bits_mask),
    .io_loadDataForwarded_0(loadQueue_io_loadDataForwarded_0),
    .io_loadDataForwarded_1(loadQueue_io_loadDataForwarded_1),
    .io_dcacheRequireReplay_0(loadQueue_io_dcacheRequireReplay_0),
    .io_dcacheRequireReplay_1(loadQueue_io_dcacheRequireReplay_1),
    .io_ldout_0_ready(loadQueue_io_ldout_0_ready),
    .io_ldout_0_valid(loadQueue_io_ldout_0_valid),
    .io_ldout_0_bits_uop_cf_exceptionVec_4(loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_4),
    .io_ldout_0_bits_uop_cf_exceptionVec_5(loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_5),
    .io_ldout_0_bits_uop_cf_exceptionVec_13(loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_13),
    .io_ldout_0_bits_uop_cf_trigger_backendEn_1(loadQueue_io_ldout_0_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_0(loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_1(loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_0_bits_uop_cf_trigger_backendHit_4(loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_0_bits_uop_ctrl_rfWen(loadQueue_io_ldout_0_bits_uop_ctrl_rfWen),
    .io_ldout_0_bits_uop_ctrl_fpWen(loadQueue_io_ldout_0_bits_uop_ctrl_fpWen),
    .io_ldout_0_bits_uop_ctrl_flushPipe(loadQueue_io_ldout_0_bits_uop_ctrl_flushPipe),
    .io_ldout_0_bits_uop_ctrl_replayInst(loadQueue_io_ldout_0_bits_uop_ctrl_replayInst),
    .io_ldout_0_bits_uop_pdest(loadQueue_io_ldout_0_bits_uop_pdest),
    .io_ldout_0_bits_uop_robIdx_flag(loadQueue_io_ldout_0_bits_uop_robIdx_flag),
    .io_ldout_0_bits_uop_robIdx_value(loadQueue_io_ldout_0_bits_uop_robIdx_value),
    .io_ldout_0_bits_data(loadQueue_io_ldout_0_bits_data),
    .io_ldout_0_bits_debug_isMMIO(loadQueue_io_ldout_0_bits_debug_isMMIO),
    .io_ldout_1_ready(loadQueue_io_ldout_1_ready),
    .io_ldout_1_valid(loadQueue_io_ldout_1_valid),
    .io_ldout_1_bits_uop_cf_exceptionVec_4(loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_4),
    .io_ldout_1_bits_uop_cf_exceptionVec_5(loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_5),
    .io_ldout_1_bits_uop_cf_exceptionVec_13(loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_13),
    .io_ldout_1_bits_uop_cf_trigger_backendEn_1(loadQueue_io_ldout_1_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_1_bits_uop_cf_trigger_backendHit_0(loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_1_bits_uop_cf_trigger_backendHit_1(loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_1_bits_uop_cf_trigger_backendHit_4(loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_1_bits_uop_ctrl_rfWen(loadQueue_io_ldout_1_bits_uop_ctrl_rfWen),
    .io_ldout_1_bits_uop_ctrl_fpWen(loadQueue_io_ldout_1_bits_uop_ctrl_fpWen),
    .io_ldout_1_bits_uop_ctrl_flushPipe(loadQueue_io_ldout_1_bits_uop_ctrl_flushPipe),
    .io_ldout_1_bits_uop_ctrl_replayInst(loadQueue_io_ldout_1_bits_uop_ctrl_replayInst),
    .io_ldout_1_bits_uop_pdest(loadQueue_io_ldout_1_bits_uop_pdest),
    .io_ldout_1_bits_uop_robIdx_flag(loadQueue_io_ldout_1_bits_uop_robIdx_flag),
    .io_ldout_1_bits_uop_robIdx_value(loadQueue_io_ldout_1_bits_uop_robIdx_value),
    .io_ldout_1_bits_data(loadQueue_io_ldout_1_bits_data),
    .io_ldout_1_bits_debug_isMMIO(loadQueue_io_ldout_1_bits_debug_isMMIO),
    .io_load_s1_0_paddr(loadQueue_io_load_s1_0_paddr),
    .io_load_s1_0_mask(loadQueue_io_load_s1_0_mask),
    .io_load_s1_0_uop_cf_ftqPtr_flag(loadQueue_io_load_s1_0_uop_cf_ftqPtr_flag),
    .io_load_s1_0_uop_cf_ftqPtr_value(loadQueue_io_load_s1_0_uop_cf_ftqPtr_value),
    .io_load_s1_0_uop_cf_ftqOffset(loadQueue_io_load_s1_0_uop_cf_ftqOffset),
    .io_load_s1_0_uop_robIdx_flag(loadQueue_io_load_s1_0_uop_robIdx_flag),
    .io_load_s1_0_uop_robIdx_value(loadQueue_io_load_s1_0_uop_robIdx_value),
    .io_load_s1_0_valid(loadQueue_io_load_s1_0_valid),
    .io_load_s1_1_paddr(loadQueue_io_load_s1_1_paddr),
    .io_load_s1_1_mask(loadQueue_io_load_s1_1_mask),
    .io_load_s1_1_uop_cf_ftqPtr_flag(loadQueue_io_load_s1_1_uop_cf_ftqPtr_flag),
    .io_load_s1_1_uop_cf_ftqPtr_value(loadQueue_io_load_s1_1_uop_cf_ftqPtr_value),
    .io_load_s1_1_uop_cf_ftqOffset(loadQueue_io_load_s1_1_uop_cf_ftqOffset),
    .io_load_s1_1_uop_robIdx_flag(loadQueue_io_load_s1_1_uop_robIdx_flag),
    .io_load_s1_1_uop_robIdx_value(loadQueue_io_load_s1_1_uop_robIdx_value),
    .io_load_s1_1_valid(loadQueue_io_load_s1_1_valid),
    .io_loadViolationQuery_0_req_ready(loadQueue_io_loadViolationQuery_0_req_ready),
    .io_loadViolationQuery_0_req_valid(loadQueue_io_loadViolationQuery_0_req_valid),
    .io_loadViolationQuery_0_req_bits_uop_lqIdx_flag(loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_flag),
    .io_loadViolationQuery_0_req_bits_uop_lqIdx_value(loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_value),
    .io_loadViolationQuery_0_req_bits_paddr(loadQueue_io_loadViolationQuery_0_req_bits_paddr),
    .io_loadViolationQuery_0_resp_valid(loadQueue_io_loadViolationQuery_0_resp_valid),
    .io_loadViolationQuery_0_resp_bits_have_violation(loadQueue_io_loadViolationQuery_0_resp_bits_have_violation),
    .io_loadViolationQuery_1_req_ready(loadQueue_io_loadViolationQuery_1_req_ready),
    .io_loadViolationQuery_1_req_valid(loadQueue_io_loadViolationQuery_1_req_valid),
    .io_loadViolationQuery_1_req_bits_uop_lqIdx_flag(loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_flag),
    .io_loadViolationQuery_1_req_bits_uop_lqIdx_value(loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_value),
    .io_loadViolationQuery_1_req_bits_paddr(loadQueue_io_loadViolationQuery_1_req_bits_paddr),
    .io_loadViolationQuery_1_resp_valid(loadQueue_io_loadViolationQuery_1_resp_valid),
    .io_loadViolationQuery_1_resp_bits_have_violation(loadQueue_io_loadViolationQuery_1_resp_bits_have_violation),
    .io_rob_lcommit(loadQueue_io_rob_lcommit),
    .io_rob_pendingld(loadQueue_io_rob_pendingld),
    .io_rob_commit(loadQueue_io_rob_commit),
    .io_rollback_valid(loadQueue_io_rollback_valid),
    .io_rollback_bits_robIdx_flag(loadQueue_io_rollback_bits_robIdx_flag),
    .io_rollback_bits_robIdx_value(loadQueue_io_rollback_bits_robIdx_value),
    .io_rollback_bits_ftqIdx_flag(loadQueue_io_rollback_bits_ftqIdx_flag),
    .io_rollback_bits_ftqIdx_value(loadQueue_io_rollback_bits_ftqIdx_value),
    .io_rollback_bits_ftqOffset(loadQueue_io_rollback_bits_ftqOffset),
    .io_rollback_bits_stFtqIdx_value(loadQueue_io_rollback_bits_stFtqIdx_value),
    .io_rollback_bits_stFtqOffset(loadQueue_io_rollback_bits_stFtqOffset),
    .io_refill_valid(loadQueue_io_refill_valid),
    .io_refill_bits_addr(loadQueue_io_refill_bits_addr),
    .io_refill_bits_data(loadQueue_io_refill_bits_data),
    .io_release_valid(loadQueue_io_release_valid),
    .io_release_bits_paddr(loadQueue_io_release_bits_paddr),
    .io_uncache_req_ready(loadQueue_io_uncache_req_ready),
    .io_uncache_req_valid(loadQueue_io_uncache_req_valid),
    .io_uncache_req_bits_addr(loadQueue_io_uncache_req_bits_addr),
    .io_uncache_req_bits_data(loadQueue_io_uncache_req_bits_data),
    .io_uncache_req_bits_mask(loadQueue_io_uncache_req_bits_mask),
    .io_uncache_resp_ready(loadQueue_io_uncache_resp_ready),
    .io_uncache_resp_valid(loadQueue_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(loadQueue_io_uncache_resp_bits_data),
    .io_exceptionAddr_vaddr(loadQueue_io_exceptionAddr_vaddr),
    .io_lqCancelCnt(loadQueue_io_lqCancelCnt),
    .io_trigger_0_hitLoadAddrTriggerHitVec_0(loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_0),
    .io_trigger_0_hitLoadAddrTriggerHitVec_1(loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_1),
    .io_trigger_0_hitLoadAddrTriggerHitVec_2(loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_2),
    .io_trigger_0_lqLoadAddrTriggerHitVec_0(loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_0),
    .io_trigger_0_lqLoadAddrTriggerHitVec_1(loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_1),
    .io_trigger_0_lqLoadAddrTriggerHitVec_2(loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_2),
    .io_trigger_1_hitLoadAddrTriggerHitVec_0(loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_0),
    .io_trigger_1_hitLoadAddrTriggerHitVec_1(loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_1),
    .io_trigger_1_hitLoadAddrTriggerHitVec_2(loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_2),
    .io_trigger_1_lqLoadAddrTriggerHitVec_0(loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_0),
    .io_trigger_1_lqLoadAddrTriggerHitVec_1(loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_1),
    .io_trigger_1_lqLoadAddrTriggerHitVec_2(loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_2),
    .io_perf_0_value(loadQueue_io_perf_0_value),
    .io_perf_1_value(loadQueue_io_perf_1_value),
    .io_perf_2_value(loadQueue_io_perf_2_value),
    .io_perf_3_value(loadQueue_io_perf_3_value),
    .io_perf_4_value(loadQueue_io_perf_4_value),
    .io_perf_5_value(loadQueue_io_perf_5_value),
    .io_perf_6_value(loadQueue_io_perf_6_value),
    .io_perf_7_value(loadQueue_io_perf_7_value),
    .io_perf_8_value(loadQueue_io_perf_8_value),
    .io_perf_9_value(loadQueue_io_perf_9_value)
  );
  StoreQueue storeQueue ( // @[LSQWrapper.scala 89:26]
    .clock(storeQueue_clock),
    .reset(storeQueue_reset),
    .io_enq_canAccept(storeQueue_io_enq_canAccept),
    .io_enq_lqCanAccept(storeQueue_io_enq_lqCanAccept),
    .io_enq_req_0_valid(storeQueue_io_enq_req_0_valid),
    .io_enq_req_0_bits_robIdx_flag(storeQueue_io_enq_req_0_bits_robIdx_flag),
    .io_enq_req_0_bits_robIdx_value(storeQueue_io_enq_req_0_bits_robIdx_value),
    .io_enq_req_0_bits_sqIdx_value(storeQueue_io_enq_req_0_bits_sqIdx_value),
    .io_enq_req_1_valid(storeQueue_io_enq_req_1_valid),
    .io_enq_req_1_bits_robIdx_flag(storeQueue_io_enq_req_1_bits_robIdx_flag),
    .io_enq_req_1_bits_robIdx_value(storeQueue_io_enq_req_1_bits_robIdx_value),
    .io_enq_req_1_bits_sqIdx_value(storeQueue_io_enq_req_1_bits_sqIdx_value),
    .io_enq_req_2_valid(storeQueue_io_enq_req_2_valid),
    .io_enq_req_2_bits_robIdx_flag(storeQueue_io_enq_req_2_bits_robIdx_flag),
    .io_enq_req_2_bits_robIdx_value(storeQueue_io_enq_req_2_bits_robIdx_value),
    .io_enq_req_2_bits_sqIdx_value(storeQueue_io_enq_req_2_bits_sqIdx_value),
    .io_enq_req_3_valid(storeQueue_io_enq_req_3_valid),
    .io_enq_req_3_bits_robIdx_flag(storeQueue_io_enq_req_3_bits_robIdx_flag),
    .io_enq_req_3_bits_robIdx_value(storeQueue_io_enq_req_3_bits_robIdx_value),
    .io_enq_req_3_bits_sqIdx_value(storeQueue_io_enq_req_3_bits_sqIdx_value),
    .io_brqRedirect_valid(storeQueue_io_brqRedirect_valid),
    .io_brqRedirect_bits_robIdx_flag(storeQueue_io_brqRedirect_bits_robIdx_flag),
    .io_brqRedirect_bits_robIdx_value(storeQueue_io_brqRedirect_bits_robIdx_value),
    .io_brqRedirect_bits_level(storeQueue_io_brqRedirect_bits_level),
    .io_storeIn_0_valid(storeQueue_io_storeIn_0_valid),
    .io_storeIn_0_bits_uop_ctrl_fuOpType(storeQueue_io_storeIn_0_bits_uop_ctrl_fuOpType),
    .io_storeIn_0_bits_uop_sqIdx_value(storeQueue_io_storeIn_0_bits_uop_sqIdx_value),
    .io_storeIn_0_bits_vaddr(storeQueue_io_storeIn_0_bits_vaddr),
    .io_storeIn_0_bits_paddr(storeQueue_io_storeIn_0_bits_paddr),
    .io_storeIn_0_bits_mask(storeQueue_io_storeIn_0_bits_mask),
    .io_storeIn_0_bits_wlineflag(storeQueue_io_storeIn_0_bits_wlineflag),
    .io_storeIn_0_bits_miss(storeQueue_io_storeIn_0_bits_miss),
    .io_storeIn_1_valid(storeQueue_io_storeIn_1_valid),
    .io_storeIn_1_bits_uop_ctrl_fuOpType(storeQueue_io_storeIn_1_bits_uop_ctrl_fuOpType),
    .io_storeIn_1_bits_uop_sqIdx_value(storeQueue_io_storeIn_1_bits_uop_sqIdx_value),
    .io_storeIn_1_bits_vaddr(storeQueue_io_storeIn_1_bits_vaddr),
    .io_storeIn_1_bits_paddr(storeQueue_io_storeIn_1_bits_paddr),
    .io_storeIn_1_bits_mask(storeQueue_io_storeIn_1_bits_mask),
    .io_storeIn_1_bits_wlineflag(storeQueue_io_storeIn_1_bits_wlineflag),
    .io_storeIn_1_bits_miss(storeQueue_io_storeIn_1_bits_miss),
    .io_storeInRe_0_mmio(storeQueue_io_storeInRe_0_mmio),
    .io_storeInRe_1_mmio(storeQueue_io_storeInRe_1_mmio),
    .io_storeDataIn_0_valid(storeQueue_io_storeDataIn_0_valid),
    .io_storeDataIn_0_bits_uop_ctrl_fuOpType(storeQueue_io_storeDataIn_0_bits_uop_ctrl_fuOpType),
    .io_storeDataIn_0_bits_uop_sqIdx_value(storeQueue_io_storeDataIn_0_bits_uop_sqIdx_value),
    .io_storeDataIn_0_bits_data(storeQueue_io_storeDataIn_0_bits_data),
    .io_storeDataIn_1_valid(storeQueue_io_storeDataIn_1_valid),
    .io_storeDataIn_1_bits_uop_ctrl_fuOpType(storeQueue_io_storeDataIn_1_bits_uop_ctrl_fuOpType),
    .io_storeDataIn_1_bits_uop_sqIdx_value(storeQueue_io_storeDataIn_1_bits_uop_sqIdx_value),
    .io_storeDataIn_1_bits_data(storeQueue_io_storeDataIn_1_bits_data),
    .io_sbuffer_0_ready(storeQueue_io_sbuffer_0_ready),
    .io_sbuffer_0_valid(storeQueue_io_sbuffer_0_valid),
    .io_sbuffer_0_bits_addr(storeQueue_io_sbuffer_0_bits_addr),
    .io_sbuffer_0_bits_data(storeQueue_io_sbuffer_0_bits_data),
    .io_sbuffer_0_bits_mask(storeQueue_io_sbuffer_0_bits_mask),
    .io_sbuffer_0_bits_vaddr(storeQueue_io_sbuffer_0_bits_vaddr),
    .io_sbuffer_0_bits_wline(storeQueue_io_sbuffer_0_bits_wline),
    .io_sbuffer_1_ready(storeQueue_io_sbuffer_1_ready),
    .io_sbuffer_1_valid(storeQueue_io_sbuffer_1_valid),
    .io_sbuffer_1_bits_addr(storeQueue_io_sbuffer_1_bits_addr),
    .io_sbuffer_1_bits_data(storeQueue_io_sbuffer_1_bits_data),
    .io_sbuffer_1_bits_mask(storeQueue_io_sbuffer_1_bits_mask),
    .io_sbuffer_1_bits_vaddr(storeQueue_io_sbuffer_1_bits_vaddr),
    .io_sbuffer_1_bits_wline(storeQueue_io_sbuffer_1_bits_wline),
    .io_mmioStout_ready(storeQueue_io_mmioStout_ready),
    .io_mmioStout_valid(storeQueue_io_mmioStout_valid),
    .io_mmioStout_bits_uop_robIdx_flag(storeQueue_io_mmioStout_bits_uop_robIdx_flag),
    .io_mmioStout_bits_uop_robIdx_value(storeQueue_io_mmioStout_bits_uop_robIdx_value),
    .io_forward_0_vaddr(storeQueue_io_forward_0_vaddr),
    .io_forward_0_paddr(storeQueue_io_forward_0_paddr),
    .io_forward_0_valid(storeQueue_io_forward_0_valid),
    .io_forward_0_forwardMask_0(storeQueue_io_forward_0_forwardMask_0),
    .io_forward_0_forwardMask_1(storeQueue_io_forward_0_forwardMask_1),
    .io_forward_0_forwardMask_2(storeQueue_io_forward_0_forwardMask_2),
    .io_forward_0_forwardMask_3(storeQueue_io_forward_0_forwardMask_3),
    .io_forward_0_forwardMask_4(storeQueue_io_forward_0_forwardMask_4),
    .io_forward_0_forwardMask_5(storeQueue_io_forward_0_forwardMask_5),
    .io_forward_0_forwardMask_6(storeQueue_io_forward_0_forwardMask_6),
    .io_forward_0_forwardMask_7(storeQueue_io_forward_0_forwardMask_7),
    .io_forward_0_forwardData_0(storeQueue_io_forward_0_forwardData_0),
    .io_forward_0_forwardData_1(storeQueue_io_forward_0_forwardData_1),
    .io_forward_0_forwardData_2(storeQueue_io_forward_0_forwardData_2),
    .io_forward_0_forwardData_3(storeQueue_io_forward_0_forwardData_3),
    .io_forward_0_forwardData_4(storeQueue_io_forward_0_forwardData_4),
    .io_forward_0_forwardData_5(storeQueue_io_forward_0_forwardData_5),
    .io_forward_0_forwardData_6(storeQueue_io_forward_0_forwardData_6),
    .io_forward_0_forwardData_7(storeQueue_io_forward_0_forwardData_7),
    .io_forward_0_sqIdx_flag(storeQueue_io_forward_0_sqIdx_flag),
    .io_forward_0_dataInvalid(storeQueue_io_forward_0_dataInvalid),
    .io_forward_0_matchInvalid(storeQueue_io_forward_0_matchInvalid),
    .io_forward_0_sqIdxMask(storeQueue_io_forward_0_sqIdxMask),
    .io_forward_0_dataInvalidFast(storeQueue_io_forward_0_dataInvalidFast),
    .io_forward_0_dataInvalidSqIdx(storeQueue_io_forward_0_dataInvalidSqIdx),
    .io_forward_1_vaddr(storeQueue_io_forward_1_vaddr),
    .io_forward_1_paddr(storeQueue_io_forward_1_paddr),
    .io_forward_1_valid(storeQueue_io_forward_1_valid),
    .io_forward_1_forwardMask_0(storeQueue_io_forward_1_forwardMask_0),
    .io_forward_1_forwardMask_1(storeQueue_io_forward_1_forwardMask_1),
    .io_forward_1_forwardMask_2(storeQueue_io_forward_1_forwardMask_2),
    .io_forward_1_forwardMask_3(storeQueue_io_forward_1_forwardMask_3),
    .io_forward_1_forwardMask_4(storeQueue_io_forward_1_forwardMask_4),
    .io_forward_1_forwardMask_5(storeQueue_io_forward_1_forwardMask_5),
    .io_forward_1_forwardMask_6(storeQueue_io_forward_1_forwardMask_6),
    .io_forward_1_forwardMask_7(storeQueue_io_forward_1_forwardMask_7),
    .io_forward_1_forwardData_0(storeQueue_io_forward_1_forwardData_0),
    .io_forward_1_forwardData_1(storeQueue_io_forward_1_forwardData_1),
    .io_forward_1_forwardData_2(storeQueue_io_forward_1_forwardData_2),
    .io_forward_1_forwardData_3(storeQueue_io_forward_1_forwardData_3),
    .io_forward_1_forwardData_4(storeQueue_io_forward_1_forwardData_4),
    .io_forward_1_forwardData_5(storeQueue_io_forward_1_forwardData_5),
    .io_forward_1_forwardData_6(storeQueue_io_forward_1_forwardData_6),
    .io_forward_1_forwardData_7(storeQueue_io_forward_1_forwardData_7),
    .io_forward_1_sqIdx_flag(storeQueue_io_forward_1_sqIdx_flag),
    .io_forward_1_dataInvalid(storeQueue_io_forward_1_dataInvalid),
    .io_forward_1_matchInvalid(storeQueue_io_forward_1_matchInvalid),
    .io_forward_1_sqIdxMask(storeQueue_io_forward_1_sqIdxMask),
    .io_forward_1_dataInvalidFast(storeQueue_io_forward_1_dataInvalidFast),
    .io_forward_1_dataInvalidSqIdx(storeQueue_io_forward_1_dataInvalidSqIdx),
    .io_rob_scommit(storeQueue_io_rob_scommit),
    .io_rob_pendingst(storeQueue_io_rob_pendingst),
    .io_uncache_req_ready(storeQueue_io_uncache_req_ready),
    .io_uncache_req_valid(storeQueue_io_uncache_req_valid),
    .io_uncache_req_bits_addr(storeQueue_io_uncache_req_bits_addr),
    .io_uncache_req_bits_data(storeQueue_io_uncache_req_bits_data),
    .io_uncache_req_bits_mask(storeQueue_io_uncache_req_bits_mask),
    .io_uncache_resp_ready(storeQueue_io_uncache_resp_ready),
    .io_uncache_resp_valid(storeQueue_io_uncache_resp_valid),
    .io_exceptionAddr_vaddr(storeQueue_io_exceptionAddr_vaddr),
    .io_sqempty(storeQueue_io_sqempty),
    .io_issuePtrExt_flag(storeQueue_io_issuePtrExt_flag),
    .io_issuePtrExt_value(storeQueue_io_issuePtrExt_value),
    .io_sqCancelCnt(storeQueue_io_sqCancelCnt),
    .io_sqDeq(storeQueue_io_sqDeq),
    .io_perf_0_value(storeQueue_io_perf_0_value),
    .io_perf_1_value(storeQueue_io_perf_1_value),
    .io_perf_2_value(storeQueue_io_perf_2_value),
    .io_perf_3_value(storeQueue_io_perf_3_value),
    .io_perf_4_value(storeQueue_io_perf_4_value),
    .io_perf_5_value(storeQueue_io_perf_5_value),
    .io_perf_6_value(storeQueue_io_perf_6_value),
    .io_perf_7_value(storeQueue_io_perf_7_value)
  );
  assign io_sbuffer_0_valid = storeQueue_io_sbuffer_0_valid; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_0_bits_addr = storeQueue_io_sbuffer_0_bits_addr; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_0_bits_data = storeQueue_io_sbuffer_0_bits_data; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_0_bits_mask = storeQueue_io_sbuffer_0_bits_mask; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_0_bits_vaddr = storeQueue_io_sbuffer_0_bits_vaddr; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_0_bits_wline = storeQueue_io_sbuffer_0_bits_wline; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_valid = storeQueue_io_sbuffer_1_valid; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_bits_addr = storeQueue_io_sbuffer_1_bits_addr; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_bits_data = storeQueue_io_sbuffer_1_bits_data; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_bits_mask = storeQueue_io_sbuffer_1_bits_mask; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_bits_vaddr = storeQueue_io_sbuffer_1_bits_vaddr; // @[LSQWrapper.scala 136:25]
  assign io_sbuffer_1_bits_wline = storeQueue_io_sbuffer_1_bits_wline; // @[LSQWrapper.scala 136:25]
  assign io_ldout_0_valid = loadQueue_io_ldout_0_valid; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_exceptionVec_4 = loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_exceptionVec_5 = loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_exceptionVec_13 = loadQueue_io_ldout_0_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_trigger_backendEn_1 = loadQueue_io_ldout_0_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_0 = loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_1 = loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_4 = loadQueue_io_ldout_0_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_ctrl_rfWen = loadQueue_io_ldout_0_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_ctrl_fpWen = loadQueue_io_ldout_0_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_ctrl_flushPipe = loadQueue_io_ldout_0_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_ctrl_replayInst = loadQueue_io_ldout_0_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_pdest = loadQueue_io_ldout_0_bits_uop_pdest; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_robIdx_flag = loadQueue_io_ldout_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_uop_robIdx_value = loadQueue_io_ldout_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_data = loadQueue_io_ldout_0_bits_data; // @[LSQWrapper.scala 121:22]
  assign io_ldout_0_bits_debug_isMMIO = loadQueue_io_ldout_0_bits_debug_isMMIO; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_valid = loadQueue_io_ldout_1_valid; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_exceptionVec_4 = loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_exceptionVec_5 = loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_exceptionVec_13 = loadQueue_io_ldout_1_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_trigger_backendEn_1 = loadQueue_io_ldout_1_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_trigger_backendHit_0 = loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_trigger_backendHit_1 = loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_cf_trigger_backendHit_4 = loadQueue_io_ldout_1_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_ctrl_rfWen = loadQueue_io_ldout_1_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_ctrl_fpWen = loadQueue_io_ldout_1_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_ctrl_flushPipe = loadQueue_io_ldout_1_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_ctrl_replayInst = loadQueue_io_ldout_1_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_pdest = loadQueue_io_ldout_1_bits_uop_pdest; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_robIdx_flag = loadQueue_io_ldout_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_uop_robIdx_value = loadQueue_io_ldout_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_data = loadQueue_io_ldout_1_bits_data; // @[LSQWrapper.scala 121:22]
  assign io_ldout_1_bits_debug_isMMIO = loadQueue_io_ldout_1_bits_debug_isMMIO; // @[LSQWrapper.scala 121:22]
  assign io_mmioStout_valid = storeQueue_io_mmioStout_valid; // @[LSQWrapper.scala 137:27]
  assign io_mmioStout_bits_uop_robIdx_flag = storeQueue_io_mmioStout_bits_uop_robIdx_flag; // @[LSQWrapper.scala 137:27]
  assign io_mmioStout_bits_uop_robIdx_value = storeQueue_io_mmioStout_bits_uop_robIdx_value; // @[LSQWrapper.scala 137:27]
  assign io_forward_0_forwardMask_0 = storeQueue_io_forward_0_forwardMask_0; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_1 = storeQueue_io_forward_0_forwardMask_1; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_2 = storeQueue_io_forward_0_forwardMask_2; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_3 = storeQueue_io_forward_0_forwardMask_3; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_4 = storeQueue_io_forward_0_forwardMask_4; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_5 = storeQueue_io_forward_0_forwardMask_5; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_6 = storeQueue_io_forward_0_forwardMask_6; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardMask_7 = storeQueue_io_forward_0_forwardMask_7; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_0 = storeQueue_io_forward_0_forwardData_0; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_1 = storeQueue_io_forward_0_forwardData_1; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_2 = storeQueue_io_forward_0_forwardData_2; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_3 = storeQueue_io_forward_0_forwardData_3; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_4 = storeQueue_io_forward_0_forwardData_4; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_5 = storeQueue_io_forward_0_forwardData_5; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_6 = storeQueue_io_forward_0_forwardData_6; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_forwardData_7 = storeQueue_io_forward_0_forwardData_7; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_dataInvalid = storeQueue_io_forward_0_dataInvalid; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_matchInvalid = storeQueue_io_forward_0_matchInvalid; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_dataInvalidFast = storeQueue_io_forward_0_dataInvalidFast; // @[LSQWrapper.scala 145:25]
  assign io_forward_0_dataInvalidSqIdx = storeQueue_io_forward_0_dataInvalidSqIdx; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_0 = storeQueue_io_forward_1_forwardMask_0; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_1 = storeQueue_io_forward_1_forwardMask_1; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_2 = storeQueue_io_forward_1_forwardMask_2; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_3 = storeQueue_io_forward_1_forwardMask_3; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_4 = storeQueue_io_forward_1_forwardMask_4; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_5 = storeQueue_io_forward_1_forwardMask_5; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_6 = storeQueue_io_forward_1_forwardMask_6; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardMask_7 = storeQueue_io_forward_1_forwardMask_7; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_0 = storeQueue_io_forward_1_forwardData_0; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_1 = storeQueue_io_forward_1_forwardData_1; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_2 = storeQueue_io_forward_1_forwardData_2; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_3 = storeQueue_io_forward_1_forwardData_3; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_4 = storeQueue_io_forward_1_forwardData_4; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_5 = storeQueue_io_forward_1_forwardData_5; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_6 = storeQueue_io_forward_1_forwardData_6; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_forwardData_7 = storeQueue_io_forward_1_forwardData_7; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_dataInvalid = storeQueue_io_forward_1_dataInvalid; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_matchInvalid = storeQueue_io_forward_1_matchInvalid; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_dataInvalidFast = storeQueue_io_forward_1_dataInvalidFast; // @[LSQWrapper.scala 145:25]
  assign io_forward_1_dataInvalidSqIdx = storeQueue_io_forward_1_dataInvalidSqIdx; // @[LSQWrapper.scala 145:25]
  assign io_loadViolationQuery_0_req_ready = loadQueue_io_loadViolationQuery_0_req_ready; // @[LSQWrapper.scala 147:35]
  assign io_loadViolationQuery_0_resp_valid = loadQueue_io_loadViolationQuery_0_resp_valid; // @[LSQWrapper.scala 147:35]
  assign io_loadViolationQuery_0_resp_bits_have_violation = loadQueue_io_loadViolationQuery_0_resp_bits_have_violation; // @[LSQWrapper.scala 147:35]
  assign io_loadViolationQuery_1_req_ready = loadQueue_io_loadViolationQuery_1_req_ready; // @[LSQWrapper.scala 147:35]
  assign io_loadViolationQuery_1_resp_valid = loadQueue_io_loadViolationQuery_1_resp_valid; // @[LSQWrapper.scala 147:35]
  assign io_loadViolationQuery_1_resp_bits_have_violation = loadQueue_io_loadViolationQuery_1_resp_bits_have_violation; // @[LSQWrapper.scala 147:35]
  assign io_rollback_valid = loadQueue_io_rollback_valid; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_robIdx_flag = loadQueue_io_rollback_bits_robIdx_flag; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_robIdx_value = loadQueue_io_rollback_bits_robIdx_value; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_ftqIdx_flag = loadQueue_io_rollback_bits_ftqIdx_flag; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_ftqIdx_value = loadQueue_io_rollback_bits_ftqIdx_value; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_ftqOffset = loadQueue_io_rollback_bits_ftqOffset; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_stFtqIdx_value = loadQueue_io_rollback_bits_stFtqIdx_value; // @[LSQWrapper.scala 123:25]
  assign io_rollback_bits_stFtqOffset = loadQueue_io_rollback_bits_stFtqOffset; // @[LSQWrapper.scala 123:25]
  assign io_uncache_req_valid = loadQueue_io_uncache_req_valid ? loadQueue_io_uncache_req_valid :
    storeQueue_io_uncache_req_valid; // @[LSQWrapper.scala 185:39 186:20 188:20]
  assign io_uncache_req_bits_cmd = loadQueue_io_uncache_req_valid ? 5'h0 : 5'h1; // @[LSQWrapper.scala 185:39 186:20 188:20]
  assign io_uncache_req_bits_addr = loadQueue_io_uncache_req_valid ? loadQueue_io_uncache_req_bits_addr :
    storeQueue_io_uncache_req_bits_addr; // @[LSQWrapper.scala 185:39 186:20 188:20]
  assign io_uncache_req_bits_data = loadQueue_io_uncache_req_valid ? loadQueue_io_uncache_req_bits_data :
    storeQueue_io_uncache_req_bits_data; // @[LSQWrapper.scala 185:39 186:20 188:20]
  assign io_uncache_req_bits_mask = loadQueue_io_uncache_req_valid ? loadQueue_io_uncache_req_bits_mask :
    storeQueue_io_uncache_req_bits_mask; // @[LSQWrapper.scala 185:39 186:20 188:20]
  assign io_uncache_resp_ready = 1'h1; // @[LSQWrapper.scala 190:32 191:21 193:21]
  assign io_exceptionAddr_vaddr = io_exceptionAddr_vaddr_REG ? storeQueue_io_exceptionAddr_vaddr :
    loadQueue_io_exceptionAddr_vaddr; // @[LSQWrapper.scala 157:32]
  assign io_sqempty = storeQueue_io_sqempty; // @[LSQWrapper.scala 149:25]
  assign io_issuePtrExt_flag = storeQueue_io_issuePtrExt_flag; // @[LSQWrapper.scala 140:29]
  assign io_issuePtrExt_value = storeQueue_io_issuePtrExt_value; // @[LSQWrapper.scala 140:29]
  assign io_lqCancelCnt = loadQueue_io_lqCancelCnt; // @[LSQWrapper.scala 128:28]
  assign io_sqCancelCnt = storeQueue_io_sqCancelCnt; // @[LSQWrapper.scala 141:29]
  assign io_sqDeq = storeQueue_io_sqDeq; // @[LSQWrapper.scala 142:23]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_0 = loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 126:24]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_1 = loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 126:24]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_2 = loadQueue_io_trigger_0_lqLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 126:24]
  assign io_trigger_1_lqLoadAddrTriggerHitVec_0 = loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 126:24]
  assign io_trigger_1_lqLoadAddrTriggerHitVec_1 = loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 126:24]
  assign io_trigger_1_lqLoadAddrTriggerHitVec_2 = loadQueue_io_trigger_1_lqLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 126:24]
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
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_14_value = io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_15_value = io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_16_value = io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_17_value = io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign loadQueue_clock = clock;
  assign loadQueue_reset = reset;
  assign loadQueue_io_enq_sqCanAccept = storeQueue_io_enq_canAccept; // @[LSQWrapper.scala 97:32]
  assign loadQueue_io_enq_req_0_valid = io_enq_needAlloc_0[0] & io_enq_req_0_valid; // @[LSQWrapper.scala 101:66]
  assign loadQueue_io_enq_req_0_bits_robIdx_flag = io_enq_req_0_bits_robIdx_flag; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_0_bits_robIdx_value = io_enq_req_0_bits_robIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_0_bits_lqIdx_value = io_enq_req_0_bits_lqIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_1_valid = io_enq_needAlloc_1[0] & io_enq_req_1_valid; // @[LSQWrapper.scala 101:66]
  assign loadQueue_io_enq_req_1_bits_robIdx_flag = io_enq_req_1_bits_robIdx_flag; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_1_bits_robIdx_value = io_enq_req_1_bits_robIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_1_bits_lqIdx_value = io_enq_req_1_bits_lqIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_2_valid = io_enq_needAlloc_2[0] & io_enq_req_2_valid; // @[LSQWrapper.scala 101:66]
  assign loadQueue_io_enq_req_2_bits_robIdx_flag = io_enq_req_2_bits_robIdx_flag; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_2_bits_robIdx_value = io_enq_req_2_bits_robIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_2_bits_lqIdx_value = io_enq_req_2_bits_lqIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_3_valid = io_enq_needAlloc_3[0] & io_enq_req_3_valid; // @[LSQWrapper.scala 101:66]
  assign loadQueue_io_enq_req_3_bits_robIdx_flag = io_enq_req_3_bits_robIdx_flag; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_3_bits_robIdx_value = io_enq_req_3_bits_robIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_enq_req_3_bits_lqIdx_value = io_enq_req_3_bits_lqIdx_value; // @[LSQWrapper.scala 102:40]
  assign loadQueue_io_brqRedirect_valid = io_brqRedirect_valid; // @[LSQWrapper.scala 116:28]
  assign loadQueue_io_brqRedirect_bits_robIdx_flag = io_brqRedirect_bits_robIdx_flag; // @[LSQWrapper.scala 116:28]
  assign loadQueue_io_brqRedirect_bits_robIdx_value = io_brqRedirect_bits_robIdx_value; // @[LSQWrapper.scala 116:28]
  assign loadQueue_io_brqRedirect_bits_level = io_brqRedirect_bits_level; // @[LSQWrapper.scala 116:28]
  assign loadQueue_io_loadIn_0_valid = io_loadIn_0_valid; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_4 = io_loadIn_0_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_5 = io_loadIn_0_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_exceptionVec_13 = io_loadIn_0_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendEn_1 = io_loadIn_0_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_0 = io_loadIn_0_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_1 = io_loadIn_0_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_trigger_backendHit_4 = io_loadIn_0_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_flag = io_loadIn_0_bits_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_ftqPtr_value = io_loadIn_0_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_cf_ftqOffset = io_loadIn_0_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_ctrl_fuOpType = io_loadIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_ctrl_rfWen = io_loadIn_0_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_ctrl_fpWen = io_loadIn_0_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_ctrl_flushPipe = io_loadIn_0_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_ctrl_replayInst = io_loadIn_0_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_pdest = io_loadIn_0_bits_uop_pdest; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_robIdx_flag = io_loadIn_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_robIdx_value = io_loadIn_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_uop_lqIdx_value = io_loadIn_0_bits_uop_lqIdx_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_vaddr = io_loadIn_0_bits_vaddr; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_paddr = io_loadIn_0_bits_paddr; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_mask = io_loadIn_0_bits_mask; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_miss = io_loadIn_0_bits_miss; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_mmio = io_loadIn_0_bits_mmio; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_0 = io_loadIn_0_bits_forwardMask_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_1 = io_loadIn_0_bits_forwardMask_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_2 = io_loadIn_0_bits_forwardMask_2; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_3 = io_loadIn_0_bits_forwardMask_3; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_4 = io_loadIn_0_bits_forwardMask_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_5 = io_loadIn_0_bits_forwardMask_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_6 = io_loadIn_0_bits_forwardMask_6; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardMask_7 = io_loadIn_0_bits_forwardMask_7; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_0 = io_loadIn_0_bits_forwardData_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_1 = io_loadIn_0_bits_forwardData_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_2 = io_loadIn_0_bits_forwardData_2; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_3 = io_loadIn_0_bits_forwardData_3; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_4 = io_loadIn_0_bits_forwardData_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_5 = io_loadIn_0_bits_forwardData_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_6 = io_loadIn_0_bits_forwardData_6; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_0_bits_forwardData_7 = io_loadIn_0_bits_forwardData_7; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_valid = io_loadIn_1_valid; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_4 = io_loadIn_1_bits_uop_cf_exceptionVec_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_5 = io_loadIn_1_bits_uop_cf_exceptionVec_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_exceptionVec_13 = io_loadIn_1_bits_uop_cf_exceptionVec_13; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendEn_1 = io_loadIn_1_bits_uop_cf_trigger_backendEn_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_0 = io_loadIn_1_bits_uop_cf_trigger_backendHit_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_1 = io_loadIn_1_bits_uop_cf_trigger_backendHit_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_trigger_backendHit_4 = io_loadIn_1_bits_uop_cf_trigger_backendHit_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_flag = io_loadIn_1_bits_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_ftqPtr_value = io_loadIn_1_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_cf_ftqOffset = io_loadIn_1_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_ctrl_fuOpType = io_loadIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_ctrl_rfWen = io_loadIn_1_bits_uop_ctrl_rfWen; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_ctrl_fpWen = io_loadIn_1_bits_uop_ctrl_fpWen; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_ctrl_flushPipe = io_loadIn_1_bits_uop_ctrl_flushPipe; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_ctrl_replayInst = io_loadIn_1_bits_uop_ctrl_replayInst; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_pdest = io_loadIn_1_bits_uop_pdest; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_robIdx_flag = io_loadIn_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_robIdx_value = io_loadIn_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_uop_lqIdx_value = io_loadIn_1_bits_uop_lqIdx_value; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_vaddr = io_loadIn_1_bits_vaddr; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_paddr = io_loadIn_1_bits_paddr; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_mask = io_loadIn_1_bits_mask; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_miss = io_loadIn_1_bits_miss; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_mmio = io_loadIn_1_bits_mmio; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_0 = io_loadIn_1_bits_forwardMask_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_1 = io_loadIn_1_bits_forwardMask_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_2 = io_loadIn_1_bits_forwardMask_2; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_3 = io_loadIn_1_bits_forwardMask_3; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_4 = io_loadIn_1_bits_forwardMask_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_5 = io_loadIn_1_bits_forwardMask_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_6 = io_loadIn_1_bits_forwardMask_6; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardMask_7 = io_loadIn_1_bits_forwardMask_7; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_0 = io_loadIn_1_bits_forwardData_0; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_1 = io_loadIn_1_bits_forwardData_1; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_2 = io_loadIn_1_bits_forwardData_2; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_3 = io_loadIn_1_bits_forwardData_3; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_4 = io_loadIn_1_bits_forwardData_4; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_5 = io_loadIn_1_bits_forwardData_5; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_6 = io_loadIn_1_bits_forwardData_6; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_loadIn_1_bits_forwardData_7 = io_loadIn_1_bits_forwardData_7; // @[LSQWrapper.scala 117:23]
  assign loadQueue_io_storeIn_0_valid = io_storeIn_0_valid; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_cf_ftqPtr_value = io_storeIn_0_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_cf_ftqOffset = io_storeIn_0_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_robIdx_flag = io_storeIn_0_bits_uop_robIdx_flag; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_robIdx_value = io_storeIn_0_bits_uop_robIdx_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_lqIdx_flag = io_storeIn_0_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_uop_lqIdx_value = io_storeIn_0_bits_uop_lqIdx_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_paddr = io_storeIn_0_bits_paddr; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_0_bits_mask = io_storeIn_0_bits_mask; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_valid = io_storeIn_1_valid; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_cf_ftqPtr_value = io_storeIn_1_bits_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_cf_ftqOffset = io_storeIn_1_bits_uop_cf_ftqOffset; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_robIdx_flag = io_storeIn_1_bits_uop_robIdx_flag; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_robIdx_value = io_storeIn_1_bits_uop_robIdx_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_lqIdx_flag = io_storeIn_1_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_uop_lqIdx_value = io_storeIn_1_bits_uop_lqIdx_value; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_paddr = io_storeIn_1_bits_paddr; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_storeIn_1_bits_mask = io_storeIn_1_bits_mask; // @[LSQWrapper.scala 118:24]
  assign loadQueue_io_loadDataForwarded_0 = io_loadDataForwarded_0; // @[LSQWrapper.scala 119:34]
  assign loadQueue_io_loadDataForwarded_1 = io_loadDataForwarded_1; // @[LSQWrapper.scala 119:34]
  assign loadQueue_io_dcacheRequireReplay_0 = io_dcacheRequireReplay_0; // @[LSQWrapper.scala 120:36]
  assign loadQueue_io_dcacheRequireReplay_1 = io_dcacheRequireReplay_1; // @[LSQWrapper.scala 120:36]
  assign loadQueue_io_ldout_0_ready = io_ldout_0_ready; // @[LSQWrapper.scala 121:22]
  assign loadQueue_io_ldout_1_ready = io_ldout_1_ready; // @[LSQWrapper.scala 121:22]
  assign loadQueue_io_load_s1_0_paddr = io_forward_0_paddr; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_mask = io_forward_0_mask; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_uop_cf_ftqPtr_flag = io_forward_0_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_uop_cf_ftqPtr_value = io_forward_0_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_uop_cf_ftqOffset = io_forward_0_uop_cf_ftqOffset; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_uop_robIdx_flag = io_forward_0_uop_robIdx_flag; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_uop_robIdx_value = io_forward_0_uop_robIdx_value; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_0_valid = io_forward_0_valid; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_paddr = io_forward_1_paddr; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_mask = io_forward_1_mask; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_uop_cf_ftqPtr_flag = io_forward_1_uop_cf_ftqPtr_flag; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_uop_cf_ftqPtr_value = io_forward_1_uop_cf_ftqPtr_value; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_uop_cf_ftqOffset = io_forward_1_uop_cf_ftqOffset; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_uop_robIdx_flag = io_forward_1_uop_robIdx_flag; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_uop_robIdx_value = io_forward_1_uop_robIdx_value; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_load_s1_1_valid = io_forward_1_valid; // @[LSQWrapper.scala 144:24]
  assign loadQueue_io_loadViolationQuery_0_req_valid = io_loadViolationQuery_0_req_valid; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_flag = io_loadViolationQuery_0_req_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_0_req_bits_uop_lqIdx_value = io_loadViolationQuery_0_req_bits_uop_lqIdx_value; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_0_req_bits_paddr = io_loadViolationQuery_0_req_bits_paddr; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_1_req_valid = io_loadViolationQuery_1_req_valid; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_flag = io_loadViolationQuery_1_req_bits_uop_lqIdx_flag; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_1_req_bits_uop_lqIdx_value = io_loadViolationQuery_1_req_bits_uop_lqIdx_value; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_loadViolationQuery_1_req_bits_paddr = io_loadViolationQuery_1_req_bits_paddr; // @[LSQWrapper.scala 147:35]
  assign loadQueue_io_rob_lcommit = io_rob_lcommit; // @[LSQWrapper.scala 122:20]
  assign loadQueue_io_rob_pendingld = io_rob_pendingld; // @[LSQWrapper.scala 122:20]
  assign loadQueue_io_rob_commit = io_rob_commit; // @[LSQWrapper.scala 122:20]
  assign loadQueue_io_refill_valid = io_refill_valid; // @[LSQWrapper.scala 124:23]
  assign loadQueue_io_refill_bits_addr = io_refill_bits_addr; // @[LSQWrapper.scala 124:23]
  assign loadQueue_io_refill_bits_data = io_refill_bits_data; // @[LSQWrapper.scala 124:23]
  assign loadQueue_io_release_valid = io_release_valid; // @[LSQWrapper.scala 125:24]
  assign loadQueue_io_release_bits_paddr = io_release_bits_paddr; // @[LSQWrapper.scala 125:24]
  assign loadQueue_io_uncache_req_ready = io_uncache_req_ready; // @[LSQWrapper.scala 185:39 186:20]
  assign loadQueue_io_uncache_resp_valid = pendingstate == 2'h1 & io_uncache_resp_valid; // @[LSQWrapper.scala 190:32 191:21 183:35]
  assign loadQueue_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[LSQWrapper.scala 190:32 191:21]
  assign loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_0 = io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 126:24]
  assign loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_1 = io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 126:24]
  assign loadQueue_io_trigger_0_hitLoadAddrTriggerHitVec_2 = io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 126:24]
  assign loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_0 = io_trigger_1_hitLoadAddrTriggerHitVec_0; // @[LSQWrapper.scala 126:24]
  assign loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_1 = io_trigger_1_hitLoadAddrTriggerHitVec_1; // @[LSQWrapper.scala 126:24]
  assign loadQueue_io_trigger_1_hitLoadAddrTriggerHitVec_2 = io_trigger_1_hitLoadAddrTriggerHitVec_2; // @[LSQWrapper.scala 126:24]
  assign storeQueue_clock = clock;
  assign storeQueue_reset = reset;
  assign storeQueue_io_enq_lqCanAccept = loadQueue_io_enq_canAccept; // @[LSQWrapper.scala 98:33]
  assign storeQueue_io_enq_req_0_valid = io_enq_needAlloc_0[1] & io_enq_req_0_valid; // @[LSQWrapper.scala 106:67]
  assign storeQueue_io_enq_req_0_bits_robIdx_flag = io_enq_req_0_bits_robIdx_flag; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_0_bits_robIdx_value = io_enq_req_0_bits_robIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_0_bits_sqIdx_value = io_enq_req_0_bits_sqIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_1_valid = io_enq_needAlloc_1[1] & io_enq_req_1_valid; // @[LSQWrapper.scala 106:67]
  assign storeQueue_io_enq_req_1_bits_robIdx_flag = io_enq_req_1_bits_robIdx_flag; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_1_bits_robIdx_value = io_enq_req_1_bits_robIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_1_bits_sqIdx_value = io_enq_req_1_bits_sqIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_2_valid = io_enq_needAlloc_2[1] & io_enq_req_2_valid; // @[LSQWrapper.scala 106:67]
  assign storeQueue_io_enq_req_2_bits_robIdx_flag = io_enq_req_2_bits_robIdx_flag; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_2_bits_robIdx_value = io_enq_req_2_bits_robIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_2_bits_sqIdx_value = io_enq_req_2_bits_sqIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_3_valid = io_enq_needAlloc_3[1] & io_enq_req_3_valid; // @[LSQWrapper.scala 106:67]
  assign storeQueue_io_enq_req_3_bits_robIdx_flag = io_enq_req_3_bits_robIdx_flag; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_3_bits_robIdx_value = io_enq_req_3_bits_robIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_enq_req_3_bits_sqIdx_value = io_enq_req_3_bits_sqIdx_value; // @[LSQWrapper.scala 108:41]
  assign storeQueue_io_brqRedirect_valid = io_brqRedirect_valid; // @[LSQWrapper.scala 132:29]
  assign storeQueue_io_brqRedirect_bits_robIdx_flag = io_brqRedirect_bits_robIdx_flag; // @[LSQWrapper.scala 132:29]
  assign storeQueue_io_brqRedirect_bits_robIdx_value = io_brqRedirect_bits_robIdx_value; // @[LSQWrapper.scala 132:29]
  assign storeQueue_io_brqRedirect_bits_level = io_brqRedirect_bits_level; // @[LSQWrapper.scala 132:29]
  assign storeQueue_io_storeIn_0_valid = io_storeIn_0_valid; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_uop_ctrl_fuOpType = io_storeIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_uop_sqIdx_value = io_storeIn_0_bits_uop_sqIdx_value; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_vaddr = io_storeIn_0_bits_vaddr; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_paddr = io_storeIn_0_bits_paddr; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_mask = io_storeIn_0_bits_mask; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_wlineflag = io_storeIn_0_bits_wlineflag; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_0_bits_miss = io_storeIn_0_bits_miss; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_valid = io_storeIn_1_valid; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_uop_ctrl_fuOpType = io_storeIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_uop_sqIdx_value = io_storeIn_1_bits_uop_sqIdx_value; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_vaddr = io_storeIn_1_bits_vaddr; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_paddr = io_storeIn_1_bits_paddr; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_mask = io_storeIn_1_bits_mask; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_wlineflag = io_storeIn_1_bits_wlineflag; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeIn_1_bits_miss = io_storeIn_1_bits_miss; // @[LSQWrapper.scala 133:25]
  assign storeQueue_io_storeInRe_0_mmio = io_storeInRe_0_mmio; // @[LSQWrapper.scala 134:27]
  assign storeQueue_io_storeInRe_1_mmio = io_storeInRe_1_mmio; // @[LSQWrapper.scala 134:27]
  assign storeQueue_io_storeDataIn_0_valid = io_storeDataIn_0_valid; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_0_bits_uop_ctrl_fuOpType = io_storeDataIn_0_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_0_bits_uop_sqIdx_value = io_storeDataIn_0_bits_uop_sqIdx_value; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_0_bits_data = io_storeDataIn_0_bits_data; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_1_valid = io_storeDataIn_1_valid; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_1_bits_uop_ctrl_fuOpType = io_storeDataIn_1_bits_uop_ctrl_fuOpType; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_1_bits_uop_sqIdx_value = io_storeDataIn_1_bits_uop_sqIdx_value; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_storeDataIn_1_bits_data = io_storeDataIn_1_bits_data; // @[LSQWrapper.scala 135:29]
  assign storeQueue_io_sbuffer_0_ready = io_sbuffer_0_ready; // @[LSQWrapper.scala 136:25]
  assign storeQueue_io_sbuffer_1_ready = io_sbuffer_1_ready; // @[LSQWrapper.scala 136:25]
  assign storeQueue_io_mmioStout_ready = io_mmioStout_ready; // @[LSQWrapper.scala 137:27]
  assign storeQueue_io_forward_0_vaddr = io_forward_0_vaddr; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_0_paddr = io_forward_0_paddr; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_0_valid = io_forward_0_valid; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_0_sqIdx_flag = io_forward_0_sqIdx_flag; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_0_sqIdxMask = io_forward_0_sqIdxMask; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_1_vaddr = io_forward_1_vaddr; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_1_paddr = io_forward_1_paddr; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_1_valid = io_forward_1_valid; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_1_sqIdx_flag = io_forward_1_sqIdx_flag; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_forward_1_sqIdxMask = io_forward_1_sqIdxMask; // @[LSQWrapper.scala 145:25]
  assign storeQueue_io_rob_scommit = io_rob_scommit; // @[LSQWrapper.scala 138:21]
  assign storeQueue_io_rob_pendingst = io_rob_pendingst; // @[LSQWrapper.scala 138:21]
  assign storeQueue_io_uncache_req_ready = io_uncache_req_ready; // @[LSQWrapper.scala 185:39 188:20]
  assign storeQueue_io_uncache_resp_valid = pendingstate == 2'h1 ? 1'h0 : io_uncache_resp_valid; // @[LSQWrapper.scala 190:32 184:36 193:21]
  always @(posedge clock) begin
    io_exceptionAddr_vaddr_REG <= io_exceptionAddr_isStore; // @[LSQWrapper.scala 157:40]
    if (reset) begin // @[LSQWrapper.scala 161:29]
      pendingstate <= 2'h0; // @[LSQWrapper.scala 161:29]
    end else if (2'h0 == pendingstate) begin // @[LSQWrapper.scala 163:23]
      if (_T_1) begin // @[LSQWrapper.scala 165:34]
        if (loadQueue_io_uncache_req_valid) begin // @[LSQWrapper.scala 166:28]
          pendingstate <= 2'h1;
        end else begin
          pendingstate <= 2'h2;
        end
      end
    end else if (2'h1 == pendingstate) begin // @[LSQWrapper.scala 163:23]
      pendingstate <= _GEN_1;
    end else if (2'h2 == pendingstate) begin // @[LSQWrapper.scala 163:23]
      pendingstate <= _GEN_1;
    end
    io_perf_0_value_REG <= loadQueue_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= loadQueue_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= loadQueue_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= loadQueue_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= loadQueue_io_perf_4_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= loadQueue_io_perf_5_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= loadQueue_io_perf_6_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= loadQueue_io_perf_7_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= loadQueue_io_perf_8_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= loadQueue_io_perf_9_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= storeQueue_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= storeQueue_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_12_value_REG <= storeQueue_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_13_value_REG <= storeQueue_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_14_value_REG <= storeQueue_io_perf_4_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_15_value_REG <= storeQueue_io_perf_5_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_16_value_REG <= storeQueue_io_perf_6_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_17_value_REG <= storeQueue_io_perf_7_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  io_exceptionAddr_vaddr_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  pendingstate = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_37[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
