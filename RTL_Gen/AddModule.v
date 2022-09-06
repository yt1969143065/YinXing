module AddModule(
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [31:0] io_srcw,
  output [63:0] io_add,
  output [31:0] io_addw
);
  assign io_add = io_src_0 + io_src_1; // @[Alu.scala 33:23]
  assign io_addw = io_srcw + io_src_1[31:0]; // @[Alu.scala 35:22]
endmodule
