module SinkB(
  output         io_bready,
  input          io_bvalid,
  input  [2:0]   io_bopcode,
  input  [1:0]   io_bparam,
  input  [2:0]   io_bsize,
  input  [3:0]   io_bsource,
  input  [35:0]  io_baddress,
  input  [255:0] io_bdata,
  input          io_alloc_ready,
  output         io_alloc_valid,
  output [2:0]   io_alloc_bits_opcode,
  output [2:0]   io_alloc_bits_param,
  output [2:0]   io_alloc_bits_size,
  output [5:0]   io_alloc_bits_source,
  output [7:0]   io_alloc_bits_set,
  output [20:0]  io_alloc_bits_tag,
  output [5:0]   io_alloc_bits_off,
  output         io_alloc_bits_needProbeAckData
);
  wire [28:0] set = io_baddress[35:7]; // @[HuanCun.scala 139:22]
  assign io_bready = io_alloc_ready; // @[SinkB.scala 33:14]
  assign io_alloc_valid = io_bvalid; // @[SinkB.scala 34:18]
  assign io_alloc_bits_opcode = io_bopcode; // @[SinkB.scala 38:24]
  assign io_alloc_bits_param = {{1'd0}, io_bparam}; // @[SinkB.scala 39:23]
  assign io_alloc_bits_size = io_bsize; // @[SinkB.scala 41:22]
  assign io_alloc_bits_source = {{2'd0}, io_bsource}; // @[SinkB.scala 42:24]
  assign io_alloc_bits_set = set[7:0]; // @[HuanCun.scala 141:30]
  assign io_alloc_bits_tag = set[28:8]; // @[HuanCun.scala 140:19]
  assign io_alloc_bits_off = io_baddress[5:0]; // @[HuanCun.scala 141:54]
  assign io_alloc_bits_needProbeAckData = io_bdata[0]; // @[SinkB.scala 54:61]
endmodule
