module Arbiter_71(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [7:0]  io_in_0_bits_cmd,
  input  [63:0] io_in_0_bits_data_0,
  input  [63:0] io_in_0_bits_data_1,
  input  [63:0] io_in_0_bits_data_2,
  input  [63:0] io_in_0_bits_data_3,
  input  [63:0] io_in_0_bits_data_4,
  input  [63:0] io_in_0_bits_data_5,
  input  [63:0] io_in_0_bits_data_6,
  input  [63:0] io_in_0_bits_data_7,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [7:0]  io_in_1_bits_cmd,
  input  [63:0] io_in_1_bits_data_0,
  input  [63:0] io_in_1_bits_data_1,
  input  [63:0] io_in_1_bits_data_2,
  input  [63:0] io_in_1_bits_data_3,
  input  [63:0] io_in_1_bits_data_4,
  input  [63:0] io_in_1_bits_data_5,
  input  [63:0] io_in_1_bits_data_6,
  input  [63:0] io_in_1_bits_data_7,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [7:0]  io_in_2_bits_cmd,
  input  [63:0] io_in_2_bits_data_0,
  input  [63:0] io_in_2_bits_data_1,
  input  [63:0] io_in_2_bits_data_2,
  input  [63:0] io_in_2_bits_data_3,
  input  [63:0] io_in_2_bits_data_4,
  input  [63:0] io_in_2_bits_data_5,
  input  [63:0] io_in_2_bits_data_6,
  input  [63:0] io_in_2_bits_data_7,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [7:0]  io_in_3_bits_cmd,
  input  [63:0] io_in_3_bits_data_0,
  input  [63:0] io_in_3_bits_data_1,
  input  [63:0] io_in_3_bits_data_2,
  input  [63:0] io_in_3_bits_data_3,
  input  [63:0] io_in_3_bits_data_4,
  input  [63:0] io_in_3_bits_data_5,
  input  [63:0] io_in_3_bits_data_6,
  input  [63:0] io_in_3_bits_data_7,
  input         io_out_ready,
  output        io_out_valid,
  output [7:0]  io_out_bits_cmd,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7
);
  wire [63:0] _GEN_1 = io_in_2_valid ? io_in_2_bits_data_0 : io_in_3_bits_data_0; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_2 = io_in_2_valid ? io_in_2_bits_data_1 : io_in_3_bits_data_1; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_3 = io_in_2_valid ? io_in_2_bits_data_2 : io_in_3_bits_data_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_4 = io_in_2_valid ? io_in_2_bits_data_3 : io_in_3_bits_data_3; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_5 = io_in_2_valid ? io_in_2_bits_data_4 : io_in_3_bits_data_4; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_6 = io_in_2_valid ? io_in_2_bits_data_5 : io_in_3_bits_data_5; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_7 = io_in_2_valid ? io_in_2_bits_data_6 : io_in_3_bits_data_6; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_8 = io_in_2_valid ? io_in_2_bits_data_7 : io_in_3_bits_data_7; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [7:0] _GEN_9 = io_in_2_valid ? io_in_2_bits_cmd : io_in_3_bits_cmd; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [63:0] _GEN_11 = io_in_1_valid ? io_in_1_bits_data_0 : _GEN_1; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_12 = io_in_1_valid ? io_in_1_bits_data_1 : _GEN_2; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_13 = io_in_1_valid ? io_in_1_bits_data_2 : _GEN_3; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_14 = io_in_1_valid ? io_in_1_bits_data_3 : _GEN_4; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_15 = io_in_1_valid ? io_in_1_bits_data_4 : _GEN_5; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_16 = io_in_1_valid ? io_in_1_bits_data_5 : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_17 = io_in_1_valid ? io_in_1_bits_data_6 : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  wire [63:0] _GEN_18 = io_in_1_valid ? io_in_1_bits_data_7 : _GEN_8; // @[Arbiter.scala 141:26 143:19]
  wire [7:0] _GEN_19 = io_in_1_valid ? io_in_1_bits_cmd : _GEN_9; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_3 | io_in_3_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_cmd = io_in_0_valid ? io_in_0_bits_cmd : _GEN_19; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_0 = io_in_0_valid ? io_in_0_bits_data_0 : _GEN_11; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_1 = io_in_0_valid ? io_in_0_bits_data_1 : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_2 = io_in_0_valid ? io_in_0_bits_data_2 : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_3 = io_in_0_valid ? io_in_0_bits_data_3 : _GEN_14; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_4 = io_in_0_valid ? io_in_0_bits_data_4 : _GEN_15; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_5 = io_in_0_valid ? io_in_0_bits_data_5 : _GEN_16; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_6 = io_in_0_valid ? io_in_0_bits_data_6 : _GEN_17; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_data_7 = io_in_0_valid ? io_in_0_bits_data_7 : _GEN_18; // @[Arbiter.scala 141:26 143:19]
endmodule
