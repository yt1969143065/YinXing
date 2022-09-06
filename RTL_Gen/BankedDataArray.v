module BankedDataArray(
  input         clock,
  output        io_read_0_ready,
  input         io_read_0_valid,
  input  [3:0]  io_read_0_bits_way_en,
  input  [35:0] io_read_0_bits_addr,
  output        io_read_1_ready,
  input         io_read_1_valid,
  input  [3:0]  io_read_1_bits_way_en,
  input  [35:0] io_read_1_bits_addr,
  output        io_readline_ready,
  input         io_readline_valid,
  input  [3:0]  io_readline_bits_way_en,
  input  [35:0] io_readline_bits_addr,
  input         io_write_valid,
  input  [3:0]  io_write_bits_way_en,
  input  [35:0] io_write_bits_addr,
  input  [7:0]  io_write_bits_wmask,
  input  [63:0] io_write_bits_data_0,
  input  [63:0] io_write_bits_data_1,
  input  [63:0] io_write_bits_data_2,
  input  [63:0] io_write_bits_data_3,
  input  [63:0] io_write_bits_data_4,
  input  [63:0] io_write_bits_data_5,
  input  [63:0] io_write_bits_data_6,
  input  [63:0] io_write_bits_data_7,
  output [63:0] io_resp_0_raw_data,
  output        io_resp_0_error,
  output [63:0] io_resp_1_raw_data,
  output        io_resp_1_error,
  output [63:0] io_resp_2_raw_data,
  output        io_resp_2_error,
  output [63:0] io_resp_3_raw_data,
  output        io_resp_3_error,
  output [63:0] io_resp_4_raw_data,
  output        io_resp_4_error,
  output [63:0] io_resp_5_raw_data,
  output        io_resp_5_error,
  output [63:0] io_resp_6_raw_data,
  output        io_resp_6_error,
  output [63:0] io_resp_7_raw_data,
  output        io_resp_7_error,
  output        io_read_error_0,
  output        io_read_error_1,
  output        io_readline_error,
  output        io_bank_conflict_slow_0,
  output        io_bank_conflict_slow_1,
  output        io_bank_conflict_fast_0,
  output        io_bank_conflict_fast_1,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_opCode,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_0,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_1,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_2,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_3,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_4,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_5,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_6,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_7,
  input  [63:0] io_cacheOp_req_bits_write_data_ecc,
  input  [63:0] io_cacheOp_req_bits_bank_num,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_0,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_1,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_2,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_3,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_4,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_5,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_6,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_7,
  output [63:0] io_cacheOp_resp_bits_read_data_ecc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
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
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [63:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  wire  data_banks_0_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_0_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_0_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_0_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_0_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_0_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_0_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_0_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_0_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_1_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_1_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_1_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_1_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_1_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_1_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_1_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_1_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_1_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_2_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_2_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_2_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_2_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_2_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_2_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_2_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_2_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_2_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_3_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_3_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_3_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_3_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_3_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_3_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_3_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_3_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_3_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_4_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_4_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_4_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_4_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_4_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_4_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_4_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_4_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_4_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_5_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_5_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_5_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_5_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_5_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_5_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_5_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_5_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_5_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_6_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_6_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_6_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_6_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_6_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_6_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_6_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_6_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_6_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_7_clock; // @[BankedDataArray.scala 221:58]
  wire  data_banks_7_io_wen; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_7_io_waddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_7_io_wway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_7_io_wdata; // @[BankedDataArray.scala 221:58]
  wire  data_banks_7_io_ren; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_7_io_raddr; // @[BankedDataArray.scala 221:58]
  wire [3:0] data_banks_7_io_rway_en; // @[BankedDataArray.scala 221:58]
  wire [63:0] data_banks_7_io_rdata; // @[BankedDataArray.scala 221:58]
  wire  ecc_banks_0_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_0_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_0_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_0_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_0_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_1_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_1_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_1_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_1_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_1_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_2_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_2_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_2_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_2_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_2_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_3_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_3_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_3_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_3_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_3_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_4_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_4_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_4_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_4_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_4_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_5_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_5_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_5_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_5_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_5_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_6_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_6_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_6_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_6_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_6_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_7_clock; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_7_io_rreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_rreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_rresp_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_rresp_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_rresp_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_rresp_data_3; // @[BankedDataArray.scala 222:48]
  wire  ecc_banks_7_io_wreq_valid; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_wreq_bits_setIdx; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_wreq_bits_data_0; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_wreq_bits_data_1; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_wreq_bits_data_2; // @[BankedDataArray.scala 222:48]
  wire [7:0] ecc_banks_7_io_wreq_bits_data_3; // @[BankedDataArray.scala 222:48]
  wire [3:0] ecc_banks_7_io_wreq_bits_waymask; // @[BankedDataArray.scala 222:48]
  wire [7:0] set_addrs_0 = io_read_0_bits_addr[13:6]; // @[DCacheWrapper.scala 148:9]
  wire [2:0] bank_addrs_0 = io_read_0_bits_addr[5:3]; // @[DCacheWrapper.scala 143:9]
  wire [7:0] set_addrs_1 = io_read_1_bits_addr[13:6]; // @[DCacheWrapper.scala 148:9]
  wire [2:0] bank_addrs_1 = io_read_1_bits_addr[5:3]; // @[DCacheWrapper.scala 143:9]
  wire  rr_bank_conflict_0_1 = bank_addrs_0 == bank_addrs_1 & io_read_0_valid & io_read_1_valid; // @[BankedDataArray.scala 260:57]
  wire  rrl_bank_conflict_0 = io_read_0_valid & io_readline_valid; // @[BankedDataArray.scala 266:87]
  wire  rrl_bank_conflict_1 = io_read_1_valid & io_readline_valid; // @[BankedDataArray.scala 266:87]
  wire  rw_bank_conflict_0 = io_read_0_valid & io_write_valid; // @[BankedDataArray.scala 269:83]
  wire  rw_bank_conflict_1 = io_read_1_valid & io_write_valid; // @[BankedDataArray.scala 269:83]
  reg  io_bank_conflict_slow_0_REG; // @[BankedDataArray.scala 274:40]
  reg  io_bank_conflict_slow_1_REG; // @[BankedDataArray.scala 274:40]
  wire  bank_addr_matchs__0 = bank_addrs_0 == 3'h0 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs__1 = bank_addrs_1 == 3'h0 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T = bank_addr_matchs__0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_1 = bank_addr_matchs__0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_1; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_0_io_ren_T = {bank_addr_matchs__1,bank_addr_matchs__0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_0_io_ren_T_2 = |_data_banks_0_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_0_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_0_ecc_T_4 = bank_result_0_ecc_REG[0] ? ecc_banks_0_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_T_5 = bank_result_0_ecc_REG[1] ? ecc_banks_0_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_T_6 = bank_result_0_ecc_REG[2] ? ecc_banks_0_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_T_7 = bank_result_0_ecc_REG[3] ? ecc_banks_0_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_T_8 = _bank_result_0_ecc_T_4 | _bank_result_0_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_T_9 = _bank_result_0_ecc_T_8 | _bank_result_0_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_ecc_WIRE = _bank_result_0_ecc_T_9 | _bank_result_0_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_ecc = _bank_result_0_ecc_T_9 | _bank_result_0_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_raw_data = data_banks_0_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data = {_bank_result_0_ecc_WIRE,bank_result_0_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_0_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_0_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_0_error_syndromeUInt = {^_bank_result_0_error_syndromeUInt_T_12,^
    _bank_result_0_error_syndromeUInt_T_10,^_bank_result_0_error_syndromeUInt_T_8,^_bank_result_0_error_syndromeUInt_T_6
    ,^_bank_result_0_error_syndromeUInt_T_4,^_bank_result_0_error_syndromeUInt_T_2,^_bank_result_0_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_0_error_correctable = |bank_result_0_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_0_error_uncorrectable_1 = ^data; // @[ECC.scala 88:27]
  wire  bank_result_0_error_uncorrectable_2 = ~bank_result_0_error_uncorrectable_1 & bank_result_0_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_1_0 = bank_addrs_0 == 3'h1 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_1_1 = bank_addrs_1 == 3'h1 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_1 = bank_addr_matchs_1_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_1 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_1; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_3 = bank_addr_matchs_1_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_1 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_3; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_1_io_ren_T = {bank_addr_matchs_1_1,bank_addr_matchs_1_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_1_io_ren_T_2 = |_data_banks_1_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_1_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_1_ecc_T_4 = bank_result_1_ecc_REG[0] ? ecc_banks_1_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_T_5 = bank_result_1_ecc_REG[1] ? ecc_banks_1_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_T_6 = bank_result_1_ecc_REG[2] ? ecc_banks_1_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_T_7 = bank_result_1_ecc_REG[3] ? ecc_banks_1_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_T_8 = _bank_result_1_ecc_T_4 | _bank_result_1_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_T_9 = _bank_result_1_ecc_T_8 | _bank_result_1_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_1_ecc_WIRE = _bank_result_1_ecc_T_9 | _bank_result_1_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_1_ecc = _bank_result_1_ecc_T_9 | _bank_result_1_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_1_raw_data = data_banks_1_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_1 = {_bank_result_1_ecc_WIRE,bank_result_1_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_1_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_1[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_1_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_1[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_1_error_syndromeUInt = {^_bank_result_1_error_syndromeUInt_T_12,^
    _bank_result_1_error_syndromeUInt_T_10,^_bank_result_1_error_syndromeUInt_T_8,^_bank_result_1_error_syndromeUInt_T_6
    ,^_bank_result_1_error_syndromeUInt_T_4,^_bank_result_1_error_syndromeUInt_T_2,^_bank_result_1_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_1_error_correctable = |bank_result_1_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_1_error_uncorrectable_1 = ^data_1; // @[ECC.scala 88:27]
  wire  bank_result_1_error_uncorrectable_2 = ~bank_result_1_error_uncorrectable_1 & bank_result_1_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_2_0 = bank_addrs_0 == 3'h2 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_2_1 = bank_addrs_1 == 3'h2 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_2 = bank_addr_matchs_2_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_2 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_2; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_5 = bank_addr_matchs_2_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_2 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_5; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_2_io_ren_T = {bank_addr_matchs_2_1,bank_addr_matchs_2_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_2_io_ren_T_2 = |_data_banks_2_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_2_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_2_ecc_T_4 = bank_result_2_ecc_REG[0] ? ecc_banks_2_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_T_5 = bank_result_2_ecc_REG[1] ? ecc_banks_2_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_T_6 = bank_result_2_ecc_REG[2] ? ecc_banks_2_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_T_7 = bank_result_2_ecc_REG[3] ? ecc_banks_2_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_T_8 = _bank_result_2_ecc_T_4 | _bank_result_2_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_T_9 = _bank_result_2_ecc_T_8 | _bank_result_2_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_2_ecc_WIRE = _bank_result_2_ecc_T_9 | _bank_result_2_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_2_ecc = _bank_result_2_ecc_T_9 | _bank_result_2_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_2_raw_data = data_banks_2_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_2 = {_bank_result_2_ecc_WIRE,bank_result_2_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_2_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_2[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_2_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_2[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_2_error_syndromeUInt = {^_bank_result_2_error_syndromeUInt_T_12,^
    _bank_result_2_error_syndromeUInt_T_10,^_bank_result_2_error_syndromeUInt_T_8,^_bank_result_2_error_syndromeUInt_T_6
    ,^_bank_result_2_error_syndromeUInt_T_4,^_bank_result_2_error_syndromeUInt_T_2,^_bank_result_2_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_2_error_correctable = |bank_result_2_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_2_error_uncorrectable_1 = ^data_2; // @[ECC.scala 88:27]
  wire  bank_result_2_error_uncorrectable_2 = ~bank_result_2_error_uncorrectable_1 & bank_result_2_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_3_0 = bank_addrs_0 == 3'h3 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_3_1 = bank_addrs_1 == 3'h3 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_3 = bank_addr_matchs_3_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_3 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_3; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_7 = bank_addr_matchs_3_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_3 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_7; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_3_io_ren_T = {bank_addr_matchs_3_1,bank_addr_matchs_3_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_3_io_ren_T_2 = |_data_banks_3_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_3_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_3_ecc_T_4 = bank_result_3_ecc_REG[0] ? ecc_banks_3_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_T_5 = bank_result_3_ecc_REG[1] ? ecc_banks_3_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_T_6 = bank_result_3_ecc_REG[2] ? ecc_banks_3_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_T_7 = bank_result_3_ecc_REG[3] ? ecc_banks_3_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_T_8 = _bank_result_3_ecc_T_4 | _bank_result_3_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_T_9 = _bank_result_3_ecc_T_8 | _bank_result_3_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_3_ecc_WIRE = _bank_result_3_ecc_T_9 | _bank_result_3_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_3_ecc = _bank_result_3_ecc_T_9 | _bank_result_3_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_3_raw_data = data_banks_3_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_3 = {_bank_result_3_ecc_WIRE,bank_result_3_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_3_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_3[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_3_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_3[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_3_error_syndromeUInt = {^_bank_result_3_error_syndromeUInt_T_12,^
    _bank_result_3_error_syndromeUInt_T_10,^_bank_result_3_error_syndromeUInt_T_8,^_bank_result_3_error_syndromeUInt_T_6
    ,^_bank_result_3_error_syndromeUInt_T_4,^_bank_result_3_error_syndromeUInt_T_2,^_bank_result_3_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_3_error_correctable = |bank_result_3_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_3_error_uncorrectable_1 = ^data_3; // @[ECC.scala 88:27]
  wire  bank_result_3_error_uncorrectable_2 = ~bank_result_3_error_uncorrectable_1 & bank_result_3_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_4_0 = bank_addrs_0 == 3'h4 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_4_1 = bank_addrs_1 == 3'h4 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_4 = bank_addr_matchs_4_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_4 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_4; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_9 = bank_addr_matchs_4_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_4 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_9; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_4_io_ren_T = {bank_addr_matchs_4_1,bank_addr_matchs_4_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_4_io_ren_T_2 = |_data_banks_4_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_4_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_4_ecc_T_4 = bank_result_4_ecc_REG[0] ? ecc_banks_4_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_T_5 = bank_result_4_ecc_REG[1] ? ecc_banks_4_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_T_6 = bank_result_4_ecc_REG[2] ? ecc_banks_4_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_T_7 = bank_result_4_ecc_REG[3] ? ecc_banks_4_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_T_8 = _bank_result_4_ecc_T_4 | _bank_result_4_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_T_9 = _bank_result_4_ecc_T_8 | _bank_result_4_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_4_ecc_WIRE = _bank_result_4_ecc_T_9 | _bank_result_4_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_4_ecc = _bank_result_4_ecc_T_9 | _bank_result_4_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_4_raw_data = data_banks_4_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_4 = {_bank_result_4_ecc_WIRE,bank_result_4_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_4_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_4[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_4_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_4[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_4_error_syndromeUInt = {^_bank_result_4_error_syndromeUInt_T_12,^
    _bank_result_4_error_syndromeUInt_T_10,^_bank_result_4_error_syndromeUInt_T_8,^_bank_result_4_error_syndromeUInt_T_6
    ,^_bank_result_4_error_syndromeUInt_T_4,^_bank_result_4_error_syndromeUInt_T_2,^_bank_result_4_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_4_error_correctable = |bank_result_4_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_4_error_uncorrectable_1 = ^data_4; // @[ECC.scala 88:27]
  wire  bank_result_4_error_uncorrectable_2 = ~bank_result_4_error_uncorrectable_1 & bank_result_4_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_5_0 = bank_addrs_0 == 3'h5 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_5_1 = bank_addrs_1 == 3'h5 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_5 = bank_addr_matchs_5_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_5 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_5; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_11 = bank_addr_matchs_5_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_5 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_11; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_5_io_ren_T = {bank_addr_matchs_5_1,bank_addr_matchs_5_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_5_io_ren_T_2 = |_data_banks_5_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_5_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_5_ecc_T_4 = bank_result_5_ecc_REG[0] ? ecc_banks_5_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_T_5 = bank_result_5_ecc_REG[1] ? ecc_banks_5_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_T_6 = bank_result_5_ecc_REG[2] ? ecc_banks_5_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_T_7 = bank_result_5_ecc_REG[3] ? ecc_banks_5_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_T_8 = _bank_result_5_ecc_T_4 | _bank_result_5_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_T_9 = _bank_result_5_ecc_T_8 | _bank_result_5_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_5_ecc_WIRE = _bank_result_5_ecc_T_9 | _bank_result_5_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_5_ecc = _bank_result_5_ecc_T_9 | _bank_result_5_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_5_raw_data = data_banks_5_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_5 = {_bank_result_5_ecc_WIRE,bank_result_5_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_5_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_5[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_5_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_5[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_5_error_syndromeUInt = {^_bank_result_5_error_syndromeUInt_T_12,^
    _bank_result_5_error_syndromeUInt_T_10,^_bank_result_5_error_syndromeUInt_T_8,^_bank_result_5_error_syndromeUInt_T_6
    ,^_bank_result_5_error_syndromeUInt_T_4,^_bank_result_5_error_syndromeUInt_T_2,^_bank_result_5_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_5_error_correctable = |bank_result_5_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_5_error_uncorrectable_1 = ^data_5; // @[ECC.scala 88:27]
  wire  bank_result_5_error_uncorrectable_2 = ~bank_result_5_error_uncorrectable_1 & bank_result_5_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_6_0 = bank_addrs_0 == 3'h6 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_6_1 = bank_addrs_1 == 3'h6 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_6 = bank_addr_matchs_6_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_6 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_6; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_13 = bank_addr_matchs_6_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_6 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_13; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_6_io_ren_T = {bank_addr_matchs_6_1,bank_addr_matchs_6_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_6_io_ren_T_2 = |_data_banks_6_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_6_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_6_ecc_T_4 = bank_result_6_ecc_REG[0] ? ecc_banks_6_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_T_5 = bank_result_6_ecc_REG[1] ? ecc_banks_6_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_T_6 = bank_result_6_ecc_REG[2] ? ecc_banks_6_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_T_7 = bank_result_6_ecc_REG[3] ? ecc_banks_6_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_T_8 = _bank_result_6_ecc_T_4 | _bank_result_6_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_T_9 = _bank_result_6_ecc_T_8 | _bank_result_6_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_6_ecc_WIRE = _bank_result_6_ecc_T_9 | _bank_result_6_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_6_ecc = _bank_result_6_ecc_T_9 | _bank_result_6_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_6_raw_data = data_banks_6_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_6 = {_bank_result_6_ecc_WIRE,bank_result_6_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_6_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_6[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_6_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_6[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_6_error_syndromeUInt = {^_bank_result_6_error_syndromeUInt_T_12,^
    _bank_result_6_error_syndromeUInt_T_10,^_bank_result_6_error_syndromeUInt_T_8,^_bank_result_6_error_syndromeUInt_T_6
    ,^_bank_result_6_error_syndromeUInt_T_4,^_bank_result_6_error_syndromeUInt_T_2,^_bank_result_6_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_6_error_correctable = |bank_result_6_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_6_error_uncorrectable_1 = ^data_6; // @[ECC.scala 88:27]
  wire  bank_result_6_error_uncorrectable_2 = ~bank_result_6_error_uncorrectable_1 & bank_result_6_error_correctable; // @[ECC.scala 196:47]
  wire  bank_addr_matchs_7_0 = bank_addrs_0 == 3'h7 & io_read_0_valid; // @[BankedDataArray.scala 304:38]
  wire  bank_addr_matchs_7_1 = bank_addrs_1 == 3'h7 & io_read_1_valid; // @[BankedDataArray.scala 304:38]
  wire [3:0] _bank_way_en_T_7 = bank_addr_matchs_7_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [3:0] bank_way_en_7 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_7; // @[BankedDataArray.scala 312:26]
  wire [7:0] _bank_set_addr_T_15 = bank_addr_matchs_7_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [7:0] bank_set_addr_7 = io_readline_valid ? io_readline_bits_addr[13:6] : _bank_set_addr_T_15; // @[BankedDataArray.scala 316:28]
  wire [1:0] _data_banks_7_io_ren_T = {bank_addr_matchs_7_1,bank_addr_matchs_7_0}; // @[BankedDataArray.scala 323:43]
  wire  _data_banks_7_io_ren_T_2 = |_data_banks_7_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:54]
  reg [3:0] bank_result_7_ecc_REG; // @[BankedDataArray.scala 332:49]
  wire [7:0] _bank_result_7_ecc_T_4 = bank_result_7_ecc_REG[0] ? ecc_banks_7_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_T_5 = bank_result_7_ecc_REG[1] ? ecc_banks_7_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_T_6 = bank_result_7_ecc_REG[2] ? ecc_banks_7_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_T_7 = bank_result_7_ecc_REG[3] ? ecc_banks_7_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_T_8 = _bank_result_7_ecc_T_4 | _bank_result_7_ecc_T_5; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_T_9 = _bank_result_7_ecc_T_8 | _bank_result_7_ecc_T_6; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_7_ecc_WIRE = _bank_result_7_ecc_T_9 | _bank_result_7_ecc_T_7; // @[Mux.scala 27:73]
  wire [7:0] bank_result_7_ecc = _bank_result_7_ecc_T_9 | _bank_result_7_ecc_T_7; // @[Mux.scala 27:73]
  wire [63:0] bank_result_7_raw_data = data_banks_7_io_rdata; // @[BankedDataArray.scala 255:25 326:38]
  wire [71:0] data_7 = {_bank_result_7_ecc_WIRE,bank_result_7_raw_data}; // @[Cat.scala 31:58]
  wire [70:0] _bank_result_7_error_syndromeUInt_T = 71'h1ab55555556aaad5b & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_2 = 71'h2cd9999999b33366d & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_10 = 71'h2001fffffffc000000 & data_7[70:0]; // @[ECC.scala 157:66]
  wire [70:0] _bank_result_7_error_syndromeUInt_T_12 = 71'h40fe00000000000000 & data_7[70:0]; // @[ECC.scala 157:66]
  wire [6:0] bank_result_7_error_syndromeUInt = {^_bank_result_7_error_syndromeUInt_T_12,^
    _bank_result_7_error_syndromeUInt_T_10,^_bank_result_7_error_syndromeUInt_T_8,^_bank_result_7_error_syndromeUInt_T_6
    ,^_bank_result_7_error_syndromeUInt_T_4,^_bank_result_7_error_syndromeUInt_T_2,^_bank_result_7_error_syndromeUInt_T}
    ; // @[ECC.scala 157:78]
  wire  bank_result_7_error_correctable = |bank_result_7_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  bank_result_7_error_uncorrectable_1 = ^data_7; // @[ECC.scala 88:27]
  wire  bank_result_7_error_uncorrectable_2 = ~bank_result_7_error_uncorrectable_1 & bank_result_7_error_correctable; // @[ECC.scala 196:47]
  reg  io_read_error_0_REG; // @[BankedDataArray.scala 346:42]
  reg [2:0] io_read_error_0_REG_1; // @[BankedDataArray.scala 347:30]
  wire  bank_result_0_error = bank_result_0_error_uncorrectable_1 | bank_result_0_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_0 = bank_result_0_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  bank_result_1_error = bank_result_1_error_uncorrectable_1 | bank_result_1_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_1 = bank_result_1_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_1 = 3'h1 == io_read_error_0_REG_1 ? read_bank_error_1 : read_bank_error_0; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_2_error = bank_result_2_error_uncorrectable_1 | bank_result_2_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_2 = bank_result_2_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_2 = 3'h2 == io_read_error_0_REG_1 ? read_bank_error_2 : _GEN_1; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_3_error = bank_result_3_error_uncorrectable_1 | bank_result_3_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_3 = bank_result_3_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_3 = 3'h3 == io_read_error_0_REG_1 ? read_bank_error_3 : _GEN_2; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_4_error = bank_result_4_error_uncorrectable_1 | bank_result_4_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_4 = bank_result_4_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_4 = 3'h4 == io_read_error_0_REG_1 ? read_bank_error_4 : _GEN_3; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_5_error = bank_result_5_error_uncorrectable_1 | bank_result_5_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_5 = bank_result_5_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_5 = 3'h5 == io_read_error_0_REG_1 ? read_bank_error_5 : _GEN_4; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_6_error = bank_result_6_error_uncorrectable_1 | bank_result_6_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_6 = bank_result_6_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_6 = 3'h6 == io_read_error_0_REG_1 ? read_bank_error_6 : _GEN_5; // @[BankedDataArray.scala 346:{72,72}]
  wire  bank_result_7_error = bank_result_7_error_uncorrectable_1 | bank_result_7_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  read_bank_error_7 = bank_result_7_error; // @[BankedDataArray.scala 257:29 337:33]
  wire  _GEN_7 = 3'h7 == io_read_error_0_REG_1 ? read_bank_error_7 : _GEN_6; // @[BankedDataArray.scala 346:{72,72}]
  wire  _io_read_error_0_T_3 = io_read_error_0_REG & _GEN_7; // @[BankedDataArray.scala 346:72]
  wire  _io_read_error_0_T_4 = ~io_bank_conflict_slow_0; // @[BankedDataArray.scala 348:7]
  reg  io_read_error_1_REG; // @[BankedDataArray.scala 346:42]
  reg [2:0] io_read_error_1_REG_1; // @[BankedDataArray.scala 347:30]
  wire  _GEN_9 = 3'h1 == io_read_error_1_REG_1 ? read_bank_error_1 : read_bank_error_0; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_10 = 3'h2 == io_read_error_1_REG_1 ? read_bank_error_2 : _GEN_9; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_11 = 3'h3 == io_read_error_1_REG_1 ? read_bank_error_3 : _GEN_10; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_12 = 3'h4 == io_read_error_1_REG_1 ? read_bank_error_4 : _GEN_11; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_13 = 3'h5 == io_read_error_1_REG_1 ? read_bank_error_5 : _GEN_12; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_14 = 3'h6 == io_read_error_1_REG_1 ? read_bank_error_6 : _GEN_13; // @[BankedDataArray.scala 346:{72,72}]
  wire  _GEN_15 = 3'h7 == io_read_error_1_REG_1 ? read_bank_error_7 : _GEN_14; // @[BankedDataArray.scala 346:{72,72}]
  wire  _io_read_error_1_T_3 = io_read_error_1_REG & _GEN_15; // @[BankedDataArray.scala 346:72]
  wire  _io_read_error_1_T_4 = ~io_bank_conflict_slow_1; // @[BankedDataArray.scala 348:7]
  reg  io_readline_error_REG; // @[BankedDataArray.scala 351:31]
  wire [7:0] _io_readline_error_T_1 = {io_resp_7_error,io_resp_6_error,io_resp_5_error,io_resp_4_error,io_resp_3_error,
    io_resp_2_error,io_resp_1_error,io_resp_0_error}; // @[BankedDataArray.scala 352:69]
  wire  _io_readline_error_T_2 = |_io_readline_error_T_1; // @[BankedDataArray.scala 352:72]
  wire [7:0] sram_waddr = io_write_bits_addr[13:6]; // @[DCacheWrapper.scala 148:9]
  wire  _data_banks_0_io_wen_T_1 = io_write_valid & io_write_bits_wmask[0]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T = 64'hab55555556aaad5b & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_1 = ^_x7_syndromeUInt_T; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_3 = 64'hcd9999999b33366d & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_4 = ^_x7_syndromeUInt_T_3; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_6 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_7 = ^_x7_syndromeUInt_T_6; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_9 = 64'h1fe01fe03fc07f0 & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_10 = ^_x7_syndromeUInt_T_9; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_12 = 64'h1fffe0003fff800 & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_13 = ^_x7_syndromeUInt_T_12; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_15 = 64'h1fffffffc000000 & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_16 = ^_x7_syndromeUInt_T_15; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_18 = 64'hfe00000000000000 & io_write_bits_data_0; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_19 = ^_x7_syndromeUInt_T_18; // @[ECC.scala 148:79]
  wire [70:0] _x7_T = {_x7_syndromeUInt_T_19,_x7_syndromeUInt_T_16,_x7_syndromeUInt_T_13,_x7_syndromeUInt_T_10,
    _x7_syndromeUInt_T_7,_x7_syndromeUInt_T_4,_x7_syndromeUInt_T_1,io_write_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_1 = ^_x7_T; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_3 = {_x7_T_1,_x7_syndromeUInt_T_19,_x7_syndromeUInt_T_16,_x7_syndromeUInt_T_13,_x7_syndromeUInt_T_10
    ,_x7_syndromeUInt_T_7,_x7_syndromeUInt_T_4,_x7_syndromeUInt_T_1,io_write_bits_data_0}; // @[Cat.scala 31:58]
  wire [7:0] x7 = _x7_T_3[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_1_io_wen_T_1 = io_write_valid & io_write_bits_wmask[1]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_21 = 64'hab55555556aaad5b & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_22 = ^_x7_syndromeUInt_T_21; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_24 = 64'hcd9999999b33366d & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_25 = ^_x7_syndromeUInt_T_24; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_27 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_28 = ^_x7_syndromeUInt_T_27; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_30 = 64'h1fe01fe03fc07f0 & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_31 = ^_x7_syndromeUInt_T_30; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_33 = 64'h1fffe0003fff800 & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_34 = ^_x7_syndromeUInt_T_33; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_36 = 64'h1fffffffc000000 & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_37 = ^_x7_syndromeUInt_T_36; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_39 = 64'hfe00000000000000 & io_write_bits_data_1; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_40 = ^_x7_syndromeUInt_T_39; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_5 = {_x7_syndromeUInt_T_40,_x7_syndromeUInt_T_37,_x7_syndromeUInt_T_34,_x7_syndromeUInt_T_31,
    _x7_syndromeUInt_T_28,_x7_syndromeUInt_T_25,_x7_syndromeUInt_T_22,io_write_bits_data_1}; // @[Cat.scala 31:58]
  wire  _x7_T_6 = ^_x7_T_5; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_8 = {_x7_T_6,_x7_syndromeUInt_T_40,_x7_syndromeUInt_T_37,_x7_syndromeUInt_T_34,_x7_syndromeUInt_T_31
    ,_x7_syndromeUInt_T_28,_x7_syndromeUInt_T_25,_x7_syndromeUInt_T_22,io_write_bits_data_1}; // @[Cat.scala 31:58]
  wire [7:0] x7_1 = _x7_T_8[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_2_io_wen_T_1 = io_write_valid & io_write_bits_wmask[2]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_42 = 64'hab55555556aaad5b & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_43 = ^_x7_syndromeUInt_T_42; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_45 = 64'hcd9999999b33366d & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_46 = ^_x7_syndromeUInt_T_45; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_48 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_49 = ^_x7_syndromeUInt_T_48; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_51 = 64'h1fe01fe03fc07f0 & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_52 = ^_x7_syndromeUInt_T_51; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_54 = 64'h1fffe0003fff800 & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_55 = ^_x7_syndromeUInt_T_54; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_57 = 64'h1fffffffc000000 & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_58 = ^_x7_syndromeUInt_T_57; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_60 = 64'hfe00000000000000 & io_write_bits_data_2; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_61 = ^_x7_syndromeUInt_T_60; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_10 = {_x7_syndromeUInt_T_61,_x7_syndromeUInt_T_58,_x7_syndromeUInt_T_55,_x7_syndromeUInt_T_52,
    _x7_syndromeUInt_T_49,_x7_syndromeUInt_T_46,_x7_syndromeUInt_T_43,io_write_bits_data_2}; // @[Cat.scala 31:58]
  wire  _x7_T_11 = ^_x7_T_10; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_13 = {_x7_T_11,_x7_syndromeUInt_T_61,_x7_syndromeUInt_T_58,_x7_syndromeUInt_T_55,
    _x7_syndromeUInt_T_52,_x7_syndromeUInt_T_49,_x7_syndromeUInt_T_46,_x7_syndromeUInt_T_43,io_write_bits_data_2}; // @[Cat.scala 31:58]
  wire [7:0] x7_2 = _x7_T_13[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_3_io_wen_T_1 = io_write_valid & io_write_bits_wmask[3]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_63 = 64'hab55555556aaad5b & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_64 = ^_x7_syndromeUInt_T_63; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_66 = 64'hcd9999999b33366d & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_67 = ^_x7_syndromeUInt_T_66; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_69 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_70 = ^_x7_syndromeUInt_T_69; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_72 = 64'h1fe01fe03fc07f0 & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_73 = ^_x7_syndromeUInt_T_72; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_75 = 64'h1fffe0003fff800 & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_76 = ^_x7_syndromeUInt_T_75; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_78 = 64'h1fffffffc000000 & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_79 = ^_x7_syndromeUInt_T_78; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_81 = 64'hfe00000000000000 & io_write_bits_data_3; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_82 = ^_x7_syndromeUInt_T_81; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_15 = {_x7_syndromeUInt_T_82,_x7_syndromeUInt_T_79,_x7_syndromeUInt_T_76,_x7_syndromeUInt_T_73,
    _x7_syndromeUInt_T_70,_x7_syndromeUInt_T_67,_x7_syndromeUInt_T_64,io_write_bits_data_3}; // @[Cat.scala 31:58]
  wire  _x7_T_16 = ^_x7_T_15; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_18 = {_x7_T_16,_x7_syndromeUInt_T_82,_x7_syndromeUInt_T_79,_x7_syndromeUInt_T_76,
    _x7_syndromeUInt_T_73,_x7_syndromeUInt_T_70,_x7_syndromeUInt_T_67,_x7_syndromeUInt_T_64,io_write_bits_data_3}; // @[Cat.scala 31:58]
  wire [7:0] x7_3 = _x7_T_18[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_4_io_wen_T_1 = io_write_valid & io_write_bits_wmask[4]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_84 = 64'hab55555556aaad5b & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_85 = ^_x7_syndromeUInt_T_84; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_87 = 64'hcd9999999b33366d & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_88 = ^_x7_syndromeUInt_T_87; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_90 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_91 = ^_x7_syndromeUInt_T_90; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_93 = 64'h1fe01fe03fc07f0 & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_94 = ^_x7_syndromeUInt_T_93; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_96 = 64'h1fffe0003fff800 & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_97 = ^_x7_syndromeUInt_T_96; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_99 = 64'h1fffffffc000000 & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_100 = ^_x7_syndromeUInt_T_99; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_102 = 64'hfe00000000000000 & io_write_bits_data_4; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_103 = ^_x7_syndromeUInt_T_102; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_20 = {_x7_syndromeUInt_T_103,_x7_syndromeUInt_T_100,_x7_syndromeUInt_T_97,_x7_syndromeUInt_T_94,
    _x7_syndromeUInt_T_91,_x7_syndromeUInt_T_88,_x7_syndromeUInt_T_85,io_write_bits_data_4}; // @[Cat.scala 31:58]
  wire  _x7_T_21 = ^_x7_T_20; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_23 = {_x7_T_21,_x7_syndromeUInt_T_103,_x7_syndromeUInt_T_100,_x7_syndromeUInt_T_97,
    _x7_syndromeUInt_T_94,_x7_syndromeUInt_T_91,_x7_syndromeUInt_T_88,_x7_syndromeUInt_T_85,io_write_bits_data_4}; // @[Cat.scala 31:58]
  wire [7:0] x7_4 = _x7_T_23[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_5_io_wen_T_1 = io_write_valid & io_write_bits_wmask[5]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_105 = 64'hab55555556aaad5b & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_106 = ^_x7_syndromeUInt_T_105; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_108 = 64'hcd9999999b33366d & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_109 = ^_x7_syndromeUInt_T_108; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_111 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_112 = ^_x7_syndromeUInt_T_111; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_114 = 64'h1fe01fe03fc07f0 & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_115 = ^_x7_syndromeUInt_T_114; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_117 = 64'h1fffe0003fff800 & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_118 = ^_x7_syndromeUInt_T_117; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_120 = 64'h1fffffffc000000 & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_121 = ^_x7_syndromeUInt_T_120; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_123 = 64'hfe00000000000000 & io_write_bits_data_5; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_124 = ^_x7_syndromeUInt_T_123; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_25 = {_x7_syndromeUInt_T_124,_x7_syndromeUInt_T_121,_x7_syndromeUInt_T_118,_x7_syndromeUInt_T_115,
    _x7_syndromeUInt_T_112,_x7_syndromeUInt_T_109,_x7_syndromeUInt_T_106,io_write_bits_data_5}; // @[Cat.scala 31:58]
  wire  _x7_T_26 = ^_x7_T_25; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_28 = {_x7_T_26,_x7_syndromeUInt_T_124,_x7_syndromeUInt_T_121,_x7_syndromeUInt_T_118,
    _x7_syndromeUInt_T_115,_x7_syndromeUInt_T_112,_x7_syndromeUInt_T_109,_x7_syndromeUInt_T_106,io_write_bits_data_5}; // @[Cat.scala 31:58]
  wire [7:0] x7_5 = _x7_T_28[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_6_io_wen_T_1 = io_write_valid & io_write_bits_wmask[6]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_126 = 64'hab55555556aaad5b & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_127 = ^_x7_syndromeUInt_T_126; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_129 = 64'hcd9999999b33366d & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_130 = ^_x7_syndromeUInt_T_129; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_132 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_133 = ^_x7_syndromeUInt_T_132; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_135 = 64'h1fe01fe03fc07f0 & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_136 = ^_x7_syndromeUInt_T_135; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_138 = 64'h1fffe0003fff800 & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_139 = ^_x7_syndromeUInt_T_138; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_141 = 64'h1fffffffc000000 & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_142 = ^_x7_syndromeUInt_T_141; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_144 = 64'hfe00000000000000 & io_write_bits_data_6; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_145 = ^_x7_syndromeUInt_T_144; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_30 = {_x7_syndromeUInt_T_145,_x7_syndromeUInt_T_142,_x7_syndromeUInt_T_139,_x7_syndromeUInt_T_136,
    _x7_syndromeUInt_T_133,_x7_syndromeUInt_T_130,_x7_syndromeUInt_T_127,io_write_bits_data_6}; // @[Cat.scala 31:58]
  wire  _x7_T_31 = ^_x7_T_30; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_33 = {_x7_T_31,_x7_syndromeUInt_T_145,_x7_syndromeUInt_T_142,_x7_syndromeUInt_T_139,
    _x7_syndromeUInt_T_136,_x7_syndromeUInt_T_133,_x7_syndromeUInt_T_130,_x7_syndromeUInt_T_127,io_write_bits_data_6}; // @[Cat.scala 31:58]
  wire [7:0] x7_6 = _x7_T_33[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _data_banks_7_io_wen_T_1 = io_write_valid & io_write_bits_wmask[7]; // @[BankedDataArray.scala 359:41]
  wire [63:0] _x7_syndromeUInt_T_147 = 64'hab55555556aaad5b & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_148 = ^_x7_syndromeUInt_T_147; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_150 = 64'hcd9999999b33366d & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_151 = ^_x7_syndromeUInt_T_150; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_153 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_154 = ^_x7_syndromeUInt_T_153; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_156 = 64'h1fe01fe03fc07f0 & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_157 = ^_x7_syndromeUInt_T_156; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_159 = 64'h1fffe0003fff800 & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_160 = ^_x7_syndromeUInt_T_159; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_162 = 64'h1fffffffc000000 & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_163 = ^_x7_syndromeUInt_T_162; // @[ECC.scala 148:79]
  wire [63:0] _x7_syndromeUInt_T_165 = 64'hfe00000000000000 & io_write_bits_data_7; // @[ECC.scala 148:74]
  wire  _x7_syndromeUInt_T_166 = ^_x7_syndromeUInt_T_165; // @[ECC.scala 148:79]
  wire [70:0] _x7_T_35 = {_x7_syndromeUInt_T_166,_x7_syndromeUInt_T_163,_x7_syndromeUInt_T_160,_x7_syndromeUInt_T_157,
    _x7_syndromeUInt_T_154,_x7_syndromeUInt_T_151,_x7_syndromeUInt_T_148,io_write_bits_data_7}; // @[Cat.scala 31:58]
  wire  _x7_T_36 = ^_x7_T_35; // @[ECC.scala 82:55]
  wire [71:0] _x7_T_38 = {_x7_T_36,_x7_syndromeUInt_T_166,_x7_syndromeUInt_T_163,_x7_syndromeUInt_T_160,
    _x7_syndromeUInt_T_157,_x7_syndromeUInt_T_154,_x7_syndromeUInt_T_151,_x7_syndromeUInt_T_148,io_write_bits_data_7}; // @[Cat.scala 31:58]
  wire [7:0] x7_7 = _x7_T_38[71:64]; // @[BankedDataArray.scala 134:12]
  wire  _T_84 = io_cacheOp_req_bits_opCode == 64'h3; // @[CacheInstruction.scala 95:54]
  wire [31:0] _data_banks_0_io_rway_en_T_1 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_16 = _T_84 | (|_data_banks_0_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_17 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_18 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_19 = _T_84 | (|_data_banks_1_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_20 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_1}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_21 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_1}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_22 = _T_84 | (|_data_banks_2_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_23 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_2}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_24 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_2}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_25 = _T_84 | (|_data_banks_3_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_26 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_3}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_27 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_3}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_28 = _T_84 | (|_data_banks_4_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_29 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_4}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_30 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_4}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_31 = _T_84 | (|_data_banks_5_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_32 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_5}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_33 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_5}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_34 = _T_84 | (|_data_banks_6_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_35 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_6}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_36 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_6}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _GEN_37 = _T_84 | (|_data_banks_7_io_ren_T | io_readline_valid); // @[BankedDataArray.scala 323:23 388:67 391:27]
  wire [31:0] _GEN_38 = _T_84 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, bank_way_en_7}; // @[BankedDataArray.scala 324:27 388:67 392:31]
  wire [63:0] _GEN_39 = _T_84 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_7}; // @[BankedDataArray.scala 325:25 388:67 393:29]
  wire  _T_85 = io_cacheOp_req_bits_opCode == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _GEN_41 = _T_85 | _data_banks_0_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_42 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_43 = _T_85 | _data_banks_1_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_44 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_1}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_45 = _T_85 | _data_banks_2_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_46 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_2}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_47 = _T_85 | _data_banks_3_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_48 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_3}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_49 = _T_85 | _data_banks_4_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_50 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_4}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_51 = _T_85 | _data_banks_5_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_52 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_5}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_53 = _T_85 | _data_banks_6_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_54 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_6}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_55 = _T_85 | _data_banks_7_io_ren_T_2; // @[BankedDataArray.scala 330:29 397:74 400:41]
  wire [63:0] _GEN_56 = _T_85 ? io_cacheOp_req_bits_index : {{56'd0}, bank_set_addr_7}; // @[BankedDataArray.scala 397:74 401:47 SRAMTemplate.scala 43:17]
  wire  _GEN_57 = _T_85 | _T_84; // @[BankedDataArray.scala 397:74 403:29]
  wire  _T_86 = io_cacheOp_req_bits_opCode == 64'h7; // @[CacheInstruction.scala 99:54]
  wire  _GEN_58 = _T_86 | io_write_valid & io_write_bits_wmask[0]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [31:0] _GEN_59 = _T_86 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, io_write_bits_way_en}; // @[BankedDataArray.scala 360:27 405:66 409:31]
  wire [63:0] _GEN_60 = _T_86 ? io_cacheOp_req_bits_index : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 405:66 410:29]
  wire [63:0] _GEN_61 = _T_86 ? io_cacheOp_req_bits_write_data_vec_0 : io_write_bits_data_0; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_62 = _T_86 | io_write_valid & io_write_bits_wmask[1]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_64 = _T_86 ? io_cacheOp_req_bits_write_data_vec_1 : io_write_bits_data_1; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_65 = _T_86 | io_write_valid & io_write_bits_wmask[2]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_67 = _T_86 ? io_cacheOp_req_bits_write_data_vec_2 : io_write_bits_data_2; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_68 = _T_86 | io_write_valid & io_write_bits_wmask[3]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_70 = _T_86 ? io_cacheOp_req_bits_write_data_vec_3 : io_write_bits_data_3; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_71 = _T_86 | io_write_valid & io_write_bits_wmask[4]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_73 = _T_86 ? io_cacheOp_req_bits_write_data_vec_4 : io_write_bits_data_4; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_74 = _T_86 | io_write_valid & io_write_bits_wmask[5]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_76 = _T_86 ? io_cacheOp_req_bits_write_data_vec_5 : io_write_bits_data_5; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_77 = _T_86 | io_write_valid & io_write_bits_wmask[6]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_79 = _T_86 ? io_cacheOp_req_bits_write_data_vec_6 : io_write_bits_data_6; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_80 = _T_86 | io_write_valid & io_write_bits_wmask[7]; // @[BankedDataArray.scala 359:23 405:66 408:27]
  wire [63:0] _GEN_82 = _T_86 ? io_cacheOp_req_bits_write_data_vec_7 : io_write_bits_data_7; // @[BankedDataArray.scala 362:25 405:66 411:29]
  wire  _GEN_83 = _T_86 | _GEN_57; // @[BankedDataArray.scala 405:66 413:25]
  wire  _T_87 = io_cacheOp_req_bits_opCode == 64'h5; // @[CacheInstruction.scala 97:54]
  wire  _GEN_84 = _T_87 | _data_banks_0_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_85 = _T_87 ? io_cacheOp_req_bits_index : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 43:{17,17}]
  wire [63:0] _GEN_86 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire [31:0] _GEN_90 = _T_87 ? _data_banks_0_io_rway_en_T_1 : {{28'd0}, io_write_bits_way_en}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 55:{24,24}]
  wire  _GEN_91 = _T_87 | _data_banks_1_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_92 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_1}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_97 = _T_87 | _data_banks_2_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_98 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_2}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_103 = _T_87 | _data_banks_3_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_104 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_3}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_109 = _T_87 | _data_banks_4_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_110 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_4}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_115 = _T_87 | _data_banks_5_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_116 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_5}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_121 = _T_87 | _data_banks_6_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_122 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_6}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_127 = _T_87 | _data_banks_7_io_wen_T_1; // @[BankedDataArray.scala 366:29 415:69 418:33]
  wire [63:0] _GEN_128 = _T_87 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x7_7}; // @[BankedDataArray.scala 415:69 SRAMTemplate.scala 54:{15,15}]
  wire  _GEN_133 = _T_87 | _GEN_83; // @[BankedDataArray.scala 415:69 425:25]
  wire [31:0] _GEN_135 = io_cacheOp_req_valid ? _GEN_17 : {{28'd0}, bank_way_en}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_138 = io_cacheOp_req_valid ? _GEN_20 : {{28'd0}, bank_way_en_1}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_141 = io_cacheOp_req_valid ? _GEN_23 : {{28'd0}, bank_way_en_2}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_144 = io_cacheOp_req_valid ? _GEN_26 : {{28'd0}, bank_way_en_3}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_147 = io_cacheOp_req_valid ? _GEN_29 : {{28'd0}, bank_way_en_4}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_150 = io_cacheOp_req_valid ? _GEN_32 : {{28'd0}, bank_way_en_5}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_153 = io_cacheOp_req_valid ? _GEN_35 : {{28'd0}, bank_way_en_6}; // @[BankedDataArray.scala 324:27 387:29]
  wire [31:0] _GEN_156 = io_cacheOp_req_valid ? _GEN_38 : {{28'd0}, bank_way_en_7}; // @[BankedDataArray.scala 324:27 387:29]
  wire  cacheOpShouldResp = io_cacheOp_req_valid & _GEN_133; // @[BankedDataArray.scala 387:29]
  wire [63:0] _GEN_160 = io_cacheOp_req_valid ? _GEN_42 : {{56'd0}, bank_set_addr}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_162 = io_cacheOp_req_valid ? _GEN_44 : {{56'd0}, bank_set_addr_1}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_164 = io_cacheOp_req_valid ? _GEN_46 : {{56'd0}, bank_set_addr_2}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_166 = io_cacheOp_req_valid ? _GEN_48 : {{56'd0}, bank_set_addr_3}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_168 = io_cacheOp_req_valid ? _GEN_50 : {{56'd0}, bank_set_addr_4}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_170 = io_cacheOp_req_valid ? _GEN_52 : {{56'd0}, bank_set_addr_5}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_172 = io_cacheOp_req_valid ? _GEN_54 : {{56'd0}, bank_set_addr_6}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_174 = io_cacheOp_req_valid ? _GEN_56 : {{56'd0}, bank_set_addr_7}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [31:0] _GEN_176 = io_cacheOp_req_valid ? _GEN_59 : {{28'd0}, io_write_bits_way_en}; // @[BankedDataArray.scala 360:27 387:29]
  wire [63:0] _GEN_201 = io_cacheOp_req_valid ? _GEN_85 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_202 = io_cacheOp_req_valid ? _GEN_86 : {{56'd0}, x7}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [31:0] _GEN_206 = io_cacheOp_req_valid ? _GEN_90 : {{28'd0}, io_write_bits_way_en}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 55:24]
  wire [63:0] _GEN_208 = io_cacheOp_req_valid ? _GEN_92 : {{56'd0}, x7_1}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_214 = io_cacheOp_req_valid ? _GEN_98 : {{56'd0}, x7_2}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_220 = io_cacheOp_req_valid ? _GEN_104 : {{56'd0}, x7_3}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_226 = io_cacheOp_req_valid ? _GEN_110 : {{56'd0}, x7_4}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_232 = io_cacheOp_req_valid ? _GEN_116 : {{56'd0}, x7_5}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_238 = io_cacheOp_req_valid ? _GEN_122 : {{56'd0}, x7_6}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  wire [63:0] _GEN_244 = io_cacheOp_req_valid ? _GEN_128 : {{56'd0}, x7_7}; // @[BankedDataArray.scala 387:29 SRAMTemplate.scala 54:15]
  reg  io_cacheOp_resp_valid_REG; // @[BankedDataArray.scala 428:35]
  reg [4:0] eccReadResult_0_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_249 = ecc_banks_0_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_250 = 2'h1 == eccReadResult_0_REG[1:0] ? ecc_banks_0_io_rresp_data_1 : _GEN_249; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_251 = 2'h2 == eccReadResult_0_REG[1:0] ? ecc_banks_0_io_rresp_data_2 : _GEN_250; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_0 = 2'h3 == eccReadResult_0_REG[1:0] ? ecc_banks_0_io_rresp_data_3 : _GEN_251; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_1_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_253 = ecc_banks_1_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_254 = 2'h1 == eccReadResult_1_REG[1:0] ? ecc_banks_1_io_rresp_data_1 : _GEN_253; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_255 = 2'h2 == eccReadResult_1_REG[1:0] ? ecc_banks_1_io_rresp_data_2 : _GEN_254; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_1 = 2'h3 == eccReadResult_1_REG[1:0] ? ecc_banks_1_io_rresp_data_3 : _GEN_255; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_2_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_257 = ecc_banks_2_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_258 = 2'h1 == eccReadResult_2_REG[1:0] ? ecc_banks_2_io_rresp_data_1 : _GEN_257; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_259 = 2'h2 == eccReadResult_2_REG[1:0] ? ecc_banks_2_io_rresp_data_2 : _GEN_258; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_2 = 2'h3 == eccReadResult_2_REG[1:0] ? ecc_banks_2_io_rresp_data_3 : _GEN_259; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_3_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_261 = ecc_banks_3_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_262 = 2'h1 == eccReadResult_3_REG[1:0] ? ecc_banks_3_io_rresp_data_1 : _GEN_261; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_263 = 2'h2 == eccReadResult_3_REG[1:0] ? ecc_banks_3_io_rresp_data_2 : _GEN_262; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_3 = 2'h3 == eccReadResult_3_REG[1:0] ? ecc_banks_3_io_rresp_data_3 : _GEN_263; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_4_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_265 = ecc_banks_4_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_266 = 2'h1 == eccReadResult_4_REG[1:0] ? ecc_banks_4_io_rresp_data_1 : _GEN_265; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_267 = 2'h2 == eccReadResult_4_REG[1:0] ? ecc_banks_4_io_rresp_data_2 : _GEN_266; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_4 = 2'h3 == eccReadResult_4_REG[1:0] ? ecc_banks_4_io_rresp_data_3 : _GEN_267; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_5_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_269 = ecc_banks_5_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_270 = 2'h1 == eccReadResult_5_REG[1:0] ? ecc_banks_5_io_rresp_data_1 : _GEN_269; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_271 = 2'h2 == eccReadResult_5_REG[1:0] ? ecc_banks_5_io_rresp_data_2 : _GEN_270; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_5 = 2'h3 == eccReadResult_5_REG[1:0] ? ecc_banks_5_io_rresp_data_3 : _GEN_271; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_6_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_273 = ecc_banks_6_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_274 = 2'h1 == eccReadResult_6_REG[1:0] ? ecc_banks_6_io_rresp_data_1 : _GEN_273; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_275 = 2'h2 == eccReadResult_6_REG[1:0] ? ecc_banks_6_io_rresp_data_2 : _GEN_274; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_6 = 2'h3 == eccReadResult_6_REG[1:0] ? ecc_banks_6_io_rresp_data_3 : _GEN_275; // @[BankedDataArray.scala 431:{35,35}]
  reg [4:0] eccReadResult_7_REG; // @[BankedDataArray.scala 431:82]
  wire [7:0] _GEN_277 = ecc_banks_7_io_rresp_data_0; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_278 = 2'h1 == eccReadResult_7_REG[1:0] ? ecc_banks_7_io_rresp_data_1 : _GEN_277; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] _GEN_279 = 2'h2 == eccReadResult_7_REG[1:0] ? ecc_banks_7_io_rresp_data_2 : _GEN_278; // @[BankedDataArray.scala 431:{35,35}]
  wire [7:0] eccReadResult_7 = 2'h3 == eccReadResult_7_REG[1:0] ? ecc_banks_7_io_rresp_data_3 : _GEN_279; // @[BankedDataArray.scala 431:{35,35}]
  reg [63:0] io_cacheOp_resp_bits_read_data_ecc_REG; // @[BankedDataArray.scala 434:26]
  wire [7:0] _GEN_282 = 3'h1 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_1 : eccReadResult_0; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_283 = 3'h2 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_2 : _GEN_282; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_284 = 3'h3 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_3 : _GEN_283; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_285 = 3'h4 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_4 : _GEN_284; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_286 = 3'h5 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_5 : _GEN_285; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_287 = 3'h6 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_6 : _GEN_286; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _GEN_288 = 3'h7 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_7 : _GEN_287; // @[BankedDataArray.scala 433:{44,44}]
  wire [7:0] _io_cacheOp_resp_bits_read_data_ecc_T_2 = io_cacheOp_resp_valid ? _GEN_288 : 8'h0; // @[BankedDataArray.scala 433:44]
  DataSRAMBank data_banks_0 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_0_clock),
    .io_wen(data_banks_0_io_wen),
    .io_waddr(data_banks_0_io_waddr),
    .io_wway_en(data_banks_0_io_wway_en),
    .io_wdata(data_banks_0_io_wdata),
    .io_ren(data_banks_0_io_ren),
    .io_raddr(data_banks_0_io_raddr),
    .io_rway_en(data_banks_0_io_rway_en),
    .io_rdata(data_banks_0_io_rdata)
  );
  DataSRAMBank data_banks_1 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_1_clock),
    .io_wen(data_banks_1_io_wen),
    .io_waddr(data_banks_1_io_waddr),
    .io_wway_en(data_banks_1_io_wway_en),
    .io_wdata(data_banks_1_io_wdata),
    .io_ren(data_banks_1_io_ren),
    .io_raddr(data_banks_1_io_raddr),
    .io_rway_en(data_banks_1_io_rway_en),
    .io_rdata(data_banks_1_io_rdata)
  );
  DataSRAMBank data_banks_2 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_2_clock),
    .io_wen(data_banks_2_io_wen),
    .io_waddr(data_banks_2_io_waddr),
    .io_wway_en(data_banks_2_io_wway_en),
    .io_wdata(data_banks_2_io_wdata),
    .io_ren(data_banks_2_io_ren),
    .io_raddr(data_banks_2_io_raddr),
    .io_rway_en(data_banks_2_io_rway_en),
    .io_rdata(data_banks_2_io_rdata)
  );
  DataSRAMBank data_banks_3 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_3_clock),
    .io_wen(data_banks_3_io_wen),
    .io_waddr(data_banks_3_io_waddr),
    .io_wway_en(data_banks_3_io_wway_en),
    .io_wdata(data_banks_3_io_wdata),
    .io_ren(data_banks_3_io_ren),
    .io_raddr(data_banks_3_io_raddr),
    .io_rway_en(data_banks_3_io_rway_en),
    .io_rdata(data_banks_3_io_rdata)
  );
  DataSRAMBank data_banks_4 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_4_clock),
    .io_wen(data_banks_4_io_wen),
    .io_waddr(data_banks_4_io_waddr),
    .io_wway_en(data_banks_4_io_wway_en),
    .io_wdata(data_banks_4_io_wdata),
    .io_ren(data_banks_4_io_ren),
    .io_raddr(data_banks_4_io_raddr),
    .io_rway_en(data_banks_4_io_rway_en),
    .io_rdata(data_banks_4_io_rdata)
  );
  DataSRAMBank data_banks_5 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_5_clock),
    .io_wen(data_banks_5_io_wen),
    .io_waddr(data_banks_5_io_waddr),
    .io_wway_en(data_banks_5_io_wway_en),
    .io_wdata(data_banks_5_io_wdata),
    .io_ren(data_banks_5_io_ren),
    .io_raddr(data_banks_5_io_raddr),
    .io_rway_en(data_banks_5_io_rway_en),
    .io_rdata(data_banks_5_io_rdata)
  );
  DataSRAMBank data_banks_6 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_6_clock),
    .io_wen(data_banks_6_io_wen),
    .io_waddr(data_banks_6_io_waddr),
    .io_wway_en(data_banks_6_io_wway_en),
    .io_wdata(data_banks_6_io_wdata),
    .io_ren(data_banks_6_io_ren),
    .io_raddr(data_banks_6_io_raddr),
    .io_rway_en(data_banks_6_io_rway_en),
    .io_rdata(data_banks_6_io_rdata)
  );
  DataSRAMBank data_banks_7 ( // @[BankedDataArray.scala 221:58]
    .clock(data_banks_7_clock),
    .io_wen(data_banks_7_io_wen),
    .io_waddr(data_banks_7_io_waddr),
    .io_wway_en(data_banks_7_io_wway_en),
    .io_wdata(data_banks_7_io_wdata),
    .io_ren(data_banks_7_io_ren),
    .io_raddr(data_banks_7_io_raddr),
    .io_rway_en(data_banks_7_io_rway_en),
    .io_rdata(data_banks_7_io_rdata)
  );
  SRAMTemplate_152 ecc_banks_0 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_0_clock),
    .io_rreq_valid(ecc_banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_1 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_1_clock),
    .io_rreq_valid(ecc_banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_1_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_1_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_1_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_1_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_1_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_2 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_2_clock),
    .io_rreq_valid(ecc_banks_2_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_2_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_2_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_2_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_2_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_2_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_2_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_2_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_2_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_2_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_2_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_2_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_3 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_3_clock),
    .io_rreq_valid(ecc_banks_3_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_3_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_3_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_3_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_3_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_3_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_3_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_3_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_3_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_3_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_3_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_3_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_4 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_4_clock),
    .io_rreq_valid(ecc_banks_4_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_4_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_4_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_4_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_4_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_4_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_4_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_4_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_4_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_4_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_4_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_4_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_5 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_5_clock),
    .io_rreq_valid(ecc_banks_5_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_5_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_5_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_5_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_5_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_5_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_5_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_5_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_5_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_5_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_5_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_5_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_6 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_6_clock),
    .io_rreq_valid(ecc_banks_6_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_6_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_6_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_6_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_6_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_6_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_6_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_6_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_6_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_6_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_6_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_6_io_wreq_bits_waymask)
  );
  SRAMTemplate_152 ecc_banks_7 ( // @[BankedDataArray.scala 222:48]
    .clock(ecc_banks_7_clock),
    .io_rreq_valid(ecc_banks_7_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_7_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_7_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_7_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_7_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_7_io_rresp_data_3),
    .io_wreq_valid(ecc_banks_7_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_7_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_7_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_7_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_7_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_banks_7_io_wreq_bits_waymask)
  );
  assign io_read_0_ready = ~io_write_valid; // @[BankedDataArray.scala 246:35]
  assign io_read_1_ready = ~io_write_valid; // @[BankedDataArray.scala 246:35]
  assign io_readline_ready = ~io_write_valid; // @[BankedDataArray.scala 252:24]
  assign io_resp_0_raw_data = bank_result_0_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_0_error = bank_result_0_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_1_raw_data = bank_result_1_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_1_error = bank_result_1_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_2_raw_data = bank_result_2_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_2_error = bank_result_2_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_3_raw_data = bank_result_3_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_3_error = bank_result_3_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_4_raw_data = bank_result_4_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_4_error = bank_result_4_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_5_raw_data = bank_result_5_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_5_error = bank_result_5_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_6_raw_data = bank_result_6_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_6_error = bank_result_6_error; // @[BankedDataArray.scala 341:11]
  assign io_resp_7_raw_data = bank_result_7_raw_data; // @[BankedDataArray.scala 341:11]
  assign io_resp_7_error = bank_result_7_error; // @[BankedDataArray.scala 341:11]
  assign io_read_error_0 = _io_read_error_0_T_3 & _io_read_error_0_T_4; // @[BankedDataArray.scala 347:57]
  assign io_read_error_1 = _io_read_error_1_T_3 & _io_read_error_1_T_4; // @[BankedDataArray.scala 347:57]
  assign io_readline_error = io_readline_error_REG & _io_readline_error_T_2; // @[BankedDataArray.scala 351:52]
  assign io_bank_conflict_slow_0 = io_bank_conflict_slow_0_REG; // @[BankedDataArray.scala 274:30]
  assign io_bank_conflict_slow_1 = io_bank_conflict_slow_1_REG; // @[BankedDataArray.scala 274:30]
  assign io_bank_conflict_fast_0 = rw_bank_conflict_0 | rrl_bank_conflict_0; // @[BankedDataArray.scala 272:53]
  assign io_bank_conflict_fast_1 = rw_bank_conflict_1 | rrl_bank_conflict_1 | rr_bank_conflict_0_1; // @[BankedDataArray.scala 272:77]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[BankedDataArray.scala 428:25]
  assign io_cacheOp_resp_bits_read_data_vec_0 = bank_result_0_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_1 = bank_result_1_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_2 = bank_result_2_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_3 = bank_result_3_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_4 = bank_result_4_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_5 = bank_result_5_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_6 = bank_result_6_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_vec_7 = bank_result_7_raw_data; // @[BankedDataArray.scala 430:52]
  assign io_cacheOp_resp_bits_read_data_ecc = {{56'd0}, _io_cacheOp_resp_bits_read_data_ecc_T_2}; // @[BankedDataArray.scala 433:38]
  assign data_banks_0_clock = clock;
  assign data_banks_0_io_wen = io_cacheOp_req_valid ? _GEN_58 : io_write_valid & io_write_bits_wmask[0]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_0_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_0_io_wway_en = _GEN_176[3:0];
  assign data_banks_0_io_wdata = io_cacheOp_req_valid ? _GEN_61 : io_write_bits_data_0; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_0_io_ren = io_cacheOp_req_valid ? _GEN_16 : |_data_banks_0_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_0_io_raddr = io_cacheOp_req_valid ? _GEN_18 : {{56'd0}, bank_set_addr}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_0_io_rway_en = _GEN_135[3:0];
  assign data_banks_1_clock = clock;
  assign data_banks_1_io_wen = io_cacheOp_req_valid ? _GEN_62 : io_write_valid & io_write_bits_wmask[1]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_1_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_1_io_wway_en = _GEN_176[3:0];
  assign data_banks_1_io_wdata = io_cacheOp_req_valid ? _GEN_64 : io_write_bits_data_1; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_1_io_ren = io_cacheOp_req_valid ? _GEN_19 : |_data_banks_1_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_1_io_raddr = io_cacheOp_req_valid ? _GEN_21 : {{56'd0}, bank_set_addr_1}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_1_io_rway_en = _GEN_138[3:0];
  assign data_banks_2_clock = clock;
  assign data_banks_2_io_wen = io_cacheOp_req_valid ? _GEN_65 : io_write_valid & io_write_bits_wmask[2]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_2_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_2_io_wway_en = _GEN_176[3:0];
  assign data_banks_2_io_wdata = io_cacheOp_req_valid ? _GEN_67 : io_write_bits_data_2; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_2_io_ren = io_cacheOp_req_valid ? _GEN_22 : |_data_banks_2_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_2_io_raddr = io_cacheOp_req_valid ? _GEN_24 : {{56'd0}, bank_set_addr_2}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_2_io_rway_en = _GEN_141[3:0];
  assign data_banks_3_clock = clock;
  assign data_banks_3_io_wen = io_cacheOp_req_valid ? _GEN_68 : io_write_valid & io_write_bits_wmask[3]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_3_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_3_io_wway_en = _GEN_176[3:0];
  assign data_banks_3_io_wdata = io_cacheOp_req_valid ? _GEN_70 : io_write_bits_data_3; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_3_io_ren = io_cacheOp_req_valid ? _GEN_25 : |_data_banks_3_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_3_io_raddr = io_cacheOp_req_valid ? _GEN_27 : {{56'd0}, bank_set_addr_3}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_3_io_rway_en = _GEN_144[3:0];
  assign data_banks_4_clock = clock;
  assign data_banks_4_io_wen = io_cacheOp_req_valid ? _GEN_71 : io_write_valid & io_write_bits_wmask[4]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_4_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_4_io_wway_en = _GEN_176[3:0];
  assign data_banks_4_io_wdata = io_cacheOp_req_valid ? _GEN_73 : io_write_bits_data_4; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_4_io_ren = io_cacheOp_req_valid ? _GEN_28 : |_data_banks_4_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_4_io_raddr = io_cacheOp_req_valid ? _GEN_30 : {{56'd0}, bank_set_addr_4}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_4_io_rway_en = _GEN_147[3:0];
  assign data_banks_5_clock = clock;
  assign data_banks_5_io_wen = io_cacheOp_req_valid ? _GEN_74 : io_write_valid & io_write_bits_wmask[5]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_5_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_5_io_wway_en = _GEN_176[3:0];
  assign data_banks_5_io_wdata = io_cacheOp_req_valid ? _GEN_76 : io_write_bits_data_5; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_5_io_ren = io_cacheOp_req_valid ? _GEN_31 : |_data_banks_5_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_5_io_raddr = io_cacheOp_req_valid ? _GEN_33 : {{56'd0}, bank_set_addr_5}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_5_io_rway_en = _GEN_150[3:0];
  assign data_banks_6_clock = clock;
  assign data_banks_6_io_wen = io_cacheOp_req_valid ? _GEN_77 : io_write_valid & io_write_bits_wmask[6]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_6_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_6_io_wway_en = _GEN_176[3:0];
  assign data_banks_6_io_wdata = io_cacheOp_req_valid ? _GEN_79 : io_write_bits_data_6; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_6_io_ren = io_cacheOp_req_valid ? _GEN_34 : |_data_banks_6_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_6_io_raddr = io_cacheOp_req_valid ? _GEN_36 : {{56'd0}, bank_set_addr_6}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_6_io_rway_en = _GEN_153[3:0];
  assign data_banks_7_clock = clock;
  assign data_banks_7_io_wen = io_cacheOp_req_valid ? _GEN_80 : io_write_valid & io_write_bits_wmask[7]; // @[BankedDataArray.scala 359:23 387:29]
  assign data_banks_7_io_waddr = io_cacheOp_req_valid ? _GEN_60 : {{56'd0}, sram_waddr}; // @[BankedDataArray.scala 361:25 387:29]
  assign data_banks_7_io_wway_en = _GEN_176[3:0];
  assign data_banks_7_io_wdata = io_cacheOp_req_valid ? _GEN_82 : io_write_bits_data_7; // @[BankedDataArray.scala 362:25 387:29]
  assign data_banks_7_io_ren = io_cacheOp_req_valid ? _GEN_37 : |_data_banks_7_io_ren_T | io_readline_valid; // @[BankedDataArray.scala 323:23 387:29]
  assign data_banks_7_io_raddr = io_cacheOp_req_valid ? _GEN_39 : {{56'd0}, bank_set_addr_7}; // @[BankedDataArray.scala 325:25 387:29]
  assign data_banks_7_io_rway_en = _GEN_156[3:0];
  assign ecc_banks_0_clock = clock;
  assign ecc_banks_0_io_rreq_valid = io_cacheOp_req_valid ? _GEN_41 : _data_banks_0_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_0_io_rreq_bits_setIdx = _GEN_160[7:0];
  assign ecc_banks_0_io_wreq_valid = io_cacheOp_req_valid ? _GEN_84 : _data_banks_0_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_0_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_0_io_wreq_bits_data_0 = _GEN_202[7:0];
  assign ecc_banks_0_io_wreq_bits_data_1 = _GEN_202[7:0];
  assign ecc_banks_0_io_wreq_bits_data_2 = _GEN_202[7:0];
  assign ecc_banks_0_io_wreq_bits_data_3 = _GEN_202[7:0];
  assign ecc_banks_0_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_1_clock = clock;
  assign ecc_banks_1_io_rreq_valid = io_cacheOp_req_valid ? _GEN_43 : _data_banks_1_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_1_io_rreq_bits_setIdx = _GEN_162[7:0];
  assign ecc_banks_1_io_wreq_valid = io_cacheOp_req_valid ? _GEN_91 : _data_banks_1_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_1_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_1_io_wreq_bits_data_0 = _GEN_208[7:0];
  assign ecc_banks_1_io_wreq_bits_data_1 = _GEN_208[7:0];
  assign ecc_banks_1_io_wreq_bits_data_2 = _GEN_208[7:0];
  assign ecc_banks_1_io_wreq_bits_data_3 = _GEN_208[7:0];
  assign ecc_banks_1_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_2_clock = clock;
  assign ecc_banks_2_io_rreq_valid = io_cacheOp_req_valid ? _GEN_45 : _data_banks_2_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_2_io_rreq_bits_setIdx = _GEN_164[7:0];
  assign ecc_banks_2_io_wreq_valid = io_cacheOp_req_valid ? _GEN_97 : _data_banks_2_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_2_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_2_io_wreq_bits_data_0 = _GEN_214[7:0];
  assign ecc_banks_2_io_wreq_bits_data_1 = _GEN_214[7:0];
  assign ecc_banks_2_io_wreq_bits_data_2 = _GEN_214[7:0];
  assign ecc_banks_2_io_wreq_bits_data_3 = _GEN_214[7:0];
  assign ecc_banks_2_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_3_clock = clock;
  assign ecc_banks_3_io_rreq_valid = io_cacheOp_req_valid ? _GEN_47 : _data_banks_3_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_3_io_rreq_bits_setIdx = _GEN_166[7:0];
  assign ecc_banks_3_io_wreq_valid = io_cacheOp_req_valid ? _GEN_103 : _data_banks_3_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_3_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_3_io_wreq_bits_data_0 = _GEN_220[7:0];
  assign ecc_banks_3_io_wreq_bits_data_1 = _GEN_220[7:0];
  assign ecc_banks_3_io_wreq_bits_data_2 = _GEN_220[7:0];
  assign ecc_banks_3_io_wreq_bits_data_3 = _GEN_220[7:0];
  assign ecc_banks_3_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_4_clock = clock;
  assign ecc_banks_4_io_rreq_valid = io_cacheOp_req_valid ? _GEN_49 : _data_banks_4_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_4_io_rreq_bits_setIdx = _GEN_168[7:0];
  assign ecc_banks_4_io_wreq_valid = io_cacheOp_req_valid ? _GEN_109 : _data_banks_4_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_4_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_4_io_wreq_bits_data_0 = _GEN_226[7:0];
  assign ecc_banks_4_io_wreq_bits_data_1 = _GEN_226[7:0];
  assign ecc_banks_4_io_wreq_bits_data_2 = _GEN_226[7:0];
  assign ecc_banks_4_io_wreq_bits_data_3 = _GEN_226[7:0];
  assign ecc_banks_4_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_5_clock = clock;
  assign ecc_banks_5_io_rreq_valid = io_cacheOp_req_valid ? _GEN_51 : _data_banks_5_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_5_io_rreq_bits_setIdx = _GEN_170[7:0];
  assign ecc_banks_5_io_wreq_valid = io_cacheOp_req_valid ? _GEN_115 : _data_banks_5_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_5_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_5_io_wreq_bits_data_0 = _GEN_232[7:0];
  assign ecc_banks_5_io_wreq_bits_data_1 = _GEN_232[7:0];
  assign ecc_banks_5_io_wreq_bits_data_2 = _GEN_232[7:0];
  assign ecc_banks_5_io_wreq_bits_data_3 = _GEN_232[7:0];
  assign ecc_banks_5_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_6_clock = clock;
  assign ecc_banks_6_io_rreq_valid = io_cacheOp_req_valid ? _GEN_53 : _data_banks_6_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_6_io_rreq_bits_setIdx = _GEN_172[7:0];
  assign ecc_banks_6_io_wreq_valid = io_cacheOp_req_valid ? _GEN_121 : _data_banks_6_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_6_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_6_io_wreq_bits_data_0 = _GEN_238[7:0];
  assign ecc_banks_6_io_wreq_bits_data_1 = _GEN_238[7:0];
  assign ecc_banks_6_io_wreq_bits_data_2 = _GEN_238[7:0];
  assign ecc_banks_6_io_wreq_bits_data_3 = _GEN_238[7:0];
  assign ecc_banks_6_io_wreq_bits_waymask = _GEN_206[3:0];
  assign ecc_banks_7_clock = clock;
  assign ecc_banks_7_io_rreq_valid = io_cacheOp_req_valid ? _GEN_55 : _data_banks_7_io_ren_T_2; // @[BankedDataArray.scala 330:29 387:29]
  assign ecc_banks_7_io_rreq_bits_setIdx = _GEN_174[7:0];
  assign ecc_banks_7_io_wreq_valid = io_cacheOp_req_valid ? _GEN_127 : _data_banks_7_io_wen_T_1; // @[BankedDataArray.scala 366:29 387:29]
  assign ecc_banks_7_io_wreq_bits_setIdx = _GEN_201[7:0];
  assign ecc_banks_7_io_wreq_bits_data_0 = _GEN_244[7:0];
  assign ecc_banks_7_io_wreq_bits_data_1 = _GEN_244[7:0];
  assign ecc_banks_7_io_wreq_bits_data_2 = _GEN_244[7:0];
  assign ecc_banks_7_io_wreq_bits_data_3 = _GEN_244[7:0];
  assign ecc_banks_7_io_wreq_bits_waymask = _GEN_206[3:0];
  always @(posedge clock) begin
    io_bank_conflict_slow_0_REG <= io_bank_conflict_fast_0; // @[BankedDataArray.scala 274:40]
    io_bank_conflict_slow_1_REG <= io_bank_conflict_fast_1; // @[BankedDataArray.scala 274:40]
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_0_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs__0) begin // @[Mux.scala 47:70]
      bank_result_0_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_0_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_1_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_1_0) begin // @[Mux.scala 47:70]
      bank_result_1_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_1_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_2_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_2_0) begin // @[Mux.scala 47:70]
      bank_result_2_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_2_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_3_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_3_0) begin // @[Mux.scala 47:70]
      bank_result_3_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_3_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_4_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_4_0) begin // @[Mux.scala 47:70]
      bank_result_4_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_4_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_5_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_5_0) begin // @[Mux.scala 47:70]
      bank_result_5_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_5_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_6_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_6_0) begin // @[Mux.scala 47:70]
      bank_result_6_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_6_ecc_REG <= io_read_1_bits_way_en;
    end
    if (io_readline_valid) begin // @[BankedDataArray.scala 312:26]
      bank_result_7_ecc_REG <= io_readline_bits_way_en;
    end else if (bank_addr_matchs_7_0) begin // @[Mux.scala 47:70]
      bank_result_7_ecc_REG <= io_read_0_bits_way_en;
    end else begin
      bank_result_7_ecc_REG <= io_read_1_bits_way_en;
    end
    io_read_error_0_REG <= io_read_0_ready & io_read_0_valid; // @[Decoupled.scala 50:35]
    io_read_error_0_REG_1 <= io_read_0_bits_addr[5:3]; // @[DCacheWrapper.scala 143:9]
    io_read_error_1_REG <= io_read_1_ready & io_read_1_valid; // @[Decoupled.scala 50:35]
    io_read_error_1_REG_1 <= io_read_1_bits_addr[5:3]; // @[DCacheWrapper.scala 143:9]
    io_readline_error_REG <= io_readline_ready & io_readline_valid; // @[Decoupled.scala 50:35]
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[BankedDataArray.scala 428:57]
    eccReadResult_0_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_1_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_2_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_3_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_4_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_5_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_6_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    eccReadResult_7_REG <= io_cacheOp_req_bits_wayNum[4:0]; // @[BankedDataArray.scala 431:109]
    io_cacheOp_resp_bits_read_data_ecc_REG <= io_cacheOp_req_bits_bank_num; // @[BankedDataArray.scala 434:26]
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
  io_bank_conflict_slow_0_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_bank_conflict_slow_1_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  bank_result_0_ecc_REG = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  bank_result_1_ecc_REG = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  bank_result_2_ecc_REG = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  bank_result_3_ecc_REG = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  bank_result_4_ecc_REG = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  bank_result_5_ecc_REG = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  bank_result_6_ecc_REG = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  bank_result_7_ecc_REG = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  io_read_error_0_REG = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_read_error_0_REG_1 = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  io_read_error_1_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_read_error_1_REG_1 = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  io_readline_error_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  eccReadResult_0_REG = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  eccReadResult_1_REG = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  eccReadResult_2_REG = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  eccReadResult_3_REG = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  eccReadResult_4_REG = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  eccReadResult_5_REG = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  eccReadResult_6_REG = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  eccReadResult_7_REG = _RAND_23[4:0];
  _RAND_24 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_data_ecc_REG = _RAND_24[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
