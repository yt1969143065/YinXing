module SinkA_2(
  input          clock,
  input          reset,
  output         io_a_ready,
  input          io_a_valid,
  input  [2:0]   io_a_bits_opcode,
  input  [2:0]   io_a_bits_param,
  input  [2:0]   io_a_bits_size,
  input  [5:0]   io_a_bits_source,
  input  [35:0]  io_a_bits_address,
  input          io_a_bits_user_preferCache,
  input  [31:0]  io_a_bits_mask,
  input  [255:0] io_a_bits_data,
  input          io_a_bits_corrupt,
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
  output         io_alloc_bits_preferCache,
  output         io_d_pb_pop_ready,
  input          io_d_pb_pop_valid,
  input  [2:0]   io_d_pb_pop_bits_bufIdx,
  input          io_d_pb_pop_bits_count,
  input          io_d_pb_pop_bits_last,
  output [255:0] io_d_pb_beat_data,
  output [31:0]  io_d_pb_beat_mask,
  output         io_d_pb_beat_corrupt,
  output         io_a_pb_pop_ready,
  input          io_a_pb_pop_valid,
  input  [2:0]   io_a_pb_pop_bits_bufIdx,
  input          io_a_pb_pop_bits_count,
  input          io_a_pb_pop_bits_last,
  output [255:0] io_a_pb_beat_data,
  output [31:0]  io_a_pb_beat_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [255:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [255:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [255:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [255:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [255:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [255:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [255:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [255:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [255:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [255:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [255:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [255:0] _RAND_40;
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
  reg [255:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [255:0] _RAND_61;
  reg [31:0] _RAND_62;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_a_ready & io_a_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = ~io_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  count = beats1 & ~counter1; // @[Edges.scala 233:25]
  reg [255:0] putBuffer_0_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_0_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_0_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_0_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_0_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_0_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_1_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_1_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_1_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_1_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_1_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_1_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_2_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_2_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_2_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_2_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_2_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_2_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_3_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_3_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_3_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_3_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_3_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_3_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_4_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_4_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_4_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_4_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_4_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_4_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_5_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_5_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_5_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_5_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_5_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_5_1_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_6_0_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_6_0_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_6_0_corrupt; // @[SinkA.scala 48:22]
  reg [255:0] putBuffer_6_1_data; // @[SinkA.scala 48:22]
  reg [31:0] putBuffer_6_1_mask; // @[SinkA.scala 48:22]
  reg  putBuffer_6_1_corrupt; // @[SinkA.scala 48:22]
  reg  beatVals_0_0; // @[SinkA.scala 49:25]
  reg  beatVals_0_1; // @[SinkA.scala 49:25]
  reg  beatVals_1_0; // @[SinkA.scala 49:25]
  reg  beatVals_1_1; // @[SinkA.scala 49:25]
  reg  beatVals_2_0; // @[SinkA.scala 49:25]
  reg  beatVals_2_1; // @[SinkA.scala 49:25]
  reg  beatVals_3_0; // @[SinkA.scala 49:25]
  reg  beatVals_3_1; // @[SinkA.scala 49:25]
  reg  beatVals_4_0; // @[SinkA.scala 49:25]
  reg  beatVals_4_1; // @[SinkA.scala 49:25]
  reg  beatVals_5_0; // @[SinkA.scala 49:25]
  reg  beatVals_5_1; // @[SinkA.scala 49:25]
  reg  beatVals_6_0; // @[SinkA.scala 49:25]
  reg  beatVals_6_1; // @[SinkA.scala 49:25]
  wire [1:0] _bufVals_T = {beatVals_0_1,beatVals_0_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_2 = {beatVals_1_1,beatVals_1_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_4 = {beatVals_2_1,beatVals_2_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_6 = {beatVals_3_1,beatVals_3_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_8 = {beatVals_4_1,beatVals_4_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_10 = {beatVals_5_1,beatVals_5_0}; // @[SinkA.scala 52:46]
  wire [1:0] _bufVals_T_12 = {beatVals_6_1,beatVals_6_0}; // @[SinkA.scala 52:46]
  wire [6:0] bufVals = {|_bufVals_T_12,|_bufVals_T_10,|_bufVals_T_8,|_bufVals_T_6,|_bufVals_T_4,|_bufVals_T_2,|
    _bufVals_T}; // @[SinkA.scala 52:63]
  wire  full = &bufVals; // @[SinkA.scala 53:26]
  wire  noSpace = full & beats1_opdata; // @[SinkA.scala 54:22]
  wire [6:0] _insertIdx_T = ~bufVals; // @[SinkA.scala 55:35]
  wire [2:0] _insertIdx_T_8 = _insertIdx_T[5] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_9 = _insertIdx_T[4] ? 3'h4 : _insertIdx_T_8; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_10 = _insertIdx_T[3] ? 3'h3 : _insertIdx_T_9; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_11 = _insertIdx_T[2] ? 3'h2 : _insertIdx_T_10; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_12 = _insertIdx_T[1] ? 3'h1 : _insertIdx_T_11; // @[Mux.scala 47:70]
  wire [2:0] insertIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  wire  _insertIdxReg_T_1 = _T & first; // @[SinkA.scala 56:52]
  reg [2:0] insertIdxReg; // @[Reg.scala 16:16]
  wire  _GEN_400 = 3'h0 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_401 = ~count; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_403 = 3'h1 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_406 = 3'h2 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_409 = 3'h3 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_412 = 3'h4 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_415 = 3'h5 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_418 = 3'h6 == insertIdx; // @[SinkA.scala 48:22 60:{40,40}]
  wire  _GEN_44 = _GEN_400 & _GEN_401 | beatVals_0_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_45 = _GEN_400 & count | beatVals_0_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_46 = _GEN_403 & _GEN_401 | beatVals_1_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_47 = _GEN_403 & count | beatVals_1_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_48 = _GEN_406 & _GEN_401 | beatVals_2_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_49 = _GEN_406 & count | beatVals_2_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_50 = _GEN_409 & _GEN_401 | beatVals_3_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_51 = _GEN_409 & count | beatVals_3_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_52 = _GEN_412 & _GEN_401 | beatVals_4_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_53 = _GEN_412 & count | beatVals_4_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_54 = _GEN_415 & _GEN_401 | beatVals_5_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_55 = _GEN_415 & count | beatVals_5_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_56 = _GEN_418 & _GEN_401 | beatVals_6_0; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_57 = _GEN_418 & count | beatVals_6_1; // @[SinkA.scala 49:25 63:{34,34}]
  wire  _GEN_498 = 3'h0 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_501 = 3'h1 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_504 = 3'h2 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_507 = 3'h3 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_510 = 3'h4 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_513 = 3'h5 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_516 = 3'h6 == insertIdxReg; // @[SinkA.scala 48:22 65:{43,43}]
  wire  _GEN_100 = _GEN_498 & _GEN_401 | beatVals_0_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_101 = _GEN_498 & count | beatVals_0_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_102 = _GEN_501 & _GEN_401 | beatVals_1_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_103 = _GEN_501 & count | beatVals_1_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_104 = _GEN_504 & _GEN_401 | beatVals_2_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_105 = _GEN_504 & count | beatVals_2_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_106 = _GEN_507 & _GEN_401 | beatVals_3_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_107 = _GEN_507 & count | beatVals_3_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_108 = _GEN_510 & _GEN_401 | beatVals_4_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_109 = _GEN_510 & count | beatVals_4_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_110 = _GEN_513 & _GEN_401 | beatVals_5_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_111 = _GEN_513 & count | beatVals_5_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_112 = _GEN_516 & _GEN_401 | beatVals_6_0; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_113 = _GEN_516 & count | beatVals_6_1; // @[SinkA.scala 49:25 68:{37,37}]
  wire  _GEN_156 = first ? _GEN_44 : _GEN_100; // @[SinkA.scala 59:17]
  wire  _GEN_157 = first ? _GEN_45 : _GEN_101; // @[SinkA.scala 59:17]
  wire  _GEN_158 = first ? _GEN_46 : _GEN_102; // @[SinkA.scala 59:17]
  wire  _GEN_159 = first ? _GEN_47 : _GEN_103; // @[SinkA.scala 59:17]
  wire  _GEN_160 = first ? _GEN_48 : _GEN_104; // @[SinkA.scala 59:17]
  wire  _GEN_161 = first ? _GEN_49 : _GEN_105; // @[SinkA.scala 59:17]
  wire  _GEN_162 = first ? _GEN_50 : _GEN_106; // @[SinkA.scala 59:17]
  wire  _GEN_163 = first ? _GEN_51 : _GEN_107; // @[SinkA.scala 59:17]
  wire  _GEN_164 = first ? _GEN_52 : _GEN_108; // @[SinkA.scala 59:17]
  wire  _GEN_165 = first ? _GEN_53 : _GEN_109; // @[SinkA.scala 59:17]
  wire  _GEN_166 = first ? _GEN_54 : _GEN_110; // @[SinkA.scala 59:17]
  wire  _GEN_167 = first ? _GEN_55 : _GEN_111; // @[SinkA.scala 59:17]
  wire  _GEN_168 = first ? _GEN_56 : _GEN_112; // @[SinkA.scala 59:17]
  wire  _GEN_169 = first ? _GEN_57 : _GEN_113; // @[SinkA.scala 59:17]
  wire  _GEN_212 = _T & beats1_opdata ? _GEN_156 : beatVals_0_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_213 = _T & beats1_opdata ? _GEN_157 : beatVals_0_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_214 = _T & beats1_opdata ? _GEN_158 : beatVals_1_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_215 = _T & beats1_opdata ? _GEN_159 : beatVals_1_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_216 = _T & beats1_opdata ? _GEN_160 : beatVals_2_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_217 = _T & beats1_opdata ? _GEN_161 : beatVals_2_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_218 = _T & beats1_opdata ? _GEN_162 : beatVals_3_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_219 = _T & beats1_opdata ? _GEN_163 : beatVals_3_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_220 = _T & beats1_opdata ? _GEN_164 : beatVals_4_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_221 = _T & beats1_opdata ? _GEN_165 : beatVals_4_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_222 = _T & beats1_opdata ? _GEN_166 : beatVals_5_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_223 = _T & beats1_opdata ? _GEN_167 : beatVals_5_1; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_224 = _T & beats1_opdata ? _GEN_168 : beatVals_6_0; // @[SinkA.scala 49:25 58:29]
  wire  _GEN_225 = _T & beats1_opdata ? _GEN_169 : beatVals_6_1; // @[SinkA.scala 49:25 58:29]
  wire [27:0] set = io_a_bits_address[35:8]; // @[HuanCun.scala 139:22]
  wire  _io_alloc_valid_T_1 = ~noSpace; // @[SinkA.scala 74:41]
  wire  _GEN_596 = 3'h0 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_227 = 3'h0 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_0_1 : beatVals_0_0; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_597 = 3'h1 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_598 = ~io_d_pb_pop_bits_count; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_228 = 3'h1 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_1_0 : _GEN_227; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_229 = 3'h1 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_1_1 : _GEN_228; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_600 = 3'h2 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_230 = 3'h2 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_2_0 : _GEN_229; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_231 = 3'h2 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_2_1 : _GEN_230; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_603 = 3'h3 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_232 = 3'h3 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_3_0 : _GEN_231; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_233 = 3'h3 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_3_1 : _GEN_232; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_606 = 3'h4 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_234 = 3'h4 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_4_0 : _GEN_233; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_235 = 3'h4 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_4_1 : _GEN_234; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_609 = 3'h5 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_236 = 3'h5 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_5_0 : _GEN_235; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_237 = 3'h5 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_5_1 : _GEN_236; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_612 = 3'h6 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 96:{21,21}]
  wire  _GEN_238 = 3'h6 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_6_0 : _GEN_237; // @[SinkA.scala 96:{21,21}]
  wire  _io_d_pb_beat_T = io_d_pb_pop_ready & io_d_pb_pop_valid; // @[Decoupled.scala 50:35]
  reg [255:0] io_d_pb_beat_rdata; // @[Reg.scala 16:16]
  reg [31:0] io_d_pb_beat_rmask; // @[Reg.scala 16:16]
  reg  io_d_pb_beat_rcorrupt; // @[Reg.scala 16:16]
  wire  _GEN_241 = _GEN_596 & io_d_pb_pop_bits_count ? putBuffer_0_1_corrupt : putBuffer_0_0_corrupt; // @[Reg.scala 17:{22,22}]
  wire  _GEN_242 = _GEN_597 & _GEN_598 ? putBuffer_1_0_corrupt : _GEN_241; // @[Reg.scala 17:{22,22}]
  wire  _GEN_243 = _GEN_597 & io_d_pb_pop_bits_count ? putBuffer_1_1_corrupt : _GEN_242; // @[Reg.scala 17:{22,22}]
  wire  _GEN_244 = _GEN_600 & _GEN_598 ? putBuffer_2_0_corrupt : _GEN_243; // @[Reg.scala 17:{22,22}]
  wire  _GEN_245 = _GEN_600 & io_d_pb_pop_bits_count ? putBuffer_2_1_corrupt : _GEN_244; // @[Reg.scala 17:{22,22}]
  wire  _GEN_246 = _GEN_603 & _GEN_598 ? putBuffer_3_0_corrupt : _GEN_245; // @[Reg.scala 17:{22,22}]
  wire  _GEN_247 = _GEN_603 & io_d_pb_pop_bits_count ? putBuffer_3_1_corrupt : _GEN_246; // @[Reg.scala 17:{22,22}]
  wire  _GEN_248 = _GEN_606 & _GEN_598 ? putBuffer_4_0_corrupt : _GEN_247; // @[Reg.scala 17:{22,22}]
  wire  _GEN_249 = _GEN_606 & io_d_pb_pop_bits_count ? putBuffer_4_1_corrupt : _GEN_248; // @[Reg.scala 17:{22,22}]
  wire  _GEN_250 = _GEN_609 & _GEN_598 ? putBuffer_5_0_corrupt : _GEN_249; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_255 = _GEN_596 & io_d_pb_pop_bits_count ? putBuffer_0_1_mask : putBuffer_0_0_mask; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_256 = _GEN_597 & _GEN_598 ? putBuffer_1_0_mask : _GEN_255; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_257 = _GEN_597 & io_d_pb_pop_bits_count ? putBuffer_1_1_mask : _GEN_256; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_258 = _GEN_600 & _GEN_598 ? putBuffer_2_0_mask : _GEN_257; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_259 = _GEN_600 & io_d_pb_pop_bits_count ? putBuffer_2_1_mask : _GEN_258; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_260 = _GEN_603 & _GEN_598 ? putBuffer_3_0_mask : _GEN_259; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_261 = _GEN_603 & io_d_pb_pop_bits_count ? putBuffer_3_1_mask : _GEN_260; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_262 = _GEN_606 & _GEN_598 ? putBuffer_4_0_mask : _GEN_261; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_263 = _GEN_606 & io_d_pb_pop_bits_count ? putBuffer_4_1_mask : _GEN_262; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_264 = _GEN_609 & _GEN_598 ? putBuffer_5_0_mask : _GEN_263; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_269 = _GEN_596 & io_d_pb_pop_bits_count ? putBuffer_0_1_data : putBuffer_0_0_data; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_270 = _GEN_597 & _GEN_598 ? putBuffer_1_0_data : _GEN_269; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_271 = _GEN_597 & io_d_pb_pop_bits_count ? putBuffer_1_1_data : _GEN_270; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_272 = _GEN_600 & _GEN_598 ? putBuffer_2_0_data : _GEN_271; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_273 = _GEN_600 & io_d_pb_pop_bits_count ? putBuffer_2_1_data : _GEN_272; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_274 = _GEN_603 & _GEN_598 ? putBuffer_3_0_data : _GEN_273; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_275 = _GEN_603 & io_d_pb_pop_bits_count ? putBuffer_3_1_data : _GEN_274; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_276 = _GEN_606 & _GEN_598 ? putBuffer_4_0_data : _GEN_275; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_277 = _GEN_606 & io_d_pb_pop_bits_count ? putBuffer_4_1_data : _GEN_276; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_278 = _GEN_609 & _GEN_598 ? putBuffer_5_0_data : _GEN_277; // @[Reg.scala 17:{22,22}]
  wire  _GEN_285 = 3'h0 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_212; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_286 = 3'h1 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_214; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_287 = 3'h2 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_216; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_288 = 3'h3 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_218; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_289 = 3'h4 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_220; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_290 = 3'h5 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_222; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_291 = 3'h6 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_224; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_292 = 3'h0 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_213; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_293 = 3'h1 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_215; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_294 = 3'h2 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_217; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_295 = 3'h3 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_219; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_296 = 3'h4 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_221; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_297 = 3'h5 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_223; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_298 = 3'h6 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_225; // @[SinkA.scala 99:{49,49}]
  wire  _GEN_299 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_285 : _GEN_212; // @[SinkA.scala 98:53]
  wire  _GEN_300 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_286 : _GEN_214; // @[SinkA.scala 98:53]
  wire  _GEN_301 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_287 : _GEN_216; // @[SinkA.scala 98:53]
  wire  _GEN_302 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_288 : _GEN_218; // @[SinkA.scala 98:53]
  wire  _GEN_303 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_289 : _GEN_220; // @[SinkA.scala 98:53]
  wire  _GEN_304 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_290 : _GEN_222; // @[SinkA.scala 98:53]
  wire  _GEN_305 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_291 : _GEN_224; // @[SinkA.scala 98:53]
  wire  _GEN_306 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_292 : _GEN_213; // @[SinkA.scala 98:53]
  wire  _GEN_307 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_293 : _GEN_215; // @[SinkA.scala 98:53]
  wire  _GEN_308 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_294 : _GEN_217; // @[SinkA.scala 98:53]
  wire  _GEN_309 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_295 : _GEN_219; // @[SinkA.scala 98:53]
  wire  _GEN_310 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_296 : _GEN_221; // @[SinkA.scala 98:53]
  wire  _GEN_311 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_297 : _GEN_223; // @[SinkA.scala 98:53]
  wire  _GEN_312 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_298 : _GEN_225; // @[SinkA.scala 98:53]
  wire  _GEN_672 = 3'h0 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_314 = 3'h0 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_0_1 : beatVals_0_0; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_673 = 3'h1 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_674 = ~io_a_pb_pop_bits_count; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_315 = 3'h1 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_1_0 : _GEN_314; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_316 = 3'h1 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_1_1 : _GEN_315; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_676 = 3'h2 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_317 = 3'h2 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_2_0 : _GEN_316; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_318 = 3'h2 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_2_1 : _GEN_317; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_679 = 3'h3 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_319 = 3'h3 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_3_0 : _GEN_318; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_320 = 3'h3 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_3_1 : _GEN_319; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_682 = 3'h4 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_321 = 3'h4 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_4_0 : _GEN_320; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_322 = 3'h4 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_4_1 : _GEN_321; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_685 = 3'h5 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_323 = 3'h5 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_5_0 : _GEN_322; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_324 = 3'h5 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_5_1 : _GEN_323; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_688 = 3'h6 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 102:{21,21}]
  wire  _GEN_325 = 3'h6 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_6_0 : _GEN_324; // @[SinkA.scala 102:{21,21}]
  wire  _io_a_pb_beat_T = io_a_pb_pop_ready & io_a_pb_pop_valid; // @[Decoupled.scala 50:35]
  reg [255:0] io_a_pb_beat_rdata; // @[Reg.scala 16:16]
  reg [31:0] io_a_pb_beat_rmask; // @[Reg.scala 16:16]
  wire [31:0] _GEN_342 = _GEN_672 & io_a_pb_pop_bits_count ? putBuffer_0_1_mask : putBuffer_0_0_mask; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_343 = _GEN_673 & _GEN_674 ? putBuffer_1_0_mask : _GEN_342; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_344 = _GEN_673 & io_a_pb_pop_bits_count ? putBuffer_1_1_mask : _GEN_343; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_345 = _GEN_676 & _GEN_674 ? putBuffer_2_0_mask : _GEN_344; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_346 = _GEN_676 & io_a_pb_pop_bits_count ? putBuffer_2_1_mask : _GEN_345; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_347 = _GEN_679 & _GEN_674 ? putBuffer_3_0_mask : _GEN_346; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_348 = _GEN_679 & io_a_pb_pop_bits_count ? putBuffer_3_1_mask : _GEN_347; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_349 = _GEN_682 & _GEN_674 ? putBuffer_4_0_mask : _GEN_348; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_350 = _GEN_682 & io_a_pb_pop_bits_count ? putBuffer_4_1_mask : _GEN_349; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_351 = _GEN_685 & _GEN_674 ? putBuffer_5_0_mask : _GEN_350; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_356 = _GEN_672 & io_a_pb_pop_bits_count ? putBuffer_0_1_data : putBuffer_0_0_data; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_357 = _GEN_673 & _GEN_674 ? putBuffer_1_0_data : _GEN_356; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_358 = _GEN_673 & io_a_pb_pop_bits_count ? putBuffer_1_1_data : _GEN_357; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_359 = _GEN_676 & _GEN_674 ? putBuffer_2_0_data : _GEN_358; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_360 = _GEN_676 & io_a_pb_pop_bits_count ? putBuffer_2_1_data : _GEN_359; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_361 = _GEN_679 & _GEN_674 ? putBuffer_3_0_data : _GEN_360; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_362 = _GEN_679 & io_a_pb_pop_bits_count ? putBuffer_3_1_data : _GEN_361; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_363 = _GEN_682 & _GEN_674 ? putBuffer_4_0_data : _GEN_362; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_364 = _GEN_682 & io_a_pb_pop_bits_count ? putBuffer_4_1_data : _GEN_363; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_365 = _GEN_685 & _GEN_674 ? putBuffer_5_0_data : _GEN_364; // @[Reg.scala 17:{22,22}]
  assign io_a_ready = first ? io_alloc_ready & _io_alloc_valid_T_1 : 1'h1; // @[SinkA.scala 75:17]
  assign io_alloc_valid = io_a_valid & first & ~noSpace; // @[SinkA.scala 74:38]
  assign io_alloc_bits_opcode = io_a_bits_opcode; // @[SinkA.scala 79:20]
  assign io_alloc_bits_param = io_a_bits_param; // @[SinkA.scala 80:19]
  assign io_alloc_bits_size = io_a_bits_size; // @[SinkA.scala 81:18]
  assign io_alloc_bits_source = io_a_bits_source; // @[SinkA.scala 82:20]
  assign io_alloc_bits_set = set[11:0]; // @[HuanCun.scala 141:30]
  assign io_alloc_bits_tag = set[27:12]; // @[HuanCun.scala 140:19]
  assign io_alloc_bits_off = io_a_bits_address[5:0]; // @[HuanCun.scala 141:54]
  assign io_alloc_bits_bufIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  assign io_alloc_bits_preferCache = io_a_bits_user_preferCache; // @[SinkA.scala 90:25]
  assign io_d_pb_pop_ready = 3'h6 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_6_1 : _GEN_238; // @[SinkA.scala 96:{21,21}]
  assign io_d_pb_beat_data = io_d_pb_beat_rdata; // @[SinkA.scala 97:16]
  assign io_d_pb_beat_mask = io_d_pb_beat_rmask; // @[SinkA.scala 97:16]
  assign io_d_pb_beat_corrupt = io_d_pb_beat_rcorrupt; // @[SinkA.scala 97:16]
  assign io_a_pb_pop_ready = 3'h6 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_6_1 : _GEN_325; // @[SinkA.scala 102:{21,21}]
  assign io_a_pb_beat_data = io_a_pb_beat_rdata; // @[SinkA.scala 103:16]
  assign io_a_pb_beat_mask = io_a_pb_beat_rmask; // @[SinkA.scala 103:16]
  always @(posedge clock) begin
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T) begin // @[Edges.scala 234:17]
      if (first) begin // @[Edges.scala 235:21]
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h0 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_0_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h0 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_0_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_400 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_0_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_498 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_0_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_400 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_0_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_498 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_0_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h0 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_0_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h0 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_0_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_400 & count) begin // @[SinkA.scala 61:40]
          putBuffer_0_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_498 & count) begin // @[SinkA.scala 66:43]
        putBuffer_0_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_400 & count) begin // @[SinkA.scala 62:43]
          putBuffer_0_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_498 & count) begin // @[SinkA.scala 67:46]
        putBuffer_0_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h1 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_1_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h1 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_1_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_403 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_1_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_501 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_1_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_403 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_1_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_501 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_1_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h1 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_1_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h1 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_1_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_403 & count) begin // @[SinkA.scala 61:40]
          putBuffer_1_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_501 & count) begin // @[SinkA.scala 66:43]
        putBuffer_1_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_403 & count) begin // @[SinkA.scala 62:43]
          putBuffer_1_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_501 & count) begin // @[SinkA.scala 67:46]
        putBuffer_1_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h2 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_2_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h2 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_2_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_406 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_2_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_504 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_2_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_406 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_2_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_504 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_2_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h2 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_2_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h2 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_2_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_406 & count) begin // @[SinkA.scala 61:40]
          putBuffer_2_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_504 & count) begin // @[SinkA.scala 66:43]
        putBuffer_2_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_406 & count) begin // @[SinkA.scala 62:43]
          putBuffer_2_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_504 & count) begin // @[SinkA.scala 67:46]
        putBuffer_2_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h3 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_3_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h3 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_3_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_409 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_3_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_507 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_3_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_409 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_3_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_507 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_3_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h3 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_3_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h3 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_3_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_409 & count) begin // @[SinkA.scala 61:40]
          putBuffer_3_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_507 & count) begin // @[SinkA.scala 66:43]
        putBuffer_3_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_409 & count) begin // @[SinkA.scala 62:43]
          putBuffer_3_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_507 & count) begin // @[SinkA.scala 67:46]
        putBuffer_3_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h4 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_4_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h4 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_4_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_412 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_4_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_510 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_4_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_412 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_4_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_510 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_4_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h4 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_4_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h4 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_4_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_412 & count) begin // @[SinkA.scala 61:40]
          putBuffer_4_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_510 & count) begin // @[SinkA.scala 66:43]
        putBuffer_4_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_412 & count) begin // @[SinkA.scala 62:43]
          putBuffer_4_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_510 & count) begin // @[SinkA.scala 67:46]
        putBuffer_4_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h5 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_5_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h5 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_5_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_415 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_5_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_513 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_5_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_415 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_5_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_513 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_5_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h5 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_5_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h5 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_5_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_415 & count) begin // @[SinkA.scala 61:40]
          putBuffer_5_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_513 & count) begin // @[SinkA.scala 66:43]
        putBuffer_5_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_415 & count) begin // @[SinkA.scala 62:43]
          putBuffer_5_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_513 & count) begin // @[SinkA.scala 67:46]
        putBuffer_5_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h6 == insertIdx & ~count) begin // @[SinkA.scala 60:40]
          putBuffer_6_0_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h6 == insertIdxReg & _GEN_401) begin // @[SinkA.scala 65:43]
        putBuffer_6_0_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_418 & _GEN_401) begin // @[SinkA.scala 61:40]
          putBuffer_6_0_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_516 & _GEN_401) begin // @[SinkA.scala 66:43]
        putBuffer_6_0_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_418 & _GEN_401) begin // @[SinkA.scala 62:43]
          putBuffer_6_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_516 & _GEN_401) begin // @[SinkA.scala 67:46]
        putBuffer_6_0_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (3'h6 == insertIdx & count) begin // @[SinkA.scala 60:40]
          putBuffer_6_1_data <= io_a_bits_data; // @[SinkA.scala 60:40]
        end
      end else if (3'h6 == insertIdxReg & count) begin // @[SinkA.scala 65:43]
        putBuffer_6_1_data <= io_a_bits_data; // @[SinkA.scala 65:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_418 & count) begin // @[SinkA.scala 61:40]
          putBuffer_6_1_mask <= io_a_bits_mask; // @[SinkA.scala 61:40]
        end
      end else if (_GEN_516 & count) begin // @[SinkA.scala 66:43]
        putBuffer_6_1_mask <= io_a_bits_mask; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 58:29]
      if (first) begin // @[SinkA.scala 59:17]
        if (_GEN_418 & count) begin // @[SinkA.scala 62:43]
          putBuffer_6_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 62:43]
        end
      end else if (_GEN_516 & count) begin // @[SinkA.scala 67:46]
        putBuffer_6_1_corrupt <= io_a_bits_corrupt; // @[SinkA.scala 67:46]
      end
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_0_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h0 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_0_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_0_0 <= _GEN_299;
      end
    end else begin
      beatVals_0_0 <= _GEN_299;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_0_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h0 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_0_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_0_1 <= _GEN_306;
      end
    end else begin
      beatVals_0_1 <= _GEN_306;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_1_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h1 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_1_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_1_0 <= _GEN_300;
      end
    end else begin
      beatVals_1_0 <= _GEN_300;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_1_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h1 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_1_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_1_1 <= _GEN_307;
      end
    end else begin
      beatVals_1_1 <= _GEN_307;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_2_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h2 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_2_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_2_0 <= _GEN_301;
      end
    end else begin
      beatVals_2_0 <= _GEN_301;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_2_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h2 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_2_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_2_1 <= _GEN_308;
      end
    end else begin
      beatVals_2_1 <= _GEN_308;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_3_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h3 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_3_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_3_0 <= _GEN_302;
      end
    end else begin
      beatVals_3_0 <= _GEN_302;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_3_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h3 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_3_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_3_1 <= _GEN_309;
      end
    end else begin
      beatVals_3_1 <= _GEN_309;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_4_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h4 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_4_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_4_0 <= _GEN_303;
      end
    end else begin
      beatVals_4_0 <= _GEN_303;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_4_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h4 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_4_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_4_1 <= _GEN_310;
      end
    end else begin
      beatVals_4_1 <= _GEN_310;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_5_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h5 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_5_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_5_0 <= _GEN_304;
      end
    end else begin
      beatVals_5_0 <= _GEN_304;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_5_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h5 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_5_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_5_1 <= _GEN_311;
      end
    end else begin
      beatVals_5_1 <= _GEN_311;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_6_0 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h6 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_6_0 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_6_0 <= _GEN_305;
      end
    end else begin
      beatVals_6_0 <= _GEN_305;
    end
    if (reset) begin // @[SinkA.scala 49:25]
      beatVals_6_1 <= 1'h0; // @[SinkA.scala 49:25]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin // @[SinkA.scala 104:53]
      if (3'h6 == io_a_pb_pop_bits_bufIdx) begin // @[SinkA.scala 105:49]
        beatVals_6_1 <= 1'h0; // @[SinkA.scala 105:49]
      end else begin
        beatVals_6_1 <= _GEN_312;
      end
    end else begin
      beatVals_6_1 <= _GEN_312;
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
    if (_io_d_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_612 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_6_1_data; // @[Reg.scala 17:22]
      end else if (_GEN_612 & _GEN_598) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_6_0_data; // @[Reg.scala 17:22]
      end else if (_GEN_609 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_5_1_data; // @[Reg.scala 17:22]
      end else begin
        io_d_pb_beat_rdata <= _GEN_278;
      end
    end
    if (_io_d_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_612 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_6_1_mask; // @[Reg.scala 17:22]
      end else if (_GEN_612 & _GEN_598) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_6_0_mask; // @[Reg.scala 17:22]
      end else if (_GEN_609 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_5_1_mask; // @[Reg.scala 17:22]
      end else begin
        io_d_pb_beat_rmask <= _GEN_264;
      end
    end
    if (_io_d_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_612 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rcorrupt <= putBuffer_6_1_corrupt; // @[Reg.scala 17:22]
      end else if (_GEN_612 & _GEN_598) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rcorrupt <= putBuffer_6_0_corrupt; // @[Reg.scala 17:22]
      end else if (_GEN_609 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rcorrupt <= putBuffer_5_1_corrupt; // @[Reg.scala 17:22]
      end else begin
        io_d_pb_beat_rcorrupt <= _GEN_250;
      end
    end
    if (_io_a_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_688 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_6_1_data; // @[Reg.scala 17:22]
      end else if (_GEN_688 & _GEN_674) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_6_0_data; // @[Reg.scala 17:22]
      end else if (_GEN_685 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_5_1_data; // @[Reg.scala 17:22]
      end else begin
        io_a_pb_beat_rdata <= _GEN_365;
      end
    end
    if (_io_a_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_688 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_6_1_mask; // @[Reg.scala 17:22]
      end else if (_GEN_688 & _GEN_674) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_6_0_mask; // @[Reg.scala 17:22]
      end else if (_GEN_685 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_5_1_mask; // @[Reg.scala 17:22]
      end else begin
        io_a_pb_beat_rmask <= _GEN_351;
      end
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
  _RAND_0 = {1{`RANDOM}};
  counter = _RAND_0[0:0];
  _RAND_1 = {8{`RANDOM}};
  putBuffer_0_0_data = _RAND_1[255:0];
  _RAND_2 = {1{`RANDOM}};
  putBuffer_0_0_mask = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  putBuffer_0_0_corrupt = _RAND_3[0:0];
  _RAND_4 = {8{`RANDOM}};
  putBuffer_0_1_data = _RAND_4[255:0];
  _RAND_5 = {1{`RANDOM}};
  putBuffer_0_1_mask = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  putBuffer_0_1_corrupt = _RAND_6[0:0];
  _RAND_7 = {8{`RANDOM}};
  putBuffer_1_0_data = _RAND_7[255:0];
  _RAND_8 = {1{`RANDOM}};
  putBuffer_1_0_mask = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  putBuffer_1_0_corrupt = _RAND_9[0:0];
  _RAND_10 = {8{`RANDOM}};
  putBuffer_1_1_data = _RAND_10[255:0];
  _RAND_11 = {1{`RANDOM}};
  putBuffer_1_1_mask = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  putBuffer_1_1_corrupt = _RAND_12[0:0];
  _RAND_13 = {8{`RANDOM}};
  putBuffer_2_0_data = _RAND_13[255:0];
  _RAND_14 = {1{`RANDOM}};
  putBuffer_2_0_mask = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  putBuffer_2_0_corrupt = _RAND_15[0:0];
  _RAND_16 = {8{`RANDOM}};
  putBuffer_2_1_data = _RAND_16[255:0];
  _RAND_17 = {1{`RANDOM}};
  putBuffer_2_1_mask = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  putBuffer_2_1_corrupt = _RAND_18[0:0];
  _RAND_19 = {8{`RANDOM}};
  putBuffer_3_0_data = _RAND_19[255:0];
  _RAND_20 = {1{`RANDOM}};
  putBuffer_3_0_mask = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  putBuffer_3_0_corrupt = _RAND_21[0:0];
  _RAND_22 = {8{`RANDOM}};
  putBuffer_3_1_data = _RAND_22[255:0];
  _RAND_23 = {1{`RANDOM}};
  putBuffer_3_1_mask = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  putBuffer_3_1_corrupt = _RAND_24[0:0];
  _RAND_25 = {8{`RANDOM}};
  putBuffer_4_0_data = _RAND_25[255:0];
  _RAND_26 = {1{`RANDOM}};
  putBuffer_4_0_mask = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  putBuffer_4_0_corrupt = _RAND_27[0:0];
  _RAND_28 = {8{`RANDOM}};
  putBuffer_4_1_data = _RAND_28[255:0];
  _RAND_29 = {1{`RANDOM}};
  putBuffer_4_1_mask = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  putBuffer_4_1_corrupt = _RAND_30[0:0];
  _RAND_31 = {8{`RANDOM}};
  putBuffer_5_0_data = _RAND_31[255:0];
  _RAND_32 = {1{`RANDOM}};
  putBuffer_5_0_mask = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  putBuffer_5_0_corrupt = _RAND_33[0:0];
  _RAND_34 = {8{`RANDOM}};
  putBuffer_5_1_data = _RAND_34[255:0];
  _RAND_35 = {1{`RANDOM}};
  putBuffer_5_1_mask = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  putBuffer_5_1_corrupt = _RAND_36[0:0];
  _RAND_37 = {8{`RANDOM}};
  putBuffer_6_0_data = _RAND_37[255:0];
  _RAND_38 = {1{`RANDOM}};
  putBuffer_6_0_mask = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  putBuffer_6_0_corrupt = _RAND_39[0:0];
  _RAND_40 = {8{`RANDOM}};
  putBuffer_6_1_data = _RAND_40[255:0];
  _RAND_41 = {1{`RANDOM}};
  putBuffer_6_1_mask = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  putBuffer_6_1_corrupt = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  beatVals_0_0 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  beatVals_0_1 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  beatVals_1_0 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  beatVals_1_1 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  beatVals_2_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  beatVals_2_1 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  beatVals_3_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  beatVals_3_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  beatVals_4_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  beatVals_4_1 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  beatVals_5_0 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  beatVals_5_1 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  beatVals_6_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  beatVals_6_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  insertIdxReg = _RAND_57[2:0];
  _RAND_58 = {8{`RANDOM}};
  io_d_pb_beat_rdata = _RAND_58[255:0];
  _RAND_59 = {1{`RANDOM}};
  io_d_pb_beat_rmask = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  io_d_pb_beat_rcorrupt = _RAND_60[0:0];
  _RAND_61 = {8{`RANDOM}};
  io_a_pb_beat_rdata = _RAND_61[255:0];
  _RAND_62 = {1{`RANDOM}};
  io_a_pb_beat_rmask = _RAND_62[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
