module Directory_Anon(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [20:0] io_read_bits_tag,
  input  [7:0]  io_read_bits_set,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  output        io_resp_valid,
  output        io_resp_bits_hit,
  output [2:0]  io_resp_bits_way,
  output [20:0] io_resp_bits_tag,
  output        io_resp_bits_dir_dirty,
  output [1:0]  io_resp_bits_dir_state,
  output [1:0]  io_resp_bits_dir_clientStates_0,
  output [1:0]  io_resp_bits_dir_clientStates_1,
  output        io_resp_bits_dir_prefetch,
  output        io_resp_bits_error,
  output        io_tag_wready,
  input         io_tag_wvalid,
  input  [20:0] io_tag_wtag,
  input  [7:0]  io_tag_wset,
  input  [2:0]  io_tag_wway,
  input         io_dir_wvalid,
  input  [7:0]  io_dir_wset,
  input  [2:0]  io_dir_wway,
  input         io_dir_wdir_dirty,
  input  [1:0]  io_dir_wdir_state,
  input  [1:0]  io_dir_wdir_clientStates_0,
  input  [1:0]  io_dir_wdir_clientStates_1,
  input         io_dir_wdir_prefetch
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
  wire [7:0] metaArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_0_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_0_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_0_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_1_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_1_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_1_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_2_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_2_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_2_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_3_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_3_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_3_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_4_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_4_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_4_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_5_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_5_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_5_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_6_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_6_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_6_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_6_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_6_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_7_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_7_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_7_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_rresp_data_7_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_rresp_data_7_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_valid; // @[BaseDirectory.scala 104:25]
  wire [7:0] metaArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_0_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_0_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_1_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_1_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_2_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_2_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_3_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_3_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_4_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_4_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_5_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_5_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_6_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_6_prefetch; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_7_dirty; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_state; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_clientStates_0; // @[BaseDirectory.scala 104:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_clientStates_1; // @[BaseDirectory.scala 104:25]
  wire  metaArray_io_wreq_bits_data_7_prefetch; // @[BaseDirectory.scala 104:25]
  wire [7:0] metaArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 104:25]
  wire  tagArray_clock; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_rreq_valid; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_0; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_1; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_2; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_3; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_4; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_5; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_6; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_rresp_data_7; // @[BaseDirectory.scala 120:24]
  wire  tagArray_io_wreq_valid; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_6; // @[BaseDirectory.scala 120:24]
  wire [20:0] tagArray_io_wreq_bits_data_7; // @[BaseDirectory.scala 120:24]
  wire [7:0] tagArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 120:24]
  wire  eccArray_clock; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_rreq_valid; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_5; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_6; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_rresp_data_7; // @[BaseDirectory.scala 122:26]
  wire  eccArray_io_wreq_valid; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_6; // @[BaseDirectory.scala 122:26]
  wire [5:0] eccArray_io_wreq_bits_data_7; // @[BaseDirectory.scala 122:26]
  wire [7:0] eccArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 122:26]
  wire  repl_state_replacer_sram_clock; // @[BaseDirectory.scala 152:31]
  wire  repl_state_replacer_sram_io_rreq_valid; // @[BaseDirectory.scala 152:31]
  wire [7:0] repl_state_replacer_sram_io_rreq_bits_setIdx; // @[BaseDirectory.scala 152:31]
  wire [6:0] repl_state_replacer_sram_io_rresp_data_0; // @[BaseDirectory.scala 152:31]
  wire  repl_state_replacer_sram_io_wreq_valid; // @[BaseDirectory.scala 152:31]
  wire [7:0] repl_state_replacer_sram_io_wreq_bits_setIdx; // @[BaseDirectory.scala 152:31]
  wire [6:0] repl_state_replacer_sram_io_wreq_bits_data_0; // @[BaseDirectory.scala 152:31]
  reg  resetFinish; // @[BaseDirectory.scala 102:28]
  reg [7:0] resetIdx; // @[BaseDirectory.scala 103:25]
  reg  reqValidReg; // @[BaseDirectory.scala 143:28]
  reg [2:0] reqReg_replacerInfo_channel; // @[Reg.scala 16:16]
  reg [2:0] reqReg_replacerInfo_opcode; // @[Reg.scala 16:16]
  wire  update_release_update = reqReg_replacerInfo_channel[2] & reqReg_replacerInfo_opcode == 3'h7; // @[Directory.scala 104:42]
  wire  update_prefetch_update = reqReg_replacerInfo_channel[0] & reqReg_replacerInfo_opcode == 3'h5; // @[Directory.scala 105:43]
  wire  update = update_release_update | update_prefetch_update; // @[Directory.scala 106:20]
  wire  replacer_wen = reqValidReg & update; // @[BaseDirectory.scala 225:20]
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
  wire  _T_8 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg [20:0] reqReg_tag; // @[Reg.scala 16:16]
  reg [7:0] reqReg_set; // @[Reg.scala 16:16]
  wire  repl_state_next_state_set_left_older = ~io_resp_bits_way[2]; // @[Replacer.scala 198:33]
  wire [2:0] repl_state_next_state_left_subtree_state = repl_state_replacer_sram_io_rresp_data_0[5:3]; // @[package.scala 154:13]
  wire [2:0] repl_state_next_state_right_subtree_state = repl_state_replacer_sram_io_rresp_data_0[2:0]; // @[Replacer.scala 200:38]
  wire  repl_state_next_state_set_left_older_1 = ~io_resp_bits_way[1]; // @[Replacer.scala 198:33]
  wire  repl_state_next_state_left_subtree_state_1 = repl_state_next_state_left_subtree_state[1]; // @[package.scala 154:13]
  wire  repl_state_next_state_right_subtree_state_1 = repl_state_next_state_left_subtree_state[0]; // @[Replacer.scala 200:38]
  wire  _repl_state_next_state_T_3 = ~io_resp_bits_way[0]; // @[Replacer.scala 220:7]
  wire  _repl_state_next_state_T_4 = repl_state_next_state_set_left_older_1 ? repl_state_next_state_left_subtree_state_1
     : _repl_state_next_state_T_3; // @[Replacer.scala 205:14]
  wire  _repl_state_next_state_T_8 = repl_state_next_state_set_left_older_1 ? _repl_state_next_state_T_3 :
    repl_state_next_state_right_subtree_state_1; // @[Replacer.scala 208:14]
  wire [2:0] _repl_state_next_state_T_9 = {repl_state_next_state_set_left_older_1,_repl_state_next_state_T_4,
    _repl_state_next_state_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _repl_state_next_state_T_10 = repl_state_next_state_set_left_older ?
    repl_state_next_state_left_subtree_state : _repl_state_next_state_T_9; // @[Replacer.scala 205:14]
  wire  repl_state_next_state_left_subtree_state_2 = repl_state_next_state_right_subtree_state[1]; // @[package.scala 154:13]
  wire  repl_state_next_state_right_subtree_state_2 = repl_state_next_state_right_subtree_state[0]; // @[Replacer.scala 200:38]
  wire  _repl_state_next_state_T_15 = repl_state_next_state_set_left_older_1 ?
    repl_state_next_state_left_subtree_state_2 : _repl_state_next_state_T_3; // @[Replacer.scala 205:14]
  wire  _repl_state_next_state_T_19 = repl_state_next_state_set_left_older_1 ? _repl_state_next_state_T_3 :
    repl_state_next_state_right_subtree_state_2; // @[Replacer.scala 208:14]
  wire [2:0] _repl_state_next_state_T_20 = {repl_state_next_state_set_left_older_1,_repl_state_next_state_T_15,
    _repl_state_next_state_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _repl_state_next_state_T_21 = repl_state_next_state_set_left_older ? _repl_state_next_state_T_20 :
    repl_state_next_state_right_subtree_state; // @[Replacer.scala 208:14]
  wire [3:0] repl_state_next_state_hi_2 = {repl_state_next_state_set_left_older,_repl_state_next_state_T_10}; // @[Cat.scala 31:58]
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
  wire [20:0] tagRead_6 = tagArray_io_rresp_data_6; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_6 = tagRead_6 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire [20:0] tagRead_7 = tagArray_io_rresp_data_7; // @[BaseDirectory.scala 118:21 140:11]
  wire  tagMatchVec_7 = tagRead_7 == reqReg_tag; // @[BaseDirectory.scala 161:51]
  wire  metaValidVec_0 = metaArray_io_rresp_data_0_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_1 = metaArray_io_rresp_data_1_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_2 = metaArray_io_rresp_data_2_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_3 = metaArray_io_rresp_data_3_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_4 = metaArray_io_rresp_data_4_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_5 = metaArray_io_rresp_data_5_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_6 = metaArray_io_rresp_data_6_state != 2'h0; // @[Directory.scala 198:54]
  wire  metaValidVec_7 = metaArray_io_rresp_data_7_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_0 = tagMatchVec_0 & metaValidVec_0; // @[BaseDirectory.scala 163:60]
  wire  hitVec_1 = tagMatchVec_1 & metaValidVec_1; // @[BaseDirectory.scala 163:60]
  wire  hitVec_2 = tagMatchVec_2 & metaValidVec_2; // @[BaseDirectory.scala 163:60]
  wire  hitVec_3 = tagMatchVec_3 & metaValidVec_3; // @[BaseDirectory.scala 163:60]
  wire  hitVec_4 = tagMatchVec_4 & metaValidVec_4; // @[BaseDirectory.scala 163:60]
  wire  hitVec_5 = tagMatchVec_5 & metaValidVec_5; // @[BaseDirectory.scala 163:60]
  wire  hitVec_6 = tagMatchVec_6 & metaValidVec_6; // @[BaseDirectory.scala 163:60]
  wire  hitVec_7 = tagMatchVec_7 & metaValidVec_7; // @[BaseDirectory.scala 163:60]
  wire [7:0] _hitWay_T = {hitVec_7,hitVec_6,hitVec_5,hitVec_4,hitVec_3,hitVec_2,hitVec_1,hitVec_0}; // @[Cat.scala 31:58]
  wire [3:0] hitWay_hi_1 = _hitWay_T[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hitWay_lo_1 = _hitWay_T[3:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _hitWay_T_2 = hitWay_hi_1 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay_hi_2 = _hitWay_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hitWay_lo_2 = _hitWay_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_3 = |hitWay_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _hitWay_T_4 = hitWay_hi_2 | hitWay_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] hitWay = {_hitWay_T_1,_hitWay_T_3,_hitWay_T_4[1]}; // @[Cat.scala 31:58]
  wire  replaceWay_left_subtree_older = repl_state_replacer_sram_io_rresp_data_0[6]; // @[Replacer.scala 245:38]
  wire  replaceWay_left_subtree_older_1 = repl_state_next_state_left_subtree_state[2]; // @[Replacer.scala 245:38]
  wire  _replaceWay_T_2 = replaceWay_left_subtree_older_1 ? repl_state_next_state_left_subtree_state_1 :
    repl_state_next_state_right_subtree_state_1; // @[Replacer.scala 252:14]
  wire [1:0] _replaceWay_T_3 = {replaceWay_left_subtree_older_1,_replaceWay_T_2}; // @[Cat.scala 31:58]
  wire  replaceWay_left_subtree_older_2 = repl_state_next_state_right_subtree_state[2]; // @[Replacer.scala 245:38]
  wire  _replaceWay_T_6 = replaceWay_left_subtree_older_2 ? repl_state_next_state_left_subtree_state_2 :
    repl_state_next_state_right_subtree_state_2; // @[Replacer.scala 252:14]
  wire [1:0] _replaceWay_T_7 = {replaceWay_left_subtree_older_2,_replaceWay_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _replaceWay_T_8 = replaceWay_left_subtree_older ? _replaceWay_T_3 : _replaceWay_T_7; // @[Replacer.scala 252:14]
  wire [2:0] replaceWay = {replaceWay_left_subtree_older,_replaceWay_T_8}; // @[Cat.scala 31:58]
  wire  invalid_vec_0 = metaArray_io_rresp_data_0_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_1 = metaArray_io_rresp_data_1_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_2 = metaArray_io_rresp_data_2_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_3 = metaArray_io_rresp_data_3_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_4 = metaArray_io_rresp_data_4_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_5 = metaArray_io_rresp_data_5_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_6 = metaArray_io_rresp_data_6_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_7 = metaArray_io_rresp_data_7_state == 2'h0; // @[Directory.scala 201:43]
  wire [7:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3,invalid_vec_4,invalid_vec_5,
    invalid_vec_6,invalid_vec_7}; // @[Cat.scala 31:58]
  wire  has_invalid_way = |_has_invalid_way_T; // @[Directory.scala 202:47]
  wire [2:0] _invalid_way_T_1 = invalid_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 92:77]
  wire [2:0] _invalid_way_T_3 = invalid_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 92:77]
  wire [2:0] _invalid_way_T_5 = invalid_vec_0 | invalid_vec_1 ? _invalid_way_T_1 : _invalid_way_T_3; // @[ParallelMux.scala 92:77]
  wire [2:0] _invalid_way_T_7 = invalid_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 92:77]
  wire [2:0] _invalid_way_T_9 = invalid_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 92:77]
  wire [2:0] _invalid_way_T_11 = invalid_vec_4 | invalid_vec_5 ? _invalid_way_T_7 : _invalid_way_T_9; // @[ParallelMux.scala 92:77]
  wire [2:0] invalid_way = invalid_vec_0 | invalid_vec_1 | (invalid_vec_2 | invalid_vec_3) ? _invalid_way_T_5 :
    _invalid_way_T_11; // @[ParallelMux.scala 92:77]
  wire  trunk_vec_0 = metaArray_io_rresp_data_0_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_1 = metaArray_io_rresp_data_1_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_2 = metaArray_io_rresp_data_2_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_3 = metaArray_io_rresp_data_3_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_4 = metaArray_io_rresp_data_4_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_5 = metaArray_io_rresp_data_5_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_6 = metaArray_io_rresp_data_6_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_7 = metaArray_io_rresp_data_7_state == 2'h2; // @[Directory.scala 206:41]
  wire [7:0] _has_trunk_way_T = {trunk_vec_0,trunk_vec_1,trunk_vec_2,trunk_vec_3,trunk_vec_4,trunk_vec_5,trunk_vec_6,
    trunk_vec_7}; // @[Cat.scala 31:58]
  wire  has_trunk_way = |_has_trunk_way_T; // @[Directory.scala 207:43]
  wire [2:0] _trunk_way_T_1 = trunk_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 92:77]
  wire [2:0] _trunk_way_T_3 = trunk_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 92:77]
  wire [2:0] _trunk_way_T_5 = trunk_vec_0 | trunk_vec_1 ? _trunk_way_T_1 : _trunk_way_T_3; // @[ParallelMux.scala 92:77]
  wire [2:0] _trunk_way_T_7 = trunk_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 92:77]
  wire [2:0] _trunk_way_T_9 = trunk_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 92:77]
  wire [2:0] _trunk_way_T_11 = trunk_vec_4 | trunk_vec_5 ? _trunk_way_T_7 : _trunk_way_T_9; // @[ParallelMux.scala 92:77]
  wire [2:0] trunk_way = trunk_vec_0 | trunk_vec_1 | (trunk_vec_2 | trunk_vec_3) ? _trunk_way_T_5 : _trunk_way_T_11; // @[ParallelMux.scala 92:77]
  wire [1:0] _repl_way_is_trunk_WIRE_0_state = metaArray_io_rresp_data_0_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_1_state = metaArray_io_rresp_data_1_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_7 = 3'h1 == replaceWay ? _repl_way_is_trunk_WIRE_1_state : _repl_way_is_trunk_WIRE_0_state; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_2_state = metaArray_io_rresp_data_2_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_8 = 3'h2 == replaceWay ? _repl_way_is_trunk_WIRE_2_state : _GEN_7; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_3_state = metaArray_io_rresp_data_3_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_9 = 3'h3 == replaceWay ? _repl_way_is_trunk_WIRE_3_state : _GEN_8; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_4_state = metaArray_io_rresp_data_4_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_10 = 3'h4 == replaceWay ? _repl_way_is_trunk_WIRE_4_state : _GEN_9; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_5_state = metaArray_io_rresp_data_5_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_11 = 3'h5 == replaceWay ? _repl_way_is_trunk_WIRE_5_state : _GEN_10; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_6_state = metaArray_io_rresp_data_6_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_12 = 3'h6 == replaceWay ? _repl_way_is_trunk_WIRE_6_state : _GEN_11; // @[Directory.scala 209:{58,58}]
  wire [1:0] _repl_way_is_trunk_WIRE_7_state = metaArray_io_rresp_data_7_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_13 = 3'h7 == replaceWay ? _repl_way_is_trunk_WIRE_7_state : _GEN_12; // @[Directory.scala 209:{58,58}]
  wire  repl_way_is_trunk = _GEN_13 == 2'h2; // @[Directory.scala 209:58]
  wire  inv = has_invalid_way | has_trunk_way; // @[Directory.scala 211:23]
  wire [2:0] _T_12 = repl_way_is_trunk ? replaceWay : trunk_way; // @[Directory.scala 212:44]
  wire [2:0] invalidWay = has_invalid_way ? invalid_way : _T_12; // @[Directory.scala 212:10]
  wire [2:0] chosenWay = inv ? invalidWay : replaceWay; // @[BaseDirectory.scala 167:22]
  wire [5:0] eccRead_0 = eccArray_io_rresp_data_0; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] eccRead_1 = eccArray_io_rresp_data_1; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_15 = 3'h1 == io_resp_bits_way ? eccRead_1 : eccRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_2 = eccArray_io_rresp_data_2; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_16 = 3'h2 == io_resp_bits_way ? eccRead_2 : _GEN_15; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_3 = eccArray_io_rresp_data_3; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_17 = 3'h3 == io_resp_bits_way ? eccRead_3 : _GEN_16; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_4 = eccArray_io_rresp_data_4; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_18 = 3'h4 == io_resp_bits_way ? eccRead_4 : _GEN_17; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_5 = eccArray_io_rresp_data_5; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_19 = 3'h5 == io_resp_bits_way ? eccRead_5 : _GEN_18; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_6 = eccArray_io_rresp_data_6; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_20 = 3'h6 == io_resp_bits_way ? eccRead_6 : _GEN_19; // @[BaseDirectory.scala 169:{61,61}]
  wire [5:0] eccRead_7 = eccArray_io_rresp_data_7; // @[BaseDirectory.scala 119:21 129:13]
  wire [5:0] _GEN_21 = 3'h7 == io_resp_bits_way ? eccRead_7 : _GEN_20; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_23 = 3'h1 == io_resp_bits_way ? tagRead_1 : tagRead_0; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_24 = 3'h2 == io_resp_bits_way ? tagRead_2 : _GEN_23; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_25 = 3'h3 == io_resp_bits_way ? tagRead_3 : _GEN_24; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_26 = 3'h4 == io_resp_bits_way ? tagRead_4 : _GEN_25; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_27 = 3'h5 == io_resp_bits_way ? tagRead_5 : _GEN_26; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_28 = 3'h6 == io_resp_bits_way ? tagRead_6 : _GEN_27; // @[BaseDirectory.scala 169:{61,61}]
  wire [20:0] _GEN_29 = 3'h7 == io_resp_bits_way ? tagRead_7 : _GEN_28; // @[BaseDirectory.scala 169:{61,61}]
  wire [26:0] _T_13 = {_GEN_21,_GEN_29}; // @[BaseDirectory.scala 169:61]
  wire [25:0] _syndromeUInt_T_15 = 26'h2aad5b & _T_13[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_17 = 26'h53366d & _T_13[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_19 = 26'h83c78e & _T_13[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_21 = 26'h11c07f0 & _T_13[25:0]; // @[ECC.scala 156:66]
  wire [25:0] _syndromeUInt_T_23 = 26'h21ff800 & _T_13[25:0]; // @[ECC.scala 156:66]
  wire [4:0] syndromeUInt_1 = {^_syndromeUInt_T_23,^_syndromeUInt_T_21,^_syndromeUInt_T_19,^_syndromeUInt_T_17,^
    _syndromeUInt_T_15}; // @[ECC.scala 156:78]
  wire  correctable = |syndromeUInt_1; // @[ECC.scala 163:36]
  wire  uncorrectable_1 = ^_T_13; // @[ECC.scala 87:27]
  wire  uncorrectable_2 = ~uncorrectable_1 & correctable; // @[ECC.scala 195:47]
  wire [7:0] _io_resp_bits_hit_T = {hitVec_0,hitVec_1,hitVec_2,hitVec_3,hitVec_4,hitVec_5,hitVec_6,hitVec_7}; // @[Cat.scala 31:58]
  wire  _GEN_31 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_prefetch : metaArray_io_rresp_data_0_prefetch; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_32 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_prefetch : _GEN_31; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_33 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_prefetch : _GEN_32; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_34 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_prefetch : _GEN_33; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_35 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_prefetch : _GEN_34; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_36 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_prefetch : _GEN_35; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_38 = metaArray_io_rresp_data_0_clientStates_0; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_39 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_clientStates_0 : _GEN_38; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_40 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_clientStates_0 : _GEN_39; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_41 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_clientStates_0 : _GEN_40; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_42 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_clientStates_0 : _GEN_41; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_43 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_clientStates_0 : _GEN_42; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_44 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_clientStates_0 : _GEN_43; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_46 = metaArray_io_rresp_data_0_clientStates_1; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_47 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_clientStates_1 : _GEN_46; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_48 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_clientStates_1 : _GEN_47; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_49 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_clientStates_1 : _GEN_48; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_50 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_clientStates_1 : _GEN_49; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_51 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_clientStates_1 : _GEN_50; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_52 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_clientStates_1 : _GEN_51; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_55 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_state : _repl_way_is_trunk_WIRE_0_state; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_56 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_state : _GEN_55; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_57 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_state : _GEN_56; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_58 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_state : _GEN_57; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_59 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_state : _GEN_58; // @[BaseDirectory.scala 173:{20,20}]
  wire [1:0] _GEN_60 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_state : _GEN_59; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_63 = 3'h1 == io_resp_bits_way ? metaArray_io_rresp_data_1_dirty : metaArray_io_rresp_data_0_dirty; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_64 = 3'h2 == io_resp_bits_way ? metaArray_io_rresp_data_2_dirty : _GEN_63; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_65 = 3'h3 == io_resp_bits_way ? metaArray_io_rresp_data_3_dirty : _GEN_64; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_66 = 3'h4 == io_resp_bits_way ? metaArray_io_rresp_data_4_dirty : _GEN_65; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_67 = 3'h5 == io_resp_bits_way ? metaArray_io_rresp_data_5_dirty : _GEN_66; // @[BaseDirectory.scala 173:{20,20}]
  wire  _GEN_68 = 3'h6 == io_resp_bits_way ? metaArray_io_rresp_data_6_dirty : _GEN_67; // @[BaseDirectory.scala 173:{20,20}]
  wire  _io_resp_bits_error_T = uncorrectable_1 | uncorrectable_2; // @[ECC.scala 31:27]
  wire  _T_15 = ~resetFinish; // @[BaseDirectory.scala 178:5]
  wire [7:0] _T_19 = 8'h1 << io_dir_wway; // @[OneHot.scala 57:35]
  wire  _GEN_70 = resetIdx == 8'h0 | resetFinish; // @[BaseDirectory.scala 184:26 185:17 102:28]
  wire [7:0] _resetIdx_T_1 = resetIdx - 8'h1; // @[BaseDirectory.scala 188:26]
  SRAMTemplate_194 metaArray ( // @[BaseDirectory.scala 104:25]
    .clock(metaArray_clock),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_dirty(metaArray_io_rresp_data_0_dirty),
    .io_rresp_data_0_state(metaArray_io_rresp_data_0_state),
    .io_rresp_data_0_clientStates_0(metaArray_io_rresp_data_0_clientStates_0),
    .io_rresp_data_0_clientStates_1(metaArray_io_rresp_data_0_clientStates_1),
    .io_rresp_data_0_prefetch(metaArray_io_rresp_data_0_prefetch),
    .io_rresp_data_1_dirty(metaArray_io_rresp_data_1_dirty),
    .io_rresp_data_1_state(metaArray_io_rresp_data_1_state),
    .io_rresp_data_1_clientStates_0(metaArray_io_rresp_data_1_clientStates_0),
    .io_rresp_data_1_clientStates_1(metaArray_io_rresp_data_1_clientStates_1),
    .io_rresp_data_1_prefetch(metaArray_io_rresp_data_1_prefetch),
    .io_rresp_data_2_dirty(metaArray_io_rresp_data_2_dirty),
    .io_rresp_data_2_state(metaArray_io_rresp_data_2_state),
    .io_rresp_data_2_clientStates_0(metaArray_io_rresp_data_2_clientStates_0),
    .io_rresp_data_2_clientStates_1(metaArray_io_rresp_data_2_clientStates_1),
    .io_rresp_data_2_prefetch(metaArray_io_rresp_data_2_prefetch),
    .io_rresp_data_3_dirty(metaArray_io_rresp_data_3_dirty),
    .io_rresp_data_3_state(metaArray_io_rresp_data_3_state),
    .io_rresp_data_3_clientStates_0(metaArray_io_rresp_data_3_clientStates_0),
    .io_rresp_data_3_clientStates_1(metaArray_io_rresp_data_3_clientStates_1),
    .io_rresp_data_3_prefetch(metaArray_io_rresp_data_3_prefetch),
    .io_rresp_data_4_dirty(metaArray_io_rresp_data_4_dirty),
    .io_rresp_data_4_state(metaArray_io_rresp_data_4_state),
    .io_rresp_data_4_clientStates_0(metaArray_io_rresp_data_4_clientStates_0),
    .io_rresp_data_4_clientStates_1(metaArray_io_rresp_data_4_clientStates_1),
    .io_rresp_data_4_prefetch(metaArray_io_rresp_data_4_prefetch),
    .io_rresp_data_5_dirty(metaArray_io_rresp_data_5_dirty),
    .io_rresp_data_5_state(metaArray_io_rresp_data_5_state),
    .io_rresp_data_5_clientStates_0(metaArray_io_rresp_data_5_clientStates_0),
    .io_rresp_data_5_clientStates_1(metaArray_io_rresp_data_5_clientStates_1),
    .io_rresp_data_5_prefetch(metaArray_io_rresp_data_5_prefetch),
    .io_rresp_data_6_dirty(metaArray_io_rresp_data_6_dirty),
    .io_rresp_data_6_state(metaArray_io_rresp_data_6_state),
    .io_rresp_data_6_clientStates_0(metaArray_io_rresp_data_6_clientStates_0),
    .io_rresp_data_6_clientStates_1(metaArray_io_rresp_data_6_clientStates_1),
    .io_rresp_data_6_prefetch(metaArray_io_rresp_data_6_prefetch),
    .io_rresp_data_7_dirty(metaArray_io_rresp_data_7_dirty),
    .io_rresp_data_7_state(metaArray_io_rresp_data_7_state),
    .io_rresp_data_7_clientStates_0(metaArray_io_rresp_data_7_clientStates_0),
    .io_rresp_data_7_clientStates_1(metaArray_io_rresp_data_7_clientStates_1),
    .io_rresp_data_7_prefetch(metaArray_io_rresp_data_7_prefetch),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_dirty(metaArray_io_wreq_bits_data_0_dirty),
    .io_wreq_bits_data_0_state(metaArray_io_wreq_bits_data_0_state),
    .io_wreq_bits_data_0_clientStates_0(metaArray_io_wreq_bits_data_0_clientStates_0),
    .io_wreq_bits_data_0_clientStates_1(metaArray_io_wreq_bits_data_0_clientStates_1),
    .io_wreq_bits_data_0_prefetch(metaArray_io_wreq_bits_data_0_prefetch),
    .io_wreq_bits_data_1_dirty(metaArray_io_wreq_bits_data_1_dirty),
    .io_wreq_bits_data_1_state(metaArray_io_wreq_bits_data_1_state),
    .io_wreq_bits_data_1_clientStates_0(metaArray_io_wreq_bits_data_1_clientStates_0),
    .io_wreq_bits_data_1_clientStates_1(metaArray_io_wreq_bits_data_1_clientStates_1),
    .io_wreq_bits_data_1_prefetch(metaArray_io_wreq_bits_data_1_prefetch),
    .io_wreq_bits_data_2_dirty(metaArray_io_wreq_bits_data_2_dirty),
    .io_wreq_bits_data_2_state(metaArray_io_wreq_bits_data_2_state),
    .io_wreq_bits_data_2_clientStates_0(metaArray_io_wreq_bits_data_2_clientStates_0),
    .io_wreq_bits_data_2_clientStates_1(metaArray_io_wreq_bits_data_2_clientStates_1),
    .io_wreq_bits_data_2_prefetch(metaArray_io_wreq_bits_data_2_prefetch),
    .io_wreq_bits_data_3_dirty(metaArray_io_wreq_bits_data_3_dirty),
    .io_wreq_bits_data_3_state(metaArray_io_wreq_bits_data_3_state),
    .io_wreq_bits_data_3_clientStates_0(metaArray_io_wreq_bits_data_3_clientStates_0),
    .io_wreq_bits_data_3_clientStates_1(metaArray_io_wreq_bits_data_3_clientStates_1),
    .io_wreq_bits_data_3_prefetch(metaArray_io_wreq_bits_data_3_prefetch),
    .io_wreq_bits_data_4_dirty(metaArray_io_wreq_bits_data_4_dirty),
    .io_wreq_bits_data_4_state(metaArray_io_wreq_bits_data_4_state),
    .io_wreq_bits_data_4_clientStates_0(metaArray_io_wreq_bits_data_4_clientStates_0),
    .io_wreq_bits_data_4_clientStates_1(metaArray_io_wreq_bits_data_4_clientStates_1),
    .io_wreq_bits_data_4_prefetch(metaArray_io_wreq_bits_data_4_prefetch),
    .io_wreq_bits_data_5_dirty(metaArray_io_wreq_bits_data_5_dirty),
    .io_wreq_bits_data_5_state(metaArray_io_wreq_bits_data_5_state),
    .io_wreq_bits_data_5_clientStates_0(metaArray_io_wreq_bits_data_5_clientStates_0),
    .io_wreq_bits_data_5_clientStates_1(metaArray_io_wreq_bits_data_5_clientStates_1),
    .io_wreq_bits_data_5_prefetch(metaArray_io_wreq_bits_data_5_prefetch),
    .io_wreq_bits_data_6_dirty(metaArray_io_wreq_bits_data_6_dirty),
    .io_wreq_bits_data_6_state(metaArray_io_wreq_bits_data_6_state),
    .io_wreq_bits_data_6_clientStates_0(metaArray_io_wreq_bits_data_6_clientStates_0),
    .io_wreq_bits_data_6_clientStates_1(metaArray_io_wreq_bits_data_6_clientStates_1),
    .io_wreq_bits_data_6_prefetch(metaArray_io_wreq_bits_data_6_prefetch),
    .io_wreq_bits_data_7_dirty(metaArray_io_wreq_bits_data_7_dirty),
    .io_wreq_bits_data_7_state(metaArray_io_wreq_bits_data_7_state),
    .io_wreq_bits_data_7_clientStates_0(metaArray_io_wreq_bits_data_7_clientStates_0),
    .io_wreq_bits_data_7_clientStates_1(metaArray_io_wreq_bits_data_7_clientStates_1),
    .io_wreq_bits_data_7_prefetch(metaArray_io_wreq_bits_data_7_prefetch),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_195 tagArray ( // @[BaseDirectory.scala 120:24]
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
  SRAMTemplate_196 eccArray ( // @[BaseDirectory.scala 122:26]
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
  SRAMTemplate_197 repl_state_replacer_sram ( // @[BaseDirectory.scala 152:31]
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
  assign io_resp_bits_tag = 3'h7 == io_resp_bits_way ? tagRead_7 : _GEN_28; // @[BaseDirectory.scala 169:{61,61}]
  assign io_resp_bits_dir_dirty = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_dirty : _GEN_68; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_state = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_state : _GEN_60; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_clientStates_0 = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_clientStates_0 :
    _GEN_44; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_clientStates_1 = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_clientStates_1 :
    _GEN_52; // @[BaseDirectory.scala 173:{20,20}]
  assign io_resp_bits_dir_prefetch = 3'h7 == io_resp_bits_way ? metaArray_io_rresp_data_7_prefetch : _GEN_36; // @[BaseDirectory.scala 173:{20,20}]
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
  assign metaArray_io_wreq_bits_data_0_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_0_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_1_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_2_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_3_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_4_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_5_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_6_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_clientStates_1 = resetFinish ? io_dir_wdir_clientStates_1 : 2'h0; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_data_7_prefetch = resetFinish & io_dir_wdir_prefetch; // @[BaseDirectory.scala 179:8]
  assign metaArray_io_wreq_bits_waymask = resetFinish ? _T_19 : 8'hff; // @[BaseDirectory.scala 181:8]
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
  assign eccArray_io_wreq_bits_data_0 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_1 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_2 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_3 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_4 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_5 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_6 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_data_7 = _T_4[26:21]; // @[BaseDirectory.scala 125:45]
  assign eccArray_io_wreq_bits_waymask = 8'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign repl_state_replacer_sram_clock = clock;
  assign repl_state_replacer_sram_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign repl_state_replacer_sram_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_valid = reqValidReg & update; // @[BaseDirectory.scala 225:20]
  assign repl_state_replacer_sram_io_wreq_bits_setIdx = reqReg_set; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_bits_data_0 = {repl_state_next_state_hi_2,_repl_state_next_state_T_21}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (reset) begin // @[BaseDirectory.scala 102:28]
      resetFinish <= 1'h0; // @[BaseDirectory.scala 102:28]
    end else begin
      resetFinish <= _GEN_70;
    end
    if (reset) begin // @[BaseDirectory.scala 103:25]
      resetIdx <= 8'hff; // @[BaseDirectory.scala 103:25]
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
  resetIdx = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  reqValidReg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reqReg_replacerInfo_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reqReg_replacerInfo_opcode = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reqReg_tag = _RAND_5[20:0];
  _RAND_6 = {1{`RANDOM}};
  reqReg_set = _RAND_6[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
