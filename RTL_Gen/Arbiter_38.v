module Arbiter_38(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [1:0]  io_in_0_bits_way,
  input  [11:0] io_in_0_bits_set,
  input         io_in_0_bits_beat,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [1:0]  io_in_1_bits_way,
  input  [11:0] io_in_1_bits_set,
  input         io_in_1_bits_beat,
  input         io_in_1_bits_noop,
  input         io_out_ready,
  output        io_out_valid,
  output [1:0]  io_out_bits_way,
  output [11:0] io_out_bits_set,
  output        io_out_bits_beat,
  output        io_out_bits_noop
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_way = io_in_0_valid ? io_in_0_bits_way : io_in_1_bits_way; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_set = io_in_0_valid ? io_in_0_bits_set : io_in_1_bits_set; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_beat = io_in_0_valid ? io_in_0_bits_beat : io_in_1_bits_beat; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_noop = io_in_0_valid ? 1'h0 : io_in_1_bits_noop; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
