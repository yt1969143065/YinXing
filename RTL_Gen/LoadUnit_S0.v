module LoadUnit_S0(
  output        io_in_ready,
  input         io_in_valid,
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
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [5:0]  io_in_bits_uop_lqIdx_value,
  input         io_in_bits_uop_sqIdx_flag,
  input  [4:0]  io_in_bits_uop_sqIdx_value,
  input  [63:0] io_in_bits_src_0,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_4,
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
  output [7:0]  io_out_bits_mask,
  output [4:0]  io_out_bits_rsIdx,
  output        io_out_bits_isSoftPrefetch,
  output        io_dtlbReq_valid,
  output [38:0] io_dtlbReq_bits_vaddr,
  input         io_dcacheReq_ready,
  output        io_dcacheReq_valid,
  output [4:0]  io_dcacheReq_bits_cmd,
  output [35:0] io_dcacheReq_bits_addr,
  output [1:0]  io_dcacheReq_bits_instrtype,
  input  [4:0]  io_rsIdx,
  input  [1:0]  io_loadFastMatch
);
  wire [11:0] imm12 = io_in_bits_uop_ctrl_imm[11:0]; // @[LoadUnit.scala 70:39]
  wire  s0_vaddr_signBit = imm12[11]; // @[BitUtils.scala 43:20]
  wire [26:0] _s0_vaddr_T_2 = s0_vaddr_signBit ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 74:12]
  wire [38:0] _s0_vaddr_T_3 = {_s0_vaddr_T_2,imm12}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_3 = {{25'd0}, _s0_vaddr_T_3}; // @[LoadUnit.scala 72:45]
  wire [63:0] s0_vaddr = io_in_bits_src_0 + _GEN_3; // @[LoadUnit.scala 72:45]
  wire  _s0_mask_T_1 = 2'h0 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _s0_mask_T_2 = 2'h1 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _s0_mask_T_3 = 2'h2 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _s0_mask_T_4 = 2'h3 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire [1:0] _s0_mask_T_6 = _s0_mask_T_2 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_7 = _s0_mask_T_3 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_8 = _s0_mask_T_4 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_4 = {{1'd0}, _s0_mask_T_1}; // @[Mux.scala 27:73]
  wire [1:0] _s0_mask_T_9 = _GEN_4 | _s0_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_5 = {{2'd0}, _s0_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_10 = _GEN_5 | _s0_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_6 = {{4'd0}, _s0_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_11 = _GEN_6 | _s0_mask_T_8; // @[Mux.scala 27:73]
  wire [14:0] _GEN_2 = {{7'd0}, _s0_mask_T_11}; // @[MemCommon.scala 37:8]
  wire [14:0] s0_mask = _GEN_2 << s0_vaddr[2:0]; // @[MemCommon.scala 37:8]
  wire  isSoftPrefetch = io_in_bits_uop_ctrl_fuOpType[3]; // @[package.scala 383:40]
  wire  isSoftPrefetchRead = io_in_bits_uop_ctrl_fuOpType == 7'h9; // @[LoadUnit.scala 97:49]
  wire  isSoftPrefetchWrite = io_in_bits_uop_ctrl_fuOpType == 7'ha; // @[LoadUnit.scala 98:50]
  wire [1:0] _GEN_0 = isSoftPrefetchWrite ? 2'h3 : 2'h0; // @[LoadUnit.scala 113:36 114:28 116:28]
  wire [1:0] _GEN_1 = isSoftPrefetchRead ? 2'h2 : _GEN_0; // @[LoadUnit.scala 111:29 112:28]
  wire  _addrAligned_T_2 = ~s0_vaddr[0]; // @[LoadUnit.scala 132:34]
  wire  _addrAligned_T_4 = s0_vaddr[1:0] == 2'h0; // @[LoadUnit.scala 133:34]
  wire  _addrAligned_T_6 = s0_vaddr[2:0] == 3'h0; // @[LoadUnit.scala 134:34]
  wire  addrAligned = _s0_mask_T_1 | _s0_mask_T_2 & _addrAligned_T_2 | _s0_mask_T_3 & _addrAligned_T_4 | _s0_mask_T_4 &
    _addrAligned_T_6; // @[Mux.scala 27:73]
  assign io_in_ready = ~io_in_valid | io_out_ready & io_dcacheReq_ready; // @[LoadUnit.scala 148:31]
  assign io_out_valid = io_in_valid & io_dcacheReq_ready; // @[LoadUnit.scala 137:31]
  assign io_out_bits_uop_cf_exceptionVec_4 = ~addrAligned; // @[LoadUnit.scala 143:58]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[LoadUnit.scala 142:19]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[LoadUnit.scala 142:19]
  assign io_out_bits_vaddr = s0_vaddr[38:0]; // @[LoadUnit.scala 140:21]
  assign io_out_bits_mask = s0_mask[7:0]; // @[LoadUnit.scala 141:20]
  assign io_out_bits_rsIdx = io_rsIdx; // @[LoadUnit.scala 144:21]
  assign io_out_bits_isSoftPrefetch = io_in_bits_uop_ctrl_fuOpType[3]; // @[package.scala 383:40]
  assign io_dtlbReq_valid = io_in_valid; // @[LoadUnit.scala 101:20]
  assign io_dtlbReq_bits_vaddr = s0_vaddr[38:0]; // @[LoadUnit.scala 102:25]
  assign io_dcacheReq_valid = io_in_valid; // @[LoadUnit.scala 110:22]
  assign io_dcacheReq_bits_cmd = {{3'd0}, _GEN_1};
  assign io_dcacheReq_bits_addr = s0_vaddr[35:0]; // @[LoadUnit.scala 118:26]
  assign io_dcacheReq_bits_instrtype = isSoftPrefetch ? 2'h3 : 2'h0; // @[LoadUnit.scala 121:24 122:33 124:33]
endmodule
