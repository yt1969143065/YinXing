module SinkC_2(
  input          clock,
  input          reset,
  output         io_c_ready,
  input          io_c_valid,
  input  [2:0]   io_c_bits_opcode,
  input  [2:0]   io_c_bits_param,
  input  [2:0]   io_c_bits_size,
  input  [5:0]   io_c_bits_source,
  input  [35:0]  io_c_bits_address,
  input          io_c_bits_echo_blockisdirty,
  input  [255:0] io_c_bits_data,
  input          io_alloc_ready,
  output         io_alloc_valid,
  output [2:0]   io_alloc_bits_opcode,
  output [2:0]   io_alloc_bits_param,
  output [2:0]   io_alloc_bits_size,
  output [5:0]   io_alloc_bits_source,
  output [11:0]  io_alloc_bits_set,
  output [15:0]  io_alloc_bits_tag,
  output [5:0]   io_alloc_bits_off,
  output [2:0]   io_alloc_bits_bufIdx,
  output         io_alloc_bits_dirty,
  output         io_resp_valid,
  output         io_resp_bits_hasData,
  output [2:0]   io_resp_bits_param,
  output [5:0]   io_resp_bits_source,
  output         io_resp_bits_last,
  output [11:0]  io_resp_bits_set,
  output [2:0]   io_resp_bits_bufIdx,
  output         io_task_ready,
  input          io_task_valid,
  input  [11:0]  io_task_bits_set,
  input  [15:0]  io_task_bits_tag,
  input  [2:0]   io_task_bits_size,
  input  [1:0]   io_task_bits_way,
  input  [5:0]   io_task_bits_off,
  input  [2:0]   io_task_bits_bufIdx,
  input  [2:0]   io_task_bits_opcode,
  input  [3:0]   io_task_bits_source,
  input          io_task_bits_save,
  input          io_task_bits_drop,
  input          io_task_bits_release,
  input          io_bs_waddr_ready,
  output         io_bs_waddr_valid,
  output [1:0]   io_bs_waddr_bits_way,
  output [11:0]  io_bs_waddr_bits_set,
  output         io_bs_waddr_bits_beat,
  output         io_bs_waddr_bits_noop,
  output [255:0] io_bs_wdata_data,
  input          io_sourceD_rhazard_valid,
  input  [1:0]   io_sourceD_rhazard_bits_way,
  input  [11:0]  io_sourceD_rhazard_bits_set,
  input          io_release_ready,
  output         io_release_valid,
  output [2:0]   io_release_bits_opcode,
  output [2:0]   io_release_bits_size,
  output [3:0]   io_release_bits_source,
  output [35:0]  io_release_bits_address,
  output [255:0] io_release_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [255:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [255:0] _RAND_2;
  reg [255:0] _RAND_3;
  reg [255:0] _RAND_4;
  reg [255:0] _RAND_5;
  reg [255:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [255:0] _RAND_8;
  reg [255:0] _RAND_9;
  reg [255:0] _RAND_10;
  reg [255:0] _RAND_11;
  reg [255:0] _RAND_12;
  reg [255:0] _RAND_13;
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
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
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
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_c_ready & io_c_valid; // @[Decoupled.scala 50:35]
  reg [255:0] buffer_0_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_0_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_1_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_1_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_2_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_2_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_3_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_3_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_4_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_4_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_5_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_5_1; // @[SinkC.scala 12:19]
  reg [255:0] buffer_6_0; // @[SinkC.scala 12:19]
  reg [255:0] buffer_6_1; // @[SinkC.scala 12:19]
  reg [11:0] bufferSet_0; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_1; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_2; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_3; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_4; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_5; // @[SinkC.scala 13:22]
  reg [11:0] bufferSet_6; // @[SinkC.scala 13:22]
  reg  bufferSetVals_0; // @[SinkC.scala 14:30]
  reg  bufferSetVals_1; // @[SinkC.scala 14:30]
  reg  bufferSetVals_2; // @[SinkC.scala 14:30]
  reg  bufferSetVals_3; // @[SinkC.scala 14:30]
  reg  bufferSetVals_4; // @[SinkC.scala 14:30]
  reg  bufferSetVals_5; // @[SinkC.scala 14:30]
  reg  bufferSetVals_6; // @[SinkC.scala 14:30]
  reg  beatValsSave_0_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_0_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_1_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_1_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_2_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_2_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_3_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_3_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_4_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_4_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_5_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_5_1; // @[SinkC.scala 15:29]
  reg  beatValsSave_6_0; // @[SinkC.scala 15:29]
  reg  beatValsSave_6_1; // @[SinkC.scala 15:29]
  reg  beatValsThrough_0_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_0_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_1_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_1_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_2_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_2_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_3_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_3_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_4_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_4_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_5_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_5_1; // @[SinkC.scala 18:32]
  reg  beatValsThrough_6_0; // @[SinkC.scala 18:32]
  reg  beatValsThrough_6_1; // @[SinkC.scala 18:32]
  wire  beatVals_0_0 = beatValsSave_0_0 | beatValsThrough_0_0; // @[SinkC.scala 29:18]
  wire  beatVals_0_1 = beatValsSave_0_1 | beatValsThrough_0_1; // @[SinkC.scala 29:18]
  wire  beatVals_1_0 = beatValsSave_1_0 | beatValsThrough_1_0; // @[SinkC.scala 29:18]
  wire  beatVals_1_1 = beatValsSave_1_1 | beatValsThrough_1_1; // @[SinkC.scala 29:18]
  wire  beatVals_2_0 = beatValsSave_2_0 | beatValsThrough_2_0; // @[SinkC.scala 29:18]
  wire  beatVals_2_1 = beatValsSave_2_1 | beatValsThrough_2_1; // @[SinkC.scala 29:18]
  wire  beatVals_3_0 = beatValsSave_3_0 | beatValsThrough_3_0; // @[SinkC.scala 29:18]
  wire  beatVals_3_1 = beatValsSave_3_1 | beatValsThrough_3_1; // @[SinkC.scala 29:18]
  wire  beatVals_4_0 = beatValsSave_4_0 | beatValsThrough_4_0; // @[SinkC.scala 29:18]
  wire  beatVals_4_1 = beatValsSave_4_1 | beatValsThrough_4_1; // @[SinkC.scala 29:18]
  wire  beatVals_5_0 = beatValsSave_5_0 | beatValsThrough_5_0; // @[SinkC.scala 29:18]
  wire  beatVals_5_1 = beatValsSave_5_1 | beatValsThrough_5_1; // @[SinkC.scala 29:18]
  wire  beatVals_6_0 = beatValsSave_6_0 | beatValsThrough_6_0; // @[SinkC.scala 29:18]
  wire  beatVals_6_1 = beatValsSave_6_1 | beatValsThrough_6_1; // @[SinkC.scala 29:18]
  wire [1:0] _bufVals_T = {beatVals_0_1,beatVals_0_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_2 = {beatVals_1_1,beatVals_1_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_4 = {beatVals_2_1,beatVals_2_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_6 = {beatVals_3_1,beatVals_3_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_8 = {beatVals_4_1,beatVals_4_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_10 = {beatVals_5_1,beatVals_5_0}; // @[SinkC.scala 38:46]
  wire [1:0] _bufVals_T_12 = {beatVals_6_1,beatVals_6_0}; // @[SinkC.scala 38:46]
  wire [6:0] bufVals = {|_bufVals_T_12,|_bufVals_T_10,|_bufVals_T_8,|_bufVals_T_6,|_bufVals_T_4,|_bufVals_T_2,|
    _bufVals_T}; // @[SinkC.scala 38:63]
  wire  full = &bufVals; // @[SinkC.scala 39:26]
  wire  isRelease = io_c_bits_opcode == 3'h6; // @[SinkC.scala 41:33]
  wire  isReleaseData = io_c_bits_opcode == 3'h7; // @[SinkC.scala 42:37]
  wire  isProbeAck = io_c_bits_opcode == 3'h4; // @[SinkC.scala 43:34]
  wire  isProbeAckData = io_c_bits_opcode == 3'h5; // @[SinkC.scala 44:38]
  wire  isResp = isProbeAck | isProbeAckData; // @[SinkC.scala 45:27]
  wire  isReq = isRelease | isReleaseData; // @[SinkC.scala 46:25]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_c_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  count = beats1 & ~counter1; // @[Edges.scala 233:25]
  wire  noSpace = full & beats1_opdata; // @[SinkC.scala 49:22]
  wire [6:0] _insertIdx_T = ~bufVals; // @[SinkC.scala 50:35]
  wire [2:0] _insertIdx_T_8 = _insertIdx_T[5] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_9 = _insertIdx_T[4] ? 3'h4 : _insertIdx_T_8; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_10 = _insertIdx_T[3] ? 3'h3 : _insertIdx_T_9; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_11 = _insertIdx_T[2] ? 3'h2 : _insertIdx_T_10; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_12 = _insertIdx_T[1] ? 3'h1 : _insertIdx_T_11; // @[Mux.scala 47:70]
  wire [2:0] insertIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  wire  _insertIdxReg_T_1 = _T & first; // @[SinkC.scala 51:52]
  reg [2:0] insertIdxReg; // @[Reg.scala 16:16]
  wire [27:0] set = io_c_bits_address[35:8]; // @[HuanCun.scala 139:22]
  wire [11:0] set_1 = set[11:0]; // @[HuanCun.scala 141:30]
  wire  _io_c_ready_T = ~noSpace; // @[SinkC.scala 54:25]
  reg [6:0] setMatchVec; // @[SinkC.scala 84:28]
  wire  _GEN_592 = 3'h0 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_593 = ~count; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_595 = 3'h1 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_598 = 3'h2 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_601 = 3'h3 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_604 = 3'h4 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_607 = 3'h5 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_610 = 3'h6 == insertIdx; // @[SinkC.scala 12:19 89:{32,32}]
  wire  _GEN_615 = _GEN_592 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_23 = _GEN_592 & _GEN_593 | beatValsSave_0_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_617 = _GEN_592 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_24 = _GEN_592 & count | beatValsSave_0_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_620 = _GEN_595 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_25 = _GEN_595 & _GEN_593 | beatValsSave_1_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_622 = _GEN_595 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_26 = _GEN_595 & count | beatValsSave_1_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_625 = _GEN_598 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_27 = _GEN_598 & _GEN_593 | beatValsSave_2_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_627 = _GEN_598 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_28 = _GEN_598 & count | beatValsSave_2_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_630 = _GEN_601 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_29 = _GEN_601 & _GEN_593 | beatValsSave_3_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_632 = _GEN_601 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_30 = _GEN_601 & count | beatValsSave_3_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_635 = _GEN_604 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_31 = _GEN_604 & _GEN_593 | beatValsSave_4_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_637 = _GEN_604 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_32 = _GEN_604 & count | beatValsSave_4_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_640 = _GEN_607 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_33 = _GEN_607 & _GEN_593 | beatValsSave_5_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_642 = _GEN_607 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_34 = _GEN_607 & count | beatValsSave_5_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_645 = _GEN_610 & _GEN_593; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_35 = _GEN_610 & _GEN_593 | beatValsSave_6_0; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_647 = _GEN_610 & count; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_36 = _GEN_610 & count | beatValsSave_6_1; // @[SinkC.scala 15:29 90:{38,38}]
  wire  _GEN_37 = _GEN_615 | beatValsThrough_0_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_38 = _GEN_617 | beatValsThrough_0_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_39 = _GEN_620 | beatValsThrough_1_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_40 = _GEN_622 | beatValsThrough_1_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_41 = _GEN_625 | beatValsThrough_2_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_42 = _GEN_627 | beatValsThrough_2_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_43 = _GEN_630 | beatValsThrough_3_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_44 = _GEN_632 | beatValsThrough_3_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_45 = _GEN_635 | beatValsThrough_4_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_46 = _GEN_637 | beatValsThrough_4_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_47 = _GEN_640 | beatValsThrough_5_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_48 = _GEN_642 | beatValsThrough_5_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_49 = _GEN_645 | beatValsThrough_6_0; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_50 = _GEN_647 | beatValsThrough_6_1; // @[SinkC.scala 18:32 91:{41,41}]
  wire  _GEN_58 = _GEN_592 | bufferSetVals_0; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_59 = _GEN_595 | bufferSetVals_1; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_60 = _GEN_598 | bufferSetVals_2; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_61 = _GEN_601 | bufferSetVals_3; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_62 = _GEN_604 | bufferSetVals_4; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_63 = _GEN_607 | bufferSetVals_5; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_64 = _GEN_610 | bufferSetVals_6; // @[SinkC.scala 14:30 94:{34,34}]
  wire  _GEN_72 = isProbeAckData ? _GEN_58 : bufferSetVals_0; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_73 = isProbeAckData ? _GEN_59 : bufferSetVals_1; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_74 = isProbeAckData ? _GEN_60 : bufferSetVals_2; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_75 = isProbeAckData ? _GEN_61 : bufferSetVals_3; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_76 = isProbeAckData ? _GEN_62 : bufferSetVals_4; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_77 = isProbeAckData ? _GEN_63 : bufferSetVals_5; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_78 = isProbeAckData ? _GEN_64 : bufferSetVals_6; // @[SinkC.scala 93:28 14:30]
  wire  _GEN_690 = 3'h0 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_693 = 3'h1 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_696 = 3'h2 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_699 = 3'h3 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_702 = 3'h4 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_705 = 3'h5 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_708 = 3'h6 == insertIdxReg; // @[SinkC.scala 12:19 98:{35,35}]
  wire  _GEN_713 = _GEN_690 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_100 = _GEN_690 & _GEN_593 | beatValsSave_0_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_715 = _GEN_690 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_101 = _GEN_690 & count | beatValsSave_0_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_718 = _GEN_693 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_102 = _GEN_693 & _GEN_593 | beatValsSave_1_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_720 = _GEN_693 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_103 = _GEN_693 & count | beatValsSave_1_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_723 = _GEN_696 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_104 = _GEN_696 & _GEN_593 | beatValsSave_2_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_725 = _GEN_696 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_105 = _GEN_696 & count | beatValsSave_2_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_728 = _GEN_699 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_106 = _GEN_699 & _GEN_593 | beatValsSave_3_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_730 = _GEN_699 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_107 = _GEN_699 & count | beatValsSave_3_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_733 = _GEN_702 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_108 = _GEN_702 & _GEN_593 | beatValsSave_4_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_735 = _GEN_702 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_109 = _GEN_702 & count | beatValsSave_4_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_738 = _GEN_705 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_110 = _GEN_705 & _GEN_593 | beatValsSave_5_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_740 = _GEN_705 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_111 = _GEN_705 & count | beatValsSave_5_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_743 = _GEN_708 & _GEN_593; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_112 = _GEN_708 & _GEN_593 | beatValsSave_6_0; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_745 = _GEN_708 & count; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_113 = _GEN_708 & count | beatValsSave_6_1; // @[SinkC.scala 15:29 99:{41,41}]
  wire  _GEN_114 = _GEN_713 | beatValsThrough_0_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_115 = _GEN_715 | beatValsThrough_0_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_116 = _GEN_718 | beatValsThrough_1_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_117 = _GEN_720 | beatValsThrough_1_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_118 = _GEN_723 | beatValsThrough_2_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_119 = _GEN_725 | beatValsThrough_2_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_120 = _GEN_728 | beatValsThrough_3_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_121 = _GEN_730 | beatValsThrough_3_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_122 = _GEN_733 | beatValsThrough_4_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_123 = _GEN_735 | beatValsThrough_4_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_124 = _GEN_738 | beatValsThrough_5_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_125 = _GEN_740 | beatValsThrough_5_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_126 = _GEN_743 | beatValsThrough_6_0; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_127 = _GEN_745 | beatValsThrough_6_1; // @[SinkC.scala 100:{44,44} 18:32]
  wire  _GEN_142 = first ? _GEN_23 : _GEN_100; // @[SinkC.scala 88:17]
  wire  _GEN_143 = first ? _GEN_24 : _GEN_101; // @[SinkC.scala 88:17]
  wire  _GEN_144 = first ? _GEN_25 : _GEN_102; // @[SinkC.scala 88:17]
  wire  _GEN_145 = first ? _GEN_26 : _GEN_103; // @[SinkC.scala 88:17]
  wire  _GEN_146 = first ? _GEN_27 : _GEN_104; // @[SinkC.scala 88:17]
  wire  _GEN_147 = first ? _GEN_28 : _GEN_105; // @[SinkC.scala 88:17]
  wire  _GEN_148 = first ? _GEN_29 : _GEN_106; // @[SinkC.scala 88:17]
  wire  _GEN_149 = first ? _GEN_30 : _GEN_107; // @[SinkC.scala 88:17]
  wire  _GEN_150 = first ? _GEN_31 : _GEN_108; // @[SinkC.scala 88:17]
  wire  _GEN_151 = first ? _GEN_32 : _GEN_109; // @[SinkC.scala 88:17]
  wire  _GEN_152 = first ? _GEN_33 : _GEN_110; // @[SinkC.scala 88:17]
  wire  _GEN_153 = first ? _GEN_34 : _GEN_111; // @[SinkC.scala 88:17]
  wire  _GEN_154 = first ? _GEN_35 : _GEN_112; // @[SinkC.scala 88:17]
  wire  _GEN_155 = first ? _GEN_36 : _GEN_113; // @[SinkC.scala 88:17]
  wire  _GEN_156 = first ? _GEN_37 : _GEN_114; // @[SinkC.scala 88:17]
  wire  _GEN_157 = first ? _GEN_38 : _GEN_115; // @[SinkC.scala 88:17]
  wire  _GEN_158 = first ? _GEN_39 : _GEN_116; // @[SinkC.scala 88:17]
  wire  _GEN_159 = first ? _GEN_40 : _GEN_117; // @[SinkC.scala 88:17]
  wire  _GEN_160 = first ? _GEN_41 : _GEN_118; // @[SinkC.scala 88:17]
  wire  _GEN_161 = first ? _GEN_42 : _GEN_119; // @[SinkC.scala 88:17]
  wire  _GEN_162 = first ? _GEN_43 : _GEN_120; // @[SinkC.scala 88:17]
  wire  _GEN_163 = first ? _GEN_44 : _GEN_121; // @[SinkC.scala 88:17]
  wire  _GEN_164 = first ? _GEN_45 : _GEN_122; // @[SinkC.scala 88:17]
  wire  _GEN_165 = first ? _GEN_46 : _GEN_123; // @[SinkC.scala 88:17]
  wire  _GEN_166 = first ? _GEN_47 : _GEN_124; // @[SinkC.scala 88:17]
  wire  _GEN_167 = first ? _GEN_48 : _GEN_125; // @[SinkC.scala 88:17]
  wire  _GEN_168 = first ? _GEN_49 : _GEN_126; // @[SinkC.scala 88:17]
  wire  _GEN_169 = first ? _GEN_50 : _GEN_127; // @[SinkC.scala 88:17]
  wire  _GEN_177 = first ? _GEN_72 : bufferSetVals_0; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_178 = first ? _GEN_73 : bufferSetVals_1; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_179 = first ? _GEN_74 : bufferSetVals_2; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_180 = first ? _GEN_75 : bufferSetVals_3; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_181 = first ? _GEN_76 : bufferSetVals_4; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_182 = first ? _GEN_77 : bufferSetVals_5; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_183 = first ? _GEN_78 : bufferSetVals_6; // @[SinkC.scala 88:17 14:30]
  wire  _GEN_205 = _T & beats1_opdata ? _GEN_142 : beatValsSave_0_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_206 = _T & beats1_opdata ? _GEN_143 : beatValsSave_0_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_207 = _T & beats1_opdata ? _GEN_144 : beatValsSave_1_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_208 = _T & beats1_opdata ? _GEN_145 : beatValsSave_1_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_209 = _T & beats1_opdata ? _GEN_146 : beatValsSave_2_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_210 = _T & beats1_opdata ? _GEN_147 : beatValsSave_2_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_211 = _T & beats1_opdata ? _GEN_148 : beatValsSave_3_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_212 = _T & beats1_opdata ? _GEN_149 : beatValsSave_3_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_213 = _T & beats1_opdata ? _GEN_150 : beatValsSave_4_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_214 = _T & beats1_opdata ? _GEN_151 : beatValsSave_4_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_215 = _T & beats1_opdata ? _GEN_152 : beatValsSave_5_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_216 = _T & beats1_opdata ? _GEN_153 : beatValsSave_5_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_217 = _T & beats1_opdata ? _GEN_154 : beatValsSave_6_0; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_218 = _T & beats1_opdata ? _GEN_155 : beatValsSave_6_1; // @[SinkC.scala 15:29 87:29]
  wire  _GEN_219 = _T & beats1_opdata ? _GEN_156 : beatValsThrough_0_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_220 = _T & beats1_opdata ? _GEN_157 : beatValsThrough_0_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_221 = _T & beats1_opdata ? _GEN_158 : beatValsThrough_1_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_222 = _T & beats1_opdata ? _GEN_159 : beatValsThrough_1_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_223 = _T & beats1_opdata ? _GEN_160 : beatValsThrough_2_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_224 = _T & beats1_opdata ? _GEN_161 : beatValsThrough_2_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_225 = _T & beats1_opdata ? _GEN_162 : beatValsThrough_3_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_226 = _T & beats1_opdata ? _GEN_163 : beatValsThrough_3_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_227 = _T & beats1_opdata ? _GEN_164 : beatValsThrough_4_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_228 = _T & beats1_opdata ? _GEN_165 : beatValsThrough_4_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_229 = _T & beats1_opdata ? _GEN_166 : beatValsThrough_5_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_230 = _T & beats1_opdata ? _GEN_167 : beatValsThrough_5_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_231 = _T & beats1_opdata ? _GEN_168 : beatValsThrough_6_0; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_232 = _T & beats1_opdata ? _GEN_169 : beatValsThrough_6_1; // @[SinkC.scala 87:29 18:32]
  wire  _GEN_240 = _T & beats1_opdata ? _GEN_177 : bufferSetVals_0; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_241 = _T & beats1_opdata ? _GEN_178 : bufferSetVals_1; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_242 = _T & beats1_opdata ? _GEN_179 : bufferSetVals_2; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_243 = _T & beats1_opdata ? _GEN_180 : bufferSetVals_3; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_244 = _T & beats1_opdata ? _GEN_181 : bufferSetVals_4; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_245 = _T & beats1_opdata ? _GEN_182 : bufferSetVals_5; // @[SinkC.scala 87:29 14:30]
  wire  _GEN_246 = _T & beats1_opdata ? _GEN_183 : bufferSetVals_6; // @[SinkC.scala 87:29 14:30]
  wire  _setMatchVec_T_1 = bufferSet_0 == set_1 & bufferSetVals_0; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_3 = bufferSet_1 == set_1 & bufferSetVals_1; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_5 = bufferSet_2 == set_1 & bufferSetVals_2; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_7 = bufferSet_3 == set_1 & bufferSetVals_3; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_9 = bufferSet_4 == set_1 & bufferSetVals_4; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_11 = bufferSet_5 == set_1 & bufferSetVals_5; // @[SinkC.scala 106:34]
  wire  _setMatchVec_T_13 = bufferSet_6 == set_1 & bufferSetVals_6; // @[SinkC.scala 106:34]
  wire [6:0] _setMatchVec_T_14 = {_setMatchVec_T_13,_setMatchVec_T_11,_setMatchVec_T_9,_setMatchVec_T_7,_setMatchVec_T_5
    ,_setMatchVec_T_3,_setMatchVec_T_1}; // @[Cat.scala 31:58]
  wire [2:0] bufIdx_hi = setMatchVec[6:4]; // @[OneHot.scala 30:18]
  wire [3:0] bufIdx_lo = setMatchVec[3:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T = |bufIdx_hi; // @[OneHot.scala 32:14]
  wire [3:0] _GEN_783 = {{1'd0}, bufIdx_hi}; // @[OneHot.scala 32:28]
  wire [3:0] _bufIdx_T_1 = _GEN_783 | bufIdx_lo; // @[OneHot.scala 32:28]
  wire [1:0] bufIdx_hi_1 = _bufIdx_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] bufIdx_lo_1 = _bufIdx_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T_2 = |bufIdx_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _bufIdx_T_3 = bufIdx_hi_1 | bufIdx_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] bufIdx = {_bufIdx_T,_bufIdx_T_2,_bufIdx_T_3[1]}; // @[Cat.scala 31:58]
  wire  _GEN_255 = 3'h0 == bufIdx ? 1'h0 : _GEN_205; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_256 = 3'h1 == bufIdx ? 1'h0 : _GEN_207; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_257 = 3'h2 == bufIdx ? 1'h0 : _GEN_209; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_258 = 3'h3 == bufIdx ? 1'h0 : _GEN_211; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_259 = 3'h4 == bufIdx ? 1'h0 : _GEN_213; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_260 = 3'h5 == bufIdx ? 1'h0 : _GEN_215; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_261 = 3'h6 == bufIdx ? 1'h0 : _GEN_217; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_262 = 3'h0 == bufIdx ? 1'h0 : _GEN_206; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_263 = 3'h1 == bufIdx ? 1'h0 : _GEN_208; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_264 = 3'h2 == bufIdx ? 1'h0 : _GEN_210; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_265 = 3'h3 == bufIdx ? 1'h0 : _GEN_212; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_266 = 3'h4 == bufIdx ? 1'h0 : _GEN_214; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_267 = 3'h5 == bufIdx ? 1'h0 : _GEN_216; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_268 = 3'h6 == bufIdx ? 1'h0 : _GEN_218; // @[SinkC.scala 112:{36,36}]
  wire  _GEN_269 = 3'h0 == bufIdx ? 1'h0 : _GEN_219; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_270 = 3'h1 == bufIdx ? 1'h0 : _GEN_221; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_271 = 3'h2 == bufIdx ? 1'h0 : _GEN_223; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_272 = 3'h3 == bufIdx ? 1'h0 : _GEN_225; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_273 = 3'h4 == bufIdx ? 1'h0 : _GEN_227; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_274 = 3'h5 == bufIdx ? 1'h0 : _GEN_229; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_275 = 3'h6 == bufIdx ? 1'h0 : _GEN_231; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_276 = 3'h0 == bufIdx ? 1'h0 : _GEN_220; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_277 = 3'h1 == bufIdx ? 1'h0 : _GEN_222; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_278 = 3'h2 == bufIdx ? 1'h0 : _GEN_224; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_279 = 3'h3 == bufIdx ? 1'h0 : _GEN_226; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_280 = 3'h4 == bufIdx ? 1'h0 : _GEN_228; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_281 = 3'h5 == bufIdx ? 1'h0 : _GEN_230; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_282 = 3'h6 == bufIdx ? 1'h0 : _GEN_232; // @[SinkC.scala 113:{39,39}]
  wire  _GEN_283 = 3'h0 == bufIdx ? 1'h0 : _GEN_240; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_284 = 3'h1 == bufIdx ? 1'h0 : _GEN_241; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_285 = 3'h2 == bufIdx ? 1'h0 : _GEN_242; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_286 = 3'h3 == bufIdx ? 1'h0 : _GEN_243; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_287 = 3'h4 == bufIdx ? 1'h0 : _GEN_244; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_288 = 3'h5 == bufIdx ? 1'h0 : _GEN_245; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_289 = 3'h6 == bufIdx ? 1'h0 : _GEN_246; // @[SinkC.scala 114:{27,27}]
  wire  _GEN_297 = |setMatchVec ? _GEN_255 : _GEN_205; // @[SinkC.scala 109:27]
  wire  _GEN_298 = |setMatchVec ? _GEN_256 : _GEN_207; // @[SinkC.scala 109:27]
  wire  _GEN_299 = |setMatchVec ? _GEN_257 : _GEN_209; // @[SinkC.scala 109:27]
  wire  _GEN_300 = |setMatchVec ? _GEN_258 : _GEN_211; // @[SinkC.scala 109:27]
  wire  _GEN_301 = |setMatchVec ? _GEN_259 : _GEN_213; // @[SinkC.scala 109:27]
  wire  _GEN_302 = |setMatchVec ? _GEN_260 : _GEN_215; // @[SinkC.scala 109:27]
  wire  _GEN_303 = |setMatchVec ? _GEN_261 : _GEN_217; // @[SinkC.scala 109:27]
  wire  _GEN_304 = |setMatchVec ? _GEN_262 : _GEN_206; // @[SinkC.scala 109:27]
  wire  _GEN_305 = |setMatchVec ? _GEN_263 : _GEN_208; // @[SinkC.scala 109:27]
  wire  _GEN_306 = |setMatchVec ? _GEN_264 : _GEN_210; // @[SinkC.scala 109:27]
  wire  _GEN_307 = |setMatchVec ? _GEN_265 : _GEN_212; // @[SinkC.scala 109:27]
  wire  _GEN_308 = |setMatchVec ? _GEN_266 : _GEN_214; // @[SinkC.scala 109:27]
  wire  _GEN_309 = |setMatchVec ? _GEN_267 : _GEN_216; // @[SinkC.scala 109:27]
  wire  _GEN_310 = |setMatchVec ? _GEN_268 : _GEN_218; // @[SinkC.scala 109:27]
  wire  _GEN_311 = |setMatchVec ? _GEN_269 : _GEN_219; // @[SinkC.scala 109:27]
  wire  _GEN_312 = |setMatchVec ? _GEN_270 : _GEN_221; // @[SinkC.scala 109:27]
  wire  _GEN_313 = |setMatchVec ? _GEN_271 : _GEN_223; // @[SinkC.scala 109:27]
  wire  _GEN_314 = |setMatchVec ? _GEN_272 : _GEN_225; // @[SinkC.scala 109:27]
  wire  _GEN_315 = |setMatchVec ? _GEN_273 : _GEN_227; // @[SinkC.scala 109:27]
  wire  _GEN_316 = |setMatchVec ? _GEN_274 : _GEN_229; // @[SinkC.scala 109:27]
  wire  _GEN_317 = |setMatchVec ? _GEN_275 : _GEN_231; // @[SinkC.scala 109:27]
  wire  _GEN_318 = |setMatchVec ? _GEN_276 : _GEN_220; // @[SinkC.scala 109:27]
  wire  _GEN_319 = |setMatchVec ? _GEN_277 : _GEN_222; // @[SinkC.scala 109:27]
  wire  _GEN_320 = |setMatchVec ? _GEN_278 : _GEN_224; // @[SinkC.scala 109:27]
  wire  _GEN_321 = |setMatchVec ? _GEN_279 : _GEN_226; // @[SinkC.scala 109:27]
  wire  _GEN_322 = |setMatchVec ? _GEN_280 : _GEN_228; // @[SinkC.scala 109:27]
  wire  _GEN_323 = |setMatchVec ? _GEN_281 : _GEN_230; // @[SinkC.scala 109:27]
  wire  _GEN_324 = |setMatchVec ? _GEN_282 : _GEN_232; // @[SinkC.scala 109:27]
  wire  _GEN_325 = |setMatchVec ? _GEN_283 : _GEN_240; // @[SinkC.scala 109:27]
  wire  _GEN_326 = |setMatchVec ? _GEN_284 : _GEN_241; // @[SinkC.scala 109:27]
  wire  _GEN_327 = |setMatchVec ? _GEN_285 : _GEN_242; // @[SinkC.scala 109:27]
  wire  _GEN_328 = |setMatchVec ? _GEN_286 : _GEN_243; // @[SinkC.scala 109:27]
  wire  _GEN_329 = |setMatchVec ? _GEN_287 : _GEN_244; // @[SinkC.scala 109:27]
  wire  _GEN_330 = |setMatchVec ? _GEN_288 : _GEN_245; // @[SinkC.scala 109:27]
  wire  _GEN_331 = |setMatchVec ? _GEN_289 : _GEN_246; // @[SinkC.scala 109:27]
  wire  _task_rT = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  reg [11:0] task_rset; // @[Reg.scala 16:16]
  reg [15:0] task_rtag; // @[Reg.scala 16:16]
  reg [2:0] task_rsize; // @[Reg.scala 16:16]
  reg [1:0] task_rway; // @[Reg.scala 16:16]
  reg [5:0] task_roff; // @[Reg.scala 16:16]
  reg [2:0] task_rbufIdx; // @[Reg.scala 16:16]
  reg [2:0] task_ropcode; // @[Reg.scala 16:16]
  reg [3:0] task_rsource; // @[Reg.scala 16:16]
  reg  task_rsave; // @[Reg.scala 16:16]
  reg  task_rdrop; // @[Reg.scala 16:16]
  reg  task_rrelease; // @[Reg.scala 16:16]
  reg  busy; // @[SinkC.scala 121:21]
  reg  w_counter_save; // @[SinkC.scala 122:31]
  reg  w_counter_through; // @[SinkC.scala 123:34]
  wire  _task_wsafe_T_2 = io_sourceD_rhazard_bits_set == io_task_bits_set & io_sourceD_rhazard_bits_way ==
    io_task_bits_way; // @[Common.scala 193:15]
  wire  task_wsafe = ~(io_sourceD_rhazard_valid & _task_wsafe_T_2); // @[SinkC.scala 124:21]
  reg  w_save_done_r; // @[SinkC.scala 127:30]
  reg  w_through_done_r; // @[SinkC.scala 128:33]
  wire  _T_85 = ~io_task_bits_drop; // @[SinkC.scala 134:24]
  wire  _GEN_354 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_297; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_355 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_298; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_356 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_299; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_357 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_300; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_358 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_301; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_359 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_302; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_360 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_303; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_361 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_304; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_362 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_305; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_363 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_306; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_364 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_307; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_365 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_308; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_366 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_309; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_367 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_310; // @[SinkC.scala 135:{43,43}]
  wire  _GEN_368 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_354 : _GEN_297; // @[SinkC.scala 134:36]
  wire  _GEN_369 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_355 : _GEN_298; // @[SinkC.scala 134:36]
  wire  _GEN_370 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_356 : _GEN_299; // @[SinkC.scala 134:36]
  wire  _GEN_371 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_357 : _GEN_300; // @[SinkC.scala 134:36]
  wire  _GEN_372 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_358 : _GEN_301; // @[SinkC.scala 134:36]
  wire  _GEN_373 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_359 : _GEN_302; // @[SinkC.scala 134:36]
  wire  _GEN_374 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_360 : _GEN_303; // @[SinkC.scala 134:36]
  wire  _GEN_375 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_361 : _GEN_304; // @[SinkC.scala 134:36]
  wire  _GEN_376 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_362 : _GEN_305; // @[SinkC.scala 134:36]
  wire  _GEN_377 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_363 : _GEN_306; // @[SinkC.scala 134:36]
  wire  _GEN_378 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_364 : _GEN_307; // @[SinkC.scala 134:36]
  wire  _GEN_379 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_365 : _GEN_308; // @[SinkC.scala 134:36]
  wire  _GEN_380 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_366 : _GEN_309; // @[SinkC.scala 134:36]
  wire  _GEN_381 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_367 : _GEN_310; // @[SinkC.scala 134:36]
  wire  _GEN_382 = ~io_task_bits_save & ~io_task_bits_drop | w_save_done_r; // @[SinkC.scala 134:36 136:21 127:30]
  wire  _GEN_383 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_311; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_384 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_312; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_385 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_313; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_386 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_314; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_387 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_315; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_388 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_316; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_389 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_317; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_390 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_318; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_391 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_319; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_392 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_320; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_393 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_321; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_394 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_322; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_395 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_323; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_396 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_324; // @[SinkC.scala 139:{46,46}]
  wire  _GEN_397 = ~io_task_bits_release & _T_85 ? _GEN_383 : _GEN_311; // @[SinkC.scala 138:39]
  wire  _GEN_398 = ~io_task_bits_release & _T_85 ? _GEN_384 : _GEN_312; // @[SinkC.scala 138:39]
  wire  _GEN_399 = ~io_task_bits_release & _T_85 ? _GEN_385 : _GEN_313; // @[SinkC.scala 138:39]
  wire  _GEN_400 = ~io_task_bits_release & _T_85 ? _GEN_386 : _GEN_314; // @[SinkC.scala 138:39]
  wire  _GEN_401 = ~io_task_bits_release & _T_85 ? _GEN_387 : _GEN_315; // @[SinkC.scala 138:39]
  wire  _GEN_402 = ~io_task_bits_release & _T_85 ? _GEN_388 : _GEN_316; // @[SinkC.scala 138:39]
  wire  _GEN_403 = ~io_task_bits_release & _T_85 ? _GEN_389 : _GEN_317; // @[SinkC.scala 138:39]
  wire  _GEN_404 = ~io_task_bits_release & _T_85 ? _GEN_390 : _GEN_318; // @[SinkC.scala 138:39]
  wire  _GEN_405 = ~io_task_bits_release & _T_85 ? _GEN_391 : _GEN_319; // @[SinkC.scala 138:39]
  wire  _GEN_406 = ~io_task_bits_release & _T_85 ? _GEN_392 : _GEN_320; // @[SinkC.scala 138:39]
  wire  _GEN_407 = ~io_task_bits_release & _T_85 ? _GEN_393 : _GEN_321; // @[SinkC.scala 138:39]
  wire  _GEN_408 = ~io_task_bits_release & _T_85 ? _GEN_394 : _GEN_322; // @[SinkC.scala 138:39]
  wire  _GEN_409 = ~io_task_bits_release & _T_85 ? _GEN_395 : _GEN_323; // @[SinkC.scala 138:39]
  wire  _GEN_410 = ~io_task_bits_release & _T_85 ? _GEN_396 : _GEN_324; // @[SinkC.scala 138:39]
  wire  _GEN_411 = ~io_task_bits_release & _T_85 | w_through_done_r; // @[SinkC.scala 138:39 140:24 128:33]
  wire  _GEN_412 = _task_rT | busy; // @[SinkC.scala 131:24 133:10 121:21]
  wire  _GEN_413 = _task_rT ? _GEN_368 : _GEN_297; // @[SinkC.scala 131:24]
  wire  _GEN_414 = _task_rT ? _GEN_369 : _GEN_298; // @[SinkC.scala 131:24]
  wire  _GEN_415 = _task_rT ? _GEN_370 : _GEN_299; // @[SinkC.scala 131:24]
  wire  _GEN_416 = _task_rT ? _GEN_371 : _GEN_300; // @[SinkC.scala 131:24]
  wire  _GEN_417 = _task_rT ? _GEN_372 : _GEN_301; // @[SinkC.scala 131:24]
  wire  _GEN_418 = _task_rT ? _GEN_373 : _GEN_302; // @[SinkC.scala 131:24]
  wire  _GEN_419 = _task_rT ? _GEN_374 : _GEN_303; // @[SinkC.scala 131:24]
  wire  _GEN_420 = _task_rT ? _GEN_375 : _GEN_304; // @[SinkC.scala 131:24]
  wire  _GEN_421 = _task_rT ? _GEN_376 : _GEN_305; // @[SinkC.scala 131:24]
  wire  _GEN_422 = _task_rT ? _GEN_377 : _GEN_306; // @[SinkC.scala 131:24]
  wire  _GEN_423 = _task_rT ? _GEN_378 : _GEN_307; // @[SinkC.scala 131:24]
  wire  _GEN_424 = _task_rT ? _GEN_379 : _GEN_308; // @[SinkC.scala 131:24]
  wire  _GEN_425 = _task_rT ? _GEN_380 : _GEN_309; // @[SinkC.scala 131:24]
  wire  _GEN_426 = _task_rT ? _GEN_381 : _GEN_310; // @[SinkC.scala 131:24]
  wire  _GEN_427 = _task_rT ? _GEN_382 : w_save_done_r; // @[SinkC.scala 131:24 127:30]
  wire  _GEN_428 = _task_rT ? _GEN_397 : _GEN_311; // @[SinkC.scala 131:24]
  wire  _GEN_429 = _task_rT ? _GEN_398 : _GEN_312; // @[SinkC.scala 131:24]
  wire  _GEN_430 = _task_rT ? _GEN_399 : _GEN_313; // @[SinkC.scala 131:24]
  wire  _GEN_431 = _task_rT ? _GEN_400 : _GEN_314; // @[SinkC.scala 131:24]
  wire  _GEN_432 = _task_rT ? _GEN_401 : _GEN_315; // @[SinkC.scala 131:24]
  wire  _GEN_433 = _task_rT ? _GEN_402 : _GEN_316; // @[SinkC.scala 131:24]
  wire  _GEN_434 = _task_rT ? _GEN_403 : _GEN_317; // @[SinkC.scala 131:24]
  wire  _GEN_435 = _task_rT ? _GEN_404 : _GEN_318; // @[SinkC.scala 131:24]
  wire  _GEN_436 = _task_rT ? _GEN_405 : _GEN_319; // @[SinkC.scala 131:24]
  wire  _GEN_437 = _task_rT ? _GEN_406 : _GEN_320; // @[SinkC.scala 131:24]
  wire  _GEN_438 = _task_rT ? _GEN_407 : _GEN_321; // @[SinkC.scala 131:24]
  wire  _GEN_439 = _task_rT ? _GEN_408 : _GEN_322; // @[SinkC.scala 131:24]
  wire  _GEN_440 = _task_rT ? _GEN_409 : _GEN_323; // @[SinkC.scala 131:24]
  wire  _GEN_441 = _task_rT ? _GEN_410 : _GEN_324; // @[SinkC.scala 131:24]
  wire  _GEN_442 = _task_rT ? _GEN_411 : w_through_done_r; // @[SinkC.scala 131:24 128:33]
  wire  _GEN_784 = 3'h0 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_444 = 3'h0 == task_rbufIdx & w_counter_save ? beatValsSave_0_1 : beatValsSave_0_0; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_785 = 3'h1 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_786 = ~w_counter_save; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_445 = 3'h1 == task_rbufIdx & ~w_counter_save ? beatValsSave_1_0 : _GEN_444; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_446 = 3'h1 == task_rbufIdx & w_counter_save ? beatValsSave_1_1 : _GEN_445; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_788 = 3'h2 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_447 = 3'h2 == task_rbufIdx & ~w_counter_save ? beatValsSave_2_0 : _GEN_446; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_448 = 3'h2 == task_rbufIdx & w_counter_save ? beatValsSave_2_1 : _GEN_447; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_791 = 3'h3 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_449 = 3'h3 == task_rbufIdx & ~w_counter_save ? beatValsSave_3_0 : _GEN_448; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_450 = 3'h3 == task_rbufIdx & w_counter_save ? beatValsSave_3_1 : _GEN_449; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_794 = 3'h4 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_451 = 3'h4 == task_rbufIdx & ~w_counter_save ? beatValsSave_4_0 : _GEN_450; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_452 = 3'h4 == task_rbufIdx & w_counter_save ? beatValsSave_4_1 : _GEN_451; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_797 = 3'h5 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_453 = 3'h5 == task_rbufIdx & ~w_counter_save ? beatValsSave_5_0 : _GEN_452; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_454 = 3'h5 == task_rbufIdx & w_counter_save ? beatValsSave_5_1 : _GEN_453; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_800 = 3'h6 == task_rbufIdx; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_455 = 3'h6 == task_rbufIdx & ~w_counter_save ? beatValsSave_6_0 : _GEN_454; // @[SinkC.scala 149:{28,28}]
  wire  _GEN_456 = 3'h6 == task_rbufIdx & w_counter_save ? beatValsSave_6_1 : _GEN_455; // @[SinkC.scala 149:{28,28}]
  wire [255:0] _GEN_458 = _GEN_784 & w_counter_save ? buffer_0_1 : buffer_0_0; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_459 = _GEN_785 & _GEN_786 ? buffer_1_0 : _GEN_458; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_460 = _GEN_785 & w_counter_save ? buffer_1_1 : _GEN_459; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_461 = _GEN_788 & _GEN_786 ? buffer_2_0 : _GEN_460; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_462 = _GEN_788 & w_counter_save ? buffer_2_1 : _GEN_461; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_463 = _GEN_791 & _GEN_786 ? buffer_3_0 : _GEN_462; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_464 = _GEN_791 & w_counter_save ? buffer_3_1 : _GEN_463; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_465 = _GEN_794 & _GEN_786 ? buffer_4_0 : _GEN_464; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_466 = _GEN_794 & w_counter_save ? buffer_4_1 : _GEN_465; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_467 = _GEN_797 & _GEN_786 ? buffer_5_0 : _GEN_466; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_468 = _GEN_797 & w_counter_save ? buffer_5_1 : _GEN_467; // @[SinkC.scala 150:{20,20}]
  wire [255:0] _GEN_469 = _GEN_800 & _GEN_786 ? buffer_6_0 : _GEN_468; // @[SinkC.scala 150:{20,20}]
  wire  _GEN_472 = _GEN_784 & w_counter_through ? beatValsThrough_0_1 : beatValsThrough_0_0; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_824 = ~w_counter_through; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_473 = _GEN_785 & ~w_counter_through ? beatValsThrough_1_0 : _GEN_472; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_474 = _GEN_785 & w_counter_through ? beatValsThrough_1_1 : _GEN_473; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_475 = _GEN_788 & ~w_counter_through ? beatValsThrough_2_0 : _GEN_474; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_476 = _GEN_788 & w_counter_through ? beatValsThrough_2_1 : _GEN_475; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_477 = _GEN_791 & ~w_counter_through ? beatValsThrough_3_0 : _GEN_476; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_478 = _GEN_791 & w_counter_through ? beatValsThrough_3_1 : _GEN_477; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_479 = _GEN_794 & ~w_counter_through ? beatValsThrough_4_0 : _GEN_478; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_480 = _GEN_794 & w_counter_through ? beatValsThrough_4_1 : _GEN_479; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_481 = _GEN_797 & ~w_counter_through ? beatValsThrough_5_0 : _GEN_480; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_482 = _GEN_797 & w_counter_through ? beatValsThrough_5_1 : _GEN_481; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_483 = _GEN_800 & ~w_counter_through ? beatValsThrough_6_0 : _GEN_482; // @[SinkC.scala 153:{46,46}]
  wire  _GEN_484 = _GEN_800 & w_counter_through ? beatValsThrough_6_1 : _GEN_483; // @[SinkC.scala 153:{46,46}]
  wire [33:0] _io_release_bits_address_T = {task_rtag,task_rset,task_roff}; // @[Cat.scala 31:58]
  wire [255:0] _GEN_486 = _GEN_784 & w_counter_through ? buffer_0_1 : buffer_0_0; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_487 = _GEN_785 & _GEN_824 ? buffer_1_0 : _GEN_486; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_488 = _GEN_785 & w_counter_through ? buffer_1_1 : _GEN_487; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_489 = _GEN_788 & _GEN_824 ? buffer_2_0 : _GEN_488; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_490 = _GEN_788 & w_counter_through ? buffer_2_1 : _GEN_489; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_491 = _GEN_791 & _GEN_824 ? buffer_3_0 : _GEN_490; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_492 = _GEN_791 & w_counter_through ? buffer_3_1 : _GEN_491; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_493 = _GEN_794 & _GEN_824 ? buffer_4_0 : _GEN_492; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_494 = _GEN_794 & w_counter_through ? buffer_4_1 : _GEN_493; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_495 = _GEN_797 & _GEN_824 ? buffer_5_0 : _GEN_494; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_496 = _GEN_797 & w_counter_through ? buffer_5_1 : _GEN_495; // @[SinkC.scala 155:{24,24}]
  wire [255:0] _GEN_497 = _GEN_800 & _GEN_824 ? buffer_6_0 : _GEN_496; // @[SinkC.scala 155:{24,24}]
  wire  _wfire_save_T = io_bs_waddr_ready & io_bs_waddr_valid; // @[Decoupled.scala 50:35]
  wire  w_fire_save = _wfire_save_T & ~io_bs_waddr_bits_noop; // @[SinkC.scala 164:40]
  wire  w_fire_through = io_release_ready & io_release_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_501 = w_counter_save & w_fire_save | _GEN_427; // @[SinkC.scala 170:{57,73}]
  wire  _GEN_502 = w_counter_through & w_fire_through | _GEN_442; // @[SinkC.scala 171:{63,82}]
  wire  _wdone_T_7 = w_counter_save & w_through_done_r & w_fire_save; // @[SinkC.scala 175:61]
  wire  _wdone_T_8 = w_counter_save & w_counter_through & w_fire_save & w_fire_through | _wdone_T_7; // @[SinkC.scala 174:114]
  wire  _wdone_T_11 = w_save_done_r & w_counter_through & w_fire_through; // @[SinkC.scala 176:61]
  wire  w_done = _wdone_T_8 | _wdone_T_11; // @[SinkC.scala 175:77]
  assign io_c_ready = first ? ~noSpace & ~(isReq & ~io_alloc_ready) : 1'h1; // @[SinkC.scala 54:17]
  assign io_alloc_valid = io_c_valid & isReq & first & _io_c_ready_T; // @[SinkC.scala 57:47]
  assign io_alloc_bits_opcode = io_c_bits_opcode; // @[SinkC.scala 59:24]
  assign io_alloc_bits_param = io_c_bits_param; // @[SinkC.scala 60:23]
  assign io_alloc_bits_size = io_c_bits_size; // @[SinkC.scala 61:22]
  assign io_alloc_bits_source = io_c_bits_source; // @[SinkC.scala 62:24]
  assign io_alloc_bits_set = set[11:0]; // @[HuanCun.scala 141:30]
  assign io_alloc_bits_tag = set[27:12]; // @[HuanCun.scala 140:19]
  assign io_alloc_bits_off = io_c_bits_address[5:0]; // @[HuanCun.scala 141:54]
  assign io_alloc_bits_bufIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  assign io_alloc_bits_dirty = io_c_bits_echo_blockisdirty; // @[SinkC.scala 70:23]
  assign io_resp_valid = io_c_valid & (_io_c_ready_T | ~first) & isResp; // @[SinkC.scala 76:52]
  assign io_resp_bits_hasData = io_c_bits_opcode[0]; // @[Edges.scala 101:36]
  assign io_resp_bits_param = io_c_bits_param; // @[SinkC.scala 78:22]
  assign io_resp_bits_source = io_c_bits_source; // @[SinkC.scala 79:23]
  assign io_resp_bits_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign io_resp_bits_set = set[11:0]; // @[HuanCun.scala 141:30]
  assign io_resp_bits_bufIdx = first ? insertIdx : insertIdxReg; // @[SinkC.scala 82:29]
  assign io_task_ready = ~busy & task_wsafe; // @[SinkC.scala 130:26]
  assign io_bs_waddr_valid = busy & task_rsave & ~w_save_done_r; // @[SinkC.scala 144:44]
  assign io_bs_waddr_bits_way = task_rway; // @[SinkC.scala 145:24]
  assign io_bs_waddr_bits_set = task_rset; // @[SinkC.scala 146:24]
  assign io_bs_waddr_bits_beat = w_counter_save; // @[SinkC.scala 147:25]
  assign io_bs_waddr_bits_noop = ~_GEN_456; // @[SinkC.scala 149:28]
  assign io_bs_wdata_data = _GEN_800 & w_counter_save ? buffer_6_1 : _GEN_469; // @[SinkC.scala 150:{20,20}]
  assign io_release_valid = busy & task_rrelease & _GEN_484 & ~w_through_done_r; // @[SinkC.scala 153:99]
  assign io_release_bits_opcode = task_ropcode; // @[SinkC.scala 156:26]
  assign io_release_bits_size = task_rsize; // @[SinkC.scala 159:24]
  assign io_release_bits_source = task_rsource; // @[SinkC.scala 158:26]
  assign io_release_bits_address = {{2'd0}, _io_release_bits_address_T}; // @[SinkC.scala 154:27]
  assign io_release_bits_data = _GEN_800 & w_counter_through ? buffer_6_1 : _GEN_497; // @[SinkC.scala 155:{24,24}]
  always @(posedge clock) begin
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h0 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_0_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h0 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_0_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h0 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_0_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h0 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_0_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h1 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_1_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h1 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_1_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h1 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_1_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h1 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_1_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h2 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_2_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h2 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_2_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h2 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_2_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h2 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_2_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h3 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_3_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h3 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_3_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h3 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_3_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h3 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_3_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h4 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_4_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h4 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_4_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h4 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_4_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h4 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_4_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h5 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_5_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h5 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_5_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h5 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_5_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h5 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_5_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h6 == insertIdx & ~count) begin // @[SinkC.scala 89:32]
          buffer_6_0 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h6 == insertIdxReg & _GEN_593) begin // @[SinkC.scala 98:35]
        buffer_6_0 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (3'h6 == insertIdx & count) begin // @[SinkC.scala 89:32]
          buffer_6_1 <= io_c_bits_data; // @[SinkC.scala 89:32]
        end
      end else if (3'h6 == insertIdxReg & count) begin // @[SinkC.scala 98:35]
        buffer_6_1 <= io_c_bits_data; // @[SinkC.scala 98:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h0 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_0 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h1 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_1 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h2 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_2 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h3 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_3 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h4 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_4 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h5 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_5 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 87:29]
      if (first) begin // @[SinkC.scala 88:17]
        if (isProbeAckData) begin // @[SinkC.scala 93:28]
          if (3'h6 == insertIdx) begin // @[SinkC.scala 95:30]
            bufferSet_6 <= set_1; // @[SinkC.scala 95:30]
          end
        end
      end
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_0 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h0 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_0 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_0 <= _GEN_325;
      end
    end else begin
      bufferSetVals_0 <= _GEN_325;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_1 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h1 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_1 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_1 <= _GEN_326;
      end
    end else begin
      bufferSetVals_1 <= _GEN_326;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_2 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h2 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_2 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_2 <= _GEN_327;
      end
    end else begin
      bufferSetVals_2 <= _GEN_327;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_3 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h3 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_3 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_3 <= _GEN_328;
      end
    end else begin
      bufferSetVals_3 <= _GEN_328;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_4 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h4 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_4 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_4 <= _GEN_329;
      end
    end else begin
      bufferSetVals_4 <= _GEN_329;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_5 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h5 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_5 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_5 <= _GEN_330;
      end
    end else begin
      bufferSetVals_5 <= _GEN_330;
    end
    if (reset) begin // @[SinkC.scala 14:30]
      bufferSetVals_6 <= 1'h0; // @[SinkC.scala 14:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h6 == task_rbufIdx) begin // @[SinkC.scala 184:34]
        bufferSetVals_6 <= 1'h0; // @[SinkC.scala 184:34]
      end else begin
        bufferSetVals_6 <= _GEN_331;
      end
    end else begin
      bufferSetVals_6 <= _GEN_331;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_0_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h0 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_0_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_0_0 <= _GEN_413;
      end
    end else begin
      beatValsSave_0_0 <= _GEN_413;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_0_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h0 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_0_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_0_1 <= _GEN_420;
      end
    end else begin
      beatValsSave_0_1 <= _GEN_420;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_1_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h1 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_1_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_1_0 <= _GEN_414;
      end
    end else begin
      beatValsSave_1_0 <= _GEN_414;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_1_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h1 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_1_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_1_1 <= _GEN_421;
      end
    end else begin
      beatValsSave_1_1 <= _GEN_421;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_2_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h2 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_2_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_2_0 <= _GEN_415;
      end
    end else begin
      beatValsSave_2_0 <= _GEN_415;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_2_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h2 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_2_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_2_1 <= _GEN_422;
      end
    end else begin
      beatValsSave_2_1 <= _GEN_422;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_3_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h3 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_3_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_3_0 <= _GEN_416;
      end
    end else begin
      beatValsSave_3_0 <= _GEN_416;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_3_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h3 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_3_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_3_1 <= _GEN_423;
      end
    end else begin
      beatValsSave_3_1 <= _GEN_423;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_4_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h4 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_4_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_4_0 <= _GEN_417;
      end
    end else begin
      beatValsSave_4_0 <= _GEN_417;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_4_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h4 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_4_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_4_1 <= _GEN_424;
      end
    end else begin
      beatValsSave_4_1 <= _GEN_424;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_5_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h5 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_5_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_5_0 <= _GEN_418;
      end
    end else begin
      beatValsSave_5_0 <= _GEN_418;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_5_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h5 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_5_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_5_1 <= _GEN_425;
      end
    end else begin
      beatValsSave_5_1 <= _GEN_425;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_6_0 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h6 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_6_0 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_6_0 <= _GEN_419;
      end
    end else begin
      beatValsSave_6_0 <= _GEN_419;
    end
    if (reset) begin // @[SinkC.scala 15:29]
      beatValsSave_6_1 <= 1'h0; // @[SinkC.scala 15:29]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h6 == task_rbufIdx) begin // @[SinkC.scala 182:43]
        beatValsSave_6_1 <= 1'h0; // @[SinkC.scala 182:43]
      end else begin
        beatValsSave_6_1 <= _GEN_426;
      end
    end else begin
      beatValsSave_6_1 <= _GEN_426;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_0_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h0 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_0_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_0_0 <= _GEN_428;
      end
    end else begin
      beatValsThrough_0_0 <= _GEN_428;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_0_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h0 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_0_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_0_1 <= _GEN_435;
      end
    end else begin
      beatValsThrough_0_1 <= _GEN_435;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_1_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h1 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_1_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_1_0 <= _GEN_429;
      end
    end else begin
      beatValsThrough_1_0 <= _GEN_429;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_1_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h1 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_1_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_1_1 <= _GEN_436;
      end
    end else begin
      beatValsThrough_1_1 <= _GEN_436;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_2_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h2 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_2_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_2_0 <= _GEN_430;
      end
    end else begin
      beatValsThrough_2_0 <= _GEN_430;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_2_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h2 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_2_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_2_1 <= _GEN_437;
      end
    end else begin
      beatValsThrough_2_1 <= _GEN_437;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_3_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h3 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_3_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_3_0 <= _GEN_431;
      end
    end else begin
      beatValsThrough_3_0 <= _GEN_431;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_3_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h3 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_3_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_3_1 <= _GEN_438;
      end
    end else begin
      beatValsThrough_3_1 <= _GEN_438;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_4_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h4 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_4_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_4_0 <= _GEN_432;
      end
    end else begin
      beatValsThrough_4_0 <= _GEN_432;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_4_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h4 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_4_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_4_1 <= _GEN_439;
      end
    end else begin
      beatValsThrough_4_1 <= _GEN_439;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_5_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h5 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_5_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_5_0 <= _GEN_433;
      end
    end else begin
      beatValsThrough_5_0 <= _GEN_433;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_5_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h5 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_5_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_5_1 <= _GEN_440;
      end
    end else begin
      beatValsThrough_5_1 <= _GEN_440;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_6_0 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h6 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_6_0 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_6_0 <= _GEN_434;
      end
    end else begin
      beatValsThrough_6_0 <= _GEN_434;
    end
    if (reset) begin // @[SinkC.scala 18:32]
      beatValsThrough_6_1 <= 1'h0; // @[SinkC.scala 18:32]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      if (3'h6 == task_rbufIdx) begin // @[SinkC.scala 183:46]
        beatValsThrough_6_1 <= 1'h0; // @[SinkC.scala 183:46]
      end else begin
        beatValsThrough_6_1 <= _GEN_441;
      end
    end else begin
      beatValsThrough_6_1 <= _GEN_441;
    end
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T) begin // @[Edges.scala 234:17]
      if (first) begin // @[Edges.scala 235:21]
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
    if (_insertIdxReg_T_1) begin // @[Reg.scala 17:18]
      if (_insertIdx_T[0]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h0;
      end else if (_insertIdx_T[1]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h1;
      end else if (_insertIdx_T[2]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h2;
      end else begin
        insertIdxReg <= _insertIdx_T_10;
      end
    end
    if (reset) begin // @[SinkC.scala 84:28]
      setMatchVec <= 7'h0; // @[SinkC.scala 84:28]
    end else if (|setMatchVec) begin // @[SinkC.scala 109:27]
      setMatchVec <= 7'h0; // @[SinkC.scala 116:17]
    end else if (_insertIdxReg_T_1 & isResp) begin // @[SinkC.scala 104:37]
      setMatchVec <= _setMatchVec_T_14; // @[SinkC.scala 105:17]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rset <= io_task_bits_set; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rtag <= io_task_bits_tag; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rsize <= io_task_bits_size; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rway <= io_task_bits_way; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_roff <= io_task_bits_off; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rbufIdx <= io_task_bits_bufIdx; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_ropcode <= io_task_bits_opcode; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rsource <= io_task_bits_source; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rsave <= io_task_bits_save; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rdrop <= io_task_bits_drop; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rrelease <= io_task_bits_release; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[SinkC.scala 121:21]
      busy <= 1'h0; // @[SinkC.scala 121:21]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      busy <= 1'h0; // @[SinkC.scala 181:10]
    end else begin
      busy <= _GEN_412;
    end
    if (reset) begin // @[SinkC.scala 122:31]
      w_counter_save <= 1'h0; // @[SinkC.scala 122:31]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      w_counter_save <= 1'h0; // @[SinkC.scala 179:20]
    end else if (w_fire_save) begin // @[SinkC.scala 167:21]
      w_counter_save <= w_counter_save + 1'h1; // @[SinkC.scala 167:38]
    end
    if (reset) begin // @[SinkC.scala 123:34]
      w_counter_through <= 1'h0; // @[SinkC.scala 123:34]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      w_counter_through <= 1'h0; // @[SinkC.scala 180:23]
    end else if (w_fire_through) begin // @[SinkC.scala 168:24]
      w_counter_through <= w_counter_through + 1'h1; // @[SinkC.scala 168:44]
    end
    if (reset) begin // @[SinkC.scala 127:30]
      w_save_done_r <= 1'h0; // @[SinkC.scala 127:30]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      w_save_done_r <= 1'h0; // @[SinkC.scala 186:19]
    end else begin
      w_save_done_r <= _GEN_501;
    end
    if (reset) begin // @[SinkC.scala 128:33]
      w_through_done_r <= 1'h0; // @[SinkC.scala 128:33]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:39]
      w_through_done_r <= 1'h0; // @[SinkC.scala 187:22]
    end else begin
      w_through_done_r <= _GEN_502;
    end
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
  _RAND_0 = {8{`RANDOM}};
  buffer_0_0 = _RAND_0[255:0];
  _RAND_1 = {8{`RANDOM}};
  buffer_0_1 = _RAND_1[255:0];
  _RAND_2 = {8{`RANDOM}};
  buffer_1_0 = _RAND_2[255:0];
  _RAND_3 = {8{`RANDOM}};
  buffer_1_1 = _RAND_3[255:0];
  _RAND_4 = {8{`RANDOM}};
  buffer_2_0 = _RAND_4[255:0];
  _RAND_5 = {8{`RANDOM}};
  buffer_2_1 = _RAND_5[255:0];
  _RAND_6 = {8{`RANDOM}};
  buffer_3_0 = _RAND_6[255:0];
  _RAND_7 = {8{`RANDOM}};
  buffer_3_1 = _RAND_7[255:0];
  _RAND_8 = {8{`RANDOM}};
  buffer_4_0 = _RAND_8[255:0];
  _RAND_9 = {8{`RANDOM}};
  buffer_4_1 = _RAND_9[255:0];
  _RAND_10 = {8{`RANDOM}};
  buffer_5_0 = _RAND_10[255:0];
  _RAND_11 = {8{`RANDOM}};
  buffer_5_1 = _RAND_11[255:0];
  _RAND_12 = {8{`RANDOM}};
  buffer_6_0 = _RAND_12[255:0];
  _RAND_13 = {8{`RANDOM}};
  buffer_6_1 = _RAND_13[255:0];
  _RAND_14 = {1{`RANDOM}};
  bufferSet_0 = _RAND_14[11:0];
  _RAND_15 = {1{`RANDOM}};
  bufferSet_1 = _RAND_15[11:0];
  _RAND_16 = {1{`RANDOM}};
  bufferSet_2 = _RAND_16[11:0];
  _RAND_17 = {1{`RANDOM}};
  bufferSet_3 = _RAND_17[11:0];
  _RAND_18 = {1{`RANDOM}};
  bufferSet_4 = _RAND_18[11:0];
  _RAND_19 = {1{`RANDOM}};
  bufferSet_5 = _RAND_19[11:0];
  _RAND_20 = {1{`RANDOM}};
  bufferSet_6 = _RAND_20[11:0];
  _RAND_21 = {1{`RANDOM}};
  bufferSetVals_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  bufferSetVals_1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  bufferSetVals_2 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  bufferSetVals_3 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  bufferSetVals_4 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  bufferSetVals_5 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  bufferSetVals_6 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  beatValsSave_0_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  beatValsSave_0_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  beatValsSave_1_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  beatValsSave_1_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  beatValsSave_2_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  beatValsSave_2_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  beatValsSave_3_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  beatValsSave_3_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  beatValsSave_4_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  beatValsSave_4_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  beatValsSave_5_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  beatValsSave_5_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  beatValsSave_6_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  beatValsSave_6_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  beatValsThrough_0_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  beatValsThrough_0_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  beatValsThrough_1_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  beatValsThrough_1_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  beatValsThrough_2_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  beatValsThrough_2_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  beatValsThrough_3_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  beatValsThrough_3_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  beatValsThrough_4_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  beatValsThrough_4_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  beatValsThrough_5_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  beatValsThrough_5_1 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  beatValsThrough_6_0 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  beatValsThrough_6_1 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  counter = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  insertIdxReg = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  setMatchVec = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  task_rset = _RAND_59[11:0];
  _RAND_60 = {1{`RANDOM}};
  task_rtag = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  task_rsize = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  task_rway = _RAND_62[1:0];
  _RAND_63 = {1{`RANDOM}};
  task_roff = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  task_rbufIdx = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  task_ropcode = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  task_rsource = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  task_rsave = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  task_rdrop = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  task_rrelease = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  busy = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  w_counter_save = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  w_counter_through = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  w_save_done_r = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  w_through_done_r = _RAND_74[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
