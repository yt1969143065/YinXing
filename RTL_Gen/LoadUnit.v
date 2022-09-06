module LoadUnit(
  input         clock,
  input         reset,
  output        io_ldin_ready,
  input         io_ldin_valid,
  input         io_ldin_bits_uop_cf_trigger_backendEn_0,
  input         io_ldin_bits_uop_cf_trigger_backendEn_1,
  input         io_ldin_bits_uop_cf_trigger_backendHit_0,
  input         io_ldin_bits_uop_cf_trigger_backendHit_1,
  input         io_ldin_bits_uop_cf_trigger_backendHit_2,
  input         io_ldin_bits_uop_cf_trigger_backendHit_3,
  input         io_ldin_bits_uop_cf_trigger_backendHit_4,
  input         io_ldin_bits_uop_cf_trigger_backendHit_5,
  input         io_ldin_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_ldin_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_ldin_bits_uop_cf_ftqOffset,
  input  [6:0]  io_ldin_bits_uop_ctrl_fuOpType,
  input         io_ldin_bits_uop_ctrl_rfWen,
  input         io_ldin_bits_uop_ctrl_fpWen,
  input  [19:0] io_ldin_bits_uop_ctrl_imm,
  input  [6:0]  io_ldin_bits_uop_pdest,
  input         io_ldin_bits_uop_robIdx_flag,
  input  [6:0]  io_ldin_bits_uop_robIdx_value,
  input         io_ldin_bits_uop_lqIdx_flag,
  input  [5:0]  io_ldin_bits_uop_lqIdx_value,
  input         io_ldin_bits_uop_sqIdx_flag,
  input  [4:0]  io_ldin_bits_uop_sqIdx_value,
  input  [63:0] io_ldin_bits_src_0,
  output        io_ldout_valid,
  output        io_ldout_bits_uop_cf_exceptionVec_4,
  output        io_ldout_bits_uop_cf_exceptionVec_5,
  output        io_ldout_bits_uop_cf_exceptionVec_13,
  output        io_ldout_bits_uop_cf_trigger_backendEn_1,
  output        io_ldout_bits_uop_cf_trigger_backendHit_0,
  output        io_ldout_bits_uop_cf_trigger_backendHit_1,
  output        io_ldout_bits_uop_cf_trigger_backendHit_4,
  output        io_ldout_bits_uop_ctrl_rfWen,
  output        io_ldout_bits_uop_ctrl_fpWen,
  output        io_ldout_bits_uop_ctrl_flushPipe,
  output        io_ldout_bits_uop_ctrl_replayInst,
  output [6:0]  io_ldout_bits_uop_pdest,
  output        io_ldout_bits_uop_robIdx_flag,
  output [6:0]  io_ldout_bits_uop_robIdx_value,
  output [63:0] io_ldout_bits_data,
  output        io_ldout_bits_debug_isMMIO,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_feedbackSlow_valid,
  output [4:0]  io_feedbackSlow_bits_rsIdx,
  output        io_feedbackSlow_bits_hit,
  output [2:0]  io_feedbackSlow_bits_sourceType,
  output [4:0]  io_feedbackSlow_bits_dataInvalidSqIdx_value,
  output        io_feedbackFast_valid,
  output [4:0]  io_feedbackFast_bits_rsIdx,
  output [2:0]  io_feedbackFast_bits_sourceType,
  input  [4:0]  io_rsIdx,
  input         io_dcache_req_ready,
  output        io_dcache_req_valid,
  output [4:0]  io_dcache_req_bits_cmd,
  output [35:0] io_dcache_req_bits_addr,
  output [1:0]  io_dcache_req_bits_instrtype,
  input  [63:0] io_dcache_resp_bits_data,
  input         io_dcache_resp_bits_miss,
  input         io_dcache_resp_bits_replay,
  input         io_dcache_resp_bits_tag_error,
  input         io_dcache_resp_bits_error,
  output        io_dcache_s1_kill,
  output        io_dcache_s2_kill,
  output [35:0] io_dcache_s1_paddr,
  input  [3:0]  io_dcache_s1_hit_way,
  input         io_dcache_s1_disable_fast_wakeup,
  input         io_dcache_s1_bank_conflict,
  output [38:0] io_sbuffer_vaddr,
  output [35:0] io_sbuffer_paddr,
  output        io_sbuffer_valid,
  input         io_sbuffer_forwardMask_0,
  input         io_sbuffer_forwardMask_1,
  input         io_sbuffer_forwardMask_2,
  input         io_sbuffer_forwardMask_3,
  input         io_sbuffer_forwardMask_4,
  input         io_sbuffer_forwardMask_5,
  input         io_sbuffer_forwardMask_6,
  input         io_sbuffer_forwardMask_7,
  input  [7:0]  io_sbuffer_forwardData_0,
  input  [7:0]  io_sbuffer_forwardData_1,
  input  [7:0]  io_sbuffer_forwardData_2,
  input  [7:0]  io_sbuffer_forwardData_3,
  input  [7:0]  io_sbuffer_forwardData_4,
  input  [7:0]  io_sbuffer_forwardData_5,
  input  [7:0]  io_sbuffer_forwardData_6,
  input  [7:0]  io_sbuffer_forwardData_7,
  input         io_sbuffer_matchInvalid,
  output        io_lsq_loadIn_valid,
  output        io_lsq_loadIn_bits_uop_cf_exceptionVec_4,
  output        io_lsq_loadIn_bits_uop_cf_exceptionVec_5,
  output        io_lsq_loadIn_bits_uop_cf_exceptionVec_13,
  output        io_lsq_loadIn_bits_uop_cf_trigger_backendEn_1,
  output        io_lsq_loadIn_bits_uop_cf_trigger_backendHit_0,
  output        io_lsq_loadIn_bits_uop_cf_trigger_backendHit_1,
  output        io_lsq_loadIn_bits_uop_cf_trigger_backendHit_4,
  output        io_lsq_loadIn_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_lsq_loadIn_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_lsq_loadIn_bits_uop_cf_ftqOffset,
  output [6:0]  io_lsq_loadIn_bits_uop_ctrl_fuOpType,
  output        io_lsq_loadIn_bits_uop_ctrl_rfWen,
  output        io_lsq_loadIn_bits_uop_ctrl_fpWen,
  output        io_lsq_loadIn_bits_uop_ctrl_flushPipe,
  output        io_lsq_loadIn_bits_uop_ctrl_replayInst,
  output [6:0]  io_lsq_loadIn_bits_uop_pdest,
  output        io_lsq_loadIn_bits_uop_robIdx_flag,
  output [6:0]  io_lsq_loadIn_bits_uop_robIdx_value,
  output [5:0]  io_lsq_loadIn_bits_uop_lqIdx_value,
  output [38:0] io_lsq_loadIn_bits_vaddr,
  output [35:0] io_lsq_loadIn_bits_paddr,
  output [7:0]  io_lsq_loadIn_bits_mask,
  output        io_lsq_loadIn_bits_miss,
  output        io_lsq_loadIn_bits_mmio,
  output        io_lsq_loadIn_bits_forwardMask_0,
  output        io_lsq_loadIn_bits_forwardMask_1,
  output        io_lsq_loadIn_bits_forwardMask_2,
  output        io_lsq_loadIn_bits_forwardMask_3,
  output        io_lsq_loadIn_bits_forwardMask_4,
  output        io_lsq_loadIn_bits_forwardMask_5,
  output        io_lsq_loadIn_bits_forwardMask_6,
  output        io_lsq_loadIn_bits_forwardMask_7,
  output [7:0]  io_lsq_loadIn_bits_forwardData_0,
  output [7:0]  io_lsq_loadIn_bits_forwardData_1,
  output [7:0]  io_lsq_loadIn_bits_forwardData_2,
  output [7:0]  io_lsq_loadIn_bits_forwardData_3,
  output [7:0]  io_lsq_loadIn_bits_forwardData_4,
  output [7:0]  io_lsq_loadIn_bits_forwardData_5,
  output [7:0]  io_lsq_loadIn_bits_forwardData_6,
  output [7:0]  io_lsq_loadIn_bits_forwardData_7,
  output        io_lsq_ldout_ready,
  input         io_lsq_ldout_valid,
  input         io_lsq_ldout_bits_uop_cf_exceptionVec_4,
  input         io_lsq_ldout_bits_uop_cf_exceptionVec_5,
  input         io_lsq_ldout_bits_uop_cf_exceptionVec_13,
  input         io_lsq_ldout_bits_uop_cf_trigger_backendEn_1,
  input         io_lsq_ldout_bits_uop_cf_trigger_backendHit_0,
  input         io_lsq_ldout_bits_uop_cf_trigger_backendHit_1,
  input         io_lsq_ldout_bits_uop_cf_trigger_backendHit_4,
  input         io_lsq_ldout_bits_uop_ctrl_rfWen,
  input         io_lsq_ldout_bits_uop_ctrl_fpWen,
  input         io_lsq_ldout_bits_uop_ctrl_flushPipe,
  input         io_lsq_ldout_bits_uop_ctrl_replayInst,
  input  [6:0]  io_lsq_ldout_bits_uop_pdest,
  input         io_lsq_ldout_bits_uop_robIdx_flag,
  input  [6:0]  io_lsq_ldout_bits_uop_robIdx_value,
  input  [63:0] io_lsq_ldout_bits_data,
  input         io_lsq_ldout_bits_debug_isMMIO,
  output        io_lsq_loadDataForwarded,
  output        io_lsq_dcacheRequireReplay,
  output [38:0] io_lsq_forward_vaddr,
  output [35:0] io_lsq_forward_paddr,
  output [7:0]  io_lsq_forward_mask,
  output        io_lsq_forward_uop_cf_ftqPtr_flag,
  output [5:0]  io_lsq_forward_uop_cf_ftqPtr_value,
  output [2:0]  io_lsq_forward_uop_cf_ftqOffset,
  output        io_lsq_forward_uop_robIdx_flag,
  output [6:0]  io_lsq_forward_uop_robIdx_value,
  output        io_lsq_forward_valid,
  input         io_lsq_forward_forwardMask_0,
  input         io_lsq_forward_forwardMask_1,
  input         io_lsq_forward_forwardMask_2,
  input         io_lsq_forward_forwardMask_3,
  input         io_lsq_forward_forwardMask_4,
  input         io_lsq_forward_forwardMask_5,
  input         io_lsq_forward_forwardMask_6,
  input         io_lsq_forward_forwardMask_7,
  input  [7:0]  io_lsq_forward_forwardData_0,
  input  [7:0]  io_lsq_forward_forwardData_1,
  input  [7:0]  io_lsq_forward_forwardData_2,
  input  [7:0]  io_lsq_forward_forwardData_3,
  input  [7:0]  io_lsq_forward_forwardData_4,
  input  [7:0]  io_lsq_forward_forwardData_5,
  input  [7:0]  io_lsq_forward_forwardData_6,
  input  [7:0]  io_lsq_forward_forwardData_7,
  output        io_lsq_forward_sqIdx_flag,
  input         io_lsq_forward_dataInvalid,
  input         io_lsq_forward_matchInvalid,
  output [31:0] io_lsq_forward_sqIdxMask,
  input         io_lsq_forward_dataInvalidFast,
  input  [4:0]  io_lsq_forward_dataInvalidSqIdx,
  input         io_lsq_loadViolationQuery_req_ready,
  output        io_lsq_loadViolationQuery_req_valid,
  output        io_lsq_loadViolationQuery_req_bits_uop_lqIdx_flag,
  output [5:0]  io_lsq_loadViolationQuery_req_bits_uop_lqIdx_value,
  output [35:0] io_lsq_loadViolationQuery_req_bits_paddr,
  input         io_lsq_loadViolationQuery_resp_valid,
  input         io_lsq_loadViolationQuery_resp_bits_have_violation,
  output        io_lsq_trigger_hitLoadAddrTriggerHitVec_0,
  output        io_lsq_trigger_hitLoadAddrTriggerHitVec_1,
  output        io_lsq_trigger_hitLoadAddrTriggerHitVec_2,
  input         io_lsq_trigger_lqLoadAddrTriggerHitVec_0,
  input         io_lsq_trigger_lqLoadAddrTriggerHitVec_1,
  input         io_lsq_trigger_lqLoadAddrTriggerHitVec_2,
  input  [35:0] io_refill_bits_addr,
  output        io_fastUop_valid,
  output        io_fastUop_bits_ctrl_rfWen,
  output [6:0]  io_fastUop_bits_pdest,
  input  [63:0] io_trigger_0_tdata2,
  input  [1:0]  io_trigger_0_matchType,
  input         io_trigger_0_tEnable,
  output        io_trigger_0_addrHit,
  input  [63:0] io_trigger_1_tdata2,
  input  [1:0]  io_trigger_1_matchType,
  input         io_trigger_1_tEnable,
  output        io_trigger_1_addrHit,
  input  [63:0] io_trigger_2_tdata2,
  input  [1:0]  io_trigger_2_matchType,
  input         io_trigger_2_tEnable,
  output        io_trigger_2_addrHit,
  output        io_tlb_req_valid,
  output [38:0] io_tlb_req_bits_vaddr,
  input  [35:0] io_tlb_resp_bits_paddr,
  input         io_tlb_resp_bits_miss,
  input         io_tlb_resp_bits_fast_miss,
  input         io_tlb_resp_bits_excp_pf_ld,
  input         io_tlb_resp_bits_excp_af_ld,
  input         io_tlb_resp_bits_static_pm_valid,
  input         io_tlb_resp_bits_static_pm_bits,
  input         io_pmp_ld,
  input         io_pmp_mmio,
  input         io_csrCtrl_ldld_vio_check_enable,
  input         io_csrCtrl_cache_error_enable,
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
  output [5:0]  io_perf_11_value
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
  reg [63:0] _RAND_8;
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
`endif // RANDOMIZE_REG_INIT
  wire  load_s0_io_in_ready; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_valid; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 532:23]
  wire [5:0] load_s0_io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 532:23]
  wire [2:0] load_s0_io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 532:23]
  wire [19:0] load_s0_io_in_bits_uop_ctrl_imm; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_in_bits_uop_pdest; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 532:23]
  wire [5:0] load_s0_io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 532:23]
  wire [4:0] load_s0_io_in_bits_uop_sqIdx_value; // @[LoadUnit.scala 532:23]
  wire [63:0] load_s0_io_in_bits_src_0; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_ready; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_valid; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 532:23]
  wire [5:0] load_s0_io_out_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 532:23]
  wire [2:0] load_s0_io_out_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_out_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_out_bits_uop_pdest; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_robIdx_flag; // @[LoadUnit.scala 532:23]
  wire [6:0] load_s0_io_out_bits_uop_robIdx_value; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_lqIdx_flag; // @[LoadUnit.scala 532:23]
  wire [5:0] load_s0_io_out_bits_uop_lqIdx_value; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_uop_sqIdx_flag; // @[LoadUnit.scala 532:23]
  wire [4:0] load_s0_io_out_bits_uop_sqIdx_value; // @[LoadUnit.scala 532:23]
  wire [38:0] load_s0_io_out_bits_vaddr; // @[LoadUnit.scala 532:23]
  wire [7:0] load_s0_io_out_bits_mask; // @[LoadUnit.scala 532:23]
  wire [4:0] load_s0_io_out_bits_rsIdx; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_out_bits_isSoftPrefetch; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_dtlbReq_valid; // @[LoadUnit.scala 532:23]
  wire [38:0] load_s0_io_dtlbReq_bits_vaddr; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_dcacheReq_ready; // @[LoadUnit.scala 532:23]
  wire  load_s0_io_dcacheReq_valid; // @[LoadUnit.scala 532:23]
  wire [4:0] load_s0_io_dcacheReq_bits_cmd; // @[LoadUnit.scala 532:23]
  wire [35:0] load_s0_io_dcacheReq_bits_addr; // @[LoadUnit.scala 532:23]
  wire [1:0] load_s0_io_dcacheReq_bits_instrtype; // @[LoadUnit.scala 532:23]
  wire [4:0] load_s0_io_rsIdx; // @[LoadUnit.scala 532:23]
  wire [1:0] load_s0_io_loadFastMatch; // @[LoadUnit.scala 532:23]
  wire  load_s1_clock; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_ready; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_valid; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_exceptionVec_6; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_exceptionVec_7; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_exceptionVec_15; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 533:23]
  wire [2:0] load_s1_io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_in_bits_uop_pdest; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 533:23]
  wire [4:0] load_s1_io_in_bits_uop_sqIdx_value; // @[LoadUnit.scala 533:23]
  wire [38:0] load_s1_io_in_bits_vaddr; // @[LoadUnit.scala 533:23]
  wire [7:0] load_s1_io_in_bits_mask; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_wlineflag; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_mmio; // @[LoadUnit.scala 533:23]
  wire [4:0] load_s1_io_in_bits_rsIdx; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_in_bits_isSoftPrefetch; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_ready; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_valid; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_6; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_7; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_exceptionVec_15; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_out_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 533:23]
  wire [2:0] load_s1_io_out_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_out_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_out_bits_uop_pdest; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_robIdx_flag; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_out_bits_uop_robIdx_value; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_lqIdx_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_out_bits_uop_lqIdx_value; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_uop_sqIdx_flag; // @[LoadUnit.scala 533:23]
  wire [4:0] load_s1_io_out_bits_uop_sqIdx_value; // @[LoadUnit.scala 533:23]
  wire [38:0] load_s1_io_out_bits_vaddr; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_out_bits_paddr; // @[LoadUnit.scala 533:23]
  wire [7:0] load_s1_io_out_bits_mask; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_wlineflag; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_tlbMiss; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_mmio; // @[LoadUnit.scala 533:23]
  wire [4:0] load_s1_io_out_bits_rsIdx; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_out_bits_isSoftPrefetch; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_dtlbResp_bits_paddr; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dtlbResp_bits_miss; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dtlbResp_bits_fast_miss; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dtlbResp_bits_excp_pf_ld; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dtlbResp_bits_excp_af_ld; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_dcachePAddr; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dcacheKill; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_fastUopKill; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_dcacheBankConflict; // @[LoadUnit.scala 533:23]
  wire [38:0] load_s1_io_sbuffer_vaddr; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_sbuffer_paddr; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_sbuffer_valid; // @[LoadUnit.scala 533:23]
  wire [38:0] load_s1_io_lsq_vaddr; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_lsq_paddr; // @[LoadUnit.scala 533:23]
  wire [7:0] load_s1_io_lsq_mask; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_lsq_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_lsq_uop_cf_ftqPtr_value; // @[LoadUnit.scala 533:23]
  wire [2:0] load_s1_io_lsq_uop_cf_ftqOffset; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_lsq_uop_robIdx_flag; // @[LoadUnit.scala 533:23]
  wire [6:0] load_s1_io_lsq_uop_robIdx_value; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_lsq_valid; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_lsq_sqIdx_flag; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_loadViolationQueryReq_ready; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_loadViolationQueryReq_valid; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_flag; // @[LoadUnit.scala 533:23]
  wire [5:0] load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_value; // @[LoadUnit.scala 533:23]
  wire [35:0] load_s1_io_loadViolationQueryReq_bits_paddr; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_rsFeedback_valid; // @[LoadUnit.scala 533:23]
  wire [4:0] load_s1_io_rsFeedback_bits_rsIdx; // @[LoadUnit.scala 533:23]
  wire [2:0] load_s1_io_rsFeedback_bits_sourceType; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 533:23]
  wire  load_s1_io_needLdVioCheckRedo; // @[LoadUnit.scala 533:23]
  wire  load_s2_clock; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_valid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 534:23]
  wire [5:0] load_s2_io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 534:23]
  wire [2:0] load_s2_io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_in_bits_uop_pdest; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 534:23]
  wire [5:0] load_s2_io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 534:23]
  wire [38:0] load_s2_io_in_bits_vaddr; // @[LoadUnit.scala 534:23]
  wire [35:0] load_s2_io_in_bits_paddr; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_in_bits_mask; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_tlbMiss; // @[LoadUnit.scala 534:23]
  wire [4:0] load_s2_io_in_bits_rsIdx; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_in_bits_isSoftPrefetch; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_valid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 534:23]
  wire [5:0] load_s2_io_out_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 534:23]
  wire [2:0] load_s2_io_out_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_out_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_ctrl_flushPipe; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_ctrl_replayInst; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_out_bits_uop_pdest; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_uop_robIdx_flag; // @[LoadUnit.scala 534:23]
  wire [6:0] load_s2_io_out_bits_uop_robIdx_value; // @[LoadUnit.scala 534:23]
  wire [5:0] load_s2_io_out_bits_uop_lqIdx_value; // @[LoadUnit.scala 534:23]
  wire [38:0] load_s2_io_out_bits_vaddr; // @[LoadUnit.scala 534:23]
  wire [35:0] load_s2_io_out_bits_paddr; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_mask; // @[LoadUnit.scala 534:23]
  wire [64:0] load_s2_io_out_bits_data; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_miss; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_mmio; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_0; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_2; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_3; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_5; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_6; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_out_bits_forwardMask_7; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_0; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_1; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_2; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_3; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_4; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_5; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_6; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_out_bits_forwardData_7; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_rsFeedback_valid; // @[LoadUnit.scala 534:23]
  wire [4:0] load_s2_io_rsFeedback_bits_rsIdx; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_rsFeedback_bits_hit; // @[LoadUnit.scala 534:23]
  wire [2:0] load_s2_io_rsFeedback_bits_sourceType; // @[LoadUnit.scala 534:23]
  wire [4:0] load_s2_io_rsFeedback_bits_dataInvalidSqIdx_value; // @[LoadUnit.scala 534:23]
  wire [63:0] load_s2_io_dcacheResp_bits_data; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcacheResp_bits_miss; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcacheResp_bits_replay; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcacheResp_bits_tag_error; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcacheResp_bits_error; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_pmpResp_ld; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_pmpResp_mmio; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_0; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_2; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_3; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_5; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_6; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_forwardMask_7; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_0; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_1; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_2; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_3; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_4; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_5; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_6; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_lsq_forwardData_7; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_dataInvalid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_lsq_matchInvalid; // @[LoadUnit.scala 534:23]
  wire [4:0] load_s2_io_dataInvalidSqIdx; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_0; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_1; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_2; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_3; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_4; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_5; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_6; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_forwardMask_7; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_0; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_1; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_2; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_3; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_4; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_5; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_6; // @[LoadUnit.scala 534:23]
  wire [7:0] load_s2_io_sbuffer_forwardData_7; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sbuffer_matchInvalid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dataForwarded; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcacheRequireReplay; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_dcache_kill; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_loadViolationQueryResp_valid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_loadViolationQueryResp_bits_have_violation; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_csrCtrl_cache_error_enable; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_sentFastUop; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_static_pm_valid; // @[LoadUnit.scala 534:23]
  wire  load_s2_io_static_pm_bits; // @[LoadUnit.scala 534:23]
  wire  pipelineConnect_clock; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_reset; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_io_in_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_io_in_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_in_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_in_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_io_in_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_io_in_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_io_in_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_io_in_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_io_in_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_in_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_out_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_io_out_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_io_out_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_io_out_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_io_out_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_io_isFlush; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_clock; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_reset; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_1_io_in_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_in_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_in_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_1_io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_1_io_in_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_1_io_in_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_1_io_in_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_1_io_in_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_1_io_in_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_in_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_1_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_out_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_1_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_1_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_1_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_1_io_out_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_1_io_out_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_1_io_out_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_1_io_out_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_1_io_isFlush; // @[PipelineConnect.scala 50:33]
  wire [7:0] _flushItself_T_1 = {load_s0_io_out_bits_uop_robIdx_flag,load_s0_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 35:51]
  wire  differentFlag = load_s0_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare = load_s0_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T = differentFlag ^ compare; // @[CircularQueuePtr.scala 87:19]
  wire [7:0] _flushItself_T_5 = {load_s1_io_out_bits_uop_robIdx_flag,load_s1_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushItself_T_7 = _flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself_1 = io_redirect_bits_level & _flushItself_T_7; // @[Rob.scala 35:51]
  wire  differentFlag_1 = load_s1_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare_1 = load_s1_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T_3 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 87:19]
  reg  load_s2_io_static_pm_REG_valid; // @[LoadUnit.scala 560:34]
  reg  load_s2_io_static_pm_REG_bits; // @[LoadUnit.scala 560:34]
  wire  _load_s2_io_sentFastUop_T = load_s1_io_out_ready & load_s1_io_out_valid; // @[Decoupled.scala 50:35]
  reg  load_s2_io_sentFastUop_r; // @[Reg.scala 16:16]
  wire [7:0] _io_feedbackSlow_valid_flushItself_T_1 = {load_s2_io_out_bits_uop_robIdx_flag,
    load_s2_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_feedbackSlow_valid_flushItself_T_3 = _io_feedbackSlow_valid_flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_feedbackSlow_valid_flushItself = io_redirect_bits_level & _io_feedbackSlow_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_feedbackSlow_valid_differentFlag = load_s2_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_feedbackSlow_valid_compare = load_s2_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_feedbackSlow_valid_T = io_feedbackSlow_valid_differentFlag ^ io_feedbackSlow_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_feedbackSlow_valid_T_2 = io_redirect_valid & (io_feedbackSlow_valid_flushItself | _io_feedbackSlow_valid_T); // @[Rob.scala 36:20]
  reg  io_feedbackSlow_valid_REG; // @[LoadUnit.scala 580:35]
  reg [4:0] io_feedbackSlow_bits_REG_rsIdx; // @[LoadUnit.scala 581:34]
  reg [2:0] io_feedbackSlow_bits_REG_sourceType; // @[LoadUnit.scala 581:34]
  reg [4:0] io_feedbackSlow_bits_REG_dataInvalidSqIdx_value; // @[LoadUnit.scala 581:34]
  wire  _s3_replay_for_mshrfull_T = ~load_s2_io_rsFeedback_bits_hit; // @[LoadUnit.scala 582:40]
  reg  s3_replay_for_mshrfull; // @[LoadUnit.scala 582:39]
  reg [35:0] s3_refill_hit_load_paddr_REG; // @[LoadUnit.scala 583:57]
  wire  s3_refill_hit_load_paddr = s3_refill_hit_load_paddr_REG[35:3] == io_refill_bits_addr[35:3]; // @[DCacheWrapper.scala 162:39]
  reg  io_feedbackSlow_bits_hit_REG_hit; // @[LoadUnit.scala 585:38]
  wire  _io_feedbackSlow_bits_hit_T = s3_refill_hit_load_paddr & s3_replay_for_mshrfull; // @[LoadUnit.scala 586:30]
  wire [31:0] _sqIdxMaskReg_T = 32'h1 << load_s0_io_in_bits_uop_sqIdx_value; // @[OneHot.scala 57:35]
  reg [31:0] sqIdxMaskReg; // @[LoadUnit.scala 599:29]
  wire  _io_fastUop_valid_T_1 = ~io_dcache_s1_disable_fast_wakeup; // @[LoadUnit.scala 607:5]
  wire  _io_fastUop_valid_T_2 = |io_dcache_s1_hit_way & _io_fastUop_valid_T_1; // @[LoadUnit.scala 606:48]
  wire  _io_fastUop_valid_T_3 = _io_fastUop_valid_T_2 & load_s1_io_in_valid; // @[LoadUnit.scala 607:39]
  wire  _io_fastUop_valid_T_4 = ~load_s1_io_fastUopKill; // @[LoadUnit.scala 609:5]
  wire  _io_fastUop_valid_T_5 = _io_fastUop_valid_T_3 & _io_fastUop_valid_T_4; // @[LoadUnit.scala 608:25]
  wire  _io_fastUop_valid_T_6 = ~io_lsq_forward_dataInvalidFast; // @[LoadUnit.scala 610:5]
  wire  _io_fastUop_valid_T_7 = _io_fastUop_valid_T_5 & _io_fastUop_valid_T_6; // @[LoadUnit.scala 609:29]
  wire  _io_fastUop_valid_T_8 = ~load_s1_io_needLdVioCheckRedo; // @[LoadUnit.scala 611:5]
  wire  s2_wb_valid = load_s2_io_out_valid & ~load_s2_io_out_bits_miss & ~load_s2_io_out_bits_mmio; // @[LoadUnit.scala 628:71]
  wire  hitLoadOut_bits_uop_cf_exceptionVec_4 = load_s2_io_out_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_exceptionVec_5 = load_s2_io_out_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_exceptionVec_13 = load_s2_io_out_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_trigger_backendEn_1 = load_s2_io_out_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_trigger_backendHit_0 = load_s2_io_out_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_trigger_backendHit_1 = load_s2_io_out_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_cf_trigger_backendHit_4 = load_s2_io_out_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_ctrl_rfWen = load_s2_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_ctrl_fpWen = load_s2_io_out_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_ctrl_flushPipe = load_s2_io_out_bits_uop_ctrl_flushPipe; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_ctrl_replayInst = load_s2_io_out_bits_uop_ctrl_replayInst; // @[LoadUnit.scala 631:24 633:23]
  wire [6:0] hitLoadOut_bits_uop_pdest = load_s2_io_out_bits_uop_pdest; // @[LoadUnit.scala 631:24 633:23]
  wire  hitLoadOut_bits_uop_robIdx_flag = load_s2_io_out_bits_uop_robIdx_flag; // @[LoadUnit.scala 631:24 633:23]
  wire [6:0] hitLoadOut_bits_uop_robIdx_value = load_s2_io_out_bits_uop_robIdx_value; // @[LoadUnit.scala 631:24 633:23]
  wire [63:0] hitLoadOut_bits_data = load_s2_io_out_bits_data[63:0]; // @[LoadUnit.scala 631:24 634:24]
  wire  hitLoadOut_bits_debug_isMMIO = load_s2_io_out_bits_mmio; // @[LoadUnit.scala 631:24 637:32]
  wire [63:0] _GEN_2 = {{25'd0}, load_s2_io_out_bits_vaddr}; // @[Trigger.scala 28:24]
  wire  hitLoadAddrTriggerHitVec_0_equal = _GEN_2 == io_trigger_0_tdata2; // @[Trigger.scala 28:24]
  wire  hitLoadAddrTriggerHitVec_0_greater = _GEN_2 >= io_trigger_0_tdata2; // @[Trigger.scala 29:26]
  wire  hitLoadAddrTriggerHitVec_0_less = _GEN_2 <= io_trigger_0_tdata2; // @[Trigger.scala 30:23]
  wire  _hitLoadAddrTriggerHitVec_0_res_T_3 = 2'h2 == io_trigger_0_matchType ? hitLoadAddrTriggerHitVec_0_greater : 2'h0
     == io_trigger_0_matchType & hitLoadAddrTriggerHitVec_0_equal; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_0_res = 2'h3 == io_trigger_0_matchType ? hitLoadAddrTriggerHitVec_0_less :
    _hitLoadAddrTriggerHitVec_0_res_T_3; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_0 = hitLoadAddrTriggerHitVec_0_res & io_trigger_0_tEnable; // @[Trigger.scala 35:9]
  wire  hitLoadAddrTriggerHitVec_1_equal = _GEN_2 == io_trigger_1_tdata2; // @[Trigger.scala 28:24]
  wire  hitLoadAddrTriggerHitVec_1_greater = _GEN_2 >= io_trigger_1_tdata2; // @[Trigger.scala 29:26]
  wire  hitLoadAddrTriggerHitVec_1_less = _GEN_2 <= io_trigger_1_tdata2; // @[Trigger.scala 30:23]
  wire  _hitLoadAddrTriggerHitVec_1_res_T_3 = 2'h2 == io_trigger_1_matchType ? hitLoadAddrTriggerHitVec_1_greater : 2'h0
     == io_trigger_1_matchType & hitLoadAddrTriggerHitVec_1_equal; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_1_res = 2'h3 == io_trigger_1_matchType ? hitLoadAddrTriggerHitVec_1_less :
    _hitLoadAddrTriggerHitVec_1_res_T_3; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_1 = hitLoadAddrTriggerHitVec_1_res & io_trigger_1_tEnable; // @[Trigger.scala 35:9]
  wire  hitLoadAddrTriggerHitVec_2_equal = _GEN_2 == io_trigger_2_tdata2; // @[Trigger.scala 28:24]
  wire  hitLoadAddrTriggerHitVec_2_greater = _GEN_2 >= io_trigger_2_tdata2; // @[Trigger.scala 29:26]
  wire  hitLoadAddrTriggerHitVec_2_less = _GEN_2 <= io_trigger_2_tdata2; // @[Trigger.scala 30:23]
  wire  _hitLoadAddrTriggerHitVec_2_res_T_3 = 2'h2 == io_trigger_2_matchType ? hitLoadAddrTriggerHitVec_2_greater : 2'h0
     == io_trigger_2_matchType & hitLoadAddrTriggerHitVec_2_equal; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_2_res = 2'h3 == io_trigger_2_matchType ? hitLoadAddrTriggerHitVec_2_less :
    _hitLoadAddrTriggerHitVec_2_res_T_3; // @[Mux.scala 81:58]
  wire  hitLoadAddrTriggerHitVec_2 = hitLoadAddrTriggerHitVec_2_res & io_trigger_2_tEnable; // @[Trigger.scala 35:9]
  wire  _T_29 = load_s0_io_in_ready & load_s0_io_in_valid; // @[Decoupled.scala 50:35]
  wire  _T_36 = load_s0_io_out_ready & load_s0_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _T_46 = load_s1_io_in_ready & load_s1_io_in_valid; // @[Decoupled.scala 50:35]
  wire  _T_49 = load_s2_io_in_valid; // @[Decoupled.scala 50:35]
  wire  _T_53 = load_s2_io_rsFeedback_valid & _s3_replay_for_mshrfull_T; // @[LoadUnit.scala 683:62]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
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
  reg  io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  LoadUnit_S0 load_s0 ( // @[LoadUnit.scala 532:23]
    .io_in_ready(load_s0_io_in_ready),
    .io_in_valid(load_s0_io_in_valid),
    .io_in_bits_uop_cf_trigger_backendEn_0(load_s0_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(load_s0_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(load_s0_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(load_s0_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(load_s0_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(load_s0_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(load_s0_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(load_s0_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(load_s0_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(load_s0_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(load_s0_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(load_s0_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(load_s0_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(load_s0_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(load_s0_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_pdest(load_s0_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(load_s0_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(load_s0_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(load_s0_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(load_s0_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(load_s0_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(load_s0_io_in_bits_uop_sqIdx_value),
    .io_in_bits_src_0(load_s0_io_in_bits_src_0),
    .io_out_ready(load_s0_io_out_ready),
    .io_out_valid(load_s0_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(load_s0_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_trigger_backendEn_0(load_s0_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(load_s0_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(load_s0_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(load_s0_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(load_s0_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(load_s0_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(load_s0_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(load_s0_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(load_s0_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(load_s0_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(load_s0_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(load_s0_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(load_s0_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(load_s0_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(load_s0_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(load_s0_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(load_s0_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(load_s0_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(load_s0_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(load_s0_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(load_s0_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(load_s0_io_out_bits_vaddr),
    .io_out_bits_mask(load_s0_io_out_bits_mask),
    .io_out_bits_rsIdx(load_s0_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(load_s0_io_out_bits_isSoftPrefetch),
    .io_dtlbReq_valid(load_s0_io_dtlbReq_valid),
    .io_dtlbReq_bits_vaddr(load_s0_io_dtlbReq_bits_vaddr),
    .io_dcacheReq_ready(load_s0_io_dcacheReq_ready),
    .io_dcacheReq_valid(load_s0_io_dcacheReq_valid),
    .io_dcacheReq_bits_cmd(load_s0_io_dcacheReq_bits_cmd),
    .io_dcacheReq_bits_addr(load_s0_io_dcacheReq_bits_addr),
    .io_dcacheReq_bits_instrtype(load_s0_io_dcacheReq_bits_instrtype),
    .io_rsIdx(load_s0_io_rsIdx),
    .io_loadFastMatch(load_s0_io_loadFastMatch)
  );
  LoadUnit_S1 load_s1 ( // @[LoadUnit.scala 533:23]
    .clock(load_s1_clock),
    .io_in_ready(load_s1_io_in_ready),
    .io_in_valid(load_s1_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(load_s1_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_6(load_s1_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(load_s1_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_15(load_s1_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(load_s1_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(load_s1_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(load_s1_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(load_s1_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(load_s1_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(load_s1_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(load_s1_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(load_s1_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(load_s1_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(load_s1_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(load_s1_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(load_s1_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(load_s1_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(load_s1_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(load_s1_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(load_s1_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(load_s1_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(load_s1_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(load_s1_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(load_s1_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(load_s1_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(load_s1_io_in_bits_vaddr),
    .io_in_bits_mask(load_s1_io_in_bits_mask),
    .io_in_bits_wlineflag(load_s1_io_in_bits_wlineflag),
    .io_in_bits_mmio(load_s1_io_in_bits_mmio),
    .io_in_bits_rsIdx(load_s1_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(load_s1_io_in_bits_isSoftPrefetch),
    .io_out_ready(load_s1_io_out_ready),
    .io_out_valid(load_s1_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(load_s1_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(load_s1_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(load_s1_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(load_s1_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(load_s1_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(load_s1_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(load_s1_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(load_s1_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(load_s1_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(load_s1_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(load_s1_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(load_s1_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(load_s1_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(load_s1_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(load_s1_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(load_s1_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(load_s1_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(load_s1_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(load_s1_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(load_s1_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(load_s1_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(load_s1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(load_s1_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(load_s1_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(load_s1_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(load_s1_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(load_s1_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(load_s1_io_out_bits_vaddr),
    .io_out_bits_paddr(load_s1_io_out_bits_paddr),
    .io_out_bits_mask(load_s1_io_out_bits_mask),
    .io_out_bits_wlineflag(load_s1_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(load_s1_io_out_bits_tlbMiss),
    .io_out_bits_mmio(load_s1_io_out_bits_mmio),
    .io_out_bits_rsIdx(load_s1_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(load_s1_io_out_bits_isSoftPrefetch),
    .io_dtlbResp_bits_paddr(load_s1_io_dtlbResp_bits_paddr),
    .io_dtlbResp_bits_miss(load_s1_io_dtlbResp_bits_miss),
    .io_dtlbResp_bits_fast_miss(load_s1_io_dtlbResp_bits_fast_miss),
    .io_dtlbResp_bits_excp_pf_ld(load_s1_io_dtlbResp_bits_excp_pf_ld),
    .io_dtlbResp_bits_excp_af_ld(load_s1_io_dtlbResp_bits_excp_af_ld),
    .io_dcachePAddr(load_s1_io_dcachePAddr),
    .io_dcacheKill(load_s1_io_dcacheKill),
    .io_fastUopKill(load_s1_io_fastUopKill),
    .io_dcacheBankConflict(load_s1_io_dcacheBankConflict),
    .io_sbuffer_vaddr(load_s1_io_sbuffer_vaddr),
    .io_sbuffer_paddr(load_s1_io_sbuffer_paddr),
    .io_sbuffer_valid(load_s1_io_sbuffer_valid),
    .io_lsq_vaddr(load_s1_io_lsq_vaddr),
    .io_lsq_paddr(load_s1_io_lsq_paddr),
    .io_lsq_mask(load_s1_io_lsq_mask),
    .io_lsq_uop_cf_ftqPtr_flag(load_s1_io_lsq_uop_cf_ftqPtr_flag),
    .io_lsq_uop_cf_ftqPtr_value(load_s1_io_lsq_uop_cf_ftqPtr_value),
    .io_lsq_uop_cf_ftqOffset(load_s1_io_lsq_uop_cf_ftqOffset),
    .io_lsq_uop_robIdx_flag(load_s1_io_lsq_uop_robIdx_flag),
    .io_lsq_uop_robIdx_value(load_s1_io_lsq_uop_robIdx_value),
    .io_lsq_valid(load_s1_io_lsq_valid),
    .io_lsq_sqIdx_flag(load_s1_io_lsq_sqIdx_flag),
    .io_loadViolationQueryReq_ready(load_s1_io_loadViolationQueryReq_ready),
    .io_loadViolationQueryReq_valid(load_s1_io_loadViolationQueryReq_valid),
    .io_loadViolationQueryReq_bits_uop_lqIdx_flag(load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_flag),
    .io_loadViolationQueryReq_bits_uop_lqIdx_value(load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_value),
    .io_loadViolationQueryReq_bits_paddr(load_s1_io_loadViolationQueryReq_bits_paddr),
    .io_rsFeedback_valid(load_s1_io_rsFeedback_valid),
    .io_rsFeedback_bits_rsIdx(load_s1_io_rsFeedback_bits_rsIdx),
    .io_rsFeedback_bits_sourceType(load_s1_io_rsFeedback_bits_sourceType),
    .io_csrCtrl_ldld_vio_check_enable(load_s1_io_csrCtrl_ldld_vio_check_enable),
    .io_needLdVioCheckRedo(load_s1_io_needLdVioCheckRedo)
  );
  LoadUnit_S2 load_s2 ( // @[LoadUnit.scala 534:23]
    .clock(load_s2_clock),
    .io_in_valid(load_s2_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(load_s2_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(load_s2_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_13(load_s2_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_trigger_backendEn_1(load_s2_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(load_s2_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(load_s2_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_4(load_s2_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_ftqPtr_flag(load_s2_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(load_s2_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(load_s2_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(load_s2_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(load_s2_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(load_s2_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(load_s2_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(load_s2_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(load_s2_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_value(load_s2_io_in_bits_uop_lqIdx_value),
    .io_in_bits_vaddr(load_s2_io_in_bits_vaddr),
    .io_in_bits_paddr(load_s2_io_in_bits_paddr),
    .io_in_bits_mask(load_s2_io_in_bits_mask),
    .io_in_bits_tlbMiss(load_s2_io_in_bits_tlbMiss),
    .io_in_bits_rsIdx(load_s2_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(load_s2_io_in_bits_isSoftPrefetch),
    .io_out_valid(load_s2_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(load_s2_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(load_s2_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_13(load_s2_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_trigger_backendEn_1(load_s2_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(load_s2_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(load_s2_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_4(load_s2_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_ftqPtr_flag(load_s2_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(load_s2_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(load_s2_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(load_s2_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(load_s2_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(load_s2_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(load_s2_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_ctrl_replayInst(load_s2_io_out_bits_uop_ctrl_replayInst),
    .io_out_bits_uop_pdest(load_s2_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(load_s2_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(load_s2_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_value(load_s2_io_out_bits_uop_lqIdx_value),
    .io_out_bits_vaddr(load_s2_io_out_bits_vaddr),
    .io_out_bits_paddr(load_s2_io_out_bits_paddr),
    .io_out_bits_mask(load_s2_io_out_bits_mask),
    .io_out_bits_data(load_s2_io_out_bits_data),
    .io_out_bits_miss(load_s2_io_out_bits_miss),
    .io_out_bits_mmio(load_s2_io_out_bits_mmio),
    .io_out_bits_forwardMask_0(load_s2_io_out_bits_forwardMask_0),
    .io_out_bits_forwardMask_1(load_s2_io_out_bits_forwardMask_1),
    .io_out_bits_forwardMask_2(load_s2_io_out_bits_forwardMask_2),
    .io_out_bits_forwardMask_3(load_s2_io_out_bits_forwardMask_3),
    .io_out_bits_forwardMask_4(load_s2_io_out_bits_forwardMask_4),
    .io_out_bits_forwardMask_5(load_s2_io_out_bits_forwardMask_5),
    .io_out_bits_forwardMask_6(load_s2_io_out_bits_forwardMask_6),
    .io_out_bits_forwardMask_7(load_s2_io_out_bits_forwardMask_7),
    .io_out_bits_forwardData_0(load_s2_io_out_bits_forwardData_0),
    .io_out_bits_forwardData_1(load_s2_io_out_bits_forwardData_1),
    .io_out_bits_forwardData_2(load_s2_io_out_bits_forwardData_2),
    .io_out_bits_forwardData_3(load_s2_io_out_bits_forwardData_3),
    .io_out_bits_forwardData_4(load_s2_io_out_bits_forwardData_4),
    .io_out_bits_forwardData_5(load_s2_io_out_bits_forwardData_5),
    .io_out_bits_forwardData_6(load_s2_io_out_bits_forwardData_6),
    .io_out_bits_forwardData_7(load_s2_io_out_bits_forwardData_7),
    .io_rsFeedback_valid(load_s2_io_rsFeedback_valid),
    .io_rsFeedback_bits_rsIdx(load_s2_io_rsFeedback_bits_rsIdx),
    .io_rsFeedback_bits_hit(load_s2_io_rsFeedback_bits_hit),
    .io_rsFeedback_bits_sourceType(load_s2_io_rsFeedback_bits_sourceType),
    .io_rsFeedback_bits_dataInvalidSqIdx_value(load_s2_io_rsFeedback_bits_dataInvalidSqIdx_value),
    .io_dcacheResp_bits_data(load_s2_io_dcacheResp_bits_data),
    .io_dcacheResp_bits_miss(load_s2_io_dcacheResp_bits_miss),
    .io_dcacheResp_bits_replay(load_s2_io_dcacheResp_bits_replay),
    .io_dcacheResp_bits_tag_error(load_s2_io_dcacheResp_bits_tag_error),
    .io_dcacheResp_bits_error(load_s2_io_dcacheResp_bits_error),
    .io_pmpResp_ld(load_s2_io_pmpResp_ld),
    .io_pmpResp_mmio(load_s2_io_pmpResp_mmio),
    .io_lsq_forwardMask_0(load_s2_io_lsq_forwardMask_0),
    .io_lsq_forwardMask_1(load_s2_io_lsq_forwardMask_1),
    .io_lsq_forwardMask_2(load_s2_io_lsq_forwardMask_2),
    .io_lsq_forwardMask_3(load_s2_io_lsq_forwardMask_3),
    .io_lsq_forwardMask_4(load_s2_io_lsq_forwardMask_4),
    .io_lsq_forwardMask_5(load_s2_io_lsq_forwardMask_5),
    .io_lsq_forwardMask_6(load_s2_io_lsq_forwardMask_6),
    .io_lsq_forwardMask_7(load_s2_io_lsq_forwardMask_7),
    .io_lsq_forwardData_0(load_s2_io_lsq_forwardData_0),
    .io_lsq_forwardData_1(load_s2_io_lsq_forwardData_1),
    .io_lsq_forwardData_2(load_s2_io_lsq_forwardData_2),
    .io_lsq_forwardData_3(load_s2_io_lsq_forwardData_3),
    .io_lsq_forwardData_4(load_s2_io_lsq_forwardData_4),
    .io_lsq_forwardData_5(load_s2_io_lsq_forwardData_5),
    .io_lsq_forwardData_6(load_s2_io_lsq_forwardData_6),
    .io_lsq_forwardData_7(load_s2_io_lsq_forwardData_7),
    .io_lsq_dataInvalid(load_s2_io_lsq_dataInvalid),
    .io_lsq_matchInvalid(load_s2_io_lsq_matchInvalid),
    .io_dataInvalidSqIdx(load_s2_io_dataInvalidSqIdx),
    .io_sbuffer_forwardMask_0(load_s2_io_sbuffer_forwardMask_0),
    .io_sbuffer_forwardMask_1(load_s2_io_sbuffer_forwardMask_1),
    .io_sbuffer_forwardMask_2(load_s2_io_sbuffer_forwardMask_2),
    .io_sbuffer_forwardMask_3(load_s2_io_sbuffer_forwardMask_3),
    .io_sbuffer_forwardMask_4(load_s2_io_sbuffer_forwardMask_4),
    .io_sbuffer_forwardMask_5(load_s2_io_sbuffer_forwardMask_5),
    .io_sbuffer_forwardMask_6(load_s2_io_sbuffer_forwardMask_6),
    .io_sbuffer_forwardMask_7(load_s2_io_sbuffer_forwardMask_7),
    .io_sbuffer_forwardData_0(load_s2_io_sbuffer_forwardData_0),
    .io_sbuffer_forwardData_1(load_s2_io_sbuffer_forwardData_1),
    .io_sbuffer_forwardData_2(load_s2_io_sbuffer_forwardData_2),
    .io_sbuffer_forwardData_3(load_s2_io_sbuffer_forwardData_3),
    .io_sbuffer_forwardData_4(load_s2_io_sbuffer_forwardData_4),
    .io_sbuffer_forwardData_5(load_s2_io_sbuffer_forwardData_5),
    .io_sbuffer_forwardData_6(load_s2_io_sbuffer_forwardData_6),
    .io_sbuffer_forwardData_7(load_s2_io_sbuffer_forwardData_7),
    .io_sbuffer_matchInvalid(load_s2_io_sbuffer_matchInvalid),
    .io_dataForwarded(load_s2_io_dataForwarded),
    .io_dcacheRequireReplay(load_s2_io_dcacheRequireReplay),
    .io_dcache_kill(load_s2_io_dcache_kill),
    .io_loadViolationQueryResp_valid(load_s2_io_loadViolationQueryResp_valid),
    .io_loadViolationQueryResp_bits_have_violation(load_s2_io_loadViolationQueryResp_bits_have_violation),
    .io_csrCtrl_ldld_vio_check_enable(load_s2_io_csrCtrl_ldld_vio_check_enable),
    .io_csrCtrl_cache_error_enable(load_s2_io_csrCtrl_cache_error_enable),
    .io_sentFastUop(load_s2_io_sentFastUop),
    .io_static_pm_valid(load_s2_io_static_pm_valid),
    .io_static_pm_bits(load_s2_io_static_pm_bits)
  );
  PipelineConnectModule_17 pipelineConnect ( // @[PipelineConnect.scala 50:33]
    .clock(pipelineConnect_clock),
    .reset(pipelineConnect_reset),
    .io_in_ready(pipelineConnect_io_in_ready),
    .io_in_valid(pipelineConnect_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(pipelineConnect_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(pipelineConnect_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(pipelineConnect_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(pipelineConnect_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_13(pipelineConnect_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(pipelineConnect_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(pipelineConnect_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(pipelineConnect_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(pipelineConnect_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(pipelineConnect_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(pipelineConnect_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(pipelineConnect_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(pipelineConnect_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(pipelineConnect_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(pipelineConnect_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(pipelineConnect_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(pipelineConnect_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(pipelineConnect_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(pipelineConnect_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(pipelineConnect_io_in_bits_vaddr),
    .io_in_bits_paddr(pipelineConnect_io_in_bits_paddr),
    .io_in_bits_mask(pipelineConnect_io_in_bits_mask),
    .io_in_bits_wlineflag(pipelineConnect_io_in_bits_wlineflag),
    .io_in_bits_tlbMiss(pipelineConnect_io_in_bits_tlbMiss),
    .io_in_bits_mmio(pipelineConnect_io_in_bits_mmio),
    .io_in_bits_rsIdx(pipelineConnect_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(pipelineConnect_io_in_bits_isSoftPrefetch),
    .io_out_ready(pipelineConnect_io_out_ready),
    .io_out_valid(pipelineConnect_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(pipelineConnect_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(pipelineConnect_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(pipelineConnect_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(pipelineConnect_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(pipelineConnect_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(pipelineConnect_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(pipelineConnect_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(pipelineConnect_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(pipelineConnect_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(pipelineConnect_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(pipelineConnect_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(pipelineConnect_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(pipelineConnect_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(pipelineConnect_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(pipelineConnect_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(pipelineConnect_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(pipelineConnect_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(pipelineConnect_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(pipelineConnect_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(pipelineConnect_io_out_bits_vaddr),
    .io_out_bits_paddr(pipelineConnect_io_out_bits_paddr),
    .io_out_bits_mask(pipelineConnect_io_out_bits_mask),
    .io_out_bits_wlineflag(pipelineConnect_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(pipelineConnect_io_out_bits_tlbMiss),
    .io_out_bits_mmio(pipelineConnect_io_out_bits_mmio),
    .io_out_bits_rsIdx(pipelineConnect_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(pipelineConnect_io_out_bits_isSoftPrefetch),
    .io_isFlush(pipelineConnect_io_isFlush)
  );
  PipelineConnectModule_17 pipelineConnect_1 ( // @[PipelineConnect.scala 50:33]
    .clock(pipelineConnect_1_clock),
    .reset(pipelineConnect_1_reset),
    .io_in_ready(pipelineConnect_1_io_in_ready),
    .io_in_valid(pipelineConnect_1_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_13(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(pipelineConnect_1_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(pipelineConnect_1_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(pipelineConnect_1_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(pipelineConnect_1_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(pipelineConnect_1_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(pipelineConnect_1_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(pipelineConnect_1_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(pipelineConnect_1_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(pipelineConnect_1_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(pipelineConnect_1_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(pipelineConnect_1_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(pipelineConnect_1_io_in_bits_vaddr),
    .io_in_bits_paddr(pipelineConnect_1_io_in_bits_paddr),
    .io_in_bits_mask(pipelineConnect_1_io_in_bits_mask),
    .io_in_bits_wlineflag(pipelineConnect_1_io_in_bits_wlineflag),
    .io_in_bits_tlbMiss(pipelineConnect_1_io_in_bits_tlbMiss),
    .io_in_bits_mmio(pipelineConnect_1_io_in_bits_mmio),
    .io_in_bits_rsIdx(pipelineConnect_1_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(pipelineConnect_1_io_in_bits_isSoftPrefetch),
    .io_out_ready(pipelineConnect_1_io_out_ready),
    .io_out_valid(pipelineConnect_1_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(pipelineConnect_1_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(pipelineConnect_1_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(pipelineConnect_1_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(pipelineConnect_1_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(pipelineConnect_1_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(pipelineConnect_1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(pipelineConnect_1_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(pipelineConnect_1_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(pipelineConnect_1_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(pipelineConnect_1_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(pipelineConnect_1_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(pipelineConnect_1_io_out_bits_vaddr),
    .io_out_bits_paddr(pipelineConnect_1_io_out_bits_paddr),
    .io_out_bits_mask(pipelineConnect_1_io_out_bits_mask),
    .io_out_bits_wlineflag(pipelineConnect_1_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(pipelineConnect_1_io_out_bits_tlbMiss),
    .io_out_bits_mmio(pipelineConnect_1_io_out_bits_mmio),
    .io_out_bits_rsIdx(pipelineConnect_1_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(pipelineConnect_1_io_out_bits_isSoftPrefetch),
    .io_isFlush(pipelineConnect_1_io_isFlush)
  );
  assign io_ldin_ready = load_s0_io_in_ready; // @[LoadUnit.scala 536:17]
  assign io_ldout_valid = s2_wb_valid | io_lsq_ldout_valid; // @[LoadUnit.scala 646:38]
  assign io_ldout_bits_uop_cf_exceptionVec_4 = s2_wb_valid ? hitLoadOut_bits_uop_cf_exceptionVec_4 :
    io_lsq_ldout_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_exceptionVec_5 = s2_wb_valid ? hitLoadOut_bits_uop_cf_exceptionVec_5 :
    io_lsq_ldout_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_exceptionVec_13 = s2_wb_valid ? hitLoadOut_bits_uop_cf_exceptionVec_13 :
    io_lsq_ldout_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_trigger_backendEn_1 = s2_wb_valid ? hitLoadOut_bits_uop_cf_trigger_backendEn_1 :
    io_lsq_ldout_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_trigger_backendHit_0 = s2_wb_valid ? hitLoadOut_bits_uop_cf_trigger_backendHit_0 :
    io_lsq_ldout_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_trigger_backendHit_1 = s2_wb_valid ? hitLoadOut_bits_uop_cf_trigger_backendHit_1 :
    io_lsq_ldout_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_cf_trigger_backendHit_4 = s2_wb_valid ? hitLoadOut_bits_uop_cf_trigger_backendHit_4 :
    io_lsq_ldout_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_ctrl_rfWen = s2_wb_valid ? hitLoadOut_bits_uop_ctrl_rfWen : io_lsq_ldout_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_ctrl_fpWen = s2_wb_valid ? hitLoadOut_bits_uop_ctrl_fpWen : io_lsq_ldout_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_ctrl_flushPipe = s2_wb_valid ? hitLoadOut_bits_uop_ctrl_flushPipe :
    io_lsq_ldout_bits_uop_ctrl_flushPipe; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_ctrl_replayInst = s2_wb_valid ? hitLoadOut_bits_uop_ctrl_replayInst :
    io_lsq_ldout_bits_uop_ctrl_replayInst; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_pdest = s2_wb_valid ? hitLoadOut_bits_uop_pdest : io_lsq_ldout_bits_uop_pdest; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_robIdx_flag = s2_wb_valid ? hitLoadOut_bits_uop_robIdx_flag :
    io_lsq_ldout_bits_uop_robIdx_flag; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_uop_robIdx_value = s2_wb_valid ? hitLoadOut_bits_uop_robIdx_value :
    io_lsq_ldout_bits_uop_robIdx_value; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_data = s2_wb_valid ? hitLoadOut_bits_data : io_lsq_ldout_bits_data; // @[LoadUnit.scala 645:23]
  assign io_ldout_bits_debug_isMMIO = s2_wb_valid ? hitLoadOut_bits_debug_isMMIO : io_lsq_ldout_bits_debug_isMMIO; // @[LoadUnit.scala 645:23]
  assign io_feedbackSlow_valid = io_feedbackSlow_valid_REG; // @[LoadUnit.scala 580:25]
  assign io_feedbackSlow_bits_rsIdx = io_feedbackSlow_bits_REG_rsIdx; // @[LoadUnit.scala 581:24]
  assign io_feedbackSlow_bits_hit = io_feedbackSlow_bits_hit_REG_hit | _io_feedbackSlow_bits_hit_T; // @[LoadUnit.scala 585:71]
  assign io_feedbackSlow_bits_sourceType = io_feedbackSlow_bits_REG_sourceType; // @[LoadUnit.scala 581:24]
  assign io_feedbackSlow_bits_dataInvalidSqIdx_value = io_feedbackSlow_bits_REG_dataInvalidSqIdx_value; // @[LoadUnit.scala 581:24]
  assign io_feedbackFast_valid = load_s1_io_rsFeedback_valid; // @[LoadUnit.scala 590:25]
  assign io_feedbackFast_bits_rsIdx = load_s1_io_rsFeedback_bits_rsIdx; // @[LoadUnit.scala 589:24]
  assign io_feedbackFast_bits_sourceType = load_s1_io_rsFeedback_bits_sourceType; // @[LoadUnit.scala 589:24]
  assign io_dcache_req_valid = load_s0_io_dcacheReq_valid; // @[LoadUnit.scala 538:24]
  assign io_dcache_req_bits_cmd = load_s0_io_dcacheReq_bits_cmd; // @[LoadUnit.scala 538:24]
  assign io_dcache_req_bits_addr = load_s0_io_dcacheReq_bits_addr; // @[LoadUnit.scala 538:24]
  assign io_dcache_req_bits_instrtype = load_s0_io_dcacheReq_bits_instrtype; // @[LoadUnit.scala 538:24]
  assign io_dcache_s1_kill = load_s1_io_dcacheKill; // @[LoadUnit.scala 548:21]
  assign io_dcache_s2_kill = load_s2_io_dcache_kill; // @[LoadUnit.scala 557:21]
  assign io_dcache_s1_paddr = load_s1_io_dcachePAddr; // @[LoadUnit.scala 547:22]
  assign io_sbuffer_vaddr = load_s1_io_sbuffer_vaddr; // @[LoadUnit.scala 549:22]
  assign io_sbuffer_paddr = load_s1_io_sbuffer_paddr; // @[LoadUnit.scala 549:22]
  assign io_sbuffer_valid = load_s1_io_sbuffer_valid; // @[LoadUnit.scala 549:22]
  assign io_lsq_loadIn_valid = load_s2_io_out_valid; // @[LoadUnit.scala 624:23]
  assign io_lsq_loadIn_bits_uop_cf_exceptionVec_4 = load_s2_io_out_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_exceptionVec_5 = load_s2_io_out_bits_uop_cf_exceptionVec_5; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_exceptionVec_13 = load_s2_io_out_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_trigger_backendEn_1 = load_s2_io_out_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_trigger_backendHit_0 = load_s2_io_out_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_trigger_backendHit_1 = load_s2_io_out_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_trigger_backendHit_4 = load_s2_io_out_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_ftqPtr_flag = load_s2_io_out_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_ftqPtr_value = load_s2_io_out_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_cf_ftqOffset = load_s2_io_out_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_ctrl_fuOpType = load_s2_io_out_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_ctrl_rfWen = load_s2_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_ctrl_fpWen = load_s2_io_out_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_ctrl_flushPipe = load_s2_io_out_bits_uop_ctrl_flushPipe; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_ctrl_replayInst = load_s2_io_out_bits_uop_ctrl_replayInst; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_pdest = load_s2_io_out_bits_uop_pdest; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_robIdx_flag = load_s2_io_out_bits_uop_robIdx_flag; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_robIdx_value = load_s2_io_out_bits_uop_robIdx_value; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_uop_lqIdx_value = load_s2_io_out_bits_uop_lqIdx_value; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_vaddr = load_s2_io_out_bits_vaddr; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_paddr = load_s2_io_out_bits_paddr; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_mask = load_s2_io_out_bits_mask; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_miss = load_s2_io_out_bits_miss; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_mmio = load_s2_io_out_bits_mmio; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_0 = load_s2_io_out_bits_forwardMask_0; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_1 = load_s2_io_out_bits_forwardMask_1; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_2 = load_s2_io_out_bits_forwardMask_2; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_3 = load_s2_io_out_bits_forwardMask_3; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_4 = load_s2_io_out_bits_forwardMask_4; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_5 = load_s2_io_out_bits_forwardMask_5; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_6 = load_s2_io_out_bits_forwardMask_6; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardMask_7 = load_s2_io_out_bits_forwardMask_7; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_0 = load_s2_io_out_bits_forwardData_0; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_1 = load_s2_io_out_bits_forwardData_1; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_2 = load_s2_io_out_bits_forwardData_2; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_3 = load_s2_io_out_bits_forwardData_3; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_4 = load_s2_io_out_bits_forwardData_4; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_5 = load_s2_io_out_bits_forwardData_5; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_6 = load_s2_io_out_bits_forwardData_6; // @[LoadUnit.scala 625:22]
  assign io_lsq_loadIn_bits_forwardData_7 = load_s2_io_out_bits_forwardData_7; // @[LoadUnit.scala 625:22]
  assign io_lsq_ldout_ready = ~s2_wb_valid; // @[LoadUnit.scala 648:25]
  assign io_lsq_loadDataForwarded = load_s2_io_dataForwarded; // @[LoadUnit.scala 571:28]
  assign io_lsq_dcacheRequireReplay = load_s2_io_dcacheRequireReplay; // @[LoadUnit.scala 577:30]
  assign io_lsq_forward_vaddr = load_s1_io_lsq_vaddr; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_paddr = load_s1_io_lsq_paddr; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_mask = load_s1_io_lsq_mask; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_uop_cf_ftqPtr_flag = load_s1_io_lsq_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_uop_cf_ftqPtr_value = load_s1_io_lsq_uop_cf_ftqPtr_value; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_uop_cf_ftqOffset = load_s1_io_lsq_uop_cf_ftqOffset; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_uop_robIdx_flag = load_s1_io_lsq_uop_robIdx_flag; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_uop_robIdx_value = load_s1_io_lsq_uop_robIdx_value; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_valid = load_s1_io_lsq_valid; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_sqIdx_flag = load_s1_io_lsq_sqIdx_flag; // @[LoadUnit.scala 550:18]
  assign io_lsq_forward_sqIdxMask = sqIdxMaskReg; // @[LoadUnit.scala 600:28]
  assign io_lsq_loadViolationQuery_req_valid = load_s1_io_loadViolationQueryReq_valid; // @[LoadUnit.scala 551:36]
  assign io_lsq_loadViolationQuery_req_bits_uop_lqIdx_flag = load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_flag; // @[LoadUnit.scala 551:36]
  assign io_lsq_loadViolationQuery_req_bits_uop_lqIdx_value = load_s1_io_loadViolationQueryReq_bits_uop_lqIdx_value; // @[LoadUnit.scala 551:36]
  assign io_lsq_loadViolationQuery_req_bits_paddr = load_s1_io_loadViolationQueryReq_bits_paddr; // @[LoadUnit.scala 551:36]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_0 = hitLoadAddrTriggerHitVec_0_res & io_trigger_0_tEnable; // @[Trigger.scala 35:9]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_1 = hitLoadAddrTriggerHitVec_1_res & io_trigger_1_tEnable; // @[Trigger.scala 35:9]
  assign io_lsq_trigger_hitLoadAddrTriggerHitVec_2 = hitLoadAddrTriggerHitVec_2_res & io_trigger_2_tEnable; // @[Trigger.scala 35:9]
  assign io_fastUop_valid = _io_fastUop_valid_T_7 & _io_fastUop_valid_T_8; // @[LoadUnit.scala 610:37]
  assign io_fastUop_bits_ctrl_rfWen = load_s1_io_out_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 612:19]
  assign io_fastUop_bits_pdest = load_s1_io_out_bits_uop_pdest; // @[LoadUnit.scala 612:19]
  assign io_trigger_0_addrHit = s2_wb_valid ? hitLoadAddrTriggerHitVec_0 : io_lsq_trigger_lqLoadAddrTriggerHitVec_0; // @[LoadUnit.scala 668:33]
  assign io_trigger_1_addrHit = s2_wb_valid ? hitLoadAddrTriggerHitVec_1 : io_lsq_trigger_lqLoadAddrTriggerHitVec_1; // @[LoadUnit.scala 668:33]
  assign io_trigger_2_addrHit = s2_wb_valid ? hitLoadAddrTriggerHitVec_2 : io_lsq_trigger_lqLoadAddrTriggerHitVec_2; // @[LoadUnit.scala 668:33]
  assign io_tlb_req_valid = load_s0_io_dtlbReq_valid; // @[LoadUnit.scala 537:22]
  assign io_tlb_req_bits_vaddr = load_s0_io_dtlbReq_bits_vaddr; // @[LoadUnit.scala 537:22]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = {{5'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_9_value = {{5'd0}, io_perf_9_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_10_value = {{5'd0}, io_perf_10_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_11_value = {{5'd0}, io_perf_11_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign load_s0_io_in_valid = io_ldin_valid; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendEn_0 = io_ldin_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendEn_1 = io_ldin_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_0 = io_ldin_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_1 = io_ldin_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_2 = io_ldin_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_3 = io_ldin_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_4 = io_ldin_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_trigger_backendHit_5 = io_ldin_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_ftqPtr_flag = io_ldin_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_ftqPtr_value = io_ldin_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_cf_ftqOffset = io_ldin_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_ctrl_fuOpType = io_ldin_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_ctrl_rfWen = io_ldin_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_ctrl_fpWen = io_ldin_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_ctrl_imm = io_ldin_bits_uop_ctrl_imm; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_pdest = io_ldin_bits_uop_pdest; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_robIdx_flag = io_ldin_bits_uop_robIdx_flag; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_robIdx_value = io_ldin_bits_uop_robIdx_value; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_lqIdx_flag = io_ldin_bits_uop_lqIdx_flag; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_lqIdx_value = io_ldin_bits_uop_lqIdx_value; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_sqIdx_flag = io_ldin_bits_uop_sqIdx_flag; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_uop_sqIdx_value = io_ldin_bits_uop_sqIdx_value; // @[LoadUnit.scala 536:17]
  assign load_s0_io_in_bits_src_0 = io_ldin_bits_src_0; // @[LoadUnit.scala 536:17]
  assign load_s0_io_out_ready = pipelineConnect_io_in_ready; // @[PipelineConnect.scala 52:27]
  assign load_s0_io_dcacheReq_ready = io_dcache_req_ready; // @[LoadUnit.scala 538:24]
  assign load_s0_io_rsIdx = io_rsIdx; // @[LoadUnit.scala 539:20]
  assign load_s0_io_loadFastMatch = 2'h0; // @[LoadUnit.scala 542:28]
  assign load_s1_clock = clock;
  assign load_s1_io_in_valid = pipelineConnect_io_out_valid; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_exceptionVec_4 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_exceptionVec_6 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_exceptionVec_7 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_exceptionVec_15 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendEn_0 = pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendEn_1 = pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_0 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_1 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_2 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_3 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_4 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_trigger_backendHit_5 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_ftqPtr_flag = pipelineConnect_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_ftqPtr_value = pipelineConnect_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_cf_ftqOffset = pipelineConnect_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_ctrl_fuOpType = pipelineConnect_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_ctrl_rfWen = pipelineConnect_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_ctrl_fpWen = pipelineConnect_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_pdest = pipelineConnect_io_out_bits_uop_pdest; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_robIdx_flag = pipelineConnect_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_robIdx_value = pipelineConnect_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_lqIdx_flag = pipelineConnect_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_lqIdx_value = pipelineConnect_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_sqIdx_flag = pipelineConnect_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_uop_sqIdx_value = pipelineConnect_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_vaddr = pipelineConnect_io_out_bits_vaddr; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_mask = pipelineConnect_io_out_bits_mask; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_wlineflag = pipelineConnect_io_out_bits_wlineflag; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_mmio = pipelineConnect_io_out_bits_mmio; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_rsIdx = pipelineConnect_io_out_bits_rsIdx; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_in_bits_isSoftPrefetch = pipelineConnect_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 56:11]
  assign load_s1_io_out_ready = pipelineConnect_1_io_in_ready; // @[PipelineConnect.scala 52:27]
  assign load_s1_io_dtlbResp_bits_paddr = io_tlb_resp_bits_paddr; // @[LoadUnit.scala 546:23]
  assign load_s1_io_dtlbResp_bits_miss = io_tlb_resp_bits_miss; // @[LoadUnit.scala 546:23]
  assign load_s1_io_dtlbResp_bits_fast_miss = io_tlb_resp_bits_fast_miss; // @[LoadUnit.scala 546:23]
  assign load_s1_io_dtlbResp_bits_excp_pf_ld = io_tlb_resp_bits_excp_pf_ld; // @[LoadUnit.scala 546:23]
  assign load_s1_io_dtlbResp_bits_excp_af_ld = io_tlb_resp_bits_excp_af_ld; // @[LoadUnit.scala 546:23]
  assign load_s1_io_dcacheBankConflict = io_dcache_s1_bank_conflict; // @[LoadUnit.scala 552:33]
  assign load_s1_io_loadViolationQueryReq_ready = io_lsq_loadViolationQuery_req_ready; // @[LoadUnit.scala 551:36]
  assign load_s1_io_csrCtrl_ldld_vio_check_enable = io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 553:22]
  assign load_s2_clock = clock;
  assign load_s2_io_in_valid = pipelineConnect_1_io_out_valid; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_exceptionVec_4 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_exceptionVec_5 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_exceptionVec_13 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_trigger_backendEn_1 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_trigger_backendHit_0 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_trigger_backendHit_1 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_trigger_backendHit_4 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_ftqPtr_flag = pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_ftqPtr_value = pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_cf_ftqOffset = pipelineConnect_1_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_ctrl_fuOpType = pipelineConnect_1_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_ctrl_rfWen = pipelineConnect_1_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_ctrl_fpWen = pipelineConnect_1_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_pdest = pipelineConnect_1_io_out_bits_uop_pdest; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_robIdx_flag = pipelineConnect_1_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_robIdx_value = pipelineConnect_1_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_uop_lqIdx_value = pipelineConnect_1_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_vaddr = pipelineConnect_1_io_out_bits_vaddr; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_paddr = pipelineConnect_1_io_out_bits_paddr; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_mask = pipelineConnect_1_io_out_bits_mask; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_tlbMiss = pipelineConnect_1_io_out_bits_tlbMiss; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_rsIdx = pipelineConnect_1_io_out_bits_rsIdx; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_in_bits_isSoftPrefetch = pipelineConnect_1_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 56:11]
  assign load_s2_io_dcacheResp_bits_data = io_dcache_resp_bits_data; // @[LoadUnit.scala 558:25]
  assign load_s2_io_dcacheResp_bits_miss = io_dcache_resp_bits_miss; // @[LoadUnit.scala 558:25]
  assign load_s2_io_dcacheResp_bits_replay = io_dcache_resp_bits_replay; // @[LoadUnit.scala 558:25]
  assign load_s2_io_dcacheResp_bits_tag_error = io_dcache_resp_bits_tag_error; // @[LoadUnit.scala 558:25]
  assign load_s2_io_dcacheResp_bits_error = io_dcache_resp_bits_error; // @[LoadUnit.scala 558:25]
  assign load_s2_io_pmpResp_ld = io_pmp_ld; // @[LoadUnit.scala 559:22]
  assign load_s2_io_pmpResp_mmio = io_pmp_mmio; // @[LoadUnit.scala 559:22]
  assign load_s2_io_lsq_forwardMask_0 = io_lsq_forward_forwardMask_0; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_1 = io_lsq_forward_forwardMask_1; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_2 = io_lsq_forward_forwardMask_2; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_3 = io_lsq_forward_forwardMask_3; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_4 = io_lsq_forward_forwardMask_4; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_5 = io_lsq_forward_forwardMask_5; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_6 = io_lsq_forward_forwardMask_6; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardMask_7 = io_lsq_forward_forwardMask_7; // @[LoadUnit.scala 562:30]
  assign load_s2_io_lsq_forwardData_0 = io_lsq_forward_forwardData_0; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_1 = io_lsq_forward_forwardData_1; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_2 = io_lsq_forward_forwardData_2; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_3 = io_lsq_forward_forwardData_3; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_4 = io_lsq_forward_forwardData_4; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_5 = io_lsq_forward_forwardData_5; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_6 = io_lsq_forward_forwardData_6; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_forwardData_7 = io_lsq_forward_forwardData_7; // @[LoadUnit.scala 561:30]
  assign load_s2_io_lsq_dataInvalid = io_lsq_forward_dataInvalid; // @[LoadUnit.scala 564:30]
  assign load_s2_io_lsq_matchInvalid = io_lsq_forward_matchInvalid; // @[LoadUnit.scala 565:31]
  assign load_s2_io_dataInvalidSqIdx = io_lsq_forward_dataInvalidSqIdx; // @[LoadUnit.scala 573:31]
  assign load_s2_io_sbuffer_forwardMask_0 = io_sbuffer_forwardMask_0; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_1 = io_sbuffer_forwardMask_1; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_2 = io_sbuffer_forwardMask_2; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_3 = io_sbuffer_forwardMask_3; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_4 = io_sbuffer_forwardMask_4; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_5 = io_sbuffer_forwardMask_5; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_6 = io_sbuffer_forwardMask_6; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardMask_7 = io_sbuffer_forwardMask_7; // @[LoadUnit.scala 567:34]
  assign load_s2_io_sbuffer_forwardData_0 = io_sbuffer_forwardData_0; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_1 = io_sbuffer_forwardData_1; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_2 = io_sbuffer_forwardData_2; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_3 = io_sbuffer_forwardData_3; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_4 = io_sbuffer_forwardData_4; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_5 = io_sbuffer_forwardData_5; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_6 = io_sbuffer_forwardData_6; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_forwardData_7 = io_sbuffer_forwardData_7; // @[LoadUnit.scala 566:34]
  assign load_s2_io_sbuffer_matchInvalid = io_sbuffer_matchInvalid; // @[LoadUnit.scala 570:35]
  assign load_s2_io_loadViolationQueryResp_valid = io_lsq_loadViolationQuery_resp_valid; // @[LoadUnit.scala 574:37]
  assign load_s2_io_loadViolationQueryResp_bits_have_violation = io_lsq_loadViolationQuery_resp_bits_have_violation; // @[LoadUnit.scala 574:37]
  assign load_s2_io_csrCtrl_ldld_vio_check_enable = io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 575:22]
  assign load_s2_io_csrCtrl_cache_error_enable = io_csrCtrl_cache_error_enable; // @[LoadUnit.scala 575:22]
  assign load_s2_io_sentFastUop = load_s2_io_sentFastUop_r; // @[LoadUnit.scala 576:26]
  assign load_s2_io_static_pm_valid = load_s2_io_static_pm_REG_valid; // @[LoadUnit.scala 560:24]
  assign load_s2_io_static_pm_bits = load_s2_io_static_pm_REG_bits; // @[LoadUnit.scala 560:24]
  assign pipelineConnect_clock = clock;
  assign pipelineConnect_reset = reset;
  assign pipelineConnect_io_in_valid = load_s0_io_out_valid; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_4 = load_s0_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_5 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_6 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_7 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_13 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_15 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_0 = load_s0_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_1 = load_s0_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_0 = load_s0_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_1 = load_s0_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_2 = load_s0_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_3 = load_s0_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_4 = load_s0_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_5 = load_s0_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqPtr_flag = load_s0_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqPtr_value = load_s0_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqOffset = load_s0_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_fuOpType = load_s0_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_rfWen = load_s0_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_fpWen = load_s0_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_pdest = load_s0_io_out_bits_uop_pdest; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_robIdx_flag = load_s0_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_robIdx_value = load_s0_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_lqIdx_flag = load_s0_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_lqIdx_value = load_s0_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_sqIdx_flag = load_s0_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_sqIdx_value = load_s0_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_vaddr = load_s0_io_out_bits_vaddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_paddr = 36'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_mask = load_s0_io_out_bits_mask; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_wlineflag = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_tlbMiss = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_mmio = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_rsIdx = load_s0_io_out_bits_rsIdx; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_isSoftPrefetch = load_s0_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_out_ready = load_s1_io_in_ready; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_io_isFlush = io_redirect_valid & (flushItself | _T); // @[Rob.scala 36:20]
  assign pipelineConnect_1_clock = clock;
  assign pipelineConnect_1_reset = reset;
  assign pipelineConnect_1_io_in_valid = load_s1_io_out_valid; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_4 = load_s1_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_5 = load_s1_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_6 = load_s1_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_7 = load_s1_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_13 = load_s1_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_15 = load_s1_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_0 = load_s1_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_1 = load_s1_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_0 = load_s1_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_1 = load_s1_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_2 = load_s1_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_3 = load_s1_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_4 = load_s1_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_5 = load_s1_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_flag = load_s1_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_value = load_s1_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqOffset = load_s1_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_fuOpType = load_s1_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_rfWen = load_s1_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_fpWen = load_s1_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_pdest = load_s1_io_out_bits_uop_pdest; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_robIdx_flag = load_s1_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_robIdx_value = load_s1_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_lqIdx_flag = load_s1_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_lqIdx_value = load_s1_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_sqIdx_flag = load_s1_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_sqIdx_value = load_s1_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_vaddr = load_s1_io_out_bits_vaddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_paddr = load_s1_io_out_bits_paddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_mask = load_s1_io_out_bits_mask; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_wlineflag = load_s1_io_out_bits_wlineflag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_tlbMiss = load_s1_io_out_bits_tlbMiss; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_mmio = load_s1_io_out_bits_mmio; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_rsIdx = load_s1_io_out_bits_rsIdx; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_isSoftPrefetch = load_s1_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_out_ready = 1'h1; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_1_io_isFlush = io_redirect_valid & (flushItself_1 | _T_3); // @[Rob.scala 36:20]
  always @(posedge clock) begin
    load_s2_io_static_pm_REG_valid <= io_tlb_resp_bits_static_pm_valid; // @[LoadUnit.scala 560:34]
    load_s2_io_static_pm_REG_bits <= io_tlb_resp_bits_static_pm_bits; // @[LoadUnit.scala 560:34]
    if (_load_s2_io_sentFastUop_T) begin // @[Reg.scala 17:18]
      load_s2_io_sentFastUop_r <= io_fastUop_valid; // @[Reg.scala 17:22]
    end
    io_feedbackSlow_valid_REG <= load_s2_io_rsFeedback_valid & ~_io_feedbackSlow_valid_T_2; // @[LoadUnit.scala 580:64]
    io_feedbackSlow_bits_REG_rsIdx <= load_s2_io_rsFeedback_bits_rsIdx; // @[LoadUnit.scala 581:34]
    io_feedbackSlow_bits_REG_sourceType <= load_s2_io_rsFeedback_bits_sourceType; // @[LoadUnit.scala 581:34]
    io_feedbackSlow_bits_REG_dataInvalidSqIdx_value <= load_s2_io_rsFeedback_bits_dataInvalidSqIdx_value; // @[LoadUnit.scala 581:34]
    s3_replay_for_mshrfull <= ~load_s2_io_rsFeedback_bits_hit & load_s2_io_rsFeedback_bits_sourceType == 3'h1; // @[LoadUnit.scala 582:72]
    s3_refill_hit_load_paddr_REG <= load_s2_io_out_bits_paddr; // @[LoadUnit.scala 583:57]
    io_feedbackSlow_bits_hit_REG_hit <= load_s2_io_rsFeedback_bits_hit; // @[LoadUnit.scala 585:38]
    sqIdxMaskReg <= _sqIdxMaskReg_T - 32'h1; // @[BitUtils.scala 142:75]
    io_perf_0_value_REG <= load_s0_io_in_ready & load_s0_io_in_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= |load_s0_io_loadFastMatch & _T_29; // @[LoadUnit.scala 675:63]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= load_s0_io_out_valid & load_s0_io_out_ready & ~load_s0_io_dcacheReq_ready; // @[LoadUnit.scala 676:79]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_36 & load_s0_io_dtlbReq_bits_vaddr[38:12] == load_s0_io_in_bits_src_0[38:12]; // @[LoadUnit.scala 677:56]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _T_36 & load_s0_io_dtlbReq_bits_vaddr[38:12] != load_s0_io_in_bits_src_0[38:12]; // @[LoadUnit.scala 678:56]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= load_s1_io_in_ready & load_s1_io_in_valid; // @[Decoupled.scala 50:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= _T_46 & load_s1_io_dtlbResp_bits_miss; // @[LoadUnit.scala 680:53]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= load_s2_io_in_valid; // @[Decoupled.scala 50:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= _T_49 & load_s2_io_dcacheResp_bits_miss; // @[LoadUnit.scala 682:53]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= load_s2_io_rsFeedback_valid & _s3_replay_for_mshrfull_T; // @[LoadUnit.scala 683:62]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= _T_53 & load_s2_io_in_bits_tlbMiss; // @[LoadUnit.scala 684:97]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= _T_53 & ~load_s2_io_in_bits_tlbMiss & load_s2_io_dcacheResp_bits_miss; // @[LoadUnit.scala 685:128]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  load_s2_io_static_pm_REG_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  load_s2_io_static_pm_REG_bits = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  load_s2_io_sentFastUop_r = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_feedbackSlow_valid_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_feedbackSlow_bits_REG_rsIdx = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  io_feedbackSlow_bits_REG_sourceType = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  io_feedbackSlow_bits_REG_dataInvalidSqIdx_value = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  s3_replay_for_mshrfull = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  s3_refill_hit_load_paddr_REG = _RAND_8[35:0];
  _RAND_9 = {1{`RANDOM}};
  io_feedbackSlow_bits_hit_REG_hit = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  sqIdxMaskReg = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_34[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
