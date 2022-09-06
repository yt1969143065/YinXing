module LoadImmExtractor(
  input  [1:0]  io_uop_ctrl_srcType_0,
  input  [19:0] io_uop_ctrl_imm,
  input  [6:0]  io_uop_psrc_0,
  input  [6:0]  io_uop_psrc_1,
  input  [63:0] io_data_in_0,
  output [63:0] io_data_out_0
);
  wire  _T = io_uop_ctrl_srcType_0 == 2'h1; // @[package.scala 39:39]
  wire [21:0] io_data_out_0_imm_u = {io_uop_psrc_1,io_uop_psrc_0,io_uop_ctrl_imm[19:12]}; // @[Cat.scala 31:58]
  wire [31:0] _io_data_out_0_T_1 = {io_data_out_0_imm_u[19:0],12'h0}; // @[Cat.scala 31:58]
  wire  io_data_out_0_signBit = _io_data_out_0_T_1[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _io_data_out_0_T_3 = io_data_out_0_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_data_out_0_T_4 = {_io_data_out_0_T_3,io_data_out_0_imm_u[19:0],12'h0}; // @[Cat.scala 31:58]
  assign io_data_out_0 = _T ? _io_data_out_0_T_4 : io_data_in_0; // @[DataArray.scala 132:48 133:20 98:15]
endmodule
