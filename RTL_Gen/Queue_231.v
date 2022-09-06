module Queue_231(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_channel,
  input  [2:0]  io_enq_bits_opcode,
  input  [2:0]  io_enq_bits_param,
  input  [2:0]  io_enq_bits_size,
  input  [5:0]  io_enq_bits_source,
  input  [7:0]  io_enq_bits_set,
  input  [20:0] io_enq_bits_tag,
  input  [5:0]  io_enq_bits_off,
  input  [2:0]  io_enq_bits_bufIdx,
  input         io_enq_bits_needHint,
  input         io_enq_bits_isPrefetch,
  input  [1:0]  io_enq_bits_alias,
  input         io_enq_bits_preferCache,
  input         io_enq_bits_dirty,
  input         io_enq_bits_fromProbeHelper,
  input         io_enq_bits_fromCmoHelper,
  input         io_enq_bits_needProbeAckData,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_channel,
  output [2:0]  io_deq_bits_opcode,
  output [2:0]  io_deq_bits_param,
  output [2:0]  io_deq_bits_size,
  output [5:0]  io_deq_bits_source,
  output [7:0]  io_deq_bits_set,
  output [20:0] io_deq_bits_tag,
  output [5:0]  io_deq_bits_off,
  output [2:0]  io_deq_bits_bufIdx,
  output        io_deq_bits_needHint,
  output        io_deq_bits_isPrefetch,
  output [1:0]  io_deq_bits_alias,
  output        io_deq_bits_preferCache,
  output        io_deq_bits_dirty,
  output        io_deq_bits_fromProbeHelper,
  output        io_deq_bits_fromCmoHelper,
  output        io_deq_bits_needProbeAckData
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_channel [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_opcode [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_param [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_source [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [20:0] ram_tag [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [20:0] ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [20:0] ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_off [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bufIdx [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needHint [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_needHint_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_needHint_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needHint_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needHint_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needHint_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needHint_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needHint_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_isPrefetch [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_isPrefetch_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_alias [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_alias_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_alias_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_alias_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_alias_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_alias_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_alias_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_preferCache [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_dirty [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromProbeHelper [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromCmoHelper [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needProbeAckData [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_channel_io_deq_bits_MPORT_en = 1'h1;
  assign ram_channel_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_channel_io_deq_bits_MPORT_data = ram_channel[ram_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_channel_MPORT_data = io_enq_bits_channel;
  assign ram_channel_MPORT_addr = 1'h0;
  assign ram_channel_MPORT_mask = 1'h1;
  assign ram_channel_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = io_enq_bits_opcode;
  assign ram_opcode_MPORT_addr = 1'h0;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_param_MPORT_data = io_enq_bits_param;
  assign ram_param_MPORT_addr = 1'h0;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = 1'h0;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = 1'h0;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = 1'h0;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tag_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tag_MPORT_data = io_enq_bits_tag;
  assign ram_tag_MPORT_addr = 1'h0;
  assign ram_tag_MPORT_mask = 1'h1;
  assign ram_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_off_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_off_io_deq_bits_MPORT_data = ram_off[ram_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_off_MPORT_data = io_enq_bits_off;
  assign ram_off_MPORT_addr = 1'h0;
  assign ram_off_MPORT_mask = 1'h1;
  assign ram_off_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bufIdx_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bufIdx_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_bufIdx_io_deq_bits_MPORT_data = ram_bufIdx[ram_bufIdx_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bufIdx_MPORT_data = io_enq_bits_bufIdx;
  assign ram_bufIdx_MPORT_addr = 1'h0;
  assign ram_bufIdx_MPORT_mask = 1'h1;
  assign ram_bufIdx_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needHint_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needHint_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_needHint_io_deq_bits_MPORT_data = ram_needHint[ram_needHint_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_needHint_MPORT_data = io_enq_bits_needHint;
  assign ram_needHint_MPORT_addr = 1'h0;
  assign ram_needHint_MPORT_mask = 1'h1;
  assign ram_needHint_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_isPrefetch_io_deq_bits_MPORT_en = 1'h1;
  assign ram_isPrefetch_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_isPrefetch_io_deq_bits_MPORT_data = ram_isPrefetch[ram_isPrefetch_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_isPrefetch_MPORT_data = io_enq_bits_isPrefetch;
  assign ram_isPrefetch_MPORT_addr = 1'h0;
  assign ram_isPrefetch_MPORT_mask = 1'h1;
  assign ram_isPrefetch_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_alias_io_deq_bits_MPORT_en = 1'h1;
  assign ram_alias_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_alias_io_deq_bits_MPORT_data = ram_alias[ram_alias_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_alias_MPORT_data = io_enq_bits_alias;
  assign ram_alias_MPORT_addr = 1'h0;
  assign ram_alias_MPORT_mask = 1'h1;
  assign ram_alias_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_preferCache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_preferCache_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_preferCache_io_deq_bits_MPORT_data = ram_preferCache[ram_preferCache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_preferCache_MPORT_data = io_enq_bits_preferCache;
  assign ram_preferCache_MPORT_addr = 1'h0;
  assign ram_preferCache_MPORT_mask = 1'h1;
  assign ram_preferCache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dirty_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_dirty_io_deq_bits_MPORT_data = ram_dirty[ram_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_dirty_MPORT_data = io_enq_bits_dirty;
  assign ram_dirty_MPORT_addr = 1'h0;
  assign ram_dirty_MPORT_mask = 1'h1;
  assign ram_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_data = ram_fromProbeHelper[ram_fromProbeHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromProbeHelper_MPORT_data = io_enq_bits_fromProbeHelper;
  assign ram_fromProbeHelper_MPORT_addr = 1'h0;
  assign ram_fromProbeHelper_MPORT_mask = 1'h1;
  assign ram_fromProbeHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_data = ram_fromCmoHelper[ram_fromCmoHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromCmoHelper_MPORT_data = io_enq_bits_fromCmoHelper;
  assign ram_fromCmoHelper_MPORT_addr = 1'h0;
  assign ram_fromCmoHelper_MPORT_mask = 1'h1;
  assign ram_fromCmoHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needProbeAckData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needProbeAckData_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_needProbeAckData_io_deq_bits_MPORT_data = ram_needProbeAckData[ram_needProbeAckData_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_needProbeAckData_MPORT_data = io_enq_bits_needProbeAckData;
  assign ram_needProbeAckData_MPORT_addr = 1'h0;
  assign ram_needProbeAckData_MPORT_mask = 1'h1;
  assign ram_needProbeAckData_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = io_deq_ready | empty; // @[Decoupled.scala 289:16 309:{24,39}]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_channel = ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_opcode = ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_param = ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_set = ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_tag = ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_off = ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_bufIdx = ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_needHint = ram_needHint_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_isPrefetch = ram_isPrefetch_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_alias = ram_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_preferCache = ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_dirty = ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromProbeHelper = ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromCmoHelper = ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_needProbeAckData = ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_channel_MPORT_en & ram_channel_MPORT_mask) begin
      ram_channel[ram_channel_MPORT_addr] <= ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_opcode_MPORT_en & ram_opcode_MPORT_mask) begin
      ram_opcode[ram_opcode_MPORT_addr] <= ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_param_MPORT_en & ram_param_MPORT_mask) begin
      ram_param[ram_param_MPORT_addr] <= ram_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_set_MPORT_en & ram_set_MPORT_mask) begin
      ram_set[ram_set_MPORT_addr] <= ram_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_tag_MPORT_en & ram_tag_MPORT_mask) begin
      ram_tag[ram_tag_MPORT_addr] <= ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_off_MPORT_en & ram_off_MPORT_mask) begin
      ram_off[ram_off_MPORT_addr] <= ram_off_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_bufIdx_MPORT_en & ram_bufIdx_MPORT_mask) begin
      ram_bufIdx[ram_bufIdx_MPORT_addr] <= ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_needHint_MPORT_en & ram_needHint_MPORT_mask) begin
      ram_needHint[ram_needHint_MPORT_addr] <= ram_needHint_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_isPrefetch_MPORT_en & ram_isPrefetch_MPORT_mask) begin
      ram_isPrefetch[ram_isPrefetch_MPORT_addr] <= ram_isPrefetch_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_alias_MPORT_en & ram_alias_MPORT_mask) begin
      ram_alias[ram_alias_MPORT_addr] <= ram_alias_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_preferCache_MPORT_en & ram_preferCache_MPORT_mask) begin
      ram_preferCache[ram_preferCache_MPORT_addr] <= ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_dirty_MPORT_en & ram_dirty_MPORT_mask) begin
      ram_dirty[ram_dirty_MPORT_addr] <= ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_fromProbeHelper_MPORT_en & ram_fromProbeHelper_MPORT_mask) begin
      ram_fromProbeHelper[ram_fromProbeHelper_MPORT_addr] <= ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_fromCmoHelper_MPORT_en & ram_fromCmoHelper_MPORT_mask) begin
      ram_fromCmoHelper[ram_fromCmoHelper_MPORT_addr] <= ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_needProbeAckData_MPORT_en & ram_needProbeAckData_MPORT_mask) begin
      ram_needProbeAckData[ram_needProbeAckData_MPORT_addr] <= ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_param[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_set[initvar] = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tag[initvar] = _RAND_6[20:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_off[initvar] = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_bufIdx[initvar] = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_needHint[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_isPrefetch[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_alias[initvar] = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_preferCache[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_dirty[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_fromProbeHelper[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_fromCmoHelper[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_needProbeAckData[initvar] = _RAND_16[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  maybe_full = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
