module LoadPipe(
  input         clock,
  input         reset,
  output        io_lsu_req_ready,
  input         io_lsu_req_valid,
  input  [4:0]  io_lsu_req_bits_cmd,
  input  [35:0] io_lsu_req_bits_addr,
  input  [1:0]  io_lsu_req_bits_instrtype,
  output        io_lsu_resp_valid,
  output [63:0] io_lsu_resp_bits_data,
  output        io_lsu_resp_bits_miss,
  output        io_lsu_resp_bits_replay,
  output        io_lsu_resp_bits_tag_error,
  output        io_lsu_resp_bits_error,
  input         io_lsu_s1_kill,
  input         io_lsu_s2_kill,
  input  [35:0] io_lsu_s1_paddr,
  output [3:0]  io_lsu_s1_hit_way,
  output        io_lsu_s1_disable_fast_wakeup,
  output        io_lsu_s1_bank_conflict,
  output        io_meta_read_valid,
  output [7:0]  io_meta_read_bits_idx,
  input  [1:0]  io_meta_resp_0_coh_state,
  input  [1:0]  io_meta_resp_1_coh_state,
  input  [1:0]  io_meta_resp_2_coh_state,
  input  [1:0]  io_meta_resp_3_coh_state,
  input         io_error_flag_resp_0,
  input         io_error_flag_resp_1,
  input         io_error_flag_resp_2,
  input         io_error_flag_resp_3,
  input         io_tag_read_ready,
  output        io_tag_read_valid,
  output [7:0]  io_tag_read_bits_idx,
  input  [29:0] io_tag_resp_0,
  input  [29:0] io_tag_resp_1,
  input  [29:0] io_tag_resp_2,
  input  [29:0] io_tag_resp_3,
  input         io_banked_data_read_ready,
  output        io_banked_data_read_valid,
  output [3:0]  io_banked_data_read_bits_way_en,
  output [35:0] io_banked_data_read_bits_addr,
  input  [63:0] io_banked_data_resp_0_raw_data,
  input  [63:0] io_banked_data_resp_1_raw_data,
  input  [63:0] io_banked_data_resp_2_raw_data,
  input  [63:0] io_banked_data_resp_3_raw_data,
  input  [63:0] io_banked_data_resp_4_raw_data,
  input  [63:0] io_banked_data_resp_5_raw_data,
  input  [63:0] io_banked_data_resp_6_raw_data,
  input  [63:0] io_banked_data_resp_7_raw_data,
  input         io_read_error,
  input         io_bank_conflict_slow,
  input         io_bank_conflict_fast,
  input         io_miss_req_ready,
  output        io_miss_req_valid,
  output [1:0]  io_miss_req_bits_source,
  output [4:0]  io_miss_req_bits_cmd,
  output [35:0] io_miss_req_bits_addr,
  output [38:0] io_miss_req_bits_vaddr,
  output [3:0]  io_miss_req_bits_way_en,
  output [1:0]  io_miss_req_bits_req_coh_state,
  output [1:0]  io_miss_req_bits_replace_coh_state,
  output [23:0] io_miss_req_bits_replace_tag,
  output        io_miss_req_bits_cancel,
  output        io_replace_access_valid,
  output [7:0]  io_replace_access_bits_set,
  output [1:0]  io_replace_access_bits_way,
  output [7:0]  io_replace_way_set_bits,
  input  [1:0]  io_replace_way_way,
  input         io_disable_ld_fast_wakeup,
  output        io_error_source_tag,
  output        io_error_source_data,
  output        io_error_source_l2,
  output [35:0] io_error_paddr,
  output        io_error_report_to_beu,
  output        io_error_valid,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [31:0] _RAND_13;
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
  reg [63:0] _RAND_25;
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
`endif // RANDOMIZE_REG_INIT
  reg  s1_valid; // @[LoadPipe.scala 102:25]
  wire  s1_ready = ~s1_valid | s1_valid; // @[LoadPipe.scala 111:25]
  wire  _io_meta_read_valid_T = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  wire  s0_fire = _io_meta_read_valid_T & s1_ready; // @[LoadPipe.scala 95:26]
  reg [4:0] s1_req_cmd; // @[Reg.scala 16:16]
  reg [35:0] s1_req_addr; // @[Reg.scala 16:16]
  reg [1:0] s1_req_instrtype; // @[Reg.scala 16:16]
  wire [7:0] s1_bank_oh = 8'h1 << s1_req_addr[5:3]; // @[OneHot.scala 57:35]
  wire  s1_nack_data = ~io_banked_data_read_ready; // @[LoadPipe.scala 109:22]
  wire  _GEN_6 = s1_valid ? 1'h0 : s1_valid; // @[LoadPipe.scala 114:23 102:25 114:34]
  wire  _GEN_7 = s0_fire | _GEN_6; // @[LoadPipe.scala 113:{18,29}]
  wire [23:0] tag_resp_0 = io_tag_resp_0[23:0]; // @[LoadPipe.scala 120:40]
  wire [23:0] tag_resp_1 = io_tag_resp_1[23:0]; // @[LoadPipe.scala 120:40]
  wire [23:0] tag_resp_2 = io_tag_resp_2[23:0]; // @[LoadPipe.scala 120:40]
  wire [23:0] tag_resp_3 = io_tag_resp_3[23:0]; // @[LoadPipe.scala 120:40]
  wire [3:0] s1_tag_eq_way = {tag_resp_3 == io_lsu_s1_paddr[35:12],tag_resp_2 == io_lsu_s1_paddr[35:12],tag_resp_1 ==
    io_lsu_s1_paddr[35:12],tag_resp_0 == io_lsu_s1_paddr[35:12]}; // @[LoadPipe.scala 122:78]
  wire  _s1_tag_match_way_T_1 = io_meta_resp_0_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_2 = s1_tag_eq_way[0] & _s1_tag_match_way_T_1; // @[LoadPipe.scala 123:62]
  wire  _s1_tag_match_way_T_4 = io_meta_resp_1_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_5 = s1_tag_eq_way[1] & _s1_tag_match_way_T_4; // @[LoadPipe.scala 123:62]
  wire  _s1_tag_match_way_T_7 = io_meta_resp_2_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_8 = s1_tag_eq_way[2] & _s1_tag_match_way_T_7; // @[LoadPipe.scala 123:62]
  wire  _s1_tag_match_way_T_10 = io_meta_resp_3_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_11 = s1_tag_eq_way[3] & _s1_tag_match_way_T_10; // @[LoadPipe.scala 123:62]
  wire [1:0] s1_tag_match_way_lo = {_s1_tag_match_way_T_5,_s1_tag_match_way_T_2}; // @[LoadPipe.scala 123:93]
  wire [1:0] s1_tag_match_way_hi = {_s1_tag_match_way_T_11,_s1_tag_match_way_T_8}; // @[LoadPipe.scala 123:93]
  wire [3:0] s1_tag_match_way = {_s1_tag_match_way_T_11,_s1_tag_match_way_T_8,_s1_tag_match_way_T_5,
    _s1_tag_match_way_T_2}; // @[LoadPipe.scala 123:93]
  wire  s1_tag_match = |s1_tag_match_way; // @[LoadPipe.scala 124:39]
  wire [1:0] _s1_hit_meta_T_4 = s1_tag_match_way[0] ? io_meta_resp_0_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_5 = s1_tag_match_way[1] ? io_meta_resp_1_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_6 = s1_tag_match_way[2] ? io_meta_resp_2_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_7 = s1_tag_match_way[3] ? io_meta_resp_3_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_8 = _s1_hit_meta_T_4 | _s1_hit_meta_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_9 = _s1_hit_meta_T_8 | _s1_hit_meta_T_6; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_10 = _s1_hit_meta_T_9 | _s1_hit_meta_T_7; // @[Mux.scala 27:73]
  wire [1:0] s1_hit_meta_coh_state = s1_tag_match ? _s1_hit_meta_T_10 : 2'h0; // @[LoadPipe.scala 134:24]
  wire  _s1_hit_error_T_10 = s1_tag_match_way[0] & io_error_flag_resp_0 | s1_tag_match_way[1] & io_error_flag_resp_1 |
    s1_tag_match_way[2] & io_error_flag_resp_2 | s1_tag_match_way[3] & io_error_flag_resp_3; // @[Mux.scala 27:73]
  wire  s1_hit_error = s1_tag_match & _s1_hit_error_T_10; // @[LoadPipe.scala 136:25]
  wire [3:0] s1_repl_way_en = 4'h1 << io_replace_way_way; // @[OneHot.scala 57:35]
  wire [23:0] _s1_repl_tag_T_4 = s1_repl_way_en[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_5 = s1_repl_way_en[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_6 = s1_repl_way_en[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_7 = s1_repl_way_en[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_8 = _s1_repl_tag_T_4 | _s1_repl_tag_T_5; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_9 = _s1_repl_tag_T_8 | _s1_repl_tag_T_6; // @[Mux.scala 27:73]
  wire [23:0] s1_repl_tag = _s1_repl_tag_T_9 | _s1_repl_tag_T_7; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_4 = s1_repl_way_en[0] ? io_meta_resp_0_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_5 = s1_repl_way_en[1] ? io_meta_resp_1_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_6 = s1_repl_way_en[2] ? io_meta_resp_2_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_7 = s1_repl_way_en[3] ? io_meta_resp_3_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_8 = _s1_repl_coh_T_4 | _s1_repl_coh_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_9 = _s1_repl_coh_T_8 | _s1_repl_coh_T_6; // @[Mux.scala 27:73]
  wire [1:0] s1_repl_coh_state = _s1_repl_coh_T_9 | _s1_repl_coh_T_7; // @[Mux.scala 27:73]
  wire  s1_need_replacement = ~s1_tag_match; // @[LoadPipe.scala 144:29]
  reg  io_replace_access_valid_REG; // @[LoadPipe.scala 154:45]
  reg  io_replace_access_valid_REG_1; // @[LoadPipe.scala 154:37]
  reg [7:0] io_replace_access_bits_set_REG; // @[LoadPipe.scala 155:40]
  wire [1:0] io_replace_access_bits_way_hi = s1_tag_match_way[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo = s1_tag_match_way[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T = |io_replace_access_bits_way_hi; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_1 = io_replace_access_bits_way_hi | io_replace_access_bits_way_lo; // @[OneHot.scala 32:28]
  wire [1:0] _io_replace_access_bits_way_T_3 = {_io_replace_access_bits_way_T,_io_replace_access_bits_way_T_1[1]}; // @[Cat.scala 31:58]
  reg [1:0] io_replace_access_bits_way_REG; // @[LoadPipe.scala 156:40]
  wire  _s1_has_permission_c_cat_T_5 = s1_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_6 = s1_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_7 = s1_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_8 = s1_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_11 = _s1_has_permission_c_cat_T_5 | _s1_has_permission_c_cat_T_6 |
    _s1_has_permission_c_cat_T_7 | _s1_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_12 = s1_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_13 = s1_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_14 = s1_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_15 = s1_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_16 = s1_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_20 = _s1_has_permission_c_cat_T_12 | _s1_has_permission_c_cat_T_13 |
    _s1_has_permission_c_cat_T_14 | _s1_has_permission_c_cat_T_15 | _s1_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_21 = _s1_has_permission_c_cat_T_11 | _s1_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s1_has_permission_c_cat_T_22 = s1_req_cmd == 5'h1 | s1_req_cmd == 5'h11 | s1_req_cmd == 5'h7 |
    _s1_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s1_has_permission_c_cat_T_49 = _s1_has_permission_c_cat_T_22 | s1_req_cmd == 5'h3 | s1_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s1_has_permission_T = {_s1_has_permission_c_cat_T_22,_s1_has_permission_c_cat_T_49,s1_hit_meta_coh_state}; // @[Cat.scala 31:58]
  wire  _s1_has_permission_T_25 = 4'hc == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_27 = _s1_has_permission_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_28 = 4'hd == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_30 = _s1_has_permission_T_28 ? 2'h2 : _s1_has_permission_T_27; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_31 = 4'h4 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_33 = _s1_has_permission_T_31 ? 2'h1 : _s1_has_permission_T_30; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_34 = 4'h5 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_36 = _s1_has_permission_T_34 ? 2'h2 : _s1_has_permission_T_33; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_37 = 4'h0 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_39 = _s1_has_permission_T_37 ? 2'h0 : _s1_has_permission_T_36; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_40 = 4'he == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_42 = _s1_has_permission_T_40 ? 2'h3 : _s1_has_permission_T_39; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_43 = 4'hf == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_45 = _s1_has_permission_T_43 ? 2'h3 : _s1_has_permission_T_42; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_46 = 4'h6 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_48 = _s1_has_permission_T_46 ? 2'h2 : _s1_has_permission_T_45; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_49 = 4'h7 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_51 = _s1_has_permission_T_49 ? 2'h3 : _s1_has_permission_T_48; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_52 = 4'h1 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_54 = _s1_has_permission_T_52 ? 2'h1 : _s1_has_permission_T_51; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_55 = 4'h2 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_57 = _s1_has_permission_T_55 ? 2'h2 : _s1_has_permission_T_54; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_58 = 4'h3 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  s1_has_permission = _s1_has_permission_T_58 | (_s1_has_permission_T_55 | (_s1_has_permission_T_52 | (
    _s1_has_permission_T_49 | (_s1_has_permission_T_46 | (_s1_has_permission_T_43 | _s1_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire [1:0] s1_has_permission_meta_state = _s1_has_permission_T_58 ? 2'h3 : _s1_has_permission_T_57; // @[Misc.scala 34:36]
  wire  _s1_hit_T_1 = s1_hit_meta_coh_state == s1_has_permission_meta_state; // @[Metadata.scala 45:46]
  wire  s1_hit = s1_tag_match & s1_has_permission & _s1_hit_T_1; // @[LoadPipe.scala 161:50]
  wire  s1_will_send_miss_req = s1_valid & ~s1_nack_data & ~s1_hit; // @[LoadPipe.scala 162:69]
  wire [29:0] _s1_encTag_T_4 = s1_tag_match_way[0] ? io_tag_resp_0 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_5 = s1_tag_match_way[1] ? io_tag_resp_1 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_6 = s1_tag_match_way[2] ? io_tag_resp_2 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_7 = s1_tag_match_way[3] ? io_tag_resp_3 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_8 = _s1_encTag_T_4 | _s1_encTag_T_5; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_9 = _s1_encTag_T_8 | _s1_encTag_T_6; // @[Mux.scala 27:73]
  wire [29:0] s1_encTag = _s1_encTag_T_9 | _s1_encTag_T_7; // @[Mux.scala 27:73]
  wire [28:0] _s1_tag_error_syndromeUInt_T = 29'h1aaad5b & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_2 = 29'h233366d & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_4 = 29'h4c3c78e & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_6 = 29'h8fc07f0 & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_8 = 29'h10fff800 & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [4:0] s1_tag_error_syndromeUInt = {^_s1_tag_error_syndromeUInt_T_8,^_s1_tag_error_syndromeUInt_T_6,^
    _s1_tag_error_syndromeUInt_T_4,^_s1_tag_error_syndromeUInt_T_2,^_s1_tag_error_syndromeUInt_T}; // @[ECC.scala 157:78]
  wire  s1_tag_error_correctable = |s1_tag_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  s1_tag_error_uncorrectable_1 = ^s1_encTag; // @[ECC.scala 88:27]
  wire  s1_tag_error_uncorrectable_2 = ~s1_tag_error_uncorrectable_1 & s1_tag_error_correctable; // @[ECC.scala 196:47]
  wire  s1_tag_error = s1_tag_error_uncorrectable_1 | s1_tag_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  s1_flag_error = s1_need_replacement ? 1'h0 : s1_hit_error; // @[LoadPipe.scala 167:26]
  wire  s1_error = s1_flag_error | s1_tag_error; // @[LoadPipe.scala 168:32]
  reg  s2_valid; // @[LoadPipe.scala 173:25]
  reg [4:0] s2_req_cmd; // @[Reg.scala 16:16]
  reg [1:0] s2_req_instrtype; // @[Reg.scala 16:16]
  reg [35:0] s2_addr; // @[Reg.scala 16:16]
  reg [35:0] s2_vaddr; // @[Reg.scala 16:16]
  reg [7:0] s2_bank_oh; // @[Reg.scala 16:16]
  reg  s2_tag_match; // @[Reg.scala 16:16]
  reg [1:0] s2_hit_coh_state; // @[Reg.scala 16:16]
  wire  _s2_has_permission_c_cat_T_5 = s2_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_6 = s2_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_7 = s2_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_8 = s2_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_11 = _s2_has_permission_c_cat_T_5 | _s2_has_permission_c_cat_T_6 |
    _s2_has_permission_c_cat_T_7 | _s2_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s2_has_permission_c_cat_T_12 = s2_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_13 = s2_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_14 = s2_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_15 = s2_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_16 = s2_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_20 = _s2_has_permission_c_cat_T_12 | _s2_has_permission_c_cat_T_13 |
    _s2_has_permission_c_cat_T_14 | _s2_has_permission_c_cat_T_15 | _s2_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s2_has_permission_c_cat_T_21 = _s2_has_permission_c_cat_T_11 | _s2_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s2_has_permission_c_cat_T_22 = s2_req_cmd == 5'h1 | s2_req_cmd == 5'h11 | s2_req_cmd == 5'h7 |
    _s2_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s2_has_permission_c_cat_T_49 = _s2_has_permission_c_cat_T_22 | s2_req_cmd == 5'h3 | s2_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s2_has_permission_T = {_s2_has_permission_c_cat_T_22,_s2_has_permission_c_cat_T_49,s2_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _s2_has_permission_T_25 = 4'hc == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_27 = _s2_has_permission_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_28 = 4'hd == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_30 = _s2_has_permission_T_28 ? 2'h2 : _s2_has_permission_T_27; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_31 = 4'h4 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_33 = _s2_has_permission_T_31 ? 2'h1 : _s2_has_permission_T_30; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_34 = 4'h5 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_36 = _s2_has_permission_T_34 ? 2'h2 : _s2_has_permission_T_33; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_37 = 4'h0 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_39 = _s2_has_permission_T_37 ? 2'h0 : _s2_has_permission_T_36; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_40 = 4'he == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_42 = _s2_has_permission_T_40 ? 2'h3 : _s2_has_permission_T_39; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_43 = 4'hf == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_45 = _s2_has_permission_T_43 ? 2'h3 : _s2_has_permission_T_42; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_46 = 4'h6 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_48 = _s2_has_permission_T_46 ? 2'h2 : _s2_has_permission_T_45; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_49 = 4'h7 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_51 = _s2_has_permission_T_49 ? 2'h3 : _s2_has_permission_T_48; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_52 = 4'h1 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_54 = _s2_has_permission_T_52 ? 2'h1 : _s2_has_permission_T_51; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_55 = 4'h2 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_57 = _s2_has_permission_T_55 ? 2'h2 : _s2_has_permission_T_54; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_58 = 4'h3 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire  s2_has_permission = _s2_has_permission_T_58 | (_s2_has_permission_T_55 | (_s2_has_permission_T_52 | (
    _s2_has_permission_T_49 | (_s2_has_permission_T_46 | (_s2_has_permission_T_43 | _s2_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire [1:0] s2_has_permission_meta_state = _s2_has_permission_T_58 ? 2'h3 : _s2_has_permission_T_57; // @[Misc.scala 34:36]
  reg [3:0] s2_way_en; // @[Reg.scala 16:16]
  reg [1:0] s2_repl_coh_state; // @[Reg.scala 16:16]
  reg [23:0] s2_repl_tag; // @[Reg.scala 16:16]
  wire  s2_nack_no_mshr = io_miss_req_valid & ~io_miss_req_ready; // @[LoadPipe.scala 202:43]
  reg  s2_nack_data; // @[Reg.scala 16:16]
  wire  s2_nack = s2_nack_no_mshr | s2_nack_data; // @[LoadPipe.scala 205:48]
  wire [2:0] s2_bank_addr = s2_addr[5:3]; // @[DCacheWrapper.scala 143:9]
  wire [63:0] _banked_data_resp_word_T_23 = s2_bank_oh[0] ? io_banked_data_resp_0_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_24 = s2_bank_oh[1] ? io_banked_data_resp_1_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_25 = s2_bank_oh[2] ? io_banked_data_resp_2_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_26 = s2_bank_oh[3] ? io_banked_data_resp_3_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_27 = s2_bank_oh[4] ? io_banked_data_resp_4_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_28 = s2_bank_oh[5] ? io_banked_data_resp_5_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_29 = s2_bank_oh[6] ? io_banked_data_resp_6_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_30 = s2_bank_oh[7] ? io_banked_data_resp_7_raw_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_31 = _banked_data_resp_word_T_23 | _banked_data_resp_word_T_24; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_32 = _banked_data_resp_word_T_31 | _banked_data_resp_word_T_25; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_33 = _banked_data_resp_word_T_32 | _banked_data_resp_word_T_26; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_34 = _banked_data_resp_word_T_33 | _banked_data_resp_word_T_27; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_35 = _banked_data_resp_word_T_34 | _banked_data_resp_word_T_28; // @[Mux.scala 27:73]
  wire [63:0] _banked_data_resp_word_T_36 = _banked_data_resp_word_T_35 | _banked_data_resp_word_T_29; // @[Mux.scala 27:73]
  reg  s2_tag_error; // @[Reg.scala 16:16]
  reg  s2_flag_error; // @[Reg.scala 16:16]
  reg  s2_error_r; // @[Reg.scala 16:16]
  wire  s2_error = s2_error_r | io_read_error; // @[LoadPipe.scala 217:47]
  wire  _s2_hit_T_1 = s2_hit_coh_state == s2_has_permission_meta_state; // @[Metadata.scala 45:46]
  wire  s2_hit = s2_tag_match & s2_has_permission & _s2_hit_T_1; // @[LoadPipe.scala 219:50]
  reg  s2_can_send_miss_req; // @[Reg.scala 16:16]
  wire  real_miss = ~s2_hit; // @[LoadPipe.scala 254:19]
  wire  resp_bits_miss = real_miss | io_bank_conflict_slow; // @[LoadPipe.scala 255:31]
  wire  _resp_bits_replay_T = io_miss_req_ready & io_miss_req_valid; // @[Decoupled.scala 50:35]
  wire  resp_bits_replay = resp_bits_miss & (~_resp_bits_replay_T | s2_nack) | io_bank_conflict_slow; // @[LoadPipe.scala 257:74]
  reg  io_error_report_to_beu_REG; // @[LoadPipe.scala 278:36]
  reg [35:0] io_error_paddr_REG; // @[LoadPipe.scala 279:28]
  reg  io_error_source_tag_REG; // @[LoadPipe.scala 280:33]
  reg  io_error_source_data_REG; // @[LoadPipe.scala 281:34]
  reg  io_error_source_l2_REG; // @[LoadPipe.scala 282:32]
  reg  io_error_valid_REG; // @[LoadPipe.scala 285:28]
  wire  _T_49 = io_lsu_resp_valid & resp_bits_replay; // @[LoadPipe.scala 307:58]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign io_lsu_req_ready = io_tag_read_ready & s1_ready; // @[LoadPipe.scala 71:66]
  assign io_lsu_resp_valid = s2_valid; // @[LoadPipe.scala 243:18 244:14]
  assign io_lsu_resp_bits_data = _banked_data_resp_word_T_36 | _banked_data_resp_word_T_30; // @[Mux.scala 27:73]
  assign io_lsu_resp_bits_miss = real_miss | io_bank_conflict_slow; // @[LoadPipe.scala 255:31]
  assign io_lsu_resp_bits_replay = resp_bits_miss & (~_resp_bits_replay_T | s2_nack) | io_bank_conflict_slow; // @[LoadPipe.scala 257:74]
  assign io_lsu_resp_bits_tag_error = s2_tag_error; // @[LoadPipe.scala 243:18 258:23]
  assign io_lsu_resp_bits_error = s2_error & (s2_hit | s2_tag_error); // @[LoadPipe.scala 259:31]
  assign io_lsu_s1_hit_way = {s1_tag_match_way_hi,s1_tag_match_way_lo}; // @[LoadPipe.scala 123:93]
  assign io_lsu_s1_disable_fast_wakeup = io_disable_ld_fast_wakeup; // @[LoadPipe.scala 272:33]
  assign io_lsu_s1_bank_conflict = io_bank_conflict_fast; // @[LoadPipe.scala 273:27]
  assign io_meta_read_valid = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  assign io_meta_read_bits_idx = io_lsu_req_bits_addr[13:6]; // @[L1Cache.scala 82:33]
  assign io_tag_read_valid = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  assign io_tag_read_bits_idx = io_lsu_req_bits_addr[13:6]; // @[L1Cache.scala 82:33]
  assign io_banked_data_read_valid = s1_valid; // @[LoadPipe.scala 150:40]
  assign io_banked_data_read_bits_way_en = {s1_tag_match_way_hi,s1_tag_match_way_lo}; // @[LoadPipe.scala 123:93]
  assign io_banked_data_read_bits_addr = s1_req_addr; // @[LoadPipe.scala 151:33]
  assign io_miss_req_valid = s2_valid & s2_can_send_miss_req; // @[LoadPipe.scala 230:33]
  assign io_miss_req_bits_source = s2_req_instrtype; // @[LoadPipe.scala 232:27]
  assign io_miss_req_bits_cmd = s2_req_cmd; // @[LoadPipe.scala 233:24]
  assign io_miss_req_bits_addr = {s2_addr[35:6], 6'h0}; // @[L1Cache.scala 85:59]
  assign io_miss_req_bits_vaddr = {{3'd0}, s2_vaddr}; // @[LoadPipe.scala 235:26]
  assign io_miss_req_bits_way_en = s2_way_en; // @[LoadPipe.scala 236:27]
  assign io_miss_req_bits_req_coh_state = s2_hit_coh_state; // @[LoadPipe.scala 237:28]
  assign io_miss_req_bits_replace_coh_state = s2_repl_coh_state; // @[LoadPipe.scala 238:32]
  assign io_miss_req_bits_replace_tag = s2_repl_tag; // @[LoadPipe.scala 239:32]
  assign io_miss_req_bits_cancel = io_lsu_s2_kill | s2_tag_error; // @[LoadPipe.scala 240:45]
  assign io_replace_access_valid = io_replace_access_valid_REG_1; // @[LoadPipe.scala 154:27]
  assign io_replace_access_bits_set = io_replace_access_bits_set_REG; // @[LoadPipe.scala 155:30]
  assign io_replace_access_bits_way = io_replace_access_bits_way_REG; // @[LoadPipe.scala 156:30]
  assign io_replace_way_set_bits = s1_req_addr[13:6]; // @[L1Cache.scala 82:33]
  assign io_error_source_tag = io_error_source_tag_REG; // @[LoadPipe.scala 280:23]
  assign io_error_source_data = io_error_source_data_REG; // @[LoadPipe.scala 281:24]
  assign io_error_source_l2 = io_error_source_l2_REG; // @[LoadPipe.scala 282:22]
  assign io_error_paddr = io_error_paddr_REG; // @[LoadPipe.scala 279:18]
  assign io_error_report_to_beu = io_error_report_to_beu_REG; // @[LoadPipe.scala 278:26]
  assign io_error_valid = io_error_valid_REG; // @[LoadPipe.scala 285:18]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (reset) begin // @[LoadPipe.scala 102:25]
      s1_valid <= 1'h0; // @[LoadPipe.scala 102:25]
    end else begin
      s1_valid <= _GEN_7;
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_cmd <= io_lsu_req_bits_cmd; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_addr <= io_lsu_req_bits_addr; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_instrtype <= io_lsu_req_bits_instrtype; // @[Reg.scala 17:22]
    end
    io_replace_access_valid_REG <= io_meta_read_valid; // @[Decoupled.scala 50:35]
    io_replace_access_valid_REG_1 <= io_replace_access_valid_REG & s1_valid; // @[LoadPipe.scala 154:67]
    io_replace_access_bits_set_REG <= s1_req_addr[13:6]; // @[L1Cache.scala 82:33]
    if (s1_tag_match) begin // @[LoadPipe.scala 156:44]
      io_replace_access_bits_way_REG <= _io_replace_access_bits_way_T_3;
    end else begin
      io_replace_access_bits_way_REG <= io_replace_way_way;
    end
    if (reset) begin // @[LoadPipe.scala 173:25]
      s2_valid <= 1'h0; // @[LoadPipe.scala 173:25]
    end else if (s1_valid) begin // @[LoadPipe.scala 180:18]
      s2_valid <= ~io_lsu_s1_kill; // @[LoadPipe.scala 180:29]
    end else if (io_lsu_resp_valid) begin // @[LoadPipe.scala 181:33]
      s2_valid <= 1'h0; // @[LoadPipe.scala 181:44]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_req_cmd <= s1_req_cmd; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_req_instrtype <= s1_req_instrtype; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_addr <= io_lsu_s1_paddr; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_vaddr <= s1_req_addr; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_bank_oh <= s1_bank_oh; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_tag_match <= s1_tag_match; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_tag_match) begin // @[LoadPipe.scala 134:24]
        s2_hit_coh_state <= _s1_hit_meta_T_10;
      end else begin
        s2_hit_coh_state <= 2'h0;
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_need_replacement) begin // @[LoadPipe.scala 145:22]
        s2_way_en <= s1_repl_way_en;
      end else begin
        s2_way_en <= s1_tag_match_way;
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_repl_coh_state <= s1_repl_coh_state; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_repl_tag <= s1_repl_tag; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_nack_data <= s1_nack_data; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_tag_error <= s1_tag_error; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_need_replacement) begin // @[LoadPipe.scala 167:26]
        s2_flag_error <= 1'h0;
      end else begin
        s2_flag_error <= s1_hit_error;
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_error_r <= s1_error; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_can_send_miss_req <= s1_will_send_miss_req; // @[Reg.scala 17:22]
    end
    io_error_report_to_beu_REG <= (s2_tag_error | io_read_error) & s2_valid; // @[LoadPipe.scala 278:69]
    io_error_paddr_REG <= s2_addr; // @[LoadPipe.scala 279:28]
    io_error_source_tag_REG <= s2_tag_error; // @[LoadPipe.scala 280:33]
    io_error_source_data_REG <= io_read_error; // @[LoadPipe.scala 281:34]
    io_error_source_l2_REG <= s2_flag_error; // @[LoadPipe.scala 282:32]
    io_error_valid_REG <= s2_error & s2_valid; // @[LoadPipe.scala 285:38]
    io_perf_0_value_REG <= io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= io_lsu_resp_valid & resp_bits_replay; // @[LoadPipe.scala 320:54]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_49 & s2_nack_data; // @[LoadPipe.scala 321:74]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_49 & s2_nack_no_mshr; // @[LoadPipe.scala 322:74]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _T_49 & io_bank_conflict_slow; // @[LoadPipe.scala 323:74]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  s1_req_addr = _RAND_2[35:0];
  _RAND_3 = {1{`RANDOM}};
  s1_req_instrtype = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  io_replace_access_valid_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_replace_access_valid_REG_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_replace_access_bits_set_REG = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  io_replace_access_bits_way_REG = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  s2_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s2_req_cmd = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  s2_req_instrtype = _RAND_10[1:0];
  _RAND_11 = {2{`RANDOM}};
  s2_addr = _RAND_11[35:0];
  _RAND_12 = {2{`RANDOM}};
  s2_vaddr = _RAND_12[35:0];
  _RAND_13 = {1{`RANDOM}};
  s2_bank_oh = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  s2_tag_match = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_hit_coh_state = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  s2_way_en = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  s2_repl_coh_state = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  s2_repl_tag = _RAND_18[23:0];
  _RAND_19 = {1{`RANDOM}};
  s2_nack_data = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s2_tag_error = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s2_flag_error = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s2_error_r = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s2_can_send_miss_req = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_error_report_to_beu_REG = _RAND_24[0:0];
  _RAND_25 = {2{`RANDOM}};
  io_error_paddr_REG = _RAND_25[35:0];
  _RAND_26 = {1{`RANDOM}};
  io_error_source_tag_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_error_source_data_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_error_source_l2_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_error_valid_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_39[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
