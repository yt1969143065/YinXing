module Pipeline_15(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [7:0]  io_in_bits_errCode,
  input  [63:0] io_in_bits_addr,
  input         io_out_ready,
  output        io_out_valid,
  output [7:0]  io_out_bits_errCode,
  output [63:0] io_out_bits_addr
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_enq_bits_errCode; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_enq_bits_addr; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_0_io_deq_bits_errCode; // @[Pipeline.scala 11:47]
  wire [63:0] stages_0_io_deq_bits_addr; // @[Pipeline.scala 11:47]
  wire  stages_1_clock; // @[Pipeline.scala 11:47]
  wire  stages_1_reset; // @[Pipeline.scala 11:47]
  wire  stages_1_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_1_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_1_io_enq_bits_errCode; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_enq_bits_addr; // @[Pipeline.scala 11:47]
  wire  stages_1_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_1_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [7:0] stages_1_io_deq_bits_errCode; // @[Pipeline.scala 11:47]
  wire [63:0] stages_1_io_deq_bits_addr; // @[Pipeline.scala 11:47]
  Queue_258 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_errCode(stages_0_io_enq_bits_errCode),
    .io_enq_bits_addr(stages_0_io_enq_bits_addr),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_errCode(stages_0_io_deq_bits_errCode),
    .io_deq_bits_addr(stages_0_io_deq_bits_addr)
  );
  Queue_258 stages_1 ( // @[Pipeline.scala 11:47]
    .clock(stages_1_clock),
    .reset(stages_1_reset),
    .io_enq_ready(stages_1_io_enq_ready),
    .io_enq_valid(stages_1_io_enq_valid),
    .io_enq_bits_errCode(stages_1_io_enq_bits_errCode),
    .io_enq_bits_addr(stages_1_io_enq_bits_addr),
    .io_deq_ready(stages_1_io_deq_ready),
    .io_deq_valid(stages_1_io_deq_valid),
    .io_deq_bits_errCode(stages_1_io_deq_bits_errCode),
    .io_deq_bits_addr(stages_1_io_deq_bits_addr)
  );
  assign io_out_valid = stages_1_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_errCode = stages_1_io_deq_bits_errCode; // @[Pipeline.scala 18:10]
  assign io_out_bits_addr = stages_1_io_deq_bits_addr; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_errCode = io_in_bits_errCode; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_addr = io_in_bits_addr; // @[Pipeline.scala 14:14]
  assign stages_0_io_deq_ready = stages_1_io_enq_ready; // @[Pipeline.scala 14:14]
  assign stages_1_clock = clock;
  assign stages_1_reset = reset;
  assign stages_1_io_enq_valid = stages_0_io_deq_valid; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_errCode = stages_0_io_deq_bits_errCode; // @[Pipeline.scala 14:14]
  assign stages_1_io_enq_bits_addr = stages_0_io_deq_bits_addr; // @[Pipeline.scala 14:14]
  assign stages_1_io_deq_ready = io_out_ready; // @[Pipeline.scala 18:10]
endmodule
