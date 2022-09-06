module Arbiter_5(
  output       io_in_0_ready,
  input        io_in_0_valid,
  input  [7:0] io_in_0_bits_vSetIdx_0,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input        io_in_1_bits_isDoubleLine,
  input  [7:0] io_in_1_bits_vSetIdx_0,
  input  [7:0] io_in_1_bits_vSetIdx_1,
  input        io_out_ready,
  output       io_out_valid,
  output       io_out_bits_isDoubleLine,
  output [7:0] io_out_bits_vSetIdx_0,
  output [7:0] io_out_bits_vSetIdx_1
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_isDoubleLine = io_in_0_valid ? 1'h0 : io_in_1_bits_isDoubleLine; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_vSetIdx_0 = io_in_0_valid ? io_in_0_bits_vSetIdx_0 : io_in_1_bits_vSetIdx_0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_vSetIdx_1 = io_in_0_valid ? 8'h0 : io_in_1_bits_vSetIdx_1; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule
