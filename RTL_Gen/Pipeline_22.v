module Pipeline_22(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [8:0]  io_in_bits_set,
  input  [2:0]  io_in_bits_way,
  input  [18:0] io_in_bits_tag,
  output        io_out_valid,
  output [8:0]  io_out_bits_set,
  output [2:0]  io_out_bits_way,
  output [18:0] io_out_bits_tag
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [8:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_way; // @[Pipeline.scala 11:47]
  wire [18:0] stages_0_io_enq_bits_tag; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [8:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_way; // @[Pipeline.scala 11:47]
  wire [18:0] stages_0_io_deq_bits_tag; // @[Pipeline.scala 11:47]
  Queue_281 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_way(stages_0_io_enq_bits_way),
    .io_enq_bits_tag(stages_0_io_enq_bits_tag),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_way(stages_0_io_deq_bits_way),
    .io_deq_bits_tag(stages_0_io_deq_bits_tag)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign io_out_bits_way = stages_0_io_deq_bits_way; // @[Pipeline.scala 18:10]
  assign io_out_bits_tag = stages_0_io_deq_bits_tag; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_way = io_in_bits_way; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_tag = io_in_bits_tag; // @[Pipeline.scala 14:14]
endmodule
