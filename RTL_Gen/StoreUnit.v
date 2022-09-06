module StoreUnit(
  input         clock,
  input         reset,
  output        io_stin_ready,
  input         io_stin_valid,
  input         io_stin_bits_uop_cf_trigger_backendEn_0,
  input         io_stin_bits_uop_cf_trigger_backendEn_1,
  input         io_stin_bits_uop_cf_trigger_backendHit_0,
  input         io_stin_bits_uop_cf_trigger_backendHit_1,
  input         io_stin_bits_uop_cf_trigger_backendHit_2,
  input         io_stin_bits_uop_cf_trigger_backendHit_3,
  input         io_stin_bits_uop_cf_trigger_backendHit_4,
  input         io_stin_bits_uop_cf_trigger_backendHit_5,
  input         io_stin_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_stin_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_stin_bits_uop_cf_ftqOffset,
  input  [6:0]  io_stin_bits_uop_ctrl_fuOpType,
  input         io_stin_bits_uop_ctrl_rfWen,
  input         io_stin_bits_uop_ctrl_fpWen,
  input  [19:0] io_stin_bits_uop_ctrl_imm,
  input  [6:0]  io_stin_bits_uop_pdest,
  input         io_stin_bits_uop_robIdx_flag,
  input  [6:0]  io_stin_bits_uop_robIdx_value,
  input         io_stin_bits_uop_lqIdx_flag,
  input  [5:0]  io_stin_bits_uop_lqIdx_value,
  input         io_stin_bits_uop_sqIdx_flag,
  input  [4:0]  io_stin_bits_uop_sqIdx_value,
  input  [63:0] io_stin_bits_src_0,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_feedbackSlow_valid,
  output [4:0]  io_feedbackSlow_bits_rsIdx,
  output        io_feedbackSlow_bits_hit,
  output        io_tlb_req_valid,
  output [38:0] io_tlb_req_bits_vaddr,
  input  [35:0] io_tlb_resp_bits_paddr,
  input         io_tlb_resp_bits_miss,
  input         io_tlb_resp_bits_excp_pf_st,
  input         io_tlb_resp_bits_excp_af_st,
  input         io_tlb_resp_bits_static_pm_valid,
  input         io_tlb_resp_bits_static_pm_bits,
  input         io_pmp_st,
  input         io_pmp_mmio,
  input  [4:0]  io_rsIdx,
  output        io_lsq_valid,
  output [5:0]  io_lsq_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_lsq_bits_uop_cf_ftqOffset,
  output [6:0]  io_lsq_bits_uop_ctrl_fuOpType,
  output        io_lsq_bits_uop_robIdx_flag,
  output [6:0]  io_lsq_bits_uop_robIdx_value,
  output        io_lsq_bits_uop_lqIdx_flag,
  output [5:0]  io_lsq_bits_uop_lqIdx_value,
  output [4:0]  io_lsq_bits_uop_sqIdx_value,
  output [38:0] io_lsq_bits_vaddr,
  output [35:0] io_lsq_bits_paddr,
  output [7:0]  io_lsq_bits_mask,
  output        io_lsq_bits_wlineflag,
  output        io_lsq_bits_miss,
  output        io_lsq_replenish_mmio,
  output        io_stout_valid,
  output        io_stout_bits_uop_cf_exceptionVec_4,
  output        io_stout_bits_uop_cf_exceptionVec_5,
  output        io_stout_bits_uop_cf_exceptionVec_6,
  output        io_stout_bits_uop_cf_exceptionVec_7,
  output        io_stout_bits_uop_cf_exceptionVec_13,
  output        io_stout_bits_uop_cf_exceptionVec_15,
  output        io_stout_bits_uop_cf_trigger_backendEn_0,
  output        io_stout_bits_uop_cf_trigger_backendHit_0,
  output        io_stout_bits_uop_cf_trigger_backendHit_1,
  output        io_stout_bits_uop_cf_trigger_backendHit_2,
  output        io_stout_bits_uop_cf_trigger_backendHit_3,
  output        io_stout_bits_uop_cf_trigger_backendHit_4,
  output        io_stout_bits_uop_cf_trigger_backendHit_5,
  output        io_stout_bits_uop_robIdx_flag,
  output [6:0]  io_stout_bits_uop_robIdx_value,
  output        io_stout_bits_debug_isMMIO,
  output [38:0] io_stout_bits_debug_vaddr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  store_s0_io_in_ready; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_valid; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 213:24]
  wire [5:0] store_s0_io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 213:24]
  wire [2:0] store_s0_io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 213:24]
  wire [19:0] store_s0_io_in_bits_uop_ctrl_imm; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_in_bits_uop_pdest; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 213:24]
  wire [5:0] store_s0_io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 213:24]
  wire [4:0] store_s0_io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 213:24]
  wire [63:0] store_s0_io_in_bits_src_0; // @[StoreUnit.scala 213:24]
  wire [4:0] store_s0_io_rsIdx; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_ready; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_valid; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 213:24]
  wire [5:0] store_s0_io_out_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 213:24]
  wire [2:0] store_s0_io_out_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_out_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_out_bits_uop_pdest; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_robIdx_flag; // @[StoreUnit.scala 213:24]
  wire [6:0] store_s0_io_out_bits_uop_robIdx_value; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_lqIdx_flag; // @[StoreUnit.scala 213:24]
  wire [5:0] store_s0_io_out_bits_uop_lqIdx_value; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_uop_sqIdx_flag; // @[StoreUnit.scala 213:24]
  wire [4:0] store_s0_io_out_bits_uop_sqIdx_value; // @[StoreUnit.scala 213:24]
  wire [38:0] store_s0_io_out_bits_vaddr; // @[StoreUnit.scala 213:24]
  wire [7:0] store_s0_io_out_bits_mask; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_out_bits_wlineflag; // @[StoreUnit.scala 213:24]
  wire [4:0] store_s0_io_out_bits_rsIdx; // @[StoreUnit.scala 213:24]
  wire  store_s0_io_dtlbReq_valid; // @[StoreUnit.scala 213:24]
  wire [38:0] store_s0_io_dtlbReq_bits_vaddr; // @[StoreUnit.scala 213:24]
  wire  store_s1_io_in_valid; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 214:24]
  wire [2:0] store_s1_io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_in_bits_uop_pdest; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 214:24]
  wire [38:0] store_s1_io_in_bits_vaddr; // @[StoreUnit.scala 214:24]
  wire [7:0] store_s1_io_in_bits_mask; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_wlineflag; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_tlbMiss; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_in_bits_rsIdx; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_in_bits_isSoftPrefetch; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_valid; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_out_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 214:24]
  wire [2:0] store_s1_io_out_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_out_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_out_bits_uop_pdest; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_robIdx_flag; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_out_bits_uop_robIdx_value; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_lqIdx_flag; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_out_bits_uop_lqIdx_value; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_uop_sqIdx_flag; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_out_bits_uop_sqIdx_value; // @[StoreUnit.scala 214:24]
  wire [38:0] store_s1_io_out_bits_vaddr; // @[StoreUnit.scala 214:24]
  wire [35:0] store_s1_io_out_bits_paddr; // @[StoreUnit.scala 214:24]
  wire [7:0] store_s1_io_out_bits_mask; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_wlineflag; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_tlbMiss; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_mmio; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_out_bits_rsIdx; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_out_bits_isSoftPrefetch; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_lsq_valid; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_lsq_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 214:24]
  wire [2:0] store_s1_io_lsq_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_lsq_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_lsq_bits_uop_robIdx_flag; // @[StoreUnit.scala 214:24]
  wire [6:0] store_s1_io_lsq_bits_uop_robIdx_value; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_lsq_bits_uop_lqIdx_flag; // @[StoreUnit.scala 214:24]
  wire [5:0] store_s1_io_lsq_bits_uop_lqIdx_value; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_lsq_bits_uop_sqIdx_value; // @[StoreUnit.scala 214:24]
  wire [38:0] store_s1_io_lsq_bits_vaddr; // @[StoreUnit.scala 214:24]
  wire [35:0] store_s1_io_lsq_bits_paddr; // @[StoreUnit.scala 214:24]
  wire [7:0] store_s1_io_lsq_bits_mask; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_lsq_bits_wlineflag; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_lsq_bits_miss; // @[StoreUnit.scala 214:24]
  wire [35:0] store_s1_io_dtlbResp_bits_paddr; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_dtlbResp_bits_miss; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_dtlbResp_bits_excp_pf_st; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_dtlbResp_bits_excp_af_st; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_rsFeedback_valid; // @[StoreUnit.scala 214:24]
  wire [4:0] store_s1_io_rsFeedback_bits_rsIdx; // @[StoreUnit.scala 214:24]
  wire  store_s1_io_rsFeedback_bits_hit; // @[StoreUnit.scala 214:24]
  wire  store_s2_io_in_valid; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 215:24]
  wire [5:0] store_s2_io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 215:24]
  wire [2:0] store_s2_io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_in_bits_uop_pdest; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 215:24]
  wire [5:0] store_s2_io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 215:24]
  wire [4:0] store_s2_io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 215:24]
  wire [38:0] store_s2_io_in_bits_vaddr; // @[StoreUnit.scala 215:24]
  wire [35:0] store_s2_io_in_bits_paddr; // @[StoreUnit.scala 215:24]
  wire [7:0] store_s2_io_in_bits_mask; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_wlineflag; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_tlbMiss; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_mmio; // @[StoreUnit.scala 215:24]
  wire [4:0] store_s2_io_in_bits_rsIdx; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_in_bits_isSoftPrefetch; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_pmpResp_st; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_pmpResp_mmio; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_static_pm_valid; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_static_pm_bits; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_valid; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 215:24]
  wire [5:0] store_s2_io_out_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 215:24]
  wire [2:0] store_s2_io_out_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_out_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_out_bits_uop_pdest; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_robIdx_flag; // @[StoreUnit.scala 215:24]
  wire [6:0] store_s2_io_out_bits_uop_robIdx_value; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_lqIdx_flag; // @[StoreUnit.scala 215:24]
  wire [5:0] store_s2_io_out_bits_uop_lqIdx_value; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_uop_sqIdx_flag; // @[StoreUnit.scala 215:24]
  wire [4:0] store_s2_io_out_bits_uop_sqIdx_value; // @[StoreUnit.scala 215:24]
  wire [38:0] store_s2_io_out_bits_vaddr; // @[StoreUnit.scala 215:24]
  wire [35:0] store_s2_io_out_bits_paddr; // @[StoreUnit.scala 215:24]
  wire [7:0] store_s2_io_out_bits_mask; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_wlineflag; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_tlbMiss; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_mmio; // @[StoreUnit.scala 215:24]
  wire [4:0] store_s2_io_out_bits_rsIdx; // @[StoreUnit.scala 215:24]
  wire  store_s2_io_out_bits_isSoftPrefetch; // @[StoreUnit.scala 215:24]
  wire  store_s3_io_in_valid; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 216:24]
  wire [6:0] store_s3_io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 216:24]
  wire [38:0] store_s3_io_in_bits_vaddr; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_in_bits_mmio; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_valid; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_uop_robIdx_flag; // @[StoreUnit.scala 216:24]
  wire [6:0] store_s3_io_stout_bits_uop_robIdx_value; // @[StoreUnit.scala 216:24]
  wire  store_s3_io_stout_bits_debug_isMMIO; // @[StoreUnit.scala 216:24]
  wire [38:0] store_s3_io_stout_bits_debug_vaddr; // @[StoreUnit.scala 216:24]
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
  wire  pipelineConnect_2_clock; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_reset; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_2_io_in_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_in_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_in_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_2_io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_2_io_in_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_2_io_in_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_2_io_in_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_2_io_in_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_2_io_in_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_in_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_ready; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_valid; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_2_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 50:33]
  wire [2:0] pipelineConnect_2_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_out_bits_uop_pdest; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [6:0] pipelineConnect_2_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [5:0] pipelineConnect_2_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_2_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 50:33]
  wire [38:0] pipelineConnect_2_io_out_bits_vaddr; // @[PipelineConnect.scala 50:33]
  wire [35:0] pipelineConnect_2_io_out_bits_paddr; // @[PipelineConnect.scala 50:33]
  wire [7:0] pipelineConnect_2_io_out_bits_mask; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_wlineflag; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_tlbMiss; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_mmio; // @[PipelineConnect.scala 50:33]
  wire [4:0] pipelineConnect_2_io_out_bits_rsIdx; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 50:33]
  wire  pipelineConnect_2_io_isFlush; // @[PipelineConnect.scala 50:33]
  wire [7:0] _flushItself_T_1 = {store_s0_io_out_bits_uop_robIdx_flag,store_s0_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 35:51]
  wire  differentFlag = store_s0_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare = store_s0_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T = differentFlag ^ compare; // @[CircularQueuePtr.scala 87:19]
  wire [7:0] _flushItself_T_5 = {store_s1_io_out_bits_uop_robIdx_flag,store_s1_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushItself_T_7 = _flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself_1 = io_redirect_bits_level & _flushItself_T_7; // @[Rob.scala 35:51]
  wire  differentFlag_1 = store_s1_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare_1 = store_s1_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T_3 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 87:19]
  reg  store_s2_io_static_pm_REG_valid; // @[StoreUnit.scala 233:35]
  reg  store_s2_io_static_pm_REG_bits; // @[StoreUnit.scala 233:35]
  wire [7:0] _flushItself_T_9 = {store_s2_io_out_bits_uop_robIdx_flag,store_s2_io_out_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushItself_T_11 = _flushItself_T_9 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself_2 = io_redirect_bits_level & _flushItself_T_11; // @[Rob.scala 35:51]
  wire  differentFlag_2 = store_s2_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare_2 = store_s2_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T_6 = differentFlag_2 ^ compare_2; // @[CircularQueuePtr.scala 87:19]
  StoreUnit_S0 store_s0 ( // @[StoreUnit.scala 213:24]
    .io_in_ready(store_s0_io_in_ready),
    .io_in_valid(store_s0_io_in_valid),
    .io_in_bits_uop_cf_trigger_backendEn_0(store_s0_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(store_s0_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(store_s0_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(store_s0_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(store_s0_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(store_s0_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(store_s0_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(store_s0_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(store_s0_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(store_s0_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(store_s0_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(store_s0_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(store_s0_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(store_s0_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_imm(store_s0_io_in_bits_uop_ctrl_imm),
    .io_in_bits_uop_pdest(store_s0_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(store_s0_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(store_s0_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(store_s0_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(store_s0_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(store_s0_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(store_s0_io_in_bits_uop_sqIdx_value),
    .io_in_bits_src_0(store_s0_io_in_bits_src_0),
    .io_rsIdx(store_s0_io_rsIdx),
    .io_out_ready(store_s0_io_out_ready),
    .io_out_valid(store_s0_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_6(store_s0_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_trigger_backendEn_0(store_s0_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(store_s0_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(store_s0_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(store_s0_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(store_s0_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(store_s0_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(store_s0_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(store_s0_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(store_s0_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(store_s0_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(store_s0_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(store_s0_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(store_s0_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(store_s0_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(store_s0_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(store_s0_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(store_s0_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(store_s0_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(store_s0_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(store_s0_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(store_s0_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(store_s0_io_out_bits_vaddr),
    .io_out_bits_mask(store_s0_io_out_bits_mask),
    .io_out_bits_wlineflag(store_s0_io_out_bits_wlineflag),
    .io_out_bits_rsIdx(store_s0_io_out_bits_rsIdx),
    .io_dtlbReq_valid(store_s0_io_dtlbReq_valid),
    .io_dtlbReq_bits_vaddr(store_s0_io_dtlbReq_bits_vaddr)
  );
  StoreUnit_S1 store_s1 ( // @[StoreUnit.scala 214:24]
    .io_in_valid(store_s1_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(store_s1_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(store_s1_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(store_s1_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_13(store_s1_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_trigger_backendEn_0(store_s1_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(store_s1_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(store_s1_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(store_s1_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(store_s1_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(store_s1_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(store_s1_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(store_s1_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(store_s1_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(store_s1_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(store_s1_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(store_s1_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(store_s1_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(store_s1_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(store_s1_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(store_s1_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(store_s1_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(store_s1_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(store_s1_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(store_s1_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(store_s1_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(store_s1_io_in_bits_vaddr),
    .io_in_bits_mask(store_s1_io_in_bits_mask),
    .io_in_bits_wlineflag(store_s1_io_in_bits_wlineflag),
    .io_in_bits_tlbMiss(store_s1_io_in_bits_tlbMiss),
    .io_in_bits_rsIdx(store_s1_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(store_s1_io_in_bits_isSoftPrefetch),
    .io_out_valid(store_s1_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(store_s1_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(store_s1_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(store_s1_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(store_s1_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(store_s1_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(store_s1_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(store_s1_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(store_s1_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(store_s1_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(store_s1_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(store_s1_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(store_s1_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(store_s1_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(store_s1_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(store_s1_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(store_s1_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(store_s1_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(store_s1_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(store_s1_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(store_s1_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(store_s1_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(store_s1_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(store_s1_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(store_s1_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(store_s1_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(store_s1_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(store_s1_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(store_s1_io_out_bits_vaddr),
    .io_out_bits_paddr(store_s1_io_out_bits_paddr),
    .io_out_bits_mask(store_s1_io_out_bits_mask),
    .io_out_bits_wlineflag(store_s1_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(store_s1_io_out_bits_tlbMiss),
    .io_out_bits_mmio(store_s1_io_out_bits_mmio),
    .io_out_bits_rsIdx(store_s1_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(store_s1_io_out_bits_isSoftPrefetch),
    .io_lsq_valid(store_s1_io_lsq_valid),
    .io_lsq_bits_uop_cf_ftqPtr_value(store_s1_io_lsq_bits_uop_cf_ftqPtr_value),
    .io_lsq_bits_uop_cf_ftqOffset(store_s1_io_lsq_bits_uop_cf_ftqOffset),
    .io_lsq_bits_uop_ctrl_fuOpType(store_s1_io_lsq_bits_uop_ctrl_fuOpType),
    .io_lsq_bits_uop_robIdx_flag(store_s1_io_lsq_bits_uop_robIdx_flag),
    .io_lsq_bits_uop_robIdx_value(store_s1_io_lsq_bits_uop_robIdx_value),
    .io_lsq_bits_uop_lqIdx_flag(store_s1_io_lsq_bits_uop_lqIdx_flag),
    .io_lsq_bits_uop_lqIdx_value(store_s1_io_lsq_bits_uop_lqIdx_value),
    .io_lsq_bits_uop_sqIdx_value(store_s1_io_lsq_bits_uop_sqIdx_value),
    .io_lsq_bits_vaddr(store_s1_io_lsq_bits_vaddr),
    .io_lsq_bits_paddr(store_s1_io_lsq_bits_paddr),
    .io_lsq_bits_mask(store_s1_io_lsq_bits_mask),
    .io_lsq_bits_wlineflag(store_s1_io_lsq_bits_wlineflag),
    .io_lsq_bits_miss(store_s1_io_lsq_bits_miss),
    .io_dtlbResp_bits_paddr(store_s1_io_dtlbResp_bits_paddr),
    .io_dtlbResp_bits_miss(store_s1_io_dtlbResp_bits_miss),
    .io_dtlbResp_bits_excp_pf_st(store_s1_io_dtlbResp_bits_excp_pf_st),
    .io_dtlbResp_bits_excp_af_st(store_s1_io_dtlbResp_bits_excp_af_st),
    .io_rsFeedback_valid(store_s1_io_rsFeedback_valid),
    .io_rsFeedback_bits_rsIdx(store_s1_io_rsFeedback_bits_rsIdx),
    .io_rsFeedback_bits_hit(store_s1_io_rsFeedback_bits_hit)
  );
  StoreUnit_S2 store_s2 ( // @[StoreUnit.scala 215:24]
    .io_in_valid(store_s2_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(store_s2_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(store_s2_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(store_s2_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(store_s2_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_13(store_s2_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(store_s2_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(store_s2_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(store_s2_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(store_s2_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(store_s2_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(store_s2_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(store_s2_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(store_s2_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(store_s2_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(store_s2_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(store_s2_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(store_s2_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(store_s2_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(store_s2_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(store_s2_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(store_s2_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(store_s2_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(store_s2_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(store_s2_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(store_s2_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(store_s2_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(store_s2_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(store_s2_io_in_bits_vaddr),
    .io_in_bits_paddr(store_s2_io_in_bits_paddr),
    .io_in_bits_mask(store_s2_io_in_bits_mask),
    .io_in_bits_wlineflag(store_s2_io_in_bits_wlineflag),
    .io_in_bits_tlbMiss(store_s2_io_in_bits_tlbMiss),
    .io_in_bits_mmio(store_s2_io_in_bits_mmio),
    .io_in_bits_rsIdx(store_s2_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(store_s2_io_in_bits_isSoftPrefetch),
    .io_pmpResp_st(store_s2_io_pmpResp_st),
    .io_pmpResp_mmio(store_s2_io_pmpResp_mmio),
    .io_static_pm_valid(store_s2_io_static_pm_valid),
    .io_static_pm_bits(store_s2_io_static_pm_bits),
    .io_out_valid(store_s2_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(store_s2_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(store_s2_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(store_s2_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(store_s2_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(store_s2_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(store_s2_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(store_s2_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(store_s2_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(store_s2_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(store_s2_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(store_s2_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(store_s2_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(store_s2_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(store_s2_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(store_s2_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(store_s2_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(store_s2_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(store_s2_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(store_s2_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(store_s2_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(store_s2_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(store_s2_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(store_s2_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(store_s2_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(store_s2_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(store_s2_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(store_s2_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(store_s2_io_out_bits_vaddr),
    .io_out_bits_paddr(store_s2_io_out_bits_paddr),
    .io_out_bits_mask(store_s2_io_out_bits_mask),
    .io_out_bits_wlineflag(store_s2_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(store_s2_io_out_bits_tlbMiss),
    .io_out_bits_mmio(store_s2_io_out_bits_mmio),
    .io_out_bits_rsIdx(store_s2_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(store_s2_io_out_bits_isSoftPrefetch)
  );
  StoreUnit_S3 store_s3 ( // @[StoreUnit.scala 216:24]
    .io_in_valid(store_s3_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(store_s3_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(store_s3_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(store_s3_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(store_s3_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_13(store_s3_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(store_s3_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(store_s3_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendHit_0(store_s3_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(store_s3_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(store_s3_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(store_s3_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(store_s3_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(store_s3_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_robIdx_flag(store_s3_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(store_s3_io_in_bits_uop_robIdx_value),
    .io_in_bits_vaddr(store_s3_io_in_bits_vaddr),
    .io_in_bits_mmio(store_s3_io_in_bits_mmio),
    .io_stout_valid(store_s3_io_stout_valid),
    .io_stout_bits_uop_cf_exceptionVec_4(store_s3_io_stout_bits_uop_cf_exceptionVec_4),
    .io_stout_bits_uop_cf_exceptionVec_5(store_s3_io_stout_bits_uop_cf_exceptionVec_5),
    .io_stout_bits_uop_cf_exceptionVec_6(store_s3_io_stout_bits_uop_cf_exceptionVec_6),
    .io_stout_bits_uop_cf_exceptionVec_7(store_s3_io_stout_bits_uop_cf_exceptionVec_7),
    .io_stout_bits_uop_cf_exceptionVec_13(store_s3_io_stout_bits_uop_cf_exceptionVec_13),
    .io_stout_bits_uop_cf_exceptionVec_15(store_s3_io_stout_bits_uop_cf_exceptionVec_15),
    .io_stout_bits_uop_cf_trigger_backendEn_0(store_s3_io_stout_bits_uop_cf_trigger_backendEn_0),
    .io_stout_bits_uop_cf_trigger_backendHit_0(store_s3_io_stout_bits_uop_cf_trigger_backendHit_0),
    .io_stout_bits_uop_cf_trigger_backendHit_1(store_s3_io_stout_bits_uop_cf_trigger_backendHit_1),
    .io_stout_bits_uop_cf_trigger_backendHit_2(store_s3_io_stout_bits_uop_cf_trigger_backendHit_2),
    .io_stout_bits_uop_cf_trigger_backendHit_3(store_s3_io_stout_bits_uop_cf_trigger_backendHit_3),
    .io_stout_bits_uop_cf_trigger_backendHit_4(store_s3_io_stout_bits_uop_cf_trigger_backendHit_4),
    .io_stout_bits_uop_cf_trigger_backendHit_5(store_s3_io_stout_bits_uop_cf_trigger_backendHit_5),
    .io_stout_bits_uop_robIdx_flag(store_s3_io_stout_bits_uop_robIdx_flag),
    .io_stout_bits_uop_robIdx_value(store_s3_io_stout_bits_uop_robIdx_value),
    .io_stout_bits_debug_isMMIO(store_s3_io_stout_bits_debug_isMMIO),
    .io_stout_bits_debug_vaddr(store_s3_io_stout_bits_debug_vaddr)
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
  PipelineConnectModule_17 pipelineConnect_2 ( // @[PipelineConnect.scala 50:33]
    .clock(pipelineConnect_2_clock),
    .reset(pipelineConnect_2_reset),
    .io_in_ready(pipelineConnect_2_io_in_ready),
    .io_in_valid(pipelineConnect_2_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_4(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_4),
    .io_in_bits_uop_cf_exceptionVec_5(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_5),
    .io_in_bits_uop_cf_exceptionVec_6(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_6),
    .io_in_bits_uop_cf_exceptionVec_7(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_7),
    .io_in_bits_uop_cf_exceptionVec_13(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_13),
    .io_in_bits_uop_cf_exceptionVec_15(pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_15),
    .io_in_bits_uop_cf_trigger_backendEn_0(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_0),
    .io_in_bits_uop_cf_trigger_backendEn_1(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_cf_ftqPtr_flag(pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_flag),
    .io_in_bits_uop_cf_ftqPtr_value(pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_value),
    .io_in_bits_uop_cf_ftqOffset(pipelineConnect_2_io_in_bits_uop_cf_ftqOffset),
    .io_in_bits_uop_ctrl_fuOpType(pipelineConnect_2_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(pipelineConnect_2_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(pipelineConnect_2_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(pipelineConnect_2_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(pipelineConnect_2_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(pipelineConnect_2_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(pipelineConnect_2_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(pipelineConnect_2_io_in_bits_uop_lqIdx_value),
    .io_in_bits_uop_sqIdx_flag(pipelineConnect_2_io_in_bits_uop_sqIdx_flag),
    .io_in_bits_uop_sqIdx_value(pipelineConnect_2_io_in_bits_uop_sqIdx_value),
    .io_in_bits_vaddr(pipelineConnect_2_io_in_bits_vaddr),
    .io_in_bits_paddr(pipelineConnect_2_io_in_bits_paddr),
    .io_in_bits_mask(pipelineConnect_2_io_in_bits_mask),
    .io_in_bits_wlineflag(pipelineConnect_2_io_in_bits_wlineflag),
    .io_in_bits_tlbMiss(pipelineConnect_2_io_in_bits_tlbMiss),
    .io_in_bits_mmio(pipelineConnect_2_io_in_bits_mmio),
    .io_in_bits_rsIdx(pipelineConnect_2_io_in_bits_rsIdx),
    .io_in_bits_isSoftPrefetch(pipelineConnect_2_io_in_bits_isSoftPrefetch),
    .io_out_ready(pipelineConnect_2_io_out_ready),
    .io_out_valid(pipelineConnect_2_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_4(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_4),
    .io_out_bits_uop_cf_exceptionVec_5(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_5),
    .io_out_bits_uop_cf_exceptionVec_6(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_6),
    .io_out_bits_uop_cf_exceptionVec_7(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_7),
    .io_out_bits_uop_cf_exceptionVec_13(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_13),
    .io_out_bits_uop_cf_exceptionVec_15(pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_15),
    .io_out_bits_uop_cf_trigger_backendEn_0(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendEn_0),
    .io_out_bits_uop_cf_trigger_backendEn_1(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendEn_1),
    .io_out_bits_uop_cf_trigger_backendHit_0(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_cf_ftqPtr_flag(pipelineConnect_2_io_out_bits_uop_cf_ftqPtr_flag),
    .io_out_bits_uop_cf_ftqPtr_value(pipelineConnect_2_io_out_bits_uop_cf_ftqPtr_value),
    .io_out_bits_uop_cf_ftqOffset(pipelineConnect_2_io_out_bits_uop_cf_ftqOffset),
    .io_out_bits_uop_ctrl_fuOpType(pipelineConnect_2_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_ctrl_rfWen(pipelineConnect_2_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(pipelineConnect_2_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(pipelineConnect_2_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(pipelineConnect_2_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(pipelineConnect_2_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(pipelineConnect_2_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(pipelineConnect_2_io_out_bits_uop_lqIdx_value),
    .io_out_bits_uop_sqIdx_flag(pipelineConnect_2_io_out_bits_uop_sqIdx_flag),
    .io_out_bits_uop_sqIdx_value(pipelineConnect_2_io_out_bits_uop_sqIdx_value),
    .io_out_bits_vaddr(pipelineConnect_2_io_out_bits_vaddr),
    .io_out_bits_paddr(pipelineConnect_2_io_out_bits_paddr),
    .io_out_bits_mask(pipelineConnect_2_io_out_bits_mask),
    .io_out_bits_wlineflag(pipelineConnect_2_io_out_bits_wlineflag),
    .io_out_bits_tlbMiss(pipelineConnect_2_io_out_bits_tlbMiss),
    .io_out_bits_mmio(pipelineConnect_2_io_out_bits_mmio),
    .io_out_bits_rsIdx(pipelineConnect_2_io_out_bits_rsIdx),
    .io_out_bits_isSoftPrefetch(pipelineConnect_2_io_out_bits_isSoftPrefetch),
    .io_isFlush(pipelineConnect_2_io_isFlush)
  );
  assign io_stin_ready = store_s0_io_in_ready; // @[StoreUnit.scala 218:18]
  assign io_feedbackSlow_valid = store_s1_io_rsFeedback_valid; // @[StoreUnit.scala 227:26]
  assign io_feedbackSlow_bits_rsIdx = store_s1_io_rsFeedback_bits_rsIdx; // @[StoreUnit.scala 227:26]
  assign io_feedbackSlow_bits_hit = store_s1_io_rsFeedback_bits_hit; // @[StoreUnit.scala 227:26]
  assign io_tlb_req_valid = store_s0_io_dtlbReq_valid; // @[StoreUnit.scala 219:23]
  assign io_tlb_req_bits_vaddr = store_s0_io_dtlbReq_bits_vaddr; // @[StoreUnit.scala 219:23]
  assign io_lsq_valid = store_s1_io_lsq_valid; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_cf_ftqPtr_value = store_s1_io_lsq_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_cf_ftqOffset = store_s1_io_lsq_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_ctrl_fuOpType = store_s1_io_lsq_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_robIdx_flag = store_s1_io_lsq_bits_uop_robIdx_flag; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_robIdx_value = store_s1_io_lsq_bits_uop_robIdx_value; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_lqIdx_flag = store_s1_io_lsq_bits_uop_lqIdx_flag; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_lqIdx_value = store_s1_io_lsq_bits_uop_lqIdx_value; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_uop_sqIdx_value = store_s1_io_lsq_bits_uop_sqIdx_value; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_vaddr = store_s1_io_lsq_bits_vaddr; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_paddr = store_s1_io_lsq_bits_paddr; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_mask = store_s1_io_lsq_bits_mask; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_wlineflag = store_s1_io_lsq_bits_wlineflag; // @[StoreUnit.scala 228:10]
  assign io_lsq_bits_miss = store_s1_io_lsq_bits_miss; // @[StoreUnit.scala 228:10]
  assign io_lsq_replenish_mmio = store_s2_io_out_bits_mmio; // @[StoreUnit.scala 234:20]
  assign io_stout_valid = store_s3_io_stout_valid; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_4 = store_s3_io_stout_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_5 = store_s3_io_stout_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_6 = store_s3_io_stout_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_7 = store_s3_io_stout_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_13 = store_s3_io_stout_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_exceptionVec_15 = store_s3_io_stout_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendEn_0 = store_s3_io_stout_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_0 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_1 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_2 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_3 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_4 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_5 = store_s3_io_stout_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_robIdx_flag = store_s3_io_stout_bits_uop_robIdx_flag; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_uop_robIdx_value = store_s3_io_stout_bits_uop_robIdx_value; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_debug_isMMIO = store_s3_io_stout_bits_debug_isMMIO; // @[StoreUnit.scala 237:21]
  assign io_stout_bits_debug_vaddr = store_s3_io_stout_bits_debug_vaddr; // @[StoreUnit.scala 237:21]
  assign store_s0_io_in_valid = io_stin_valid; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendEn_0 = io_stin_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendEn_1 = io_stin_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_0 = io_stin_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_1 = io_stin_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_2 = io_stin_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_3 = io_stin_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_4 = io_stin_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_trigger_backendHit_5 = io_stin_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_ftqPtr_flag = io_stin_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_ftqPtr_value = io_stin_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_cf_ftqOffset = io_stin_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_ctrl_fuOpType = io_stin_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_ctrl_rfWen = io_stin_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_ctrl_fpWen = io_stin_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_ctrl_imm = io_stin_bits_uop_ctrl_imm; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_pdest = io_stin_bits_uop_pdest; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_robIdx_flag = io_stin_bits_uop_robIdx_flag; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_robIdx_value = io_stin_bits_uop_robIdx_value; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_lqIdx_flag = io_stin_bits_uop_lqIdx_flag; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_lqIdx_value = io_stin_bits_uop_lqIdx_value; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_sqIdx_flag = io_stin_bits_uop_sqIdx_flag; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_uop_sqIdx_value = io_stin_bits_uop_sqIdx_value; // @[StoreUnit.scala 218:18]
  assign store_s0_io_in_bits_src_0 = io_stin_bits_src_0; // @[StoreUnit.scala 218:18]
  assign store_s0_io_rsIdx = io_rsIdx; // @[StoreUnit.scala 220:21]
  assign store_s0_io_out_ready = pipelineConnect_io_in_ready; // @[PipelineConnect.scala 52:27]
  assign store_s1_io_in_valid = pipelineConnect_io_out_valid; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_exceptionVec_4 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_exceptionVec_5 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_exceptionVec_6 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_exceptionVec_13 = pipelineConnect_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendEn_0 = pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendEn_1 = pipelineConnect_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_0 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_1 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_2 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_3 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_4 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_trigger_backendHit_5 = pipelineConnect_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_ftqPtr_flag = pipelineConnect_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_ftqPtr_value = pipelineConnect_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_cf_ftqOffset = pipelineConnect_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_ctrl_fuOpType = pipelineConnect_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_ctrl_rfWen = pipelineConnect_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_ctrl_fpWen = pipelineConnect_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_pdest = pipelineConnect_io_out_bits_uop_pdest; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_robIdx_flag = pipelineConnect_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_robIdx_value = pipelineConnect_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_lqIdx_flag = pipelineConnect_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_lqIdx_value = pipelineConnect_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_sqIdx_flag = pipelineConnect_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_uop_sqIdx_value = pipelineConnect_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_vaddr = pipelineConnect_io_out_bits_vaddr; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_mask = pipelineConnect_io_out_bits_mask; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_wlineflag = pipelineConnect_io_out_bits_wlineflag; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_tlbMiss = pipelineConnect_io_out_bits_tlbMiss; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_rsIdx = pipelineConnect_io_out_bits_rsIdx; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_in_bits_isSoftPrefetch = pipelineConnect_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 56:11]
  assign store_s1_io_dtlbResp_bits_paddr = io_tlb_resp_bits_paddr; // @[StoreUnit.scala 226:24]
  assign store_s1_io_dtlbResp_bits_miss = io_tlb_resp_bits_miss; // @[StoreUnit.scala 226:24]
  assign store_s1_io_dtlbResp_bits_excp_pf_st = io_tlb_resp_bits_excp_pf_st; // @[StoreUnit.scala 226:24]
  assign store_s1_io_dtlbResp_bits_excp_af_st = io_tlb_resp_bits_excp_af_st; // @[StoreUnit.scala 226:24]
  assign store_s2_io_in_valid = pipelineConnect_1_io_out_valid; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_4 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_5 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_6 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_7 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_13 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_exceptionVec_15 = pipelineConnect_1_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendEn_0 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendEn_1 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_0 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_1 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_2 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_3 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_4 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_trigger_backendHit_5 = pipelineConnect_1_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_ftqPtr_flag = pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_ftqPtr_value = pipelineConnect_1_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_cf_ftqOffset = pipelineConnect_1_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_ctrl_fuOpType = pipelineConnect_1_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_ctrl_rfWen = pipelineConnect_1_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_ctrl_fpWen = pipelineConnect_1_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_pdest = pipelineConnect_1_io_out_bits_uop_pdest; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_robIdx_flag = pipelineConnect_1_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_robIdx_value = pipelineConnect_1_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_lqIdx_flag = pipelineConnect_1_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_lqIdx_value = pipelineConnect_1_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_sqIdx_flag = pipelineConnect_1_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_uop_sqIdx_value = pipelineConnect_1_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_vaddr = pipelineConnect_1_io_out_bits_vaddr; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_paddr = pipelineConnect_1_io_out_bits_paddr; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_mask = pipelineConnect_1_io_out_bits_mask; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_wlineflag = pipelineConnect_1_io_out_bits_wlineflag; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_tlbMiss = pipelineConnect_1_io_out_bits_tlbMiss; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_mmio = pipelineConnect_1_io_out_bits_mmio; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_rsIdx = pipelineConnect_1_io_out_bits_rsIdx; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_in_bits_isSoftPrefetch = pipelineConnect_1_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 56:11]
  assign store_s2_io_pmpResp_st = io_pmp_st; // @[StoreUnit.scala 232:23]
  assign store_s2_io_pmpResp_mmio = io_pmp_mmio; // @[StoreUnit.scala 232:23]
  assign store_s2_io_static_pm_valid = store_s2_io_static_pm_REG_valid; // @[StoreUnit.scala 233:25]
  assign store_s2_io_static_pm_bits = store_s2_io_static_pm_REG_bits; // @[StoreUnit.scala 233:25]
  assign store_s3_io_in_valid = pipelineConnect_2_io_out_valid; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_4 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_5 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_6 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_7 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_13 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_exceptionVec_15 = pipelineConnect_2_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendEn_0 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_0 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_1 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_2 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_3 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_4 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_cf_trigger_backendHit_5 = pipelineConnect_2_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_robIdx_flag = pipelineConnect_2_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_uop_robIdx_value = pipelineConnect_2_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_vaddr = pipelineConnect_2_io_out_bits_vaddr; // @[PipelineConnect.scala 56:11]
  assign store_s3_io_in_bits_mmio = pipelineConnect_2_io_out_bits_mmio; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_clock = clock;
  assign pipelineConnect_reset = reset;
  assign pipelineConnect_io_in_valid = store_s0_io_out_valid; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_4 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_5 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_6 = store_s0_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_7 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_13 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_exceptionVec_15 = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_0 = store_s0_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendEn_1 = store_s0_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_0 = store_s0_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_1 = store_s0_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_2 = store_s0_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_3 = store_s0_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_4 = store_s0_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_trigger_backendHit_5 = store_s0_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqPtr_flag = store_s0_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqPtr_value = store_s0_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_cf_ftqOffset = store_s0_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_fuOpType = store_s0_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_rfWen = store_s0_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_ctrl_fpWen = store_s0_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_pdest = store_s0_io_out_bits_uop_pdest; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_robIdx_flag = store_s0_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_robIdx_value = store_s0_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_lqIdx_flag = store_s0_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_lqIdx_value = store_s0_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_sqIdx_flag = store_s0_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_uop_sqIdx_value = store_s0_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_vaddr = store_s0_io_out_bits_vaddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_paddr = 36'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_mask = store_s0_io_out_bits_mask; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_wlineflag = store_s0_io_out_bits_wlineflag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_tlbMiss = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_mmio = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_rsIdx = store_s0_io_out_bits_rsIdx; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_in_bits_isSoftPrefetch = 1'h0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_io_out_ready = 1'h1; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_io_isFlush = io_redirect_valid & (flushItself | _T); // @[Rob.scala 36:20]
  assign pipelineConnect_1_clock = clock;
  assign pipelineConnect_1_reset = reset;
  assign pipelineConnect_1_io_in_valid = store_s1_io_out_valid; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_4 = store_s1_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_5 = store_s1_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_6 = store_s1_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_7 = store_s1_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_13 = store_s1_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_exceptionVec_15 = store_s1_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_0 = store_s1_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendEn_1 = store_s1_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_0 = store_s1_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_1 = store_s1_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_2 = store_s1_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_3 = store_s1_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_4 = store_s1_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_trigger_backendHit_5 = store_s1_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_flag = store_s1_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqPtr_value = store_s1_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_cf_ftqOffset = store_s1_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_fuOpType = store_s1_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_rfWen = store_s1_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_ctrl_fpWen = store_s1_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_pdest = store_s1_io_out_bits_uop_pdest; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_robIdx_flag = store_s1_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_robIdx_value = store_s1_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_lqIdx_flag = store_s1_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_lqIdx_value = store_s1_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_sqIdx_flag = store_s1_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_uop_sqIdx_value = store_s1_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_vaddr = store_s1_io_out_bits_vaddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_paddr = store_s1_io_out_bits_paddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_mask = store_s1_io_out_bits_mask; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_wlineflag = store_s1_io_out_bits_wlineflag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_tlbMiss = store_s1_io_out_bits_tlbMiss; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_mmio = store_s1_io_out_bits_mmio; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_rsIdx = store_s1_io_out_bits_rsIdx; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_in_bits_isSoftPrefetch = store_s1_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_1_io_out_ready = 1'h1; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_1_io_isFlush = io_redirect_valid & (flushItself_1 | _T_3); // @[Rob.scala 36:20]
  assign pipelineConnect_2_clock = clock;
  assign pipelineConnect_2_reset = reset;
  assign pipelineConnect_2_io_in_valid = store_s2_io_out_valid; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_4 = store_s2_io_out_bits_uop_cf_exceptionVec_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_5 = store_s2_io_out_bits_uop_cf_exceptionVec_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_6 = store_s2_io_out_bits_uop_cf_exceptionVec_6; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_7 = store_s2_io_out_bits_uop_cf_exceptionVec_7; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_13 = store_s2_io_out_bits_uop_cf_exceptionVec_13; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_exceptionVec_15 = store_s2_io_out_bits_uop_cf_exceptionVec_15; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_0 = store_s2_io_out_bits_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendEn_1 = store_s2_io_out_bits_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_0 = store_s2_io_out_bits_uop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_1 = store_s2_io_out_bits_uop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_2 = store_s2_io_out_bits_uop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_3 = store_s2_io_out_bits_uop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_4 = store_s2_io_out_bits_uop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_trigger_backendHit_5 = store_s2_io_out_bits_uop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_flag = store_s2_io_out_bits_uop_cf_ftqPtr_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_ftqPtr_value = store_s2_io_out_bits_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_cf_ftqOffset = store_s2_io_out_bits_uop_cf_ftqOffset; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_ctrl_fuOpType = store_s2_io_out_bits_uop_ctrl_fuOpType; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_ctrl_rfWen = store_s2_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_ctrl_fpWen = store_s2_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_pdest = store_s2_io_out_bits_uop_pdest; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_robIdx_flag = store_s2_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_robIdx_value = store_s2_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_lqIdx_flag = store_s2_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_lqIdx_value = store_s2_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_sqIdx_flag = store_s2_io_out_bits_uop_sqIdx_flag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_uop_sqIdx_value = store_s2_io_out_bits_uop_sqIdx_value; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_vaddr = store_s2_io_out_bits_vaddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_paddr = store_s2_io_out_bits_paddr; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_mask = store_s2_io_out_bits_mask; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_wlineflag = store_s2_io_out_bits_wlineflag; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_tlbMiss = store_s2_io_out_bits_tlbMiss; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_mmio = store_s2_io_out_bits_mmio; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_rsIdx = store_s2_io_out_bits_rsIdx; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_in_bits_isSoftPrefetch = store_s2_io_out_bits_isSoftPrefetch; // @[PipelineConnect.scala 52:27]
  assign pipelineConnect_2_io_out_ready = 1'h1; // @[PipelineConnect.scala 56:11]
  assign pipelineConnect_2_io_isFlush = io_redirect_valid & (flushItself_2 | _T_6); // @[Rob.scala 36:20]
  always @(posedge clock) begin
    store_s2_io_static_pm_REG_valid <= io_tlb_resp_bits_static_pm_valid; // @[StoreUnit.scala 233:35]
    store_s2_io_static_pm_REG_bits <= io_tlb_resp_bits_static_pm_bits; // @[StoreUnit.scala 233:35]
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
  store_s2_io_static_pm_REG_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  store_s2_io_static_pm_REG_bits = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
