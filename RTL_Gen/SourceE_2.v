module SourceE_2(
  input        io_e_ready,
  output       io_e_valid,
  output [2:0] io_e_bits_sink,
  output       io_task_ready,
  input        io_task_valid,
  input  [2:0] io_task_bits_sink
);
  assign io_e_valid = io_task_valid; // @[SourceE.scala 33:11]
  assign io_e_bits_sink = io_task_bits_sink; // @[SourceE.scala 34:15]
  assign io_task_ready = io_e_ready; // @[SourceE.scala 35:17]
endmodule
