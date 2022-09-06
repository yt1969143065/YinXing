module ProbeHelper_2(
  input         clock,
  input         reset,
  input         io_dirResult_valid,
  input  [1:0]  io_dirResult_bits_clients_states_0_state,
  input         io_dirResult_bits_clients_states_0_hit,
  input         io_dirResult_bits_clients_tag_match,
  input  [18:0] io_dirResult_bits_clients_tag,
  input  [5:0]  io_dirResult_bits_sourceId,
  input  [11:0] io_dirResult_bits_set,
  input  [2:0]  io_dirResult_bits_replacerInfo_channel,
  input  [2:0]  io_dirResult_bits_replacerInfo_opcode,
  input         io_probe_ready,
  output        io_probe_valid,
  output [2:0]  io_probe_bits_channel,
  output [2:0]  io_probe_bits_opcode,
  output [2:0]  io_probe_bits_param,
  output [2:0]  io_probe_bits_size,
  output [5:0]  io_probe_bits_source,
  output [11:0] io_probe_bits_set,
  output [15:0] io_probe_bits_tag,
  output [5:0]  io_probe_bits_off,
  output [2:0]  io_probe_bits_bufIdx,
  output        io_probe_bits_preferCache,
  output        io_probe_bits_dirty,
  output        io_probe_bits_fromProbeHelper,
  output        io_probe_bits_fromCmoHelper,
  output        io_probe_bits_needProbeAckData,
  output        io_full
);
  wire  queue_clock; // @[ProbeHelper.scala 19:21]
  wire  queue_reset; // @[ProbeHelper.scala 19:21]
  wire  queue_io_enq_ready; // @[ProbeHelper.scala 19:21]
  wire  queue_io_enq_valid; // @[ProbeHelper.scala 19:21]
  wire [5:0] queue_io_enq_bits_source; // @[ProbeHelper.scala 19:21]
  wire [11:0] queue_io_enq_bits_set; // @[ProbeHelper.scala 19:21]
  wire [15:0] queue_io_enq_bits_tag; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_ready; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_valid; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_deq_bits_channel; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_deq_bits_opcode; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_deq_bits_param; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_deq_bits_size; // @[ProbeHelper.scala 19:21]
  wire [5:0] queue_io_deq_bits_source; // @[ProbeHelper.scala 19:21]
  wire [11:0] queue_io_deq_bits_set; // @[ProbeHelper.scala 19:21]
  wire [15:0] queue_io_deq_bits_tag; // @[ProbeHelper.scala 19:21]
  wire [5:0] queue_io_deq_bits_off; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_deq_bits_bufIdx; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_bits_preferCache; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_bits_dirty; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_bits_fromProbeHelper; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_bits_fromCmoHelper; // @[ProbeHelper.scala 19:21]
  wire  queue_io_deq_bits_needProbeAckData; // @[ProbeHelper.scala 19:21]
  wire [2:0] queue_io_count; // @[ProbeHelper.scala 19:21]
  wire [27:0] addr = {io_dirResult_bits_clients_tag,io_dirResult_bits_set[8:0]}; // @[Cat.scala 31:58]
  wire  _dir_conflict_T_3 = ~io_dirResult_bits_clients_states_0_hit & io_dirResult_bits_clients_states_0_state != 2'h0; // @[ProbeHelper.scala 52:40]
  wire  _dir_conflict_T_4 = |_dir_conflict_T_3; // @[ProbeHelper.scala 53:8]
  wire  dir_conflict = ~io_dirResult_bits_clients_tag_match & _dir_conflict_T_4; // @[ProbeHelper.scala 51:45]
  wire  formA = io_dirResult_bits_replacerInfo_channel == 3'h1; // @[ProbeHelper.scala 54:40]
  wire  _req_acquire_T_1 = io_dirResult_bits_replacerInfo_opcode == 3'h6; // @[ProbeHelper.scala 56:29]
  wire  req_acquire = formA & (io_dirResult_bits_replacerInfo_opcode == 3'h7 | _req_acquire_T_1); // @[ProbeHelper.scala 55:27]
  Queue_276 queue ( // @[ProbeHelper.scala 19:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_source(queue_io_enq_bits_source),
    .io_enq_bits_set(queue_io_enq_bits_set),
    .io_enq_bits_tag(queue_io_enq_bits_tag),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_channel(queue_io_deq_bits_channel),
    .io_deq_bits_opcode(queue_io_deq_bits_opcode),
    .io_deq_bits_param(queue_io_deq_bits_param),
    .io_deq_bits_size(queue_io_deq_bits_size),
    .io_deq_bits_source(queue_io_deq_bits_source),
    .io_deq_bits_set(queue_io_deq_bits_set),
    .io_deq_bits_tag(queue_io_deq_bits_tag),
    .io_deq_bits_off(queue_io_deq_bits_off),
    .io_deq_bits_bufIdx(queue_io_deq_bits_bufIdx),
    .io_deq_bits_preferCache(queue_io_deq_bits_preferCache),
    .io_deq_bits_dirty(queue_io_deq_bits_dirty),
    .io_deq_bits_fromProbeHelper(queue_io_deq_bits_fromProbeHelper),
    .io_deq_bits_fromCmoHelper(queue_io_deq_bits_fromCmoHelper),
    .io_deq_bits_needProbeAckData(queue_io_deq_bits_needProbeAckData),
    .io_count(queue_io_count)
  );
  assign io_probe_valid = queue_io_deq_valid; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_channel = queue_io_deq_bits_channel; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_opcode = queue_io_deq_bits_opcode; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_param = queue_io_deq_bits_param; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_size = queue_io_deq_bits_size; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_source = queue_io_deq_bits_source; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_set = queue_io_deq_bits_set; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_tag = queue_io_deq_bits_tag; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_off = queue_io_deq_bits_off; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_bufIdx = queue_io_deq_bits_bufIdx; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_preferCache = queue_io_deq_bits_preferCache; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_dirty = queue_io_deq_bits_dirty; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_fromProbeHelper = queue_io_deq_bits_fromProbeHelper; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_fromCmoHelper = queue_io_deq_bits_fromCmoHelper; // @[ProbeHelper.scala 61:12]
  assign io_probe_bits_needProbeAckData = queue_io_deq_bits_needProbeAckData; // @[ProbeHelper.scala 61:12]
  assign io_full = queue_io_count >= 3'h3; // @[ProbeHelper.scala 21:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = req_acquire & io_dirResult_valid & dir_conflict; // @[ProbeHelper.scala 57:59]
  assign queue_io_enq_bits_source = io_dirResult_bits_sourceId; // @[ProbeHelper.scala 25:17 37:14]
  assign queue_io_enq_bits_set = addr[11:0]; // @[ProbeHelper.scala 30:26]
  assign queue_io_enq_bits_tag = addr[27:12]; // @[ProbeHelper.scala 29:26]
  assign queue_io_deq_ready = io_probe_ready; // @[ProbeHelper.scala 61:12]
endmodule
