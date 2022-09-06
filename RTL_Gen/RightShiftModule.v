module RightShiftModule(
  input  [5:0]  io_shamt,
  input  [5:0]  io_revShamt,
  input  [63:0] io_srlSrc,
  input  [63:0] io_sraSrc,
  output [63:0] io_srl,
  output [63:0] io_sra,
  output [63:0] io_revSrl
);
  assign io_srl = io_srlSrc >> io_shamt; // @[Alu.scala 78:24]
  assign io_sra = $signed(io_sraSrc) >>> io_shamt; // @[Alu.scala 79:53]
  assign io_revSrl = io_srlSrc >> io_revShamt; // @[Alu.scala 80:27]
endmodule
