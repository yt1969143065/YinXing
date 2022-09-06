module LoadUnit_S2(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input  [5:0]  io_in_bits_uop_lqIdx_value,
  input  [38:0] io_in_bits_vaddr,
  input  [35:0] io_in_bits_paddr,
  input  [7:0]  io_in_bits_mask,
  input         io_in_bits_tlbMiss,
  input  [4:0]  io_in_bits_rsIdx,
  input         io_in_bits_isSoftPrefetch,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_4,
  output        io_out_bits_uop_cf_exceptionVec_5,
  output        io_out_bits_uop_cf_exceptionVec_13,
  output        io_out_bits_uop_cf_trigger_backendEn_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_out_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_out_bits_uop_cf_ftqOffset,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output        io_out_bits_uop_ctrl_replayInst,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [5:0]  io_out_bits_uop_lqIdx_value,
  output [38:0] io_out_bits_vaddr,
  output [35:0] io_out_bits_paddr,
  output [7:0]  io_out_bits_mask,
  output [64:0] io_out_bits_data,
  output        io_out_bits_miss,
  output        io_out_bits_mmio,
  output        io_out_bits_forwardMask_0,
  output        io_out_bits_forwardMask_1,
  output        io_out_bits_forwardMask_2,
  output        io_out_bits_forwardMask_3,
  output        io_out_bits_forwardMask_4,
  output        io_out_bits_forwardMask_5,
  output        io_out_bits_forwardMask_6,
  output        io_out_bits_forwardMask_7,
  output [7:0]  io_out_bits_forwardData_0,
  output [7:0]  io_out_bits_forwardData_1,
  output [7:0]  io_out_bits_forwardData_2,
  output [7:0]  io_out_bits_forwardData_3,
  output [7:0]  io_out_bits_forwardData_4,
  output [7:0]  io_out_bits_forwardData_5,
  output [7:0]  io_out_bits_forwardData_6,
  output [7:0]  io_out_bits_forwardData_7,
  output        io_rsFeedback_valid,
  output [4:0]  io_rsFeedback_bits_rsIdx,
  output        io_rsFeedback_bits_hit,
  output [2:0]  io_rsFeedback_bits_sourceType,
  output [4:0]  io_rsFeedback_bits_dataInvalidSqIdx_value,
  input  [63:0] io_dcacheResp_bits_data,
  input         io_dcacheResp_bits_miss,
  input         io_dcacheResp_bits_replay,
  input         io_dcacheResp_bits_tag_error,
  input         io_dcacheResp_bits_error,
  input         io_pmpResp_ld,
  input         io_pmpResp_mmio,
  input         io_lsq_forwardMask_0,
  input         io_lsq_forwardMask_1,
  input         io_lsq_forwardMask_2,
  input         io_lsq_forwardMask_3,
  input         io_lsq_forwardMask_4,
  input         io_lsq_forwardMask_5,
  input         io_lsq_forwardMask_6,
  input         io_lsq_forwardMask_7,
  input  [7:0]  io_lsq_forwardData_0,
  input  [7:0]  io_lsq_forwardData_1,
  input  [7:0]  io_lsq_forwardData_2,
  input  [7:0]  io_lsq_forwardData_3,
  input  [7:0]  io_lsq_forwardData_4,
  input  [7:0]  io_lsq_forwardData_5,
  input  [7:0]  io_lsq_forwardData_6,
  input  [7:0]  io_lsq_forwardData_7,
  input         io_lsq_dataInvalid,
  input         io_lsq_matchInvalid,
  input  [4:0]  io_dataInvalidSqIdx,
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
  output        io_dataForwarded,
  output        io_dcacheRequireReplay,
  output        io_dcache_kill,
  input         io_loadViolationQueryResp_valid,
  input         io_loadViolationQueryResp_bits_have_violation,
  input         io_csrCtrl_ldld_vio_check_enable,
  input         io_csrCtrl_cache_error_enable,
  input         io_sentFastUop,
  input         io_static_pm_valid,
  input         io_static_pm_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  pmp_ld = io_static_pm_valid ? 1'h0 : io_pmpResp_ld; // @[LoadUnit.scala 294:29 295:12]
  wire  pmp_mmio = io_static_pm_valid ? io_static_pm_bits : io_pmpResp_mmio; // @[LoadUnit.scala 294:29 298:14]
  wire  s2_exception_vec_4 = io_in_bits_isSoftPrefetch ? 1'h0 : io_in_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 310:25 311:22]
  wire  s2_exception_vec_5 = io_in_bits_isSoftPrefetch ? 1'h0 : io_in_bits_uop_cf_exceptionVec_5 | pmp_ld; // @[LoadUnit.scala 310:25 311:22 308:37]
  wire  s2_exception_vec_13 = io_in_bits_isSoftPrefetch ? 1'h0 : io_in_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 310:25 311:22]
  wire [15:0] _s2_exception_T = {2'h0,s2_exception_vec_13,1'h0,4'h0,2'h0,s2_exception_vec_5,s2_exception_vec_4,4'h0}; // @[LoadUnit.scala 313:71]
  wire  s2_exception = |_s2_exception_T; // @[LoadUnit.scala 313:78]
  wire  _s2_exception_with_error_vec_5_T = io_dcacheResp_bits_error & io_csrCtrl_cache_error_enable; // @[LoadUnit.scala 324:30]
  wire  _s2_mmio_T = ~io_in_bits_isSoftPrefetch; // @[LoadUnit.scala 333:17]
  wire  _s2_mmio_T_2 = ~s2_exception; // @[LoadUnit.scala 333:53]
  wire  s2_mmio = ~io_in_bits_isSoftPrefetch & pmp_mmio & ~s2_exception; // @[LoadUnit.scala 333:50]
  wire  s2_forward_fail = io_lsq_matchInvalid | io_sbuffer_matchInvalid; // @[LoadUnit.scala 338:45]
  wire  _s2_ldld_violation_T = io_loadViolationQueryResp_valid & io_loadViolationQueryResp_bits_have_violation; // @[LoadUnit.scala 339:59]
  reg  s2_ldld_violation_REG; // @[LoadUnit.scala 341:12]
  wire  s2_ldld_violation = _s2_ldld_violation_T & s2_ldld_violation_REG; // @[LoadUnit.scala 340:51]
  wire  _s2_data_invalid_T = ~s2_forward_fail; // @[LoadUnit.scala 342:47]
  wire  _s2_data_invalid_T_2 = ~s2_ldld_violation; // @[LoadUnit.scala 342:67]
  wire  s2_data_invalid = io_lsq_dataInvalid & ~s2_forward_fail & ~s2_ldld_violation & _s2_mmio_T_2; // @[LoadUnit.scala 342:86]
  wire  forwardMask_1 = io_lsq_forwardMask_1 | io_sbuffer_forwardMask_1; // @[LoadUnit.scala 361:45]
  wire  forwardMask_0 = io_lsq_forwardMask_0 | io_sbuffer_forwardMask_0; // @[LoadUnit.scala 361:45]
  wire  forwardMask_3 = io_lsq_forwardMask_3 | io_sbuffer_forwardMask_3; // @[LoadUnit.scala 361:45]
  wire  forwardMask_2 = io_lsq_forwardMask_2 | io_sbuffer_forwardMask_2; // @[LoadUnit.scala 361:45]
  wire  forwardMask_5 = io_lsq_forwardMask_5 | io_sbuffer_forwardMask_5; // @[LoadUnit.scala 361:45]
  wire  forwardMask_4 = io_lsq_forwardMask_4 | io_sbuffer_forwardMask_4; // @[LoadUnit.scala 361:45]
  wire  forwardMask_7 = io_lsq_forwardMask_7 | io_sbuffer_forwardMask_7; // @[LoadUnit.scala 361:45]
  wire  forwardMask_6 = io_lsq_forwardMask_6 | io_sbuffer_forwardMask_6; // @[LoadUnit.scala 361:45]
  wire [7:0] _fullForward_T = {forwardMask_7,forwardMask_6,forwardMask_5,forwardMask_4,forwardMask_3,forwardMask_2,
    forwardMask_1,forwardMask_0}; // @[LoadUnit.scala 354:35]
  wire [7:0] _fullForward_T_1 = ~_fullForward_T; // @[LoadUnit.scala 354:22]
  wire [7:0] _fullForward_T_2 = _fullForward_T_1 & io_in_bits_mask; // @[LoadUnit.scala 354:42]
  wire  fullForward = _fullForward_T_2 == 8'h0 & ~io_lsq_dataInvalid; // @[LoadUnit.scala 354:61]
  wire [7:0] forwardData_0 = io_lsq_forwardMask_0 ? io_lsq_forwardData_0 : io_sbuffer_forwardData_0; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_1 = io_lsq_forwardMask_1 ? io_lsq_forwardData_1 : io_sbuffer_forwardData_1; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_2 = io_lsq_forwardMask_2 ? io_lsq_forwardData_2 : io_sbuffer_forwardData_2; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_3 = io_lsq_forwardMask_3 ? io_lsq_forwardData_3 : io_sbuffer_forwardData_3; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_4 = io_lsq_forwardMask_4 ? io_lsq_forwardData_4 : io_sbuffer_forwardData_4; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_5 = io_lsq_forwardMask_5 ? io_lsq_forwardData_5 : io_sbuffer_forwardData_5; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_6 = io_lsq_forwardMask_6 ? io_lsq_forwardData_6 : io_sbuffer_forwardData_6; // @[LoadUnit.scala 362:26]
  wire [7:0] forwardData_7 = io_lsq_forwardMask_7 ? io_lsq_forwardData_7 : io_sbuffer_forwardData_7; // @[LoadUnit.scala 362:26]
  wire [7:0] rdataVec_0 = forwardMask_0 ? forwardData_0 : io_dcacheResp_bits_data[7:0]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_1 = forwardMask_1 ? forwardData_1 : io_dcacheResp_bits_data[15:8]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_2 = forwardMask_2 ? forwardData_2 : io_dcacheResp_bits_data[23:16]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_3 = forwardMask_3 ? forwardData_3 : io_dcacheResp_bits_data[31:24]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_4 = forwardMask_4 ? forwardData_4 : io_dcacheResp_bits_data[39:32]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_5 = forwardMask_5 ? forwardData_5 : io_dcacheResp_bits_data[47:40]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_6 = forwardMask_6 ? forwardData_6 : io_dcacheResp_bits_data[55:48]; // @[LoadUnit.scala 373:8]
  wire [7:0] rdataVec_7 = forwardMask_7 ? forwardData_7 : io_dcacheResp_bits_data[63:56]; // @[LoadUnit.scala 373:8]
  wire [63:0] rdata = {rdataVec_7,rdataVec_6,rdataVec_5,rdataVec_4,rdataVec_3,rdataVec_2,rdataVec_1,rdataVec_0}; // @[LoadUnit.scala 374:24]
  wire  _rdataSel_T_9 = 3'h0 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_10 = 3'h1 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_11 = 3'h2 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_12 = 3'h3 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_13 = 3'h4 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_14 = 3'h5 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_15 = 3'h6 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_16 = 3'h7 == io_in_bits_paddr[2:0]; // @[LookupTree.scala 25:34]
  wire [63:0] _rdataSel_T_17 = _rdataSel_T_9 ? rdata : 64'h0; // @[Mux.scala 27:73]
  wire [55:0] _rdataSel_T_18 = _rdataSel_T_10 ? rdata[63:8] : 56'h0; // @[Mux.scala 27:73]
  wire [47:0] _rdataSel_T_19 = _rdataSel_T_11 ? rdata[63:16] : 48'h0; // @[Mux.scala 27:73]
  wire [39:0] _rdataSel_T_20 = _rdataSel_T_12 ? rdata[63:24] : 40'h0; // @[Mux.scala 27:73]
  wire [31:0] _rdataSel_T_21 = _rdataSel_T_13 ? rdata[63:32] : 32'h0; // @[Mux.scala 27:73]
  wire [23:0] _rdataSel_T_22 = _rdataSel_T_14 ? rdata[63:40] : 24'h0; // @[Mux.scala 27:73]
  wire [15:0] _rdataSel_T_23 = _rdataSel_T_15 ? rdata[63:48] : 16'h0; // @[Mux.scala 27:73]
  wire [7:0] _rdataSel_T_24 = _rdataSel_T_16 ? rdata[63:56] : 8'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_20 = {{8'd0}, _rdataSel_T_18}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_25 = _rdataSel_T_17 | _GEN_20; // @[Mux.scala 27:73]
  wire [63:0] _GEN_21 = {{16'd0}, _rdataSel_T_19}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_26 = _rdataSel_T_25 | _GEN_21; // @[Mux.scala 27:73]
  wire [63:0] _GEN_22 = {{24'd0}, _rdataSel_T_20}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_27 = _rdataSel_T_26 | _GEN_22; // @[Mux.scala 27:73]
  wire [63:0] _GEN_23 = {{32'd0}, _rdataSel_T_21}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_28 = _rdataSel_T_27 | _GEN_23; // @[Mux.scala 27:73]
  wire [63:0] _GEN_24 = {{40'd0}, _rdataSel_T_22}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_29 = _rdataSel_T_28 | _GEN_24; // @[Mux.scala 27:73]
  wire [63:0] _GEN_25 = {{48'd0}, _rdataSel_T_23}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_30 = _rdataSel_T_29 | _GEN_25; // @[Mux.scala 27:73]
  wire [63:0] _GEN_26 = {{56'd0}, _rdataSel_T_24}; // @[Mux.scala 27:73]
  wire [63:0] rdataSel = _rdataSel_T_30 | _GEN_26; // @[Mux.scala 27:73]
  wire  rdataPartialLoad_signBit = rdataSel[7]; // @[BitUtils.scala 43:20]
  wire [55:0] _rdataPartialLoad_T_2 = rdataPartialLoad_signBit ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _rdataPartialLoad_T_3 = {_rdataPartialLoad_T_2,rdataSel[7:0]}; // @[Cat.scala 31:58]
  wire  rdataPartialLoad_signBit_1 = rdataSel[15]; // @[BitUtils.scala 43:20]
  wire [47:0] _rdataPartialLoad_T_6 = rdataPartialLoad_signBit_1 ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _rdataPartialLoad_T_7 = {_rdataPartialLoad_T_6,rdataSel[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _rdataPartialLoad_T_11 = {32'hffffffff,rdataSel[31:0]}; // @[Cat.scala 31:58]
  wire  rdataPartialLoad_signBit_2 = rdataSel[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _rdataPartialLoad_T_15 = rdataPartialLoad_signBit_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _rdataPartialLoad_T_16 = {_rdataPartialLoad_T_15,rdataSel[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _rdataPartialLoad_T_17 = io_in_bits_uop_ctrl_fpWen ? _rdataPartialLoad_T_11 : _rdataPartialLoad_T_16; // @[LoadQueue.scala 56:28]
  wire [63:0] _rdataPartialLoad_T_27 = {56'h0,rdataSel[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _rdataPartialLoad_T_29 = {48'h0,rdataSel[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _rdataPartialLoad_T_31 = {32'h0,rdataSel[31:0]}; // @[Cat.scala 31:58]
  wire  _rdataPartialLoad_T_32 = 7'h0 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_33 = 7'h1 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_34 = 7'h2 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_35 = 7'h3 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_36 = 7'h4 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_37 = 7'h5 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _rdataPartialLoad_T_38 = 7'h6 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire [63:0] _rdataPartialLoad_T_39 = _rdataPartialLoad_T_32 ? _rdataPartialLoad_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_40 = _rdataPartialLoad_T_33 ? _rdataPartialLoad_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_41 = _rdataPartialLoad_T_34 ? _rdataPartialLoad_T_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_42 = _rdataPartialLoad_T_35 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_43 = _rdataPartialLoad_T_36 ? _rdataPartialLoad_T_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_44 = _rdataPartialLoad_T_37 ? _rdataPartialLoad_T_29 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_45 = _rdataPartialLoad_T_38 ? _rdataPartialLoad_T_31 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_46 = _rdataPartialLoad_T_39 | _rdataPartialLoad_T_40; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_47 = _rdataPartialLoad_T_46 | _rdataPartialLoad_T_41; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_48 = _rdataPartialLoad_T_47 | _rdataPartialLoad_T_42; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_49 = _rdataPartialLoad_T_48 | _rdataPartialLoad_T_43; // @[Mux.scala 27:73]
  wire [63:0] _rdataPartialLoad_T_50 = _rdataPartialLoad_T_49 | _rdataPartialLoad_T_44; // @[Mux.scala 27:73]
  wire [63:0] rdataPartialLoad = _rdataPartialLoad_T_50 | _rdataPartialLoad_T_45; // @[Mux.scala 27:73]
  wire  _io_out_valid_T = ~io_in_bits_tlbMiss; // @[LoadUnit.scala 387:34]
  wire  _io_out_bits_miss_T_1 = io_dcacheResp_bits_miss & _s2_mmio_T_2; // @[LoadUnit.scala 401:39]
  wire  _io_out_bits_miss_T_3 = _io_out_bits_miss_T_1 & _s2_data_invalid_T; // @[LoadUnit.scala 402:21]
  wire  _io_out_bits_miss_T_5 = _io_out_bits_miss_T_3 & _s2_data_invalid_T_2; // @[LoadUnit.scala 403:24]
  wire  _forwardFailReplay_T = ~s2_mmio; // @[LoadUnit.scala 409:46]
  wire  _io_dataForwarded_T_5 = fullForward | io_csrCtrl_cache_error_enable & io_dcacheResp_bits_tag_error; // @[LoadUnit.scala 428:18]
  wire  _s2_need_replay_from_rs_T_10 = ~io_dataForwarded; // @[LoadUnit.scala 448:116]
  wire  _s2_need_replay_from_rs_T_11 = io_dcacheResp_bits_replay & _s2_mmio_T & _s2_data_invalid_T &
    _s2_data_invalid_T_2 & _forwardFailReplay_T & _s2_mmio_T_2 & ~io_dataForwarded; // @[LoadUnit.scala 448:113]
  wire  _s2_need_replay_from_rs_T_12 = io_in_bits_tlbMiss | _s2_need_replay_from_rs_T_11; // @[LoadUnit.scala 447:19]
  wire  _s2_need_replay_from_rs_T_18 = s2_data_invalid & _s2_mmio_T & _s2_data_invalid_T & _s2_data_invalid_T_2; // @[LoadUnit.scala 449:62]
  wire  s2_need_replay_from_rs = _s2_need_replay_from_rs_T_12 | _s2_need_replay_from_rs_T_18; // @[LoadUnit.scala 448:134]
  wire [2:0] _io_rsFeedback_bits_sourceType_T = s2_data_invalid ? 3'h2 : 3'h1; // @[LoadUnit.scala 458:8]
  wire  _io_dcacheRequireReplay_T = ~io_rsFeedback_bits_hit; // @[LoadUnit.scala 471:7]
  wire  _io_dcacheRequireReplay_T_1 = io_dcacheResp_bits_replay & _io_dcacheRequireReplay_T; // @[LoadUnit.scala 470:47]
  wire  _io_dcacheRequireReplay_T_3 = _io_dcacheRequireReplay_T_1 & _s2_need_replay_from_rs_T_10; // @[LoadUnit.scala 471:31]
  wire  _io_dcacheRequireReplay_T_5 = _io_dcacheRequireReplay_T_3 & _s2_mmio_T; // @[LoadUnit.scala 472:25]
  assign io_out_valid = io_in_valid & ~io_in_bits_tlbMiss & ~s2_data_invalid; // @[LoadUnit.scala 387:47]
  assign io_out_bits_uop_cf_exceptionVec_4 = io_in_bits_isSoftPrefetch ? 1'h0 : io_in_bits_uop_cf_exceptionVec_4; // @[LoadUnit.scala 310:25 311:22]
  assign io_out_bits_uop_cf_exceptionVec_5 = s2_exception_vec_5 | _s2_exception_with_error_vec_5_T; // @[LoadUnit.scala 323:85]
  assign io_out_bits_uop_cf_exceptionVec_13 = io_in_bits_isSoftPrefetch ? 1'h0 : io_in_bits_uop_cf_exceptionVec_13; // @[LoadUnit.scala 310:25 311:22]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen & _s2_mmio_T_2; // @[LoadUnit.scala 407:59]
  assign io_out_bits_uop_ctrl_flushPipe = s2_mmio & io_sentFastUop; // @[LoadUnit.scala 415:45]
  assign io_out_bits_uop_ctrl_replayInst = (s2_forward_fail | s2_ldld_violation) & _forwardFailReplay_T & _s2_mmio_T &
    _io_out_valid_T; // @[LoadUnit.scala 412:105]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 390:15]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 390:15]
  assign io_out_bits_vaddr = io_in_bits_vaddr; // @[LoadUnit.scala 390:15]
  assign io_out_bits_paddr = io_in_bits_paddr; // @[LoadUnit.scala 390:15]
  assign io_out_bits_mask = io_in_bits_mask; // @[LoadUnit.scala 390:15]
  assign io_out_bits_data = {{1'd0}, rdataPartialLoad}; // @[LoadUnit.scala 391:20]
  assign io_out_bits_miss = _io_out_bits_miss_T_5 & _s2_mmio_T; // @[LoadUnit.scala 404:26]
  assign io_out_bits_mmio = ~io_in_bits_isSoftPrefetch & pmp_mmio & ~s2_exception; // @[LoadUnit.scala 333:50]
  assign io_out_bits_forwardMask_0 = io_lsq_forwardMask_0 | io_sbuffer_forwardMask_0; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_1 = io_lsq_forwardMask_1 | io_sbuffer_forwardMask_1; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_2 = io_lsq_forwardMask_2 | io_sbuffer_forwardMask_2; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_3 = io_lsq_forwardMask_3 | io_sbuffer_forwardMask_3; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_4 = io_lsq_forwardMask_4 | io_sbuffer_forwardMask_4; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_5 = io_lsq_forwardMask_5 | io_sbuffer_forwardMask_5; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_6 = io_lsq_forwardMask_6 | io_sbuffer_forwardMask_6; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardMask_7 = io_lsq_forwardMask_7 | io_sbuffer_forwardMask_7; // @[LoadUnit.scala 361:45]
  assign io_out_bits_forwardData_0 = forwardMask_0 ? forwardData_0 : io_dcacheResp_bits_data[7:0]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_1 = forwardMask_1 ? forwardData_1 : io_dcacheResp_bits_data[15:8]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_2 = forwardMask_2 ? forwardData_2 : io_dcacheResp_bits_data[23:16]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_3 = forwardMask_3 ? forwardData_3 : io_dcacheResp_bits_data[31:24]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_4 = forwardMask_4 ? forwardData_4 : io_dcacheResp_bits_data[39:32]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_5 = forwardMask_5 ? forwardData_5 : io_dcacheResp_bits_data[47:40]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_6 = forwardMask_6 ? forwardData_6 : io_dcacheResp_bits_data[55:48]; // @[LoadUnit.scala 373:8]
  assign io_out_bits_forwardData_7 = forwardMask_7 ? forwardData_7 : io_dcacheResp_bits_data[63:56]; // @[LoadUnit.scala 373:8]
  assign io_rsFeedback_valid = io_in_valid; // @[LoadUnit.scala 437:23]
  assign io_rsFeedback_bits_rsIdx = io_in_bits_rsIdx; // @[LoadUnit.scala 453:28]
  assign io_rsFeedback_bits_hit = ~s2_need_replay_from_rs; // @[LoadUnit.scala 452:29]
  assign io_rsFeedback_bits_sourceType = io_in_bits_tlbMiss ? 3'h0 : _io_rsFeedback_bits_sourceType_T; // @[LoadUnit.scala 457:39]
  assign io_rsFeedback_bits_dataInvalidSqIdx_value = io_dataInvalidSqIdx; // @[LoadUnit.scala 463:45]
  assign io_dataForwarded = _io_out_bits_miss_T_3 & _io_dataForwarded_T_5; // @[LoadUnit.scala 427:74]
  assign io_dcacheRequireReplay = _io_dcacheRequireReplay_T_5 & io_out_bits_miss; // @[LoadUnit.scala 473:23]
  assign io_dcache_kill = pmp_ld | pmp_mmio; // @[LoadUnit.scala 344:28]
  always @(posedge clock) begin
    s2_ldld_violation_REG <= io_csrCtrl_ldld_vio_check_enable; // @[LoadUnit.scala 341:12]
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
  s2_ldld_violation_REG = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
