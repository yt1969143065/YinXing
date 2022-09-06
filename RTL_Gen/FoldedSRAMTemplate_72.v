module FoldedSRAMTemplate_72(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [4:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0,
  output       io_rresp_data_1,
  input        io_wreq_valid,
  input  [4:0] io_wreq_bits_setIdx,
  input        io_wreq_bits_data_0,
  input        io_wreq_bits_data_1,
  input  [1:0] io_wreq_bits_waymask
);
  wire  array_clock; // @[SRAMTemplate.scala 169:21]
  wire  array_reset; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [4:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_0; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_1; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [4:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_0; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_1; // @[SRAMTemplate.scala 169:21]
  wire [1:0] array_io_wreq_bits_waymask; // @[SRAMTemplate.scala 169:21]
  SRAMTemplate_81 array ( // @[SRAMTemplate.scala 169:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0(array_io_rresp_data_0),
    .io_rresp_data_1(array_io_rresp_data_1),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(array_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(array_io_wreq_bits_waymask)
  );
  assign io_rresp_data_0 = array_io_rresp_data_0; // @[SRAMTemplate.scala 183:{26,26}]
  assign io_rresp_data_1 = array_io_rresp_data_1; // @[SRAMTemplate.scala 183:{26,26}]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 178:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 174:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 85:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 191:36]
  assign array_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_waymask = {io_wreq_bits_waymask[1],io_wreq_bits_waymask[0]}; // @[SRAMTemplate.scala 196:122]
endmodule
