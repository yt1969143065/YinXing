module StoreUnit_S2(
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_7,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_exceptionVec_15,
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
  input  [35:0] io_in_bits_paddr,
  input  [7:0]  io_in_bits_mask,
  input         io_in_bits_wlineflag,
  input         io_in_bits_tlbMiss,
  input         io_in_bits_mmio,
  input  [4:0]  io_in_bits_rsIdx,
  input         io_in_bits_isSoftPrefetch,
  input         io_pmpResp_st,
  input         io_pmpResp_mmio,
  input         io_static_pm_valid,
  input         io_static_pm_bits,
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
  output        io_out_bits_isSoftPrefetch
);
  wire  pmp_st = io_static_pm_valid ? 1'h0 : io_pmpResp_st; // @[StoreUnit.scala 161:29 163:12]
  wire  pmp_mmio = io_static_pm_valid ? io_static_pm_bits : io_pmpResp_mmio; // @[StoreUnit.scala 161:29 165:14]
  wire [15:0] _s2_exception_T = {io_out_bits_uop_cf_exceptionVec_15,1'h0,2'h0,4'h0,io_out_bits_uop_cf_exceptionVec_7,
    io_out_bits_uop_cf_exceptionVec_6,2'h0,4'h0}; // @[StoreUnit.scala 168:86]
  wire  s2_exception = |_s2_exception_T; // @[StoreUnit.scala 168:93]
  wire  is_mmio = io_in_bits_mmio | pmp_mmio; // @[StoreUnit.scala 169:33]
  assign io_out_valid = io_in_valid & (~is_mmio | s2_exception); // @[StoreUnit.scala 175:31]
  assign io_out_bits_uop_cf_exceptionVec_4 = io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_exceptionVec_5 = io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_exceptionVec_6 = io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_exceptionVec_7 = io_in_bits_uop_cf_exceptionVec_7 | pmp_st; // @[StoreUnit.scala 174:105]
  assign io_out_bits_uop_cf_exceptionVec_13 = io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_exceptionVec_15 = io_in_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 172:15]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 172:15]
  assign io_out_bits_vaddr = io_in_bits_vaddr; // @[StoreUnit.scala 172:15]
  assign io_out_bits_paddr = io_in_bits_paddr; // @[StoreUnit.scala 172:15]
  assign io_out_bits_mask = io_in_bits_mask; // @[StoreUnit.scala 172:15]
  assign io_out_bits_wlineflag = io_in_bits_wlineflag; // @[StoreUnit.scala 172:15]
  assign io_out_bits_tlbMiss = io_in_bits_tlbMiss; // @[StoreUnit.scala 172:15]
  assign io_out_bits_mmio = is_mmio & ~s2_exception; // @[StoreUnit.scala 173:31]
  assign io_out_bits_rsIdx = io_in_bits_rsIdx; // @[StoreUnit.scala 172:15]
  assign io_out_bits_isSoftPrefetch = io_in_bits_isSoftPrefetch; // @[StoreUnit.scala 172:15]
endmodule
