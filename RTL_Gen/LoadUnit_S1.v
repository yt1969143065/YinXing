module LoadUnit_S1(
  input         clock,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_7,
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
  input  [7:0]  io_in_bits_mask,
  input         io_in_bits_wlineflag,
  input         io_in_bits_mmio,
  input  [4:0]  io_in_bits_rsIdx,
  input         io_in_bits_isSoftPrefetch,
  input         io_out_ready,
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
  input  [35:0] io_dtlbResp_bits_paddr,
  input         io_dtlbResp_bits_miss,
  input         io_dtlbResp_bits_fast_miss,
  input         io_dtlbResp_bits_excp_pf_ld,
  input         io_dtlbResp_bits_excp_af_ld,
  output [35:0] io_dcachePAddr,
  output        io_dcacheKill,
  output        io_fastUopKill,
  input         io_dcacheBankConflict,
  output [38:0] io_sbuffer_vaddr,
  output [35:0] io_sbuffer_paddr,
  output        io_sbuffer_valid,
  output [38:0] io_lsq_vaddr,
  output [35:0] io_lsq_paddr,
  output [7:0]  io_lsq_mask,
  output        io_lsq_uop_cf_ftqPtr_flag,
  output [5:0]  io_lsq_uop_cf_ftqPtr_value,
  output [2:0]  io_lsq_uop_cf_ftqOffset,
  output        io_lsq_uop_robIdx_flag,
  output [6:0]  io_lsq_uop_robIdx_value,
  output        io_lsq_valid,
  output        io_lsq_sqIdx_flag,
  input         io_loadViolationQueryReq_ready,
  output        io_loadViolationQueryReq_valid,
  output        io_loadViolationQueryReq_bits_uop_lqIdx_flag,
  output [5:0]  io_loadViolationQueryReq_bits_uop_lqIdx_value,
  output [35:0] io_loadViolationQueryReq_bits_paddr,
  output        io_rsFeedback_valid,
  output [4:0]  io_rsFeedback_bits_rsIdx,
  output [2:0]  io_rsFeedback_bits_sourceType,
  input         io_csrCtrl_ldld_vio_check_enable,
  output        io_needLdVioCheckRedo
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [15:0] _s1_exception_T = {2'h0,io_out_bits_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    io_out_bits_uop_cf_exceptionVec_5,io_out_bits_uop_cf_exceptionVec_4,4'h0}; // @[LoadUnit.scala 188:86]
  wire  s1_exception = |_s1_exception_T; // @[LoadUnit.scala 188:93]
  wire  _io_sbuffer_valid_T_1 = ~(s1_exception | io_dtlbResp_bits_miss); // @[LoadUnit.scala 204:38]
  wire  _needLdVioCheckRedo_T = ~io_loadViolationQueryReq_ready; // @[LoadUnit.scala 234:5]
  wire  _needLdVioCheckRedo_T_1 = io_loadViolationQueryReq_valid & _needLdVioCheckRedo_T; // @[LoadUnit.scala 233:59]
  reg  needLdVioCheckRedo_REG; // @[LoadUnit.scala 235:12]
  wire  needLdVioCheckRedo = _needLdVioCheckRedo_T_1 & needLdVioCheckRedo_REG; // @[LoadUnit.scala 234:37]
  assign io_in_ready = ~io_in_valid | io_out_ready; // @[LoadUnit.scala 260:31]
  assign io_out_valid = io_in_valid & ~io_rsFeedback_valid; // @[LoadUnit.scala 246:31]
  assign io_out_bits_uop_cf_exceptionVec_4 = io_in_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_exceptionVec_5 = io_dtlbResp_bits_excp_af_ld; // @[LoadUnit.scala 253:52]
  assign io_out_bits_uop_cf_exceptionVec_6 = io_in_bits_uop_cf_exceptionVec_6; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_exceptionVec_7 = io_in_bits_uop_cf_exceptionVec_7; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_exceptionVec_13 = io_dtlbResp_bits_excp_pf_ld; // @[LoadUnit.scala 252:50]
  assign io_out_bits_uop_cf_exceptionVec_15 = io_in_bits_uop_cf_exceptionVec_15; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 193:15]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[LoadUnit.scala 193:15]
  assign io_out_bits_vaddr = io_in_bits_vaddr; // @[LoadUnit.scala 193:15]
  assign io_out_bits_paddr = io_dtlbResp_bits_paddr; // @[LoadUnit.scala 247:21]
  assign io_out_bits_mask = io_in_bits_mask; // @[LoadUnit.scala 193:15]
  assign io_out_bits_wlineflag = io_in_bits_wlineflag; // @[LoadUnit.scala 193:15]
  assign io_out_bits_tlbMiss = io_dtlbResp_bits_miss; // @[LoadUnit.scala 248:23]
  assign io_out_bits_mmio = io_in_bits_mmio; // @[LoadUnit.scala 193:15]
  assign io_out_bits_rsIdx = io_in_bits_rsIdx; // @[LoadUnit.scala 256:21]
  assign io_out_bits_isSoftPrefetch = io_in_bits_isSoftPrefetch; // @[LoadUnit.scala 258:30]
  assign io_dcachePAddr = io_dtlbResp_bits_paddr; // @[LoadUnit.scala 198:18]
  assign io_dcacheKill = io_dtlbResp_bits_miss | s1_exception; // @[LoadUnit.scala 200:32]
  assign io_fastUopKill = io_dtlbResp_bits_fast_miss | s1_exception; // @[LoadUnit.scala 201:48]
  assign io_sbuffer_vaddr = io_in_bits_vaddr; // @[LoadUnit.scala 205:20]
  assign io_sbuffer_paddr = io_dtlbResp_bits_paddr; // @[LoadUnit.scala 206:20]
  assign io_sbuffer_valid = io_in_valid & ~(s1_exception | io_dtlbResp_bits_miss); // @[LoadUnit.scala 204:35]
  assign io_lsq_vaddr = io_in_bits_vaddr; // @[LoadUnit.scala 213:16]
  assign io_lsq_paddr = io_dtlbResp_bits_paddr; // @[LoadUnit.scala 214:16]
  assign io_lsq_mask = io_in_bits_mask; // @[LoadUnit.scala 218:15]
  assign io_lsq_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 215:14]
  assign io_lsq_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 215:14]
  assign io_lsq_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 215:14]
  assign io_lsq_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 215:14]
  assign io_lsq_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 215:14]
  assign io_lsq_valid = io_in_valid & _io_sbuffer_valid_T_1; // @[LoadUnit.scala 212:31]
  assign io_lsq_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 216:16]
  assign io_loadViolationQueryReq_valid = io_in_valid & _io_sbuffer_valid_T_1; // @[LoadUnit.scala 222:49]
  assign io_loadViolationQueryReq_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 224:37]
  assign io_loadViolationQueryReq_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 224:37]
  assign io_loadViolationQueryReq_bits_paddr = io_dtlbResp_bits_paddr; // @[LoadUnit.scala 223:39]
  assign io_rsFeedback_valid = io_in_valid & (io_dcacheBankConflict | needLdVioCheckRedo); // @[LoadUnit.scala 237:38]
  assign io_rsFeedback_bits_rsIdx = io_in_bits_rsIdx; // @[LoadUnit.scala 239:28]
  assign io_rsFeedback_bits_sourceType = io_dcacheBankConflict ? 3'h3 : 3'h4; // @[LoadUnit.scala 241:39]
  assign io_needLdVioCheckRedo = _needLdVioCheckRedo_T_1 & needLdVioCheckRedo_REG; // @[LoadUnit.scala 234:37]
  always @(posedge clock) begin
    needLdVioCheckRedo_REG <= io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 235:12]
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
  needLdVioCheckRedo_REG = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
