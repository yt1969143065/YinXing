module MiscModule(
  input         clock,
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] _xpermnVec_0_T_18 = 4'h1 == io_src_1[3:0] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_20 = 4'h2 == io_src_1[3:0] ? io_src_0[11:8] : _xpermnVec_0_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_22 = 4'h3 == io_src_1[3:0] ? io_src_0[15:12] : _xpermnVec_0_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_24 = 4'h4 == io_src_1[3:0] ? io_src_0[19:16] : _xpermnVec_0_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_26 = 4'h5 == io_src_1[3:0] ? io_src_0[23:20] : _xpermnVec_0_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_28 = 4'h6 == io_src_1[3:0] ? io_src_0[27:24] : _xpermnVec_0_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_30 = 4'h7 == io_src_1[3:0] ? io_src_0[31:28] : _xpermnVec_0_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_32 = 4'h8 == io_src_1[3:0] ? io_src_0[35:32] : _xpermnVec_0_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_34 = 4'h9 == io_src_1[3:0] ? io_src_0[39:36] : _xpermnVec_0_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_36 = 4'ha == io_src_1[3:0] ? io_src_0[43:40] : _xpermnVec_0_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_38 = 4'hb == io_src_1[3:0] ? io_src_0[47:44] : _xpermnVec_0_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_40 = 4'hc == io_src_1[3:0] ? io_src_0[51:48] : _xpermnVec_0_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_42 = 4'hd == io_src_1[3:0] ? io_src_0[55:52] : _xpermnVec_0_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_0_T_44 = 4'he == io_src_1[3:0] ? io_src_0[59:56] : _xpermnVec_0_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_0 = 4'hf == io_src_1[3:0] ? io_src_0[63:60] : _xpermnVec_0_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_18 = 4'h1 == io_src_1[7:4] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_20 = 4'h2 == io_src_1[7:4] ? io_src_0[11:8] : _xpermnVec_1_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_22 = 4'h3 == io_src_1[7:4] ? io_src_0[15:12] : _xpermnVec_1_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_24 = 4'h4 == io_src_1[7:4] ? io_src_0[19:16] : _xpermnVec_1_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_26 = 4'h5 == io_src_1[7:4] ? io_src_0[23:20] : _xpermnVec_1_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_28 = 4'h6 == io_src_1[7:4] ? io_src_0[27:24] : _xpermnVec_1_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_30 = 4'h7 == io_src_1[7:4] ? io_src_0[31:28] : _xpermnVec_1_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_32 = 4'h8 == io_src_1[7:4] ? io_src_0[35:32] : _xpermnVec_1_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_34 = 4'h9 == io_src_1[7:4] ? io_src_0[39:36] : _xpermnVec_1_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_36 = 4'ha == io_src_1[7:4] ? io_src_0[43:40] : _xpermnVec_1_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_38 = 4'hb == io_src_1[7:4] ? io_src_0[47:44] : _xpermnVec_1_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_40 = 4'hc == io_src_1[7:4] ? io_src_0[51:48] : _xpermnVec_1_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_42 = 4'hd == io_src_1[7:4] ? io_src_0[55:52] : _xpermnVec_1_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_1_T_44 = 4'he == io_src_1[7:4] ? io_src_0[59:56] : _xpermnVec_1_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_1 = 4'hf == io_src_1[7:4] ? io_src_0[63:60] : _xpermnVec_1_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_18 = 4'h1 == io_src_1[11:8] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_20 = 4'h2 == io_src_1[11:8] ? io_src_0[11:8] : _xpermnVec_2_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_22 = 4'h3 == io_src_1[11:8] ? io_src_0[15:12] : _xpermnVec_2_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_24 = 4'h4 == io_src_1[11:8] ? io_src_0[19:16] : _xpermnVec_2_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_26 = 4'h5 == io_src_1[11:8] ? io_src_0[23:20] : _xpermnVec_2_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_28 = 4'h6 == io_src_1[11:8] ? io_src_0[27:24] : _xpermnVec_2_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_30 = 4'h7 == io_src_1[11:8] ? io_src_0[31:28] : _xpermnVec_2_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_32 = 4'h8 == io_src_1[11:8] ? io_src_0[35:32] : _xpermnVec_2_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_34 = 4'h9 == io_src_1[11:8] ? io_src_0[39:36] : _xpermnVec_2_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_36 = 4'ha == io_src_1[11:8] ? io_src_0[43:40] : _xpermnVec_2_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_38 = 4'hb == io_src_1[11:8] ? io_src_0[47:44] : _xpermnVec_2_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_40 = 4'hc == io_src_1[11:8] ? io_src_0[51:48] : _xpermnVec_2_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_42 = 4'hd == io_src_1[11:8] ? io_src_0[55:52] : _xpermnVec_2_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_2_T_44 = 4'he == io_src_1[11:8] ? io_src_0[59:56] : _xpermnVec_2_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_2 = 4'hf == io_src_1[11:8] ? io_src_0[63:60] : _xpermnVec_2_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_18 = 4'h1 == io_src_1[15:12] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_20 = 4'h2 == io_src_1[15:12] ? io_src_0[11:8] : _xpermnVec_3_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_22 = 4'h3 == io_src_1[15:12] ? io_src_0[15:12] : _xpermnVec_3_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_24 = 4'h4 == io_src_1[15:12] ? io_src_0[19:16] : _xpermnVec_3_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_26 = 4'h5 == io_src_1[15:12] ? io_src_0[23:20] : _xpermnVec_3_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_28 = 4'h6 == io_src_1[15:12] ? io_src_0[27:24] : _xpermnVec_3_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_30 = 4'h7 == io_src_1[15:12] ? io_src_0[31:28] : _xpermnVec_3_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_32 = 4'h8 == io_src_1[15:12] ? io_src_0[35:32] : _xpermnVec_3_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_34 = 4'h9 == io_src_1[15:12] ? io_src_0[39:36] : _xpermnVec_3_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_36 = 4'ha == io_src_1[15:12] ? io_src_0[43:40] : _xpermnVec_3_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_38 = 4'hb == io_src_1[15:12] ? io_src_0[47:44] : _xpermnVec_3_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_40 = 4'hc == io_src_1[15:12] ? io_src_0[51:48] : _xpermnVec_3_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_42 = 4'hd == io_src_1[15:12] ? io_src_0[55:52] : _xpermnVec_3_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_3_T_44 = 4'he == io_src_1[15:12] ? io_src_0[59:56] : _xpermnVec_3_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_3 = 4'hf == io_src_1[15:12] ? io_src_0[63:60] : _xpermnVec_3_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_18 = 4'h1 == io_src_1[19:16] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_20 = 4'h2 == io_src_1[19:16] ? io_src_0[11:8] : _xpermnVec_4_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_22 = 4'h3 == io_src_1[19:16] ? io_src_0[15:12] : _xpermnVec_4_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_24 = 4'h4 == io_src_1[19:16] ? io_src_0[19:16] : _xpermnVec_4_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_26 = 4'h5 == io_src_1[19:16] ? io_src_0[23:20] : _xpermnVec_4_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_28 = 4'h6 == io_src_1[19:16] ? io_src_0[27:24] : _xpermnVec_4_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_30 = 4'h7 == io_src_1[19:16] ? io_src_0[31:28] : _xpermnVec_4_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_32 = 4'h8 == io_src_1[19:16] ? io_src_0[35:32] : _xpermnVec_4_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_34 = 4'h9 == io_src_1[19:16] ? io_src_0[39:36] : _xpermnVec_4_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_36 = 4'ha == io_src_1[19:16] ? io_src_0[43:40] : _xpermnVec_4_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_38 = 4'hb == io_src_1[19:16] ? io_src_0[47:44] : _xpermnVec_4_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_40 = 4'hc == io_src_1[19:16] ? io_src_0[51:48] : _xpermnVec_4_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_42 = 4'hd == io_src_1[19:16] ? io_src_0[55:52] : _xpermnVec_4_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_4_T_44 = 4'he == io_src_1[19:16] ? io_src_0[59:56] : _xpermnVec_4_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_4 = 4'hf == io_src_1[19:16] ? io_src_0[63:60] : _xpermnVec_4_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_18 = 4'h1 == io_src_1[23:20] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_20 = 4'h2 == io_src_1[23:20] ? io_src_0[11:8] : _xpermnVec_5_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_22 = 4'h3 == io_src_1[23:20] ? io_src_0[15:12] : _xpermnVec_5_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_24 = 4'h4 == io_src_1[23:20] ? io_src_0[19:16] : _xpermnVec_5_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_26 = 4'h5 == io_src_1[23:20] ? io_src_0[23:20] : _xpermnVec_5_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_28 = 4'h6 == io_src_1[23:20] ? io_src_0[27:24] : _xpermnVec_5_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_30 = 4'h7 == io_src_1[23:20] ? io_src_0[31:28] : _xpermnVec_5_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_32 = 4'h8 == io_src_1[23:20] ? io_src_0[35:32] : _xpermnVec_5_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_34 = 4'h9 == io_src_1[23:20] ? io_src_0[39:36] : _xpermnVec_5_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_36 = 4'ha == io_src_1[23:20] ? io_src_0[43:40] : _xpermnVec_5_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_38 = 4'hb == io_src_1[23:20] ? io_src_0[47:44] : _xpermnVec_5_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_40 = 4'hc == io_src_1[23:20] ? io_src_0[51:48] : _xpermnVec_5_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_42 = 4'hd == io_src_1[23:20] ? io_src_0[55:52] : _xpermnVec_5_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_5_T_44 = 4'he == io_src_1[23:20] ? io_src_0[59:56] : _xpermnVec_5_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_5 = 4'hf == io_src_1[23:20] ? io_src_0[63:60] : _xpermnVec_5_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_18 = 4'h1 == io_src_1[27:24] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_20 = 4'h2 == io_src_1[27:24] ? io_src_0[11:8] : _xpermnVec_6_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_22 = 4'h3 == io_src_1[27:24] ? io_src_0[15:12] : _xpermnVec_6_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_24 = 4'h4 == io_src_1[27:24] ? io_src_0[19:16] : _xpermnVec_6_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_26 = 4'h5 == io_src_1[27:24] ? io_src_0[23:20] : _xpermnVec_6_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_28 = 4'h6 == io_src_1[27:24] ? io_src_0[27:24] : _xpermnVec_6_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_30 = 4'h7 == io_src_1[27:24] ? io_src_0[31:28] : _xpermnVec_6_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_32 = 4'h8 == io_src_1[27:24] ? io_src_0[35:32] : _xpermnVec_6_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_34 = 4'h9 == io_src_1[27:24] ? io_src_0[39:36] : _xpermnVec_6_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_36 = 4'ha == io_src_1[27:24] ? io_src_0[43:40] : _xpermnVec_6_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_38 = 4'hb == io_src_1[27:24] ? io_src_0[47:44] : _xpermnVec_6_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_40 = 4'hc == io_src_1[27:24] ? io_src_0[51:48] : _xpermnVec_6_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_42 = 4'hd == io_src_1[27:24] ? io_src_0[55:52] : _xpermnVec_6_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_6_T_44 = 4'he == io_src_1[27:24] ? io_src_0[59:56] : _xpermnVec_6_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_6 = 4'hf == io_src_1[27:24] ? io_src_0[63:60] : _xpermnVec_6_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_18 = 4'h1 == io_src_1[31:28] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_20 = 4'h2 == io_src_1[31:28] ? io_src_0[11:8] : _xpermnVec_7_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_22 = 4'h3 == io_src_1[31:28] ? io_src_0[15:12] : _xpermnVec_7_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_24 = 4'h4 == io_src_1[31:28] ? io_src_0[19:16] : _xpermnVec_7_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_26 = 4'h5 == io_src_1[31:28] ? io_src_0[23:20] : _xpermnVec_7_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_28 = 4'h6 == io_src_1[31:28] ? io_src_0[27:24] : _xpermnVec_7_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_30 = 4'h7 == io_src_1[31:28] ? io_src_0[31:28] : _xpermnVec_7_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_32 = 4'h8 == io_src_1[31:28] ? io_src_0[35:32] : _xpermnVec_7_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_34 = 4'h9 == io_src_1[31:28] ? io_src_0[39:36] : _xpermnVec_7_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_36 = 4'ha == io_src_1[31:28] ? io_src_0[43:40] : _xpermnVec_7_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_38 = 4'hb == io_src_1[31:28] ? io_src_0[47:44] : _xpermnVec_7_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_40 = 4'hc == io_src_1[31:28] ? io_src_0[51:48] : _xpermnVec_7_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_42 = 4'hd == io_src_1[31:28] ? io_src_0[55:52] : _xpermnVec_7_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_7_T_44 = 4'he == io_src_1[31:28] ? io_src_0[59:56] : _xpermnVec_7_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_7 = 4'hf == io_src_1[31:28] ? io_src_0[63:60] : _xpermnVec_7_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_18 = 4'h1 == io_src_1[35:32] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_20 = 4'h2 == io_src_1[35:32] ? io_src_0[11:8] : _xpermnVec_8_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_22 = 4'h3 == io_src_1[35:32] ? io_src_0[15:12] : _xpermnVec_8_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_24 = 4'h4 == io_src_1[35:32] ? io_src_0[19:16] : _xpermnVec_8_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_26 = 4'h5 == io_src_1[35:32] ? io_src_0[23:20] : _xpermnVec_8_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_28 = 4'h6 == io_src_1[35:32] ? io_src_0[27:24] : _xpermnVec_8_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_30 = 4'h7 == io_src_1[35:32] ? io_src_0[31:28] : _xpermnVec_8_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_32 = 4'h8 == io_src_1[35:32] ? io_src_0[35:32] : _xpermnVec_8_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_34 = 4'h9 == io_src_1[35:32] ? io_src_0[39:36] : _xpermnVec_8_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_36 = 4'ha == io_src_1[35:32] ? io_src_0[43:40] : _xpermnVec_8_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_38 = 4'hb == io_src_1[35:32] ? io_src_0[47:44] : _xpermnVec_8_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_40 = 4'hc == io_src_1[35:32] ? io_src_0[51:48] : _xpermnVec_8_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_42 = 4'hd == io_src_1[35:32] ? io_src_0[55:52] : _xpermnVec_8_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_8_T_44 = 4'he == io_src_1[35:32] ? io_src_0[59:56] : _xpermnVec_8_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_8 = 4'hf == io_src_1[35:32] ? io_src_0[63:60] : _xpermnVec_8_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_18 = 4'h1 == io_src_1[39:36] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_20 = 4'h2 == io_src_1[39:36] ? io_src_0[11:8] : _xpermnVec_9_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_22 = 4'h3 == io_src_1[39:36] ? io_src_0[15:12] : _xpermnVec_9_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_24 = 4'h4 == io_src_1[39:36] ? io_src_0[19:16] : _xpermnVec_9_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_26 = 4'h5 == io_src_1[39:36] ? io_src_0[23:20] : _xpermnVec_9_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_28 = 4'h6 == io_src_1[39:36] ? io_src_0[27:24] : _xpermnVec_9_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_30 = 4'h7 == io_src_1[39:36] ? io_src_0[31:28] : _xpermnVec_9_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_32 = 4'h8 == io_src_1[39:36] ? io_src_0[35:32] : _xpermnVec_9_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_34 = 4'h9 == io_src_1[39:36] ? io_src_0[39:36] : _xpermnVec_9_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_36 = 4'ha == io_src_1[39:36] ? io_src_0[43:40] : _xpermnVec_9_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_38 = 4'hb == io_src_1[39:36] ? io_src_0[47:44] : _xpermnVec_9_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_40 = 4'hc == io_src_1[39:36] ? io_src_0[51:48] : _xpermnVec_9_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_42 = 4'hd == io_src_1[39:36] ? io_src_0[55:52] : _xpermnVec_9_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_9_T_44 = 4'he == io_src_1[39:36] ? io_src_0[59:56] : _xpermnVec_9_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_9 = 4'hf == io_src_1[39:36] ? io_src_0[63:60] : _xpermnVec_9_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_18 = 4'h1 == io_src_1[43:40] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_20 = 4'h2 == io_src_1[43:40] ? io_src_0[11:8] : _xpermnVec_10_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_22 = 4'h3 == io_src_1[43:40] ? io_src_0[15:12] : _xpermnVec_10_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_24 = 4'h4 == io_src_1[43:40] ? io_src_0[19:16] : _xpermnVec_10_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_26 = 4'h5 == io_src_1[43:40] ? io_src_0[23:20] : _xpermnVec_10_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_28 = 4'h6 == io_src_1[43:40] ? io_src_0[27:24] : _xpermnVec_10_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_30 = 4'h7 == io_src_1[43:40] ? io_src_0[31:28] : _xpermnVec_10_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_32 = 4'h8 == io_src_1[43:40] ? io_src_0[35:32] : _xpermnVec_10_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_34 = 4'h9 == io_src_1[43:40] ? io_src_0[39:36] : _xpermnVec_10_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_36 = 4'ha == io_src_1[43:40] ? io_src_0[43:40] : _xpermnVec_10_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_38 = 4'hb == io_src_1[43:40] ? io_src_0[47:44] : _xpermnVec_10_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_40 = 4'hc == io_src_1[43:40] ? io_src_0[51:48] : _xpermnVec_10_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_42 = 4'hd == io_src_1[43:40] ? io_src_0[55:52] : _xpermnVec_10_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_10_T_44 = 4'he == io_src_1[43:40] ? io_src_0[59:56] : _xpermnVec_10_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_10 = 4'hf == io_src_1[43:40] ? io_src_0[63:60] : _xpermnVec_10_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_18 = 4'h1 == io_src_1[47:44] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_20 = 4'h2 == io_src_1[47:44] ? io_src_0[11:8] : _xpermnVec_11_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_22 = 4'h3 == io_src_1[47:44] ? io_src_0[15:12] : _xpermnVec_11_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_24 = 4'h4 == io_src_1[47:44] ? io_src_0[19:16] : _xpermnVec_11_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_26 = 4'h5 == io_src_1[47:44] ? io_src_0[23:20] : _xpermnVec_11_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_28 = 4'h6 == io_src_1[47:44] ? io_src_0[27:24] : _xpermnVec_11_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_30 = 4'h7 == io_src_1[47:44] ? io_src_0[31:28] : _xpermnVec_11_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_32 = 4'h8 == io_src_1[47:44] ? io_src_0[35:32] : _xpermnVec_11_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_34 = 4'h9 == io_src_1[47:44] ? io_src_0[39:36] : _xpermnVec_11_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_36 = 4'ha == io_src_1[47:44] ? io_src_0[43:40] : _xpermnVec_11_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_38 = 4'hb == io_src_1[47:44] ? io_src_0[47:44] : _xpermnVec_11_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_40 = 4'hc == io_src_1[47:44] ? io_src_0[51:48] : _xpermnVec_11_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_42 = 4'hd == io_src_1[47:44] ? io_src_0[55:52] : _xpermnVec_11_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_11_T_44 = 4'he == io_src_1[47:44] ? io_src_0[59:56] : _xpermnVec_11_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_11 = 4'hf == io_src_1[47:44] ? io_src_0[63:60] : _xpermnVec_11_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_18 = 4'h1 == io_src_1[51:48] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_20 = 4'h2 == io_src_1[51:48] ? io_src_0[11:8] : _xpermnVec_12_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_22 = 4'h3 == io_src_1[51:48] ? io_src_0[15:12] : _xpermnVec_12_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_24 = 4'h4 == io_src_1[51:48] ? io_src_0[19:16] : _xpermnVec_12_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_26 = 4'h5 == io_src_1[51:48] ? io_src_0[23:20] : _xpermnVec_12_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_28 = 4'h6 == io_src_1[51:48] ? io_src_0[27:24] : _xpermnVec_12_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_30 = 4'h7 == io_src_1[51:48] ? io_src_0[31:28] : _xpermnVec_12_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_32 = 4'h8 == io_src_1[51:48] ? io_src_0[35:32] : _xpermnVec_12_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_34 = 4'h9 == io_src_1[51:48] ? io_src_0[39:36] : _xpermnVec_12_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_36 = 4'ha == io_src_1[51:48] ? io_src_0[43:40] : _xpermnVec_12_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_38 = 4'hb == io_src_1[51:48] ? io_src_0[47:44] : _xpermnVec_12_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_40 = 4'hc == io_src_1[51:48] ? io_src_0[51:48] : _xpermnVec_12_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_42 = 4'hd == io_src_1[51:48] ? io_src_0[55:52] : _xpermnVec_12_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_12_T_44 = 4'he == io_src_1[51:48] ? io_src_0[59:56] : _xpermnVec_12_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_12 = 4'hf == io_src_1[51:48] ? io_src_0[63:60] : _xpermnVec_12_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_18 = 4'h1 == io_src_1[55:52] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_20 = 4'h2 == io_src_1[55:52] ? io_src_0[11:8] : _xpermnVec_13_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_22 = 4'h3 == io_src_1[55:52] ? io_src_0[15:12] : _xpermnVec_13_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_24 = 4'h4 == io_src_1[55:52] ? io_src_0[19:16] : _xpermnVec_13_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_26 = 4'h5 == io_src_1[55:52] ? io_src_0[23:20] : _xpermnVec_13_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_28 = 4'h6 == io_src_1[55:52] ? io_src_0[27:24] : _xpermnVec_13_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_30 = 4'h7 == io_src_1[55:52] ? io_src_0[31:28] : _xpermnVec_13_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_32 = 4'h8 == io_src_1[55:52] ? io_src_0[35:32] : _xpermnVec_13_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_34 = 4'h9 == io_src_1[55:52] ? io_src_0[39:36] : _xpermnVec_13_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_36 = 4'ha == io_src_1[55:52] ? io_src_0[43:40] : _xpermnVec_13_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_38 = 4'hb == io_src_1[55:52] ? io_src_0[47:44] : _xpermnVec_13_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_40 = 4'hc == io_src_1[55:52] ? io_src_0[51:48] : _xpermnVec_13_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_42 = 4'hd == io_src_1[55:52] ? io_src_0[55:52] : _xpermnVec_13_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_13_T_44 = 4'he == io_src_1[55:52] ? io_src_0[59:56] : _xpermnVec_13_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_13 = 4'hf == io_src_1[55:52] ? io_src_0[63:60] : _xpermnVec_13_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_18 = 4'h1 == io_src_1[59:56] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_20 = 4'h2 == io_src_1[59:56] ? io_src_0[11:8] : _xpermnVec_14_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_22 = 4'h3 == io_src_1[59:56] ? io_src_0[15:12] : _xpermnVec_14_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_24 = 4'h4 == io_src_1[59:56] ? io_src_0[19:16] : _xpermnVec_14_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_26 = 4'h5 == io_src_1[59:56] ? io_src_0[23:20] : _xpermnVec_14_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_28 = 4'h6 == io_src_1[59:56] ? io_src_0[27:24] : _xpermnVec_14_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_30 = 4'h7 == io_src_1[59:56] ? io_src_0[31:28] : _xpermnVec_14_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_32 = 4'h8 == io_src_1[59:56] ? io_src_0[35:32] : _xpermnVec_14_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_34 = 4'h9 == io_src_1[59:56] ? io_src_0[39:36] : _xpermnVec_14_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_36 = 4'ha == io_src_1[59:56] ? io_src_0[43:40] : _xpermnVec_14_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_38 = 4'hb == io_src_1[59:56] ? io_src_0[47:44] : _xpermnVec_14_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_40 = 4'hc == io_src_1[59:56] ? io_src_0[51:48] : _xpermnVec_14_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_42 = 4'hd == io_src_1[59:56] ? io_src_0[55:52] : _xpermnVec_14_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_14_T_44 = 4'he == io_src_1[59:56] ? io_src_0[59:56] : _xpermnVec_14_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_14 = 4'hf == io_src_1[59:56] ? io_src_0[63:60] : _xpermnVec_14_T_44; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_18 = 4'h1 == io_src_1[63:60] ? io_src_0[7:4] : io_src_0[3:0]; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_20 = 4'h2 == io_src_1[63:60] ? io_src_0[11:8] : _xpermnVec_15_T_18; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_22 = 4'h3 == io_src_1[63:60] ? io_src_0[15:12] : _xpermnVec_15_T_20; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_24 = 4'h4 == io_src_1[63:60] ? io_src_0[19:16] : _xpermnVec_15_T_22; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_26 = 4'h5 == io_src_1[63:60] ? io_src_0[23:20] : _xpermnVec_15_T_24; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_28 = 4'h6 == io_src_1[63:60] ? io_src_0[27:24] : _xpermnVec_15_T_26; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_30 = 4'h7 == io_src_1[63:60] ? io_src_0[31:28] : _xpermnVec_15_T_28; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_32 = 4'h8 == io_src_1[63:60] ? io_src_0[35:32] : _xpermnVec_15_T_30; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_34 = 4'h9 == io_src_1[63:60] ? io_src_0[39:36] : _xpermnVec_15_T_32; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_36 = 4'ha == io_src_1[63:60] ? io_src_0[43:40] : _xpermnVec_15_T_34; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_38 = 4'hb == io_src_1[63:60] ? io_src_0[47:44] : _xpermnVec_15_T_36; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_40 = 4'hc == io_src_1[63:60] ? io_src_0[51:48] : _xpermnVec_15_T_38; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_42 = 4'hd == io_src_1[63:60] ? io_src_0[55:52] : _xpermnVec_15_T_40; // @[Mux.scala 81:58]
  wire [3:0] _xpermnVec_15_T_44 = 4'he == io_src_1[63:60] ? io_src_0[59:56] : _xpermnVec_15_T_42; // @[Mux.scala 81:58]
  wire [3:0] xpermnVec_15 = 4'hf == io_src_1[63:60] ? io_src_0[63:60] : _xpermnVec_15_T_44; // @[Mux.scala 81:58]
  wire [31:0] xpermn_lo = {xpermnVec_7,xpermnVec_6,xpermnVec_5,xpermnVec_4,xpermnVec_3,xpermnVec_2,xpermnVec_1,
    xpermnVec_0}; // @[Cat.scala 31:58]
  wire [63:0] xpermn = {xpermnVec_15,xpermnVec_14,xpermnVec_13,xpermnVec_12,xpermnVec_11,xpermnVec_10,xpermnVec_9,
    xpermnVec_8,xpermn_lo}; // @[Cat.scala 31:58]
  wire [7:0] _xpermbVec_0_T_12 = 3'h1 == io_src_1[2:0] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_14 = 3'h2 == io_src_1[2:0] ? io_src_0[23:16] : _xpermbVec_0_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_16 = 3'h3 == io_src_1[2:0] ? io_src_0[31:24] : _xpermbVec_0_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_18 = 3'h4 == io_src_1[2:0] ? io_src_0[39:32] : _xpermbVec_0_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_20 = 3'h5 == io_src_1[2:0] ? io_src_0[47:40] : _xpermbVec_0_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_22 = 3'h6 == io_src_1[2:0] ? io_src_0[55:48] : _xpermbVec_0_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_0_T_24 = 3'h7 == io_src_1[2:0] ? io_src_0[63:56] : _xpermbVec_0_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_0 = |io_src_1[7:3] ? 8'h0 : _xpermbVec_0_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_1_T_12 = 3'h1 == io_src_1[10:8] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_14 = 3'h2 == io_src_1[10:8] ? io_src_0[23:16] : _xpermbVec_1_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_16 = 3'h3 == io_src_1[10:8] ? io_src_0[31:24] : _xpermbVec_1_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_18 = 3'h4 == io_src_1[10:8] ? io_src_0[39:32] : _xpermbVec_1_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_20 = 3'h5 == io_src_1[10:8] ? io_src_0[47:40] : _xpermbVec_1_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_22 = 3'h6 == io_src_1[10:8] ? io_src_0[55:48] : _xpermbVec_1_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_1_T_24 = 3'h7 == io_src_1[10:8] ? io_src_0[63:56] : _xpermbVec_1_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_1 = |io_src_1[15:11] ? 8'h0 : _xpermbVec_1_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_2_T_12 = 3'h1 == io_src_1[18:16] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_14 = 3'h2 == io_src_1[18:16] ? io_src_0[23:16] : _xpermbVec_2_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_16 = 3'h3 == io_src_1[18:16] ? io_src_0[31:24] : _xpermbVec_2_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_18 = 3'h4 == io_src_1[18:16] ? io_src_0[39:32] : _xpermbVec_2_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_20 = 3'h5 == io_src_1[18:16] ? io_src_0[47:40] : _xpermbVec_2_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_22 = 3'h6 == io_src_1[18:16] ? io_src_0[55:48] : _xpermbVec_2_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_2_T_24 = 3'h7 == io_src_1[18:16] ? io_src_0[63:56] : _xpermbVec_2_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_2 = |io_src_1[23:19] ? 8'h0 : _xpermbVec_2_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_3_T_12 = 3'h1 == io_src_1[26:24] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_14 = 3'h2 == io_src_1[26:24] ? io_src_0[23:16] : _xpermbVec_3_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_16 = 3'h3 == io_src_1[26:24] ? io_src_0[31:24] : _xpermbVec_3_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_18 = 3'h4 == io_src_1[26:24] ? io_src_0[39:32] : _xpermbVec_3_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_20 = 3'h5 == io_src_1[26:24] ? io_src_0[47:40] : _xpermbVec_3_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_22 = 3'h6 == io_src_1[26:24] ? io_src_0[55:48] : _xpermbVec_3_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_3_T_24 = 3'h7 == io_src_1[26:24] ? io_src_0[63:56] : _xpermbVec_3_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_3 = |io_src_1[31:27] ? 8'h0 : _xpermbVec_3_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_4_T_12 = 3'h1 == io_src_1[34:32] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_14 = 3'h2 == io_src_1[34:32] ? io_src_0[23:16] : _xpermbVec_4_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_16 = 3'h3 == io_src_1[34:32] ? io_src_0[31:24] : _xpermbVec_4_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_18 = 3'h4 == io_src_1[34:32] ? io_src_0[39:32] : _xpermbVec_4_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_20 = 3'h5 == io_src_1[34:32] ? io_src_0[47:40] : _xpermbVec_4_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_22 = 3'h6 == io_src_1[34:32] ? io_src_0[55:48] : _xpermbVec_4_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_4_T_24 = 3'h7 == io_src_1[34:32] ? io_src_0[63:56] : _xpermbVec_4_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_4 = |io_src_1[39:35] ? 8'h0 : _xpermbVec_4_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_5_T_12 = 3'h1 == io_src_1[42:40] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_14 = 3'h2 == io_src_1[42:40] ? io_src_0[23:16] : _xpermbVec_5_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_16 = 3'h3 == io_src_1[42:40] ? io_src_0[31:24] : _xpermbVec_5_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_18 = 3'h4 == io_src_1[42:40] ? io_src_0[39:32] : _xpermbVec_5_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_20 = 3'h5 == io_src_1[42:40] ? io_src_0[47:40] : _xpermbVec_5_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_22 = 3'h6 == io_src_1[42:40] ? io_src_0[55:48] : _xpermbVec_5_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_5_T_24 = 3'h7 == io_src_1[42:40] ? io_src_0[63:56] : _xpermbVec_5_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_5 = |io_src_1[47:43] ? 8'h0 : _xpermbVec_5_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_6_T_12 = 3'h1 == io_src_1[50:48] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_14 = 3'h2 == io_src_1[50:48] ? io_src_0[23:16] : _xpermbVec_6_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_16 = 3'h3 == io_src_1[50:48] ? io_src_0[31:24] : _xpermbVec_6_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_18 = 3'h4 == io_src_1[50:48] ? io_src_0[39:32] : _xpermbVec_6_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_20 = 3'h5 == io_src_1[50:48] ? io_src_0[47:40] : _xpermbVec_6_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_22 = 3'h6 == io_src_1[50:48] ? io_src_0[55:48] : _xpermbVec_6_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_6_T_24 = 3'h7 == io_src_1[50:48] ? io_src_0[63:56] : _xpermbVec_6_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_6 = |io_src_1[55:51] ? 8'h0 : _xpermbVec_6_T_24; // @[Bku.scala 148:44]
  wire [7:0] _xpermbVec_7_T_12 = 3'h1 == io_src_1[58:56] ? io_src_0[15:8] : io_src_0[7:0]; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_14 = 3'h2 == io_src_1[58:56] ? io_src_0[23:16] : _xpermbVec_7_T_12; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_16 = 3'h3 == io_src_1[58:56] ? io_src_0[31:24] : _xpermbVec_7_T_14; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_18 = 3'h4 == io_src_1[58:56] ? io_src_0[39:32] : _xpermbVec_7_T_16; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_20 = 3'h5 == io_src_1[58:56] ? io_src_0[47:40] : _xpermbVec_7_T_18; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_22 = 3'h6 == io_src_1[58:56] ? io_src_0[55:48] : _xpermbVec_7_T_20; // @[Mux.scala 81:58]
  wire [7:0] _xpermbVec_7_T_24 = 3'h7 == io_src_1[58:56] ? io_src_0[63:56] : _xpermbVec_7_T_22; // @[Mux.scala 81:58]
  wire [7:0] xpermbVec_7 = |io_src_1[63:59] ? 8'h0 : _xpermbVec_7_T_24; // @[Bku.scala 148:44]
  wire [63:0] xpermb = {xpermbVec_7,xpermbVec_6,xpermbVec_5,xpermbVec_4,xpermbVec_3,xpermbVec_2,xpermbVec_1,xpermbVec_0}
    ; // @[Cat.scala 31:58]
  reg [63:0] io_out_r; // @[Reg.scala 16:16]
  assign io_out = io_out_r; // @[Bku.scala 151:10]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      if (io_func[0]) begin // @[Bku.scala 151:26]
        io_out_r <= xpermb;
      end else begin
        io_out_r <= xpermn;
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
  _RAND_0 = {2{`RANDOM}};
  io_out_r = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
