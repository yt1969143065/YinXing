module Pipeline_19(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [11:0] io_in_bits_set,
  input  [1:0]  io_in_bits_way,
  input         io_in_bits_data_dirty,
  input  [1:0]  io_in_bits_data_state,
  input  [1:0]  io_in_bits_data_clientStates_0,
  output        io_out_valid,
  output [11:0] io_out_bits_set,
  output [1:0]  io_out_bits_way,
  output        io_out_bits_data_dirty,
  output [1:0]  io_out_bits_data_state,
  output [1:0]  io_out_bits_data_clientStates_0
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [11:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_way; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_data_dirty; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_clientStates_0; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [11:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_way; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_data_dirty; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_clientStates_0; // @[Pipeline.scala 11:47]
  Queue_278 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_way(stages_0_io_enq_bits_way),
    .io_enq_bits_data_dirty(stages_0_io_enq_bits_data_dirty),
    .io_enq_bits_data_state(stages_0_io_enq_bits_data_state),
    .io_enq_bits_data_clientStates_0(stages_0_io_enq_bits_data_clientStates_0),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_way(stages_0_io_deq_bits_way),
    .io_deq_bits_data_dirty(stages_0_io_deq_bits_data_dirty),
    .io_deq_bits_data_state(stages_0_io_deq_bits_data_state),
    .io_deq_bits_data_clientStates_0(stages_0_io_deq_bits_data_clientStates_0)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign io_out_bits_way = stages_0_io_deq_bits_way; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_dirty = stages_0_io_deq_bits_data_dirty; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_state = stages_0_io_deq_bits_data_state; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_clientStates_0 = stages_0_io_deq_bits_data_clientStates_0; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_way = io_in_bits_way; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_dirty = io_in_bits_data_dirty; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_state = io_in_bits_data_state; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_clientStates_0 = io_in_bits_data_clientStates_0; // @[Pipeline.scala 14:14]
endmodule
