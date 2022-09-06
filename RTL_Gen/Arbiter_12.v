module Arbiter_12(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [26:0] io_in_0_bits_req_info_vpn,
  input  [1:0]  io_in_0_bits_req_info_source,
  input  [35:0] io_in_0_bits_ppn,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [26:0] io_in_1_bits_req_info_vpn,
  input  [1:0]  io_in_1_bits_req_info_source,
  input  [35:0] io_in_1_bits_ppn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_req_info_vpn,
  output [1:0]  io_out_bits_req_info_source,
  output [35:0] io_out_bits_ppn
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_req_info_vpn = io_in_0_valid ? io_in_0_bits_req_info_vpn : io_in_1_bits_req_info_vpn; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_req_info_source = io_in_0_valid ? io_in_0_bits_req_info_source : io_in_1_bits_req_info_source; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_ppn = io_in_0_valid ? io_in_0_bits_ppn : io_in_1_bits_ppn; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
