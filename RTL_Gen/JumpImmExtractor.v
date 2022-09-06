module JumpImmExtractor(
  input  [1:0]  io_uop_ctrl_srcType_0,
  input  [1:0]  io_uop_ctrl_srcType_1,
  input  [63:0] io_data_in_0,
  input  [63:0] io_data_in_1,
  output [63:0] io_data_out_0,
  output [63:0] io_data_out_1,
  input  [38:0] jump_pc,
  input  [38:0] jalr_target
);
  wire  _T = io_uop_ctrl_srcType_0 == 2'h1; // @[package.scala 38:38]
  wire  io_data_out_0_signBit = jump_pc[38]; // @[BitUtils.scala 43:20]
  wire [24:0] _io_data_out_0_T_1 = io_data_out_0_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_data_out_0_T_2 = {_io_data_out_0_T_1,jump_pc}; // @[Cat.scala 31:58]
  wire  _T_1 = io_uop_ctrl_srcType_1 == 2'h0; // @[package.scala 37:39]
  assign io_data_out_0 = _T ? _io_data_out_0_T_2 : io_data_in_0; // @[DataArray.scala 105:47 106:20 98:15]
  assign io_data_out_1 = ~_T_1 ? {{25'd0}, jalr_target} : io_data_in_1; // @[DataArray.scala 109:49 110:20 98:15]
endmodule
