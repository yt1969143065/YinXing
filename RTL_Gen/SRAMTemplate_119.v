module SRAMTemplate_119(
  input         clock,
  output        io_rreq_ready,
  input         io_rreq_valid,
  input  [6:0]  io_rreq_bits_setIdx,
  output [16:0] io_rresp_data_0_entries_tag,
  output [15:0] io_rresp_data_0_entries_asid,
  output [23:0] io_rresp_data_0_entries_ppns_0,
  output [23:0] io_rresp_data_0_entries_ppns_1,
  output [23:0] io_rresp_data_0_entries_ppns_2,
  output [23:0] io_rresp_data_0_entries_ppns_3,
  output [23:0] io_rresp_data_0_entries_ppns_4,
  output [23:0] io_rresp_data_0_entries_ppns_5,
  output [23:0] io_rresp_data_0_entries_ppns_6,
  output [23:0] io_rresp_data_0_entries_ppns_7,
  output        io_rresp_data_0_entries_vs_0,
  output        io_rresp_data_0_entries_vs_1,
  output        io_rresp_data_0_entries_vs_2,
  output        io_rresp_data_0_entries_vs_3,
  output        io_rresp_data_0_entries_vs_4,
  output        io_rresp_data_0_entries_vs_5,
  output        io_rresp_data_0_entries_vs_6,
  output        io_rresp_data_0_entries_vs_7,
  output        io_rresp_data_0_entries_perms_0_d,
  output        io_rresp_data_0_entries_perms_0_a,
  output        io_rresp_data_0_entries_perms_0_g,
  output        io_rresp_data_0_entries_perms_0_u,
  output        io_rresp_data_0_entries_perms_0_x,
  output        io_rresp_data_0_entries_perms_0_w,
  output        io_rresp_data_0_entries_perms_0_r,
  output        io_rresp_data_0_entries_perms_1_d,
  output        io_rresp_data_0_entries_perms_1_a,
  output        io_rresp_data_0_entries_perms_1_g,
  output        io_rresp_data_0_entries_perms_1_u,
  output        io_rresp_data_0_entries_perms_1_x,
  output        io_rresp_data_0_entries_perms_1_w,
  output        io_rresp_data_0_entries_perms_1_r,
  output        io_rresp_data_0_entries_perms_2_d,
  output        io_rresp_data_0_entries_perms_2_a,
  output        io_rresp_data_0_entries_perms_2_g,
  output        io_rresp_data_0_entries_perms_2_u,
  output        io_rresp_data_0_entries_perms_2_x,
  output        io_rresp_data_0_entries_perms_2_w,
  output        io_rresp_data_0_entries_perms_2_r,
  output        io_rresp_data_0_entries_perms_3_d,
  output        io_rresp_data_0_entries_perms_3_a,
  output        io_rresp_data_0_entries_perms_3_g,
  output        io_rresp_data_0_entries_perms_3_u,
  output        io_rresp_data_0_entries_perms_3_x,
  output        io_rresp_data_0_entries_perms_3_w,
  output        io_rresp_data_0_entries_perms_3_r,
  output        io_rresp_data_0_entries_perms_4_d,
  output        io_rresp_data_0_entries_perms_4_a,
  output        io_rresp_data_0_entries_perms_4_g,
  output        io_rresp_data_0_entries_perms_4_u,
  output        io_rresp_data_0_entries_perms_4_x,
  output        io_rresp_data_0_entries_perms_4_w,
  output        io_rresp_data_0_entries_perms_4_r,
  output        io_rresp_data_0_entries_perms_5_d,
  output        io_rresp_data_0_entries_perms_5_a,
  output        io_rresp_data_0_entries_perms_5_g,
  output        io_rresp_data_0_entries_perms_5_u,
  output        io_rresp_data_0_entries_perms_5_x,
  output        io_rresp_data_0_entries_perms_5_w,
  output        io_rresp_data_0_entries_perms_5_r,
  output        io_rresp_data_0_entries_perms_6_d,
  output        io_rresp_data_0_entries_perms_6_a,
  output        io_rresp_data_0_entries_perms_6_g,
  output        io_rresp_data_0_entries_perms_6_u,
  output        io_rresp_data_0_entries_perms_6_x,
  output        io_rresp_data_0_entries_perms_6_w,
  output        io_rresp_data_0_entries_perms_6_r,
  output        io_rresp_data_0_entries_perms_7_d,
  output        io_rresp_data_0_entries_perms_7_a,
  output        io_rresp_data_0_entries_perms_7_g,
  output        io_rresp_data_0_entries_perms_7_u,
  output        io_rresp_data_0_entries_perms_7_x,
  output        io_rresp_data_0_entries_perms_7_w,
  output        io_rresp_data_0_entries_perms_7_r,
  output        io_rresp_data_0_entries_prefetch,
  output [38:0] io_rresp_data_0_ecc,
  output [16:0] io_rresp_data_1_entries_tag,
  output [15:0] io_rresp_data_1_entries_asid,
  output [23:0] io_rresp_data_1_entries_ppns_0,
  output [23:0] io_rresp_data_1_entries_ppns_1,
  output [23:0] io_rresp_data_1_entries_ppns_2,
  output [23:0] io_rresp_data_1_entries_ppns_3,
  output [23:0] io_rresp_data_1_entries_ppns_4,
  output [23:0] io_rresp_data_1_entries_ppns_5,
  output [23:0] io_rresp_data_1_entries_ppns_6,
  output [23:0] io_rresp_data_1_entries_ppns_7,
  output        io_rresp_data_1_entries_vs_0,
  output        io_rresp_data_1_entries_vs_1,
  output        io_rresp_data_1_entries_vs_2,
  output        io_rresp_data_1_entries_vs_3,
  output        io_rresp_data_1_entries_vs_4,
  output        io_rresp_data_1_entries_vs_5,
  output        io_rresp_data_1_entries_vs_6,
  output        io_rresp_data_1_entries_vs_7,
  output        io_rresp_data_1_entries_perms_0_d,
  output        io_rresp_data_1_entries_perms_0_a,
  output        io_rresp_data_1_entries_perms_0_g,
  output        io_rresp_data_1_entries_perms_0_u,
  output        io_rresp_data_1_entries_perms_0_x,
  output        io_rresp_data_1_entries_perms_0_w,
  output        io_rresp_data_1_entries_perms_0_r,
  output        io_rresp_data_1_entries_perms_1_d,
  output        io_rresp_data_1_entries_perms_1_a,
  output        io_rresp_data_1_entries_perms_1_g,
  output        io_rresp_data_1_entries_perms_1_u,
  output        io_rresp_data_1_entries_perms_1_x,
  output        io_rresp_data_1_entries_perms_1_w,
  output        io_rresp_data_1_entries_perms_1_r,
  output        io_rresp_data_1_entries_perms_2_d,
  output        io_rresp_data_1_entries_perms_2_a,
  output        io_rresp_data_1_entries_perms_2_g,
  output        io_rresp_data_1_entries_perms_2_u,
  output        io_rresp_data_1_entries_perms_2_x,
  output        io_rresp_data_1_entries_perms_2_w,
  output        io_rresp_data_1_entries_perms_2_r,
  output        io_rresp_data_1_entries_perms_3_d,
  output        io_rresp_data_1_entries_perms_3_a,
  output        io_rresp_data_1_entries_perms_3_g,
  output        io_rresp_data_1_entries_perms_3_u,
  output        io_rresp_data_1_entries_perms_3_x,
  output        io_rresp_data_1_entries_perms_3_w,
  output        io_rresp_data_1_entries_perms_3_r,
  output        io_rresp_data_1_entries_perms_4_d,
  output        io_rresp_data_1_entries_perms_4_a,
  output        io_rresp_data_1_entries_perms_4_g,
  output        io_rresp_data_1_entries_perms_4_u,
  output        io_rresp_data_1_entries_perms_4_x,
  output        io_rresp_data_1_entries_perms_4_w,
  output        io_rresp_data_1_entries_perms_4_r,
  output        io_rresp_data_1_entries_perms_5_d,
  output        io_rresp_data_1_entries_perms_5_a,
  output        io_rresp_data_1_entries_perms_5_g,
  output        io_rresp_data_1_entries_perms_5_u,
  output        io_rresp_data_1_entries_perms_5_x,
  output        io_rresp_data_1_entries_perms_5_w,
  output        io_rresp_data_1_entries_perms_5_r,
  output        io_rresp_data_1_entries_perms_6_d,
  output        io_rresp_data_1_entries_perms_6_a,
  output        io_rresp_data_1_entries_perms_6_g,
  output        io_rresp_data_1_entries_perms_6_u,
  output        io_rresp_data_1_entries_perms_6_x,
  output        io_rresp_data_1_entries_perms_6_w,
  output        io_rresp_data_1_entries_perms_6_r,
  output        io_rresp_data_1_entries_perms_7_d,
  output        io_rresp_data_1_entries_perms_7_a,
  output        io_rresp_data_1_entries_perms_7_g,
  output        io_rresp_data_1_entries_perms_7_u,
  output        io_rresp_data_1_entries_perms_7_x,
  output        io_rresp_data_1_entries_perms_7_w,
  output        io_rresp_data_1_entries_perms_7_r,
  output        io_rresp_data_1_entries_prefetch,
  output [38:0] io_rresp_data_1_ecc,
  output [16:0] io_rresp_data_2_entries_tag,
  output [15:0] io_rresp_data_2_entries_asid,
  output [23:0] io_rresp_data_2_entries_ppns_0,
  output [23:0] io_rresp_data_2_entries_ppns_1,
  output [23:0] io_rresp_data_2_entries_ppns_2,
  output [23:0] io_rresp_data_2_entries_ppns_3,
  output [23:0] io_rresp_data_2_entries_ppns_4,
  output [23:0] io_rresp_data_2_entries_ppns_5,
  output [23:0] io_rresp_data_2_entries_ppns_6,
  output [23:0] io_rresp_data_2_entries_ppns_7,
  output        io_rresp_data_2_entries_vs_0,
  output        io_rresp_data_2_entries_vs_1,
  output        io_rresp_data_2_entries_vs_2,
  output        io_rresp_data_2_entries_vs_3,
  output        io_rresp_data_2_entries_vs_4,
  output        io_rresp_data_2_entries_vs_5,
  output        io_rresp_data_2_entries_vs_6,
  output        io_rresp_data_2_entries_vs_7,
  output        io_rresp_data_2_entries_perms_0_d,
  output        io_rresp_data_2_entries_perms_0_a,
  output        io_rresp_data_2_entries_perms_0_g,
  output        io_rresp_data_2_entries_perms_0_u,
  output        io_rresp_data_2_entries_perms_0_x,
  output        io_rresp_data_2_entries_perms_0_w,
  output        io_rresp_data_2_entries_perms_0_r,
  output        io_rresp_data_2_entries_perms_1_d,
  output        io_rresp_data_2_entries_perms_1_a,
  output        io_rresp_data_2_entries_perms_1_g,
  output        io_rresp_data_2_entries_perms_1_u,
  output        io_rresp_data_2_entries_perms_1_x,
  output        io_rresp_data_2_entries_perms_1_w,
  output        io_rresp_data_2_entries_perms_1_r,
  output        io_rresp_data_2_entries_perms_2_d,
  output        io_rresp_data_2_entries_perms_2_a,
  output        io_rresp_data_2_entries_perms_2_g,
  output        io_rresp_data_2_entries_perms_2_u,
  output        io_rresp_data_2_entries_perms_2_x,
  output        io_rresp_data_2_entries_perms_2_w,
  output        io_rresp_data_2_entries_perms_2_r,
  output        io_rresp_data_2_entries_perms_3_d,
  output        io_rresp_data_2_entries_perms_3_a,
  output        io_rresp_data_2_entries_perms_3_g,
  output        io_rresp_data_2_entries_perms_3_u,
  output        io_rresp_data_2_entries_perms_3_x,
  output        io_rresp_data_2_entries_perms_3_w,
  output        io_rresp_data_2_entries_perms_3_r,
  output        io_rresp_data_2_entries_perms_4_d,
  output        io_rresp_data_2_entries_perms_4_a,
  output        io_rresp_data_2_entries_perms_4_g,
  output        io_rresp_data_2_entries_perms_4_u,
  output        io_rresp_data_2_entries_perms_4_x,
  output        io_rresp_data_2_entries_perms_4_w,
  output        io_rresp_data_2_entries_perms_4_r,
  output        io_rresp_data_2_entries_perms_5_d,
  output        io_rresp_data_2_entries_perms_5_a,
  output        io_rresp_data_2_entries_perms_5_g,
  output        io_rresp_data_2_entries_perms_5_u,
  output        io_rresp_data_2_entries_perms_5_x,
  output        io_rresp_data_2_entries_perms_5_w,
  output        io_rresp_data_2_entries_perms_5_r,
  output        io_rresp_data_2_entries_perms_6_d,
  output        io_rresp_data_2_entries_perms_6_a,
  output        io_rresp_data_2_entries_perms_6_g,
  output        io_rresp_data_2_entries_perms_6_u,
  output        io_rresp_data_2_entries_perms_6_x,
  output        io_rresp_data_2_entries_perms_6_w,
  output        io_rresp_data_2_entries_perms_6_r,
  output        io_rresp_data_2_entries_perms_7_d,
  output        io_rresp_data_2_entries_perms_7_a,
  output        io_rresp_data_2_entries_perms_7_g,
  output        io_rresp_data_2_entries_perms_7_u,
  output        io_rresp_data_2_entries_perms_7_x,
  output        io_rresp_data_2_entries_perms_7_w,
  output        io_rresp_data_2_entries_perms_7_r,
  output        io_rresp_data_2_entries_prefetch,
  output [38:0] io_rresp_data_2_ecc,
  output [16:0] io_rresp_data_3_entries_tag,
  output [15:0] io_rresp_data_3_entries_asid,
  output [23:0] io_rresp_data_3_entries_ppns_0,
  output [23:0] io_rresp_data_3_entries_ppns_1,
  output [23:0] io_rresp_data_3_entries_ppns_2,
  output [23:0] io_rresp_data_3_entries_ppns_3,
  output [23:0] io_rresp_data_3_entries_ppns_4,
  output [23:0] io_rresp_data_3_entries_ppns_5,
  output [23:0] io_rresp_data_3_entries_ppns_6,
  output [23:0] io_rresp_data_3_entries_ppns_7,
  output        io_rresp_data_3_entries_vs_0,
  output        io_rresp_data_3_entries_vs_1,
  output        io_rresp_data_3_entries_vs_2,
  output        io_rresp_data_3_entries_vs_3,
  output        io_rresp_data_3_entries_vs_4,
  output        io_rresp_data_3_entries_vs_5,
  output        io_rresp_data_3_entries_vs_6,
  output        io_rresp_data_3_entries_vs_7,
  output        io_rresp_data_3_entries_perms_0_d,
  output        io_rresp_data_3_entries_perms_0_a,
  output        io_rresp_data_3_entries_perms_0_g,
  output        io_rresp_data_3_entries_perms_0_u,
  output        io_rresp_data_3_entries_perms_0_x,
  output        io_rresp_data_3_entries_perms_0_w,
  output        io_rresp_data_3_entries_perms_0_r,
  output        io_rresp_data_3_entries_perms_1_d,
  output        io_rresp_data_3_entries_perms_1_a,
  output        io_rresp_data_3_entries_perms_1_g,
  output        io_rresp_data_3_entries_perms_1_u,
  output        io_rresp_data_3_entries_perms_1_x,
  output        io_rresp_data_3_entries_perms_1_w,
  output        io_rresp_data_3_entries_perms_1_r,
  output        io_rresp_data_3_entries_perms_2_d,
  output        io_rresp_data_3_entries_perms_2_a,
  output        io_rresp_data_3_entries_perms_2_g,
  output        io_rresp_data_3_entries_perms_2_u,
  output        io_rresp_data_3_entries_perms_2_x,
  output        io_rresp_data_3_entries_perms_2_w,
  output        io_rresp_data_3_entries_perms_2_r,
  output        io_rresp_data_3_entries_perms_3_d,
  output        io_rresp_data_3_entries_perms_3_a,
  output        io_rresp_data_3_entries_perms_3_g,
  output        io_rresp_data_3_entries_perms_3_u,
  output        io_rresp_data_3_entries_perms_3_x,
  output        io_rresp_data_3_entries_perms_3_w,
  output        io_rresp_data_3_entries_perms_3_r,
  output        io_rresp_data_3_entries_perms_4_d,
  output        io_rresp_data_3_entries_perms_4_a,
  output        io_rresp_data_3_entries_perms_4_g,
  output        io_rresp_data_3_entries_perms_4_u,
  output        io_rresp_data_3_entries_perms_4_x,
  output        io_rresp_data_3_entries_perms_4_w,
  output        io_rresp_data_3_entries_perms_4_r,
  output        io_rresp_data_3_entries_perms_5_d,
  output        io_rresp_data_3_entries_perms_5_a,
  output        io_rresp_data_3_entries_perms_5_g,
  output        io_rresp_data_3_entries_perms_5_u,
  output        io_rresp_data_3_entries_perms_5_x,
  output        io_rresp_data_3_entries_perms_5_w,
  output        io_rresp_data_3_entries_perms_5_r,
  output        io_rresp_data_3_entries_perms_6_d,
  output        io_rresp_data_3_entries_perms_6_a,
  output        io_rresp_data_3_entries_perms_6_g,
  output        io_rresp_data_3_entries_perms_6_u,
  output        io_rresp_data_3_entries_perms_6_x,
  output        io_rresp_data_3_entries_perms_6_w,
  output        io_rresp_data_3_entries_perms_6_r,
  output        io_rresp_data_3_entries_perms_7_d,
  output        io_rresp_data_3_entries_perms_7_a,
  output        io_rresp_data_3_entries_perms_7_g,
  output        io_rresp_data_3_entries_perms_7_u,
  output        io_rresp_data_3_entries_perms_7_x,
  output        io_rresp_data_3_entries_perms_7_w,
  output        io_rresp_data_3_entries_perms_7_r,
  output        io_rresp_data_3_entries_prefetch,
  output [38:0] io_rresp_data_3_ecc,
  input         io_wreq_valid,
  input  [6:0]  io_wreq_bits_setIdx,
  input  [16:0] io_wreq_bits_data_0_entries_tag,
  input  [15:0] io_wreq_bits_data_0_entries_asid,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_7,
  input         io_wreq_bits_data_0_entries_vs_0,
  input         io_wreq_bits_data_0_entries_vs_1,
  input         io_wreq_bits_data_0_entries_vs_2,
  input         io_wreq_bits_data_0_entries_vs_3,
  input         io_wreq_bits_data_0_entries_vs_4,
  input         io_wreq_bits_data_0_entries_vs_5,
  input         io_wreq_bits_data_0_entries_vs_6,
  input         io_wreq_bits_data_0_entries_vs_7,
  input         io_wreq_bits_data_0_entries_perms_0_d,
  input         io_wreq_bits_data_0_entries_perms_0_a,
  input         io_wreq_bits_data_0_entries_perms_0_g,
  input         io_wreq_bits_data_0_entries_perms_0_u,
  input         io_wreq_bits_data_0_entries_perms_0_x,
  input         io_wreq_bits_data_0_entries_perms_0_w,
  input         io_wreq_bits_data_0_entries_perms_0_r,
  input         io_wreq_bits_data_0_entries_perms_1_d,
  input         io_wreq_bits_data_0_entries_perms_1_a,
  input         io_wreq_bits_data_0_entries_perms_1_g,
  input         io_wreq_bits_data_0_entries_perms_1_u,
  input         io_wreq_bits_data_0_entries_perms_1_x,
  input         io_wreq_bits_data_0_entries_perms_1_w,
  input         io_wreq_bits_data_0_entries_perms_1_r,
  input         io_wreq_bits_data_0_entries_perms_2_d,
  input         io_wreq_bits_data_0_entries_perms_2_a,
  input         io_wreq_bits_data_0_entries_perms_2_g,
  input         io_wreq_bits_data_0_entries_perms_2_u,
  input         io_wreq_bits_data_0_entries_perms_2_x,
  input         io_wreq_bits_data_0_entries_perms_2_w,
  input         io_wreq_bits_data_0_entries_perms_2_r,
  input         io_wreq_bits_data_0_entries_perms_3_d,
  input         io_wreq_bits_data_0_entries_perms_3_a,
  input         io_wreq_bits_data_0_entries_perms_3_g,
  input         io_wreq_bits_data_0_entries_perms_3_u,
  input         io_wreq_bits_data_0_entries_perms_3_x,
  input         io_wreq_bits_data_0_entries_perms_3_w,
  input         io_wreq_bits_data_0_entries_perms_3_r,
  input         io_wreq_bits_data_0_entries_perms_4_d,
  input         io_wreq_bits_data_0_entries_perms_4_a,
  input         io_wreq_bits_data_0_entries_perms_4_g,
  input         io_wreq_bits_data_0_entries_perms_4_u,
  input         io_wreq_bits_data_0_entries_perms_4_x,
  input         io_wreq_bits_data_0_entries_perms_4_w,
  input         io_wreq_bits_data_0_entries_perms_4_r,
  input         io_wreq_bits_data_0_entries_perms_5_d,
  input         io_wreq_bits_data_0_entries_perms_5_a,
  input         io_wreq_bits_data_0_entries_perms_5_g,
  input         io_wreq_bits_data_0_entries_perms_5_u,
  input         io_wreq_bits_data_0_entries_perms_5_x,
  input         io_wreq_bits_data_0_entries_perms_5_w,
  input         io_wreq_bits_data_0_entries_perms_5_r,
  input         io_wreq_bits_data_0_entries_perms_6_d,
  input         io_wreq_bits_data_0_entries_perms_6_a,
  input         io_wreq_bits_data_0_entries_perms_6_g,
  input         io_wreq_bits_data_0_entries_perms_6_u,
  input         io_wreq_bits_data_0_entries_perms_6_x,
  input         io_wreq_bits_data_0_entries_perms_6_w,
  input         io_wreq_bits_data_0_entries_perms_6_r,
  input         io_wreq_bits_data_0_entries_perms_7_d,
  input         io_wreq_bits_data_0_entries_perms_7_a,
  input         io_wreq_bits_data_0_entries_perms_7_g,
  input         io_wreq_bits_data_0_entries_perms_7_u,
  input         io_wreq_bits_data_0_entries_perms_7_x,
  input         io_wreq_bits_data_0_entries_perms_7_w,
  input         io_wreq_bits_data_0_entries_perms_7_r,
  input         io_wreq_bits_data_0_entries_prefetch,
  input  [38:0] io_wreq_bits_data_0_ecc,
  input  [16:0] io_wreq_bits_data_1_entries_tag,
  input  [15:0] io_wreq_bits_data_1_entries_asid,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_7,
  input         io_wreq_bits_data_1_entries_vs_0,
  input         io_wreq_bits_data_1_entries_vs_1,
  input         io_wreq_bits_data_1_entries_vs_2,
  input         io_wreq_bits_data_1_entries_vs_3,
  input         io_wreq_bits_data_1_entries_vs_4,
  input         io_wreq_bits_data_1_entries_vs_5,
  input         io_wreq_bits_data_1_entries_vs_6,
  input         io_wreq_bits_data_1_entries_vs_7,
  input         io_wreq_bits_data_1_entries_perms_0_d,
  input         io_wreq_bits_data_1_entries_perms_0_a,
  input         io_wreq_bits_data_1_entries_perms_0_g,
  input         io_wreq_bits_data_1_entries_perms_0_u,
  input         io_wreq_bits_data_1_entries_perms_0_x,
  input         io_wreq_bits_data_1_entries_perms_0_w,
  input         io_wreq_bits_data_1_entries_perms_0_r,
  input         io_wreq_bits_data_1_entries_perms_1_d,
  input         io_wreq_bits_data_1_entries_perms_1_a,
  input         io_wreq_bits_data_1_entries_perms_1_g,
  input         io_wreq_bits_data_1_entries_perms_1_u,
  input         io_wreq_bits_data_1_entries_perms_1_x,
  input         io_wreq_bits_data_1_entries_perms_1_w,
  input         io_wreq_bits_data_1_entries_perms_1_r,
  input         io_wreq_bits_data_1_entries_perms_2_d,
  input         io_wreq_bits_data_1_entries_perms_2_a,
  input         io_wreq_bits_data_1_entries_perms_2_g,
  input         io_wreq_bits_data_1_entries_perms_2_u,
  input         io_wreq_bits_data_1_entries_perms_2_x,
  input         io_wreq_bits_data_1_entries_perms_2_w,
  input         io_wreq_bits_data_1_entries_perms_2_r,
  input         io_wreq_bits_data_1_entries_perms_3_d,
  input         io_wreq_bits_data_1_entries_perms_3_a,
  input         io_wreq_bits_data_1_entries_perms_3_g,
  input         io_wreq_bits_data_1_entries_perms_3_u,
  input         io_wreq_bits_data_1_entries_perms_3_x,
  input         io_wreq_bits_data_1_entries_perms_3_w,
  input         io_wreq_bits_data_1_entries_perms_3_r,
  input         io_wreq_bits_data_1_entries_perms_4_d,
  input         io_wreq_bits_data_1_entries_perms_4_a,
  input         io_wreq_bits_data_1_entries_perms_4_g,
  input         io_wreq_bits_data_1_entries_perms_4_u,
  input         io_wreq_bits_data_1_entries_perms_4_x,
  input         io_wreq_bits_data_1_entries_perms_4_w,
  input         io_wreq_bits_data_1_entries_perms_4_r,
  input         io_wreq_bits_data_1_entries_perms_5_d,
  input         io_wreq_bits_data_1_entries_perms_5_a,
  input         io_wreq_bits_data_1_entries_perms_5_g,
  input         io_wreq_bits_data_1_entries_perms_5_u,
  input         io_wreq_bits_data_1_entries_perms_5_x,
  input         io_wreq_bits_data_1_entries_perms_5_w,
  input         io_wreq_bits_data_1_entries_perms_5_r,
  input         io_wreq_bits_data_1_entries_perms_6_d,
  input         io_wreq_bits_data_1_entries_perms_6_a,
  input         io_wreq_bits_data_1_entries_perms_6_g,
  input         io_wreq_bits_data_1_entries_perms_6_u,
  input         io_wreq_bits_data_1_entries_perms_6_x,
  input         io_wreq_bits_data_1_entries_perms_6_w,
  input         io_wreq_bits_data_1_entries_perms_6_r,
  input         io_wreq_bits_data_1_entries_perms_7_d,
  input         io_wreq_bits_data_1_entries_perms_7_a,
  input         io_wreq_bits_data_1_entries_perms_7_g,
  input         io_wreq_bits_data_1_entries_perms_7_u,
  input         io_wreq_bits_data_1_entries_perms_7_x,
  input         io_wreq_bits_data_1_entries_perms_7_w,
  input         io_wreq_bits_data_1_entries_perms_7_r,
  input         io_wreq_bits_data_1_entries_prefetch,
  input  [38:0] io_wreq_bits_data_1_ecc,
  input  [16:0] io_wreq_bits_data_2_entries_tag,
  input  [15:0] io_wreq_bits_data_2_entries_asid,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_7,
  input         io_wreq_bits_data_2_entries_vs_0,
  input         io_wreq_bits_data_2_entries_vs_1,
  input         io_wreq_bits_data_2_entries_vs_2,
  input         io_wreq_bits_data_2_entries_vs_3,
  input         io_wreq_bits_data_2_entries_vs_4,
  input         io_wreq_bits_data_2_entries_vs_5,
  input         io_wreq_bits_data_2_entries_vs_6,
  input         io_wreq_bits_data_2_entries_vs_7,
  input         io_wreq_bits_data_2_entries_perms_0_d,
  input         io_wreq_bits_data_2_entries_perms_0_a,
  input         io_wreq_bits_data_2_entries_perms_0_g,
  input         io_wreq_bits_data_2_entries_perms_0_u,
  input         io_wreq_bits_data_2_entries_perms_0_x,
  input         io_wreq_bits_data_2_entries_perms_0_w,
  input         io_wreq_bits_data_2_entries_perms_0_r,
  input         io_wreq_bits_data_2_entries_perms_1_d,
  input         io_wreq_bits_data_2_entries_perms_1_a,
  input         io_wreq_bits_data_2_entries_perms_1_g,
  input         io_wreq_bits_data_2_entries_perms_1_u,
  input         io_wreq_bits_data_2_entries_perms_1_x,
  input         io_wreq_bits_data_2_entries_perms_1_w,
  input         io_wreq_bits_data_2_entries_perms_1_r,
  input         io_wreq_bits_data_2_entries_perms_2_d,
  input         io_wreq_bits_data_2_entries_perms_2_a,
  input         io_wreq_bits_data_2_entries_perms_2_g,
  input         io_wreq_bits_data_2_entries_perms_2_u,
  input         io_wreq_bits_data_2_entries_perms_2_x,
  input         io_wreq_bits_data_2_entries_perms_2_w,
  input         io_wreq_bits_data_2_entries_perms_2_r,
  input         io_wreq_bits_data_2_entries_perms_3_d,
  input         io_wreq_bits_data_2_entries_perms_3_a,
  input         io_wreq_bits_data_2_entries_perms_3_g,
  input         io_wreq_bits_data_2_entries_perms_3_u,
  input         io_wreq_bits_data_2_entries_perms_3_x,
  input         io_wreq_bits_data_2_entries_perms_3_w,
  input         io_wreq_bits_data_2_entries_perms_3_r,
  input         io_wreq_bits_data_2_entries_perms_4_d,
  input         io_wreq_bits_data_2_entries_perms_4_a,
  input         io_wreq_bits_data_2_entries_perms_4_g,
  input         io_wreq_bits_data_2_entries_perms_4_u,
  input         io_wreq_bits_data_2_entries_perms_4_x,
  input         io_wreq_bits_data_2_entries_perms_4_w,
  input         io_wreq_bits_data_2_entries_perms_4_r,
  input         io_wreq_bits_data_2_entries_perms_5_d,
  input         io_wreq_bits_data_2_entries_perms_5_a,
  input         io_wreq_bits_data_2_entries_perms_5_g,
  input         io_wreq_bits_data_2_entries_perms_5_u,
  input         io_wreq_bits_data_2_entries_perms_5_x,
  input         io_wreq_bits_data_2_entries_perms_5_w,
  input         io_wreq_bits_data_2_entries_perms_5_r,
  input         io_wreq_bits_data_2_entries_perms_6_d,
  input         io_wreq_bits_data_2_entries_perms_6_a,
  input         io_wreq_bits_data_2_entries_perms_6_g,
  input         io_wreq_bits_data_2_entries_perms_6_u,
  input         io_wreq_bits_data_2_entries_perms_6_x,
  input         io_wreq_bits_data_2_entries_perms_6_w,
  input         io_wreq_bits_data_2_entries_perms_6_r,
  input         io_wreq_bits_data_2_entries_perms_7_d,
  input         io_wreq_bits_data_2_entries_perms_7_a,
  input         io_wreq_bits_data_2_entries_perms_7_g,
  input         io_wreq_bits_data_2_entries_perms_7_u,
  input         io_wreq_bits_data_2_entries_perms_7_x,
  input         io_wreq_bits_data_2_entries_perms_7_w,
  input         io_wreq_bits_data_2_entries_perms_7_r,
  input         io_wreq_bits_data_2_entries_prefetch,
  input  [38:0] io_wreq_bits_data_2_ecc,
  input  [16:0] io_wreq_bits_data_3_entries_tag,
  input  [15:0] io_wreq_bits_data_3_entries_asid,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_7,
  input         io_wreq_bits_data_3_entries_vs_0,
  input         io_wreq_bits_data_3_entries_vs_1,
  input         io_wreq_bits_data_3_entries_vs_2,
  input         io_wreq_bits_data_3_entries_vs_3,
  input         io_wreq_bits_data_3_entries_vs_4,
  input         io_wreq_bits_data_3_entries_vs_5,
  input         io_wreq_bits_data_3_entries_vs_6,
  input         io_wreq_bits_data_3_entries_vs_7,
  input         io_wreq_bits_data_3_entries_perms_0_d,
  input         io_wreq_bits_data_3_entries_perms_0_a,
  input         io_wreq_bits_data_3_entries_perms_0_g,
  input         io_wreq_bits_data_3_entries_perms_0_u,
  input         io_wreq_bits_data_3_entries_perms_0_x,
  input         io_wreq_bits_data_3_entries_perms_0_w,
  input         io_wreq_bits_data_3_entries_perms_0_r,
  input         io_wreq_bits_data_3_entries_perms_1_d,
  input         io_wreq_bits_data_3_entries_perms_1_a,
  input         io_wreq_bits_data_3_entries_perms_1_g,
  input         io_wreq_bits_data_3_entries_perms_1_u,
  input         io_wreq_bits_data_3_entries_perms_1_x,
  input         io_wreq_bits_data_3_entries_perms_1_w,
  input         io_wreq_bits_data_3_entries_perms_1_r,
  input         io_wreq_bits_data_3_entries_perms_2_d,
  input         io_wreq_bits_data_3_entries_perms_2_a,
  input         io_wreq_bits_data_3_entries_perms_2_g,
  input         io_wreq_bits_data_3_entries_perms_2_u,
  input         io_wreq_bits_data_3_entries_perms_2_x,
  input         io_wreq_bits_data_3_entries_perms_2_w,
  input         io_wreq_bits_data_3_entries_perms_2_r,
  input         io_wreq_bits_data_3_entries_perms_3_d,
  input         io_wreq_bits_data_3_entries_perms_3_a,
  input         io_wreq_bits_data_3_entries_perms_3_g,
  input         io_wreq_bits_data_3_entries_perms_3_u,
  input         io_wreq_bits_data_3_entries_perms_3_x,
  input         io_wreq_bits_data_3_entries_perms_3_w,
  input         io_wreq_bits_data_3_entries_perms_3_r,
  input         io_wreq_bits_data_3_entries_perms_4_d,
  input         io_wreq_bits_data_3_entries_perms_4_a,
  input         io_wreq_bits_data_3_entries_perms_4_g,
  input         io_wreq_bits_data_3_entries_perms_4_u,
  input         io_wreq_bits_data_3_entries_perms_4_x,
  input         io_wreq_bits_data_3_entries_perms_4_w,
  input         io_wreq_bits_data_3_entries_perms_4_r,
  input         io_wreq_bits_data_3_entries_perms_5_d,
  input         io_wreq_bits_data_3_entries_perms_5_a,
  input         io_wreq_bits_data_3_entries_perms_5_g,
  input         io_wreq_bits_data_3_entries_perms_5_u,
  input         io_wreq_bits_data_3_entries_perms_5_x,
  input         io_wreq_bits_data_3_entries_perms_5_w,
  input         io_wreq_bits_data_3_entries_perms_5_r,
  input         io_wreq_bits_data_3_entries_perms_6_d,
  input         io_wreq_bits_data_3_entries_perms_6_a,
  input         io_wreq_bits_data_3_entries_perms_6_g,
  input         io_wreq_bits_data_3_entries_perms_6_u,
  input         io_wreq_bits_data_3_entries_perms_6_x,
  input         io_wreq_bits_data_3_entries_perms_6_w,
  input         io_wreq_bits_data_3_entries_perms_6_r,
  input         io_wreq_bits_data_3_entries_perms_7_d,
  input         io_wreq_bits_data_3_entries_perms_7_a,
  input         io_wreq_bits_data_3_entries_perms_7_g,
  input         io_wreq_bits_data_3_entries_perms_7_u,
  input         io_wreq_bits_data_3_entries_perms_7_x,
  input         io_wreq_bits_data_3_entries_perms_7_w,
  input         io_wreq_bits_data_3_entries_perms_7_r,
  input         io_wreq_bits_data_3_entries_prefetch,
  input  [38:0] io_wreq_bits_data_3_ecc,
  input  [3:0]  io_wreq_bits_waymask
);
  wire [6:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 102:26]
  wire [328:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 102:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
  wire [9:0] wdata_lo_lo_hi = {io_wreq_bits_data_0_entries_perms_2_x,io_wreq_bits_data_0_entries_perms_2_w,
    io_wreq_bits_data_0_entries_perms_2_r,io_wreq_bits_data_0_entries_perms_1_d,io_wreq_bits_data_0_entries_perms_1_a
    ,io_wreq_bits_data_0_entries_perms_1_g,io_wreq_bits_data_0_entries_perms_1_u,
    io_wreq_bits_data_0_entries_perms_1_x,io_wreq_bits_data_0_entries_perms_1_w,io_wreq_bits_data_0_entries_perms_1_r
    }; // @[SRAMTemplate.scala 118:102]
  wire [56:0] wdata_lo_lo = {wdata_lo_lo_hi,io_wreq_bits_data_0_entries_perms_0_d,
    io_wreq_bits_data_0_entries_perms_0_a,io_wreq_bits_data_0_entries_perms_0_g,io_wreq_bits_data_0_entries_perms_0_u
    ,io_wreq_bits_data_0_entries_perms_0_x,io_wreq_bits_data_0_entries_perms_0_w,
    io_wreq_bits_data_0_entries_perms_0_r,io_wreq_bits_data_0_entries_prefetch,io_wreq_bits_data_0_ecc}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_hi_hi = {io_wreq_bits_data_0_entries_perms_5_r,io_wreq_bits_data_0_entries_perms_4_d,
    io_wreq_bits_data_0_entries_perms_4_a,io_wreq_bits_data_0_entries_perms_4_g,io_wreq_bits_data_0_entries_perms_4_u
    ,io_wreq_bits_data_0_entries_perms_4_x,io_wreq_bits_data_0_entries_perms_4_w,
    io_wreq_bits_data_0_entries_perms_4_r,io_wreq_bits_data_0_entries_perms_3_d,io_wreq_bits_data_0_entries_perms_3_a
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_lo_hi = {wdata_lo_hi_hi,io_wreq_bits_data_0_entries_perms_3_g,
    io_wreq_bits_data_0_entries_perms_3_u,io_wreq_bits_data_0_entries_perms_3_x,io_wreq_bits_data_0_entries_perms_3_w
    ,io_wreq_bits_data_0_entries_perms_3_r,io_wreq_bits_data_0_entries_perms_2_d,
    io_wreq_bits_data_0_entries_perms_2_a,io_wreq_bits_data_0_entries_perms_2_g,io_wreq_bits_data_0_entries_perms_2_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [75:0] wdata_lo = {wdata_lo_hi,wdata_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_hi_lo_hi = {io_wreq_bits_data_0_entries_perms_7_a,io_wreq_bits_data_0_entries_perms_7_g,
    io_wreq_bits_data_0_entries_perms_7_u,io_wreq_bits_data_0_entries_perms_7_x,io_wreq_bits_data_0_entries_perms_7_w
    ,io_wreq_bits_data_0_entries_perms_7_r,io_wreq_bits_data_0_entries_perms_6_d,
    io_wreq_bits_data_0_entries_perms_6_a,io_wreq_bits_data_0_entries_perms_6_g,io_wreq_bits_data_0_entries_perms_6_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_hi_lo = {wdata_hi_lo_hi,io_wreq_bits_data_0_entries_perms_6_x,
    io_wreq_bits_data_0_entries_perms_6_w,io_wreq_bits_data_0_entries_perms_6_r,io_wreq_bits_data_0_entries_perms_5_d
    ,io_wreq_bits_data_0_entries_perms_5_a,io_wreq_bits_data_0_entries_perms_5_g,
    io_wreq_bits_data_0_entries_perms_5_u,io_wreq_bits_data_0_entries_perms_5_x,io_wreq_bits_data_0_entries_perms_5_w
    }; // @[SRAMTemplate.scala 118:102]
  wire [224:0] wdata_hi_hi_hi = {io_wreq_bits_data_0_entries_tag,io_wreq_bits_data_0_entries_asid,
    io_wreq_bits_data_0_entries_ppns_7,io_wreq_bits_data_0_entries_ppns_6,io_wreq_bits_data_0_entries_ppns_5,
    io_wreq_bits_data_0_entries_ppns_4,io_wreq_bits_data_0_entries_ppns_3,io_wreq_bits_data_0_entries_ppns_2,
    io_wreq_bits_data_0_entries_ppns_1,io_wreq_bits_data_0_entries_ppns_0}; // @[SRAMTemplate.scala 118:102]
  wire [233:0] wdata_hi_hi = {wdata_hi_hi_hi,io_wreq_bits_data_0_entries_vs_7,io_wreq_bits_data_0_entries_vs_6,
    io_wreq_bits_data_0_entries_vs_5,io_wreq_bits_data_0_entries_vs_4,io_wreq_bits_data_0_entries_vs_3,
    io_wreq_bits_data_0_entries_vs_2,io_wreq_bits_data_0_entries_vs_1,io_wreq_bits_data_0_entries_vs_0,
    io_wreq_bits_data_0_entries_perms_7_d}; // @[SRAMTemplate.scala 118:102]
  wire [252:0] wdata_hi = {wdata_hi_hi,wdata_hi_lo}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_lo_hi_1 = {io_wreq_bits_data_1_entries_perms_2_x,io_wreq_bits_data_1_entries_perms_2_w,
    io_wreq_bits_data_1_entries_perms_2_r,io_wreq_bits_data_1_entries_perms_1_d,io_wreq_bits_data_1_entries_perms_1_a
    ,io_wreq_bits_data_1_entries_perms_1_g,io_wreq_bits_data_1_entries_perms_1_u,
    io_wreq_bits_data_1_entries_perms_1_x,io_wreq_bits_data_1_entries_perms_1_w,io_wreq_bits_data_1_entries_perms_1_r
    }; // @[SRAMTemplate.scala 118:102]
  wire [56:0] wdata_lo_lo_1 = {wdata_lo_lo_hi_1,io_wreq_bits_data_1_entries_perms_0_d,
    io_wreq_bits_data_1_entries_perms_0_a,io_wreq_bits_data_1_entries_perms_0_g,io_wreq_bits_data_1_entries_perms_0_u
    ,io_wreq_bits_data_1_entries_perms_0_x,io_wreq_bits_data_1_entries_perms_0_w,
    io_wreq_bits_data_1_entries_perms_0_r,io_wreq_bits_data_1_entries_prefetch,io_wreq_bits_data_1_ecc}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_hi_hi_1 = {io_wreq_bits_data_1_entries_perms_5_r,io_wreq_bits_data_1_entries_perms_4_d,
    io_wreq_bits_data_1_entries_perms_4_a,io_wreq_bits_data_1_entries_perms_4_g,io_wreq_bits_data_1_entries_perms_4_u
    ,io_wreq_bits_data_1_entries_perms_4_x,io_wreq_bits_data_1_entries_perms_4_w,
    io_wreq_bits_data_1_entries_perms_4_r,io_wreq_bits_data_1_entries_perms_3_d,io_wreq_bits_data_1_entries_perms_3_a
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_lo_hi_1 = {wdata_lo_hi_hi_1,io_wreq_bits_data_1_entries_perms_3_g,
    io_wreq_bits_data_1_entries_perms_3_u,io_wreq_bits_data_1_entries_perms_3_x,io_wreq_bits_data_1_entries_perms_3_w
    ,io_wreq_bits_data_1_entries_perms_3_r,io_wreq_bits_data_1_entries_perms_2_d,
    io_wreq_bits_data_1_entries_perms_2_a,io_wreq_bits_data_1_entries_perms_2_g,io_wreq_bits_data_1_entries_perms_2_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [75:0] wdata_lo_1 = {wdata_lo_hi_1,wdata_lo_lo_1}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_hi_lo_hi_1 = {io_wreq_bits_data_1_entries_perms_7_a,io_wreq_bits_data_1_entries_perms_7_g,
    io_wreq_bits_data_1_entries_perms_7_u,io_wreq_bits_data_1_entries_perms_7_x,io_wreq_bits_data_1_entries_perms_7_w
    ,io_wreq_bits_data_1_entries_perms_7_r,io_wreq_bits_data_1_entries_perms_6_d,
    io_wreq_bits_data_1_entries_perms_6_a,io_wreq_bits_data_1_entries_perms_6_g,io_wreq_bits_data_1_entries_perms_6_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_hi_lo_1 = {wdata_hi_lo_hi_1,io_wreq_bits_data_1_entries_perms_6_x,
    io_wreq_bits_data_1_entries_perms_6_w,io_wreq_bits_data_1_entries_perms_6_r,io_wreq_bits_data_1_entries_perms_5_d
    ,io_wreq_bits_data_1_entries_perms_5_a,io_wreq_bits_data_1_entries_perms_5_g,
    io_wreq_bits_data_1_entries_perms_5_u,io_wreq_bits_data_1_entries_perms_5_x,io_wreq_bits_data_1_entries_perms_5_w
    }; // @[SRAMTemplate.scala 118:102]
  wire [224:0] wdata_hi_hi_hi_1 = {io_wreq_bits_data_1_entries_tag,io_wreq_bits_data_1_entries_asid,
    io_wreq_bits_data_1_entries_ppns_7,io_wreq_bits_data_1_entries_ppns_6,io_wreq_bits_data_1_entries_ppns_5,
    io_wreq_bits_data_1_entries_ppns_4,io_wreq_bits_data_1_entries_ppns_3,io_wreq_bits_data_1_entries_ppns_2,
    io_wreq_bits_data_1_entries_ppns_1,io_wreq_bits_data_1_entries_ppns_0}; // @[SRAMTemplate.scala 118:102]
  wire [233:0] wdata_hi_hi_1 = {wdata_hi_hi_hi_1,io_wreq_bits_data_1_entries_vs_7,io_wreq_bits_data_1_entries_vs_6,
    io_wreq_bits_data_1_entries_vs_5,io_wreq_bits_data_1_entries_vs_4,io_wreq_bits_data_1_entries_vs_3,
    io_wreq_bits_data_1_entries_vs_2,io_wreq_bits_data_1_entries_vs_1,io_wreq_bits_data_1_entries_vs_0,
    io_wreq_bits_data_1_entries_perms_7_d}; // @[SRAMTemplate.scala 118:102]
  wire [252:0] wdata_hi_1 = {wdata_hi_hi_1,wdata_hi_lo_1}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_lo_hi_2 = {io_wreq_bits_data_2_entries_perms_2_x,io_wreq_bits_data_2_entries_perms_2_w,
    io_wreq_bits_data_2_entries_perms_2_r,io_wreq_bits_data_2_entries_perms_1_d,io_wreq_bits_data_2_entries_perms_1_a
    ,io_wreq_bits_data_2_entries_perms_1_g,io_wreq_bits_data_2_entries_perms_1_u,
    io_wreq_bits_data_2_entries_perms_1_x,io_wreq_bits_data_2_entries_perms_1_w,io_wreq_bits_data_2_entries_perms_1_r
    }; // @[SRAMTemplate.scala 118:102]
  wire [56:0] wdata_lo_lo_2 = {wdata_lo_lo_hi_2,io_wreq_bits_data_2_entries_perms_0_d,
    io_wreq_bits_data_2_entries_perms_0_a,io_wreq_bits_data_2_entries_perms_0_g,io_wreq_bits_data_2_entries_perms_0_u
    ,io_wreq_bits_data_2_entries_perms_0_x,io_wreq_bits_data_2_entries_perms_0_w,
    io_wreq_bits_data_2_entries_perms_0_r,io_wreq_bits_data_2_entries_prefetch,io_wreq_bits_data_2_ecc}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_hi_hi_2 = {io_wreq_bits_data_2_entries_perms_5_r,io_wreq_bits_data_2_entries_perms_4_d,
    io_wreq_bits_data_2_entries_perms_4_a,io_wreq_bits_data_2_entries_perms_4_g,io_wreq_bits_data_2_entries_perms_4_u
    ,io_wreq_bits_data_2_entries_perms_4_x,io_wreq_bits_data_2_entries_perms_4_w,
    io_wreq_bits_data_2_entries_perms_4_r,io_wreq_bits_data_2_entries_perms_3_d,io_wreq_bits_data_2_entries_perms_3_a
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_lo_hi_2 = {wdata_lo_hi_hi_2,io_wreq_bits_data_2_entries_perms_3_g,
    io_wreq_bits_data_2_entries_perms_3_u,io_wreq_bits_data_2_entries_perms_3_x,io_wreq_bits_data_2_entries_perms_3_w
    ,io_wreq_bits_data_2_entries_perms_3_r,io_wreq_bits_data_2_entries_perms_2_d,
    io_wreq_bits_data_2_entries_perms_2_a,io_wreq_bits_data_2_entries_perms_2_g,io_wreq_bits_data_2_entries_perms_2_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [75:0] wdata_lo_2 = {wdata_lo_hi_2,wdata_lo_lo_2}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_hi_lo_hi_2 = {io_wreq_bits_data_2_entries_perms_7_a,io_wreq_bits_data_2_entries_perms_7_g,
    io_wreq_bits_data_2_entries_perms_7_u,io_wreq_bits_data_2_entries_perms_7_x,io_wreq_bits_data_2_entries_perms_7_w
    ,io_wreq_bits_data_2_entries_perms_7_r,io_wreq_bits_data_2_entries_perms_6_d,
    io_wreq_bits_data_2_entries_perms_6_a,io_wreq_bits_data_2_entries_perms_6_g,io_wreq_bits_data_2_entries_perms_6_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_hi_lo_2 = {wdata_hi_lo_hi_2,io_wreq_bits_data_2_entries_perms_6_x,
    io_wreq_bits_data_2_entries_perms_6_w,io_wreq_bits_data_2_entries_perms_6_r,io_wreq_bits_data_2_entries_perms_5_d
    ,io_wreq_bits_data_2_entries_perms_5_a,io_wreq_bits_data_2_entries_perms_5_g,
    io_wreq_bits_data_2_entries_perms_5_u,io_wreq_bits_data_2_entries_perms_5_x,io_wreq_bits_data_2_entries_perms_5_w
    }; // @[SRAMTemplate.scala 118:102]
  wire [224:0] wdata_hi_hi_hi_2 = {io_wreq_bits_data_2_entries_tag,io_wreq_bits_data_2_entries_asid,
    io_wreq_bits_data_2_entries_ppns_7,io_wreq_bits_data_2_entries_ppns_6,io_wreq_bits_data_2_entries_ppns_5,
    io_wreq_bits_data_2_entries_ppns_4,io_wreq_bits_data_2_entries_ppns_3,io_wreq_bits_data_2_entries_ppns_2,
    io_wreq_bits_data_2_entries_ppns_1,io_wreq_bits_data_2_entries_ppns_0}; // @[SRAMTemplate.scala 118:102]
  wire [233:0] wdata_hi_hi_2 = {wdata_hi_hi_hi_2,io_wreq_bits_data_2_entries_vs_7,io_wreq_bits_data_2_entries_vs_6,
    io_wreq_bits_data_2_entries_vs_5,io_wreq_bits_data_2_entries_vs_4,io_wreq_bits_data_2_entries_vs_3,
    io_wreq_bits_data_2_entries_vs_2,io_wreq_bits_data_2_entries_vs_1,io_wreq_bits_data_2_entries_vs_0,
    io_wreq_bits_data_2_entries_perms_7_d}; // @[SRAMTemplate.scala 118:102]
  wire [252:0] wdata_hi_2 = {wdata_hi_hi_2,wdata_hi_lo_2}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_lo_hi_3 = {io_wreq_bits_data_3_entries_perms_2_x,io_wreq_bits_data_3_entries_perms_2_w,
    io_wreq_bits_data_3_entries_perms_2_r,io_wreq_bits_data_3_entries_perms_1_d,io_wreq_bits_data_3_entries_perms_1_a
    ,io_wreq_bits_data_3_entries_perms_1_g,io_wreq_bits_data_3_entries_perms_1_u,
    io_wreq_bits_data_3_entries_perms_1_x,io_wreq_bits_data_3_entries_perms_1_w,io_wreq_bits_data_3_entries_perms_1_r
    }; // @[SRAMTemplate.scala 118:102]
  wire [56:0] wdata_lo_lo_3 = {wdata_lo_lo_hi_3,io_wreq_bits_data_3_entries_perms_0_d,
    io_wreq_bits_data_3_entries_perms_0_a,io_wreq_bits_data_3_entries_perms_0_g,io_wreq_bits_data_3_entries_perms_0_u
    ,io_wreq_bits_data_3_entries_perms_0_x,io_wreq_bits_data_3_entries_perms_0_w,
    io_wreq_bits_data_3_entries_perms_0_r,io_wreq_bits_data_3_entries_prefetch,io_wreq_bits_data_3_ecc}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_lo_hi_hi_3 = {io_wreq_bits_data_3_entries_perms_5_r,io_wreq_bits_data_3_entries_perms_4_d,
    io_wreq_bits_data_3_entries_perms_4_a,io_wreq_bits_data_3_entries_perms_4_g,io_wreq_bits_data_3_entries_perms_4_u
    ,io_wreq_bits_data_3_entries_perms_4_x,io_wreq_bits_data_3_entries_perms_4_w,
    io_wreq_bits_data_3_entries_perms_4_r,io_wreq_bits_data_3_entries_perms_3_d,io_wreq_bits_data_3_entries_perms_3_a
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_lo_hi_3 = {wdata_lo_hi_hi_3,io_wreq_bits_data_3_entries_perms_3_g,
    io_wreq_bits_data_3_entries_perms_3_u,io_wreq_bits_data_3_entries_perms_3_x,io_wreq_bits_data_3_entries_perms_3_w
    ,io_wreq_bits_data_3_entries_perms_3_r,io_wreq_bits_data_3_entries_perms_2_d,
    io_wreq_bits_data_3_entries_perms_2_a,io_wreq_bits_data_3_entries_perms_2_g,io_wreq_bits_data_3_entries_perms_2_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [75:0] wdata_lo_3 = {wdata_lo_hi_3,wdata_lo_lo_3}; // @[SRAMTemplate.scala 118:102]
  wire [9:0] wdata_hi_lo_hi_3 = {io_wreq_bits_data_3_entries_perms_7_a,io_wreq_bits_data_3_entries_perms_7_g,
    io_wreq_bits_data_3_entries_perms_7_u,io_wreq_bits_data_3_entries_perms_7_x,io_wreq_bits_data_3_entries_perms_7_w
    ,io_wreq_bits_data_3_entries_perms_7_r,io_wreq_bits_data_3_entries_perms_6_d,
    io_wreq_bits_data_3_entries_perms_6_a,io_wreq_bits_data_3_entries_perms_6_g,io_wreq_bits_data_3_entries_perms_6_u
    }; // @[SRAMTemplate.scala 118:102]
  wire [18:0] wdata_hi_lo_3 = {wdata_hi_lo_hi_3,io_wreq_bits_data_3_entries_perms_6_x,
    io_wreq_bits_data_3_entries_perms_6_w,io_wreq_bits_data_3_entries_perms_6_r,io_wreq_bits_data_3_entries_perms_5_d
    ,io_wreq_bits_data_3_entries_perms_5_a,io_wreq_bits_data_3_entries_perms_5_g,
    io_wreq_bits_data_3_entries_perms_5_u,io_wreq_bits_data_3_entries_perms_5_x,io_wreq_bits_data_3_entries_perms_5_w
    }; // @[SRAMTemplate.scala 118:102]
  wire [224:0] wdata_hi_hi_hi_3 = {io_wreq_bits_data_3_entries_tag,io_wreq_bits_data_3_entries_asid,
    io_wreq_bits_data_3_entries_ppns_7,io_wreq_bits_data_3_entries_ppns_6,io_wreq_bits_data_3_entries_ppns_5,
    io_wreq_bits_data_3_entries_ppns_4,io_wreq_bits_data_3_entries_ppns_3,io_wreq_bits_data_3_entries_ppns_2,
    io_wreq_bits_data_3_entries_ppns_1,io_wreq_bits_data_3_entries_ppns_0}; // @[SRAMTemplate.scala 118:102]
  wire [233:0] wdata_hi_hi_3 = {wdata_hi_hi_hi_3,io_wreq_bits_data_3_entries_vs_7,io_wreq_bits_data_3_entries_vs_6,
    io_wreq_bits_data_3_entries_vs_5,io_wreq_bits_data_3_entries_vs_4,io_wreq_bits_data_3_entries_vs_3,
    io_wreq_bits_data_3_entries_vs_2,io_wreq_bits_data_3_entries_vs_1,io_wreq_bits_data_3_entries_vs_0,
    io_wreq_bits_data_3_entries_perms_7_d}; // @[SRAMTemplate.scala 118:102]
  wire [252:0] wdata_hi_3 = {wdata_hi_hi_3,wdata_hi_lo_3}; // @[SRAMTemplate.scala 118:102]
  wire [328:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [328:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [328:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [328:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  array_21 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign io_rreq_ready = ~io_wreq_valid; // @[SRAMTemplate.scala 149:53]
  assign io_rresp_data_0_entries_tag = _rdata_WIRE[328:312]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_asid = _rdata_WIRE[311:296]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_0 = _rdata_WIRE[127:104]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_1 = _rdata_WIRE[151:128]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_2 = _rdata_WIRE[175:152]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_3 = _rdata_WIRE[199:176]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_4 = _rdata_WIRE[223:200]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_5 = _rdata_WIRE[247:224]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_6 = _rdata_WIRE[271:248]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_ppns_7 = _rdata_WIRE[295:272]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_0 = _rdata_WIRE[96]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_1 = _rdata_WIRE[97]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_2 = _rdata_WIRE[98]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_3 = _rdata_WIRE[99]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_4 = _rdata_WIRE[100]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_5 = _rdata_WIRE[101]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_6 = _rdata_WIRE[102]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_vs_7 = _rdata_WIRE[103]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_d = _rdata_WIRE[46]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_a = _rdata_WIRE[45]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_g = _rdata_WIRE[44]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_u = _rdata_WIRE[43]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_x = _rdata_WIRE[42]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_w = _rdata_WIRE[41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_0_r = _rdata_WIRE[40]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_d = _rdata_WIRE[53]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_a = _rdata_WIRE[52]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_g = _rdata_WIRE[51]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_u = _rdata_WIRE[50]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_x = _rdata_WIRE[49]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_w = _rdata_WIRE[48]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_1_r = _rdata_WIRE[47]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_d = _rdata_WIRE[60]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_a = _rdata_WIRE[59]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_g = _rdata_WIRE[58]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_u = _rdata_WIRE[57]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_x = _rdata_WIRE[56]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_w = _rdata_WIRE[55]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_2_r = _rdata_WIRE[54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_d = _rdata_WIRE[67]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_a = _rdata_WIRE[66]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_g = _rdata_WIRE[65]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_u = _rdata_WIRE[64]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_x = _rdata_WIRE[63]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_w = _rdata_WIRE[62]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_3_r = _rdata_WIRE[61]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_d = _rdata_WIRE[74]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_a = _rdata_WIRE[73]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_g = _rdata_WIRE[72]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_u = _rdata_WIRE[71]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_x = _rdata_WIRE[70]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_w = _rdata_WIRE[69]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_4_r = _rdata_WIRE[68]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_d = _rdata_WIRE[81]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_a = _rdata_WIRE[80]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_g = _rdata_WIRE[79]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_u = _rdata_WIRE[78]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_x = _rdata_WIRE[77]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_w = _rdata_WIRE[76]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_5_r = _rdata_WIRE[75]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_d = _rdata_WIRE[88]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_a = _rdata_WIRE[87]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_g = _rdata_WIRE[86]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_u = _rdata_WIRE[85]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_x = _rdata_WIRE[84]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_w = _rdata_WIRE[83]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_6_r = _rdata_WIRE[82]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_d = _rdata_WIRE[95]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_a = _rdata_WIRE[94]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_g = _rdata_WIRE[93]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_u = _rdata_WIRE[92]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_x = _rdata_WIRE[91]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_w = _rdata_WIRE[90]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_perms_7_r = _rdata_WIRE[89]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_entries_prefetch = _rdata_WIRE[39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_ecc = _rdata_WIRE[38:0]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_tag = _rdata_WIRE_1[328:312]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_asid = _rdata_WIRE_1[311:296]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_0 = _rdata_WIRE_1[127:104]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_1 = _rdata_WIRE_1[151:128]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_2 = _rdata_WIRE_1[175:152]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_3 = _rdata_WIRE_1[199:176]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_4 = _rdata_WIRE_1[223:200]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_5 = _rdata_WIRE_1[247:224]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_6 = _rdata_WIRE_1[271:248]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_ppns_7 = _rdata_WIRE_1[295:272]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_0 = _rdata_WIRE_1[96]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_1 = _rdata_WIRE_1[97]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_2 = _rdata_WIRE_1[98]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_3 = _rdata_WIRE_1[99]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_4 = _rdata_WIRE_1[100]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_5 = _rdata_WIRE_1[101]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_6 = _rdata_WIRE_1[102]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_vs_7 = _rdata_WIRE_1[103]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_d = _rdata_WIRE_1[46]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_a = _rdata_WIRE_1[45]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_g = _rdata_WIRE_1[44]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_u = _rdata_WIRE_1[43]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_x = _rdata_WIRE_1[42]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_w = _rdata_WIRE_1[41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_0_r = _rdata_WIRE_1[40]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_d = _rdata_WIRE_1[53]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_a = _rdata_WIRE_1[52]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_g = _rdata_WIRE_1[51]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_u = _rdata_WIRE_1[50]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_x = _rdata_WIRE_1[49]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_w = _rdata_WIRE_1[48]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_1_r = _rdata_WIRE_1[47]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_d = _rdata_WIRE_1[60]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_a = _rdata_WIRE_1[59]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_g = _rdata_WIRE_1[58]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_u = _rdata_WIRE_1[57]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_x = _rdata_WIRE_1[56]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_w = _rdata_WIRE_1[55]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_2_r = _rdata_WIRE_1[54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_d = _rdata_WIRE_1[67]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_a = _rdata_WIRE_1[66]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_g = _rdata_WIRE_1[65]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_u = _rdata_WIRE_1[64]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_x = _rdata_WIRE_1[63]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_w = _rdata_WIRE_1[62]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_3_r = _rdata_WIRE_1[61]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_d = _rdata_WIRE_1[74]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_a = _rdata_WIRE_1[73]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_g = _rdata_WIRE_1[72]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_u = _rdata_WIRE_1[71]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_x = _rdata_WIRE_1[70]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_w = _rdata_WIRE_1[69]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_4_r = _rdata_WIRE_1[68]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_d = _rdata_WIRE_1[81]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_a = _rdata_WIRE_1[80]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_g = _rdata_WIRE_1[79]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_u = _rdata_WIRE_1[78]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_x = _rdata_WIRE_1[77]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_w = _rdata_WIRE_1[76]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_5_r = _rdata_WIRE_1[75]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_d = _rdata_WIRE_1[88]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_a = _rdata_WIRE_1[87]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_g = _rdata_WIRE_1[86]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_u = _rdata_WIRE_1[85]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_x = _rdata_WIRE_1[84]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_w = _rdata_WIRE_1[83]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_6_r = _rdata_WIRE_1[82]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_d = _rdata_WIRE_1[95]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_a = _rdata_WIRE_1[94]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_g = _rdata_WIRE_1[93]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_u = _rdata_WIRE_1[92]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_x = _rdata_WIRE_1[91]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_w = _rdata_WIRE_1[90]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_perms_7_r = _rdata_WIRE_1[89]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_entries_prefetch = _rdata_WIRE_1[39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1_ecc = _rdata_WIRE_1[38:0]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_tag = _rdata_WIRE_2[328:312]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_asid = _rdata_WIRE_2[311:296]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_0 = _rdata_WIRE_2[127:104]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_1 = _rdata_WIRE_2[151:128]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_2 = _rdata_WIRE_2[175:152]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_3 = _rdata_WIRE_2[199:176]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_4 = _rdata_WIRE_2[223:200]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_5 = _rdata_WIRE_2[247:224]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_6 = _rdata_WIRE_2[271:248]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_ppns_7 = _rdata_WIRE_2[295:272]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_0 = _rdata_WIRE_2[96]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_1 = _rdata_WIRE_2[97]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_2 = _rdata_WIRE_2[98]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_3 = _rdata_WIRE_2[99]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_4 = _rdata_WIRE_2[100]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_5 = _rdata_WIRE_2[101]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_6 = _rdata_WIRE_2[102]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_vs_7 = _rdata_WIRE_2[103]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_d = _rdata_WIRE_2[46]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_a = _rdata_WIRE_2[45]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_g = _rdata_WIRE_2[44]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_u = _rdata_WIRE_2[43]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_x = _rdata_WIRE_2[42]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_w = _rdata_WIRE_2[41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_0_r = _rdata_WIRE_2[40]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_d = _rdata_WIRE_2[53]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_a = _rdata_WIRE_2[52]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_g = _rdata_WIRE_2[51]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_u = _rdata_WIRE_2[50]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_x = _rdata_WIRE_2[49]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_w = _rdata_WIRE_2[48]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_1_r = _rdata_WIRE_2[47]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_d = _rdata_WIRE_2[60]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_a = _rdata_WIRE_2[59]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_g = _rdata_WIRE_2[58]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_u = _rdata_WIRE_2[57]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_x = _rdata_WIRE_2[56]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_w = _rdata_WIRE_2[55]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_2_r = _rdata_WIRE_2[54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_d = _rdata_WIRE_2[67]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_a = _rdata_WIRE_2[66]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_g = _rdata_WIRE_2[65]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_u = _rdata_WIRE_2[64]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_x = _rdata_WIRE_2[63]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_w = _rdata_WIRE_2[62]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_3_r = _rdata_WIRE_2[61]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_d = _rdata_WIRE_2[74]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_a = _rdata_WIRE_2[73]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_g = _rdata_WIRE_2[72]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_u = _rdata_WIRE_2[71]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_x = _rdata_WIRE_2[70]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_w = _rdata_WIRE_2[69]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_4_r = _rdata_WIRE_2[68]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_d = _rdata_WIRE_2[81]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_a = _rdata_WIRE_2[80]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_g = _rdata_WIRE_2[79]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_u = _rdata_WIRE_2[78]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_x = _rdata_WIRE_2[77]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_w = _rdata_WIRE_2[76]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_5_r = _rdata_WIRE_2[75]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_d = _rdata_WIRE_2[88]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_a = _rdata_WIRE_2[87]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_g = _rdata_WIRE_2[86]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_u = _rdata_WIRE_2[85]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_x = _rdata_WIRE_2[84]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_w = _rdata_WIRE_2[83]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_6_r = _rdata_WIRE_2[82]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_d = _rdata_WIRE_2[95]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_a = _rdata_WIRE_2[94]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_g = _rdata_WIRE_2[93]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_u = _rdata_WIRE_2[92]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_x = _rdata_WIRE_2[91]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_w = _rdata_WIRE_2[90]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_perms_7_r = _rdata_WIRE_2[89]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_entries_prefetch = _rdata_WIRE_2[39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2_ecc = _rdata_WIRE_2[38:0]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_tag = _rdata_WIRE_3[328:312]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_asid = _rdata_WIRE_3[311:296]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_0 = _rdata_WIRE_3[127:104]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_1 = _rdata_WIRE_3[151:128]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_2 = _rdata_WIRE_3[175:152]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_3 = _rdata_WIRE_3[199:176]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_4 = _rdata_WIRE_3[223:200]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_5 = _rdata_WIRE_3[247:224]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_6 = _rdata_WIRE_3[271:248]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_ppns_7 = _rdata_WIRE_3[295:272]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_0 = _rdata_WIRE_3[96]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_1 = _rdata_WIRE_3[97]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_2 = _rdata_WIRE_3[98]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_3 = _rdata_WIRE_3[99]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_4 = _rdata_WIRE_3[100]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_5 = _rdata_WIRE_3[101]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_6 = _rdata_WIRE_3[102]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_vs_7 = _rdata_WIRE_3[103]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_d = _rdata_WIRE_3[46]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_a = _rdata_WIRE_3[45]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_g = _rdata_WIRE_3[44]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_u = _rdata_WIRE_3[43]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_x = _rdata_WIRE_3[42]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_w = _rdata_WIRE_3[41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_0_r = _rdata_WIRE_3[40]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_d = _rdata_WIRE_3[53]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_a = _rdata_WIRE_3[52]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_g = _rdata_WIRE_3[51]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_u = _rdata_WIRE_3[50]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_x = _rdata_WIRE_3[49]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_w = _rdata_WIRE_3[48]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_1_r = _rdata_WIRE_3[47]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_d = _rdata_WIRE_3[60]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_a = _rdata_WIRE_3[59]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_g = _rdata_WIRE_3[58]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_u = _rdata_WIRE_3[57]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_x = _rdata_WIRE_3[56]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_w = _rdata_WIRE_3[55]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_2_r = _rdata_WIRE_3[54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_d = _rdata_WIRE_3[67]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_a = _rdata_WIRE_3[66]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_g = _rdata_WIRE_3[65]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_u = _rdata_WIRE_3[64]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_x = _rdata_WIRE_3[63]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_w = _rdata_WIRE_3[62]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_3_r = _rdata_WIRE_3[61]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_d = _rdata_WIRE_3[74]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_a = _rdata_WIRE_3[73]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_g = _rdata_WIRE_3[72]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_u = _rdata_WIRE_3[71]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_x = _rdata_WIRE_3[70]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_w = _rdata_WIRE_3[69]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_4_r = _rdata_WIRE_3[68]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_d = _rdata_WIRE_3[81]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_a = _rdata_WIRE_3[80]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_g = _rdata_WIRE_3[79]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_u = _rdata_WIRE_3[78]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_x = _rdata_WIRE_3[77]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_w = _rdata_WIRE_3[76]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_5_r = _rdata_WIRE_3[75]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_d = _rdata_WIRE_3[88]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_a = _rdata_WIRE_3[87]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_g = _rdata_WIRE_3[86]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_u = _rdata_WIRE_3[85]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_x = _rdata_WIRE_3[84]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_w = _rdata_WIRE_3[83]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_6_r = _rdata_WIRE_3[82]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_d = _rdata_WIRE_3[95]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_a = _rdata_WIRE_3[94]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_g = _rdata_WIRE_3[93]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_u = _rdata_WIRE_3[92]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_x = _rdata_WIRE_3[91]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_w = _rdata_WIRE_3[90]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_perms_7_r = _rdata_WIRE_3[89]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_entries_prefetch = _rdata_WIRE_3[39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3_ecc = _rdata_WIRE_3[38:0]; // @[SRAMTemplate.scala 146:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule
