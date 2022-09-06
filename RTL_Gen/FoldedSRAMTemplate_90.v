module FoldedSRAMTemplate_90(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [5:0]  io_rreq_bits_setIdx,
  output [8:0]  io_rresp_data_0_tag,
  output [1:0]  io_rresp_data_0_ctr,
  output [38:0] io_rresp_data_0_target,
  input         io_wreq_valid,
  input  [5:0]  io_wreq_bits_setIdx,
  input  [8:0]  io_wreq_bits_data_0_tag,
  input  [1:0]  io_wreq_bits_data_0_ctr,
  input  [38:0] io_wreq_bits_data_0_target
);
  wire  array_clock; // @[SRAMTemplate.scala 169:21]
  wire  array_reset; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [5:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire [8:0] array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 169:21]
  wire [1:0] array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 169:21]
  wire [38:0] array_io_rresp_data_0_target; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [5:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire [8:0] array_io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 169:21]
  wire [1:0] array_io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 169:21]
  wire [38:0] array_io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 169:21]
  SRAMTemplate_104 array ( // @[SRAMTemplate.scala 169:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(array_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(array_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(array_io_rresp_data_0_target),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(array_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(array_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(array_io_wreq_bits_data_0_target)
  );
  assign io_rresp_data_0_tag = array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 183:{26,26}]
  assign io_rresp_data_0_ctr = array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 183:{26,26}]
  assign io_rresp_data_0_target = array_io_rresp_data_0_target; // @[SRAMTemplate.scala 183:{26,26}]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 178:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 174:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 85:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 191:36]
  assign array_io_wreq_bits_data_0_tag = io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_0_ctr = io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_0_target = io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 190:{22,22}]
endmodule
