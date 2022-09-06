module Pipeline_18(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [2:0]  io_in_bits_param,
  input  [11:0] io_in_bits_set,
  input  [15:0] io_in_bits_tag,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [5:0]  io_out_bits_source,
  output [11:0] io_out_bits_set,
  output [15:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_preferCache,
  output        io_out_bits_dirty,
  output        io_out_bits_fromProbeHelper,
  output        io_out_bits_fromCmoHelper,
  output        io_out_bits_needProbeAckData
);
  wire  stages_0_clock; // @[Pipeline.scala 11:47]
  wire  stages_0_reset; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_valid; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_channel; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_opcode; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_param; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_size; // @[Pipeline.scala 11:47]
  wire [5:0] stages_0_io_enq_bits_source; // @[Pipeline.scala 11:47]
  wire [11:0] stages_0_io_enq_bits_set; // @[Pipeline.scala 11:47]
  wire [15:0] stages_0_io_enq_bits_tag; // @[Pipeline.scala 11:47]
  wire [5:0] stages_0_io_enq_bits_off; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_enq_bits_bufIdx; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_preferCache; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_dirty; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_fromProbeHelper; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_fromCmoHelper; // @[Pipeline.scala 11:47]
  wire  stages_0_io_enq_bits_needProbeAckData; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_ready; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_valid; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_channel; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_opcode; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_param; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_size; // @[Pipeline.scala 11:47]
  wire [5:0] stages_0_io_deq_bits_source; // @[Pipeline.scala 11:47]
  wire [11:0] stages_0_io_deq_bits_set; // @[Pipeline.scala 11:47]
  wire [15:0] stages_0_io_deq_bits_tag; // @[Pipeline.scala 11:47]
  wire [5:0] stages_0_io_deq_bits_off; // @[Pipeline.scala 11:47]
  wire [2:0] stages_0_io_deq_bits_bufIdx; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_preferCache; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_dirty; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_fromProbeHelper; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_fromCmoHelper; // @[Pipeline.scala 11:47]
  wire  stages_0_io_deq_bits_needProbeAckData; // @[Pipeline.scala 11:47]
  Queue_275 stages_0 ( // @[Pipeline.scala 11:47]
    .clock(stages_0_clock),
    .reset(stages_0_reset),
    .io_enq_ready(stages_0_io_enq_ready),
    .io_enq_valid(stages_0_io_enq_valid),
    .io_enq_bits_channel(stages_0_io_enq_bits_channel),
    .io_enq_bits_opcode(stages_0_io_enq_bits_opcode),
    .io_enq_bits_param(stages_0_io_enq_bits_param),
    .io_enq_bits_size(stages_0_io_enq_bits_size),
    .io_enq_bits_source(stages_0_io_enq_bits_source),
    .io_enq_bits_set(stages_0_io_enq_bits_set),
    .io_enq_bits_tag(stages_0_io_enq_bits_tag),
    .io_enq_bits_off(stages_0_io_enq_bits_off),
    .io_enq_bits_bufIdx(stages_0_io_enq_bits_bufIdx),
    .io_enq_bits_preferCache(stages_0_io_enq_bits_preferCache),
    .io_enq_bits_dirty(stages_0_io_enq_bits_dirty),
    .io_enq_bits_fromProbeHelper(stages_0_io_enq_bits_fromProbeHelper),
    .io_enq_bits_fromCmoHelper(stages_0_io_enq_bits_fromCmoHelper),
    .io_enq_bits_needProbeAckData(stages_0_io_enq_bits_needProbeAckData),
    .io_deq_ready(stages_0_io_deq_ready),
    .io_deq_valid(stages_0_io_deq_valid),
    .io_deq_bits_channel(stages_0_io_deq_bits_channel),
    .io_deq_bits_opcode(stages_0_io_deq_bits_opcode),
    .io_deq_bits_param(stages_0_io_deq_bits_param),
    .io_deq_bits_size(stages_0_io_deq_bits_size),
    .io_deq_bits_source(stages_0_io_deq_bits_source),
    .io_deq_bits_set(stages_0_io_deq_bits_set),
    .io_deq_bits_tag(stages_0_io_deq_bits_tag),
    .io_deq_bits_off(stages_0_io_deq_bits_off),
    .io_deq_bits_bufIdx(stages_0_io_deq_bits_bufIdx),
    .io_deq_bits_preferCache(stages_0_io_deq_bits_preferCache),
    .io_deq_bits_dirty(stages_0_io_deq_bits_dirty),
    .io_deq_bits_fromProbeHelper(stages_0_io_deq_bits_fromProbeHelper),
    .io_deq_bits_fromCmoHelper(stages_0_io_deq_bits_fromCmoHelper),
    .io_deq_bits_needProbeAckData(stages_0_io_deq_bits_needProbeAckData)
  );
  assign io_in_ready = stages_0_io_enq_ready; // @[Pipeline.scala 14:14]
  assign io_out_valid = stages_0_io_deq_valid; // @[Pipeline.scala 18:10]
  assign io_out_bits_channel = stages_0_io_deq_bits_channel; // @[Pipeline.scala 18:10]
  assign io_out_bits_opcode = stages_0_io_deq_bits_opcode; // @[Pipeline.scala 18:10]
  assign io_out_bits_param = stages_0_io_deq_bits_param; // @[Pipeline.scala 18:10]
  assign io_out_bits_size = stages_0_io_deq_bits_size; // @[Pipeline.scala 18:10]
  assign io_out_bits_source = stages_0_io_deq_bits_source; // @[Pipeline.scala 18:10]
  assign io_out_bits_set = stages_0_io_deq_bits_set; // @[Pipeline.scala 18:10]
  assign io_out_bits_tag = stages_0_io_deq_bits_tag; // @[Pipeline.scala 18:10]
  assign io_out_bits_off = stages_0_io_deq_bits_off; // @[Pipeline.scala 18:10]
  assign io_out_bits_bufIdx = stages_0_io_deq_bits_bufIdx; // @[Pipeline.scala 18:10]
  assign io_out_bits_preferCache = stages_0_io_deq_bits_preferCache; // @[Pipeline.scala 18:10]
  assign io_out_bits_dirty = stages_0_io_deq_bits_dirty; // @[Pipeline.scala 18:10]
  assign io_out_bits_fromProbeHelper = stages_0_io_deq_bits_fromProbeHelper; // @[Pipeline.scala 18:10]
  assign io_out_bits_fromCmoHelper = stages_0_io_deq_bits_fromCmoHelper; // @[Pipeline.scala 18:10]
  assign io_out_bits_needProbeAckData = stages_0_io_deq_bits_needProbeAckData; // @[Pipeline.scala 18:10]
  assign stages_0_clock = clock;
  assign stages_0_reset = reset;
  assign stages_0_io_enq_valid = io_in_valid; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_channel = 3'h4; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_opcode = 3'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_param = io_in_bits_param; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_size = 3'h6; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_source = 6'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_set = io_in_bits_set; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_tag = io_in_bits_tag; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_off = 6'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_bufIdx = 3'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_preferCache = 1'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_dirty = 1'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_fromProbeHelper = 1'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_fromCmoHelper = 1'h1; // @[Pipeline.scala 14:14]
  assign stages_0_io_enq_bits_needProbeAckData = 1'h0; // @[Pipeline.scala 14:14]
  assign stages_0_io_deq_ready = io_out_ready; // @[Pipeline.scala 18:10]
endmodule
