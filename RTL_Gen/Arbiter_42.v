module Arbiter_42(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [11:0] io_in_0_bits_set,
  input  [1:0]  io_in_0_bits_way,
  input         io_in_0_bits_data_dirty,
  input  [1:0]  io_in_0_bits_data_state,
  input  [1:0]  io_in_0_bits_data_clientStates_0,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [11:0] io_in_1_bits_set,
  input  [1:0]  io_in_1_bits_way,
  input         io_in_1_bits_data_dirty,
  input  [1:0]  io_in_1_bits_data_state,
  input  [1:0]  io_in_1_bits_data_clientStates_0,
  input         io_out_ready,
  output        io_out_valid,
  output [11:0] io_out_bits_set,
  output [1:0]  io_out_bits_way,
  output        io_out_bits_data_dirty,
  output [1:0]  io_out_bits_data_state,
  output [1:0]  io_out_bits_data_clientStates_0
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_set = io_in_0_valid ? io_in_0_bits_set : io_in_1_bits_set; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_way = io_in_0_valid ? io_in_0_bits_way : io_in_1_bits_way; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_dirty = io_in_0_valid ? io_in_0_bits_data_dirty : io_in_1_bits_data_dirty; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_state = io_in_0_valid ? io_in_0_bits_data_state : io_in_1_bits_data_state; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_clientStates_0 = io_in_0_valid ? io_in_0_bits_data_clientStates_0 :
    io_in_1_bits_data_clientStates_0; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
