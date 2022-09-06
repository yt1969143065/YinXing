module SubDirectory(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [20:0] io_read_bits_tag,
  input  [7:0]  io_read_bits_set,
  output        io_resp_bits_hit,
  output [2:0]  io_resp_bits_way,
  output [20:0] io_resp_bits_tag,
  output [1:0]  io_resp_bits_dir_0_state,
  output [1:0]  io_resp_bits_dir_0_alias,
  output [1:0]  io_resp_bits_dir_1_state,
  output [1:0]  io_resp_bits_dir_1_alias,
  output        io_resp_bits_error,
  output        io_tag_wready,
  input         io_tag_wvalid,
  input  [20:0] io_tag_wtag,
  input  [7:0]  io_tag_wset,
  input  [2:0]  io_tag_wway,
  input         io_dir_wvalid,
  input  [7:0]  io_dir_wset,
  input  [2:0]  io_dir_wway,
  input  [1:0]  io_dir_wdir_0_state,
  input  [1:0]  io_dir_wdir_0_alias,
  input  [1:0]  io_dir_wdir_1_state,
  input  [1:0]  io_dir_wdir_1_alias
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rreq_valid; // @[BaseDirectory.scala 104:25]
  wire [7:0] metaArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_1_alias; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_valid; // @[BaseDirectory.scala 104:25]
  wire [7:0] metaArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_1_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_0_alias; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_1_alias; // @[BaseDirectory.scala 104:25]
  wire [5:0] metaArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 104:25]
  wire  tagArray_clock; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_rreq_valid; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_0; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_1; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_2; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_3; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_4; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_5; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_wreq_valid; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 120:24]
  wire [5:0] tagArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 120:24]
  wire  eccArray_clock; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_rreq_valid; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_5; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_wreq_valid; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 122:26]
  wire  lfsr_prng_clock; // @[PRNG.scala 91:22]
  wire  lfsr_prng_reset; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_increment; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_0; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_1; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_2; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_3; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_4; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_5; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_6; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_7; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_8; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_9; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_10; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_11; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_12; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_13; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_14; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_15; // @[PRNG.scala 91:22]
  reg  resetFinish; // @[BaseDirectory.scala 102:28]
  reg [7:0] resetIdx; // @[BaseDirectory.scala 103:25]
  wire [20:0] _syndromeUInt_T = 21'haad5b & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_1 = ^_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [20:0] _syndromeUInt_T_3 = 21'h13366d & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_4 = ^_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [20:0] _syndromeUInt_T_6 = 21'h3c78e & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_7 = ^_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [20:0] _syndromeUInt_T_9 = 21'h1c07f0 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_10 = ^_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [20:0] _syndromeUInt_T_12 = 21'h1ff800 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_13 = ^_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [25:0] _T_1 = {_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire  _T_2 = ^_T_1; // @[ECC.scala 81:55]
  wire [26:0] _T_4 = {_T_2,_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire [7:0] _T_7 = 8'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  wire  _T_8 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg [20:0] reqReg_tag; // @[Reg.scala 16:16]
  wire [7:0] lfsr_lo = {lfsr_prng_io_out_7,lfsr_prng_io_out_6,lfsr_prng_io_out_5,lfsr_prng_io_out_4,lfsr_prng_io_out_3,
    lfsr_prng_io_out_2,lfsr_prng_io_out_1,lfsr_prng_io_out_0}; // @[PRNG.scala 95:17]
  wire [15:0] lfsr = {lfsr_prng_io_out_15,lfsr_prng_io_out_14,lfsr_prng_io_out_13,lfsr_prng_io_out_12,
    lfsr_prng_io_out_11,lfsr_prng_io_out_10,lfsr_prng_io_out_9,lfsr_prng_io_out_8,lfsr_lo}; // @[PRNG.scala 95:17]
  wire [20:0] tagRead_0 = tagArray_io_rresp_data_0; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_0 = tagRead_0 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_1 = tagArray_io_rresp_data_1; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_1 = tagRead_1 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_2 = tagArray_io_rresp_data_2; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_2 = tagRead_2 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_3 = tagArray_io_rresp_data_3; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_3 = tagRead_3 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_4 = tagArray_io_rresp_data_4; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_4 = tagRead_4 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_5 = tagArray_io_rresp_data_5; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_5 = tagRead_5 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [5:0] _hitWay_T = {tagMatchVec_5,tagMatchVec_4,tagMatchVec_3,tagMatchVec_2,tagMatchVec_1,tagMatchVec_0}; // @[Cat.scala 31:58]
  wire [1:0] hitWay_hi_1 = _hitWay_T[5:4]; // @[OneHot.scala 30:18]
  wire [3:0] hitWay_lo_1 = _hitWay_T[3:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _GEN_45 = {{2'd0}, hitWay_hi_1}; // @[OneHot.scala 32:28]
  wire [3:0] _hitWay_T_2 = _GEN_45 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay_hi_2 = _hitWay_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hitWay_lo_2 = _hitWay_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_3 = |hitWay_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _hitWay_T_4 = hitWay_hi_2 | hitWay_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] hitWay = {_hitWay_T_1,_hitWay_T_3,_hitWay_T_4[1]}; // @[Cat.scala 31:58]
  wire  _replaceWay_T_1 = lfsr[5:0] < 6'ha; // @[Misc.scala 160:37]
  wire  _replaceWay_T_2 = lfsr[5:0] < 6'h15; // @[Misc.scala 160:37]
  wire  _replaceWay_T_3 = lfsr[5:0] < 6'h20; // @[Misc.scala 160:37]
  wire  _replaceWay_T_4 = lfsr[5:0] < 6'h2a; // @[Misc.scala 160:37]
  wire  _replaceWay_T_5 = lfsr[5:0] < 6'h35; // @[Misc.scala 160:37]
  wire [2:0] _replaceWay_T_7 = _replaceWay_T_5 ? 3'h4 : 3'h5; // @[Mux.scala 47:70]
  wire [2:0] _replaceWay_T_8 = _replaceWay_T_4 ? 3'h3 : _replaceWay_T_7; // @[Mux.scala 47:70]
  wire [2:0] _replaceWay_T_9 = _replaceWay_T_3 ? 3'h2 : _replaceWay_T_8; // @[Mux.scala 47:70]
  wire [2:0] _replaceWay_T_10 = _replaceWay_T_2 ? 3'h1 : _replaceWay_T_9; // @[Mux.scala 47:70]
  wire [2:0] replaceWay = _replaceWay_T_1 ? 3'h0 : _replaceWay_T_10; // @[Mux.scala 47:70]
  wire  _invalid_vec_T = metaArray_io_rresp_data_0_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_1 = metaArray_io_rresp_data_0_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_2 = {_invalid_vec_T,_invalid_vec_T_1}; // @[Cat.scala 31:58]
  wire  invalid_vec_0 = &_invalid_vec_T_2; // @[Directory.scala 174:86]
  wire  _invalid_vec_T_3 = metaArray_io_rresp_data_1_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_4 = metaArray_io_rresp_data_1_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_5 = {_invalid_vec_T_3,_invalid_vec_T_4}; // @[Cat.scala 31:58]
  wire  invalid_vec_1 = &_invalid_vec_T_5; // @[Directory.scala 174:86]
  wire  _invalid_vec_T_6 = metaArray_io_rresp_data_2_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_7 = metaArray_io_rresp_data_2_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_8 = {_invalid_vec_T_6,_invalid_vec_T_7}; // @[Cat.scala 31:58]
  wire  invalid_vec_2 = &_invalid_vec_T_8; // @[Directory.scala 174:86]
  wire  _invalid_vec_T_9 = metaArray_io_rresp_data_3_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_10 = metaArray_io_rresp_data_3_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_11 = {_invalid_vec_T_9,_invalid_vec_T_10}; // @[Cat.scala 31:58]
  wire  invalid_vec_3 = &_invalid_vec_T_11; // @[Directory.scala 174:86]
  wire  _invalid_vec_T_12 = metaArray_io_rresp_data_4_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_13 = metaArray_io_rresp_data_4_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_14 = {_invalid_vec_T_12,_invalid_vec_T_13}; // @[Cat.scala 31:58]
  wire  invalid_vec_4 = &_invalid_vec_T_14; // @[Directory.scala 174:86]
  wire  _invalid_vec_T_15 = metaArray_io_rresp_data_5_0_state == 2'h0; // @[Directory.scala 174:68]
  wire  _invalid_vec_T_16 = metaArray_io_rresp_data_5_1_state == 2'h0; // @[Directory.scala 174:68]
  wire [1:0] _invalid_vec_T_17 = {_invalid_vec_T_15,_invalid_vec_T_16}; // @[Cat.scala 31:58]
  wire  invalid_vec_5 = &_invalid_vec_T_17; // @[Directory.scala 174:86]
  wire [5:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3,invalid_vec_4,invalid_vec_5}; // @[Cat.scala 31:58]
  wire  inv = |_has_invalid_way_T; // @[Directory.scala 175:47]
  wire [2:0] _way_T_1 = invalid_vec_1 ? 3'h1 : 3'h2; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_3 = invalid_vec_0 ? 3'h0 : _way_T_1; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_5 = invalid_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_7 = invalid_vec_3 ? 3'h3 : _way_T_5; // @[ParallelMux.scala 92:77]
  wire [2:0] invalidWay = invalid_vec_0 | (invalid_vec_1 | invalid_vec_2) ? _way_T_3 : _way_T_7; // @[ParallelMux.scala 92:77]
  wire [2:0] chosenWay = inv ? invalidWay : replaceWay; // @[BaseDirectory.scala 167:22]
  wire [5:0] eccRead_0 = eccArray_io_rresp_data_0; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] eccRead_1 = eccArray_io_rresp_data_1; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_8 = 3'h1 == io_resp_bits_way ? eccRead_1 : eccRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_2 = eccArray_io_rresp_data_2; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_9 = 3'h2 == io_resp_bits_way ? eccRead_2 : _GEN_8; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_3 = eccArray_io_rresp_data_3; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_10 = 3'h3 == io_resp_bits_way ? eccRead_3 : _GEN_9; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_4 = eccArray_io_rresp_data_4; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_11 = 3'h4 == io_resp_bits_way ? eccRead_4 : _GEN_10; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_5 = eccArray_io_rresp_data_5; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_12 = 3'h5 == io_resp_bits_way ? eccRead_5 : _GEN_11; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_14 = 3'h1 == io_resp_bits_way ? tagRead_1 : tagRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_15 = 3'h2 == io_resp_bits_way ? tagRead_2 : _GEN_14; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_16 = 3'h3 == io_resp_bits_way ? tagRead_3 : _GEN_15; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_17 = 3'h4 == io_resp_bits_way ? tagRead_4 : _GEN_16; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_18 = 3'h5 == io_resp_bits_way ? tagRead_5 : _GEN_17; // @[BaseDirectory.scala 169:{61,61}]
  wire [26:0] _T_12 = {_GEN_12,_GEN_18}; // @[BaseDirectory.scala 169:61]
  wire [25:0] _syndromeUInt_T_15 = 26'h2aad5b & _T_12[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_17 = 26'h53366d & _T_12[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_19 = 26'h83c78e & _T_12[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_21 = 26'h11c07f0 & _T_12[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_23 = 26'h21ff800 & _T_12[25:0]; // @[ECC.scala 156:66]
  wire [4:0] syndromeUInt_1 = {^_syndromeUInt_T_23,^_syndromeUInt_T_21,^_syndromeUInt_T_19,^_syndromeUInt_T_17,^
    _syndromeUInt_T_15}; // @[ECC.scala 156:78]
  wire  correctable = |syndromeUInt_1; // @[ECC.scala 163:36]
  wire  uncorrectable_1 = ^_T_12; // @[ECC.scala 87:27]
  wire  uncorrectable_2 = ~uncorrectable_1 & correctable; // @[ECC.scala 195:47]
  wire [5:0] _io_resp_bits_hit_T = {tagMatchVec_0,tagMatchVec_1,tagMatchVec_2,tagMatchVec_3,tagMatchVec_4,tagMatchVec_5}
    ; // @[Cat.scala 31:58]
  wire [1:0] _GEN_19 = metaArray_io_rresp_data_0_0_alias; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_20 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_0_alias : _GEN_19; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_21 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_0_alias : _GEN_20; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_22 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_0_alias : _GEN_21; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_23 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_0_alias : _GEN_22; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_25 = metaArray_io_rresp_data_0_0_state; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_26 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_0_state : _GEN_25; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_27 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_0_state : _GEN_26; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_28 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_0_state : _GEN_27; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_29 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_0_state : _GEN_28; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_31 = metaArray_io_rresp_data_0_1_alias; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_32 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_1_alias : _GEN_31; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_33 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_1_alias : _GEN_32; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_34 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_1_alias : _GEN_33; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_35 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_1_alias : _GEN_34; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_37 = metaArray_io_rresp_data_0_1_state; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_38 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_1_state : _GEN_37; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_39 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_1_state : _GEN_38; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_40 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_1_state : _GEN_39; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_41 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_1_state : _GEN_40; // @[BaseDirectory.scala 173:{20,20}]
  wire  _io_resp_bits_error_T = uncorrectable_1 | uncorrectable_2; // @[ECC.scala 31:27]
  wire  _T_14 = ~resetFinish; // @[BaseDirectory.scala 178:5]
  wire [7:0] _T_18 = 8'h1 << io_dir_wway; // @[OneHot.scala 57:35]
  wire [7:0] _T_20 = resetFinish ? _T_18 : 8'h3f; // @[BaseDirectory.scala 181:8]
  wire  _GEN_43 = resetIdx == 8'h0 | resetFinish; // @[BaseDirectory.scala 184:26 185:17 102:28]
  wire [7:0] _resetIdx_T_1 = resetIdx - 8'h1; // @[BaseDirectory.scala 188:26]
  SRAMTemplate_191 metaArray ( // @[BaseDirectory.scala 104:25]
    .clock(metaArray_clock),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_0_state(metaArray_io_rresp_data_0_0_state),
    .io_rresp_data_0_0_alias(metaArray_io_rresp_data_0_0_alias),
    .io_rresp_data_0_1_state(metaArray_io_rresp_data_0_1_state),
    .io_rresp_data_0_1_alias(metaArray_io_rresp_data_0_1_alias),
    .io_rresp_data_1_0_state(metaArray_io_rresp_data_1_0_state),
    .io_rresp_data_1_0_alias(metaArray_io_rresp_data_1_0_alias),
    .io_rresp_data_1_1_state(metaArray_io_rresp_data_1_1_state),
    .io_rresp_data_1_1_alias(metaArray_io_rresp_data_1_1_alias),
    .io_rresp_data_2_0_state(metaArray_io_rresp_data_2_0_state),
    .io_rresp_data_2_0_alias(metaArray_io_rresp_data_2_0_alias),
    .io_rresp_data_2_1_state(metaArray_io_rresp_data_2_1_state),
    .io_rresp_data_2_1_alias(metaArray_io_rresp_data_2_1_alias),
    .io_rresp_data_3_0_state(metaArray_io_rresp_data_3_0_state),
    .io_rresp_data_3_0_alias(metaArray_io_rresp_data_3_0_alias),
    .io_rresp_data_3_1_state(metaArray_io_rresp_data_3_1_state),
    .io_rresp_data_3_1_alias(metaArray_io_rresp_data_3_1_alias),
    .io_rresp_data_4_0_state(metaArray_io_rresp_data_4_0_state),
    .io_rresp_data_4_0_alias(metaArray_io_rresp_data_4_0_alias),
    .io_rresp_data_4_1_state(metaArray_io_rresp_data_4_1_state),
    .io_rresp_data_4_1_alias(metaArray_io_rresp_data_4_1_alias),
    .io_rresp_data_5_0_state(metaArray_io_rresp_data_5_0_state),
    .io_rresp_data_5_0_alias(metaArray_io_rresp_data_5_0_alias),
    .io_rresp_data_5_1_state(metaArray_io_rresp_data_5_1_state),
    .io_rresp_data_5_1_alias(metaArray_io_rresp_data_5_1_alias),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_0_state(metaArray_io_wreq_bits_data_0_0_state),
    .io_wreq_bits_data_0_0_alias(metaArray_io_wreq_bits_data_0_0_alias),
    .io_wreq_bits_data_0_1_state(metaArray_io_wreq_bits_data_0_1_state),
    .io_wreq_bits_data_0_1_alias(metaArray_io_wreq_bits_data_0_1_alias),
    .io_wreq_bits_data_1_0_state(metaArray_io_wreq_bits_data_1_0_state),
    .io_wreq_bits_data_1_0_alias(metaArray_io_wreq_bits_data_1_0_alias),
    .io_wreq_bits_data_1_1_state(metaArray_io_wreq_bits_data_1_1_state),
    .io_wreq_bits_data_1_1_alias(metaArray_io_wreq_bits_data_1_1_alias),
    .io_wreq_bits_data_2_0_state(metaArray_io_wreq_bits_data_2_0_state),
    .io_wreq_bits_data_2_0_alias(metaArray_io_wreq_bits_data_2_0_alias),
    .io_wreq_bits_data_2_1_state(metaArray_io_wreq_bits_data_2_1_state),
    .io_wreq_bits_data_2_1_alias(metaArray_io_wreq_bits_data_2_1_alias),
    .io_wreq_bits_data_3_0_state(metaArray_io_wreq_bits_data_3_0_state),
    .io_wreq_bits_data_3_0_alias(metaArray_io_wreq_bits_data_3_0_alias),
    .io_wreq_bits_data_3_1_state(metaArray_io_wreq_bits_data_3_1_state),
    .io_wreq_bits_data_3_1_alias(metaArray_io_wreq_bits_data_3_1_alias),
    .io_wreq_bits_data_4_0_state(metaArray_io_wreq_bits_data_4_0_state),
    .io_wreq_bits_data_4_0_alias(metaArray_io_wreq_bits_data_4_0_alias),
    .io_wreq_bits_data_4_1_state(metaArray_io_wreq_bits_data_4_1_state),
    .io_wreq_bits_data_4_1_alias(metaArray_io_wreq_bits_data_4_1_alias),
    .io_wreq_bits_data_5_0_state(metaArray_io_wreq_bits_data_5_0_state),
    .io_wreq_bits_data_5_0_alias(metaArray_io_wreq_bits_data_5_0_alias),
    .io_wreq_bits_data_5_1_state(metaArray_io_wreq_bits_data_5_1_state),
    .io_wreq_bits_data_5_1_alias(metaArray_io_wreq_bits_data_5_1_alias),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_192 tagArray ( // @[BaseDirectory.scala 120:24]
    .clock(tagArray_clock),
    .io_rreq_valid(tagArray_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArray_io_rresp_data_0),
    .io_rresp_data_1(tagArray_io_rresp_data_1),
    .io_rresp_data_2(tagArray_io_rresp_data_2),
    .io_rresp_data_3(tagArray_io_rresp_data_3),
    .io_rresp_data_4(tagArray_io_rresp_data_4),
    .io_rresp_data_5(tagArray_io_rresp_data_5),
    .io_wreq_valid(tagArray_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(tagArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(tagArray_io_wreq_bits_data_5),
    .io_wreq_bits_waymask(tagArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_193 eccArray ( // @[BaseDirectory.scala 122:26]
    .clock(eccArray_clock),
    .io_rreq_valid(eccArray_io_rreq_valid),
    .io_rreq_bits_setIdx(eccArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(eccArray_io_rresp_data_0),
    .io_rresp_data_1(eccArray_io_rresp_data_1),
    .io_rresp_data_2(eccArray_io_rresp_data_2),
    .io_rresp_data_3(eccArray_io_rresp_data_3),
    .io_rresp_data_4(eccArray_io_rresp_data_4),
    .io_rresp_data_5(eccArray_io_rresp_data_5),
    .io_wreq_valid(eccArray_io_wreq_valid),
    .io_wreq_bits_setIdx(eccArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(eccArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(eccArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(eccArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(eccArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(eccArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(eccArray_io_wreq_bits_data_5),
    .io_wreq_bits_waymask(eccArray_io_wreq_bits_waymask)
  );
  MaxPeriodFibonacciLFSR lfsr_prng ( // @[PRNG.scala 91:22]
    .clock(lfsr_prng_clock),
    .reset(lfsr_prng_reset),
    .io_increment(lfsr_prng_io_increment),
    .io_out_0(lfsr_prng_io_out_0),
    .io_out_1(lfsr_prng_io_out_1),
    .io_out_2(lfsr_prng_io_out_2),
    .io_out_3(lfsr_prng_io_out_3),
    .io_out_4(lfsr_prng_io_out_4),
    .io_out_5(lfsr_prng_io_out_5),
    .io_out_6(lfsr_prng_io_out_6),
    .io_out_7(lfsr_prng_io_out_7),
    .io_out_8(lfsr_prng_io_out_8),
    .io_out_9(lfsr_prng_io_out_9),
    .io_out_10(lfsr_prng_io_out_10),
    .io_out_11(lfsr_prng_io_out_11),
    .io_out_12(lfsr_prng_io_out_12),
    .io_out_13(lfsr_prng_io_out_13),
    .io_out_14(lfsr_prng_io_out_14),
    .io_out_15(lfsr_prng_io_out_15)
  );
  assign io_read_ready = ~io_tag_wvalid & ~io_dir_wvalid & resetFinish; // @[BaseDirectory.scala 111:58]
  assign io_resp_bits_hit = |_io_resp_bits_hit_T; // @[BaseDirectory.scala 171:38]
  assign io_resp_bits_way = io_resp_bits_hit ? hitWay : chosenWay; // @[BaseDirectory.scala 172:58]
  assign io_resp_bits_tag = 3'h5 == io_resp_bits_way ? tagRead_5 : _GEN_17; // @[BaseDirectory.scala 169:{61,61}]
  assign io_resp_bits_dir_0_state = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_0_state : _GEN_29; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_0_alias = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_0_alias : _GEN_23; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_1_state = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_1_state : _GEN_41; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_1_alias = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_1_alias : _GEN_35; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_error = io_resp_bits_hit & _io_resp_bits_error_T; // @[BaseDirectory.scala 175:42]
  assign io_tag_wready = 1'h1; // @[BaseDirectory.scala 109:18]
  assign metaArray_clock = clock;
  assign metaArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign metaArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_valid = ~resetFinish | io_dir_wvalid; // @[BaseDirectory.scala 178:18]
  assign metaArray_io_wreq_bits_setIdx = resetFinish ? io_dir_wset : resetIdx; // @[BaseDirectory.scala 180:8]
  assign metaArray_io_wreq_bits_data_0_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_0_alias = resetFinish ? io_dir_wdir_0_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_1_state = resetFinish ? io_dir_wdir_1_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_1_alias = resetFinish ? io_dir_wdir_1_alias : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_waymask = _T_20[5:0]; // @[SRAMTemplate.scala 61:24]
  assign tagArray_clock = clock;
  assign tagArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tagArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign tagArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_bits_data_0 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_1 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_2 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_3 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_4 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_5 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_waymask = _T_7[5:0]; // @[SRAMTemplate.scala 61:24]
  assign eccArray_clock = clock;
  assign eccArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign eccArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign eccArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_bits_data_0 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_1 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_2 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_3 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_4 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_5 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_waymask = _T_7[5:0]; // @[SRAMTemplate.scala 61:24]
  assign lfsr_prng_clock = clock;
  assign lfsr_prng_reset = reset;
  assign lfsr_prng_io_increment = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  always @(posedge clock) begin
    if (reset) begin // @[BaseDirectory.scala 102:28]
      resetFinish <= 1'h0; // @[BaseDirectory.scala 102:28]
    end else begin
      resetFinish <= _GEN_43;
    end
    if (reset) begin // @[BaseDirectory.scala 103:25]
      resetIdx <= 8'hff; // @[BaseDirectory.scala 103:25]
    end else if (_T_14) begin // @[BaseDirectory.scala 187:22]
      resetIdx <= _resetIdx_T_1; // @[BaseDirectory.scala 188:14]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      reqReg_tag <= io_read_bits_tag; // @[Reg.scala 17:22]
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
  resetFinish = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetIdx = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  reqReg_tag = _RAND_2[20:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
