module SyncRawDataModuleTemplate_14(
  input         clock,
  input  [7:0]  io_rvec_0,
  output [63:0] io_rdata_0,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input         io_wen_6,
  input  [7:0]  io_wvec_0,
  input  [7:0]  io_wvec_1,
  input  [7:0]  io_wvec_2,
  input  [7:0]  io_wvec_3,
  input  [7:0]  io_wvec_4,
  input  [7:0]  io_wvec_5,
  input  [7:0]  io_wvec_6,
  input  [63:0] io_wdata_0,
  input  [63:0] io_wdata_1,
  input  [63:0] io_wdata_2,
  input  [63:0] io_wdata_3,
  input  [63:0] io_wdata_4,
  input  [63:0] io_wdata_5,
  input  [63:0] io_wdata_6
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] data_0; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_1; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_2; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_3; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_4; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_5; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_6; // @[DataModuleTemplate.scala 32:17]
  reg [63:0] data_7; // @[DataModuleTemplate.scala 32:17]
  reg [7:0] rvec_0; // @[DataModuleTemplate.scala 35:33]
  wire [63:0] _io_rdata_0_T_8 = rvec_0[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_9 = rvec_0[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_10 = rvec_0[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_11 = rvec_0[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_12 = rvec_0[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_13 = rvec_0[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_14 = rvec_0[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_15 = rvec_0[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_16 = _io_rdata_0_T_8 | _io_rdata_0_T_9; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_17 = _io_rdata_0_T_16 | _io_rdata_0_T_10; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_18 = _io_rdata_0_T_17 | _io_rdata_0_T_11; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_19 = _io_rdata_0_T_18 | _io_rdata_0_T_12; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_20 = _io_rdata_0_T_19 | _io_rdata_0_T_13; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_21 = _io_rdata_0_T_20 | _io_rdata_0_T_14; // @[Mux.scala 27:73]
  wire  w__0 = io_wen_0 & io_wvec_0[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__1 = io_wen_1 & io_wvec_1[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__2 = io_wen_2 & io_wvec_2[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__3 = io_wen_3 & io_wvec_3[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__4 = io_wen_4 & io_wvec_4[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__5 = io_wen_5 & io_wvec_5[0]; // @[DataModuleTemplate.scala 43:59]
  wire  w__6 = io_wen_6 & io_wvec_6[0]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_68 = {w__6,w__5,w__4,w__3,w__2,w__1,w__0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_0_T = w__0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_1 = w__1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_2 = w__2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_3 = w__3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_4 = w__4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_5 = w__5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_6 = w__6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_7 = _data_0_T | _data_0_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_8 = _data_0_T_7 | _data_0_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_9 = _data_0_T_8 | _data_0_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_10 = _data_0_T_9 | _data_0_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_11 = _data_0_T_10 | _data_0_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_12 = _data_0_T_11 | _data_0_T_6; // @[Mux.scala 27:73]
  wire  w_1_0 = io_wen_0 & io_wvec_0[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_1 = io_wen_1 & io_wvec_1[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_2 = io_wen_2 & io_wvec_2[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_3 = io_wen_3 & io_wvec_3[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_4 = io_wen_4 & io_wvec_4[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_5 = io_wen_5 & io_wvec_5[1]; // @[DataModuleTemplate.scala 43:59]
  wire  w_1_6 = io_wen_6 & io_wvec_6[1]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_86 = {w_1_6,w_1_5,w_1_4,w_1_3,w_1_2,w_1_1,w_1_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_1_T = w_1_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_1 = w_1_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_2 = w_1_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_3 = w_1_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_4 = w_1_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_5 = w_1_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_6 = w_1_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_7 = _data_1_T | _data_1_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_8 = _data_1_T_7 | _data_1_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_9 = _data_1_T_8 | _data_1_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_10 = _data_1_T_9 | _data_1_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_11 = _data_1_T_10 | _data_1_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_12 = _data_1_T_11 | _data_1_T_6; // @[Mux.scala 27:73]
  wire  w_2_0 = io_wen_0 & io_wvec_0[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_1 = io_wen_1 & io_wvec_1[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_2 = io_wen_2 & io_wvec_2[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_3 = io_wen_3 & io_wvec_3[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_4 = io_wen_4 & io_wvec_4[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_5 = io_wen_5 & io_wvec_5[2]; // @[DataModuleTemplate.scala 43:59]
  wire  w_2_6 = io_wen_6 & io_wvec_6[2]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_104 = {w_2_6,w_2_5,w_2_4,w_2_3,w_2_2,w_2_1,w_2_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_2_T = w_2_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_1 = w_2_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_2 = w_2_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_3 = w_2_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_4 = w_2_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_5 = w_2_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_6 = w_2_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_7 = _data_2_T | _data_2_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_8 = _data_2_T_7 | _data_2_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_9 = _data_2_T_8 | _data_2_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_10 = _data_2_T_9 | _data_2_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_11 = _data_2_T_10 | _data_2_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_12 = _data_2_T_11 | _data_2_T_6; // @[Mux.scala 27:73]
  wire  w_3_0 = io_wen_0 & io_wvec_0[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_1 = io_wen_1 & io_wvec_1[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_2 = io_wen_2 & io_wvec_2[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_3 = io_wen_3 & io_wvec_3[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_4 = io_wen_4 & io_wvec_4[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_5 = io_wen_5 & io_wvec_5[3]; // @[DataModuleTemplate.scala 43:59]
  wire  w_3_6 = io_wen_6 & io_wvec_6[3]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_122 = {w_3_6,w_3_5,w_3_4,w_3_3,w_3_2,w_3_1,w_3_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_3_T = w_3_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_1 = w_3_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_2 = w_3_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_3 = w_3_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_4 = w_3_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_5 = w_3_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_6 = w_3_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_7 = _data_3_T | _data_3_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_8 = _data_3_T_7 | _data_3_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_9 = _data_3_T_8 | _data_3_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_10 = _data_3_T_9 | _data_3_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_11 = _data_3_T_10 | _data_3_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_12 = _data_3_T_11 | _data_3_T_6; // @[Mux.scala 27:73]
  wire  w_4_0 = io_wen_0 & io_wvec_0[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_1 = io_wen_1 & io_wvec_1[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_2 = io_wen_2 & io_wvec_2[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_3 = io_wen_3 & io_wvec_3[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_4 = io_wen_4 & io_wvec_4[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_5 = io_wen_5 & io_wvec_5[4]; // @[DataModuleTemplate.scala 43:59]
  wire  w_4_6 = io_wen_6 & io_wvec_6[4]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_140 = {w_4_6,w_4_5,w_4_4,w_4_3,w_4_2,w_4_1,w_4_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_4_T = w_4_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_1 = w_4_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_2 = w_4_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_3 = w_4_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_4 = w_4_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_5 = w_4_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_6 = w_4_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_7 = _data_4_T | _data_4_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_8 = _data_4_T_7 | _data_4_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_9 = _data_4_T_8 | _data_4_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_10 = _data_4_T_9 | _data_4_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_11 = _data_4_T_10 | _data_4_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_12 = _data_4_T_11 | _data_4_T_6; // @[Mux.scala 27:73]
  wire  w_5_0 = io_wen_0 & io_wvec_0[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_1 = io_wen_1 & io_wvec_1[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_2 = io_wen_2 & io_wvec_2[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_3 = io_wen_3 & io_wvec_3[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_4 = io_wen_4 & io_wvec_4[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_5 = io_wen_5 & io_wvec_5[5]; // @[DataModuleTemplate.scala 43:59]
  wire  w_5_6 = io_wen_6 & io_wvec_6[5]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_158 = {w_5_6,w_5_5,w_5_4,w_5_3,w_5_2,w_5_1,w_5_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_5_T = w_5_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_1 = w_5_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_2 = w_5_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_3 = w_5_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_4 = w_5_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_5 = w_5_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_6 = w_5_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_7 = _data_5_T | _data_5_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_8 = _data_5_T_7 | _data_5_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_9 = _data_5_T_8 | _data_5_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_10 = _data_5_T_9 | _data_5_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_11 = _data_5_T_10 | _data_5_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_12 = _data_5_T_11 | _data_5_T_6; // @[Mux.scala 27:73]
  wire  w_6_0 = io_wen_0 & io_wvec_0[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_1 = io_wen_1 & io_wvec_1[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_2 = io_wen_2 & io_wvec_2[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_3 = io_wen_3 & io_wvec_3[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_4 = io_wen_4 & io_wvec_4[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_5 = io_wen_5 & io_wvec_5[6]; // @[DataModuleTemplate.scala 43:59]
  wire  w_6_6 = io_wen_6 & io_wvec_6[6]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_176 = {w_6_6,w_6_5,w_6_4,w_6_3,w_6_2,w_6_1,w_6_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_6_T = w_6_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_1 = w_6_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_2 = w_6_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_3 = w_6_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_4 = w_6_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_5 = w_6_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_6 = w_6_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_7 = _data_6_T | _data_6_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_8 = _data_6_T_7 | _data_6_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_9 = _data_6_T_8 | _data_6_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_10 = _data_6_T_9 | _data_6_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_11 = _data_6_T_10 | _data_6_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_12 = _data_6_T_11 | _data_6_T_6; // @[Mux.scala 27:73]
  wire  w_7_0 = io_wen_0 & io_wvec_0[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_1 = io_wen_1 & io_wvec_1[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_2 = io_wen_2 & io_wvec_2[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_3 = io_wen_3 & io_wvec_3[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_4 = io_wen_4 & io_wvec_4[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_5 = io_wen_5 & io_wvec_5[7]; // @[DataModuleTemplate.scala 43:59]
  wire  w_7_6 = io_wen_6 & io_wvec_6[7]; // @[DataModuleTemplate.scala 43:59]
  wire [6:0] _T_194 = {w_7_6,w_7_5,w_7_4,w_7_3,w_7_2,w_7_1,w_7_0}; // @[DataModuleTemplate.scala 45:13]
  wire [63:0] _data_7_T = w_7_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_1 = w_7_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_2 = w_7_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_3 = w_7_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_4 = w_7_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_5 = w_7_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_6 = w_7_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_7 = _data_7_T | _data_7_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_8 = _data_7_T_7 | _data_7_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_9 = _data_7_T_8 | _data_7_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_10 = _data_7_T_9 | _data_7_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_11 = _data_7_T_10 | _data_7_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_12 = _data_7_T_11 | _data_7_T_6; // @[Mux.scala 27:73]
  assign io_rdata_0 = _io_rdata_0_T_21 | _io_rdata_0_T_15; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (|_T_68) begin // @[DataModuleTemplate.scala 45:25]
      data_0 <= _data_0_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_86) begin // @[DataModuleTemplate.scala 45:25]
      data_1 <= _data_1_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_104) begin // @[DataModuleTemplate.scala 45:25]
      data_2 <= _data_2_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_122) begin // @[DataModuleTemplate.scala 45:25]
      data_3 <= _data_3_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_140) begin // @[DataModuleTemplate.scala 45:25]
      data_4 <= _data_4_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_158) begin // @[DataModuleTemplate.scala 45:25]
      data_5 <= _data_5_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_176) begin // @[DataModuleTemplate.scala 45:25]
      data_6 <= _data_6_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    if (|_T_194) begin // @[DataModuleTemplate.scala 45:25]
      data_7 <= _data_7_T_12; // @[DataModuleTemplate.scala 46:15]
    end
    rvec_0 <= io_rvec_0; // @[DataModuleTemplate.scala 35:33]
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
  data_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  data_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  data_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  data_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  data_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  data_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  data_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  data_7 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  rvec_0 = _RAND_8[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
