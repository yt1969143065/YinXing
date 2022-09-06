module Pipeline_49(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [7:0]  io_in_bits_cmd,
  input  [63:0] io_in_bits_data_0,
  input  [63:0] io_in_bits_data_1,
  input  [63:0] io_in_bits_data_2,
  input  [63:0] io_in_bits_data_3,
  input  [63:0] io_in_bits_data_4,
  input  [63:0] io_in_bits_data_5,
  input  [63:0] io_in_bits_data_6,
  input  [63:0] io_in_bits_data_7,
  input         io_out_ready,
  output        io_out_valid,
  output [7:0]  io_out_bits_cmd,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_enq_bits_cmd; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_0; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_1; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_2; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_3; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_4; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_5; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_6; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_data_7; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_deq_bits_cmd; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_0; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_1; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_2; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_3; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_4; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_5; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_6; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_data_7; // @[Pipeline.scala 11:47]
  wire  stages_1_clock; // @[Pipeline.scala 11:47]
  wire  stages_1_reset; // @[Pipeline.scala 11:47]
  wire  stages_1_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_1_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_1_io_enq_bits_cmd; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_0; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_1; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_2; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_3; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_4; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_5; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_6; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_data_7; // @[Pipeline.scala 11:47]
  wire  stages_1_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_1_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_1_io_deq_bits_cmd; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_0; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_1; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_2; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_3; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_4; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_5; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_6; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_data_7; // @[Pipeline.scala 11:47]
  Queue_355 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_cmd(stages_0_io_enq_bits_cmd),
    .io_enq_bits_data_0(stages_0_io_enq_bits_data_0),
    .io_enq_bits_data_1(stages_0_io_enq_bits_data_1),
    .io_enq_bits_data_2(stages_0_io_enq_bits_data_2),
    .io_enq_bits_data_3(stages_0_io_enq_bits_data_3),
    .io_enq_bits_data_4(stages_0_io_enq_bits_data_4),
    .io_enq_bits_data_5(stages_0_io_enq_bits_data_5),
    .io_enq_bits_data_6(stages_0_io_enq_bits_data_6),
    .io_enq_bits_data_7(stages_0_io_enq_bits_data_7),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_cmd(stages_0_io_deq_bits_cmd),
    .io_deq_bits_data_0(stages_0_io_deq_bits_data_0),
    .io_deq_bits_data_1(stages_0_io_deq_bits_data_1),
    .io_deq_bits_data_2(stages_0_io_deq_bits_data_2),
    .io_deq_bits_data_3(stages_0_io_deq_bits_data_3),
    .io_deq_bits_data_4(stages_0_io_deq_bits_data_4),
    .io_deq_bits_data_5(stages_0_io_deq_bits_data_5),
    .io_deq_bits_data_6(stages_0_io_deq_bits_data_6),
    .io_deq_bits_data_7(stages_0_io_deq_bits_data_7)
  );
  Queue_355 stages_1 ( // @[Pipeline.scala 11:47]
    .clock(stages_1_clock),
    .reset(stages_1_reset),
    .io_enq_ready(stages_1_io_enq_ready),
    .io_enq_valid(stages_1_io_enq_valid),
    .io_enq_bits_cmd(stages_1_io_enq_bits_cmd),
    .io_enq_bits_data_0(stages_1_io_enq_bits_data_0),
    .io_enq_bits_data_1(stages_1_io_enq_bits_data_1),
    .io_enq_bits_data_2(stages_1_io_enq_bits_data_2),
    .io_enq_bits_data_3(stages_1_io_enq_bits_data_3),
    .io_enq_bits_data_4(stages_1_io_enq_bits_data_4),
    .io_enq_bits_data_5(stages_1_io_enq_bits_data_5),
    .io_enq_bits_data_6(stages_1_io_enq_bits_data_6),
    .io_enq_bits_data_7(stages_1_io_enq_bits_data_7),
    .io_deq_ready(stages_1_io_deq_ready),
    .io_deq_valid(stages_1_io_deq_valid),
    .io_deq_bits_cmd(stages_1_io_deq_bits_cmd),
    .io_deq_bits_data_0(stages_1_io_deq_bits_data_0),
    .io_deq_bits_data_1(stages_1_io_deq_bits_data_1),
    .io_deq_bits_data_2(stages_1_io_deq_bits_data_2),
    .io_deq_bits_data_3(stages_1_io_deq_bits_data_3),
    .io_deq_bits_data_4(stages_1_io_deq_bits_data_4),
    .io_deq_bits_data_5(stages_1_io_deq_bits_data_5),
    .io_deq_bits_data_6(stages_1_io_deq_bits_data_6),
    .io_deq_bits_data_7(stages_1_io_deq_bits_data_7)
  );
  assign io_in_ready = stages_0_io_enq_ready; // @[Pipeline.scala 14:14]
  assign io_out_valid = stages_1_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_cmd = stages_1_io_deq_bits_cmd; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_0 = stages_1_io_deq_bits_data_0; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_1 = stages_1_io_deq_bits_data_1; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_2 = stages_1_io_deq_bits_data_2; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_3 = stages_1_io_deq_bits_data_3; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_4 = stages_1_io_deq_bits_data_4; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_5 = stages_1_io_deq_bits_data_5; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_6 = stages_1_io_deq_bits_data_6; // @[Pipeline.scala 18:10]
  assign io_out_bits_data_7 = stages_1_io_deq_bits_data_7; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_cmd = io_in_bits_cmd; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_0 = io_in_bits_data_0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_1 = io_in_bits_data_1; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_2 = io_in_bits_data_2; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_3 = io_in_bits_data_3; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_4 = io_in_bits_data_4; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_5 = io_in_bits_data_5; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_6 = io_in_bits_data_6; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_data_7 = io_in_bits_data_7; // @[Pipeline.scala 14:14]
  assign stages_0_io_deq_ready = stages_1_io_enq_ready; // @[Pipeline.scala 14:14]
  assign stages_1_clock = clock;
  assign stages_1_reset = reset;
  assign stages_1_io_enq_valid = stages_0_io_deq_valid; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_cmd = stages_0_io_deq_bits_cmd; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_0 = stages_0_io_deq_bits_data_0; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_1 = stages_0_io_deq_bits_data_1; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_2 = stages_0_io_deq_bits_data_2; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_3 = stages_0_io_deq_bits_data_3; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_4 = stages_0_io_deq_bits_data_4; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_5 = stages_0_io_deq_bits_data_5; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_6 = stages_0_io_deq_bits_data_6; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_data_7 = stages_0_io_deq_bits_data_7; // @[Pipeline.scala 14:14]
  assign stages_1_io_deq_ready = io_out_ready; // @[Pipeline.scala 18:10]
endmodule
