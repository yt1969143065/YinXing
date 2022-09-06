module AsyncResetSynchronizerShiftReg_w1_d3_i0(
  input   clock,
  input   reset,
  input   io_d,
  output  io_q
);
  wire  output_chain_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_q; // @[ShiftReg.scala 45:23]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 output_chain ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_clock),
    .reset(output_chain_reset),
    .io_d(output_chain_io_d),
    .io_q(output_chain_io_q)
  );
  assign io_q = output_chain_io_q; // @[ShiftReg.scala 48:{24,24}]
  assign output_chain_clock = clock;
  assign output_chain_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_io_d = io_d; // @[SynchronizerReg.scala 87:41]
endmodule
