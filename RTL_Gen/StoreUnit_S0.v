module StoreUnit_S0(
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
  input  [4:0]  io_rsIdx,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_6,
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
  output        io_out_bits_wlineflag,
  output [4:0]  io_out_bits_rsIdx,
  output        io_dtlbReq_valid,
  output [38:0] io_dtlbReq_bits_vaddr
);
  wire [11:0] imm12 = io_in_bits_uop_ctrl_imm[11:0]; // @[StoreUnit.scala 42:47]
  wire [12:0] _saddr_lo_T_1 = {1'h0,imm12}; // @[Cat.scala 31:58]
  wire [12:0] _GEN_0 = {{1'd0}, io_in_bits_src_0[11:0]}; // @[StoreUnit.scala 43:42]
  wire [12:0] saddr_lo = _GEN_0 + _saddr_lo_T_1; // @[StoreUnit.scala 43:42]
  wire [26:0] _saddr_hi_T_5 = io_in_bits_src_0[38:12] + 27'h1; // @[StoreUnit.scala 45:90]
  wire [26:0] _saddr_hi_T_6 = imm12[11] ? io_in_bits_src_0[38:12] : _saddr_hi_T_5; // @[StoreUnit.scala 45:8]
  wire [26:0] _saddr_hi_T_12 = io_in_bits_src_0[38:12] + 27'h7ffffff; // @[StoreUnit.scala 46:54]
  wire [26:0] _saddr_hi_T_14 = imm12[11] ? _saddr_hi_T_12 : io_in_bits_src_0[38:12]; // @[StoreUnit.scala 46:8]
  wire [26:0] saddr_hi = saddr_lo[12] ? _saddr_hi_T_6 : _saddr_hi_T_14; // @[StoreUnit.scala 44:21]
  wire  _io_out_bits_mask_T_1 = 2'h0 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _io_out_bits_mask_T_2 = 2'h1 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _io_out_bits_mask_T_3 = 2'h2 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _io_out_bits_mask_T_4 = 2'h3 == io_in_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire [1:0] _io_out_bits_mask_T_6 = _io_out_bits_mask_T_2 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_mask_T_7 = _io_out_bits_mask_T_3 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_mask_T_8 = _io_out_bits_mask_T_4 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_1 = {{1'd0}, _io_out_bits_mask_T_1}; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_mask_T_9 = _GEN_1 | _io_out_bits_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_2 = {{2'd0}, _io_out_bits_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_mask_T_10 = _GEN_2 | _io_out_bits_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_3 = {{4'd0}, _io_out_bits_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_mask_T_11 = _GEN_3 | _io_out_bits_mask_T_8; // @[Mux.scala 27:73]
  wire [14:0] _GEN_4 = {{7'd0}, _io_out_bits_mask_T_11}; // @[MemCommon.scala 37:8]
  wire [14:0] _io_out_bits_mask_T_13 = _GEN_4 << io_out_bits_vaddr[2:0]; // @[MemCommon.scala 37:8]
  wire  _addrAligned_T_2 = ~io_out_bits_vaddr[0]; // @[StoreUnit.scala 76:40]
  wire  _addrAligned_T_4 = io_out_bits_vaddr[1:0] == 2'h0; // @[StoreUnit.scala 77:42]
  wire  _addrAligned_T_6 = io_out_bits_vaddr[2:0] == 3'h0; // @[StoreUnit.scala 78:42]
  wire  addrAligned = _io_out_bits_mask_T_1 | _io_out_bits_mask_T_2 & _addrAligned_T_2 | _io_out_bits_mask_T_3 &
    _addrAligned_T_4 | _io_out_bits_mask_T_4 & _addrAligned_T_6; // @[Mux.scala 27:73]
  assign io_in_ready = io_out_ready; // @[StoreUnit.scala 71:15]
  assign io_out_valid = io_in_valid; // @[StoreUnit.scala 70:16]
  assign io_out_bits_uop_cf_exceptionVec_6 = ~addrAligned; // @[StoreUnit.scala 80:59]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_in_bits_uop_cf_trigger_backendEn_1; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_in_bits_uop_cf_ftqPtr_flag; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_ftqPtr_value = io_in_bits_uop_cf_ftqPtr_value; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_cf_ftqOffset = io_in_bits_uop_cf_ftqOffset; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_sqIdx_flag = io_in_bits_uop_sqIdx_flag; // @[StoreUnit.scala 64:19]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[StoreUnit.scala 64:19]
  assign io_out_bits_vaddr = {saddr_hi,saddr_lo[11:0]}; // @[Cat.scala 31:58]
  assign io_out_bits_mask = _io_out_bits_mask_T_13[7:0]; // @[StoreUnit.scala 67:20]
  assign io_out_bits_wlineflag = io_in_bits_uop_ctrl_fuOpType == 7'h7; // @[StoreUnit.scala 69:57]
  assign io_out_bits_rsIdx = io_rsIdx; // @[StoreUnit.scala 66:21]
  assign io_dtlbReq_valid = io_in_valid; // @[StoreUnit.scala 51:20]
  assign io_dtlbReq_bits_vaddr = {saddr_hi,saddr_lo[11:0]}; // @[Cat.scala 31:58]
endmodule
