module Arbiter_1(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [7:0]  io_in_0_bits_virIdx,
  input  [23:0] io_in_0_bits_phyTag,
  input  [1:0]  io_in_0_bits_coh_state,
  input  [3:0]  io_in_0_bits_waymask,
  input         io_in_0_bits_bankIdx,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [7:0]  io_in_1_bits_virIdx,
  input  [23:0] io_in_1_bits_phyTag,
  input  [1:0]  io_in_1_bits_coh_state,
  input  [3:0]  io_in_1_bits_waymask,
  input         io_in_1_bits_bankIdx,
  input         io_out_ready,
  output        io_out_valid,
  output [7:0]  io_out_bits_virIdx,
  output [23:0] io_out_bits_phyTag,
  output [1:0]  io_out_bits_coh_state,
  output [3:0]  io_out_bits_waymask,
  output        io_out_bits_bankIdx
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_virIdx = io_in_0_valid ? io_in_0_bits_virIdx : io_in_1_bits_virIdx; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_phyTag = io_in_0_valid ? io_in_0_bits_phyTag : io_in_1_bits_phyTag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_coh_state = io_in_0_valid ? io_in_0_bits_coh_state : io_in_1_bits_coh_state; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_waymask = io_in_0_valid ? io_in_0_bits_waymask : io_in_1_bits_waymask; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_bankIdx = io_in_0_valid ? io_in_0_bits_bankIdx : io_in_1_bits_bankIdx; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
