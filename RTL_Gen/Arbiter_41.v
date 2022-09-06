module Arbiter_41(
  input         io_in_0_valid,
  input  [15:0] io_in_0_bits_idOH,
  input  [15:0] io_in_0_bits_tag,
  input  [11:0] io_in_0_bits_set,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [15:0] io_in_1_bits_idOH,
  input  [15:0] io_in_1_bits_tag,
  input  [11:0] io_in_1_bits_set,
  input  [2:0]  io_in_1_bits_replacerInfo_channel,
  input  [2:0]  io_in_1_bits_replacerInfo_opcode,
  input  [5:0]  io_in_1_bits_source,
  input         io_out_ready,
  output        io_out_valid,
  output [15:0] io_out_bits_idOH,
  output [15:0] io_out_bits_tag,
  output [11:0] io_out_bits_set,
  output [2:0]  io_out_bits_replacerInfo_channel,
  output [2:0]  io_out_bits_replacerInfo_opcode,
  output [5:0]  io_out_bits_source
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_idOH = io_in_0_valid ? io_in_0_bits_idOH : io_in_1_bits_idOH; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_tag = io_in_0_valid ? io_in_0_bits_tag : io_in_1_bits_tag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_set = io_in_0_valid ? io_in_0_bits_set : io_in_1_bits_set; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_replacerInfo_channel = io_in_0_valid ? 3'h0 : io_in_1_bits_replacerInfo_channel; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_replacerInfo_opcode = io_in_0_valid ? 3'h0 : io_in_1_bits_replacerInfo_opcode; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? 6'h0 : io_in_1_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
