module RightShiftWordModule(
  input  [4:0]  io_shamt,
  input  [4:0]  io_revShamt,
  input  [31:0] io_srlSrc,
  input  [31:0] io_sraSrc,
  output [31:0] io_srlw,
  output [31:0] io_sraw,
  output [31:0] io_revSrlw
);
  assign io_srlw = io_srlSrc >> io_shamt; // @[Alu.scala 92:24]
  assign io_sraw = $signed(io_sraSrc) >>> io_shamt; // @[Alu.scala 93:53]
  assign io_revSrlw = io_srlSrc >> io_revShamt; // @[Alu.scala 94:27]
endmodule
