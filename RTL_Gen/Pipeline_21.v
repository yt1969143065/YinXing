module Pipeline_21(
  input        clock,
  input        reset,
  input        io_in_valid,
  input  [8:0] io_in_bits_set,
  input  [2:0] io_in_bits_way,
  input  [1:0] io_in_bits_data_0_state,
  output       io_out_valid,
  output [8:0] io_out_bits_set,
  output [2:0] io_out_bits_way,
  output [1:0] io_out_bits_data_0_state
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [8:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_way; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_0_state; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [8:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_way; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_0_state; // @[Pipeline.scala 11:47]
  Queue_280 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_way(stages_0_io_enq_bits_way),
    .io_enq_bits_data_0_state(stages_0_io_enq_bits_data_0_state),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_way(stages_0_io_deq_bits_way),
    .io_deq_bits_data_0_state(stages_0_io_deq_bits_data_0_state)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign io_out_bits_way = stages_0_io_deq_bits_way; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_0_state = stages_0_io_deq_bits_data_0_state; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_way = io_in_bits_way; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_0_state = io_in_bits_data_0_state; // @[Pipeline.scala 14:14]
endmodule
