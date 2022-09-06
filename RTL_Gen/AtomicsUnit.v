module AtomicsUnit(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input  [63:0] io_in_bits_src_0,
  input         io_storeDataIn_valid,
  input  [63:0] io_storeDataIn_bits_data,
  output        io_out_valid,
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
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [63:0] io_out_bits_data,
  output        io_out_bits_debug_isMMIO,
  input         io_dcache_req_ready,
  output        io_dcache_req_valid,
  output [4:0]  io_dcache_req_bits_cmd,
  output [35:0] io_dcache_req_bits_addr,
  output [63:0] io_dcache_req_bits_data,
  output [7:0]  io_dcache_req_bits_mask,
  output [38:0] io_dcache_req_bits_vaddr,
  output        io_dcache_resp_ready,
  input         io_dcache_resp_valid,
  input  [63:0] io_dcache_resp_bits_data,
  input  [63:0] io_dcache_resp_bits_id,
  input         io_dcache_resp_bits_error,
  output        io_dtlb_req_valid,
  output [38:0] io_dtlb_req_bits_vaddr,
  output [2:0]  io_dtlb_req_bits_cmd,
  output        io_dtlb_resp_ready,
  input         io_dtlb_resp_valid,
  input  [35:0] io_dtlb_resp_bits_paddr,
  input         io_dtlb_resp_bits_miss,
  input         io_dtlb_resp_bits_excp_pf_ld,
  input         io_dtlb_resp_bits_excp_pf_st,
  input         io_dtlb_resp_bits_excp_af_ld,
  input         io_dtlb_resp_bits_excp_af_st,
  input         io_dtlb_resp_bits_static_pm_valid,
  input         io_dtlb_resp_bits_static_pm_bits,
  input         io_pmpResp_st,
  input         io_pmpResp_mmio,
  input  [4:0]  io_rsIdx,
  output        io_flush_sbuffer_valid,
  input         io_flush_sbuffer_empty,
  output        io_feedbackSlow_valid,
  output [4:0]  io_feedbackSlow_bits_rsIdx,
  input         io_redirect_valid,
  output        io_exceptionAddr_valid,
  output [38:0] io_exceptionAddr_bits,
  input         io_csrCtrl_cache_error_enable,
  input         io_csrCtrl_mem_trigger_t_valid,
  input  [2:0]  io_csrCtrl_mem_trigger_t_bits_addr,
  input  [1:0]  io_csrCtrl_mem_trigger_t_bits_tdata_matchType,
  input         io_csrCtrl_mem_trigger_t_bits_tdata_select,
  input         io_csrCtrl_mem_trigger_t_bits_tdata_chain,
  input  [63:0] io_csrCtrl_mem_trigger_t_bits_tdata_tdata2,
  input         io_csrCtrl_trigger_enable_2,
  input         io_csrCtrl_trigger_enable_3,
  input         io_csrCtrl_trigger_enable_4,
  input         io_csrCtrl_trigger_enable_5,
  input         io_csrCtrl_trigger_enable_7,
  input         io_csrCtrl_trigger_enable_9
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
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [63:0] _RAND_46;
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
`endif // RANDOMIZE_REG_INIT
  wire  difftest_io_clock; // @[AtomicsUnit.scala 405:26]
  wire [7:0] difftest_io_coreid; // @[AtomicsUnit.scala 405:26]
  wire  difftest_io_valid; // @[AtomicsUnit.scala 405:26]
  wire  difftest_io_success; // @[AtomicsUnit.scala 405:26]
  reg [2:0] state; // @[AtomicsUnit.scala 52:22]
  reg  data_valid; // @[AtomicsUnit.scala 53:27]
  reg  in_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 54:15]
  reg  in_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 54:15]
  reg [6:0] in_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 54:15]
  reg  in_uop_ctrl_rfWen; // @[AtomicsUnit.scala 54:15]
  reg  in_uop_ctrl_fpWen; // @[AtomicsUnit.scala 54:15]
  reg [6:0] in_uop_pdest; // @[AtomicsUnit.scala 54:15]
  reg  in_uop_robIdx_flag; // @[AtomicsUnit.scala 54:15]
  reg [6:0] in_uop_robIdx_value; // @[AtomicsUnit.scala 54:15]
  reg [63:0] in_src_0; // @[AtomicsUnit.scala 54:15]
  reg [63:0] in_src_1; // @[AtomicsUnit.scala 54:15]
  reg  exceptionVec_5; // @[AtomicsUnit.scala 55:29]
  reg  exceptionVec_6; // @[AtomicsUnit.scala 55:29]
  reg  exceptionVec_7; // @[AtomicsUnit.scala 55:29]
  reg  exceptionVec_13; // @[AtomicsUnit.scala 55:29]
  reg  exceptionVec_15; // @[AtomicsUnit.scala 55:29]
  reg  atom_override_xtval; // @[AtomicsUnit.scala 56:36]
  wire  isLr = in_uop_ctrl_fuOpType == 7'h2 | in_uop_ctrl_fuOpType == 7'h3; // @[AtomicsUnit.scala 57:54]
  reg [35:0] paddr; // @[AtomicsUnit.scala 59:18]
  reg  is_mmio; // @[AtomicsUnit.scala 61:20]
  reg  static_pm_valid; // @[AtomicsUnit.scala 63:22]
  reg  static_pm_bits; // @[AtomicsUnit.scala 63:22]
  reg [63:0] resp_data; // @[AtomicsUnit.scala 65:22]
  reg  is_lrsc_valid; // @[AtomicsUnit.scala 67:26]
  wire  _T_1 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_122 = _T_1 ? 3'h1 : state; // @[AtomicsUnit.scala 101:13 52:22 98:25]
  wire [2:0] _GEN_246 = state == 3'h0 ? _GEN_122 : state; // @[AtomicsUnit.scala 52:22 96:30]
  wire  _GEN_248 = io_storeDataIn_valid | data_valid; // @[AtomicsUnit.scala 105:32 107:16 53:27]
  reg  io_feedbackSlow_valid_REG; // @[AtomicsUnit.scala 116:49]
  reg  io_feedbackSlow_valid_REG_1; // @[AtomicsUnit.scala 116:41]
  reg [4:0] io_feedbackSlow_bits_rsIdx_r; // @[Reg.scala 16:16]
  wire  _T_8 = io_dtlb_resp_ready & io_dtlb_resp_valid; // @[Decoupled.scala 50:35]
  wire  _addrAligned_T_2 = ~in_src_0[0]; // @[AtomicsUnit.scala 141:36]
  wire  _addrAligned_T_4 = in_src_0[1:0] == 2'h0; // @[AtomicsUnit.scala 142:38]
  wire  _addrAligned_T_6 = in_src_0[2:0] == 3'h0; // @[AtomicsUnit.scala 143:38]
  wire  _addrAligned_T_7 = 2'h0 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _addrAligned_T_8 = 2'h1 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _addrAligned_T_9 = 2'h2 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _addrAligned_T_10 = 2'h3 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  addrAligned = _addrAligned_T_7 | _addrAligned_T_8 & _addrAligned_T_2 | _addrAligned_T_9 & _addrAligned_T_4 |
    _addrAligned_T_10 & _addrAligned_T_6; // @[Mux.scala 27:73]
  wire  _exceptionVec_6_T = ~addrAligned; // @[AtomicsUnit.scala 145:44]
  wire [2:0] _GEN_250 = _exceptionVec_6_T ? 3'h7 : 3'h2; // @[AtomicsUnit.scala 153:29 157:17 160:17]
  wire  _GEN_251 = _exceptionVec_6_T | atom_override_xtval; // @[AtomicsUnit.scala 153:29 158:31 56:36]
  wire [2:0] _GEN_252 = ~io_dtlb_resp_bits_miss ? _GEN_250 : _GEN_246; // @[AtomicsUnit.scala 152:38]
  wire  _GEN_253 = ~io_dtlb_resp_bits_miss ? _GEN_251 : atom_override_xtval; // @[AtomicsUnit.scala 152:38 56:36]
  wire  _GEN_258 = _T_8 ? io_dtlb_resp_bits_excp_af_st : exceptionVec_7; // @[AtomicsUnit.scala 136:28 148:41 55:29]
  wire  _GEN_259 = _T_8 ? io_dtlb_resp_bits_excp_af_ld : exceptionVec_5; // @[AtomicsUnit.scala 136:28 149:41 55:29]
  wire [2:0] _GEN_262 = _T_8 ? _GEN_252 : _GEN_246; // @[AtomicsUnit.scala 136:28]
  wire  _GEN_263 = _T_8 ? _GEN_253 : atom_override_xtval; // @[AtomicsUnit.scala 136:28 56:36]
  wire  _GEN_275 = state == 3'h1 ? _GEN_258 : exceptionVec_7; // @[AtomicsUnit.scala 124:26 55:29]
  wire  _GEN_276 = state == 3'h1 ? _GEN_259 : exceptionVec_5; // @[AtomicsUnit.scala 124:26 55:29]
  wire [2:0] _GEN_279 = state == 3'h1 ? _GEN_262 : _GEN_246; // @[AtomicsUnit.scala 124:26]
  wire  _GEN_280 = state == 3'h1 ? _GEN_263 : atom_override_xtval; // @[AtomicsUnit.scala 124:26 56:36]
  wire  pmp_st = static_pm_valid ? 1'h0 : io_pmpResp_st; // @[AtomicsUnit.scala 168:28 170:14]
  wire  _exception_va_T_1 = exceptionVec_15 | exceptionVec_13 | exceptionVec_7; // @[AtomicsUnit.scala 176:84]
  wire  exception_va = _exception_va_T_1 | exceptionVec_5; // @[AtomicsUnit.scala 177:38]
  wire [2:0] _GEN_285 = exception_va | pmp_st ? 3'h7 : 3'h3; // @[AtomicsUnit.scala 179:41 180:13 183:13]
  wire  _GEN_286 = exception_va | pmp_st | _GEN_280; // @[AtomicsUnit.scala 179:41 181:27]
  wire [2:0] _GEN_288 = state == 3'h2 ? _GEN_285 : _GEN_279; // @[AtomicsUnit.scala 166:25]
  wire [2:0] _GEN_291 = state == 3'h3 ? 3'h4 : _GEN_288; // @[AtomicsUnit.scala 187:40 189:11]
  wire [2:0] _GEN_292 = io_flush_sbuffer_empty ? 3'h5 : _GEN_291; // @[AtomicsUnit.scala 193:35 194:13]
  wire [2:0] _GEN_293 = state == 3'h4 ? _GEN_292 : _GEN_291; // @[AtomicsUnit.scala 192:41]
  wire  _T_15 = state == 3'h5; // @[AtomicsUnit.scala 198:15]
  wire  _io_dcache_req_bits_cmd_T = 7'h2 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_1 = 7'h6 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_2 = 7'ha == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_3 = 7'he == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_4 = 7'h12 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_5 = 7'h16 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_6 = 7'h1a == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_7 = 7'h1e == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_8 = 7'h22 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_9 = 7'h26 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_10 = 7'h2a == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_11 = 7'h3 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_12 = 7'h7 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_13 = 7'hb == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_14 = 7'hf == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_15 = 7'h13 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_16 = 7'h17 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_17 = 7'h1b == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_18 = 7'h1f == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_19 = 7'h23 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_20 = 7'h27 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _io_dcache_req_bits_cmd_T_21 = 7'h2b == in_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire [2:0] _io_dcache_req_bits_cmd_T_22 = _io_dcache_req_bits_cmd_T ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_23 = _io_dcache_req_bits_cmd_T_1 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_24 = _io_dcache_req_bits_cmd_T_2 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_25 = _io_dcache_req_bits_cmd_T_3 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_26 = _io_dcache_req_bits_cmd_T_4 ? 4'h9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_27 = _io_dcache_req_bits_cmd_T_5 ? 4'hb : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_28 = _io_dcache_req_bits_cmd_T_6 ? 4'ha : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_29 = _io_dcache_req_bits_cmd_T_7 ? 4'hc : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_30 = _io_dcache_req_bits_cmd_T_8 ? 4'hd : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_31 = _io_dcache_req_bits_cmd_T_9 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_32 = _io_dcache_req_bits_cmd_T_10 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_33 = _io_dcache_req_bits_cmd_T_11 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_34 = _io_dcache_req_bits_cmd_T_12 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_35 = _io_dcache_req_bits_cmd_T_13 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_36 = _io_dcache_req_bits_cmd_T_14 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_37 = _io_dcache_req_bits_cmd_T_15 ? 4'h9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_38 = _io_dcache_req_bits_cmd_T_16 ? 4'hb : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_39 = _io_dcache_req_bits_cmd_T_17 ? 4'ha : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_40 = _io_dcache_req_bits_cmd_T_18 ? 4'hc : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_41 = _io_dcache_req_bits_cmd_T_19 ? 4'hd : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_42 = _io_dcache_req_bits_cmd_T_20 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_43 = _io_dcache_req_bits_cmd_T_21 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_44 = _io_dcache_req_bits_cmd_T_22 | _io_dcache_req_bits_cmd_T_23; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_45 = _io_dcache_req_bits_cmd_T_44 | _io_dcache_req_bits_cmd_T_24; // @[Mux.scala 27:73]
  wire [3:0] _GEN_543 = {{1'd0}, _io_dcache_req_bits_cmd_T_45}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_46 = _GEN_543 | _io_dcache_req_bits_cmd_T_25; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_47 = _io_dcache_req_bits_cmd_T_46 | _io_dcache_req_bits_cmd_T_26; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_48 = _io_dcache_req_bits_cmd_T_47 | _io_dcache_req_bits_cmd_T_27; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_49 = _io_dcache_req_bits_cmd_T_48 | _io_dcache_req_bits_cmd_T_28; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_50 = _io_dcache_req_bits_cmd_T_49 | _io_dcache_req_bits_cmd_T_29; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_51 = _io_dcache_req_bits_cmd_T_50 | _io_dcache_req_bits_cmd_T_30; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_52 = _io_dcache_req_bits_cmd_T_51 | _io_dcache_req_bits_cmd_T_31; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_53 = _io_dcache_req_bits_cmd_T_52 | _io_dcache_req_bits_cmd_T_32; // @[Mux.scala 27:73]
  wire [3:0] _GEN_544 = {{1'd0}, _io_dcache_req_bits_cmd_T_33}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_54 = _io_dcache_req_bits_cmd_T_53 | _GEN_544; // @[Mux.scala 27:73]
  wire [3:0] _GEN_545 = {{1'd0}, _io_dcache_req_bits_cmd_T_34}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_55 = _io_dcache_req_bits_cmd_T_54 | _GEN_545; // @[Mux.scala 27:73]
  wire [3:0] _GEN_546 = {{1'd0}, _io_dcache_req_bits_cmd_T_35}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_56 = _io_dcache_req_bits_cmd_T_55 | _GEN_546; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_57 = _io_dcache_req_bits_cmd_T_56 | _io_dcache_req_bits_cmd_T_36; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_58 = _io_dcache_req_bits_cmd_T_57 | _io_dcache_req_bits_cmd_T_37; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_59 = _io_dcache_req_bits_cmd_T_58 | _io_dcache_req_bits_cmd_T_38; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_60 = _io_dcache_req_bits_cmd_T_59 | _io_dcache_req_bits_cmd_T_39; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_61 = _io_dcache_req_bits_cmd_T_60 | _io_dcache_req_bits_cmd_T_40; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_62 = _io_dcache_req_bits_cmd_T_61 | _io_dcache_req_bits_cmd_T_41; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_63 = _io_dcache_req_bits_cmd_T_62 | _io_dcache_req_bits_cmd_T_42; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_64 = _io_dcache_req_bits_cmd_T_63 | _io_dcache_req_bits_cmd_T_43; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_4 = {in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],
    in_src_1[7:0],in_src_1[7:0],in_src_1[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _io_dcache_req_bits_data_T_7 = {in_src_1[15:0],in_src_1[15:0],in_src_1[15:0],in_src_1[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _io_dcache_req_bits_data_T_9 = {in_src_1[31:0],in_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _io_dcache_req_bits_data_T_14 = _addrAligned_T_7 ? _io_dcache_req_bits_data_T_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_15 = _addrAligned_T_8 ? _io_dcache_req_bits_data_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_16 = _addrAligned_T_9 ? _io_dcache_req_bits_data_T_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_17 = _addrAligned_T_10 ? in_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_18 = _io_dcache_req_bits_data_T_14 | _io_dcache_req_bits_data_T_15; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_data_T_19 = _io_dcache_req_bits_data_T_18 | _io_dcache_req_bits_data_T_16; // @[Mux.scala 27:73]
  wire [1:0] _io_dcache_req_bits_mask_T_6 = _addrAligned_T_8 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_mask_T_7 = _addrAligned_T_9 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_dcache_req_bits_mask_T_8 = _addrAligned_T_10 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_547 = {{1'd0}, _addrAligned_T_7}; // @[Mux.scala 27:73]
  wire [1:0] _io_dcache_req_bits_mask_T_9 = _GEN_547 | _io_dcache_req_bits_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_548 = {{2'd0}, _io_dcache_req_bits_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_mask_T_10 = _GEN_548 | _io_dcache_req_bits_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_549 = {{4'd0}, _io_dcache_req_bits_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _io_dcache_req_bits_mask_T_11 = _GEN_549 | _io_dcache_req_bits_mask_T_8; // @[Mux.scala 27:73]
  wire [14:0] _GEN_1 = {{7'd0}, _io_dcache_req_bits_mask_T_11}; // @[MemCommon.scala 37:8]
  wire [14:0] _io_dcache_req_bits_mask_T_13 = _GEN_1 << paddr[2:0]; // @[MemCommon.scala 37:8]
  wire  _T_16 = io_dcache_req_ready & io_dcache_req_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_294 = _T_16 ? 3'h6 : _GEN_293; // @[AtomicsUnit.scala 233:31 234:13]
  wire [2:0] _GEN_305 = state == 3'h5 ? _GEN_294 : _GEN_293; // @[AtomicsUnit.scala 198:32]
  wire  _T_18 = io_dcache_resp_ready & io_dcache_resp_valid; // @[Decoupled.scala 50:35]
  wire  _rdataSel_T_9 = 3'h0 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_10 = 3'h1 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_11 = 3'h2 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_12 = 3'h3 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_13 = 3'h4 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_14 = 3'h5 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_15 = 3'h6 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire  _rdataSel_T_16 = 3'h7 == paddr[2:0]; // @[LookupTree.scala 25:34]
  wire [63:0] _rdataSel_T_17 = _rdataSel_T_9 ? io_dcache_resp_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [55:0] _rdataSel_T_18 = _rdataSel_T_10 ? io_dcache_resp_bits_data[63:8] : 56'h0; // @[Mux.scala 27:73]
  wire [47:0] _rdataSel_T_19 = _rdataSel_T_11 ? io_dcache_resp_bits_data[63:16] : 48'h0; // @[Mux.scala 27:73]
  wire [39:0] _rdataSel_T_20 = _rdataSel_T_12 ? io_dcache_resp_bits_data[63:24] : 40'h0; // @[Mux.scala 27:73]
  wire [31:0] _rdataSel_T_21 = _rdataSel_T_13 ? io_dcache_resp_bits_data[63:32] : 32'h0; // @[Mux.scala 27:73]
  wire [23:0] _rdataSel_T_22 = _rdataSel_T_14 ? io_dcache_resp_bits_data[63:40] : 24'h0; // @[Mux.scala 27:73]
  wire [15:0] _rdataSel_T_23 = _rdataSel_T_15 ? io_dcache_resp_bits_data[63:48] : 16'h0; // @[Mux.scala 27:73]
  wire [7:0] _rdataSel_T_24 = _rdataSel_T_16 ? io_dcache_resp_bits_data[63:56] : 8'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_550 = {{8'd0}, _rdataSel_T_18}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_25 = _rdataSel_T_17 | _GEN_550; // @[Mux.scala 27:73]
  wire [63:0] _GEN_551 = {{16'd0}, _rdataSel_T_19}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_26 = _rdataSel_T_25 | _GEN_551; // @[Mux.scala 27:73]
  wire [63:0] _GEN_552 = {{24'd0}, _rdataSel_T_20}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_27 = _rdataSel_T_26 | _GEN_552; // @[Mux.scala 27:73]
  wire [63:0] _GEN_553 = {{32'd0}, _rdataSel_T_21}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_28 = _rdataSel_T_27 | _GEN_553; // @[Mux.scala 27:73]
  wire [63:0] _GEN_554 = {{40'd0}, _rdataSel_T_22}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_29 = _rdataSel_T_28 | _GEN_554; // @[Mux.scala 27:73]
  wire [63:0] _GEN_555 = {{48'd0}, _rdataSel_T_23}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_30 = _rdataSel_T_29 | _GEN_555; // @[Mux.scala 27:73]
  wire [63:0] _GEN_556 = {{56'd0}, _rdataSel_T_24}; // @[Mux.scala 27:73]
  wire [63:0] rdataSel = _rdataSel_T_30 | _GEN_556; // @[Mux.scala 27:73]
  wire  resp_data_wire_signBit = rdataSel[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _resp_data_wire_T_2 = resp_data_wire_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _resp_data_wire_T_3 = {_resp_data_wire_T_2,rdataSel[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _resp_data_wire_T_82 = _io_dcache_req_bits_cmd_T ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_83 = _io_dcache_req_bits_cmd_T_1 ? io_dcache_resp_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_84 = _io_dcache_req_bits_cmd_T_2 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_85 = _io_dcache_req_bits_cmd_T_3 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_86 = _io_dcache_req_bits_cmd_T_4 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_87 = _io_dcache_req_bits_cmd_T_5 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_88 = _io_dcache_req_bits_cmd_T_6 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_89 = _io_dcache_req_bits_cmd_T_7 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_90 = _io_dcache_req_bits_cmd_T_8 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_91 = _io_dcache_req_bits_cmd_T_9 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_92 = _io_dcache_req_bits_cmd_T_10 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_93 = _io_dcache_req_bits_cmd_T_11 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_94 = _io_dcache_req_bits_cmd_T_12 ? io_dcache_resp_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_95 = _io_dcache_req_bits_cmd_T_13 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_96 = _io_dcache_req_bits_cmd_T_14 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_97 = _io_dcache_req_bits_cmd_T_15 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_98 = _io_dcache_req_bits_cmd_T_16 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_99 = _io_dcache_req_bits_cmd_T_17 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_100 = _io_dcache_req_bits_cmd_T_18 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_101 = _io_dcache_req_bits_cmd_T_19 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_102 = _io_dcache_req_bits_cmd_T_20 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_103 = _io_dcache_req_bits_cmd_T_21 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_104 = _resp_data_wire_T_82 | _resp_data_wire_T_83; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_105 = _resp_data_wire_T_104 | _resp_data_wire_T_84; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_106 = _resp_data_wire_T_105 | _resp_data_wire_T_85; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_107 = _resp_data_wire_T_106 | _resp_data_wire_T_86; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_108 = _resp_data_wire_T_107 | _resp_data_wire_T_87; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_109 = _resp_data_wire_T_108 | _resp_data_wire_T_88; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_110 = _resp_data_wire_T_109 | _resp_data_wire_T_89; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_111 = _resp_data_wire_T_110 | _resp_data_wire_T_90; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_112 = _resp_data_wire_T_111 | _resp_data_wire_T_91; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_113 = _resp_data_wire_T_112 | _resp_data_wire_T_92; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_114 = _resp_data_wire_T_113 | _resp_data_wire_T_93; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_115 = _resp_data_wire_T_114 | _resp_data_wire_T_94; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_116 = _resp_data_wire_T_115 | _resp_data_wire_T_95; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_117 = _resp_data_wire_T_116 | _resp_data_wire_T_96; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_118 = _resp_data_wire_T_117 | _resp_data_wire_T_97; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_119 = _resp_data_wire_T_118 | _resp_data_wire_T_98; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_120 = _resp_data_wire_T_119 | _resp_data_wire_T_99; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_121 = _resp_data_wire_T_120 | _resp_data_wire_T_100; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_122 = _resp_data_wire_T_121 | _resp_data_wire_T_101; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_123 = _resp_data_wire_T_122 | _resp_data_wire_T_102; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_124 = _resp_data_wire_T_123 | _resp_data_wire_T_103; // @[Mux.scala 27:73]
  wire [63:0] _GEN_312 = _T_18 ? io_dcache_resp_bits_id : {{63'd0}, is_lrsc_valid}; // @[AtomicsUnit.scala 244:33 245:21 67:26]
  wire [2:0] _GEN_317 = _T_18 ? 3'h7 : _GEN_305; // @[AtomicsUnit.scala 244:33 292:13]
  wire [63:0] _GEN_319 = state == 3'h6 ? _GEN_312 : {{63'd0}, is_lrsc_valid}; // @[AtomicsUnit.scala 242:33 67:26]
  wire [2:0] _GEN_324 = state == 3'h6 ? _GEN_317 : _GEN_305; // @[AtomicsUnit.scala 242:33]
  reg [1:0] tdata_0_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_0_select; // @[AtomicsUnit.scala 318:18]
  reg  tdata_0_chain; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_0_tdata2; // @[AtomicsUnit.scala 318:18]
  reg [1:0] tdata_1_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_1_select; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_1_tdata2; // @[AtomicsUnit.scala 318:18]
  reg [1:0] tdata_2_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_2_select; // @[AtomicsUnit.scala 318:18]
  reg  tdata_2_chain; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_2_tdata2; // @[AtomicsUnit.scala 318:18]
  reg [1:0] tdata_3_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_3_select; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_3_tdata2; // @[AtomicsUnit.scala 318:18]
  reg [1:0] tdata_4_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_4_select; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_4_tdata2; // @[AtomicsUnit.scala 318:18]
  reg [1:0] tdata_5_matchType; // @[AtomicsUnit.scala 318:18]
  reg  tdata_5_select; // @[AtomicsUnit.scala 318:18]
  reg [63:0] tdata_5_tdata2; // @[AtomicsUnit.scala 318:18]
  reg  tEnable_0; // @[AtomicsUnit.scala 319:24]
  reg  tEnable_1; // @[AtomicsUnit.scala 319:24]
  reg  tEnable_2; // @[AtomicsUnit.scala 319:24]
  reg  tEnable_3; // @[AtomicsUnit.scala 319:24]
  reg  tEnable_4; // @[AtomicsUnit.scala 319:24]
  reg  tEnable_5; // @[AtomicsUnit.scala 319:24]
  reg  backendTriggerHitReg_0; // @[AtomicsUnit.scala 328:33]
  reg  backendTriggerHitReg_1; // @[AtomicsUnit.scala 328:33]
  reg  backendTriggerHitReg_2; // @[AtomicsUnit.scala 328:33]
  reg  backendTriggerHitReg_3; // @[AtomicsUnit.scala 328:33]
  reg  backendTriggerHitReg_4; // @[AtomicsUnit.scala 328:33]
  reg  backendTriggerHitReg_5; // @[AtomicsUnit.scala 328:33]
  wire  store_hit_0_equal = in_src_0 == tdata_0_tdata2; // @[Trigger.scala 28:24]
  wire  store_hit_0_greater = in_src_0 >= tdata_0_tdata2; // @[Trigger.scala 29:26]
  wire  store_hit_0_less = in_src_0 <= tdata_0_tdata2; // @[Trigger.scala 30:23]
  wire  _store_hit_0_res_T_3 = 2'h2 == tdata_0_matchType ? store_hit_0_greater : 2'h0 == tdata_0_matchType &
    store_hit_0_equal; // @[Mux.scala 81:58]
  wire  store_hit_0_res = 2'h3 == tdata_0_matchType ? store_hit_0_less : _store_hit_0_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_0_T_1 = store_hit_0_res & tEnable_0; // @[Trigger.scala 35:9]
  wire  store_hit_0 = ~tdata_0_select & _store_hit_0_T_1; // @[AtomicsUnit.scala 335:59]
  wire  store_hit_1_equal = in_src_0 == tdata_1_tdata2; // @[Trigger.scala 28:24]
  wire  store_hit_1_greater = in_src_0 >= tdata_1_tdata2; // @[Trigger.scala 29:26]
  wire  store_hit_1_less = in_src_0 <= tdata_1_tdata2; // @[Trigger.scala 30:23]
  wire  _store_hit_1_res_T_3 = 2'h2 == tdata_1_matchType ? store_hit_1_greater : 2'h0 == tdata_1_matchType &
    store_hit_1_equal; // @[Mux.scala 81:58]
  wire  store_hit_1_res = 2'h3 == tdata_1_matchType ? store_hit_1_less : _store_hit_1_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_1_T_1 = store_hit_1_res & tEnable_1; // @[Trigger.scala 35:9]
  wire  store_hit_1 = ~tdata_1_select & _store_hit_1_T_1; // @[AtomicsUnit.scala 335:59]
  wire  store_hit_2_equal = in_src_0 == tdata_4_tdata2; // @[Trigger.scala 28:24]
  wire  store_hit_2_greater = in_src_0 >= tdata_4_tdata2; // @[Trigger.scala 29:26]
  wire  store_hit_2_less = in_src_0 <= tdata_4_tdata2; // @[Trigger.scala 30:23]
  wire  _store_hit_2_res_T_3 = 2'h2 == tdata_4_matchType ? store_hit_2_greater : 2'h0 == tdata_4_matchType &
    store_hit_2_equal; // @[Mux.scala 81:58]
  wire  store_hit_2_res = 2'h3 == tdata_4_matchType ? store_hit_2_less : _store_hit_2_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_2_T_1 = store_hit_2_res & tEnable_4; // @[Trigger.scala 35:9]
  wire  store_hit_2 = ~tdata_4_select & _store_hit_2_T_1; // @[AtomicsUnit.scala 335:59]
  wire  _backendTriggerHitReg_0_T = store_hit_0 & store_hit_1; // @[AtomicsUnit.scala 345:47]
  wire  _GEN_525 = tdata_0_chain ? store_hit_0 & store_hit_1 : store_hit_0; // @[AtomicsUnit.scala 344:26 345:31 341:49]
  wire  _GEN_526 = tdata_0_chain ? _backendTriggerHitReg_0_T : store_hit_1; // @[AtomicsUnit.scala 344:26 346:31 341:49]
  wire  _GEN_527 = ~in_uop_cf_trigger_backendEn_0 ? 1'h0 : store_hit_2; // @[AtomicsUnit.scala 349:43 350:31 341:49]
  wire  addrHit_equal = in_src_0 == tdata_2_tdata2; // @[Trigger.scala 28:24]
  wire  addrHit_greater = in_src_0 >= tdata_2_tdata2; // @[Trigger.scala 29:26]
  wire  addrHit_less = in_src_0 <= tdata_2_tdata2; // @[Trigger.scala 30:23]
  wire  _addrHit_res_T_3 = 2'h2 == tdata_2_matchType ? addrHit_greater : 2'h0 == tdata_2_matchType & addrHit_equal; // @[Mux.scala 81:58]
  wire  addrHit_res = 2'h3 == tdata_2_matchType ? addrHit_less : _addrHit_res_T_3; // @[Mux.scala 81:58]
  wire  addrHit = addrHit_res & tEnable_2; // @[Trigger.scala 35:9]
  wire  load_hit_0 = addrHit & ~tdata_2_select; // @[AtomicsUnit.scala 363:30]
  wire  addrHit_equal_1 = in_src_0 == tdata_3_tdata2; // @[Trigger.scala 28:24]
  wire  addrHit_greater_1 = in_src_0 >= tdata_3_tdata2; // @[Trigger.scala 29:26]
  wire  addrHit_less_1 = in_src_0 <= tdata_3_tdata2; // @[Trigger.scala 30:23]
  wire  _addrHit_res_T_8 = 2'h2 == tdata_3_matchType ? addrHit_greater_1 : 2'h0 == tdata_3_matchType & addrHit_equal_1; // @[Mux.scala 81:58]
  wire  addrHit_res_1 = 2'h3 == tdata_3_matchType ? addrHit_less_1 : _addrHit_res_T_8; // @[Mux.scala 81:58]
  wire  addrHit_1 = addrHit_res_1 & tEnable_3; // @[Trigger.scala 35:9]
  wire  load_hit_1 = addrHit_1 & ~tdata_3_select; // @[AtomicsUnit.scala 363:30]
  wire  addrHit_equal_2 = in_src_0 == tdata_5_tdata2; // @[Trigger.scala 28:24]
  wire  addrHit_greater_2 = in_src_0 >= tdata_5_tdata2; // @[Trigger.scala 29:26]
  wire  addrHit_less_2 = in_src_0 <= tdata_5_tdata2; // @[Trigger.scala 30:23]
  wire  _addrHit_res_T_13 = 2'h2 == tdata_5_matchType ? addrHit_greater_2 : 2'h0 == tdata_5_matchType & addrHit_equal_2; // @[Mux.scala 81:58]
  wire  addrHit_res_2 = 2'h3 == tdata_5_matchType ? addrHit_less_2 : _addrHit_res_T_13; // @[Mux.scala 81:58]
  wire  addrHit_2 = addrHit_res_2 & tEnable_5; // @[Trigger.scala 35:9]
  wire  load_hit_2 = addrHit_2 & ~tdata_5_select; // @[AtomicsUnit.scala 363:30]
  wire  _backendTriggerHitReg_2_T = load_hit_0 & load_hit_1; // @[AtomicsUnit.scala 367:46]
  wire  _GEN_528 = tdata_2_chain ? load_hit_0 & load_hit_1 : load_hit_0; // @[AtomicsUnit.scala 366:26 367:31 364:48]
  wire  _GEN_529 = tdata_2_chain ? _backendTriggerHitReg_2_T : load_hit_1; // @[AtomicsUnit.scala 366:26 368:31 364:48]
  wire  _GEN_530 = ~in_uop_cf_trigger_backendEn_1 ? 1'h0 : load_hit_2; // @[AtomicsUnit.scala 370:43 371:31 364:48]
  wire  _difftest_io_valid_T_3 = io_out_bits_uop_ctrl_fuOpType == 7'h7 | io_out_bits_uop_ctrl_fuOpType == 7'h6; // @[AtomicsUnit.scala 409:45]
  DifftestLrScEvent difftest ( // @[AtomicsUnit.scala 405:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_valid(difftest_io_valid),
    .io_success(difftest_io_success)
  );
  assign io_in_ready = state == 3'h0; // @[AtomicsUnit.scala 96:15]
  assign io_out_valid = state == 3'h7; // @[AtomicsUnit.scala 296:15]
  assign io_out_bits_uop_cf_exceptionVec_5 = exceptionVec_5; // @[AtomicsUnit.scala 296:29 299:37]
  assign io_out_bits_uop_cf_exceptionVec_6 = exceptionVec_6; // @[AtomicsUnit.scala 296:29 299:37]
  assign io_out_bits_uop_cf_exceptionVec_7 = exceptionVec_7; // @[AtomicsUnit.scala 296:29 299:37]
  assign io_out_bits_uop_cf_exceptionVec_13 = exceptionVec_13; // @[AtomicsUnit.scala 296:29 299:37]
  assign io_out_bits_uop_cf_exceptionVec_15 = exceptionVec_15; // @[AtomicsUnit.scala 296:29 299:37]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = in_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = in_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = isLr ? 1'h0 : backendTriggerHitReg_0; // @[AtomicsUnit.scala 379:13 378:41 386:46]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = isLr ? 1'h0 : backendTriggerHitReg_1; // @[AtomicsUnit.scala 379:13 378:41 387:46]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = isLr & backendTriggerHitReg_2; // @[AtomicsUnit.scala 379:13 378:41 381:46]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = isLr & backendTriggerHitReg_3; // @[AtomicsUnit.scala 379:13 378:41 382:46]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = isLr ? 1'h0 : backendTriggerHitReg_4; // @[AtomicsUnit.scala 379:13 378:41 388:46]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = isLr & backendTriggerHitReg_5; // @[AtomicsUnit.scala 379:13 378:41 383:46]
  assign io_out_bits_uop_ctrl_fuOpType = in_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_ctrl_rfWen = in_uop_ctrl_rfWen; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_ctrl_fpWen = in_uop_ctrl_fpWen; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_pdest = in_uop_pdest; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_robIdx_flag = in_uop_robIdx_flag; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_uop_robIdx_value = in_uop_robIdx_value; // @[AtomicsUnit.scala 296:29 298:21]
  assign io_out_bits_data = resp_data; // @[AtomicsUnit.scala 296:29 300:22]
  assign io_out_bits_debug_isMMIO = is_mmio; // @[AtomicsUnit.scala 296:29 303:30]
  assign io_dcache_req_valid = state == 3'h5; // @[AtomicsUnit.scala 198:15]
  assign io_dcache_req_bits_cmd = {{1'd0}, _io_dcache_req_bits_cmd_T_64};
  assign io_dcache_req_bits_addr = paddr; // @[AtomicsUnit.scala 198:32 226:29]
  assign io_dcache_req_bits_data = _io_dcache_req_bits_data_T_19 | _io_dcache_req_bits_data_T_17; // @[Mux.scala 27:73]
  assign io_dcache_req_bits_mask = _io_dcache_req_bits_mask_T_13[7:0];
  assign io_dcache_req_bits_vaddr = in_src_0[38:0];
  assign io_dcache_resp_ready = state == 3'h6 & data_valid; // @[AtomicsUnit.scala 242:33 243:26 86:24]
  assign io_dtlb_req_valid = state == 3'h1; // @[AtomicsUnit.scala 124:15]
  assign io_dtlb_req_bits_vaddr = in_src_0[38:0];
  assign io_dtlb_req_bits_cmd = isLr ? 3'h4 : 3'h5; // @[AtomicsUnit.scala 132:35]
  assign io_dtlb_resp_ready = state == 3'h1; // @[AtomicsUnit.scala 124:15]
  assign io_flush_sbuffer_valid = state == 3'h3; // @[AtomicsUnit.scala 187:15]
  assign io_feedbackSlow_valid = io_feedbackSlow_valid_REG_1; // @[AtomicsUnit.scala 116:31]
  assign io_feedbackSlow_bits_rsIdx = io_feedbackSlow_bits_rsIdx_r; // @[AtomicsUnit.scala 118:31]
  assign io_exceptionAddr_valid = atom_override_xtval; // @[AtomicsUnit.scala 76:26]
  assign io_exceptionAddr_bits = in_src_0[38:0]; // @[AtomicsUnit.scala 77:26]
  assign difftest_io_clock = clock; // @[AtomicsUnit.scala 406:23]
  assign difftest_io_coreid = io_hartId; // @[AtomicsUnit.scala 407:24]
  assign difftest_io_valid = io_out_valid & _difftest_io_valid_T_3; // @[AtomicsUnit.scala 408:38]
  assign difftest_io_success = is_lrsc_valid; // @[AtomicsUnit.scala 410:25]
  always @(posedge clock) begin
    if (reset) begin // @[AtomicsUnit.scala 52:22]
      state <= 3'h0; // @[AtomicsUnit.scala 52:22]
    end else if (state == 3'h7) begin // @[AtomicsUnit.scala 296:29]
      if (io_out_valid) begin // @[AtomicsUnit.scala 305:26]
        state <= 3'h0; // @[AtomicsUnit.scala 307:13]
      end else begin
        state <= _GEN_324;
      end
    end else begin
      state <= _GEN_324;
    end
    if (reset) begin // @[AtomicsUnit.scala 53:27]
      data_valid <= 1'h0; // @[AtomicsUnit.scala 53:27]
    end else if (state == 3'h7) begin // @[AtomicsUnit.scala 296:29]
      data_valid <= 1'h0; // @[AtomicsUnit.scala 309:16]
    end else begin
      data_valid <= _GEN_248;
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_cf_trigger_backendEn_0 <= io_in_bits_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_cf_trigger_backendEn_1 <= io_in_bits_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_pdest <= io_in_bits_uop_pdest; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 96:30]
      if (_T_1) begin // @[AtomicsUnit.scala 98:25]
        in_src_0 <= io_in_bits_src_0; // @[AtomicsUnit.scala 99:10]
      end
    end
    if (io_storeDataIn_valid) begin // @[AtomicsUnit.scala 105:32]
      in_src_1 <= io_storeDataIn_bits_data; // @[AtomicsUnit.scala 106:15]
    end
    if (reset) begin // @[AtomicsUnit.scala 55:29]
      exceptionVec_5 <= 1'h0; // @[AtomicsUnit.scala 55:29]
    end else if (state == 3'h6) begin // @[AtomicsUnit.scala 242:33]
      if (_T_18) begin // @[AtomicsUnit.scala 244:33]
        if (io_dcache_resp_bits_error & io_csrCtrl_cache_error_enable) begin // @[AtomicsUnit.scala 284:73]
          exceptionVec_5 <= isLr; // @[AtomicsUnit.scala 285:40]
        end else begin
          exceptionVec_5 <= _GEN_276;
        end
      end else begin
        exceptionVec_5 <= _GEN_276;
      end
    end else begin
      exceptionVec_5 <= _GEN_276;
    end
    if (reset) begin // @[AtomicsUnit.scala 55:29]
      exceptionVec_6 <= 1'h0; // @[AtomicsUnit.scala 55:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        exceptionVec_6 <= ~addrAligned; // @[AtomicsUnit.scala 145:41]
      end
    end
    if (reset) begin // @[AtomicsUnit.scala 55:29]
      exceptionVec_7 <= 1'h0; // @[AtomicsUnit.scala 55:29]
    end else if (state == 3'h6) begin // @[AtomicsUnit.scala 242:33]
      if (_T_18) begin // @[AtomicsUnit.scala 244:33]
        if (io_dcache_resp_bits_error & io_csrCtrl_cache_error_enable) begin // @[AtomicsUnit.scala 284:73]
          exceptionVec_7 <= ~isLr; // @[AtomicsUnit.scala 286:40]
        end else begin
          exceptionVec_7 <= _GEN_275;
        end
      end else begin
        exceptionVec_7 <= _GEN_275;
      end
    end else begin
      exceptionVec_7 <= _GEN_275;
    end
    if (reset) begin // @[AtomicsUnit.scala 55:29]
      exceptionVec_13 <= 1'h0; // @[AtomicsUnit.scala 55:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        exceptionVec_13 <= io_dtlb_resp_bits_excp_pf_ld; // @[AtomicsUnit.scala 147:41]
      end
    end
    if (reset) begin // @[AtomicsUnit.scala 55:29]
      exceptionVec_15 <= 1'h0; // @[AtomicsUnit.scala 55:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        exceptionVec_15 <= io_dtlb_resp_bits_excp_pf_st; // @[AtomicsUnit.scala 146:41]
      end
    end
    if (reset) begin // @[AtomicsUnit.scala 56:36]
      atom_override_xtval <= 1'h0; // @[AtomicsUnit.scala 56:36]
    end else if (io_redirect_valid) begin // @[AtomicsUnit.scala 312:28]
      atom_override_xtval <= 1'h0; // @[AtomicsUnit.scala 313:25]
    end else if (state == 3'h2) begin // @[AtomicsUnit.scala 166:25]
      atom_override_xtval <= _GEN_286;
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      atom_override_xtval <= _GEN_263;
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        paddr <= io_dtlb_resp_bits_paddr; // @[AtomicsUnit.scala 137:13]
      end
    end
    if (state == 3'h2) begin // @[AtomicsUnit.scala 166:25]
      if (static_pm_valid) begin // @[AtomicsUnit.scala 168:28]
        is_mmio <= static_pm_bits; // @[AtomicsUnit.scala 172:16]
      end else begin
        is_mmio <= io_pmpResp_mmio;
      end
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        static_pm_valid <= io_dtlb_resp_bits_static_pm_valid; // @[AtomicsUnit.scala 150:17]
      end
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 124:26]
      if (_T_8) begin // @[AtomicsUnit.scala 136:28]
        static_pm_bits <= io_dtlb_resp_bits_static_pm_bits; // @[AtomicsUnit.scala 150:17]
      end
    end
    if (state == 3'h6) begin // @[AtomicsUnit.scala 242:33]
      if (_T_18) begin // @[AtomicsUnit.scala 244:33]
        if (state == 3'h6) begin // @[AtomicsUnit.scala 242:33]
          if (_T_18) begin // @[AtomicsUnit.scala 244:33]
            resp_data <= _resp_data_wire_T_124; // @[AtomicsUnit.scala 258:22]
          end else begin
            resp_data <= 64'h0;
          end
        end else begin
          resp_data <= 64'h0;
        end
      end
    end
    is_lrsc_valid <= _GEN_319[0];
    io_feedbackSlow_valid_REG <= io_in_valid; // @[AtomicsUnit.scala 116:49]
    io_feedbackSlow_valid_REG_1 <= io_feedbackSlow_valid_REG; // @[AtomicsUnit.scala 116:41]
    if (io_in_valid) begin // @[Reg.scala 17:18]
      io_feedbackSlow_bits_rsIdx_r <= io_rsIdx; // @[Reg.scala 17:22]
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_0_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_0_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_0_chain <= io_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_0_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_1_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_1_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_1_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_2_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_2_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_2_chain <= io_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_2_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_3_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_3_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_3_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_4_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_4_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_4_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_5_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_5_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 322:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 323:44]
        tdata_5_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 323:44]
      end
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_0 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_0 <= io_csrCtrl_trigger_enable_2; // @[AtomicsUnit.scala 321:11]
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_1 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_1 <= io_csrCtrl_trigger_enable_3; // @[AtomicsUnit.scala 321:11]
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_2 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_2 <= io_csrCtrl_trigger_enable_7; // @[AtomicsUnit.scala 321:11]
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_3 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_3 <= io_csrCtrl_trigger_enable_4; // @[AtomicsUnit.scala 321:11]
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_4 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_4 <= io_csrCtrl_trigger_enable_5; // @[AtomicsUnit.scala 321:11]
    end
    if (reset) begin // @[AtomicsUnit.scala 319:24]
      tEnable_5 <= 1'h0; // @[AtomicsUnit.scala 319:24]
    end else begin
      tEnable_5 <= io_csrCtrl_trigger_enable_9; // @[AtomicsUnit.scala 321:11]
    end
    backendTriggerHitReg_0 <= _T_15 & _GEN_525; // @[AtomicsUnit.scala 329:24 331:30]
    backendTriggerHitReg_1 <= _T_15 & _GEN_526; // @[AtomicsUnit.scala 329:24 331:30]
    backendTriggerHitReg_2 <= _T_15 & _GEN_528; // @[AtomicsUnit.scala 329:24 331:30]
    backendTriggerHitReg_3 <= _T_15 & _GEN_529; // @[AtomicsUnit.scala 329:24 331:30]
    backendTriggerHitReg_4 <= _T_15 & _GEN_527; // @[AtomicsUnit.scala 329:24 331:30]
    backendTriggerHitReg_5 <= _T_15 & _GEN_530; // @[AtomicsUnit.scala 329:24 331:30]
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  data_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_uop_cf_trigger_backendEn_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_uop_cf_trigger_backendEn_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  in_uop_ctrl_fuOpType = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  in_uop_ctrl_rfWen = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  in_uop_ctrl_fpWen = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  in_uop_pdest = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  in_uop_robIdx_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  in_uop_robIdx_value = _RAND_9[6:0];
  _RAND_10 = {2{`RANDOM}};
  in_src_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  in_src_1 = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  exceptionVec_5 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  exceptionVec_6 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  exceptionVec_7 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  exceptionVec_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  exceptionVec_15 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  atom_override_xtval = _RAND_17[0:0];
  _RAND_18 = {2{`RANDOM}};
  paddr = _RAND_18[35:0];
  _RAND_19 = {1{`RANDOM}};
  is_mmio = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  static_pm_valid = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  static_pm_bits = _RAND_21[0:0];
  _RAND_22 = {2{`RANDOM}};
  resp_data = _RAND_22[63:0];
  _RAND_23 = {1{`RANDOM}};
  is_lrsc_valid = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_feedbackSlow_valid_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_feedbackSlow_valid_REG_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_feedbackSlow_bits_rsIdx_r = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  tdata_0_matchType = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  tdata_0_select = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  tdata_0_chain = _RAND_29[0:0];
  _RAND_30 = {2{`RANDOM}};
  tdata_0_tdata2 = _RAND_30[63:0];
  _RAND_31 = {1{`RANDOM}};
  tdata_1_matchType = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  tdata_1_select = _RAND_32[0:0];
  _RAND_33 = {2{`RANDOM}};
  tdata_1_tdata2 = _RAND_33[63:0];
  _RAND_34 = {1{`RANDOM}};
  tdata_2_matchType = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  tdata_2_select = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  tdata_2_chain = _RAND_36[0:0];
  _RAND_37 = {2{`RANDOM}};
  tdata_2_tdata2 = _RAND_37[63:0];
  _RAND_38 = {1{`RANDOM}};
  tdata_3_matchType = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  tdata_3_select = _RAND_39[0:0];
  _RAND_40 = {2{`RANDOM}};
  tdata_3_tdata2 = _RAND_40[63:0];
  _RAND_41 = {1{`RANDOM}};
  tdata_4_matchType = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  tdata_4_select = _RAND_42[0:0];
  _RAND_43 = {2{`RANDOM}};
  tdata_4_tdata2 = _RAND_43[63:0];
  _RAND_44 = {1{`RANDOM}};
  tdata_5_matchType = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  tdata_5_select = _RAND_45[0:0];
  _RAND_46 = {2{`RANDOM}};
  tdata_5_tdata2 = _RAND_46[63:0];
  _RAND_47 = {1{`RANDOM}};
  tEnable_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  tEnable_1 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  tEnable_2 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  tEnable_3 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  tEnable_4 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  tEnable_5 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  backendTriggerHitReg_0 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  backendTriggerHitReg_1 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  backendTriggerHitReg_2 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  backendTriggerHitReg_3 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  backendTriggerHitReg_4 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  backendTriggerHitReg_5 = _RAND_58[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
