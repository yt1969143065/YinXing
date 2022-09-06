module Arbiter_23(
  output         io_in_0_ready,
  input          io_in_0_valid,
  input          io_in_0_bits_miss,
  input  [2:0]   io_in_0_bits_miss_id,
  input  [1:0]   io_in_0_bits_miss_param,
  input          io_in_0_bits_miss_dirty,
  input  [3:0]   io_in_0_bits_miss_way_en,
  input  [1:0]   io_in_0_bits_source,
  input  [4:0]   io_in_0_bits_cmd,
  input  [38:0]  io_in_0_bits_vaddr,
  input  [35:0]  io_in_0_bits_addr,
  input  [511:0] io_in_0_bits_store_data,
  input  [63:0]  io_in_0_bits_store_mask,
  input  [2:0]   io_in_0_bits_word_idx,
  input  [63:0]  io_in_0_bits_amo_data,
  input  [7:0]   io_in_0_bits_amo_mask,
  input          io_in_0_bits_error,
  input          io_in_0_bits_replace,
  input  [3:0]   io_in_0_bits_replace_way_en,
  input  [63:0]  io_in_0_bits_id,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input          io_in_1_bits_miss,
  input  [2:0]   io_in_1_bits_miss_id,
  input  [1:0]   io_in_1_bits_miss_param,
  input          io_in_1_bits_miss_dirty,
  input  [3:0]   io_in_1_bits_miss_way_en,
  input  [1:0]   io_in_1_bits_source,
  input  [4:0]   io_in_1_bits_cmd,
  input  [38:0]  io_in_1_bits_vaddr,
  input  [35:0]  io_in_1_bits_addr,
  input  [511:0] io_in_1_bits_store_data,
  input  [63:0]  io_in_1_bits_store_mask,
  input  [2:0]   io_in_1_bits_word_idx,
  input  [63:0]  io_in_1_bits_amo_data,
  input  [7:0]   io_in_1_bits_amo_mask,
  input          io_in_1_bits_error,
  input          io_in_1_bits_replace,
  input  [3:0]   io_in_1_bits_replace_way_en,
  input  [63:0]  io_in_1_bits_id,
  output         io_in_2_ready,
  input          io_in_2_valid,
  input          io_in_2_bits_miss,
  input  [2:0]   io_in_2_bits_miss_id,
  input  [1:0]   io_in_2_bits_miss_param,
  input          io_in_2_bits_miss_dirty,
  input  [3:0]   io_in_2_bits_miss_way_en,
  input  [1:0]   io_in_2_bits_source,
  input  [4:0]   io_in_2_bits_cmd,
  input  [38:0]  io_in_2_bits_vaddr,
  input  [35:0]  io_in_2_bits_addr,
  input  [511:0] io_in_2_bits_store_data,
  input  [63:0]  io_in_2_bits_store_mask,
  input  [2:0]   io_in_2_bits_word_idx,
  input  [63:0]  io_in_2_bits_amo_data,
  input  [7:0]   io_in_2_bits_amo_mask,
  input          io_in_2_bits_error,
  input          io_in_2_bits_replace,
  input  [3:0]   io_in_2_bits_replace_way_en,
  input  [63:0]  io_in_2_bits_id,
  output         io_in_3_ready,
  input          io_in_3_valid,
  input          io_in_3_bits_miss,
  input  [2:0]   io_in_3_bits_miss_id,
  input  [1:0]   io_in_3_bits_miss_param,
  input          io_in_3_bits_miss_dirty,
  input  [3:0]   io_in_3_bits_miss_way_en,
  input  [1:0]   io_in_3_bits_source,
  input  [4:0]   io_in_3_bits_cmd,
  input  [38:0]  io_in_3_bits_vaddr,
  input  [35:0]  io_in_3_bits_addr,
  input  [511:0] io_in_3_bits_store_data,
  input  [63:0]  io_in_3_bits_store_mask,
  input  [2:0]   io_in_3_bits_word_idx,
  input  [63:0]  io_in_3_bits_amo_data,
  input  [7:0]   io_in_3_bits_amo_mask,
  input          io_in_3_bits_error,
  input          io_in_3_bits_replace,
  input  [3:0]   io_in_3_bits_replace_way_en,
  input  [63:0]  io_in_3_bits_id,
  output         io_in_4_ready,
  input          io_in_4_valid,
  input          io_in_4_bits_miss,
  input  [2:0]   io_in_4_bits_miss_id,
  input  [1:0]   io_in_4_bits_miss_param,
  input          io_in_4_bits_miss_dirty,
  input  [3:0]   io_in_4_bits_miss_way_en,
  input  [1:0]   io_in_4_bits_source,
  input  [4:0]   io_in_4_bits_cmd,
  input  [38:0]  io_in_4_bits_vaddr,
  input  [35:0]  io_in_4_bits_addr,
  input  [511:0] io_in_4_bits_store_data,
  input  [63:0]  io_in_4_bits_store_mask,
  input  [2:0]   io_in_4_bits_word_idx,
  input  [63:0]  io_in_4_bits_amo_data,
  input  [7:0]   io_in_4_bits_amo_mask,
  input          io_in_4_bits_error,
  input          io_in_4_bits_replace,
  input  [3:0]   io_in_4_bits_replace_way_en,
  input  [63:0]  io_in_4_bits_id,
  output         io_in_5_ready,
  input          io_in_5_valid,
  input          io_in_5_bits_miss,
  input  [2:0]   io_in_5_bits_miss_id,
  input  [1:0]   io_in_5_bits_miss_param,
  input          io_in_5_bits_miss_dirty,
  input  [3:0]   io_in_5_bits_miss_way_en,
  input  [1:0]   io_in_5_bits_source,
  input  [4:0]   io_in_5_bits_cmd,
  input  [38:0]  io_in_5_bits_vaddr,
  input  [35:0]  io_in_5_bits_addr,
  input  [511:0] io_in_5_bits_store_data,
  input  [63:0]  io_in_5_bits_store_mask,
  input  [2:0]   io_in_5_bits_word_idx,
  input  [63:0]  io_in_5_bits_amo_data,
  input  [7:0]   io_in_5_bits_amo_mask,
  input          io_in_5_bits_error,
  input          io_in_5_bits_replace,
  input  [3:0]   io_in_5_bits_replace_way_en,
  input  [63:0]  io_in_5_bits_id,
  output         io_in_6_ready,
  input          io_in_6_valid,
  input          io_in_6_bits_miss,
  input  [2:0]   io_in_6_bits_miss_id,
  input  [1:0]   io_in_6_bits_miss_param,
  input          io_in_6_bits_miss_dirty,
  input  [3:0]   io_in_6_bits_miss_way_en,
  input  [1:0]   io_in_6_bits_source,
  input  [4:0]   io_in_6_bits_cmd,
  input  [38:0]  io_in_6_bits_vaddr,
  input  [35:0]  io_in_6_bits_addr,
  input  [511:0] io_in_6_bits_store_data,
  input  [63:0]  io_in_6_bits_store_mask,
  input  [2:0]   io_in_6_bits_word_idx,
  input  [63:0]  io_in_6_bits_amo_data,
  input  [7:0]   io_in_6_bits_amo_mask,
  input          io_in_6_bits_error,
  input          io_in_6_bits_replace,
  input  [3:0]   io_in_6_bits_replace_way_en,
  input  [63:0]  io_in_6_bits_id,
  output         io_in_7_ready,
  input          io_in_7_valid,
  input          io_in_7_bits_miss,
  input  [2:0]   io_in_7_bits_miss_id,
  input  [1:0]   io_in_7_bits_miss_param,
  input          io_in_7_bits_miss_dirty,
  input  [3:0]   io_in_7_bits_miss_way_en,
  input  [1:0]   io_in_7_bits_source,
  input  [4:0]   io_in_7_bits_cmd,
  input  [38:0]  io_in_7_bits_vaddr,
  input  [35:0]  io_in_7_bits_addr,
  input  [511:0] io_in_7_bits_store_data,
  input  [63:0]  io_in_7_bits_store_mask,
  input  [2:0]   io_in_7_bits_word_idx,
  input  [63:0]  io_in_7_bits_amo_data,
  input  [7:0]   io_in_7_bits_amo_mask,
  input          io_in_7_bits_error,
  input          io_in_7_bits_replace,
  input  [3:0]   io_in_7_bits_replace_way_en,
  input  [63:0]  io_in_7_bits_id,
  input          io_out_ready,
  output         io_out_valid,
  output         io_out_bits_miss,
  output [2:0]   io_out_bits_miss_id,
  output [1:0]   io_out_bits_miss_param,
  output         io_out_bits_miss_dirty,
  output [3:0]   io_out_bits_miss_way_en,
  output [1:0]   io_out_bits_source,
  output [4:0]   io_out_bits_cmd,
  output [38:0]  io_out_bits_vaddr,
  output [35:0]  io_out_bits_addr,
  output [511:0] io_out_bits_store_data,
  output [63:0]  io_out_bits_store_mask,
  output [2:0]   io_out_bits_word_idx,
  output [63:0]  io_out_bits_amo_data,
  output [7:0]   io_out_bits_amo_mask,
  output         io_out_bits_error,
  output         io_out_bits_replace,
  output [3:0]   io_out_bits_replace_way_en,
  output [63:0]  io_out_bits_id
);
  wire [63:0] _GEN_1 = io_in_6_valid ? io_in_6_bits_id : io_in_7_bits_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_2 = io_in_6_valid ? io_in_6_bits_replace_way_en : io_in_7_bits_replace_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_3 = io_in_6_valid ? io_in_6_bits_replace : io_in_7_bits_replace; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_4 = io_in_6_valid ? io_in_6_bits_error : io_in_7_bits_error; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_5 = io_in_6_valid ? io_in_6_bits_amo_mask : io_in_7_bits_amo_mask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_6 = io_in_6_valid ? io_in_6_bits_amo_data : io_in_7_bits_amo_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_7 = io_in_6_valid ? io_in_6_bits_word_idx : io_in_7_bits_word_idx; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_8 = io_in_6_valid ? io_in_6_bits_store_mask : io_in_7_bits_store_mask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [511:0] _GEN_9 = io_in_6_valid ? io_in_6_bits_store_data : io_in_7_bits_store_data; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [35:0] _GEN_10 = io_in_6_valid ? io_in_6_bits_addr : io_in_7_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [38:0] _GEN_11 = io_in_6_valid ? io_in_6_bits_vaddr : io_in_7_bits_vaddr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [4:0] _GEN_12 = io_in_6_valid ? io_in_6_bits_cmd : io_in_7_bits_cmd; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_13 = io_in_6_valid ? io_in_6_bits_source : io_in_7_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_17 = io_in_6_valid ? io_in_6_bits_miss_way_en : io_in_7_bits_miss_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_18 = io_in_6_valid ? io_in_6_bits_miss_dirty : io_in_7_bits_miss_dirty; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_19 = io_in_6_valid ? io_in_6_bits_miss_param : io_in_7_bits_miss_param; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_20 = io_in_6_valid ? io_in_6_bits_miss_id : io_in_7_bits_miss_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_21 = io_in_6_valid ? io_in_6_bits_miss : io_in_7_bits_miss; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_23 = io_in_5_valid ? io_in_5_bits_id : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_24 = io_in_5_valid ? io_in_5_bits_replace_way_en : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_25 = io_in_5_valid ? io_in_5_bits_replace : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_26 = io_in_5_valid ? io_in_5_bits_error : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_27 = io_in_5_valid ? io_in_5_bits_amo_mask : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_28 = io_in_5_valid ? io_in_5_bits_amo_data : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_29 = io_in_5_valid ? io_in_5_bits_word_idx : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_30 = io_in_5_valid ? io_in_5_bits_store_mask : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_31 = io_in_5_valid ? io_in_5_bits_store_data : _GEN_9; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_32 = io_in_5_valid ? io_in_5_bits_addr : _GEN_10; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_33 = io_in_5_valid ? io_in_5_bits_vaddr : _GEN_11; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_34 = io_in_5_valid ? io_in_5_bits_cmd : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_35 = io_in_5_valid ? io_in_5_bits_source : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_39 = io_in_5_valid ? io_in_5_bits_miss_way_en : _GEN_17; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_40 = io_in_5_valid ? io_in_5_bits_miss_dirty : _GEN_18; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_41 = io_in_5_valid ? io_in_5_bits_miss_param : _GEN_19; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_42 = io_in_5_valid ? io_in_5_bits_miss_id : _GEN_20; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_43 = io_in_5_valid ? io_in_5_bits_miss : _GEN_21; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_45 = io_in_4_valid ? io_in_4_bits_id : _GEN_23; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_46 = io_in_4_valid ? io_in_4_bits_replace_way_en : _GEN_24; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_47 = io_in_4_valid ? io_in_4_bits_replace : _GEN_25; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_48 = io_in_4_valid ? io_in_4_bits_error : _GEN_26; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_49 = io_in_4_valid ? io_in_4_bits_amo_mask : _GEN_27; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_50 = io_in_4_valid ? io_in_4_bits_amo_data : _GEN_28; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_51 = io_in_4_valid ? io_in_4_bits_word_idx : _GEN_29; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_52 = io_in_4_valid ? io_in_4_bits_store_mask : _GEN_30; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_53 = io_in_4_valid ? io_in_4_bits_store_data : _GEN_31; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_54 = io_in_4_valid ? io_in_4_bits_addr : _GEN_32; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_55 = io_in_4_valid ? io_in_4_bits_vaddr : _GEN_33; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_56 = io_in_4_valid ? io_in_4_bits_cmd : _GEN_34; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_57 = io_in_4_valid ? io_in_4_bits_source : _GEN_35; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_61 = io_in_4_valid ? io_in_4_bits_miss_way_en : _GEN_39; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_62 = io_in_4_valid ? io_in_4_bits_miss_dirty : _GEN_40; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_63 = io_in_4_valid ? io_in_4_bits_miss_param : _GEN_41; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_64 = io_in_4_valid ? io_in_4_bits_miss_id : _GEN_42; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_65 = io_in_4_valid ? io_in_4_bits_miss : _GEN_43; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_67 = io_in_3_valid ? io_in_3_bits_id : _GEN_45; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_68 = io_in_3_valid ? io_in_3_bits_replace_way_en : _GEN_46; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_69 = io_in_3_valid ? io_in_3_bits_replace : _GEN_47; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_70 = io_in_3_valid ? io_in_3_bits_error : _GEN_48; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_71 = io_in_3_valid ? io_in_3_bits_amo_mask : _GEN_49; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_72 = io_in_3_valid ? io_in_3_bits_amo_data : _GEN_50; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_73 = io_in_3_valid ? io_in_3_bits_word_idx : _GEN_51; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_74 = io_in_3_valid ? io_in_3_bits_store_mask : _GEN_52; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_75 = io_in_3_valid ? io_in_3_bits_store_data : _GEN_53; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_76 = io_in_3_valid ? io_in_3_bits_addr : _GEN_54; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_77 = io_in_3_valid ? io_in_3_bits_vaddr : _GEN_55; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_78 = io_in_3_valid ? io_in_3_bits_cmd : _GEN_56; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_79 = io_in_3_valid ? io_in_3_bits_source : _GEN_57; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_83 = io_in_3_valid ? io_in_3_bits_miss_way_en : _GEN_61; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_84 = io_in_3_valid ? io_in_3_bits_miss_dirty : _GEN_62; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_85 = io_in_3_valid ? io_in_3_bits_miss_param : _GEN_63; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_86 = io_in_3_valid ? io_in_3_bits_miss_id : _GEN_64; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_87 = io_in_3_valid ? io_in_3_bits_miss : _GEN_65; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_89 = io_in_2_valid ? io_in_2_bits_id : _GEN_67; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_90 = io_in_2_valid ? io_in_2_bits_replace_way_en : _GEN_68; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_91 = io_in_2_valid ? io_in_2_bits_replace : _GEN_69; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_92 = io_in_2_valid ? io_in_2_bits_error : _GEN_70; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_93 = io_in_2_valid ? io_in_2_bits_amo_mask : _GEN_71; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_94 = io_in_2_valid ? io_in_2_bits_amo_data : _GEN_72; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_95 = io_in_2_valid ? io_in_2_bits_word_idx : _GEN_73; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_96 = io_in_2_valid ? io_in_2_bits_store_mask : _GEN_74; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_97 = io_in_2_valid ? io_in_2_bits_store_data : _GEN_75; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_98 = io_in_2_valid ? io_in_2_bits_addr : _GEN_76; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_99 = io_in_2_valid ? io_in_2_bits_vaddr : _GEN_77; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_100 = io_in_2_valid ? io_in_2_bits_cmd : _GEN_78; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_101 = io_in_2_valid ? io_in_2_bits_source : _GEN_79; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_105 = io_in_2_valid ? io_in_2_bits_miss_way_en : _GEN_83; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_106 = io_in_2_valid ? io_in_2_bits_miss_dirty : _GEN_84; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_107 = io_in_2_valid ? io_in_2_bits_miss_param : _GEN_85; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_108 = io_in_2_valid ? io_in_2_bits_miss_id : _GEN_86; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_109 = io_in_2_valid ? io_in_2_bits_miss : _GEN_87; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_111 = io_in_1_valid ? io_in_1_bits_id : _GEN_89; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_112 = io_in_1_valid ? io_in_1_bits_replace_way_en : _GEN_90; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_113 = io_in_1_valid ? io_in_1_bits_replace : _GEN_91; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_114 = io_in_1_valid ? io_in_1_bits_error : _GEN_92; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_115 = io_in_1_valid ? io_in_1_bits_amo_mask : _GEN_93; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_116 = io_in_1_valid ? io_in_1_bits_amo_data : _GEN_94; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_117 = io_in_1_valid ? io_in_1_bits_word_idx : _GEN_95; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_118 = io_in_1_valid ? io_in_1_bits_store_mask : _GEN_96; // @[Arbiter.scala 141:26 143:19]
  wire [511:0] _GEN_119 = io_in_1_valid ? io_in_1_bits_store_data : _GEN_97; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_120 = io_in_1_valid ? io_in_1_bits_addr : _GEN_98; // @[Arbiter.scala 141:26 143:19]
  wire [38:0] _GEN_121 = io_in_1_valid ? io_in_1_bits_vaddr : _GEN_99; // @[Arbiter.scala 141:26 143:19]
  wire [4:0] _GEN_122 = io_in_1_valid ? io_in_1_bits_cmd : _GEN_100; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_123 = io_in_1_valid ? io_in_1_bits_source : _GEN_101; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_127 = io_in_1_valid ? io_in_1_bits_miss_way_en : _GEN_105; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_128 = io_in_1_valid ? io_in_1_bits_miss_dirty : _GEN_106; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_129 = io_in_1_valid ? io_in_1_bits_miss_param : _GEN_107; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_130 = io_in_1_valid ? io_in_1_bits_miss_id : _GEN_108; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_131 = io_in_1_valid ? io_in_1_bits_miss : _GEN_109; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  wire  grant_4 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid | io_in_3_valid); // @[Arbiter.scala 46:78]
  wire  grant_5 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid); // @[Arbiter.scala 46:78]
  wire  grant_6 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid | io_in_5_valid); // @[Arbiter.scala 46:78]
  wire  grant_7 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid | io_in_5_valid |
    io_in_6_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_4_ready = grant_4 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_5_ready = grant_5 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_6_ready = grant_6 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_7_ready = grant_7 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_7 | io_in_7_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_miss = io_in_0_valid ? io_in_0_bits_miss : _GEN_131; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_id = io_in_0_valid ? io_in_0_bits_miss_id : _GEN_130; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_param = io_in_0_valid ? io_in_0_bits_miss_param : _GEN_129; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_dirty = io_in_0_valid ? io_in_0_bits_miss_dirty : _GEN_128; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_way_en = io_in_0_valid ? io_in_0_bits_miss_way_en : _GEN_127; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_123; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_cmd = io_in_0_valid ? io_in_0_bits_cmd : _GEN_122; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_vaddr = io_in_0_valid ? io_in_0_bits_vaddr : _GEN_121; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_120; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_store_data = io_in_0_valid ? io_in_0_bits_store_data : _GEN_119; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_store_mask = io_in_0_valid ? io_in_0_bits_store_mask : _GEN_118; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_word_idx = io_in_0_valid ? io_in_0_bits_word_idx : _GEN_117; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_amo_data = io_in_0_valid ? io_in_0_bits_amo_data : _GEN_116; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_amo_mask = io_in_0_valid ? io_in_0_bits_amo_mask : _GEN_115; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_error = io_in_0_valid ? io_in_0_bits_error : _GEN_114; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_replace = io_in_0_valid ? io_in_0_bits_replace : _GEN_113; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_replace_way_en = io_in_0_valid ? io_in_0_bits_replace_way_en : _GEN_112; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : _GEN_111; // @[Arbiter.scala 141:26 143:19]
endmodule
