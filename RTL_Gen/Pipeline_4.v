module Pipeline_4(
  input        clock,
  input        reset,
  input        io_in_valid,
  input  [7:0] io_in_bits_set,
  input  [2:0] io_in_bits_way,
  input  [1:0] io_in_bits_data_0_state,
  input  [1:0] io_in_bits_data_0_alias,
  input  [1:0] io_in_bits_data_1_state,
  input  [1:0] io_in_bits_data_1_alias,
  output       io_out_valid,
  output [7:0] io_out_bits_set,
  output [2:0] io_out_bits_way,
  output [1:0] io_out_bits_data_0_state,
  output [1:0] io_out_bits_data_0_alias,
  output [1:0] io_out_bits_data_1_state,
  output [1:0] io_out_bits_data_1_alias
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_way; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_0_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_0_alias; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_1_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_enq_bits_data_1_alias; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_way; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_0_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_0_alias; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_1_state; // @[Pipeline.scala 11:47]
  wire [1:0] stages_0_io_deq_bits_data_1_alias; // @[Pipeline.scala 11:47]
  Queue_235 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_way(stages_0_io_enq_bits_way),
    .io_enq_bits_data_0_state(stages_0_io_enq_bits_data_0_state),
    .io_enq_bits_data_0_alias(stages_0_io_enq_bits_data_0_alias),
    .io_enq_bits_data_1_state(stages_0_io_enq_bits_data_1_state),
    .io_enq_bits_data_1_alias(stages_0_io_enq_bits_data_1_alias),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_way(stages_0_io_deq_bits_way),
    .io_deq_bits_data_0_state(stages_0_io_deq_bits_data_0_state),
    .io_deq_bits_data_0_alias(stages_0_io_deq_bits_data_0_alias),
    .io_deq_bits_data_1_state(stages_0_io_deq_bits_data_1_state),
    .io_deq_bits_data_1_alias(stages_0_io_deq_bits_data_1_alias)
  );
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign io_out_bits_way = stages_0_io_deq_bits_way; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_0_state = stages_0_io_deq_bits_data_0_state; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_0_alias = stages_0_io_deq_bits_data_0_alias; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_1_state = stages_0_io_deq_bits_data_1_state; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_1_alias = stages_0_io_deq_bits_data_1_alias; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_way = io_in_bits_way; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_0_state = io_in_bits_data_0_state; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_0_alias = io_in_bits_data_0_alias; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_1_state = io_in_bits_data_1_state; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_1_alias = io_in_bits_data_1_alias; // @[Pipeline.scala 14:14]
endmodule