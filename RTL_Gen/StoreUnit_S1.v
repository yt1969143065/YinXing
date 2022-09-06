module StoreUnit_S1(
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [5:0]  io_in_bits_uop_lqIdx_value,
  input         io_in_bits_uop_sqIdx_flag,
  input  [4:0]  io_in_bits_uop_sqIdx_value,
  input  [38:0] io_in_bits_vaddr,
  input  [7:0]  io_in_bits_mask,
  input         io_in_bits_wlineflag,
  input         io_in_bits_tlbMiss,
  input  [4:0]  io_in_bits_rsIdx,
  input         io_in_bits_isSoftPrefetch,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_4,
  output        io_out_bits_uop_cf_exceptionVec_5,
  output        io_out_bits_uop_cf_exceptionVec_6,
  output        io_out_bits_uop_cf_exceptionVec_7,
  output        io_out_bits_uop_cf_exceptionVec_13,
  output        io_out_bits_uop_cf_exceptionVec_15,
  output        io_out_bits_uop_cf_trigger_backendEn_0,
  output        io_out_bits_uop_cf_trigger_backendEn_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_out_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_out_bits_uop_cf_ftqOffset,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [5:0]  io_out_bits_uop_lqIdx_value,
  output        io_out_bits_uop_sqIdx_flag,
  output [4:0]  io_out_bits_uop_sqIdx_value,
  output [38:0] io_out_bits_vaddr,
  output [35:0] io_out_bits_paddr,
  output [7:0]  io_out_bits_mask,
  output        io_out_bits_wlineflag,
  output        io_out_bits_tlbMiss,
  output        io_out_bits_mmio,
  output [4:0]  io_out_bits_rsIdx,
  output        io_out_bits_isSoftPrefetch,
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
  input  [35:0] io_dtlbResp_bits_paddr,
  input         io_dtlbResp_bits_miss,
  input         io_dtlbResp_bits_excp_pf_st,
  input         io_dtlbResp_bits_excp_af_st,
  output        io_rsFeedback_valid,
  output [4:0]  io_rsFeedback_bits_rsIdx,
  output        io_rsFeedback_bits_hit
);
  wire  _is_mmio_cbo_T_1 = io_in_bits_uop_ctrl_fuOpType == 7'hd; // @[StoreUnit.scala 104:34]
  wire  _is_mmio_cbo_T_2 = io_in_bits_uop_ctrl_fuOpType == 7'hc | _is_mmio_cbo_T_1; // @[StoreUnit.scala 103:74]
  wire  _is_mmio_cbo_T_3 = io_in_bits_uop_ctrl_fuOpType == 7'he; // @[StoreUnit.scala 105:34]
  wire  _io_rsFeedback_bits_hit_T = ~io_dtlbResp_bits_miss; // @[StoreUnit.scala 118:29]
  assign io_out_valid = io_in_valid & _io_rsFeedback_bits_hit_T; // @[StoreUnit.scala 131:31]
  assign io_out_bits_uop_cf_exceptionVec_4 = io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_exceptionVec_5 = io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_exceptionVec_6 = io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_exceptionVec_7 = io_dtlbResp_bits_excp_af_st; // @[StoreUnit.scala 137:53]
  assign io_out_bits_uop_cf_exceptionVec_13 = io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_exceptionVec_15 = io_dtlbResp_bits_excp_pf_st; // @[StoreUnit.scala 136:51]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 132:15]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 132:15]
  assign io_out_bits_vaddr = io_in_bits_vaddr; // @[StoreUnit.scala 132:15]
  assign io_out_bits_paddr = io_dtlbResp_bits_paddr; // @[StoreUnit.scala 133:21]
  assign io_out_bits_mask = io_in_bits_mask; // @[StoreUnit.scala 132:15]
  assign io_out_bits_wlineflag = io_in_bits_wlineflag; // @[StoreUnit.scala 132:15]
  assign io_out_bits_tlbMiss = io_in_bits_tlbMiss; // @[StoreUnit.scala 132:15]
  assign io_out_bits_mmio = _is_mmio_cbo_T_2 | _is_mmio_cbo_T_3; // @[StoreUnit.scala 104:58]
  assign io_out_bits_rsIdx = io_in_bits_rsIdx; // @[StoreUnit.scala 132:15]
  assign io_out_bits_isSoftPrefetch = io_in_bits_isSoftPrefetch; // @[StoreUnit.scala 132:15]
  assign io_lsq_valid = io_in_valid; // @[StoreUnit.scala 139:16]
  assign io_lsq_bits_uop_cf_ftqPtr_value = io_out_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_cf_ftqOffset = io_out_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_ctrl_fuOpType = io_out_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_robIdx_flag = io_out_bits_uop_robIdx_flag; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_robIdx_value = io_out_bits_uop_robIdx_value; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_lqIdx_flag = io_out_bits_uop_lqIdx_flag; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_lqIdx_value = io_out_bits_uop_lqIdx_value; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_uop_sqIdx_value = io_out_bits_uop_sqIdx_value; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_vaddr = io_out_bits_vaddr; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_paddr = io_out_bits_paddr; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_mask = io_out_bits_mask; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_wlineflag = io_out_bits_wlineflag; // @[StoreUnit.scala 140:15]
  assign io_lsq_bits_miss = io_dtlbResp_bits_miss; // @[StoreUnit.scala 141:20]
  assign io_rsFeedback_valid = io_in_valid; // @[StoreUnit.scala 117:23]
  assign io_rsFeedback_bits_rsIdx = io_in_bits_rsIdx; // @[StoreUnit.scala 120:28]
  assign io_rsFeedback_bits_hit = ~io_dtlbResp_bits_miss; // @[StoreUnit.scala 118:29]
endmodule
