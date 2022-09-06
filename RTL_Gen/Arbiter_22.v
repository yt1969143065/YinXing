module Arbiter_22(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [1:0]  io_in_0_bits_source,
  input  [35:0] io_in_0_bits_addr,
  input  [3:0]  io_in_0_bits_way_en,
  input  [7:0]  io_in_0_bits_wmask,
  input  [63:0] io_in_0_bits_data_0,
  input  [63:0] io_in_0_bits_data_1,
  input  [63:0] io_in_0_bits_data_2,
  input  [63:0] io_in_0_bits_data_3,
  input  [63:0] io_in_0_bits_data_4,
  input  [63:0] io_in_0_bits_data_5,
  input  [63:0] io_in_0_bits_data_6,
  input  [63:0] io_in_0_bits_data_7,
  input  [1:0]  io_in_0_bits_meta_coh_state,
  input  [1:0]  io_in_0_bits_alias,
  input  [2:0]  io_in_0_bits_miss_id,
  input  [63:0] io_in_0_bits_id,
  input         io_in_0_bits_error,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [1:0]  io_in_1_bits_source,
  input  [35:0] io_in_1_bits_addr,
  input  [3:0]  io_in_1_bits_way_en,
  input  [7:0]  io_in_1_bits_wmask,
  input  [63:0] io_in_1_bits_data_0,
  input  [63:0] io_in_1_bits_data_1,
  input  [63:0] io_in_1_bits_data_2,
  input  [63:0] io_in_1_bits_data_3,
  input  [63:0] io_in_1_bits_data_4,
  input  [63:0] io_in_1_bits_data_5,
  input  [63:0] io_in_1_bits_data_6,
  input  [63:0] io_in_1_bits_data_7,
  input  [1:0]  io_in_1_bits_meta_coh_state,
  input  [1:0]  io_in_1_bits_alias,
  input  [2:0]  io_in_1_bits_miss_id,
  input  [63:0] io_in_1_bits_id,
  input         io_in_1_bits_error,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [1:0]  io_in_2_bits_source,
  input  [35:0] io_in_2_bits_addr,
  input  [3:0]  io_in_2_bits_way_en,
  input  [7:0]  io_in_2_bits_wmask,
  input  [63:0] io_in_2_bits_data_0,
  input  [63:0] io_in_2_bits_data_1,
  input  [63:0] io_in_2_bits_data_2,
  input  [63:0] io_in_2_bits_data_3,
  input  [63:0] io_in_2_bits_data_4,
  input  [63:0] io_in_2_bits_data_5,
  input  [63:0] io_in_2_bits_data_6,
  input  [63:0] io_in_2_bits_data_7,
  input  [1:0]  io_in_2_bits_meta_coh_state,
  input  [1:0]  io_in_2_bits_alias,
  input  [2:0]  io_in_2_bits_miss_id,
  input  [63:0] io_in_2_bits_id,
  input         io_in_2_bits_error,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [1:0]  io_in_3_bits_source,
  input  [35:0] io_in_3_bits_addr,
  input  [3:0]  io_in_3_bits_way_en,
  input  [7:0]  io_in_3_bits_wmask,
  input  [63:0] io_in_3_bits_data_0,
  input  [63:0] io_in_3_bits_data_1,
  input  [63:0] io_in_3_bits_data_2,
  input  [63:0] io_in_3_bits_data_3,
  input  [63:0] io_in_3_bits_data_4,
  input  [63:0] io_in_3_bits_data_5,
  input  [63:0] io_in_3_bits_data_6,
  input  [63:0] io_in_3_bits_data_7,
  input  [1:0]  io_in_3_bits_meta_coh_state,
  input  [1:0]  io_in_3_bits_alias,
  input  [2:0]  io_in_3_bits_miss_id,
  input  [63:0] io_in_3_bits_id,
  input         io_in_3_bits_error,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [1:0]  io_in_4_bits_source,
  input  [35:0] io_in_4_bits_addr,
  input  [3:0]  io_in_4_bits_way_en,
  input  [7:0]  io_in_4_bits_wmask,
  input  [63:0] io_in_4_bits_data_0,
  input  [63:0] io_in_4_bits_data_1,
  input  [63:0] io_in_4_bits_data_2,
  input  [63:0] io_in_4_bits_data_3,
  input  [63:0] io_in_4_bits_data_4,
  input  [63:0] io_in_4_bits_data_5,
  input  [63:0] io_in_4_bits_data_6,
  input  [63:0] io_in_4_bits_data_7,
  input  [1:0]  io_in_4_bits_meta_coh_state,
  input  [1:0]  io_in_4_bits_alias,
  input  [2:0]  io_in_4_bits_miss_id,
  input  [63:0] io_in_4_bits_id,
  input         io_in_4_bits_error,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [1:0]  io_in_5_bits_source,
  input  [35:0] io_in_5_bits_addr,
  input  [3:0]  io_in_5_bits_way_en,
  input  [7:0]  io_in_5_bits_wmask,
  input  [63:0] io_in_5_bits_data_0,
  input  [63:0] io_in_5_bits_data_1,
  input  [63:0] io_in_5_bits_data_2,
  input  [63:0] io_in_5_bits_data_3,
  input  [63:0] io_in_5_bits_data_4,
  input  [63:0] io_in_5_bits_data_5,
  input  [63:0] io_in_5_bits_data_6,
  input  [63:0] io_in_5_bits_data_7,
  input  [1:0]  io_in_5_bits_meta_coh_state,
  input  [1:0]  io_in_5_bits_alias,
  input  [2:0]  io_in_5_bits_miss_id,
  input  [63:0] io_in_5_bits_id,
  input         io_in_5_bits_error,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [1:0]  io_in_6_bits_source,
  input  [35:0] io_in_6_bits_addr,
  input  [3:0]  io_in_6_bits_way_en,
  input  [7:0]  io_in_6_bits_wmask,
  input  [63:0] io_in_6_bits_data_0,
  input  [63:0] io_in_6_bits_data_1,
  input  [63:0] io_in_6_bits_data_2,
  input  [63:0] io_in_6_bits_data_3,
  input  [63:0] io_in_6_bits_data_4,
  input  [63:0] io_in_6_bits_data_5,
  input  [63:0] io_in_6_bits_data_6,
  input  [63:0] io_in_6_bits_data_7,
  input  [1:0]  io_in_6_bits_meta_coh_state,
  input  [1:0]  io_in_6_bits_alias,
  input  [2:0]  io_in_6_bits_miss_id,
  input  [63:0] io_in_6_bits_id,
  input         io_in_6_bits_error,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [1:0]  io_in_7_bits_source,
  input  [35:0] io_in_7_bits_addr,
  input  [3:0]  io_in_7_bits_way_en,
  input  [7:0]  io_in_7_bits_wmask,
  input  [63:0] io_in_7_bits_data_0,
  input  [63:0] io_in_7_bits_data_1,
  input  [63:0] io_in_7_bits_data_2,
  input  [63:0] io_in_7_bits_data_3,
  input  [63:0] io_in_7_bits_data_4,
  input  [63:0] io_in_7_bits_data_5,
  input  [63:0] io_in_7_bits_data_6,
  input  [63:0] io_in_7_bits_data_7,
  input  [1:0]  io_in_7_bits_meta_coh_state,
  input  [1:0]  io_in_7_bits_alias,
  input  [2:0]  io_in_7_bits_miss_id,
  input  [63:0] io_in_7_bits_id,
  input         io_in_7_bits_error,
  input         io_out_ready,
  output        io_out_valid,
  output [1:0]  io_out_bits_source,
  output [35:0] io_out_bits_addr,
  output [3:0]  io_out_bits_way_en,
  output [7:0]  io_out_bits_wmask,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7,
  output [1:0]  io_out_bits_meta_coh_state,
  output [1:0]  io_out_bits_alias,
  output [2:0]  io_out_bits_miss_id,
  output [63:0] io_out_bits_id,
  output        io_out_bits_error
);
  wire  _GEN_1 = io_in_6_valid ? io_in_6_bits_error : io_in_7_bits_error; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_2 = io_in_6_valid ? io_in_6_bits_id : io_in_7_bits_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [2:0] _GEN_3 = io_in_6_valid ? io_in_6_bits_miss_id : io_in_7_bits_miss_id; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_4 = io_in_6_valid ? io_in_6_bits_alias : io_in_7_bits_alias; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_5 = io_in_6_valid ? io_in_6_bits_meta_coh_state : io_in_7_bits_meta_coh_state; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_6 = io_in_6_valid ? io_in_6_bits_data_0 : io_in_7_bits_data_0; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_7 = io_in_6_valid ? io_in_6_bits_data_1 : io_in_7_bits_data_1; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_8 = io_in_6_valid ? io_in_6_bits_data_2 : io_in_7_bits_data_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_9 = io_in_6_valid ? io_in_6_bits_data_3 : io_in_7_bits_data_3; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_10 = io_in_6_valid ? io_in_6_bits_data_4 : io_in_7_bits_data_4; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_11 = io_in_6_valid ? io_in_6_bits_data_5 : io_in_7_bits_data_5; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_12 = io_in_6_valid ? io_in_6_bits_data_6 : io_in_7_bits_data_6; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_13 = io_in_6_valid ? io_in_6_bits_data_7 : io_in_7_bits_data_7; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_14 = io_in_6_valid ? io_in_6_bits_wmask : io_in_7_bits_wmask; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_15 = io_in_6_valid ? io_in_6_bits_way_en : io_in_7_bits_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [35:0] _GEN_16 = io_in_6_valid ? io_in_6_bits_addr : io_in_7_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_17 = io_in_6_valid ? io_in_6_bits_source : io_in_7_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_19 = io_in_5_valid ? io_in_5_bits_error : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_20 = io_in_5_valid ? io_in_5_bits_id : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_21 = io_in_5_valid ? io_in_5_bits_miss_id : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_22 = io_in_5_valid ? io_in_5_bits_alias : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_23 = io_in_5_valid ? io_in_5_bits_meta_coh_state : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_24 = io_in_5_valid ? io_in_5_bits_data_0 : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_25 = io_in_5_valid ? io_in_5_bits_data_1 : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_26 = io_in_5_valid ? io_in_5_bits_data_2 : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_27 = io_in_5_valid ? io_in_5_bits_data_3 : _GEN_9; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_28 = io_in_5_valid ? io_in_5_bits_data_4 : _GEN_10; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_29 = io_in_5_valid ? io_in_5_bits_data_5 : _GEN_11; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_30 = io_in_5_valid ? io_in_5_bits_data_6 : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_31 = io_in_5_valid ? io_in_5_bits_data_7 : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_32 = io_in_5_valid ? io_in_5_bits_wmask : _GEN_14; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_33 = io_in_5_valid ? io_in_5_bits_way_en : _GEN_15; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_34 = io_in_5_valid ? io_in_5_bits_addr : _GEN_16; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_35 = io_in_5_valid ? io_in_5_bits_source : _GEN_17; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_37 = io_in_4_valid ? io_in_4_bits_error : _GEN_19; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_38 = io_in_4_valid ? io_in_4_bits_id : _GEN_20; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_39 = io_in_4_valid ? io_in_4_bits_miss_id : _GEN_21; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_40 = io_in_4_valid ? io_in_4_bits_alias : _GEN_22; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_41 = io_in_4_valid ? io_in_4_bits_meta_coh_state : _GEN_23; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_42 = io_in_4_valid ? io_in_4_bits_data_0 : _GEN_24; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_43 = io_in_4_valid ? io_in_4_bits_data_1 : _GEN_25; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_44 = io_in_4_valid ? io_in_4_bits_data_2 : _GEN_26; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_45 = io_in_4_valid ? io_in_4_bits_data_3 : _GEN_27; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_46 = io_in_4_valid ? io_in_4_bits_data_4 : _GEN_28; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_47 = io_in_4_valid ? io_in_4_bits_data_5 : _GEN_29; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_48 = io_in_4_valid ? io_in_4_bits_data_6 : _GEN_30; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_49 = io_in_4_valid ? io_in_4_bits_data_7 : _GEN_31; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_50 = io_in_4_valid ? io_in_4_bits_wmask : _GEN_32; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_51 = io_in_4_valid ? io_in_4_bits_way_en : _GEN_33; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_52 = io_in_4_valid ? io_in_4_bits_addr : _GEN_34; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_53 = io_in_4_valid ? io_in_4_bits_source : _GEN_35; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_55 = io_in_3_valid ? io_in_3_bits_error : _GEN_37; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_56 = io_in_3_valid ? io_in_3_bits_id : _GEN_38; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_57 = io_in_3_valid ? io_in_3_bits_miss_id : _GEN_39; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_58 = io_in_3_valid ? io_in_3_bits_alias : _GEN_40; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_59 = io_in_3_valid ? io_in_3_bits_meta_coh_state : _GEN_41; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_60 = io_in_3_valid ? io_in_3_bits_data_0 : _GEN_42; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_61 = io_in_3_valid ? io_in_3_bits_data_1 : _GEN_43; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_62 = io_in_3_valid ? io_in_3_bits_data_2 : _GEN_44; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_63 = io_in_3_valid ? io_in_3_bits_data_3 : _GEN_45; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_64 = io_in_3_valid ? io_in_3_bits_data_4 : _GEN_46; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_65 = io_in_3_valid ? io_in_3_bits_data_5 : _GEN_47; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_66 = io_in_3_valid ? io_in_3_bits_data_6 : _GEN_48; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_67 = io_in_3_valid ? io_in_3_bits_data_7 : _GEN_49; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_68 = io_in_3_valid ? io_in_3_bits_wmask : _GEN_50; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_69 = io_in_3_valid ? io_in_3_bits_way_en : _GEN_51; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_70 = io_in_3_valid ? io_in_3_bits_addr : _GEN_52; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_71 = io_in_3_valid ? io_in_3_bits_source : _GEN_53; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_73 = io_in_2_valid ? io_in_2_bits_error : _GEN_55; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_74 = io_in_2_valid ? io_in_2_bits_id : _GEN_56; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_75 = io_in_2_valid ? io_in_2_bits_miss_id : _GEN_57; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_76 = io_in_2_valid ? io_in_2_bits_alias : _GEN_58; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_77 = io_in_2_valid ? io_in_2_bits_meta_coh_state : _GEN_59; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_78 = io_in_2_valid ? io_in_2_bits_data_0 : _GEN_60; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_79 = io_in_2_valid ? io_in_2_bits_data_1 : _GEN_61; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_80 = io_in_2_valid ? io_in_2_bits_data_2 : _GEN_62; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_81 = io_in_2_valid ? io_in_2_bits_data_3 : _GEN_63; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_82 = io_in_2_valid ? io_in_2_bits_data_4 : _GEN_64; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_83 = io_in_2_valid ? io_in_2_bits_data_5 : _GEN_65; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_84 = io_in_2_valid ? io_in_2_bits_data_6 : _GEN_66; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_85 = io_in_2_valid ? io_in_2_bits_data_7 : _GEN_67; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_86 = io_in_2_valid ? io_in_2_bits_wmask : _GEN_68; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_87 = io_in_2_valid ? io_in_2_bits_way_en : _GEN_69; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_88 = io_in_2_valid ? io_in_2_bits_addr : _GEN_70; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_89 = io_in_2_valid ? io_in_2_bits_source : _GEN_71; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_91 = io_in_1_valid ? io_in_1_bits_error : _GEN_73; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_92 = io_in_1_valid ? io_in_1_bits_id : _GEN_74; // @[Arbiter.scala 141:26 143:19]
  wire [2:0] _GEN_93 = io_in_1_valid ? io_in_1_bits_miss_id : _GEN_75; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_94 = io_in_1_valid ? io_in_1_bits_alias : _GEN_76; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_95 = io_in_1_valid ? io_in_1_bits_meta_coh_state : _GEN_77; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_96 = io_in_1_valid ? io_in_1_bits_data_0 : _GEN_78; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_97 = io_in_1_valid ? io_in_1_bits_data_1 : _GEN_79; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_98 = io_in_1_valid ? io_in_1_bits_data_2 : _GEN_80; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_99 = io_in_1_valid ? io_in_1_bits_data_3 : _GEN_81; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_100 = io_in_1_valid ? io_in_1_bits_data_4 : _GEN_82; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_101 = io_in_1_valid ? io_in_1_bits_data_5 : _GEN_83; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_102 = io_in_1_valid ? io_in_1_bits_data_6 : _GEN_84; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_103 = io_in_1_valid ? io_in_1_bits_data_7 : _GEN_85; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_104 = io_in_1_valid ? io_in_1_bits_wmask : _GEN_86; // @[Arbiter.scala 141:26 143:19]
  wire [3:0] _GEN_105 = io_in_1_valid ? io_in_1_bits_way_en : _GEN_87; // @[Arbiter.scala 141:26 143:19]
  wire [35:0] _GEN_106 = io_in_1_valid ? io_in_1_bits_addr : _GEN_88; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_107 = io_in_1_valid ? io_in_1_bits_source : _GEN_89; // @[Arbiter.scala 141:26 143:19]
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
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : _GEN_107; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_106; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en : _GEN_105; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_wmask = io_in_0_valid ? io_in_0_bits_wmask : _GEN_104; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_0 = io_in_0_valid ? io_in_0_bits_data_0 : _GEN_96; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_1 = io_in_0_valid ? io_in_0_bits_data_1 : _GEN_97; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_2 = io_in_0_valid ? io_in_0_bits_data_2 : _GEN_98; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_3 = io_in_0_valid ? io_in_0_bits_data_3 : _GEN_99; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_4 = io_in_0_valid ? io_in_0_bits_data_4 : _GEN_100; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_5 = io_in_0_valid ? io_in_0_bits_data_5 : _GEN_101; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_6 = io_in_0_valid ? io_in_0_bits_data_6 : _GEN_102; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_7 = io_in_0_valid ? io_in_0_bits_data_7 : _GEN_103; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_meta_coh_state = io_in_0_valid ? io_in_0_bits_meta_coh_state : _GEN_95; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_alias = io_in_0_valid ? io_in_0_bits_alias : _GEN_94; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_miss_id = io_in_0_valid ? io_in_0_bits_miss_id : _GEN_93; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? io_in_0_bits_id : _GEN_92; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_error = io_in_0_valid ? io_in_0_bits_error : _GEN_91; // @[Arbiter.scala 141:26 143:19]
endmodule
