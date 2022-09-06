module TageTable_4(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [38:0] io_req_bits_pc,
  input  [8:0]  io_req_bits_folded_hist_hist_30_folded_hist,
  input  [7:0]  io_req_bits_folded_hist_hist_29_folded_hist,
  input  [6:0]  io_req_bits_folded_hist_hist_13_folded_hist,
  output        io_resps_0_valid,
  output [2:0]  io_resps_0_bits_ctr,
  output        io_resps_0_bits_u,
  output        io_resps_1_valid,
  output [2:0]  io_resps_1_bits_ctr,
  output        io_resps_1_bits_u,
  input  [38:0] io_update_pc,
  input  [8:0]  io_update_folded_hist_hist_30_folded_hist,
  input  [7:0]  io_update_folded_hist_hist_29_folded_hist,
  input  [6:0]  io_update_folded_hist_hist_13_folded_hist,
  input         io_update_mask_0,
  input         io_update_mask_1,
  input         io_update_takens_0,
  input         io_update_takens_1,
  input         io_update_alloc_0,
  input         io_update_alloc_1,
  input  [2:0]  io_update_oldCtrs_0,
  input  [2:0]  io_update_oldCtrs_1,
  input         io_update_uMask_0,
  input         io_update_uMask_1,
  input         io_update_us_0,
  input         io_update_us_1,
  input         io_update_reset_u_0,
  input         io_update_reset_u_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  us_clock; // @[Tage.scala 306:13]
  wire  us_reset; // @[Tage.scala 306:13]
  wire  us_io_rreq_valid; // @[Tage.scala 306:13]
  wire [6:0] us_io_rreq_bits_setIdx; // @[Tage.scala 306:13]
  wire  us_io_rresp_data_0; // @[Tage.scala 306:13]
  wire  us_io_rresp_data_1; // @[Tage.scala 306:13]
  wire  us_io_wreq_valid; // @[Tage.scala 306:13]
  wire [6:0] us_io_wreq_bits_setIdx; // @[Tage.scala 306:13]
  wire  us_io_wreq_bits_data_0; // @[Tage.scala 306:13]
  wire  us_io_wreq_bits_data_1; // @[Tage.scala 306:13]
  wire [1:0] us_io_wreq_bits_waymask; // @[Tage.scala 306:13]
  wire  table_banks_0_clock; // @[Tage.scala 311:11]
  wire  table_banks_0_reset; // @[Tage.scala 311:11]
  wire  table_banks_0_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_0_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_0_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_0_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_0_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_0_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_0_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_0_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_0_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_0_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_0_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_0_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_0_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_0_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_0_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_1_clock; // @[Tage.scala 311:11]
  wire  table_banks_1_reset; // @[Tage.scala 311:11]
  wire  table_banks_1_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_1_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_1_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_1_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_1_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_1_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_1_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_1_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_1_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_1_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_1_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_1_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_1_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_1_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_1_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_2_clock; // @[Tage.scala 311:11]
  wire  table_banks_2_reset; // @[Tage.scala 311:11]
  wire  table_banks_2_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_2_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_2_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_2_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_2_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_2_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_2_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_2_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_2_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_2_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_2_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_2_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_2_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_2_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_2_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_3_clock; // @[Tage.scala 311:11]
  wire  table_banks_3_reset; // @[Tage.scala 311:11]
  wire  table_banks_3_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_3_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_3_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_3_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_3_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_3_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_3_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_3_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_3_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_3_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_3_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_3_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_3_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_3_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_3_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_4_clock; // @[Tage.scala 311:11]
  wire  table_banks_4_reset; // @[Tage.scala 311:11]
  wire  table_banks_4_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_4_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_4_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_4_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_4_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_4_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_4_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_4_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_4_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_4_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_4_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_4_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_4_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_4_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_4_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_5_clock; // @[Tage.scala 311:11]
  wire  table_banks_5_reset; // @[Tage.scala 311:11]
  wire  table_banks_5_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_5_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_5_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_5_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_5_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_5_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_5_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_5_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_5_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_5_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_5_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_5_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_5_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_5_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_5_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_6_clock; // @[Tage.scala 311:11]
  wire  table_banks_6_reset; // @[Tage.scala 311:11]
  wire  table_banks_6_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_6_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_6_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_6_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_6_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_6_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_6_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_6_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_6_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_6_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_6_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_6_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_6_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_6_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_6_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  table_banks_7_clock; // @[Tage.scala 311:11]
  wire  table_banks_7_reset; // @[Tage.scala 311:11]
  wire  table_banks_7_io_rreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_7_io_rreq_bits_setIdx; // @[Tage.scala 311:11]
  wire  table_banks_7_io_rresp_data_0_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_7_io_rresp_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_7_io_rresp_data_0_ctr; // @[Tage.scala 311:11]
  wire  table_banks_7_io_rresp_data_1_valid; // @[Tage.scala 311:11]
  wire [8:0] table_banks_7_io_rresp_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_7_io_rresp_data_1_ctr; // @[Tage.scala 311:11]
  wire  table_banks_7_io_wreq_valid; // @[Tage.scala 311:11]
  wire [3:0] table_banks_7_io_wreq_bits_setIdx; // @[Tage.scala 311:11]
  wire [8:0] table_banks_7_io_wreq_bits_data_0_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_7_io_wreq_bits_data_0_ctr; // @[Tage.scala 311:11]
  wire [8:0] table_banks_7_io_wreq_bits_data_1_tag; // @[Tage.scala 311:11]
  wire [2:0] table_banks_7_io_wreq_bits_data_1_ctr; // @[Tage.scala 311:11]
  wire [1:0] table_banks_7_io_wreq_bits_waymask; // @[Tage.scala 311:11]
  wire  bank_wrbypasses_0_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_0_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_0_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_0_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_0_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_0_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_0_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_0_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_0_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_0_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_1_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_1_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_1_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_1_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_1_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_1_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_1_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_1_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_1_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_2_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_2_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_2_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_2_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_2_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_2_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_2_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_2_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_2_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_3_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_3_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_3_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_3_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_3_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_3_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_3_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_3_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_3_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_4_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_4_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_4_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_4_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_4_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_4_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_4_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_4_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_4_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_5_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_5_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_5_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_5_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_5_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_5_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_5_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_5_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_5_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_6_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_6_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_6_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_6_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_6_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_6_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_6_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_6_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_6_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_0_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_0_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_0_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_7_0_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_7_0_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_7_0_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_0_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_7_0_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_1_clock; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_1_reset; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_1_io_wen; // @[Tage.scala 419:11]
  wire [3:0] bank_wrbypasses_7_1_io_write_idx; // @[Tage.scala 419:11]
  wire [8:0] bank_wrbypasses_7_1_io_write_tag; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_7_1_io_write_data_0; // @[Tage.scala 419:11]
  wire  bank_wrbypasses_7_1_io_hit; // @[Tage.scala 419:11]
  wire [2:0] bank_wrbypasses_7_1_io_hit_data_0_bits; // @[Tage.scala 419:11]
  wire [37:0] req_unhashed_idx = io_req_bits_pc[38:1]; // @[Tage.scala 300:43]
  wire [37:0] _GEN_877 = {{31'd0}, io_req_bits_folded_hist_hist_13_folded_hist}; // @[Tage.scala 285:29]
  wire [37:0] _idx_T = req_unhashed_idx ^ _GEN_877; // @[Tage.scala 285:29]
  wire [6:0] s0_idx = _idx_T[6:0]; // @[Tage.scala 285:38]
  wire [37:0] _GEN_878 = {{29'd0}, io_req_bits_folded_hist_hist_30_folded_hist}; // @[Tage.scala 286:29]
  wire [37:0] _tag_T = req_unhashed_idx ^ _GEN_878; // @[Tage.scala 286:29]
  wire [8:0] _tag_T_1 = {io_req_bits_folded_hist_hist_29_folded_hist, 1'h0}; // @[Tage.scala 286:52]
  wire [37:0] _GEN_879 = {{29'd0}, _tag_T_1}; // @[Tage.scala 286:38]
  wire [37:0] _tag_T_2 = _tag_T ^ _GEN_879; // @[Tage.scala 286:38]
  wire [8:0] s0_tag = _tag_T_2[8:0]; // @[Tage.scala 286:59]
  wire  s0_bank_req_1h_0 = s0_idx[2:0] == 3'h0; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_1 = s0_idx[2:0] == 3'h1; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_2 = s0_idx[2:0] == 3'h2; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_3 = s0_idx[2:0] == 3'h3; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_4 = s0_idx[2:0] == 3'h4; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_5 = s0_idx[2:0] == 3'h5; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_6 = s0_idx[2:0] == 3'h6; // @[Tage.scala 261:86]
  wire  s0_bank_req_1h_7 = s0_idx[2:0] == 3'h7; // @[Tage.scala 261:86]
  wire  _table_banks_0_io_rreq_valid_T = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  reg [37:0] s1_unhashed_idx; // @[Reg.scala 16:16]
  reg [8:0] s1_tag; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_0; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_1; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_2; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_3; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_4; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_5; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_6; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_7; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_last_cycle_0; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_1; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_2; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_3; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_4; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_5; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_6; // @[Tage.scala 331:45]
  reg  s1_bank_has_write_last_cycle_7; // @[Tage.scala 331:45]
  wire [2:0] _resp_selected_T = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_1 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_2 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_3 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_4 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_5 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_6 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_7 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_8 = _resp_selected_T | _resp_selected_T_1; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_9 = _resp_selected_T_8 | _resp_selected_T_2; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_10 = _resp_selected_T_9 | _resp_selected_T_3; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_11 = _resp_selected_T_10 | _resp_selected_T_4; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_12 = _resp_selected_T_11 | _resp_selected_T_5; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_13 = _resp_selected_T_12 | _resp_selected_T_6; // @[Mux.scala 27:73]
  wire [2:0] resp_selected_0_ctr = _resp_selected_T_13 | _resp_selected_T_7; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_15 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_16 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_17 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_18 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_19 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_20 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_21 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_22 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_23 = _resp_selected_T_15 | _resp_selected_T_16; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_24 = _resp_selected_T_23 | _resp_selected_T_17; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_25 = _resp_selected_T_24 | _resp_selected_T_18; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_26 = _resp_selected_T_25 | _resp_selected_T_19; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_27 = _resp_selected_T_26 | _resp_selected_T_20; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_28 = _resp_selected_T_27 | _resp_selected_T_21; // @[Mux.scala 27:73]
  wire [8:0] resp_selected_0_tag = _resp_selected_T_28 | _resp_selected_T_22; // @[Mux.scala 27:73]
  wire  resp_selected_0_valid = s1_bank_req_1h_0 & table_banks_0_io_rresp_data_0_valid | s1_bank_req_1h_1 &
    table_banks_1_io_rresp_data_0_valid | s1_bank_req_1h_2 & table_banks_2_io_rresp_data_0_valid | s1_bank_req_1h_3 &
    table_banks_3_io_rresp_data_0_valid | s1_bank_req_1h_4 & table_banks_4_io_rresp_data_0_valid | s1_bank_req_1h_5 &
    table_banks_5_io_rresp_data_0_valid | s1_bank_req_1h_6 & table_banks_6_io_rresp_data_0_valid | s1_bank_req_1h_7 &
    table_banks_7_io_rresp_data_0_valid; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_45 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_46 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_47 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_48 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_49 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_50 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_51 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_52 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_53 = _resp_selected_T_45 | _resp_selected_T_46; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_54 = _resp_selected_T_53 | _resp_selected_T_47; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_55 = _resp_selected_T_54 | _resp_selected_T_48; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_56 = _resp_selected_T_55 | _resp_selected_T_49; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_57 = _resp_selected_T_56 | _resp_selected_T_50; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_58 = _resp_selected_T_57 | _resp_selected_T_51; // @[Mux.scala 27:73]
  wire [2:0] resp_selected_1_ctr = _resp_selected_T_58 | _resp_selected_T_52; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_60 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_61 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_62 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_63 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_64 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_65 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_66 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_67 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_68 = _resp_selected_T_60 | _resp_selected_T_61; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_69 = _resp_selected_T_68 | _resp_selected_T_62; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_70 = _resp_selected_T_69 | _resp_selected_T_63; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_71 = _resp_selected_T_70 | _resp_selected_T_64; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_72 = _resp_selected_T_71 | _resp_selected_T_65; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_73 = _resp_selected_T_72 | _resp_selected_T_66; // @[Mux.scala 27:73]
  wire [8:0] resp_selected_1_tag = _resp_selected_T_73 | _resp_selected_T_67; // @[Mux.scala 27:73]
  wire  resp_selected_1_valid = s1_bank_req_1h_0 & table_banks_0_io_rresp_data_1_valid | s1_bank_req_1h_1 &
    table_banks_1_io_rresp_data_1_valid | s1_bank_req_1h_2 & table_banks_2_io_rresp_data_1_valid | s1_bank_req_1h_3 &
    table_banks_3_io_rresp_data_1_valid | s1_bank_req_1h_4 & table_banks_4_io_rresp_data_1_valid | s1_bank_req_1h_5 &
    table_banks_5_io_rresp_data_1_valid | s1_bank_req_1h_6 & table_banks_6_io_rresp_data_1_valid | s1_bank_req_1h_7 &
    table_banks_7_io_rresp_data_1_valid; // @[Mux.scala 27:73]
  wire  resp_invalid_by_write = s1_bank_req_1h_0 & s1_bank_has_write_last_cycle_0 | s1_bank_req_1h_1 &
    s1_bank_has_write_last_cycle_1 | s1_bank_req_1h_2 & s1_bank_has_write_last_cycle_2 | s1_bank_req_1h_3 &
    s1_bank_has_write_last_cycle_3 | s1_bank_req_1h_4 & s1_bank_has_write_last_cycle_4 | s1_bank_req_1h_5 &
    s1_bank_has_write_last_cycle_5 | s1_bank_req_1h_6 & s1_bank_has_write_last_cycle_6 | s1_bank_req_1h_7 &
    s1_bank_has_write_last_cycle_7; // @[Mux.scala 27:73]
  wire  per_br_resp_shiftAmount = s1_unhashed_idx[0]; // @[Tage.scala 59:42]
  wire [1:0] _per_br_resp_T_2 = 2'h1 << per_br_resp_shiftAmount; // @[OneHot.scala 64:12]
  wire [2:0] _per_br_resp_T_6 = _per_br_resp_T_2[0] ? resp_selected_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _per_br_resp_T_7 = _per_br_resp_T_2[1] ? resp_selected_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [8:0] _per_br_resp_T_9 = _per_br_resp_T_2[0] ? resp_selected_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _per_br_resp_T_10 = _per_br_resp_T_2[1] ? resp_selected_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] per_br_resp_0_tag = _per_br_resp_T_9 | _per_br_resp_T_10; // @[Mux.scala 27:73]
  wire  per_br_resp_0_valid = _per_br_resp_T_2[0] & resp_selected_0_valid | _per_br_resp_T_2[1] & resp_selected_1_valid; // @[Mux.scala 27:73]
  wire  per_br_resp_shiftAmount_1 = per_br_resp_shiftAmount ^ 1'h1; // @[Tage.scala 61:92]
  wire [1:0] _per_br_resp_T_17 = 2'h1 << per_br_resp_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [2:0] _per_br_resp_T_21 = _per_br_resp_T_17[0] ? resp_selected_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _per_br_resp_T_22 = _per_br_resp_T_17[1] ? resp_selected_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [8:0] _per_br_resp_T_24 = _per_br_resp_T_17[0] ? resp_selected_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _per_br_resp_T_25 = _per_br_resp_T_17[1] ? resp_selected_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] per_br_resp_1_tag = _per_br_resp_T_24 | _per_br_resp_T_25; // @[Mux.scala 27:73]
  wire  per_br_resp_1_valid = _per_br_resp_T_17[0] & resp_selected_0_valid | _per_br_resp_T_17[1] &
    resp_selected_1_valid; // @[Mux.scala 27:73]
  wire  _T_5 = io_update_mask_0 | io_update_mask_1; // @[Tage.scala 356:92]
  wire [37:0] update_unhashed_idx = io_update_pc[38:1]; // @[Tage.scala 300:43]
  wire [37:0] _GEN_881 = {{31'd0}, io_update_folded_hist_hist_13_folded_hist}; // @[Tage.scala 285:29]
  wire [37:0] _idx_T_1 = update_unhashed_idx ^ _GEN_881; // @[Tage.scala 285:29]
  wire [6:0] update_idx = _idx_T_1[6:0]; // @[Tage.scala 285:38]
  wire [37:0] _GEN_882 = {{29'd0}, io_update_folded_hist_hist_30_folded_hist}; // @[Tage.scala 286:29]
  wire [37:0] _tag_T_3 = update_unhashed_idx ^ _GEN_882; // @[Tage.scala 286:29]
  wire [8:0] _tag_T_4 = {io_update_folded_hist_hist_29_folded_hist, 1'h0}; // @[Tage.scala 286:52]
  wire [37:0] _GEN_883 = {{29'd0}, _tag_T_4}; // @[Tage.scala 286:38]
  wire [37:0] _tag_T_5 = _tag_T_3 ^ _GEN_883; // @[Tage.scala 286:38]
  wire  update_req_bank_1h_0 = update_idx[2:0] == 3'h0; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_1 = update_idx[2:0] == 3'h1; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_2 = update_idx[2:0] == 3'h2; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_3 = update_idx[2:0] == 3'h3; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_4 = update_idx[2:0] == 3'h4; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_5 = update_idx[2:0] == 3'h5; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_6 = update_idx[2:0] == 3'h6; // @[Tage.scala 261:86]
  wire  update_req_bank_1h_7 = update_idx[2:0] == 3'h7; // @[Tage.scala 261:86]
  wire  _per_bank_update_way_mask_T_2 = ~update_unhashed_idx[0]; // @[Tage.scala 374:51]
  wire  _per_bank_update_way_mask_T_3 = ~update_unhashed_idx[0] & io_update_mask_0; // @[Tage.scala 374:60]
  wire  _per_bank_update_way_mask_T_5 = update_unhashed_idx[0] ^ 1'h1; // @[Tage.scala 61:92]
  wire  _per_bank_update_way_mask_T_6 = ~_per_bank_update_way_mask_T_5; // @[Tage.scala 374:51]
  wire  _per_bank_update_way_mask_T_7 = ~_per_bank_update_way_mask_T_5 & io_update_mask_1; // @[Tage.scala 374:60]
  wire [1:0] _wrbypass_io_T = 2'h1 << update_unhashed_idx[0]; // @[OneHot.scala 64:12]
  wire  wrbypass_io_hit = _wrbypass_io_T[0] & bank_wrbypasses_0_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_0_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_4 = _wrbypass_io_T[0] ? bank_wrbypasses_0_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_5 = _wrbypass_io_T[1] ? bank_wrbypasses_0_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_hit_data_0_bits = _wrbypass_io_T_4 | _wrbypass_io_T_5; // @[Mux.scala 27:73]
  wire  _GEN_13 = update_unhashed_idx[0] ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 433:{14,14}]
  wire  _per_bank_not_silent_update_0_0_T_4 = ~_GEN_13; // @[Tage.scala 415:38]
  wire  _per_bank_not_silent_update_0_0_T_6 = &wrbypass_io_hit_data_0_bits & _GEN_13 | ~(|wrbypass_io_hit_data_0_bits)
     & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_0_0_T_7 = ~_per_bank_not_silent_update_0_0_T_6; // @[Tage.scala 441:11]
  wire [2:0] _GEN_15 = update_unhashed_idx[0] ? io_update_oldCtrs_1 : io_update_oldCtrs_0; // @[BPU.scala 87:{27,27}]
  wire  _per_bank_not_silent_update_0_0_T_14 = &_GEN_15 & _GEN_13 | ~(|_GEN_15) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_0_0_T_15 = ~_per_bank_not_silent_update_0_0_T_14; // @[Tage.scala 442:11]
  wire  _per_bank_not_silent_update_0_0_T_16 = wrbypass_io_hit ? _per_bank_not_silent_update_0_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  _GEN_17 = update_unhashed_idx[0] ? io_update_alloc_1 : io_update_alloc_0; // @[Tage.scala 432:{12,12}]
  wire  per_bank_not_silent_update_0_0 = _per_bank_not_silent_update_0_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_9 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_0_0; // @[Tage.scala 375:44]
  wire  _per_bank_update_way_mask_T_13 = update_unhashed_idx[0] & io_update_mask_0; // @[Tage.scala 374:60]
  wire  _per_bank_update_way_mask_T_17 = _per_bank_update_way_mask_T_5 & io_update_mask_1; // @[Tage.scala 374:60]
  wire [1:0] _wrbypass_io_T_25 = 2'h1 << _per_bank_update_way_mask_T_5; // @[OneHot.scala 64:12]
  wire  wrbypass_io_1_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_0_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_0_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_29 = _wrbypass_io_T_25[0] ? bank_wrbypasses_0_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_30 = _wrbypass_io_T_25[1] ? bank_wrbypasses_0_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_1_hit_data_0_bits = _wrbypass_io_T_29 | _wrbypass_io_T_30; // @[Mux.scala 27:73]
  wire  _GEN_19 = _per_bank_update_way_mask_T_5 ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 433:{14,14}]
  wire  _per_bank_not_silent_update_0_1_T_4 = ~_GEN_19; // @[Tage.scala 415:38]
  wire  _per_bank_not_silent_update_0_1_T_6 = &wrbypass_io_1_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_1_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_0_1_T_7 = ~_per_bank_not_silent_update_0_1_T_6; // @[Tage.scala 441:11]
  wire [2:0] _GEN_21 = _per_bank_update_way_mask_T_5 ? io_update_oldCtrs_1 : io_update_oldCtrs_0; // @[BPU.scala 87:{27,27}]
  wire  _per_bank_not_silent_update_0_1_T_14 = &_GEN_21 & _GEN_19 | ~(|_GEN_21) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_0_1_T_15 = ~_per_bank_not_silent_update_0_1_T_14; // @[Tage.scala 442:11]
  wire  _per_bank_not_silent_update_0_1_T_16 = wrbypass_io_1_hit ? _per_bank_not_silent_update_0_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  _GEN_23 = _per_bank_update_way_mask_T_5 ? io_update_alloc_1 : io_update_alloc_0; // @[Tage.scala 432:{12,12}]
  wire  per_bank_not_silent_update_0_1 = _per_bank_not_silent_update_0_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_19 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_0_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_2_hit = _wrbypass_io_T[0] & bank_wrbypasses_1_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_1_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_54 = _wrbypass_io_T[0] ? bank_wrbypasses_1_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_55 = _wrbypass_io_T[1] ? bank_wrbypasses_1_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_2_hit_data_0_bits = _wrbypass_io_T_54 | _wrbypass_io_T_55; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_1_0_T_6 = &wrbypass_io_2_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_2_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_1_0_T_7 = ~_per_bank_not_silent_update_1_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_1_0_T_16 = wrbypass_io_2_hit ? _per_bank_not_silent_update_1_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_1_0 = _per_bank_not_silent_update_1_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_30 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_1_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_3_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_1_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_1_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_79 = _wrbypass_io_T_25[0] ? bank_wrbypasses_1_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_80 = _wrbypass_io_T_25[1] ? bank_wrbypasses_1_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_3_hit_data_0_bits = _wrbypass_io_T_79 | _wrbypass_io_T_80; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_1_1_T_6 = &wrbypass_io_3_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_3_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_1_1_T_7 = ~_per_bank_not_silent_update_1_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_1_1_T_16 = wrbypass_io_3_hit ? _per_bank_not_silent_update_1_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_1_1 = _per_bank_not_silent_update_1_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_40 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_1_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_4_hit = _wrbypass_io_T[0] & bank_wrbypasses_2_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_2_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_104 = _wrbypass_io_T[0] ? bank_wrbypasses_2_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_105 = _wrbypass_io_T[1] ? bank_wrbypasses_2_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_4_hit_data_0_bits = _wrbypass_io_T_104 | _wrbypass_io_T_105; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_2_0_T_6 = &wrbypass_io_4_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_4_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_2_0_T_7 = ~_per_bank_not_silent_update_2_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_2_0_T_16 = wrbypass_io_4_hit ? _per_bank_not_silent_update_2_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_2_0 = _per_bank_not_silent_update_2_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_51 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_2_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_5_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_2_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_2_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_129 = _wrbypass_io_T_25[0] ? bank_wrbypasses_2_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_130 = _wrbypass_io_T_25[1] ? bank_wrbypasses_2_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_5_hit_data_0_bits = _wrbypass_io_T_129 | _wrbypass_io_T_130; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_2_1_T_6 = &wrbypass_io_5_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_5_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_2_1_T_7 = ~_per_bank_not_silent_update_2_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_2_1_T_16 = wrbypass_io_5_hit ? _per_bank_not_silent_update_2_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_2_1 = _per_bank_not_silent_update_2_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_61 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_2_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_6_hit = _wrbypass_io_T[0] & bank_wrbypasses_3_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_3_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_154 = _wrbypass_io_T[0] ? bank_wrbypasses_3_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_155 = _wrbypass_io_T[1] ? bank_wrbypasses_3_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_6_hit_data_0_bits = _wrbypass_io_T_154 | _wrbypass_io_T_155; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_3_0_T_6 = &wrbypass_io_6_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_6_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_3_0_T_7 = ~_per_bank_not_silent_update_3_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_3_0_T_16 = wrbypass_io_6_hit ? _per_bank_not_silent_update_3_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_3_0 = _per_bank_not_silent_update_3_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_72 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_3_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_7_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_3_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_3_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_179 = _wrbypass_io_T_25[0] ? bank_wrbypasses_3_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_180 = _wrbypass_io_T_25[1] ? bank_wrbypasses_3_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_7_hit_data_0_bits = _wrbypass_io_T_179 | _wrbypass_io_T_180; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_3_1_T_6 = &wrbypass_io_7_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_7_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_3_1_T_7 = ~_per_bank_not_silent_update_3_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_3_1_T_16 = wrbypass_io_7_hit ? _per_bank_not_silent_update_3_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_3_1 = _per_bank_not_silent_update_3_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_82 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_3_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_8_hit = _wrbypass_io_T[0] & bank_wrbypasses_4_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_4_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_204 = _wrbypass_io_T[0] ? bank_wrbypasses_4_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_205 = _wrbypass_io_T[1] ? bank_wrbypasses_4_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_8_hit_data_0_bits = _wrbypass_io_T_204 | _wrbypass_io_T_205; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_4_0_T_6 = &wrbypass_io_8_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_8_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_4_0_T_7 = ~_per_bank_not_silent_update_4_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_4_0_T_16 = wrbypass_io_8_hit ? _per_bank_not_silent_update_4_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_4_0 = _per_bank_not_silent_update_4_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_93 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_4_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_9_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_4_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_4_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_229 = _wrbypass_io_T_25[0] ? bank_wrbypasses_4_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_230 = _wrbypass_io_T_25[1] ? bank_wrbypasses_4_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_9_hit_data_0_bits = _wrbypass_io_T_229 | _wrbypass_io_T_230; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_4_1_T_6 = &wrbypass_io_9_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_9_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_4_1_T_7 = ~_per_bank_not_silent_update_4_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_4_1_T_16 = wrbypass_io_9_hit ? _per_bank_not_silent_update_4_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_4_1 = _per_bank_not_silent_update_4_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_103 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_4_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_10_hit = _wrbypass_io_T[0] & bank_wrbypasses_5_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_5_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_254 = _wrbypass_io_T[0] ? bank_wrbypasses_5_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_255 = _wrbypass_io_T[1] ? bank_wrbypasses_5_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_10_hit_data_0_bits = _wrbypass_io_T_254 | _wrbypass_io_T_255; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_5_0_T_6 = &wrbypass_io_10_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_10_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_5_0_T_7 = ~_per_bank_not_silent_update_5_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_5_0_T_16 = wrbypass_io_10_hit ? _per_bank_not_silent_update_5_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_5_0 = _per_bank_not_silent_update_5_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_114 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_5_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_11_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_5_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_5_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_279 = _wrbypass_io_T_25[0] ? bank_wrbypasses_5_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_280 = _wrbypass_io_T_25[1] ? bank_wrbypasses_5_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_11_hit_data_0_bits = _wrbypass_io_T_279 | _wrbypass_io_T_280; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_5_1_T_6 = &wrbypass_io_11_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_11_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_5_1_T_7 = ~_per_bank_not_silent_update_5_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_5_1_T_16 = wrbypass_io_11_hit ? _per_bank_not_silent_update_5_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_5_1 = _per_bank_not_silent_update_5_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_124 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_5_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_12_hit = _wrbypass_io_T[0] & bank_wrbypasses_6_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_6_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_304 = _wrbypass_io_T[0] ? bank_wrbypasses_6_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_305 = _wrbypass_io_T[1] ? bank_wrbypasses_6_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_12_hit_data_0_bits = _wrbypass_io_T_304 | _wrbypass_io_T_305; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_6_0_T_6 = &wrbypass_io_12_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_12_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_6_0_T_7 = ~_per_bank_not_silent_update_6_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_6_0_T_16 = wrbypass_io_12_hit ? _per_bank_not_silent_update_6_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_6_0 = _per_bank_not_silent_update_6_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_135 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_6_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_13_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_6_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_6_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_329 = _wrbypass_io_T_25[0] ? bank_wrbypasses_6_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_330 = _wrbypass_io_T_25[1] ? bank_wrbypasses_6_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_13_hit_data_0_bits = _wrbypass_io_T_329 | _wrbypass_io_T_330; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_6_1_T_6 = &wrbypass_io_13_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_13_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_6_1_T_7 = ~_per_bank_not_silent_update_6_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_6_1_T_16 = wrbypass_io_13_hit ? _per_bank_not_silent_update_6_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_6_1 = _per_bank_not_silent_update_6_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_145 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_6_1; // @[Tage.scala 375:44]
  wire  wrbypass_io_14_hit = _wrbypass_io_T[0] & bank_wrbypasses_7_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_7_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_354 = _wrbypass_io_T[0] ? bank_wrbypasses_7_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_355 = _wrbypass_io_T[1] ? bank_wrbypasses_7_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_14_hit_data_0_bits = _wrbypass_io_T_354 | _wrbypass_io_T_355; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_7_0_T_6 = &wrbypass_io_14_hit_data_0_bits & _GEN_13 | ~(|
    wrbypass_io_14_hit_data_0_bits) & ~_GEN_13; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_7_0_T_7 = ~_per_bank_not_silent_update_7_0_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_7_0_T_16 = wrbypass_io_14_hit ? _per_bank_not_silent_update_7_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_7_0 = _per_bank_not_silent_update_7_0_T_16 | _GEN_17; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_156 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_7_0; // @[Tage.scala 375:44]
  wire  wrbypass_io_15_hit = _wrbypass_io_T_25[0] & bank_wrbypasses_7_0_io_hit | _wrbypass_io_T_25[1] &
    bank_wrbypasses_7_1_io_hit; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_379 = _wrbypass_io_T_25[0] ? bank_wrbypasses_7_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_380 = _wrbypass_io_T_25[1] ? bank_wrbypasses_7_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_15_hit_data_0_bits = _wrbypass_io_T_379 | _wrbypass_io_T_380; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_7_1_T_6 = &wrbypass_io_15_hit_data_0_bits & _GEN_19 | ~(|
    wrbypass_io_15_hit_data_0_bits) & ~_GEN_19; // @[Tage.scala 415:23]
  wire  _per_bank_not_silent_update_7_1_T_7 = ~_per_bank_not_silent_update_7_1_T_6; // @[Tage.scala 441:11]
  wire  _per_bank_not_silent_update_7_1_T_16 = wrbypass_io_15_hit ? _per_bank_not_silent_update_7_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 440:12]
  wire  per_bank_not_silent_update_7_1 = _per_bank_not_silent_update_7_1_T_16 | _GEN_23; // @[Tage.scala 442:81]
  wire  _per_bank_update_way_mask_T_166 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_7_1; // @[Tage.scala 375:44]
  wire  _update_u_way_mask_T_3 = _per_bank_update_way_mask_T_2 & io_update_uMask_0; // @[Tage.scala 400:56]
  wire  _update_u_way_mask_T_7 = _per_bank_update_way_mask_T_6 & io_update_uMask_1; // @[Tage.scala 400:56]
  wire  _update_u_way_mask_T_8 = _update_u_way_mask_T_3 | _update_u_way_mask_T_7; // @[Tage.scala 402:15]
  wire  _update_u_way_mask_T_12 = update_unhashed_idx[0] & io_update_uMask_0; // @[Tage.scala 400:56]
  wire  _update_u_way_mask_T_16 = _per_bank_update_way_mask_T_5 & io_update_uMask_1; // @[Tage.scala 400:56]
  wire  _update_u_way_mask_T_17 = _update_u_way_mask_T_12 | _update_u_way_mask_T_16; // @[Tage.scala 402:15]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T = _GEN_13 ? 3'h4 : 3'h3; // @[Tage.scala 433:14]
  wire  per_bank_update_wdata_0_0_ctr_oldSatTaken = wrbypass_io_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_0_0_ctr_oldSatNotTaken = wrbypass_io_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_5 = wrbypass_io_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_7 = wrbypass_io_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_0_0_ctr_T_5 :
    _per_bank_update_wdata_0_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_9 = per_bank_update_wdata_0_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_0_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_10 = per_bank_update_wdata_0_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_0_0_ctr_T_9; // @[BPU.scala 89:8]
  wire  per_bank_update_wdata_0_0_ctr_oldSatTaken_1 = _GEN_15 == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_0_0_ctr_oldSatNotTaken_1 = _GEN_15 == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_15 = _GEN_15 + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_17 = _GEN_15 - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_18 = _GEN_13 ? _per_bank_update_wdata_0_0_ctr_T_15 :
    _per_bank_update_wdata_0_0_ctr_T_17; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_19 = per_bank_update_wdata_0_0_ctr_oldSatNotTaken_1 &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_0_0_ctr_T_18; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_20 = per_bank_update_wdata_0_0_ctr_oldSatTaken_1 & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_0_0_ctr_T_19; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_21 = wrbypass_io_hit ? _per_bank_update_wdata_0_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_0_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_0_0_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T = _GEN_19 ? 3'h4 : 3'h3; // @[Tage.scala 433:14]
  wire  per_bank_update_wdata_0_1_ctr_oldSatTaken = wrbypass_io_1_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_0_1_ctr_oldSatNotTaken = wrbypass_io_1_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_5 = wrbypass_io_1_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_7 = wrbypass_io_1_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_0_1_ctr_T_5 :
    _per_bank_update_wdata_0_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_9 = per_bank_update_wdata_0_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_0_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_10 = per_bank_update_wdata_0_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_0_1_ctr_T_9; // @[BPU.scala 89:8]
  wire  per_bank_update_wdata_0_1_ctr_oldSatTaken_1 = _GEN_21 == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_0_1_ctr_oldSatNotTaken_1 = _GEN_21 == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_15 = _GEN_21 + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_17 = _GEN_21 - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_18 = _GEN_19 ? _per_bank_update_wdata_0_1_ctr_T_15 :
    _per_bank_update_wdata_0_1_ctr_T_17; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_19 = per_bank_update_wdata_0_1_ctr_oldSatNotTaken_1 &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_0_1_ctr_T_18; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_20 = per_bank_update_wdata_0_1_ctr_oldSatTaken_1 & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_0_1_ctr_T_19; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_21 = wrbypass_io_1_hit ? _per_bank_update_wdata_0_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_0_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_0_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_0_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_0_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_0_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_0_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_0_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_1_0_ctr_oldSatTaken = wrbypass_io_2_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_1_0_ctr_oldSatNotTaken = wrbypass_io_2_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_5 = wrbypass_io_2_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_7 = wrbypass_io_2_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_1_0_ctr_T_5 :
    _per_bank_update_wdata_1_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_9 = per_bank_update_wdata_1_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_1_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_10 = per_bank_update_wdata_1_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_1_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_21 = wrbypass_io_2_hit ? _per_bank_update_wdata_1_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_1_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_1_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_1_1_ctr_oldSatTaken = wrbypass_io_3_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_1_1_ctr_oldSatNotTaken = wrbypass_io_3_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_5 = wrbypass_io_3_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_7 = wrbypass_io_3_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_1_1_ctr_T_5 :
    _per_bank_update_wdata_1_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_9 = per_bank_update_wdata_1_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_1_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_10 = per_bank_update_wdata_1_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_1_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_21 = wrbypass_io_3_hit ? _per_bank_update_wdata_1_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_1_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_1_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_1_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_1_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_1_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_1_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_1_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_2_0_ctr_oldSatTaken = wrbypass_io_4_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_2_0_ctr_oldSatNotTaken = wrbypass_io_4_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_5 = wrbypass_io_4_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_7 = wrbypass_io_4_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_2_0_ctr_T_5 :
    _per_bank_update_wdata_2_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_9 = per_bank_update_wdata_2_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_2_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_10 = per_bank_update_wdata_2_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_2_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_21 = wrbypass_io_4_hit ? _per_bank_update_wdata_2_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_2_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_2_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_2_1_ctr_oldSatTaken = wrbypass_io_5_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_2_1_ctr_oldSatNotTaken = wrbypass_io_5_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_5 = wrbypass_io_5_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_7 = wrbypass_io_5_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_2_1_ctr_T_5 :
    _per_bank_update_wdata_2_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_9 = per_bank_update_wdata_2_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_2_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_10 = per_bank_update_wdata_2_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_2_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_21 = wrbypass_io_5_hit ? _per_bank_update_wdata_2_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_2_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_2_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_2_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_2_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_2_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_2_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_2_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_3_0_ctr_oldSatTaken = wrbypass_io_6_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_3_0_ctr_oldSatNotTaken = wrbypass_io_6_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_5 = wrbypass_io_6_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_7 = wrbypass_io_6_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_3_0_ctr_T_5 :
    _per_bank_update_wdata_3_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_9 = per_bank_update_wdata_3_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_3_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_10 = per_bank_update_wdata_3_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_3_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_21 = wrbypass_io_6_hit ? _per_bank_update_wdata_3_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_3_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_3_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_3_1_ctr_oldSatTaken = wrbypass_io_7_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_3_1_ctr_oldSatNotTaken = wrbypass_io_7_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_5 = wrbypass_io_7_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_7 = wrbypass_io_7_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_3_1_ctr_T_5 :
    _per_bank_update_wdata_3_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_9 = per_bank_update_wdata_3_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_3_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_10 = per_bank_update_wdata_3_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_3_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_21 = wrbypass_io_7_hit ? _per_bank_update_wdata_3_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_3_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_3_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_3_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_3_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_3_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_3_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_3_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_4_0_ctr_oldSatTaken = wrbypass_io_8_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_4_0_ctr_oldSatNotTaken = wrbypass_io_8_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_5 = wrbypass_io_8_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_7 = wrbypass_io_8_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_4_0_ctr_T_5 :
    _per_bank_update_wdata_4_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_9 = per_bank_update_wdata_4_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_4_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_10 = per_bank_update_wdata_4_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_4_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_21 = wrbypass_io_8_hit ? _per_bank_update_wdata_4_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_4_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_4_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_4_1_ctr_oldSatTaken = wrbypass_io_9_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_4_1_ctr_oldSatNotTaken = wrbypass_io_9_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_5 = wrbypass_io_9_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_7 = wrbypass_io_9_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_4_1_ctr_T_5 :
    _per_bank_update_wdata_4_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_9 = per_bank_update_wdata_4_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_4_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_10 = per_bank_update_wdata_4_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_4_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_21 = wrbypass_io_9_hit ? _per_bank_update_wdata_4_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_4_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_4_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_4_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_4_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_4_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_4_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_4_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_5_0_ctr_oldSatTaken = wrbypass_io_10_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_5_0_ctr_oldSatNotTaken = wrbypass_io_10_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_5 = wrbypass_io_10_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_7 = wrbypass_io_10_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_5_0_ctr_T_5 :
    _per_bank_update_wdata_5_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_9 = per_bank_update_wdata_5_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_5_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_10 = per_bank_update_wdata_5_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_5_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_21 = wrbypass_io_10_hit ? _per_bank_update_wdata_5_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_5_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_5_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_5_1_ctr_oldSatTaken = wrbypass_io_11_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_5_1_ctr_oldSatNotTaken = wrbypass_io_11_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_5 = wrbypass_io_11_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_7 = wrbypass_io_11_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_5_1_ctr_T_5 :
    _per_bank_update_wdata_5_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_9 = per_bank_update_wdata_5_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_5_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_10 = per_bank_update_wdata_5_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_5_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_21 = wrbypass_io_11_hit ? _per_bank_update_wdata_5_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_5_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_5_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_5_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_5_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_5_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_5_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_5_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_6_0_ctr_oldSatTaken = wrbypass_io_12_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_6_0_ctr_oldSatNotTaken = wrbypass_io_12_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_5 = wrbypass_io_12_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_7 = wrbypass_io_12_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_6_0_ctr_T_5 :
    _per_bank_update_wdata_6_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_9 = per_bank_update_wdata_6_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_6_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_10 = per_bank_update_wdata_6_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_6_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_21 = wrbypass_io_12_hit ? _per_bank_update_wdata_6_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_6_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_6_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_6_1_ctr_oldSatTaken = wrbypass_io_13_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_6_1_ctr_oldSatNotTaken = wrbypass_io_13_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_5 = wrbypass_io_13_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_7 = wrbypass_io_13_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_6_1_ctr_T_5 :
    _per_bank_update_wdata_6_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_9 = per_bank_update_wdata_6_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_6_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_10 = per_bank_update_wdata_6_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_6_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_21 = wrbypass_io_13_hit ? _per_bank_update_wdata_6_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_6_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_6_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_6_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_6_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_6_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_6_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_6_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_7_0_ctr_oldSatTaken = wrbypass_io_14_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_7_0_ctr_oldSatNotTaken = wrbypass_io_14_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_5 = wrbypass_io_14_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_7 = wrbypass_io_14_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_8 = _GEN_13 ? _per_bank_update_wdata_7_0_ctr_T_5 :
    _per_bank_update_wdata_7_0_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_9 = per_bank_update_wdata_7_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_7_0_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_10 = per_bank_update_wdata_7_0_ctr_oldSatTaken & _GEN_13 ? 3'h7 :
    _per_bank_update_wdata_7_0_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_21 = wrbypass_io_14_hit ? _per_bank_update_wdata_7_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_7_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_7_0_ctr_T_21; // @[Tage.scala 432:12]
  wire  per_bank_update_wdata_7_1_ctr_oldSatTaken = wrbypass_io_15_hit_data_0_bits == 3'h7; // @[BPU.scala 87:27]
  wire  per_bank_update_wdata_7_1_ctr_oldSatNotTaken = wrbypass_io_15_hit_data_0_bits == 3'h0; // @[BPU.scala 88:30]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_5 = wrbypass_io_15_hit_data_0_bits + 3'h1; // @[BPU.scala 91:24]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_7 = wrbypass_io_15_hit_data_0_bits - 3'h1; // @[BPU.scala 91:35]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_8 = _GEN_19 ? _per_bank_update_wdata_7_1_ctr_T_5 :
    _per_bank_update_wdata_7_1_ctr_T_7; // @[BPU.scala 91:12]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_9 = per_bank_update_wdata_7_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_7_1_ctr_T_8; // @[BPU.scala 90:10]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_10 = per_bank_update_wdata_7_1_ctr_oldSatTaken & _GEN_19 ? 3'h7 :
    _per_bank_update_wdata_7_1_ctr_T_9; // @[BPU.scala 89:8]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_21 = wrbypass_io_15_hit ? _per_bank_update_wdata_7_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 434:14]
  wire [2:0] per_bank_update_wdata_7_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_7_1_ctr_T_21; // @[Tage.scala 432:12]
  wire [2:0] _bank_wrbypasses_7_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_7_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_7_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_1_io_write_data_0_T_4 = _wrbypass_io_T_25[0] ? per_bank_update_wdata_7_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_1_io_write_data_0_T_5 = _wrbypass_io_T_25[1] ? per_bank_update_wdata_7_1_ctr : 3'h0; // @[Mux.scala 27:73]
  FoldedSRAMTemplate us ( // @[Tage.scala 306:13]
    .clock(us_clock),
    .reset(us_reset),
    .io_rreq_valid(us_io_rreq_valid),
    .io_rreq_bits_setIdx(us_io_rreq_bits_setIdx),
    .io_rresp_data_0(us_io_rresp_data_0),
    .io_rresp_data_1(us_io_rresp_data_1),
    .io_wreq_valid(us_io_wreq_valid),
    .io_wreq_bits_setIdx(us_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(us_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(us_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(us_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_0 ( // @[Tage.scala 311:11]
    .clock(table_banks_0_clock),
    .reset(table_banks_0_reset),
    .io_rreq_valid(table_banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_0_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_0_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_0_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_0_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_0_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_0_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_0_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_0_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_0_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_0_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_0_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_1 ( // @[Tage.scala 311:11]
    .clock(table_banks_1_clock),
    .reset(table_banks_1_reset),
    .io_rreq_valid(table_banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_1_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_1_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_1_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_1_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_1_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_1_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_1_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_1_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_1_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_1_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_1_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_2 ( // @[Tage.scala 311:11]
    .clock(table_banks_2_clock),
    .reset(table_banks_2_reset),
    .io_rreq_valid(table_banks_2_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_2_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_2_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_2_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_2_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_2_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_2_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_2_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_2_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_2_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_2_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_2_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_2_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_2_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_3 ( // @[Tage.scala 311:11]
    .clock(table_banks_3_clock),
    .reset(table_banks_3_reset),
    .io_rreq_valid(table_banks_3_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_3_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_3_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_3_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_3_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_3_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_3_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_3_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_3_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_3_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_3_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_3_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_3_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_3_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_4 ( // @[Tage.scala 311:11]
    .clock(table_banks_4_clock),
    .reset(table_banks_4_reset),
    .io_rreq_valid(table_banks_4_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_4_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_4_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_4_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_4_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_4_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_4_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_4_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_4_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_4_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_4_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_4_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_4_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_4_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_5 ( // @[Tage.scala 311:11]
    .clock(table_banks_5_clock),
    .reset(table_banks_5_reset),
    .io_rreq_valid(table_banks_5_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_5_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_5_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_5_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_5_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_5_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_5_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_5_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_5_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_5_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_5_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_5_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_5_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_5_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_6 ( // @[Tage.scala 311:11]
    .clock(table_banks_6_clock),
    .reset(table_banks_6_reset),
    .io_rreq_valid(table_banks_6_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_6_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_6_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_6_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_6_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_6_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_6_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_6_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_6_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_6_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_6_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_6_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_6_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_6_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_37 table_banks_7 ( // @[Tage.scala 311:11]
    .clock(table_banks_7_clock),
    .reset(table_banks_7_reset),
    .io_rreq_valid(table_banks_7_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_7_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_7_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_7_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_7_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_7_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_7_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_7_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_7_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_7_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_7_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_7_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_7_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_7_io_wreq_bits_waymask)
  );
  WrBypass_64 bank_wrbypasses_0_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_0_0_clock),
    .reset(bank_wrbypasses_0_0_reset),
    .io_wen(bank_wrbypasses_0_0_io_wen),
    .io_write_idx(bank_wrbypasses_0_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_0_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_0_0_io_write_data_0),
    .io_hit(bank_wrbypasses_0_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_0_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_0_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_0_1_clock),
    .reset(bank_wrbypasses_0_1_reset),
    .io_wen(bank_wrbypasses_0_1_io_wen),
    .io_write_idx(bank_wrbypasses_0_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_0_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_0_1_io_write_data_0),
    .io_hit(bank_wrbypasses_0_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_0_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_1_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_1_0_clock),
    .reset(bank_wrbypasses_1_0_reset),
    .io_wen(bank_wrbypasses_1_0_io_wen),
    .io_write_idx(bank_wrbypasses_1_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_1_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_1_0_io_write_data_0),
    .io_hit(bank_wrbypasses_1_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_1_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_1_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_1_1_clock),
    .reset(bank_wrbypasses_1_1_reset),
    .io_wen(bank_wrbypasses_1_1_io_wen),
    .io_write_idx(bank_wrbypasses_1_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_1_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_1_1_io_write_data_0),
    .io_hit(bank_wrbypasses_1_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_1_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_2_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_2_0_clock),
    .reset(bank_wrbypasses_2_0_reset),
    .io_wen(bank_wrbypasses_2_0_io_wen),
    .io_write_idx(bank_wrbypasses_2_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_2_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_2_0_io_write_data_0),
    .io_hit(bank_wrbypasses_2_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_2_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_2_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_2_1_clock),
    .reset(bank_wrbypasses_2_1_reset),
    .io_wen(bank_wrbypasses_2_1_io_wen),
    .io_write_idx(bank_wrbypasses_2_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_2_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_2_1_io_write_data_0),
    .io_hit(bank_wrbypasses_2_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_2_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_3_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_3_0_clock),
    .reset(bank_wrbypasses_3_0_reset),
    .io_wen(bank_wrbypasses_3_0_io_wen),
    .io_write_idx(bank_wrbypasses_3_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_3_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_3_0_io_write_data_0),
    .io_hit(bank_wrbypasses_3_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_3_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_3_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_3_1_clock),
    .reset(bank_wrbypasses_3_1_reset),
    .io_wen(bank_wrbypasses_3_1_io_wen),
    .io_write_idx(bank_wrbypasses_3_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_3_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_3_1_io_write_data_0),
    .io_hit(bank_wrbypasses_3_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_3_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_4_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_4_0_clock),
    .reset(bank_wrbypasses_4_0_reset),
    .io_wen(bank_wrbypasses_4_0_io_wen),
    .io_write_idx(bank_wrbypasses_4_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_4_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_4_0_io_write_data_0),
    .io_hit(bank_wrbypasses_4_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_4_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_4_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_4_1_clock),
    .reset(bank_wrbypasses_4_1_reset),
    .io_wen(bank_wrbypasses_4_1_io_wen),
    .io_write_idx(bank_wrbypasses_4_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_4_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_4_1_io_write_data_0),
    .io_hit(bank_wrbypasses_4_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_4_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_5_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_5_0_clock),
    .reset(bank_wrbypasses_5_0_reset),
    .io_wen(bank_wrbypasses_5_0_io_wen),
    .io_write_idx(bank_wrbypasses_5_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_5_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_5_0_io_write_data_0),
    .io_hit(bank_wrbypasses_5_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_5_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_5_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_5_1_clock),
    .reset(bank_wrbypasses_5_1_reset),
    .io_wen(bank_wrbypasses_5_1_io_wen),
    .io_write_idx(bank_wrbypasses_5_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_5_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_5_1_io_write_data_0),
    .io_hit(bank_wrbypasses_5_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_5_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_6_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_6_0_clock),
    .reset(bank_wrbypasses_6_0_reset),
    .io_wen(bank_wrbypasses_6_0_io_wen),
    .io_write_idx(bank_wrbypasses_6_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_6_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_6_0_io_write_data_0),
    .io_hit(bank_wrbypasses_6_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_6_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_6_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_6_1_clock),
    .reset(bank_wrbypasses_6_1_reset),
    .io_wen(bank_wrbypasses_6_1_io_wen),
    .io_write_idx(bank_wrbypasses_6_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_6_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_6_1_io_write_data_0),
    .io_hit(bank_wrbypasses_6_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_6_1_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_7_0 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_7_0_clock),
    .reset(bank_wrbypasses_7_0_reset),
    .io_wen(bank_wrbypasses_7_0_io_wen),
    .io_write_idx(bank_wrbypasses_7_0_io_write_idx),
    .io_write_tag(bank_wrbypasses_7_0_io_write_tag),
    .io_write_data_0(bank_wrbypasses_7_0_io_write_data_0),
    .io_hit(bank_wrbypasses_7_0_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_7_0_io_hit_data_0_bits)
  );
  WrBypass_64 bank_wrbypasses_7_1 ( // @[Tage.scala 419:11]
    .clock(bank_wrbypasses_7_1_clock),
    .reset(bank_wrbypasses_7_1_reset),
    .io_wen(bank_wrbypasses_7_1_io_wen),
    .io_write_idx(bank_wrbypasses_7_1_io_write_idx),
    .io_write_tag(bank_wrbypasses_7_1_io_write_tag),
    .io_write_data_0(bank_wrbypasses_7_1_io_write_data_0),
    .io_hit(bank_wrbypasses_7_1_io_hit),
    .io_hit_data_0_bits(bank_wrbypasses_7_1_io_hit_data_0_bits)
  );
  assign io_req_ready = 1'h1; // @[Tage.scala 392:16]
  assign io_resps_0_valid = per_br_resp_0_valid & per_br_resp_0_tag == s1_tag & ~resp_invalid_by_write; // @[Tage.scala 344:59]
  assign io_resps_0_bits_ctr = _per_br_resp_T_6 | _per_br_resp_T_7; // @[Mux.scala 27:73]
  assign io_resps_0_bits_u = _per_br_resp_T_2[0] & us_io_rresp_data_0 | _per_br_resp_T_2[1] & us_io_rresp_data_1; // @[Mux.scala 27:73]
  assign io_resps_1_valid = per_br_resp_1_valid & per_br_resp_1_tag == s1_tag & ~resp_invalid_by_write; // @[Tage.scala 344:59]
  assign io_resps_1_bits_ctr = _per_br_resp_T_21 | _per_br_resp_T_22; // @[Mux.scala 27:73]
  assign io_resps_1_bits_u = _per_br_resp_T_17[0] & us_io_rresp_data_0 | _per_br_resp_T_17[1] & us_io_rresp_data_1; // @[Mux.scala 27:73]
  assign us_clock = clock;
  assign us_reset = reset | (io_update_reset_u_0 | io_update_reset_u_1); // @[Tage.scala 305:35]
  assign us_io_rreq_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  assign us_io_rreq_bits_setIdx = _idx_T[6:0]; // @[Tage.scala 285:38]
  assign us_io_wreq_valid = io_update_uMask_0 | io_update_uMask_1; // @[Tage.scala 411:41]
  assign us_io_wreq_bits_setIdx = _idx_T_1[6:0]; // @[Tage.scala 285:38]
  assign us_io_wreq_bits_data_0 = _per_bank_update_way_mask_T_2 & io_update_us_0 | _per_bank_update_way_mask_T_6 &
    io_update_us_1; // @[Mux.scala 27:73]
  assign us_io_wreq_bits_data_1 = update_unhashed_idx[0] & io_update_us_0 | _per_bank_update_way_mask_T_5 &
    io_update_us_1; // @[Mux.scala 27:73]
  assign us_io_wreq_bits_waymask = {_update_u_way_mask_T_17,_update_u_way_mask_T_8}; // @[Tage.scala 403:7]
  assign table_banks_0_clock = clock;
  assign table_banks_0_reset = reset;
  assign table_banks_0_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_0; // @[Tage.scala 318:50]
  assign table_banks_0_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_0_io_wreq_valid = _T_5 & update_req_bank_1h_0 & (per_bank_not_silent_update_0_0 |
    per_bank_not_silent_update_0_1); // @[Tage.scala 383:70]
  assign table_banks_0_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_0_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_0_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_0_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_0_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_0_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_0_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_0_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_19,_per_bank_update_way_mask_T_9}; // @[Tage.scala 376:11]
  assign table_banks_1_clock = clock;
  assign table_banks_1_reset = reset;
  assign table_banks_1_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_1; // @[Tage.scala 318:50]
  assign table_banks_1_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_1_io_wreq_valid = _T_5 & update_req_bank_1h_1 & (per_bank_not_silent_update_1_0 |
    per_bank_not_silent_update_1_1); // @[Tage.scala 383:70]
  assign table_banks_1_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_1_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_1_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_1_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_1_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_1_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_1_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_1_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_40,_per_bank_update_way_mask_T_30}; // @[Tage.scala 376:11]
  assign table_banks_2_clock = clock;
  assign table_banks_2_reset = reset;
  assign table_banks_2_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_2; // @[Tage.scala 318:50]
  assign table_banks_2_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_2_io_wreq_valid = _T_5 & update_req_bank_1h_2 & (per_bank_not_silent_update_2_0 |
    per_bank_not_silent_update_2_1); // @[Tage.scala 383:70]
  assign table_banks_2_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_2_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_2_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_2_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_2_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_2_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_2_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_2_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_61,_per_bank_update_way_mask_T_51}; // @[Tage.scala 376:11]
  assign table_banks_3_clock = clock;
  assign table_banks_3_reset = reset;
  assign table_banks_3_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_3; // @[Tage.scala 318:50]
  assign table_banks_3_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_3_io_wreq_valid = _T_5 & update_req_bank_1h_3 & (per_bank_not_silent_update_3_0 |
    per_bank_not_silent_update_3_1); // @[Tage.scala 383:70]
  assign table_banks_3_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_3_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_3_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_3_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_3_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_3_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_3_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_3_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_82,_per_bank_update_way_mask_T_72}; // @[Tage.scala 376:11]
  assign table_banks_4_clock = clock;
  assign table_banks_4_reset = reset;
  assign table_banks_4_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_4; // @[Tage.scala 318:50]
  assign table_banks_4_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_4_io_wreq_valid = _T_5 & update_req_bank_1h_4 & (per_bank_not_silent_update_4_0 |
    per_bank_not_silent_update_4_1); // @[Tage.scala 383:70]
  assign table_banks_4_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_4_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_4_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_4_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_4_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_4_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_4_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_4_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_103,_per_bank_update_way_mask_T_93}; // @[Tage.scala 376:11]
  assign table_banks_5_clock = clock;
  assign table_banks_5_reset = reset;
  assign table_banks_5_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_5; // @[Tage.scala 318:50]
  assign table_banks_5_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_5_io_wreq_valid = _T_5 & update_req_bank_1h_5 & (per_bank_not_silent_update_5_0 |
    per_bank_not_silent_update_5_1); // @[Tage.scala 383:70]
  assign table_banks_5_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_5_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_5_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_5_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_5_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_5_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_5_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_5_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_124,_per_bank_update_way_mask_T_114}; // @[Tage.scala 376:11]
  assign table_banks_6_clock = clock;
  assign table_banks_6_reset = reset;
  assign table_banks_6_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_6; // @[Tage.scala 318:50]
  assign table_banks_6_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_6_io_wreq_valid = _T_5 & update_req_bank_1h_6 & (per_bank_not_silent_update_6_0 |
    per_bank_not_silent_update_6_1); // @[Tage.scala 383:70]
  assign table_banks_6_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_6_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_6_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_6_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_6_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_6_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_6_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_6_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_145,_per_bank_update_way_mask_T_135}; // @[Tage.scala 376:11]
  assign table_banks_7_clock = clock;
  assign table_banks_7_reset = reset;
  assign table_banks_7_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_7; // @[Tage.scala 318:50]
  assign table_banks_7_io_rreq_bits_setIdx = s0_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_7_io_wreq_valid = _T_5 & update_req_bank_1h_7 & (per_bank_not_silent_update_7_0 |
    per_bank_not_silent_update_7_1); // @[Tage.scala 383:70]
  assign table_banks_7_io_wreq_bits_setIdx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign table_banks_7_io_wreq_bits_data_0_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_7_io_wreq_bits_data_0_ctr = _GEN_17 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_7_0_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_7_io_wreq_bits_data_1_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign table_banks_7_io_wreq_bits_data_1_ctr = _GEN_23 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_7_1_ctr_T_21; // @[Tage.scala 432:12]
  assign table_banks_7_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_166,_per_bank_update_way_mask_T_156}; // @[Tage.scala 376:11]
  assign bank_wrbypasses_0_0_clock = clock;
  assign bank_wrbypasses_0_0_reset = reset;
  assign bank_wrbypasses_0_0_io_wen = io_update_mask_0 & update_req_bank_1h_0; // @[Tage.scala 452:45]
  assign bank_wrbypasses_0_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_0_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_0_0_io_write_data_0 = _bank_wrbypasses_0_0_io_write_data_0_T_4 |
    _bank_wrbypasses_0_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_0_1_clock = clock;
  assign bank_wrbypasses_0_1_reset = reset;
  assign bank_wrbypasses_0_1_io_wen = io_update_mask_1 & update_req_bank_1h_0; // @[Tage.scala 452:45]
  assign bank_wrbypasses_0_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_0_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_0_1_io_write_data_0 = _bank_wrbypasses_0_1_io_write_data_0_T_4 |
    _bank_wrbypasses_0_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_1_0_clock = clock;
  assign bank_wrbypasses_1_0_reset = reset;
  assign bank_wrbypasses_1_0_io_wen = io_update_mask_0 & update_req_bank_1h_1; // @[Tage.scala 452:45]
  assign bank_wrbypasses_1_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_1_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_1_0_io_write_data_0 = _bank_wrbypasses_1_0_io_write_data_0_T_4 |
    _bank_wrbypasses_1_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_1_1_clock = clock;
  assign bank_wrbypasses_1_1_reset = reset;
  assign bank_wrbypasses_1_1_io_wen = io_update_mask_1 & update_req_bank_1h_1; // @[Tage.scala 452:45]
  assign bank_wrbypasses_1_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_1_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_1_1_io_write_data_0 = _bank_wrbypasses_1_1_io_write_data_0_T_4 |
    _bank_wrbypasses_1_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_2_0_clock = clock;
  assign bank_wrbypasses_2_0_reset = reset;
  assign bank_wrbypasses_2_0_io_wen = io_update_mask_0 & update_req_bank_1h_2; // @[Tage.scala 452:45]
  assign bank_wrbypasses_2_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_2_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_2_0_io_write_data_0 = _bank_wrbypasses_2_0_io_write_data_0_T_4 |
    _bank_wrbypasses_2_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_2_1_clock = clock;
  assign bank_wrbypasses_2_1_reset = reset;
  assign bank_wrbypasses_2_1_io_wen = io_update_mask_1 & update_req_bank_1h_2; // @[Tage.scala 452:45]
  assign bank_wrbypasses_2_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_2_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_2_1_io_write_data_0 = _bank_wrbypasses_2_1_io_write_data_0_T_4 |
    _bank_wrbypasses_2_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_3_0_clock = clock;
  assign bank_wrbypasses_3_0_reset = reset;
  assign bank_wrbypasses_3_0_io_wen = io_update_mask_0 & update_req_bank_1h_3; // @[Tage.scala 452:45]
  assign bank_wrbypasses_3_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_3_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_3_0_io_write_data_0 = _bank_wrbypasses_3_0_io_write_data_0_T_4 |
    _bank_wrbypasses_3_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_3_1_clock = clock;
  assign bank_wrbypasses_3_1_reset = reset;
  assign bank_wrbypasses_3_1_io_wen = io_update_mask_1 & update_req_bank_1h_3; // @[Tage.scala 452:45]
  assign bank_wrbypasses_3_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_3_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_3_1_io_write_data_0 = _bank_wrbypasses_3_1_io_write_data_0_T_4 |
    _bank_wrbypasses_3_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_4_0_clock = clock;
  assign bank_wrbypasses_4_0_reset = reset;
  assign bank_wrbypasses_4_0_io_wen = io_update_mask_0 & update_req_bank_1h_4; // @[Tage.scala 452:45]
  assign bank_wrbypasses_4_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_4_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_4_0_io_write_data_0 = _bank_wrbypasses_4_0_io_write_data_0_T_4 |
    _bank_wrbypasses_4_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_4_1_clock = clock;
  assign bank_wrbypasses_4_1_reset = reset;
  assign bank_wrbypasses_4_1_io_wen = io_update_mask_1 & update_req_bank_1h_4; // @[Tage.scala 452:45]
  assign bank_wrbypasses_4_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_4_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_4_1_io_write_data_0 = _bank_wrbypasses_4_1_io_write_data_0_T_4 |
    _bank_wrbypasses_4_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_5_0_clock = clock;
  assign bank_wrbypasses_5_0_reset = reset;
  assign bank_wrbypasses_5_0_io_wen = io_update_mask_0 & update_req_bank_1h_5; // @[Tage.scala 452:45]
  assign bank_wrbypasses_5_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_5_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_5_0_io_write_data_0 = _bank_wrbypasses_5_0_io_write_data_0_T_4 |
    _bank_wrbypasses_5_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_5_1_clock = clock;
  assign bank_wrbypasses_5_1_reset = reset;
  assign bank_wrbypasses_5_1_io_wen = io_update_mask_1 & update_req_bank_1h_5; // @[Tage.scala 452:45]
  assign bank_wrbypasses_5_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_5_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_5_1_io_write_data_0 = _bank_wrbypasses_5_1_io_write_data_0_T_4 |
    _bank_wrbypasses_5_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_6_0_clock = clock;
  assign bank_wrbypasses_6_0_reset = reset;
  assign bank_wrbypasses_6_0_io_wen = io_update_mask_0 & update_req_bank_1h_6; // @[Tage.scala 452:45]
  assign bank_wrbypasses_6_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_6_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_6_0_io_write_data_0 = _bank_wrbypasses_6_0_io_write_data_0_T_4 |
    _bank_wrbypasses_6_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_6_1_clock = clock;
  assign bank_wrbypasses_6_1_reset = reset;
  assign bank_wrbypasses_6_1_io_wen = io_update_mask_1 & update_req_bank_1h_6; // @[Tage.scala 452:45]
  assign bank_wrbypasses_6_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_6_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_6_1_io_write_data_0 = _bank_wrbypasses_6_1_io_write_data_0_T_4 |
    _bank_wrbypasses_6_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_7_0_clock = clock;
  assign bank_wrbypasses_7_0_reset = reset;
  assign bank_wrbypasses_7_0_io_wen = io_update_mask_0 & update_req_bank_1h_7; // @[Tage.scala 452:45]
  assign bank_wrbypasses_7_0_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_7_0_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_7_0_io_write_data_0 = _bank_wrbypasses_7_0_io_write_data_0_T_4 |
    _bank_wrbypasses_7_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_7_1_clock = clock;
  assign bank_wrbypasses_7_1_reset = reset;
  assign bank_wrbypasses_7_1_io_wen = io_update_mask_1 & update_req_bank_1h_7; // @[Tage.scala 452:45]
  assign bank_wrbypasses_7_1_io_write_idx = update_idx[6:3]; // @[Tage.scala 262:37]
  assign bank_wrbypasses_7_1_io_write_tag = _tag_T_5[8:0]; // @[Tage.scala 286:59]
  assign bank_wrbypasses_7_1_io_write_data_0 = _bank_wrbypasses_7_1_io_write_data_0_T_4 |
    _bank_wrbypasses_7_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_unhashed_idx <= req_unhashed_idx; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_tag <= s0_tag; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_0 <= s0_bank_req_1h_0; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_1 <= s0_bank_req_1h_1; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_2 <= s0_bank_req_1h_2; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_3 <= s0_bank_req_1h_3; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_4 <= s0_bank_req_1h_4; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_5 <= s0_bank_req_1h_5; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_6 <= s0_bank_req_1h_6; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_7 <= s0_bank_req_1h_7; // @[Reg.scala 17:22]
    end
    s1_bank_has_write_last_cycle_0 <= table_banks_0_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_1 <= table_banks_1_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_2 <= table_banks_2_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_3 <= table_banks_3_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_4 <= table_banks_4_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_5 <= table_banks_5_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_6 <= table_banks_6_io_wreq_valid; // @[Tage.scala 331:{53,53}]
    s1_bank_has_write_last_cycle_7 <= table_banks_7_io_wreq_valid; // @[Tage.scala 331:{53,53}]
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
  s1_unhashed_idx = _RAND_0[37:0];
  _RAND_1 = {1{`RANDOM}};
  s1_tag = _RAND_1[8:0];
  _RAND_2 = {1{`RANDOM}};
  s1_bank_req_1h_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_bank_req_1h_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_bank_req_1h_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_bank_req_1h_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_bank_req_1h_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_bank_req_1h_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_bank_req_1h_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_bank_req_1h_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_4 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_6 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s1_bank_has_write_last_cycle_7 = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
