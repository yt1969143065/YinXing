module Std(
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [3:0]  io_in_bits_uop_ctrl_fuType,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input  [4:0]  io_in_bits_uop_sqIdx_value,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output [3:0]  io_out_bits_uop_ctrl_fuType,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [4:0]  io_out_bits_uop_sqIdx_value
);
  assign io_out_valid = io_in_valid; // @[MemBlock.scala 36:16]
  assign io_out_bits_data = io_in_bits_src_0; // @[MemBlock.scala 38:20]
  assign io_out_bits_uop_ctrl_fuType = io_in_bits_uop_ctrl_fuType; // @[MemBlock.scala 37:19]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_bits_uop_ctrl_fuOpType; // @[MemBlock.scala 37:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[MemBlock.scala 37:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[MemBlock.scala 37:19]
  assign io_out_bits_uop_sqIdx_value = io_in_bits_uop_sqIdx_value; // @[MemBlock.scala 37:19]
endmodule
