module Directory_Anon_2(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [15:0] io_read_bits_tag,
  input  [11:0] io_read_bits_set,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  output        io_resp_valid,
  output        io_resp_bits_hit,
  output [1:0]  io_resp_bits_way,
  output [15:0] io_resp_bits_tag,
  output        io_resp_bits_dir_dirty,
  output [1:0]  io_resp_bits_dir_state,
  output [1:0]  io_resp_bits_dir_clientStates_0,
  output        io_resp_bits_error,
  output        io_tag_wready,
  input         io_tag_wvalid,
  input  [15:0] io_tag_wtag,
  input  [11:0] io_tag_wset,
  input  [1:0]  io_tag_wway,
  input         io_dir_wvalid,
  input  [11:0] io_dir_wset,
  input  [1:0]  io_dir_wway,
  input         io_dir_wdir_dirty,
  input  [1:0]  io_dir_wdir_state,
  input  [1:0]  io_dir_wdir_clientStates_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rreq_valid; // @[BaseDirectory.scala 104:25]
  wire [11:0] metaArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_0_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_1_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_2_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_3_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_valid; // @[BaseDirectory.scala 104:25]
  wire [11:0] metaArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_0_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_1_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_2_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_3_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [3:0] metaArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 104:25]
  wire  tagArray_clock; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_rreq_valid; // @[BaseDirectory.scala 120:24]
  wire [11:0] tagArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_rresp_data_0; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_rresp_data_1; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_rresp_data_2; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_rresp_data_3; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_wreq_valid; // @[BaseDirectory.scala 120:24]
  wire [11:0] tagArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 120:24]
  wire [15:0] tagArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 120:24]
  wire [3:0] tagArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 120:24]
  wire  eccArray_clock; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_rreq_valid; // @[BaseDirectory.scala 122:26]
  wire [11:0] eccArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_3; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_wreq_valid; // @[BaseDirectory.scala 122:26]
  wire [11:0] eccArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 122:26]
  wire [3:0] eccArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 122:26]
  wire  repl_state_replacer_sram_clock; // @[BaseDirectory.scala 152:31]
  wire  repl_state_replacer_sram_io_rreq_valid; // @[BaseDirectory.scala 152:31]
  wire [11:0] repl_state_replacer_sram_io_rreq_bits_setIdx; // @[BaseDirectory.scala 152:31]
  wire [2:0] repl_state_replacer_sram_io_rresp_data_0; // @[BaseDirectory.scala 152:31]
  wire  repl_state_replacer_sram_io_wreq_valid; // @[BaseDirectory.scala 152:31]
  wire [11:0] repl_state_replacer_sram_io_wreq_bits_setIdx; // @[BaseDirectory.scala 152:31]
  wire [2:0] repl_state_replacer_sram_io_wreq_bits_data_0; // @[BaseDirectory.scala 152:31]
  reg  resetFinish; // @[BaseDirectory.scala 102:28]
  reg [11:0] resetIdx; // @[BaseDirectory.scala 103:25]
  reg  reqValidReg; // @[BaseDirectory.scala 143:28]
  reg [2:0] reqReg_replacerInfo_channel; // @[Reg.scala 16:16]
  reg [2:0] reqReg_replacerInfo_opcode; // @[Reg.scala 16:16]
  wire  update_release_update = reqReg_replacerInfo_channel[2] & reqReg_replacerInfo_opcode == 3'h7; // @[Directory.scala 104:42]
  wire  update_prefetch_update = reqReg_replacerInfo_channel[0] & reqReg_replacerInfo_opcode == 3'h5; // @[Directory.scala 105:43]
  wire  update = update_release_update | update_prefetch_update; // @[Directory.scala 106:20]
  wire  replacer_wen = reqValidReg & update; // @[BaseDirectory.scala 225:20]
  wire [15:0] _syndromeUInt_T = 16'had5b & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_1 = ^_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [15:0] _syndromeUInt_T_3 = 16'h366d & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_4 = ^_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [15:0] _syndromeUInt_T_6 = 16'hc78e & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_7 = ^_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [15:0] _syndromeUInt_T_9 = 16'h7f0 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_10 = ^_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [15:0] _syndromeUInt_T_12 = 16'hf800 & io_tag_wtag; // @[ECC.scala 147:74]
  wire  _syndromeUInt_T_13 = ^_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [20:0] _T_1 = {_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire  _T_2 = ^_T_1; // @[ECC.scala 81:55]
  wire [21:0] _T_4 = {_T_2,_syndromeUInt_T_13,_syndromeUInt_T_10,_syndromeUInt_T_7,_syndromeUInt_T_4,_syndromeUInt_T_1,
    io_tag_wtag}; // @[Cat.scala 31:58]
  wire  _T_8 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg [15:0] reqReg_tag; // @[Reg.scala 16:16]
  reg [11:0] reqReg_set; // @[Reg.scala 16:16]
  wire  repl_state_next_state_set_left_older = ~io_resp_bits_way[1]; // @[Replacer.scala 198:33]
  wire  repl_state_next_state_left_subtree_state = repl_state_replacer_sram_io_rresp_data_0[1]; // @[package.scala 154:13]
  wire  repl_state_next_state_right_subtree_state = repl_state_replacer_sram_io_rresp_data_0[0]; // @[Replacer.scala 200:38]
  wire  _repl_state_next_state_T_2 = ~io_resp_bits_way[0]; // @[Replacer.scala 220:7]
  wire  _repl_state_next_state_T_3 = repl_state_next_state_set_left_older ? repl_state_next_state_left_subtree_state :
    _repl_state_next_state_T_2; // @[Replacer.scala 205:14]
  wire  _repl_state_next_state_T_7 = repl_state_next_state_set_left_older ? _repl_state_next_state_T_2 :
    repl_state_next_state_right_subtree_state; // @[Replacer.scala 208:14]
  wire [1:0] repl_state_next_state_hi = {repl_state_next_state_set_left_older,_repl_state_next_state_T_3}; // @[Cat.scala 31:58]
  wire [15:0] tagRead_0 = tagArray_io_rresp_data_0; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_0 = tagRead_0 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [15:0] tagRead_1 = tagArray_io_rresp_data_1; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_1 = tagRead_1 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [15:0] tagRead_2 = tagArray_io_rresp_data_2; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_2 = tagRead_2 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [15:0] tagRead_3 = tagArray_io_rresp_data_3; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_3 = tagRead_3 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire  metaValidVec_0 = metaArray_io_rresp_data_0_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_1 = metaArray_io_rresp_data_1_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_2 = metaArray_io_rresp_data_2_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_3 = metaArray_io_rresp_data_3_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_0 = tagMatchVec_0 & metaValidVec_0; // @[BaseDirectory.scala 163:60]
  wire  hitVec_1 = tagMatchVec_1 & metaValidVec_1; // @[BaseDirectory.scala 163:60]
  wire  hitVec_2 = tagMatchVec_2 & metaValidVec_2; // @[BaseDirectory.scala 163:60]
  wire  hitVec_3 = tagMatchVec_3 & metaValidVec_3; // @[BaseDirectory.scala 163:60]
  wire [3:0] _hitWay_T = {hitVec_3,hitVec_2,hitVec_1,hitVec_0}; // @[Cat.scala 31:58]
  wire [1:0] hitWay_hi_1 = _hitWay_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hitWay_lo_1 = _hitWay_T[1:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _hitWay_T_2 = hitWay_hi_1 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay = {_hitWay_T_1,_hitWay_T_2[1]}; // @[Cat.scala 31:58]
  wire  replaceWay_left_subtree_older = repl_state_replacer_sram_io_rresp_data_0[2]; // @[Replacer.scala 245:38]
  wire  _replaceWay_T_2 = replaceWay_left_subtree_older ? repl_state_next_state_left_subtree_state :
    repl_state_next_state_right_subtree_state; // @[Replacer.scala 252:14]
  wire [1:0] replaceWay = {replaceWay_left_subtree_older,_replaceWay_T_2}; // @[Cat.scala 31:58]
  wire  invalid_vec_0 = metaArray_io_rresp_data_0_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_1 = metaArray_io_rresp_data_1_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_2 = metaArray_io_rresp_data_2_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_3 = metaArray_io_rresp_data_3_state == 2'h0; // @[Directory.scala 201:43]
  wire [3:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3}; // @[Cat.scala 31:58]
  wire  has_invalid_way = |_has_invalid_way_T; // @[Directory.scala 202:47]
  wire [1:0] _invalid_way_T_1 = invalid_vec_0 ? 2'h0 : 2'h1; // @[ParallelMux.scala 92:77]
  wire [1:0] _invalid_way_T_3 = invalid_vec_2 ? 2'h2 : 2'h3; // @[ParallelMux.scala 92:77]
  wire [1:0] invalid_way = invalid_vec_0 | invalid_vec_1 ? _invalid_way_T_1 : _invalid_way_T_3; // @[ParallelMux.scala 92:77]
  wire  trunk_vec_0 = metaArray_io_rresp_data_0_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_1 = metaArray_io_rresp_data_1_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_2 = metaArray_io_rresp_data_2_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_3 = metaArray_io_rresp_data_3_state == 2'h2; // @[Directory.scala 206:41]
  wire [3:0] _has_trunk_way_T = {trunk_vec_0,trunk_vec_1,trunk_vec_2,trunk_vec_3}; // @[Cat.scala 31:58]
  wire  has_trunk_way = |_has_trunk_way_T; // @[Directory.scala 207:43]
  wire [1:0] _trunk_way_T_1 = trunk_vec_0 ? 2'h0 : 2'h1; // @[ParallelMux.scala 92:77]
  wire [1:0] _trunk_way_T_3 = trunk_vec_2 ? 2'h2 : 2'h3; // @[ParallelMux.scala 92:77]
  wire [1:0] trunk_way = trunk_vec_0 | trunk_vec_1 ? _trunk_way_T_1 : _trunk_way_T_3; // @[ParallelMux.scala 92:77]
  wire [1:0] _repl_way_is_trunk_WIRE_0_state = metaArray_io_rresp_data_0_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_1_state = metaArray_io_rresp_data_1_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_7 = 2'h1 == replaceWay ? _repl_way_is_trunk_WIRE_1_state : _repl_way_is_trunk_WIRE_0_state; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_2_state = metaArray_io_rresp_data_2_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_8 = 2'h2 == replaceWay ? _repl_way_is_trunk_WIRE_2_state : _GEN_7; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_3_state = metaArray_io_rresp_data_3_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_9 = 2'h3 == replaceWay ? _repl_way_is_trunk_WIRE_3_state : _GEN_8; // @[Directory.scala 209:{58,58}]
  wire  repl_way_is_trunk = _GEN_9 == 2'h2; // @[Directory.scala 209:58]
  wire  inv = has_invalid_way | has_trunk_way; // @[Directory.scala 211:23]
  wire [1:0] _T_12 = repl_way_is_trunk ? replaceWay : trunk_way; // @[Directory.scala 212:44]
  wire [1:0] invalidWay = has_invalid_way ? invalid_way : _T_12; // @[Directory.scala 212:10]
  wire [1:0] chosenWay = inv ? invalidWay : replaceWay; // @[BaseDirectory.scala 167:22]
  wire [5:0] eccRead_0 = eccArray_io_rresp_data_0; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] eccRead_1 = eccArray_io_rresp_data_1; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_11 = 2'h1 == io_resp_bits_way ? eccRead_1 : eccRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_2 = eccArray_io_rresp_data_2; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_12 = 2'h2 == io_resp_bits_way ? eccRead_2 : _GEN_11; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_3 = eccArray_io_rresp_data_3; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_13 = 2'h3 == io_resp_bits_way ? eccRead_3 : _GEN_12; // @[BaseDirectory.scala 169:{61,61}]
  wire [15:0] _GEN_15 = 2'h1 == io_resp_bits_way ? tagRead_1 : tagRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [15:0] _GEN_16 = 2'h2 == io_resp_bits_way ? tagRead_2 : _GEN_15; // @[BaseDirectory.scala 169:{61,61}]
  wire [15:0] _GEN_17 = 2'h3 == io_resp_bits_way ? tagRead_3 : _GEN_16; // @[BaseDirectory.scala 169:{61,61}]
  wire [21:0] _T_13 = {_GEN_13,_GEN_17}; // @[BaseDirectory.scala 169:61]
  wire [20:0] _syndromeUInt_T_15 = 21'h1ad5b & _T_13[20:0]; // @[ECC.scala 156:66]
  wire [20:0] _syndromeUInt_T_17 = 21'h2366d & _T_13[20:0]; // @[ECC.scala 156:66]
  wire [20:0] _syndromeUInt_T_19 = 21'h4c78e & _T_13[20:0]; // @[ECC.scala 156:66]
  wire [20:0] _syndromeUInt_T_21 = 21'h807f0 & _T_13[20:0]; // @[ECC.scala 156:66]
  wire [20:0] _syndromeUInt_T_23 = 21'h10f800 & _T_13[20:0]; // @[ECC.scala 156:66]
  wire [4:0] syndromeUInt_1 = {^_syndromeUInt_T_23,^_syndromeUInt_T_21,^_syndromeUInt_T_19,^_syndromeUInt_T_17,^
    _syndromeUInt_T_15}; // @[ECC.scala 156:78]
  wire  correctable = |syndromeUInt_1; // @[ECC.scala 163:36]
  wire  uncorrectable_1 = ^_T_13; // @[ECC.scala 87:27]
  wire  uncorrectable_2 = ~uncorrectable_1 & correctable; // @[ECC.scala 195:47]
  wire [3:0] _io_resp_bits_hit_T = {hitVec_0,hitVec_1,hitVec_2,hitVec_3}; // @[Cat.scala 31:58]
  wire [1:0] _GEN_18 = metaArray_io_rresp_data_0_clientStates_0; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_19 = 2'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_clientStates_0 : _GEN_18; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_20 = 2'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_clientStates_0 : _GEN_19; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_23 = 2'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_state : _repl_way_is_trunk_WIRE_0_state; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_24 = 2'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_state : _GEN_23; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_27 = 2'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_dirty : metaArray_io_rresp_data_0_dirty; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_28 = 2'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_dirty : _GEN_27; // @[BaseDirectory.scala 173:{20,20}]
  wire  _io_resp_bits_error_T = uncorrectable_1 | uncorrectable_2; // @[ECC.scala 31:27]
  wire  _T_15 = ~resetFinish; // @[BaseDirectory.scala 178:5]
  wire [3:0] _T_19 = 4'h1 << io_dir_wway; // @[OneHot.scala 57:35]
  wire  _GEN_30 = resetIdx == 12'h0 | resetFinish; // @[BaseDirectory.scala 184:26 185:17 102:28]
  wire [11:0] _resetIdx_T_1 = resetIdx - 12'h1; // @[BaseDirectory.scala 188:26]
  SRAMTemplate_268 metaArray ( // @[BaseDirectory.scala 104:25]
    .clock(metaArray_clock),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_dirty(metaArray_io_rresp_data_0_dirty),
    .io_rresp_data_0_state(metaArray_io_rresp_data_0_state),
    .io_rresp_data_0_clientStates_0(metaArray_io_rresp_data_0_clientStates_0),
    .io_rresp_data_1_dirty(metaArray_io_rresp_data_1_dirty),
    .io_rresp_data_1_state(metaArray_io_rresp_data_1_state),
    .io_rresp_data_1_clientStates_0(metaArray_io_rresp_data_1_clientStates_0),
    .io_rresp_data_2_dirty(metaArray_io_rresp_data_2_dirty),
    .io_rresp_data_2_state(metaArray_io_rresp_data_2_state),
    .io_rresp_data_2_clientStates_0(metaArray_io_rresp_data_2_clientStates_0),
    .io_rresp_data_3_dirty(metaArray_io_rresp_data_3_dirty),
    .io_rresp_data_3_state(metaArray_io_rresp_data_3_state),
    .io_rresp_data_3_clientStates_0(metaArray_io_rresp_data_3_clientStates_0),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_dirty(metaArray_io_wreq_bits_data_0_dirty),
    .io_wreq_bits_data_0_state(metaArray_io_wreq_bits_data_0_state),
    .io_wreq_bits_data_0_clientStates_0(metaArray_io_wreq_bits_data_0_clientStates_0),
    .io_wreq_bits_data_1_dirty(metaArray_io_wreq_bits_data_1_dirty),
    .io_wreq_bits_data_1_state(metaArray_io_wreq_bits_data_1_state),
    .io_wreq_bits_data_1_clientStates_0(metaArray_io_wreq_bits_data_1_clientStates_0),
    .io_wreq_bits_data_2_dirty(metaArray_io_wreq_bits_data_2_dirty),
    .io_wreq_bits_data_2_state(metaArray_io_wreq_bits_data_2_state),
    .io_wreq_bits_data_2_clientStates_0(metaArray_io_wreq_bits_data_2_clientStates_0),
    .io_wreq_bits_data_3_dirty(metaArray_io_wreq_bits_data_3_dirty),
    .io_wreq_bits_data_3_state(metaArray_io_wreq_bits_data_3_state),
    .io_wreq_bits_data_3_clientStates_0(metaArray_io_wreq_bits_data_3_clientStates_0),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_269 tagArray ( // @[BaseDirectory.scala 120:24]
    .clock(tagArray_clock),
    .io_rreq_valid(tagArray_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArray_io_rresp_data_0),
    .io_rresp_data_1(tagArray_io_rresp_data_1),
    .io_rresp_data_2(tagArray_io_rresp_data_2),
    .io_rresp_data_3(tagArray_io_rresp_data_3),
    .io_wreq_valid(tagArray_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArray_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tagArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_270 eccArray ( // @[BaseDirectory.scala 122:26]
    .clock(eccArray_clock),
    .io_rreq_valid(eccArray_io_rreq_valid),
    .io_rreq_bits_setIdx(eccArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(eccArray_io_rresp_data_0),
    .io_rresp_data_1(eccArray_io_rresp_data_1),
    .io_rresp_data_2(eccArray_io_rresp_data_2),
    .io_rresp_data_3(eccArray_io_rresp_data_3),
    .io_wreq_valid(eccArray_io_wreq_valid),
    .io_wreq_bits_setIdx(eccArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(eccArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(eccArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(eccArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(eccArray_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(eccArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_271 repl_state_replacer_sram ( // @[BaseDirectory.scala 152:31]
    .clock(repl_state_replacer_sram_clock),
    .io_rreq_valid(repl_state_replacer_sram_io_rreq_valid),
    .io_rreq_bits_setIdx(repl_state_replacer_sram_io_rreq_bits_setIdx),
    .io_rresp_data_0(repl_state_replacer_sram_io_rresp_data_0),
    .io_wreq_valid(repl_state_replacer_sram_io_wreq_valid),
    .io_wreq_bits_setIdx(repl_state_replacer_sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(repl_state_replacer_sram_io_wreq_bits_data_0)
  );
  assign io_read_ready = ~io_tag_wvalid & ~io_dir_wvalid & ~replacer_wen & resetFinish; // @[BaseDirectory.scala 111:58]
  assign io_resp_valid = reqValidReg; // @[BaseDirectory.scala 159:17]
  assign io_resp_bits_hit = |_io_resp_bits_hit_T; // @[BaseDirectory.scala 171:38]
  assign io_resp_bits_way = io_resp_bits_hit ? hitWay : chosenWay; // @[BaseDirectory.scala 172:58]
  assign io_resp_bits_tag = 2'h3 == io_resp_bits_way ? tagRead_3 : _GEN_16; // @[BaseDirectory.scala 169:{61,61}]
  assign io_resp_bits_dir_dirty = 2'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_dirty : _GEN_28; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_state = 2'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_state : _GEN_24; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_clientStates_0 = 2'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_clientStates_0 :
    _GEN_20; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_error = io_resp_bits_hit & _io_resp_bits_error_T; // @[BaseDirectory.scala 175:42]
  assign io_tag_wready = 1'h1; // @[BaseDirectory.scala 109:18]
  assign metaArray_clock = clock;
  assign metaArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign metaArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_valid = ~resetFinish | io_dir_wvalid; // @[BaseDirectory.scala 178:18]
  assign metaArray_io_wreq_bits_setIdx = resetFinish ? io_dir_wset : resetIdx; // @[BaseDirectory.scala 180:8]
  assign metaArray_io_wreq_bits_data_0_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_waymask = resetFinish ? _T_19 : 4'hf; // @[BaseDirectory.scala 181:8]
  assign tagArray_clock = clock;
  assign tagArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tagArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign tagArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_bits_data_0 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_1 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_2 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_3 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_waymask = 4'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign eccArray_clock = clock;
  assign eccArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign eccArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign eccArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign eccArray_io_wreq_bits_data_0 = _T_4[21:16]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_1 = _T_4[21:16]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_2 = _T_4[21:16]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_3 = _T_4[21:16]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_waymask = 4'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign repl_state_replacer_sram_clock = clock;
  assign repl_state_replacer_sram_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign repl_state_replacer_sram_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_valid = reqValidReg & update; // @[BaseDirectory.scala 225:20]
  assign repl_state_replacer_sram_io_wreq_bits_setIdx = reqReg_set; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_bits_data_0 = {repl_state_next_state_hi,_repl_state_next_state_T_7}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (reset) begin // @[BaseDirectory.scala 102:28]
      resetFinish <= 1'h0; // @[BaseDirectory.scala 102:28]
    end else begin
      resetFinish <= _GEN_30;
    end
    if (reset) begin // @[BaseDirectory.scala 103:25]
      resetIdx <= 12'hfff; // @[BaseDirectory.scala 103:25]
    end else if (_T_15) begin // @[BaseDirectory.scala 187:22]
      resetIdx <= _resetIdx_T_1; // @[BaseDirectory.scala 188:14]
    end
    if (reset) begin // @[BaseDirectory.scala 143:28]
      reqValidReg <= 1'h0; // @[BaseDirectory.scala 143:28]
    end else begin
      reqValidReg <= _T_8; // @[BaseDirectory.scala 143:28]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      reqReg_replacerInfo_channel <= io_read_bits_replacerInfo_channel; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      reqReg_replacerInfo_opcode <= io_read_bits_replacerInfo_opcode; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      reqReg_tag <= io_read_bits_tag; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      reqReg_set <= io_read_bits_set; // @[Reg.scala 17:22]
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
  resetIdx = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  reqValidReg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reqReg_replacerInfo_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reqReg_replacerInfo_opcode = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reqReg_tag = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  reqReg_set = _RAND_6[11:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
