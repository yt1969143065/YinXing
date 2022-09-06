module SubDirectory_2(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [18:0] io_read_bits_tag,
  input  [8:0]  io_read_bits_set,
  output        io_resp_bits_hit,
  output [2:0]  io_resp_bits_way,
  output [18:0] io_resp_bits_tag,
  output [1:0]  io_resp_bits_dir_0_state,
  output        io_resp_bits_error,
  output        io_tag_wready,
  input         io_tag_wvalid,
  input  [18:0] io_tag_wtag,
  input  [8:0]  io_tag_wset,
  input  [2:0]  io_tag_wway,
  input         io_dir_wvalid,
  input  [8:0]  io_dir_wset,
  input  [2:0]  io_dir_wway,
  input  [1:0]  io_dir_wdir_0_state
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rreq_valid; // @[BaseDirectory.scala 104:25]
  wire [8:0] metaArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_6_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_7_0_state; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_valid; // @[BaseDirectory.scala 104:25]
  wire [8:0] metaArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_0_state; // @[BaseDirectory.scala 104:25]
  wire [7:0] metaArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 104:25]
  wire  tagArray_clock; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_rreq_valid; // @[BaseDirectory.scala 120:24]
  wire [8:0] tagArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_0; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_1; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_2; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_3; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_4; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_5; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_6; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_rresp_data_7; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_wreq_valid; // @[BaseDirectory.scala 120:24]
  wire [8:0] tagArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_6; // @[BaseDirectory.scala 120:24]
  wire [18:0] tagArray_io_wreq_bits_data_7; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 120:24]
  wire  eccArray_clock; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_rreq_valid; // @[BaseDirectory.scala 122:26]
  wire [8:0] eccArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_5; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_6; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_7; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_wreq_valid; // @[BaseDirectory.scala 122:26]
  wire [8:0] eccArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_6; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_7; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 122:26]
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
  reg [8:0] resetIdx; // @[BaseDirectory.scala 103:25]
  wire [18:0] _syndromeUInt_T = 19'h2ad5b & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_1 = ^_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [18:0] _syndromeUInt_T_3 = 19'h3366d & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_4 = ^_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [18:0] _syndromeUInt_T_6 = 19'h3c78e & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_7 = ^_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [18:0] _syndromeUInt_T_9 = 19'h407f0 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_10 = ^_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [18:0] _syndromeUInt_T_12 = 19'h7f800 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_13 = ^_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [23:0] _T_1 = {_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire  _T_2 = ^_T_1; // @[ECC.scala 81:55]
  wire [24:0] _T_4 = {_T_2,_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire  _T_8 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg [18:0] reqReg_tag; // @[Reg.scala 16:16]
  wire [7:0] lfsr_lo = {lfsr_prng_io_out_7,lfsr_prng_io_out_6,lfsr_prng_io_out_5,lfsr_prng_io_out_4,lfsr_prng_io_out_3,
    lfsr_prng_io_out_2,lfsr_prng_io_out_1,lfsr_prng_io_out_0}; // @[PRNG.scala 95:17]
  wire [15:0] lfsr = {lfsr_prng_io_out_15,lfsr_prng_io_out_14,lfsr_prng_io_out_13,lfsr_prng_io_out_12,
    lfsr_prng_io_out_11,lfsr_prng_io_out_10,lfsr_prng_io_out_9,lfsr_prng_io_out_8,lfsr_lo}; // @[PRNG.scala 95:17]
  wire [18:0] tagRead_0 = tagArray_io_rresp_data_0; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_0 = tagRead_0 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_1 = tagArray_io_rresp_data_1; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_1 = tagRead_1 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_2 = tagArray_io_rresp_data_2; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_2 = tagRead_2 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_3 = tagArray_io_rresp_data_3; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_3 = tagRead_3 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_4 = tagArray_io_rresp_data_4; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_4 = tagRead_4 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_5 = tagArray_io_rresp_data_5; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_5 = tagRead_5 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_6 = tagArray_io_rresp_data_6; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_6 = tagRead_6 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [18:0] tagRead_7 = tagArray_io_rresp_data_7; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_7 = tagRead_7 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [7:0] _hitWay_T = {tagMatchVec_7,tagMatchVec_6,tagMatchVec_5,tagMatchVec_4,tagMatchVec_3,tagMatchVec_2,
    tagMatchVec_1,tagMatchVec_0}; // @[Cat.scala 31:58]
  wire [3:0] hitWay_hi_1 = _hitWay_T[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hitWay_lo_1 = _hitWay_T[3:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _hitWay_T_2 = hitWay_hi_1 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay_hi_2 = _hitWay_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hitWay_lo_2 = _hitWay_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_3 = |hitWay_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _hitWay_T_4 = hitWay_hi_2 | hitWay_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] hitWay = {_hitWay_T_1,_hitWay_T_3,_hitWay_T_4[1]}; // @[Cat.scala 31:58]
  wire [2:0] replaceWay = lfsr[2:0]; // @[package.scala 154:13]
  wire  invalid_vec_0 = &(metaArray_io_rresp_data_0_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_1 = &(metaArray_io_rresp_data_1_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_2 = &(metaArray_io_rresp_data_2_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_3 = &(metaArray_io_rresp_data_3_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_4 = &(metaArray_io_rresp_data_4_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_5 = &(metaArray_io_rresp_data_5_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_6 = &(metaArray_io_rresp_data_6_0_state == 2'h0); // @[Directory.scala 174:86]
  wire  invalid_vec_7 = &(metaArray_io_rresp_data_7_0_state == 2'h0); // @[Directory.scala 174:86]
  wire [7:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3,invalid_vec_4,invalid_vec_5,
    invalid_vec_6,invalid_vec_7}; // @[Cat.scala 31:58]
  wire  inv = |_has_invalid_way_T; // @[Directory.scala 175:47]
  wire [2:0] _way_T_1 = invalid_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_3 = invalid_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_5 = invalid_vec_0 | invalid_vec_1 ? _way_T_1 : _way_T_3; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_7 = invalid_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_9 = invalid_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 92:77]
  wire [2:0] _way_T_11 = invalid_vec_4 | invalid_vec_5 ? _way_T_7 : _way_T_9; // @[ParallelMux.scala 92:77]
  wire [2:0] invalidWay = invalid_vec_0 | invalid_vec_1 | (invalid_vec_2 | invalid_vec_3) ? _way_T_5 : _way_T_11; // @[ParallelMux.scala 92:77]
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
  wire [5:0] eccRead_6 = eccArray_io_rresp_data_6; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_13 = 3'h6 == io_resp_bits_way ? eccRead_6 : _GEN_12; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_7 = eccArray_io_rresp_data_7; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_14 = 3'h7 == io_resp_bits_way ? eccRead_7 : _GEN_13; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_16 = 3'h1 == io_resp_bits_way ? tagRead_1 : tagRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_17 = 3'h2 == io_resp_bits_way ? tagRead_2 : _GEN_16; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_18 = 3'h3 == io_resp_bits_way ? tagRead_3 : _GEN_17; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_19 = 3'h4 == io_resp_bits_way ? tagRead_4 : _GEN_18; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_20 = 3'h5 == io_resp_bits_way ? tagRead_5 : _GEN_19; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_21 = 3'h6 == io_resp_bits_way ? tagRead_6 : _GEN_20; // @[BaseDirectory.scala 169:{61,61}]
  wire [18:0] _GEN_22 = 3'h7 == io_resp_bits_way ? tagRead_7 : _GEN_21; // @[BaseDirectory.scala 169:{61,61}]
  wire [24:0] _T_12 = {_GEN_14,_GEN_22}; // @[BaseDirectory.scala 169:61]
  wire [23:0] _syndromeUInt_T_15 = 24'haad5b & _T_12[23:0]; // @[ECC.scala 156:66]
  wire [23:0] _syndromeUInt_T_17 = 24'h13366d & _T_12[23:0]; // @[ECC.scala 156:66]
  wire [23:0] _syndromeUInt_T_19 = 24'h23c78e & _T_12[23:0]; // @[ECC.scala 156:66]
  wire [23:0] _syndromeUInt_T_21 = 24'h4407f0 & _T_12[23:0]; // @[ECC.scala 156:66]
  wire [23:0] _syndromeUInt_T_23 = 24'h87f800 & _T_12[23:0]; // @[ECC.scala 156:66]
  wire [4:0] syndromeUInt_1 = {^_syndromeUInt_T_23,^_syndromeUInt_T_21,^_syndromeUInt_T_19,^_syndromeUInt_T_17,^
    _syndromeUInt_T_15}; // @[ECC.scala 156:78]
  wire  correctable = |syndromeUInt_1; // @[ECC.scala 163:36]
  wire  uncorrectable_1 = ^_T_12; // @[ECC.scala 87:27]
  wire  uncorrectable_2 = ~uncorrectable_1 & correctable; // @[ECC.scala 195:47]
  wire [7:0] _io_resp_bits_hit_T = {tagMatchVec_0,tagMatchVec_1,tagMatchVec_2,tagMatchVec_3,tagMatchVec_4,tagMatchVec_5,
    tagMatchVec_6,tagMatchVec_7}; // @[Cat.scala 31:58]
  wire [1:0] _GEN_23 = metaArray_io_rresp_data_0_0_state; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_24 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_0_state : _GEN_23; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_25 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_0_state : _GEN_24; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_26 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_0_state : _GEN_25; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_27 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_0_state : _GEN_26; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_28 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_0_state : _GEN_27; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_29 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_0_state : _GEN_28; // @[BaseDirectory.scala 173:{20,20}]
  wire  _io_resp_bits_error_T = uncorrectable_1 | uncorrectable_2; // @[ECC.scala 31:27]
  wire  _T_14 = ~resetFinish; // @[BaseDirectory.scala 178:5]
  wire [7:0] _T_18 = 8'h1 << io_dir_wway; // @[OneHot.scala 57:35]
  wire  _GEN_31 = resetIdx == 9'h0 | resetFinish; // @[BaseDirectory.scala 184:26 185:17 102:28]
  wire [8:0] _resetIdx_T_1 = resetIdx - 9'h1; // @[BaseDirectory.scala 188:26]
  SRAMTemplate_265 metaArray ( // @[BaseDirectory.scala 104:25]
    .clock(metaArray_clock),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_0_state(metaArray_io_rresp_data_0_0_state),
    .io_rresp_data_1_0_state(metaArray_io_rresp_data_1_0_state),
    .io_rresp_data_2_0_state(metaArray_io_rresp_data_2_0_state),
    .io_rresp_data_3_0_state(metaArray_io_rresp_data_3_0_state),
    .io_rresp_data_4_0_state(metaArray_io_rresp_data_4_0_state),
    .io_rresp_data_5_0_state(metaArray_io_rresp_data_5_0_state),
    .io_rresp_data_6_0_state(metaArray_io_rresp_data_6_0_state),
    .io_rresp_data_7_0_state(metaArray_io_rresp_data_7_0_state),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_0_state(metaArray_io_wreq_bits_data_0_0_state),
    .io_wreq_bits_data_1_0_state(metaArray_io_wreq_bits_data_1_0_state),
    .io_wreq_bits_data_2_0_state(metaArray_io_wreq_bits_data_2_0_state),
    .io_wreq_bits_data_3_0_state(metaArray_io_wreq_bits_data_3_0_state),
    .io_wreq_bits_data_4_0_state(metaArray_io_wreq_bits_data_4_0_state),
    .io_wreq_bits_data_5_0_state(metaArray_io_wreq_bits_data_5_0_state),
    .io_wreq_bits_data_6_0_state(metaArray_io_wreq_bits_data_6_0_state),
    .io_wreq_bits_data_7_0_state(metaArray_io_wreq_bits_data_7_0_state),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_266 tagArray ( // @[BaseDirectory.scala 120:24]
    .clock(tagArray_clock),
    .io_rreq_valid(tagArray_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArray_io_rresp_data_0),
    .io_rresp_data_1(tagArray_io_rresp_data_1),
    .io_rresp_data_2(tagArray_io_rresp_data_2),
    .io_rresp_data_3(tagArray_io_rresp_data_3),
    .io_rresp_data_4(tagArray_io_rresp_data_4),
    .io_rresp_data_5(tagArray_io_rresp_data_5),
    .io_rresp_data_6(tagArray_io_rresp_data_6),
    .io_rresp_data_7(tagArray_io_rresp_data_7),
    .io_wreq_valid(tagArray_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(tagArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(tagArray_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(tagArray_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(tagArray_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(tagArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_267 eccArray ( // @[BaseDirectory.scala 122:26]
    .clock(eccArray_clock),
    .io_rreq_valid(eccArray_io_rreq_valid),
    .io_rreq_bits_setIdx(eccArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(eccArray_io_rresp_data_0),
    .io_rresp_data_1(eccArray_io_rresp_data_1),
    .io_rresp_data_2(eccArray_io_rresp_data_2),
    .io_rresp_data_3(eccArray_io_rresp_data_3),
    .io_rresp_data_4(eccArray_io_rresp_data_4),
    .io_rresp_data_5(eccArray_io_rresp_data_5),
    .io_rresp_data_6(eccArray_io_rresp_data_6),
    .io_rresp_data_7(eccArray_io_rresp_data_7),
    .io_wreq_valid(eccArray_io_wreq_valid),
    .io_wreq_bits_setIdx(eccArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(eccArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(eccArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(eccArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(eccArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(eccArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(eccArray_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(eccArray_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(eccArray_io_wreq_bits_data_7),
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
  assign io_resp_bits_tag = 3'h7 == io_resp_bits_way ? tagRead_7 : _GEN_21; // @[BaseDirectory.scala 169:{61,61}]
  assign io_resp_bits_dir_0_state = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_0_state : _GEN_29; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_error = io_resp_bits_hit & _io_resp_bits_error_T; // @[BaseDirectory.scala 175:42]
  assign io_tag_wready = 1'h1; // @[BaseDirectory.scala 109:18]
  assign metaArray_clock = clock;
  assign metaArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign metaArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_valid = ~resetFinish | io_dir_wvalid; // @[BaseDirectory.scala 178:18]
  assign metaArray_io_wreq_bits_setIdx = resetFinish ? io_dir_wset : resetIdx; // @[BaseDirectory.scala 180:8]
  assign metaArray_io_wreq_bits_data_0_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_0_state = resetFinish ? io_dir_wdir_0_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_waymask = resetFinish ? _T_18 : 8'hff; // @[BaseDirectory.scala 181:8]
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
  assign tagArray_io_wreq_bits_data_6 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_7 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_waymask = 8'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign eccArray_clock = clock;
  assign eccArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign eccArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign eccArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_bits_data_0 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_1 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_2 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_3 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_4 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_5 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_6 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_7 = _T_4[24:19]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_waymask = 8'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign lfsr_prng_clock = clock;
  assign lfsr_prng_reset = reset;
  assign lfsr_prng_io_increment = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  always @(posedge clock) begin
    if (reset) begin // @[BaseDirectory.scala 102:28]
      resetFinish <= 1'h0; // @[BaseDirectory.scala 102:28]
    end else begin
      resetFinish <= _GEN_31;
    end
    if (reset) begin // @[BaseDirectory.scala 103:25]
      resetIdx <= 9'h1ff; // @[BaseDirectory.scala 103:25]
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
  resetIdx = _RAND_1[8:0];
  _RAND_2 = {1{`RANDOM}};
  reqReg_tag = _RAND_2[18:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
