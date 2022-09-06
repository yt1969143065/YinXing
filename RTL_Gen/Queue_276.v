module Queue_276(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [5:0]  io_enq_bits_source,
  input  [11:0] io_enq_bits_set,
  input  [15:0] io_enq_bits_tag,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_channel,
  output [2:0]  io_deq_bits_opcode,
  output [2:0]  io_deq_bits_param,
  output [2:0]  io_deq_bits_size,
  output [5:0]  io_deq_bits_source,
  output [11:0] io_deq_bits_set,
  output [15:0] io_deq_bits_tag,
  output [5:0]  io_deq_bits_off,
  output [2:0]  io_deq_bits_bufIdx,
  output        io_deq_bits_preferCache,
  output        io_deq_bits_dirty,
  output        io_deq_bits_fromProbeHelper,
  output        io_deq_bits_fromCmoHelper,
  output        io_deq_bits_needProbeAckData,
  output [2:0]  io_count
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_channel [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_channel_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_channel_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_channel_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_channel_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_channel_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_opcode [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_param [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_source [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [11:0] ram_set [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [11:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [11:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [15:0] ram_tag [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [15:0] ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [15:0] ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_off [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_bufIdx [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bufIdx_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_bufIdx_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_bufIdx_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_bufIdx_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_preferCache [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_preferCache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_preferCache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_preferCache_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_dirty [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromProbeHelper [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_fromProbeHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_fromProbeHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromProbeHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_fromCmoHelper [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_fromCmoHelper_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_fromCmoHelper_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_fromCmoHelper_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_needProbeAckData [0:3]; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [1:0] ram_needProbeAckData_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_needProbeAckData_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_needProbeAckData_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [1:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[Counter.scala 78:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[Counter.scala 78:24]
  wire [1:0] ptr_diff = enq_ptr_value - deq_ptr_value; // @[Decoupled.scala 312:32]
  wire [2:0] _io_count_T_1 = maybe_full & ptr_match ? 3'h4 : 3'h0; // @[Decoupled.scala 315:20]
  wire [2:0] _GEN_24 = {{1'd0}, ptr_diff}; // @[Decoupled.scala 315:62]
  assign ram_channel_io_deq_bits_MPORT_en = 1'h1;
  assign ram_channel_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_channel_io_deq_bits_MPORT_data = ram_channel[ram_channel_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_channel_MPORT_data = 3'h2;
  assign ram_channel_MPORT_addr = enq_ptr_value;
  assign ram_channel_MPORT_mask = 1'h1;
  assign ram_channel_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = 3'h6;
  assign ram_opcode_MPORT_addr = enq_ptr_value;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_param_MPORT_data = 3'h2;
  assign ram_param_MPORT_addr = enq_ptr_value;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = 3'h6;
  assign ram_size_MPORT_addr = enq_ptr_value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = enq_ptr_value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = enq_ptr_value;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tag_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tag_MPORT_data = io_enq_bits_tag;
  assign ram_tag_MPORT_addr = enq_ptr_value;
  assign ram_tag_MPORT_mask = 1'h1;
  assign ram_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_off_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_off_io_deq_bits_MPORT_data = ram_off[ram_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_off_MPORT_data = 6'h0;
  assign ram_off_MPORT_addr = enq_ptr_value;
  assign ram_off_MPORT_mask = 1'h1;
  assign ram_off_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_bufIdx_io_deq_bits_MPORT_en = 1'h1;
  assign ram_bufIdx_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_bufIdx_io_deq_bits_MPORT_data = ram_bufIdx[ram_bufIdx_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_bufIdx_MPORT_data = 3'h0;
  assign ram_bufIdx_MPORT_addr = enq_ptr_value;
  assign ram_bufIdx_MPORT_mask = 1'h1;
  assign ram_bufIdx_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_preferCache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_preferCache_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_preferCache_io_deq_bits_MPORT_data = ram_preferCache[ram_preferCache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_preferCache_MPORT_data = 1'h1;
  assign ram_preferCache_MPORT_addr = enq_ptr_value;
  assign ram_preferCache_MPORT_mask = 1'h1;
  assign ram_preferCache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dirty_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_dirty_io_deq_bits_MPORT_data = ram_dirty[ram_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_dirty_MPORT_data = 1'h0;
  assign ram_dirty_MPORT_addr = enq_ptr_value;
  assign ram_dirty_MPORT_mask = 1'h1;
  assign ram_dirty_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_fromProbeHelper_io_deq_bits_MPORT_data = ram_fromProbeHelper[ram_fromProbeHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromProbeHelper_MPORT_data = 1'h1;
  assign ram_fromProbeHelper_MPORT_addr = enq_ptr_value;
  assign ram_fromProbeHelper_MPORT_mask = 1'h1;
  assign ram_fromProbeHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_en = 1'h1;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_fromCmoHelper_io_deq_bits_MPORT_data = ram_fromCmoHelper[ram_fromCmoHelper_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_fromCmoHelper_MPORT_data = 1'h0;
  assign ram_fromCmoHelper_MPORT_addr = enq_ptr_value;
  assign ram_fromCmoHelper_MPORT_mask = 1'h1;
  assign ram_fromCmoHelper_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_needProbeAckData_io_deq_bits_MPORT_en = 1'h1;
  assign ram_needProbeAckData_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_needProbeAckData_io_deq_bits_MPORT_data = ram_needProbeAckData[ram_needProbeAckData_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_needProbeAckData_MPORT_data = 1'h0;
  assign ram_needProbeAckData_MPORT_addr = enq_ptr_value;
  assign ram_needProbeAckData_MPORT_mask = 1'h1;
  assign ram_needProbeAckData_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
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
  assign io_deq_bits_preferCache = ram_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_dirty = ram_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromProbeHelper = ram_fromProbeHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_fromCmoHelper = ram_fromCmoHelper_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_needProbeAckData = ram_needProbeAckData_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_count = _io_count_T_1 | _GEN_24; // @[Decoupled.scala 315:62]
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
    if (reset) begin // @[Counter.scala 62:40]
      enq_ptr_value <= 2'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= _value_T_1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      deq_ptr_value <= 2'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= _value_T_3; // @[Counter.scala 78:15]
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
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_param[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_source[initvar] = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_set[initvar] = _RAND_5[11:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_tag[initvar] = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_off[initvar] = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_bufIdx[initvar] = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_preferCache[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_dirty[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_fromProbeHelper[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_fromCmoHelper[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_needProbeAckData[initvar] = _RAND_13[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  enq_ptr_value = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  deq_ptr_value = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  maybe_full = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
