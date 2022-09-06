module WritebackQueue(
  input          clock,
  input          reset,
  output         io_req_ready,
  input          io_req_valid,
  input  [35:0]  io_req_bits_addr,
  input  [2:0]   io_req_bits_param,
  input          io_req_bits_voluntary,
  input          io_req_bits_hasData,
  input          io_req_bits_dirty,
  input  [511:0] io_req_bits_data,
  input          io_req_bits_delay_release,
  input  [2:0]   io_req_bits_miss_id,
  input          io_mem_release_ready,
  output         io_mem_release_valid,
  output [2:0]   io_mem_release_bits_opcode,
  output [2:0]   io_mem_release_bits_param,
  output [2:0]   io_mem_release_bits_size,
  output [4:0]   io_mem_release_bits_source,
  output [35:0]  io_mem_release_bits_address,
  output         io_mem_release_bits_echo_blockisdirty,
  output [255:0] io_mem_release_bits_data,
  input          io_mem_grant_valid,
  input  [4:0]   io_mem_grant_bits_source,
  input          io_release_wakeup_valid,
  input  [2:0]   io_release_wakeup_bits,
  input          io_release_update_valid,
  input  [35:0]  io_release_update_bits_addr,
  input  [7:0]   io_release_update_bits_mask,
  input  [511:0] io_release_update_bits_data,
  input          io_miss_req_valid,
  input  [35:0]  io_miss_req_bits,
  output         io_block_miss_req,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value
);
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_0_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_0_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_0_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_0_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_0_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_0_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_0_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_0_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_0_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_0_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_0_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_0_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_0_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_1_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_1_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_1_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_1_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_1_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_1_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_1_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_1_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_1_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_1_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_1_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_1_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_1_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_1_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_2_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_2_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_2_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_2_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_2_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_2_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_2_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_2_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_2_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_2_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_2_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_2_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_2_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_2_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_3_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_3_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_3_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_3_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_3_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_3_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_3_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_3_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_3_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_3_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_3_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_3_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_3_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_3_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_4_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_4_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_4_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_4_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_4_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_4_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_4_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_4_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_4_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_4_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_4_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_4_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_4_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_4_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_5_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_5_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_5_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_5_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_5_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_5_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_5_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_5_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_5_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_5_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_5_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_5_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_5_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_5_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_6_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_6_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_6_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_6_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_6_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_6_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_6_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_6_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_6_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_6_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_6_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_6_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_6_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_6_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_7_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_7_reset; // @[WritebackQueue.scala 414:53]
  wire [3:0] entries_7_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_7_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_7_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_7_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_7_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_7_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_7_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_7_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_7_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_7_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_7_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_7_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_8_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_8_reset; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_8_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_8_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_8_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_8_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_8_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_8_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_8_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_8_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_8_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_8_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_8_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_8_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_9_clock; // @[WritebackQueue.scala 414:53]
  wire  entries_9_reset; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_9_io_id; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_primary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_primary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_secondary_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_secondary_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_req_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_9_io_req_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_req_bits_param; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_req_bits_voluntary; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_req_bits_hasData; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_req_bits_dirty; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_9_io_req_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_req_bits_delay_release; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_req_bits_miss_id; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_mem_release_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_mem_release_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_mem_release_bits_opcode; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_mem_release_bits_param; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_mem_release_bits_size; // @[WritebackQueue.scala 414:53]
  wire [4:0] entries_9_io_mem_release_bits_source; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_9_io_mem_release_bits_address; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_mem_release_bits_echo_blockisdirty; // @[WritebackQueue.scala 414:53]
  wire [255:0] entries_9_io_mem_release_bits_data; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_mem_grant_ready; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_mem_grant_valid; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_block_addr_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_9_io_block_addr_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_release_wakeup_valid; // @[WritebackQueue.scala 414:53]
  wire [2:0] entries_9_io_release_wakeup_bits; // @[WritebackQueue.scala 414:53]
  wire  entries_9_io_release_update_valid; // @[WritebackQueue.scala 414:53]
  wire [35:0] entries_9_io_release_update_bits_addr; // @[WritebackQueue.scala 414:53]
  wire [7:0] entries_9_io_release_update_bits_mask; // @[WritebackQueue.scala 414:53]
  wire [511:0] entries_9_io_release_update_bits_data; // @[WritebackQueue.scala 414:53]
  wire  primary_ready_vec_8 = entries_8_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_9 = entries_9_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_5 = entries_5_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_6 = entries_6_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_7 = entries_7_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_3 = entries_3_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_4 = entries_4_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_0 = entries_0_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_1 = entries_1_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire  primary_ready_vec_2 = entries_2_io_primary_ready; // @[WritebackQueue.scala 398:31 427:30]
  wire [9:0] _accept_T = {primary_ready_vec_0,primary_ready_vec_1,primary_ready_vec_2,primary_ready_vec_3,
    primary_ready_vec_4,primary_ready_vec_5,primary_ready_vec_6,primary_ready_vec_7,primary_ready_vec_8,
    primary_ready_vec_9}; // @[Cat.scala 31:58]
  wire  accept = |_accept_T; // @[WritebackQueue.scala 400:39]
  wire  secondary_ready_vec_8 = entries_8_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_9 = entries_9_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_5 = entries_5_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_6 = entries_6_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_7 = entries_7_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_3 = entries_3_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_4 = entries_4_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_0 = entries_0_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_1 = entries_1_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire  secondary_ready_vec_2 = entries_2_io_secondary_ready; // @[WritebackQueue.scala 399:33 428:30]
  wire [9:0] _merge_T = {secondary_ready_vec_0,secondary_ready_vec_1,secondary_ready_vec_2,secondary_ready_vec_3,
    secondary_ready_vec_4,secondary_ready_vec_5,secondary_ready_vec_6,secondary_ready_vec_7,secondary_ready_vec_8,
    secondary_ready_vec_9}; // @[Cat.scala 31:58]
  wire  merge = |_merge_T; // @[WritebackQueue.scala 401:40]
  wire  alloc = accept & ~merge; // @[WritebackQueue.scala 402:22]
  wire  former_primary_ready = |entries_0_io_primary_ready; // @[WritebackQueue.scala 420:64]
  wire  _entries_1_io_primary_valid_T = ~former_primary_ready; // @[WritebackQueue.scala 432:9]
  wire  _entries_1_io_primary_valid_T_1 = alloc & _entries_1_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [1:0] _former_primary_ready_T = {entries_0_io_primary_ready,entries_1_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_1 = |_former_primary_ready_T; // @[WritebackQueue.scala 420:64]
  wire  _entries_2_io_primary_valid_T = ~former_primary_ready_1; // @[WritebackQueue.scala 432:9]
  wire  _entries_2_io_primary_valid_T_1 = alloc & _entries_2_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [2:0] _former_primary_ready_T_1 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_2 = |_former_primary_ready_T_1; // @[WritebackQueue.scala 420:64]
  wire  _entries_3_io_primary_valid_T = ~former_primary_ready_2; // @[WritebackQueue.scala 432:9]
  wire  _entries_3_io_primary_valid_T_1 = alloc & _entries_3_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [3:0] _former_primary_ready_T_2 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_3 = |_former_primary_ready_T_2; // @[WritebackQueue.scala 420:64]
  wire  _entries_4_io_primary_valid_T = ~former_primary_ready_3; // @[WritebackQueue.scala 432:9]
  wire  _entries_4_io_primary_valid_T_1 = alloc & _entries_4_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [4:0] _former_primary_ready_T_3 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_4 = |_former_primary_ready_T_3; // @[WritebackQueue.scala 420:64]
  wire  _entries_5_io_primary_valid_T = ~former_primary_ready_4; // @[WritebackQueue.scala 432:9]
  wire  _entries_5_io_primary_valid_T_1 = alloc & _entries_5_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [5:0] _former_primary_ready_T_4 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_5 = |_former_primary_ready_T_4; // @[WritebackQueue.scala 420:64]
  wire  _entries_6_io_primary_valid_T = ~former_primary_ready_5; // @[WritebackQueue.scala 432:9]
  wire  _entries_6_io_primary_valid_T_1 = alloc & _entries_6_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [6:0] _former_primary_ready_T_5 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,
    entries_6_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_6 = |_former_primary_ready_T_5; // @[WritebackQueue.scala 420:64]
  wire  _entries_7_io_primary_valid_T = ~former_primary_ready_6; // @[WritebackQueue.scala 432:9]
  wire  _entries_7_io_primary_valid_T_1 = alloc & _entries_7_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [7:0] _former_primary_ready_T_6 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,
    entries_6_io_primary_ready,entries_7_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_7 = |_former_primary_ready_T_6; // @[WritebackQueue.scala 420:64]
  wire  _entries_8_io_primary_valid_T = ~former_primary_ready_7; // @[WritebackQueue.scala 432:9]
  wire  _entries_8_io_primary_valid_T_1 = alloc & _entries_8_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire [8:0] _former_primary_ready_T_7 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,
    entries_6_io_primary_ready,entries_7_io_primary_ready,entries_8_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_8 = |_former_primary_ready_T_7; // @[WritebackQueue.scala 420:64]
  wire  _entries_9_io_primary_valid_T = ~former_primary_ready_8; // @[WritebackQueue.scala 432:9]
  wire  _entries_9_io_primary_valid_T_1 = alloc & _entries_9_io_primary_valid_T; // @[WritebackQueue.scala 431:39]
  wire  _miss_req_conflict_T_1 = entries_0_io_block_addr_valid & entries_0_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_3 = entries_1_io_block_addr_valid & entries_1_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_5 = entries_2_io_block_addr_valid & entries_2_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_7 = entries_3_io_block_addr_valid & entries_3_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_9 = entries_4_io_block_addr_valid & entries_4_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_11 = entries_5_io_block_addr_valid & entries_5_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_13 = entries_6_io_block_addr_valid & entries_6_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_15 = entries_7_io_block_addr_valid & entries_7_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_17 = entries_8_io_block_addr_valid & entries_8_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire  _miss_req_conflict_T_19 = entries_9_io_block_addr_valid & entries_9_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 448:74]
  wire [9:0] _miss_req_conflict_T_20 = {_miss_req_conflict_T_19,_miss_req_conflict_T_17,_miss_req_conflict_T_15,
    _miss_req_conflict_T_13,_miss_req_conflict_T_11,_miss_req_conflict_T_9,_miss_req_conflict_T_7,_miss_req_conflict_T_5
    ,_miss_req_conflict_T_3,_miss_req_conflict_T_1}; // @[WritebackQueue.scala 448:121]
  wire  miss_req_conflict = |_miss_req_conflict_T_20; // @[WritebackQueue.scala 448:128]
  wire  opdata = entries_0_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_1 = entries_1_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_2 = entries_2_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_3 = entries_3_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_4 = entries_4_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_5 = entries_5_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_6 = entries_6_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_7 = entries_7_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_8 = entries_8_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_9 = entries_9_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & io_mem_release_ready; // @[Arbiter.scala 89:24]
  wire  out_earlyValid = entries_0_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_1_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_2_earlyValid = entries_2_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_3_earlyValid = entries_3_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_4_earlyValid = entries_4_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_5_earlyValid = entries_5_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_6_earlyValid = entries_6_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_7_earlyValid = entries_7_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_8_earlyValid = entries_8_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_9_earlyValid = entries_9_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [9:0] readys_valid = {out_9_earlyValid,out_8_earlyValid,out_7_earlyValid,out_6_earlyValid,out_5_earlyValid,
    out_4_earlyValid,out_3_earlyValid,out_2_earlyValid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  reg [9:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [9:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [9:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [19:0] readys_filter = {_readys_filter_T_1,readys_valid}; // @[Cat.scala 31:58]
  wire [19:0] _GEN_1 = {{1'd0}, readys_filter[19:1]}; // @[package.scala 253:43]
  wire [19:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 253:43]
  wire [19:0] _GEN_2 = {{2'd0}, _readys_unready_T_1[19:2]}; // @[package.scala 253:43]
  wire [19:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_2; // @[package.scala 253:43]
  wire [19:0] _GEN_3 = {{4'd0}, _readys_unready_T_3[19:4]}; // @[package.scala 253:43]
  wire [19:0] _readys_unready_T_5 = _readys_unready_T_3 | _GEN_3; // @[package.scala 253:43]
  wire [19:0] _GEN_4 = {{8'd0}, _readys_unready_T_5[19:8]}; // @[package.scala 253:43]
  wire [19:0] _readys_unready_T_7 = _readys_unready_T_5 | _GEN_4; // @[package.scala 253:43]
  wire [19:0] _readys_unready_T_10 = {readys_mask, 10'h0}; // @[Arbiter.scala 25:66]
  wire [19:0] _GEN_5 = {{1'd0}, _readys_unready_T_7[19:1]}; // @[Arbiter.scala 25:58]
  wire [19:0] readys_unready = _GEN_5 | _readys_unready_T_10; // @[Arbiter.scala 25:58]
  wire [9:0] _readys_readys_T_2 = readys_unready[19:10] & readys_unready[9:0]; // @[Arbiter.scala 26:39]
  wire [9:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire [9:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [10:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [9:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[9:0]; // @[package.scala 244:43]
  wire [11:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [9:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[9:0]; // @[package.scala 244:43]
  wire [13:0] _readys_mask_T_7 = {_readys_mask_T_6, 4'h0}; // @[package.scala 244:48]
  wire [9:0] _readys_mask_T_9 = _readys_mask_T_6 | _readys_mask_T_7[9:0]; // @[package.scala 244:43]
  wire [17:0] _readys_mask_T_10 = {_readys_mask_T_9, 8'h0}; // @[package.scala 244:48]
  wire [9:0] _readys_mask_T_12 = _readys_mask_T_9 | _readys_mask_T_10[9:0]; // @[package.scala 244:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 95:86]
  wire  readys_4 = readys_readys[4]; // @[Arbiter.scala 95:86]
  wire  readys_5 = readys_readys[5]; // @[Arbiter.scala 95:86]
  wire  readys_6 = readys_readys[6]; // @[Arbiter.scala 95:86]
  wire  readys_7 = readys_readys[7]; // @[Arbiter.scala 95:86]
  wire  readys_8 = readys_readys[8]; // @[Arbiter.scala 95:86]
  wire  readys_9 = readys_readys[9]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & out_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2 = readys_2 & out_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3 = readys_3 & out_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_4 = readys_4 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_5 = readys_5 & out_5_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_6 = readys_6 & out_6_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_7 = readys_7 & out_7_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_8 = readys_8 & out_8_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_9 = readys_9 & out_9_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_66 = out_earlyValid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid | out_4_earlyValid |
    out_5_earlyValid | out_6_earlyValid | out_7_earlyValid | out_8_earlyValid | out_9_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & opdata; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & opdata_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner_2 & opdata_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3 = earlyWinner_3 & opdata_3; // @[Arbiter.scala 111:73]
  wire  maskedBeats_4 = earlyWinner_4 & opdata_4; // @[Arbiter.scala 111:73]
  wire  maskedBeats_5 = earlyWinner_5 & opdata_5; // @[Arbiter.scala 111:73]
  wire  maskedBeats_6 = earlyWinner_6 & opdata_6; // @[Arbiter.scala 111:73]
  wire  maskedBeats_7 = earlyWinner_7 & opdata_7; // @[Arbiter.scala 111:73]
  wire  maskedBeats_8 = earlyWinner_8 & opdata_8; // @[Arbiter.scala 111:73]
  wire  maskedBeats_9 = earlyWinner_9 & opdata_9; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2 | maskedBeats_3 | maskedBeats_4 | maskedBeats_5 |
    maskedBeats_6 | maskedBeats_7 | maskedBeats_8 | maskedBeats_9; // @[Arbiter.scala 112:44]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  reg  state_4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4 = idle ? earlyWinner_4 : state_4; // @[Arbiter.scala 117:30]
  reg  state_5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5 = idle ? earlyWinner_5 : state_5; // @[Arbiter.scala 117:30]
  reg  state_6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6 = idle ? earlyWinner_6 : state_6; // @[Arbiter.scala 117:30]
  reg  state_7; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7 = idle ? earlyWinner_7 : state_7; // @[Arbiter.scala 117:30]
  reg  state_8; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_8 = idle ? earlyWinner_8 : state_8; // @[Arbiter.scala 117:30]
  reg  state_9; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_9 = idle ? earlyWinner_9 : state_9; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_27 = state_0 & out_earlyValid | state_1 & out_1_earlyValid | state_2 &
    out_2_earlyValid | state_3 & out_3_earlyValid | state_4 & out_4_earlyValid | state_5 & out_5_earlyValid | state_6 &
    out_6_earlyValid | state_7 & out_7_earlyValid | state_8 & out_8_earlyValid | state_9 & out_9_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_66 : _sink_ACancel_earlyValid_T_27; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_mem_release_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire  allowed_4 = idle ? readys_4 : state_4; // @[Arbiter.scala 121:24]
  wire  allowed_5 = idle ? readys_5 : state_5; // @[Arbiter.scala 121:24]
  wire  allowed_6 = idle ? readys_6 : state_6; // @[Arbiter.scala 121:24]
  wire  allowed_7 = idle ? readys_7 : state_7; // @[Arbiter.scala 121:24]
  wire  allowed_8 = idle ? readys_8 : state_8; // @[Arbiter.scala 121:24]
  wire  allowed_9 = idle ? readys_9 : state_9; // @[Arbiter.scala 121:24]
  wire [255:0] out_bits_data = entries_0_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_123 = muxStateEarly_0 ? out_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_1_bits_data = entries_1_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_124 = muxStateEarly_1 ? out_1_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_2_bits_data = entries_2_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_125 = muxStateEarly_2 ? out_2_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_3_bits_data = entries_3_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_126 = muxStateEarly_3 ? out_3_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_4_bits_data = entries_4_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_127 = muxStateEarly_4 ? out_4_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_5_bits_data = entries_5_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_128 = muxStateEarly_5 ? out_5_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_6_bits_data = entries_6_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_129 = muxStateEarly_6 ? out_6_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_7_bits_data = entries_7_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_130 = muxStateEarly_7 ? out_7_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_8_bits_data = entries_8_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_131 = muxStateEarly_8 ? out_8_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_9_bits_data = entries_9_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_132 = muxStateEarly_9 ? out_9_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_133 = _T_123 | _T_124; // @[Mux.scala 27:73]
  wire [255:0] _T_134 = _T_133 | _T_125; // @[Mux.scala 27:73]
  wire [255:0] _T_135 = _T_134 | _T_126; // @[Mux.scala 27:73]
  wire [255:0] _T_136 = _T_135 | _T_127; // @[Mux.scala 27:73]
  wire [255:0] _T_137 = _T_136 | _T_128; // @[Mux.scala 27:73]
  wire [255:0] _T_138 = _T_137 | _T_129; // @[Mux.scala 27:73]
  wire [255:0] _T_139 = _T_138 | _T_130; // @[Mux.scala 27:73]
  wire [255:0] _T_140 = _T_139 | _T_131; // @[Mux.scala 27:73]
  wire  out_bits_echo_blockisdirty = entries_0_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_1_bits_echo_blockisdirty = entries_1_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_2_bits_echo_blockisdirty = entries_2_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_3_bits_echo_blockisdirty = entries_3_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_4_bits_echo_blockisdirty = entries_4_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_5_bits_echo_blockisdirty = entries_5_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_6_bits_echo_blockisdirty = entries_6_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_7_bits_echo_blockisdirty = entries_7_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_8_bits_echo_blockisdirty = entries_8_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_9_bits_echo_blockisdirty = entries_9_io_mem_release_bits_echo_blockisdirty; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] out_bits_address = entries_0_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_218 = muxStateEarly_0 ? out_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_1_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_219 = muxStateEarly_1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_bits_address = entries_2_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_220 = muxStateEarly_2 ? out_2_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_3_bits_address = entries_3_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_221 = muxStateEarly_3 ? out_3_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_4_bits_address = entries_4_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_222 = muxStateEarly_4 ? out_4_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_5_bits_address = entries_5_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_223 = muxStateEarly_5 ? out_5_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_6_bits_address = entries_6_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_224 = muxStateEarly_6 ? out_6_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_7_bits_address = entries_7_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_225 = muxStateEarly_7 ? out_7_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_8_bits_address = entries_8_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_226 = muxStateEarly_8 ? out_8_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_9_bits_address = entries_9_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_227 = muxStateEarly_9 ? out_9_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_228 = _T_218 | _T_219; // @[Mux.scala 27:73]
  wire [35:0] _T_229 = _T_228 | _T_220; // @[Mux.scala 27:73]
  wire [35:0] _T_230 = _T_229 | _T_221; // @[Mux.scala 27:73]
  wire [35:0] _T_231 = _T_230 | _T_222; // @[Mux.scala 27:73]
  wire [35:0] _T_232 = _T_231 | _T_223; // @[Mux.scala 27:73]
  wire [35:0] _T_233 = _T_232 | _T_224; // @[Mux.scala 27:73]
  wire [35:0] _T_234 = _T_233 | _T_225; // @[Mux.scala 27:73]
  wire [35:0] _T_235 = _T_234 | _T_226; // @[Mux.scala 27:73]
  wire [4:0] out_bits_source = entries_0_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_237 = muxStateEarly_0 ? out_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_1_bits_source = entries_1_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_238 = muxStateEarly_1 ? out_1_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_2_bits_source = entries_2_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_239 = muxStateEarly_2 ? out_2_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_3_bits_source = entries_3_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_240 = muxStateEarly_3 ? out_3_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_4_bits_source = entries_4_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_241 = muxStateEarly_4 ? out_4_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_5_bits_source = entries_5_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_242 = muxStateEarly_5 ? out_5_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_6_bits_source = entries_6_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_243 = muxStateEarly_6 ? out_6_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_7_bits_source = entries_7_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_244 = muxStateEarly_7 ? out_7_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_8_bits_source = entries_8_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_245 = muxStateEarly_8 ? out_8_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_9_bits_source = entries_9_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_246 = muxStateEarly_9 ? out_9_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_247 = _T_237 | _T_238; // @[Mux.scala 27:73]
  wire [4:0] _T_248 = _T_247 | _T_239; // @[Mux.scala 27:73]
  wire [4:0] _T_249 = _T_248 | _T_240; // @[Mux.scala 27:73]
  wire [4:0] _T_250 = _T_249 | _T_241; // @[Mux.scala 27:73]
  wire [4:0] _T_251 = _T_250 | _T_242; // @[Mux.scala 27:73]
  wire [4:0] _T_252 = _T_251 | _T_243; // @[Mux.scala 27:73]
  wire [4:0] _T_253 = _T_252 | _T_244; // @[Mux.scala 27:73]
  wire [4:0] _T_254 = _T_253 | _T_245; // @[Mux.scala 27:73]
  wire [2:0] _T_256 = muxStateEarly_0 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_257 = muxStateEarly_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_258 = muxStateEarly_2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_259 = muxStateEarly_3 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_260 = muxStateEarly_4 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_261 = muxStateEarly_5 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_262 = muxStateEarly_6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_263 = muxStateEarly_7 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_264 = muxStateEarly_8 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_265 = muxStateEarly_9 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_266 = _T_256 | _T_257; // @[Mux.scala 27:73]
  wire [2:0] _T_267 = _T_266 | _T_258; // @[Mux.scala 27:73]
  wire [2:0] _T_268 = _T_267 | _T_259; // @[Mux.scala 27:73]
  wire [2:0] _T_269 = _T_268 | _T_260; // @[Mux.scala 27:73]
  wire [2:0] _T_270 = _T_269 | _T_261; // @[Mux.scala 27:73]
  wire [2:0] _T_271 = _T_270 | _T_262; // @[Mux.scala 27:73]
  wire [2:0] _T_272 = _T_271 | _T_263; // @[Mux.scala 27:73]
  wire [2:0] _T_273 = _T_272 | _T_264; // @[Mux.scala 27:73]
  wire [2:0] out_bits_param = entries_0_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_275 = muxStateEarly_0 ? out_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_param = entries_1_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_276 = muxStateEarly_1 ? out_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_param = entries_2_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_277 = muxStateEarly_2 ? out_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_param = entries_3_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_278 = muxStateEarly_3 ? out_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_param = entries_4_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_279 = muxStateEarly_4 ? out_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_param = entries_5_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_280 = muxStateEarly_5 ? out_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_param = entries_6_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_281 = muxStateEarly_6 ? out_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_param = entries_7_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_282 = muxStateEarly_7 ? out_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_8_bits_param = entries_8_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_283 = muxStateEarly_8 ? out_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_9_bits_param = entries_9_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_284 = muxStateEarly_9 ? out_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_285 = _T_275 | _T_276; // @[Mux.scala 27:73]
  wire [2:0] _T_286 = _T_285 | _T_277; // @[Mux.scala 27:73]
  wire [2:0] _T_287 = _T_286 | _T_278; // @[Mux.scala 27:73]
  wire [2:0] _T_288 = _T_287 | _T_279; // @[Mux.scala 27:73]
  wire [2:0] _T_289 = _T_288 | _T_280; // @[Mux.scala 27:73]
  wire [2:0] _T_290 = _T_289 | _T_281; // @[Mux.scala 27:73]
  wire [2:0] _T_291 = _T_290 | _T_282; // @[Mux.scala 27:73]
  wire [2:0] _T_292 = _T_291 | _T_283; // @[Mux.scala 27:73]
  wire [2:0] out_bits_opcode = entries_0_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_294 = muxStateEarly_0 ? out_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_opcode = entries_1_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_295 = muxStateEarly_1 ? out_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_opcode = entries_2_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_296 = muxStateEarly_2 ? out_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_opcode = entries_3_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_297 = muxStateEarly_3 ? out_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_opcode = entries_4_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_298 = muxStateEarly_4 ? out_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_opcode = entries_5_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_299 = muxStateEarly_5 ? out_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_opcode = entries_6_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_300 = muxStateEarly_6 ? out_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_opcode = entries_7_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_301 = muxStateEarly_7 ? out_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_8_bits_opcode = entries_8_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_302 = muxStateEarly_8 ? out_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_9_bits_opcode = entries_9_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_303 = muxStateEarly_9 ? out_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_304 = _T_294 | _T_295; // @[Mux.scala 27:73]
  wire [2:0] _T_305 = _T_304 | _T_296; // @[Mux.scala 27:73]
  wire [2:0] _T_306 = _T_305 | _T_297; // @[Mux.scala 27:73]
  wire [2:0] _T_307 = _T_306 | _T_298; // @[Mux.scala 27:73]
  wire [2:0] _T_308 = _T_307 | _T_299; // @[Mux.scala 27:73]
  wire [2:0] _T_309 = _T_308 | _T_300; // @[Mux.scala 27:73]
  wire [2:0] _T_310 = _T_309 | _T_301; // @[Mux.scala 27:73]
  wire [2:0] _T_311 = _T_310 | _T_302; // @[Mux.scala 27:73]
  wire [1:0] _T_361 = entries_0_io_block_addr_valid + entries_1_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_363 = entries_3_io_block_addr_valid + entries_4_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_6 = {{1'd0}, entries_2_io_block_addr_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_365 = _GEN_6 + _T_363; // @[Bitwise.scala 48:55]
  wire [2:0] _T_367 = _T_361 + _T_365[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_369 = entries_5_io_block_addr_valid + entries_6_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_371 = entries_8_io_block_addr_valid + entries_9_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_7 = {{1'd0}, entries_7_io_block_addr_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_373 = _GEN_7 + _T_371; // @[Bitwise.scala 48:55]
  wire [2:0] _T_375 = _T_369 + _T_373[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_377 = _T_367 + _T_375; // @[Bitwise.scala 48:55]
  wire [3:0] _T_379 = 4'ha / 3'h4; // @[WritebackQueue.scala 481:105]
  wire [3:0] _T_419 = 4'ha / 2'h2; // @[WritebackQueue.scala 482:190]
  wire [5:0] _T_460 = 4'ha * 2'h3; // @[WritebackQueue.scala 483:190]
  wire [5:0] _T_461 = _T_460 / 3'h4; // @[WritebackQueue.scala 483:194]
  wire [5:0] _GEN_16 = {{2'd0}, _T_377}; // @[WritebackQueue.scala 483:165]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  WritebackEntry entries_0 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_primary_valid(entries_0_io_primary_valid),
    .io_primary_ready(entries_0_io_primary_ready),
    .io_secondary_valid(entries_0_io_secondary_valid),
    .io_secondary_ready(entries_0_io_secondary_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_param(entries_0_io_req_bits_param),
    .io_req_bits_voluntary(entries_0_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_0_io_req_bits_hasData),
    .io_req_bits_dirty(entries_0_io_req_bits_dirty),
    .io_req_bits_data(entries_0_io_req_bits_data),
    .io_req_bits_delay_release(entries_0_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_0_io_req_bits_miss_id),
    .io_mem_release_ready(entries_0_io_mem_release_ready),
    .io_mem_release_valid(entries_0_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_0_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_0_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_0_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_0_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_0_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_0_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_0_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_block_addr_valid(entries_0_io_block_addr_valid),
    .io_block_addr_bits(entries_0_io_block_addr_bits),
    .io_release_wakeup_valid(entries_0_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_0_io_release_wakeup_bits),
    .io_release_update_valid(entries_0_io_release_update_valid),
    .io_release_update_bits_addr(entries_0_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_0_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_0_io_release_update_bits_data)
  );
  WritebackEntry entries_1 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_primary_valid(entries_1_io_primary_valid),
    .io_primary_ready(entries_1_io_primary_ready),
    .io_secondary_valid(entries_1_io_secondary_valid),
    .io_secondary_ready(entries_1_io_secondary_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_param(entries_1_io_req_bits_param),
    .io_req_bits_voluntary(entries_1_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_1_io_req_bits_hasData),
    .io_req_bits_dirty(entries_1_io_req_bits_dirty),
    .io_req_bits_data(entries_1_io_req_bits_data),
    .io_req_bits_delay_release(entries_1_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_1_io_req_bits_miss_id),
    .io_mem_release_ready(entries_1_io_mem_release_ready),
    .io_mem_release_valid(entries_1_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_1_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_1_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_1_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_1_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_1_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_1_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_1_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_block_addr_valid(entries_1_io_block_addr_valid),
    .io_block_addr_bits(entries_1_io_block_addr_bits),
    .io_release_wakeup_valid(entries_1_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_1_io_release_wakeup_bits),
    .io_release_update_valid(entries_1_io_release_update_valid),
    .io_release_update_bits_addr(entries_1_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_1_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_1_io_release_update_bits_data)
  );
  WritebackEntry entries_2 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_id(entries_2_io_id),
    .io_primary_valid(entries_2_io_primary_valid),
    .io_primary_ready(entries_2_io_primary_ready),
    .io_secondary_valid(entries_2_io_secondary_valid),
    .io_secondary_ready(entries_2_io_secondary_ready),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_bits_param(entries_2_io_req_bits_param),
    .io_req_bits_voluntary(entries_2_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_2_io_req_bits_hasData),
    .io_req_bits_dirty(entries_2_io_req_bits_dirty),
    .io_req_bits_data(entries_2_io_req_bits_data),
    .io_req_bits_delay_release(entries_2_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_2_io_req_bits_miss_id),
    .io_mem_release_ready(entries_2_io_mem_release_ready),
    .io_mem_release_valid(entries_2_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_2_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_2_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_2_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_2_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_2_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_2_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_2_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_2_io_mem_grant_ready),
    .io_mem_grant_valid(entries_2_io_mem_grant_valid),
    .io_block_addr_valid(entries_2_io_block_addr_valid),
    .io_block_addr_bits(entries_2_io_block_addr_bits),
    .io_release_wakeup_valid(entries_2_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_2_io_release_wakeup_bits),
    .io_release_update_valid(entries_2_io_release_update_valid),
    .io_release_update_bits_addr(entries_2_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_2_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_2_io_release_update_bits_data)
  );
  WritebackEntry entries_3 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_id(entries_3_io_id),
    .io_primary_valid(entries_3_io_primary_valid),
    .io_primary_ready(entries_3_io_primary_ready),
    .io_secondary_valid(entries_3_io_secondary_valid),
    .io_secondary_ready(entries_3_io_secondary_ready),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_bits_param(entries_3_io_req_bits_param),
    .io_req_bits_voluntary(entries_3_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_3_io_req_bits_hasData),
    .io_req_bits_dirty(entries_3_io_req_bits_dirty),
    .io_req_bits_data(entries_3_io_req_bits_data),
    .io_req_bits_delay_release(entries_3_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_3_io_req_bits_miss_id),
    .io_mem_release_ready(entries_3_io_mem_release_ready),
    .io_mem_release_valid(entries_3_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_3_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_3_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_3_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_3_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_3_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_3_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_3_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_3_io_mem_grant_ready),
    .io_mem_grant_valid(entries_3_io_mem_grant_valid),
    .io_block_addr_valid(entries_3_io_block_addr_valid),
    .io_block_addr_bits(entries_3_io_block_addr_bits),
    .io_release_wakeup_valid(entries_3_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_3_io_release_wakeup_bits),
    .io_release_update_valid(entries_3_io_release_update_valid),
    .io_release_update_bits_addr(entries_3_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_3_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_3_io_release_update_bits_data)
  );
  WritebackEntry entries_4 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_4_clock),
    .reset(entries_4_reset),
    .io_id(entries_4_io_id),
    .io_primary_valid(entries_4_io_primary_valid),
    .io_primary_ready(entries_4_io_primary_ready),
    .io_secondary_valid(entries_4_io_secondary_valid),
    .io_secondary_ready(entries_4_io_secondary_ready),
    .io_req_valid(entries_4_io_req_valid),
    .io_req_bits_addr(entries_4_io_req_bits_addr),
    .io_req_bits_param(entries_4_io_req_bits_param),
    .io_req_bits_voluntary(entries_4_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_4_io_req_bits_hasData),
    .io_req_bits_dirty(entries_4_io_req_bits_dirty),
    .io_req_bits_data(entries_4_io_req_bits_data),
    .io_req_bits_delay_release(entries_4_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_4_io_req_bits_miss_id),
    .io_mem_release_ready(entries_4_io_mem_release_ready),
    .io_mem_release_valid(entries_4_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_4_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_4_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_4_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_4_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_4_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_4_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_4_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_4_io_mem_grant_ready),
    .io_mem_grant_valid(entries_4_io_mem_grant_valid),
    .io_block_addr_valid(entries_4_io_block_addr_valid),
    .io_block_addr_bits(entries_4_io_block_addr_bits),
    .io_release_wakeup_valid(entries_4_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_4_io_release_wakeup_bits),
    .io_release_update_valid(entries_4_io_release_update_valid),
    .io_release_update_bits_addr(entries_4_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_4_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_4_io_release_update_bits_data)
  );
  WritebackEntry entries_5 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_5_clock),
    .reset(entries_5_reset),
    .io_id(entries_5_io_id),
    .io_primary_valid(entries_5_io_primary_valid),
    .io_primary_ready(entries_5_io_primary_ready),
    .io_secondary_valid(entries_5_io_secondary_valid),
    .io_secondary_ready(entries_5_io_secondary_ready),
    .io_req_valid(entries_5_io_req_valid),
    .io_req_bits_addr(entries_5_io_req_bits_addr),
    .io_req_bits_param(entries_5_io_req_bits_param),
    .io_req_bits_voluntary(entries_5_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_5_io_req_bits_hasData),
    .io_req_bits_dirty(entries_5_io_req_bits_dirty),
    .io_req_bits_data(entries_5_io_req_bits_data),
    .io_req_bits_delay_release(entries_5_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_5_io_req_bits_miss_id),
    .io_mem_release_ready(entries_5_io_mem_release_ready),
    .io_mem_release_valid(entries_5_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_5_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_5_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_5_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_5_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_5_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_5_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_5_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_5_io_mem_grant_ready),
    .io_mem_grant_valid(entries_5_io_mem_grant_valid),
    .io_block_addr_valid(entries_5_io_block_addr_valid),
    .io_block_addr_bits(entries_5_io_block_addr_bits),
    .io_release_wakeup_valid(entries_5_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_5_io_release_wakeup_bits),
    .io_release_update_valid(entries_5_io_release_update_valid),
    .io_release_update_bits_addr(entries_5_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_5_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_5_io_release_update_bits_data)
  );
  WritebackEntry entries_6 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_6_clock),
    .reset(entries_6_reset),
    .io_id(entries_6_io_id),
    .io_primary_valid(entries_6_io_primary_valid),
    .io_primary_ready(entries_6_io_primary_ready),
    .io_secondary_valid(entries_6_io_secondary_valid),
    .io_secondary_ready(entries_6_io_secondary_ready),
    .io_req_valid(entries_6_io_req_valid),
    .io_req_bits_addr(entries_6_io_req_bits_addr),
    .io_req_bits_param(entries_6_io_req_bits_param),
    .io_req_bits_voluntary(entries_6_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_6_io_req_bits_hasData),
    .io_req_bits_dirty(entries_6_io_req_bits_dirty),
    .io_req_bits_data(entries_6_io_req_bits_data),
    .io_req_bits_delay_release(entries_6_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_6_io_req_bits_miss_id),
    .io_mem_release_ready(entries_6_io_mem_release_ready),
    .io_mem_release_valid(entries_6_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_6_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_6_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_6_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_6_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_6_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_6_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_6_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_6_io_mem_grant_ready),
    .io_mem_grant_valid(entries_6_io_mem_grant_valid),
    .io_block_addr_valid(entries_6_io_block_addr_valid),
    .io_block_addr_bits(entries_6_io_block_addr_bits),
    .io_release_wakeup_valid(entries_6_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_6_io_release_wakeup_bits),
    .io_release_update_valid(entries_6_io_release_update_valid),
    .io_release_update_bits_addr(entries_6_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_6_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_6_io_release_update_bits_data)
  );
  WritebackEntry entries_7 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_7_clock),
    .reset(entries_7_reset),
    .io_id(entries_7_io_id),
    .io_primary_valid(entries_7_io_primary_valid),
    .io_primary_ready(entries_7_io_primary_ready),
    .io_secondary_valid(entries_7_io_secondary_valid),
    .io_secondary_ready(entries_7_io_secondary_ready),
    .io_req_valid(entries_7_io_req_valid),
    .io_req_bits_addr(entries_7_io_req_bits_addr),
    .io_req_bits_param(entries_7_io_req_bits_param),
    .io_req_bits_voluntary(entries_7_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_7_io_req_bits_hasData),
    .io_req_bits_dirty(entries_7_io_req_bits_dirty),
    .io_req_bits_data(entries_7_io_req_bits_data),
    .io_req_bits_delay_release(entries_7_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_7_io_req_bits_miss_id),
    .io_mem_release_ready(entries_7_io_mem_release_ready),
    .io_mem_release_valid(entries_7_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_7_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_7_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_7_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_7_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_7_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_7_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_7_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_7_io_mem_grant_ready),
    .io_mem_grant_valid(entries_7_io_mem_grant_valid),
    .io_block_addr_valid(entries_7_io_block_addr_valid),
    .io_block_addr_bits(entries_7_io_block_addr_bits),
    .io_release_wakeup_valid(entries_7_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_7_io_release_wakeup_bits),
    .io_release_update_valid(entries_7_io_release_update_valid),
    .io_release_update_bits_addr(entries_7_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_7_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_7_io_release_update_bits_data)
  );
  WritebackEntry_8 entries_8 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_8_clock),
    .reset(entries_8_reset),
    .io_id(entries_8_io_id),
    .io_primary_valid(entries_8_io_primary_valid),
    .io_primary_ready(entries_8_io_primary_ready),
    .io_secondary_valid(entries_8_io_secondary_valid),
    .io_secondary_ready(entries_8_io_secondary_ready),
    .io_req_valid(entries_8_io_req_valid),
    .io_req_bits_addr(entries_8_io_req_bits_addr),
    .io_req_bits_param(entries_8_io_req_bits_param),
    .io_req_bits_voluntary(entries_8_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_8_io_req_bits_hasData),
    .io_req_bits_dirty(entries_8_io_req_bits_dirty),
    .io_req_bits_data(entries_8_io_req_bits_data),
    .io_req_bits_delay_release(entries_8_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_8_io_req_bits_miss_id),
    .io_mem_release_ready(entries_8_io_mem_release_ready),
    .io_mem_release_valid(entries_8_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_8_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_8_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_8_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_8_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_8_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_8_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_8_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_8_io_mem_grant_ready),
    .io_mem_grant_valid(entries_8_io_mem_grant_valid),
    .io_block_addr_valid(entries_8_io_block_addr_valid),
    .io_block_addr_bits(entries_8_io_block_addr_bits),
    .io_release_wakeup_valid(entries_8_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_8_io_release_wakeup_bits),
    .io_release_update_valid(entries_8_io_release_update_valid),
    .io_release_update_bits_addr(entries_8_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_8_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_8_io_release_update_bits_data)
  );
  WritebackEntry_8 entries_9 ( // @[WritebackQueue.scala 414:53]
    .clock(entries_9_clock),
    .reset(entries_9_reset),
    .io_id(entries_9_io_id),
    .io_primary_valid(entries_9_io_primary_valid),
    .io_primary_ready(entries_9_io_primary_ready),
    .io_secondary_valid(entries_9_io_secondary_valid),
    .io_secondary_ready(entries_9_io_secondary_ready),
    .io_req_valid(entries_9_io_req_valid),
    .io_req_bits_addr(entries_9_io_req_bits_addr),
    .io_req_bits_param(entries_9_io_req_bits_param),
    .io_req_bits_voluntary(entries_9_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_9_io_req_bits_hasData),
    .io_req_bits_dirty(entries_9_io_req_bits_dirty),
    .io_req_bits_data(entries_9_io_req_bits_data),
    .io_req_bits_delay_release(entries_9_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_9_io_req_bits_miss_id),
    .io_mem_release_ready(entries_9_io_mem_release_ready),
    .io_mem_release_valid(entries_9_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_9_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_9_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_9_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_9_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_9_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(entries_9_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(entries_9_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_9_io_mem_grant_ready),
    .io_mem_grant_valid(entries_9_io_mem_grant_valid),
    .io_block_addr_valid(entries_9_io_block_addr_valid),
    .io_block_addr_bits(entries_9_io_block_addr_bits),
    .io_release_wakeup_valid(entries_9_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_9_io_release_wakeup_bits),
    .io_release_update_valid(entries_9_io_release_update_valid),
    .io_release_update_bits_addr(entries_9_io_release_update_bits_addr),
    .io_release_update_bits_mask(entries_9_io_release_update_bits_mask),
    .io_release_update_bits_data(entries_9_io_release_update_bits_data)
  );
  assign io_req_ready = |_accept_T; // @[WritebackQueue.scala 400:39]
  assign io_mem_release_valid = idle ? _T_66 : _sink_ACancel_earlyValid_T_27; // @[Arbiter.scala 125:29]
  assign io_mem_release_bits_opcode = _T_311 | _T_303; // @[Mux.scala 27:73]
  assign io_mem_release_bits_param = _T_292 | _T_284; // @[Mux.scala 27:73]
  assign io_mem_release_bits_size = _T_273 | _T_265; // @[Mux.scala 27:73]
  assign io_mem_release_bits_source = _T_254 | _T_246; // @[Mux.scala 27:73]
  assign io_mem_release_bits_address = _T_235 | _T_227; // @[Mux.scala 27:73]
  assign io_mem_release_bits_echo_blockisdirty = muxStateEarly_0 & out_bits_echo_blockisdirty | muxStateEarly_1 &
    out_1_bits_echo_blockisdirty | muxStateEarly_2 & out_2_bits_echo_blockisdirty | muxStateEarly_3 &
    out_3_bits_echo_blockisdirty | muxStateEarly_4 & out_4_bits_echo_blockisdirty | muxStateEarly_5 &
    out_5_bits_echo_blockisdirty | muxStateEarly_6 & out_6_bits_echo_blockisdirty | muxStateEarly_7 &
    out_7_bits_echo_blockisdirty | muxStateEarly_8 & out_8_bits_echo_blockisdirty | muxStateEarly_9 &
    out_9_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign io_mem_release_bits_data = _T_140 | _T_132; // @[Mux.scala 27:73]
  assign io_block_miss_req = io_miss_req_valid & miss_req_conflict; // @[WritebackQueue.scala 449:42]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 4'h8; // @[WritebackQueue.scala 423:19]
  assign entries_0_io_primary_valid = alloc & entries_0_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_0_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_0_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_0_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_0_io_mem_release_ready = io_mem_release_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = 5'h8 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_0_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_0_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_0_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_0_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_0_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_0_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 4'h9; // @[WritebackQueue.scala 423:19]
  assign entries_1_io_primary_valid = _entries_1_io_primary_valid_T_1 & entries_1_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_1_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_1_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_1_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_1_io_mem_release_ready = io_mem_release_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = 5'h9 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_1_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_1_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_1_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_1_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_1_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_1_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_id = 4'ha; // @[WritebackQueue.scala 423:19]
  assign entries_2_io_primary_valid = _entries_2_io_primary_valid_T_1 & entries_2_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_2_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_2_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_2_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_2_io_mem_release_ready = io_mem_release_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign entries_2_io_mem_grant_valid = 5'ha == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_2_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_2_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_2_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_2_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_2_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_2_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_id = 4'hb; // @[WritebackQueue.scala 423:19]
  assign entries_3_io_primary_valid = _entries_3_io_primary_valid_T_1 & entries_3_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_3_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_3_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_3_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_3_io_mem_release_ready = io_mem_release_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign entries_3_io_mem_grant_valid = 5'hb == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_3_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_3_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_3_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_3_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_3_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_3_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_4_clock = clock;
  assign entries_4_reset = reset;
  assign entries_4_io_id = 4'hc; // @[WritebackQueue.scala 423:19]
  assign entries_4_io_primary_valid = _entries_4_io_primary_valid_T_1 & entries_4_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_4_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_4_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_4_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_4_io_mem_release_ready = io_mem_release_ready & allowed_4; // @[Arbiter.scala 123:31]
  assign entries_4_io_mem_grant_valid = 5'hc == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_4_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_4_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_4_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_4_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_4_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_4_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_5_clock = clock;
  assign entries_5_reset = reset;
  assign entries_5_io_id = 4'hd; // @[WritebackQueue.scala 423:19]
  assign entries_5_io_primary_valid = _entries_5_io_primary_valid_T_1 & entries_5_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_5_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_5_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_5_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_5_io_mem_release_ready = io_mem_release_ready & allowed_5; // @[Arbiter.scala 123:31]
  assign entries_5_io_mem_grant_valid = 5'hd == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_5_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_5_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_5_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_5_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_5_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_5_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_6_clock = clock;
  assign entries_6_reset = reset;
  assign entries_6_io_id = 4'he; // @[WritebackQueue.scala 423:19]
  assign entries_6_io_primary_valid = _entries_6_io_primary_valid_T_1 & entries_6_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_6_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_6_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_6_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_6_io_mem_release_ready = io_mem_release_ready & allowed_6; // @[Arbiter.scala 123:31]
  assign entries_6_io_mem_grant_valid = 5'he == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_6_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_6_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_6_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_6_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_6_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_6_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_7_clock = clock;
  assign entries_7_reset = reset;
  assign entries_7_io_id = 4'hf; // @[WritebackQueue.scala 423:19]
  assign entries_7_io_primary_valid = _entries_7_io_primary_valid_T_1 & entries_7_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_7_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_7_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_7_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_7_io_mem_release_ready = io_mem_release_ready & allowed_7; // @[Arbiter.scala 123:31]
  assign entries_7_io_mem_grant_valid = 5'hf == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_7_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_7_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_7_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_7_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_7_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_7_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_8_clock = clock;
  assign entries_8_reset = reset;
  assign entries_8_io_id = 5'h10; // @[WritebackQueue.scala 423:19]
  assign entries_8_io_primary_valid = _entries_8_io_primary_valid_T_1 & entries_8_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_8_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_8_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_8_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_8_io_mem_release_ready = io_mem_release_ready & allowed_8; // @[Arbiter.scala 123:31]
  assign entries_8_io_mem_grant_valid = 5'h10 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_8_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_8_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_8_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_8_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_8_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_8_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  assign entries_9_clock = clock;
  assign entries_9_reset = reset;
  assign entries_9_io_id = 5'h11; // @[WritebackQueue.scala 423:19]
  assign entries_9_io_primary_valid = _entries_9_io_primary_valid_T_1 & entries_9_io_primary_ready; // @[WritebackQueue.scala 432:31]
  assign entries_9_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 434:48]
  assign entries_9_io_req_valid = io_req_valid; // @[WritebackQueue.scala 426:26]
  assign entries_9_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_dirty = io_req_bits_dirty; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_data = io_req_bits_data; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 429:26]
  assign entries_9_io_mem_release_ready = io_mem_release_ready & allowed_9; // @[Arbiter.scala 123:31]
  assign entries_9_io_mem_grant_valid = 5'h11 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 436:63]
  assign entries_9_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 442:31]
  assign entries_9_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 442:31]
  assign entries_9_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 443:31]
  assign entries_9_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 443:31]
  assign entries_9_io_release_update_bits_mask = io_release_update_bits_mask; // @[WritebackQueue.scala 443:31]
  assign entries_9_io_release_update_bits_data = io_release_update_bits_data; // @[WritebackQueue.scala 443:31]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 10'h3ff; // @[Arbiter.scala 23:23]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_12; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_0 <= earlyWinner_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_1 <= earlyWinner_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_2 <= earlyWinner_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_3 <= earlyWinner_3;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_4 <= earlyWinner_4;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_5 <= earlyWinner_5;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_6 <= earlyWinner_6;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_7 <= earlyWinner_7;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_8 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_8 <= earlyWinner_8;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_9 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_9 <= earlyWinner_9;
    end
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_377 < _T_379; // @[WritebackQueue.scala 481:81]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_377 > _T_379 & _T_377 <= _T_419; // @[WritebackQueue.scala 482:112]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_377 > _T_419 & _GEN_16 <= _T_461; // @[WritebackQueue.scala 483:112]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _GEN_16 > _T_461; // @[WritebackQueue.scala 484:81]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_21[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
