module FtqNRSRAM_1(
  input          clock,
  input          reset,
  input  [5:0]   io_raddr_0,
  input          io_ren_0,
  output [511:0] io_rdata_0_meta,
  input  [5:0]   io_waddr,
  input          io_wen,
  input  [511:0] io_wdata_meta
);
  wire  sram_clock; // @[NewFtq.scala 58:22]
  wire  sram_reset; // @[NewFtq.scala 58:22]
  wire  sram_io_rreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [511:0] sram_io_rresp_data_0_meta; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [511:0] sram_io_wreq_bits_data_0_meta; // @[NewFtq.scala 58:22]
  SRAMTemplate_117 sram ( // @[NewFtq.scala 58:22]
    .clock(sram_clock),
    .reset(sram_reset),
    .io_rreq_valid(sram_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_io_rreq_bits_setIdx),
    .io_rresp_data_0_meta(sram_io_rresp_data_0_meta),
    .io_wreq_valid(sram_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_meta(sram_io_wreq_bits_data_0_meta)
  );
  assign io_rdata_0_meta = sram_io_rresp_data_0_meta; // @[NewFtq.scala 61:17]
  assign sram_clock = clock;
  assign sram_reset = reset;
  assign sram_io_rreq_valid = io_ren_0; // @[NewFtq.scala 59:25]
  assign sram_io_rreq_bits_setIdx = io_raddr_0; // @[NewFtq.scala 60:31]
  assign sram_io_wreq_valid = io_wen; // @[NewFtq.scala 62:25]
  assign sram_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 63:31]
  assign sram_io_wreq_bits_data_0_meta = io_wdata_meta; // @[NewFtq.scala 64:{39,39}]
endmodule
