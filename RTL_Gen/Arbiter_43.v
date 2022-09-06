module Arbiter_43(
  input         io_in_0_valid,
  input  [11:0] io_in_0_bits_set,
  input  [1:0]  io_in_0_bits_way,
  input  [15:0] io_in_0_bits_tag,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [11:0] io_in_1_bits_set,
  input  [1:0]  io_in_1_bits_way,
  input  [15:0] io_in_1_bits_tag,
  output        io_out_valid,
  output [11:0] io_out_bits_set,
  output [1:0]  io_out_bits_way,
  output [15:0] io_out_bits_tag
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_set = io_in_0_valid ? io_in_0_bits_set : io_in_1_bits_set; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_way = io_in_0_valid ? io_in_0_bits_way : io_in_1_bits_way; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_tag = io_in_0_valid ? io_in_0_bits_tag : io_in_1_bits_tag; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
