module Arbiter_33(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [2:0]  io_in_0_bits_channel,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [2:0]  io_in_0_bits_size,
  input  [5:0]  io_in_0_bits_source,
  input  [7:0]  io_in_0_bits_set,
  input  [20:0] io_in_0_bits_tag,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_bufIdx,
  input         io_in_0_bits_needHint,
  input         io_in_0_bits_isPrefetch,
  input  [1:0]  io_in_0_bits_alias,
  input         io_in_0_bits_preferCache,
  input         io_in_0_bits_dirty,
  input         io_in_0_bits_fromProbeHelper,
  input         io_in_0_bits_fromCmoHelper,
  input         io_in_0_bits_needProbeAckData,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [2:0]  io_in_1_bits_channel,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [2:0]  io_in_1_bits_size,
  input  [5:0]  io_in_1_bits_source,
  input  [7:0]  io_in_1_bits_set,
  input  [20:0] io_in_1_bits_tag,
  input  [5:0]  io_in_1_bits_off,
  input         io_in_1_bits_isPrefetch,
  input         io_in_1_bits_needProbeAckData,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [5:0]  io_out_bits_source,
  output [7:0]  io_out_bits_set,
  output [20:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_needHint,
  output        io_out_bits_isPrefetch,
  output [1:0]  io_out_bits_alias,
  output        io_out_bits_preferCache,
  output        io_out_bits_dirty,
  output        io_out_bits_fromProbeHelper,
  output        io_out_bits_fromCmoHelper,
  output        io_out_bits_needProbeAckData
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_channel = io_in_0_valid ? io_in_0_bits_channel : io_in_1_bits_channel; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_opcode = io_in_0_valid ? io_in_0_bits_opcode : io_in_1_bits_opcode; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_param = io_in_0_valid ? io_in_0_bits_param : io_in_1_bits_param; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_size = io_in_0_valid ? io_in_0_bits_size : io_in_1_bits_size; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_source = io_in_0_valid ? io_in_0_bits_source : io_in_1_bits_source; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_set = io_in_0_valid ? io_in_0_bits_set : io_in_1_bits_set; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_tag = io_in_0_valid ? io_in_0_bits_tag : io_in_1_bits_tag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_off = io_in_0_valid ? io_in_0_bits_off : io_in_1_bits_off; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_bufIdx = io_in_0_valid ? io_in_0_bits_bufIdx : 3'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_needHint = io_in_0_valid & io_in_0_bits_needHint; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_isPrefetch = io_in_0_valid ? io_in_0_bits_isPrefetch : io_in_1_bits_isPrefetch; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_alias = io_in_0_valid ? io_in_0_bits_alias : 2'h0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_preferCache = io_in_0_valid ? io_in_0_bits_preferCache : 1'h1; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_dirty = io_in_0_valid & io_in_0_bits_dirty; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_fromProbeHelper = io_in_0_valid & io_in_0_bits_fromProbeHelper; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_fromCmoHelper = io_in_0_valid & io_in_0_bits_fromCmoHelper; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_needProbeAckData = io_in_0_valid ? io_in_0_bits_needProbeAckData : io_in_1_bits_needProbeAckData; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
