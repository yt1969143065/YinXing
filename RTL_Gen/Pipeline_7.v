module Pipeline_7(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [21:0] io_in_bits_tag,
  input  [7:0]  io_in_bits_set,
  input         io_out_ready,
  output        io_out_valid,
  output [21:0] io_out_bits_tag,
  output [7:0]  io_out_bits_set
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [21:0] stages_0_io_enq_bits_tag; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [21:0] stages_0_io_deq_bits_tag; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  Queue_238 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_tag(stages_0_io_enq_bits_tag),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_tag(stages_0_io_deq_bits_tag),
    .io_deq_bits_set(stages_0_io_deq_bits_set)
  );
  assign io_in_ready = stages_0_io_enq_ready; // @[Pipeline.scala 14:14]
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_tag = stages_0_io_deq_bits_tag; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_tag = io_in_bits_tag; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_deq_ready = io_out_ready; // @[Pipeline.scala 18:10]
endmodule
