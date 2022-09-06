module MissQueue(
  input          clock,
  input          reset,
  output         io_req_ready,
  input          io_req_valid,
  input  [1:0]   io_req_bits_source,
  input  [4:0]   io_req_bits_cmd,
  input  [35:0]  io_req_bits_addr,
  input  [38:0]  io_req_bits_vaddr,
  input  [3:0]   io_req_bits_way_en,
  input  [511:0] io_req_bits_store_data,
  input  [63:0]  io_req_bits_store_mask,
  input  [2:0]   io_req_bits_word_idx,
  input  [63:0]  io_req_bits_amo_data,
  input  [7:0]   io_req_bits_amo_mask,
  input  [1:0]   io_req_bits_req_coh_state,
  input  [1:0]   io_req_bits_replace_coh_state,
  input  [23:0]  io_req_bits_replace_tag,
  input  [63:0]  io_req_bits_id,
  input          io_req_bits_cancel,
  output         io_refill_to_ldq_valid,
  output [35:0]  io_refill_to_ldq_bits_addr,
  output [255:0] io_refill_to_ldq_bits_data,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_opcode,
  output [2:0]   io_mem_acquire_bits_param,
  output [2:0]   io_mem_acquire_bits_size,
  output [4:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [1:0]   io_mem_acquire_bits_user_alias,
  output         io_mem_acquire_bits_user_needHint,
  output [31:0]  io_mem_acquire_bits_mask,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [1:0]   io_mem_grant_bits_param,
  input  [2:0]   io_mem_grant_bits_size,
  input  [4:0]   io_mem_grant_bits_source,
  input  [4:0]   io_mem_grant_bits_sink,
  input          io_mem_grant_bits_denied,
  input          io_mem_grant_bits_echo_blockisdirty,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  input          io_mem_finish_ready,
  output         io_mem_finish_valid,
  output [4:0]   io_mem_finish_bits_sink,
  input          io_refill_pipe_req_ready,
  output         io_refill_pipe_req_valid,
  output [1:0]   io_refill_pipe_req_bits_source,
  output [35:0]  io_refill_pipe_req_bits_addr,
  output [3:0]   io_refill_pipe_req_bits_way_en,
  output [7:0]   io_refill_pipe_req_bits_wmask,
  output [63:0]  io_refill_pipe_req_bits_data_0,
  output [63:0]  io_refill_pipe_req_bits_data_1,
  output [63:0]  io_refill_pipe_req_bits_data_2,
  output [63:0]  io_refill_pipe_req_bits_data_3,
  output [63:0]  io_refill_pipe_req_bits_data_4,
  output [63:0]  io_refill_pipe_req_bits_data_5,
  output [63:0]  io_refill_pipe_req_bits_data_6,
  output [63:0]  io_refill_pipe_req_bits_data_7,
  output [1:0]   io_refill_pipe_req_bits_meta_coh_state,
  output [1:0]   io_refill_pipe_req_bits_alias,
  output [2:0]   io_refill_pipe_req_bits_miss_id,
  output [63:0]  io_refill_pipe_req_bits_id,
  output         io_refill_pipe_req_bits_error,
  input          io_refill_pipe_resp_valid,
  input  [2:0]   io_refill_pipe_resp_bits,
  input          io_replace_pipe_req_ready,
  output         io_replace_pipe_req_valid,
  output         io_replace_pipe_req_bits_miss,
  output [2:0]   io_replace_pipe_req_bits_miss_id,
  output [1:0]   io_replace_pipe_req_bits_miss_param,
  output         io_replace_pipe_req_bits_miss_dirty,
  output [3:0]   io_replace_pipe_req_bits_miss_way_en,
  output [1:0]   io_replace_pipe_req_bits_source,
  output [4:0]   io_replace_pipe_req_bits_cmd,
  output [38:0]  io_replace_pipe_req_bits_vaddr,
  output [35:0]  io_replace_pipe_req_bits_addr,
  output [511:0] io_replace_pipe_req_bits_store_data,
  output [63:0]  io_replace_pipe_req_bits_store_mask,
  output [2:0]   io_replace_pipe_req_bits_word_idx,
  output [63:0]  io_replace_pipe_req_bits_amo_data,
  output [7:0]   io_replace_pipe_req_bits_amo_mask,
  output         io_replace_pipe_req_bits_error,
  output         io_replace_pipe_req_bits_replace,
  output [3:0]   io_replace_pipe_req_bits_replace_way_en,
  output [63:0]  io_replace_pipe_req_bits_id,
  input          io_replace_pipe_resp_valid,
  input  [2:0]   io_replace_pipe_resp_bits,
  input          io_main_pipe_req_ready,
  output         io_main_pipe_req_valid,
  output         io_main_pipe_req_bits_miss,
  output [2:0]   io_main_pipe_req_bits_miss_id,
  output [1:0]   io_main_pipe_req_bits_miss_param,
  output         io_main_pipe_req_bits_miss_dirty,
  output [3:0]   io_main_pipe_req_bits_miss_way_en,
  output [1:0]   io_main_pipe_req_bits_source,
  output [4:0]   io_main_pipe_req_bits_cmd,
  output [38:0]  io_main_pipe_req_bits_vaddr,
  output [35:0]  io_main_pipe_req_bits_addr,
  output [511:0] io_main_pipe_req_bits_store_data,
  output [63:0]  io_main_pipe_req_bits_store_mask,
  output [2:0]   io_main_pipe_req_bits_word_idx,
  output [63:0]  io_main_pipe_req_bits_amo_data,
  output [7:0]   io_main_pipe_req_bits_amo_mask,
  output         io_main_pipe_req_bits_error,
  output         io_main_pipe_req_bits_replace,
  output [3:0]   io_main_pipe_req_bits_replace_way_en,
  output [63:0]  io_main_pipe_req_bits_id,
  input          io_main_pipe_resp_valid,
  input  [2:0]   io_main_pipe_resp_bits_miss_id,
  input          io_main_pipe_resp_bits_ack_miss_queue,
  input  [35:0]  io_probe_addr,
  output         io_probe_block,
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
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[MissQueue.scala 488:50]
  wire  entries_0_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_id; // @[MissQueue.scala 488:50]
  wire  entries_0_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_0_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_0_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_0_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_0_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_0_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_0_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_0_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_0_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_0_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_0_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_0_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_0_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_0_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_0_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_0_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_0_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_0_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_0_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_0_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_0_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_0_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_0_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_0_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_0_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_0_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_0_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_0_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_0_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_0_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_0_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_0_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_0_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_0_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_0_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_0_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_0_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_0_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_1_clock; // @[MissQueue.scala 488:50]
  wire  entries_1_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_id; // @[MissQueue.scala 488:50]
  wire  entries_1_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_1_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_1_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_1_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_1_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_1_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_1_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_1_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_1_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_1_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_1_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_1_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_1_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_1_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_1_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_1_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_1_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_1_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_1_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_1_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_1_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_1_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_1_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_1_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_1_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_1_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_1_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_1_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_1_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_1_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_1_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_1_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_1_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_1_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_1_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_1_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_1_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_1_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_2_clock; // @[MissQueue.scala 488:50]
  wire  entries_2_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_id; // @[MissQueue.scala 488:50]
  wire  entries_2_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_2_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_2_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_2_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_2_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_2_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_2_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_2_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_2_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_2_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_2_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_2_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_2_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_2_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_2_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_2_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_2_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_2_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_2_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_2_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_2_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_2_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_2_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_2_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_2_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_2_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_2_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_2_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_2_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_2_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_2_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_2_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_2_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_2_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_2_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_2_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_2_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_2_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_3_clock; // @[MissQueue.scala 488:50]
  wire  entries_3_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_id; // @[MissQueue.scala 488:50]
  wire  entries_3_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_3_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_3_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_3_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_3_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_3_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_3_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_3_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_3_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_3_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_3_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_3_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_3_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_3_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_3_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_3_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_3_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_3_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_3_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_3_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_3_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_3_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_3_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_3_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_3_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_3_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_3_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_3_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_3_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_3_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_3_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_3_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_3_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_3_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_3_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_3_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_3_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_3_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_4_clock; // @[MissQueue.scala 488:50]
  wire  entries_4_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_id; // @[MissQueue.scala 488:50]
  wire  entries_4_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_4_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_4_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_4_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_4_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_4_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_4_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_4_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_4_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_4_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_4_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_4_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_4_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_4_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_4_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_4_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_4_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_4_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_4_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_4_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_4_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_4_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_4_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_4_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_4_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_4_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_4_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_4_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_4_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_4_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_4_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_4_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_4_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_4_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_4_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_4_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_4_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_4_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_5_clock; // @[MissQueue.scala 488:50]
  wire  entries_5_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_id; // @[MissQueue.scala 488:50]
  wire  entries_5_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_5_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_5_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_5_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_5_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_5_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_5_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_5_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_5_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_5_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_5_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_5_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_5_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_5_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_5_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_5_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_5_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_5_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_5_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_5_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_5_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_5_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_5_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_5_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_5_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_5_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_5_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_5_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_5_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_5_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_5_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_5_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_5_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_5_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_5_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_5_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_5_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_5_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_6_clock; // @[MissQueue.scala 488:50]
  wire  entries_6_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_id; // @[MissQueue.scala 488:50]
  wire  entries_6_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_6_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_6_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_6_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_6_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_6_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_6_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_6_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_6_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_6_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_6_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_6_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_6_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_6_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_6_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_6_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_6_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_6_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_6_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_6_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_6_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_6_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_6_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_6_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_6_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_6_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_6_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_6_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_6_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_6_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_6_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_6_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_6_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_6_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_6_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_6_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_6_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_6_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  entries_7_clock; // @[MissQueue.scala 488:50]
  wire  entries_7_reset; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_id; // @[MissQueue.scala 488:50]
  wire  entries_7_io_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_7_io_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [38:0] entries_7_io_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_7_io_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [511:0] entries_7_io_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_req_bits_store_mask; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_7_io_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_req_bits_req_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_req_bits_replace_coh_state; // @[MissQueue.scala 488:50]
  wire [23:0] entries_7_io_req_bits_replace_tag; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_7_io_req_bits_cancel; // @[MissQueue.scala 488:50]
  wire  entries_7_io_primary_valid; // @[MissQueue.scala 488:50]
  wire  entries_7_io_primary_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_secondary_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_secondary_reject; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_to_ldq_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_refill_to_ldq_bits_addr; // @[MissQueue.scala 488:50]
  wire [255:0] entries_7_io_refill_to_ldq_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_to_ldq_bits_error; // @[MissQueue.scala 488:50]
  wire [511:0] entries_7_io_refill_to_ldq_bits_data_raw; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_to_ldq_bits_hasdata; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_to_ldq_bits_refill_done; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_acquire_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_acquire_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_mem_acquire_bits_opcode; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_mem_acquire_bits_param; // @[MissQueue.scala 488:50]
  wire [4:0] entries_7_io_mem_acquire_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_mem_acquire_bits_address; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_mem_acquire_bits_user_alias; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_grant_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_grant_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_mem_grant_bits_opcode; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_mem_grant_bits_param; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_mem_grant_bits_size; // @[MissQueue.scala 488:50]
  wire [4:0] entries_7_io_mem_grant_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_grant_bits_denied; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 488:50]
  wire [255:0] entries_7_io_mem_grant_bits_data; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_grant_bits_corrupt; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_finish_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_mem_finish_valid; // @[MissQueue.scala 488:50]
  wire [4:0] entries_7_io_mem_finish_bits_sink; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_refill_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_7_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 488:50]
  wire [7:0] entries_7_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_refill_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire  entries_7_io_refill_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_7_io_replace_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_replace_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [38:0] entries_7_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [3:0] entries_7_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 488:50]
  wire  entries_7_io_replace_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_7_io_main_pipe_req_ready; // @[MissQueue.scala 488:50]
  wire  entries_7_io_main_pipe_req_valid; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 488:50]
  wire  entries_7_io_main_pipe_req_bits_miss_dirty; // @[MissQueue.scala 488:50]
  wire [3:0] entries_7_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 488:50]
  wire [1:0] entries_7_io_main_pipe_req_bits_source; // @[MissQueue.scala 488:50]
  wire [4:0] entries_7_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 488:50]
  wire [38:0] entries_7_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_main_pipe_req_bits_addr; // @[MissQueue.scala 488:50]
  wire [511:0] entries_7_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 488:50]
  wire [2:0] entries_7_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 488:50]
  wire [7:0] entries_7_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 488:50]
  wire  entries_7_io_main_pipe_req_bits_error; // @[MissQueue.scala 488:50]
  wire [63:0] entries_7_io_main_pipe_req_bits_id; // @[MissQueue.scala 488:50]
  wire  entries_7_io_main_pipe_resp; // @[MissQueue.scala 488:50]
  wire  entries_7_io_block_addr_valid; // @[MissQueue.scala 488:50]
  wire [35:0] entries_7_io_block_addr_bits; // @[MissQueue.scala 488:50]
  wire  refill_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_0_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_0_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_1_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_1_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_2_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_2_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_2_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_3_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_3_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_4_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_4_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_4_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_4_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_4_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_4_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_4_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_4_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_4_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_4_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_5_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_5_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_5_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_5_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_5_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_5_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_5_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_5_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_5_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_5_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_6_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_6_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_6_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_6_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_6_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_6_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_6_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_6_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_6_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_6_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_7_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_7_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_in_7_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_in_7_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_in_7_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_7_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_in_7_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_in_7_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_in_7_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_in_7_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 181:21]
  wire [35:0] refill_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 181:21]
  wire [3:0] refill_pipe_req_arb_io_out_bits_way_en; // @[DCacheWrapper.scala 181:21]
  wire [7:0] refill_pipe_req_arb_io_out_bits_wmask; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_0; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_1; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_2; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_3; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_4; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_5; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_6; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_7; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_meta_coh_state; // @[DCacheWrapper.scala 181:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_alias; // @[DCacheWrapper.scala 181:21]
  wire [2:0] refill_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 181:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 181:21]
  wire  refill_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 181:21]
  wire  pipelineReg_clock; // @[MemCommon.scala 167:29]
  wire  pipelineReg_reset; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_in_ready; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_in_valid; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_in_bits_source; // @[MemCommon.scala 167:29]
  wire [35:0] pipelineReg_io_in_bits_addr; // @[MemCommon.scala 167:29]
  wire [3:0] pipelineReg_io_in_bits_way_en; // @[MemCommon.scala 167:29]
  wire [7:0] pipelineReg_io_in_bits_wmask; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_0; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_1; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_2; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_3; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_4; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_5; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_6; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_data_7; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_in_bits_meta_coh_state; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_in_bits_alias; // @[MemCommon.scala 167:29]
  wire [2:0] pipelineReg_io_in_bits_miss_id; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_in_bits_id; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_in_bits_error; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_out_ready; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_out_valid; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_out_bits_source; // @[MemCommon.scala 167:29]
  wire [35:0] pipelineReg_io_out_bits_addr; // @[MemCommon.scala 167:29]
  wire [3:0] pipelineReg_io_out_bits_way_en; // @[MemCommon.scala 167:29]
  wire [7:0] pipelineReg_io_out_bits_wmask; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_0; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_1; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_2; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_3; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_4; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_5; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_6; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_data_7; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_out_bits_meta_coh_state; // @[MemCommon.scala 167:29]
  wire [1:0] pipelineReg_io_out_bits_alias; // @[MemCommon.scala 167:29]
  wire [2:0] pipelineReg_io_out_bits_miss_id; // @[MemCommon.scala 167:29]
  wire [63:0] pipelineReg_io_out_bits_id; // @[MemCommon.scala 167:29]
  wire  pipelineReg_io_out_bits_error; // @[MemCommon.scala 167:29]
  wire  replace_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_0_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_0_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_0_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_1_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_1_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_1_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_1_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_1_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_1_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_2_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_2_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_2_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_2_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_2_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_2_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_2_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_2_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_2_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_3_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_3_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_3_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_3_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_3_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_3_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_3_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_3_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_3_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_3_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_3_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_4_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_4_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_4_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_4_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_4_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_4_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_4_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_4_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_4_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_4_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_4_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_4_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_4_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_4_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_4_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_5_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_5_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_5_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_5_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_5_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_5_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_5_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_5_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_5_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_5_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_5_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_5_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_5_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_5_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_5_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_6_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_6_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_6_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_6_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_6_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_6_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_6_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_6_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_6_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_6_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_6_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_6_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_6_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_6_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_6_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_7_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_7_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_7_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_in_7_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_in_7_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_in_7_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_in_7_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_in_7_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_7_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_in_7_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_7_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_in_7_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_in_7_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_in_7_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_in_7_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] replace_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] replace_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] replace_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] replace_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] replace_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] replace_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] replace_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  replace_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] replace_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] replace_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_1_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_2_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_2_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_2_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_2_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_2_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_3_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_3_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_3_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_3_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_3_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_4_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_4_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_4_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_4_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_4_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_4_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_4_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_4_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_4_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_4_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_4_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_4_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_4_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_4_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_4_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_5_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_5_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_5_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_5_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_5_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_5_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_5_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_5_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_5_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_5_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_5_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_5_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_5_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_5_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_5_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_6_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_6_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_6_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_6_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_6_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_6_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_6_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_6_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_6_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_6_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_6_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_6_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_6_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_6_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_6_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_7_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_7_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_7_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_7_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_7_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_7_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_7_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_7_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_7_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_7_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_7_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_7_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_7_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_7_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_7_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  probe_block_vec_0 = entries_0_io_block_addr_valid & entries_0_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_1 = entries_1_io_block_addr_valid & entries_1_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_2 = entries_2_io_block_addr_valid & entries_2_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_3 = entries_3_io_block_addr_valid & entries_3_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_4 = entries_4_io_block_addr_valid & entries_4_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_5 = entries_5_io_block_addr_valid & entries_5_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_6 = entries_6_io_block_addr_valid & entries_6_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire  probe_block_vec_7 = entries_7_io_block_addr_valid & entries_7_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 493:71]
  wire [7:0] _merge_T = {entries_0_io_secondary_ready,entries_1_io_secondary_ready,entries_2_io_secondary_ready,
    entries_3_io_secondary_ready,entries_4_io_secondary_ready,entries_5_io_secondary_ready,entries_6_io_secondary_ready,
    entries_7_io_secondary_ready}; // @[Cat.scala 31:58]
  wire  merge = |_merge_T; // @[MissQueue.scala 495:40]
  wire [7:0] _reject_T = {entries_0_io_secondary_reject,entries_1_io_secondary_reject,entries_2_io_secondary_reject,
    entries_3_io_secondary_reject,entries_4_io_secondary_reject,entries_5_io_secondary_reject,
    entries_6_io_secondary_reject,entries_7_io_secondary_reject}; // @[Cat.scala 31:58]
  wire  reject = |_reject_T; // @[MissQueue.scala 496:42]
  wire  _alloc_T = ~reject; // @[MissQueue.scala 497:15]
  wire  _alloc_T_1 = ~merge; // @[MissQueue.scala 497:26]
  wire [1:0] alloc_hi_hi = {entries_0_io_primary_ready,entries_1_io_primary_ready}; // @[Cat.scala 31:58]
  wire [3:0] alloc_hi = {entries_0_io_primary_ready,entries_1_io_primary_ready,entries_2_io_primary_ready,
    entries_3_io_primary_ready}; // @[Cat.scala 31:58]
  wire [7:0] _alloc_T_3 = {entries_0_io_primary_ready,entries_1_io_primary_ready,entries_2_io_primary_ready,
    entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,entries_6_io_primary_ready,
    entries_7_io_primary_ready}; // @[Cat.scala 31:58]
  wire  alloc = ~reject & ~merge & |_alloc_T_3; // @[MissQueue.scala 497:33]
  wire  _entries_0_io_primary_valid_T_1 = io_req_valid & _alloc_T_1; // @[MissQueue.scala 531:42]
  wire  _entries_0_io_primary_valid_T_3 = _entries_0_io_primary_valid_T_1 & _alloc_T; // @[MissQueue.scala 532:16]
  wire  _GEN_10 = io_mem_grant_bits_source == 5'h0 & entries_0_io_mem_grant_ready; // @[MissQueue.scala 520:22 540:47 541:24]
  wire  former_primary_ready = |entries_0_io_primary_ready; // @[MissQueue.scala 527:64]
  wire  _entries_1_io_primary_valid_T_4 = ~former_primary_ready; // @[MissQueue.scala 534:9]
  wire  _entries_1_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_1_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_21 = io_mem_grant_bits_source == 5'h1 ? entries_1_io_mem_grant_ready : _GEN_10; // @[MissQueue.scala 540:47 541:24]
  wire  former_primary_ready_1 = |alloc_hi_hi; // @[MissQueue.scala 527:64]
  wire  _entries_2_io_primary_valid_T_4 = ~former_primary_ready_1; // @[MissQueue.scala 534:9]
  wire  _entries_2_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_2_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_32 = io_mem_grant_bits_source == 5'h2 ? entries_2_io_mem_grant_ready : _GEN_21; // @[MissQueue.scala 540:47 541:24]
  wire [2:0] _former_primary_ready_T_1 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_2 = |_former_primary_ready_T_1; // @[MissQueue.scala 527:64]
  wire  _entries_3_io_primary_valid_T_4 = ~former_primary_ready_2; // @[MissQueue.scala 534:9]
  wire  _entries_3_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_3_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_43 = io_mem_grant_bits_source == 5'h3 ? entries_3_io_mem_grant_ready : _GEN_32; // @[MissQueue.scala 540:47 541:24]
  wire  former_primary_ready_3 = |alloc_hi; // @[MissQueue.scala 527:64]
  wire  _entries_4_io_primary_valid_T_4 = ~former_primary_ready_3; // @[MissQueue.scala 534:9]
  wire  _entries_4_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_4_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_54 = io_mem_grant_bits_source == 5'h4 ? entries_4_io_mem_grant_ready : _GEN_43; // @[MissQueue.scala 540:47 541:24]
  wire [4:0] _former_primary_ready_T_3 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_4 = |_former_primary_ready_T_3; // @[MissQueue.scala 527:64]
  wire  _entries_5_io_primary_valid_T_4 = ~former_primary_ready_4; // @[MissQueue.scala 534:9]
  wire  _entries_5_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_5_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_65 = io_mem_grant_bits_source == 5'h5 ? entries_5_io_mem_grant_ready : _GEN_54; // @[MissQueue.scala 540:47 541:24]
  wire [5:0] _former_primary_ready_T_4 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_5 = |_former_primary_ready_T_4; // @[MissQueue.scala 527:64]
  wire  _entries_6_io_primary_valid_T_4 = ~former_primary_ready_5; // @[MissQueue.scala 534:9]
  wire  _entries_6_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_6_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire  _GEN_76 = io_mem_grant_bits_source == 5'h6 ? entries_6_io_mem_grant_ready : _GEN_65; // @[MissQueue.scala 540:47 541:24]
  wire [6:0] _former_primary_ready_T_5 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,
    entries_6_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_6 = |_former_primary_ready_T_5; // @[MissQueue.scala 527:64]
  wire  _entries_7_io_primary_valid_T_4 = ~former_primary_ready_6; // @[MissQueue.scala 534:9]
  wire  _entries_7_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_7_io_primary_valid_T_4; // @[MissQueue.scala 533:17]
  wire [7:0] _io_refill_to_ldq_valid_T = {entries_0_io_refill_to_ldq_valid,entries_1_io_refill_to_ldq_valid,
    entries_2_io_refill_to_ldq_valid,entries_3_io_refill_to_ldq_valid,entries_4_io_refill_to_ldq_valid,
    entries_5_io_refill_to_ldq_valid,entries_6_io_refill_to_ldq_valid,entries_7_io_refill_to_ldq_valid}; // @[Cat.scala 31:58]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_1 = entries_0_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_2 = {entries_0_io_refill_to_ldq_bits_addr,
    entries_0_io_refill_to_ldq_bits_data,entries_0_io_refill_to_ldq_bits_error,entries_0_io_refill_to_ldq_bits_data_raw,
    entries_0_io_refill_to_ldq_bits_hasdata,entries_0_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_3 = _io_refill_to_ldq_bits_xs_T_1 & _io_refill_to_ldq_bits_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_0_refill_done = _io_refill_to_ldq_bits_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_0_hasdata = _io_refill_to_ldq_bits_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_0_data_raw = _io_refill_to_ldq_bits_xs_T_3[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_0_error = _io_refill_to_ldq_bits_xs_T_3[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_0_data = _io_refill_to_ldq_bits_xs_T_3[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_0_addr = _io_refill_to_ldq_bits_xs_T_3[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_11 = entries_1_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_12 = {entries_1_io_refill_to_ldq_bits_addr,
    entries_1_io_refill_to_ldq_bits_data,entries_1_io_refill_to_ldq_bits_error,entries_1_io_refill_to_ldq_bits_data_raw,
    entries_1_io_refill_to_ldq_bits_hasdata,entries_1_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_13 = _io_refill_to_ldq_bits_xs_T_11 & _io_refill_to_ldq_bits_xs_T_12; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_1_refill_done = _io_refill_to_ldq_bits_xs_T_13[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_1_hasdata = _io_refill_to_ldq_bits_xs_T_13[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_1_data_raw = _io_refill_to_ldq_bits_xs_T_13[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_1_error = _io_refill_to_ldq_bits_xs_T_13[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_1_data = _io_refill_to_ldq_bits_xs_T_13[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_1_addr = _io_refill_to_ldq_bits_xs_T_13[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_21 = entries_2_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_22 = {entries_2_io_refill_to_ldq_bits_addr,
    entries_2_io_refill_to_ldq_bits_data,entries_2_io_refill_to_ldq_bits_error,entries_2_io_refill_to_ldq_bits_data_raw,
    entries_2_io_refill_to_ldq_bits_hasdata,entries_2_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_23 = _io_refill_to_ldq_bits_xs_T_21 & _io_refill_to_ldq_bits_xs_T_22; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_2_refill_done = _io_refill_to_ldq_bits_xs_T_23[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_2_hasdata = _io_refill_to_ldq_bits_xs_T_23[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_2_data_raw = _io_refill_to_ldq_bits_xs_T_23[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_2_error = _io_refill_to_ldq_bits_xs_T_23[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_2_data = _io_refill_to_ldq_bits_xs_T_23[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_2_addr = _io_refill_to_ldq_bits_xs_T_23[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_31 = entries_3_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_32 = {entries_3_io_refill_to_ldq_bits_addr,
    entries_3_io_refill_to_ldq_bits_data,entries_3_io_refill_to_ldq_bits_error,entries_3_io_refill_to_ldq_bits_data_raw,
    entries_3_io_refill_to_ldq_bits_hasdata,entries_3_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_33 = _io_refill_to_ldq_bits_xs_T_31 & _io_refill_to_ldq_bits_xs_T_32; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_3_refill_done = _io_refill_to_ldq_bits_xs_T_33[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_3_hasdata = _io_refill_to_ldq_bits_xs_T_33[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_3_data_raw = _io_refill_to_ldq_bits_xs_T_33[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_3_error = _io_refill_to_ldq_bits_xs_T_33[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_3_data = _io_refill_to_ldq_bits_xs_T_33[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_3_addr = _io_refill_to_ldq_bits_xs_T_33[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_41 = entries_4_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_42 = {entries_4_io_refill_to_ldq_bits_addr,
    entries_4_io_refill_to_ldq_bits_data,entries_4_io_refill_to_ldq_bits_error,entries_4_io_refill_to_ldq_bits_data_raw,
    entries_4_io_refill_to_ldq_bits_hasdata,entries_4_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_43 = _io_refill_to_ldq_bits_xs_T_41 & _io_refill_to_ldq_bits_xs_T_42; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_4_refill_done = _io_refill_to_ldq_bits_xs_T_43[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_4_hasdata = _io_refill_to_ldq_bits_xs_T_43[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_4_data_raw = _io_refill_to_ldq_bits_xs_T_43[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_4_error = _io_refill_to_ldq_bits_xs_T_43[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_4_data = _io_refill_to_ldq_bits_xs_T_43[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_4_addr = _io_refill_to_ldq_bits_xs_T_43[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_51 = entries_5_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_52 = {entries_5_io_refill_to_ldq_bits_addr,
    entries_5_io_refill_to_ldq_bits_data,entries_5_io_refill_to_ldq_bits_error,entries_5_io_refill_to_ldq_bits_data_raw,
    entries_5_io_refill_to_ldq_bits_hasdata,entries_5_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_53 = _io_refill_to_ldq_bits_xs_T_51 & _io_refill_to_ldq_bits_xs_T_52; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_5_refill_done = _io_refill_to_ldq_bits_xs_T_53[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_5_hasdata = _io_refill_to_ldq_bits_xs_T_53[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_5_data_raw = _io_refill_to_ldq_bits_xs_T_53[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_5_error = _io_refill_to_ldq_bits_xs_T_53[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_5_data = _io_refill_to_ldq_bits_xs_T_53[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_5_addr = _io_refill_to_ldq_bits_xs_T_53[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_61 = entries_6_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_62 = {entries_6_io_refill_to_ldq_bits_addr,
    entries_6_io_refill_to_ldq_bits_data,entries_6_io_refill_to_ldq_bits_error,entries_6_io_refill_to_ldq_bits_data_raw,
    entries_6_io_refill_to_ldq_bits_hasdata,entries_6_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_63 = _io_refill_to_ldq_bits_xs_T_61 & _io_refill_to_ldq_bits_xs_T_62; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_6_refill_done = _io_refill_to_ldq_bits_xs_T_63[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_6_hasdata = _io_refill_to_ldq_bits_xs_T_63[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_6_data_raw = _io_refill_to_ldq_bits_xs_T_63[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_6_error = _io_refill_to_ldq_bits_xs_T_63[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_6_data = _io_refill_to_ldq_bits_xs_T_63[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_6_addr = _io_refill_to_ldq_bits_xs_T_63[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_71 = entries_7_io_refill_to_ldq_valid ? 807'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
     : 807'h0; // @[Bitwise.scala 74:12]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_72 = {entries_7_io_refill_to_ldq_bits_addr,
    entries_7_io_refill_to_ldq_bits_data,entries_7_io_refill_to_ldq_bits_error,entries_7_io_refill_to_ldq_bits_data_raw,
    entries_7_io_refill_to_ldq_bits_hasdata,entries_7_io_refill_to_ldq_bits_refill_done}; // @[ParallelMux.scala 65:75]
  wire [806:0] _io_refill_to_ldq_bits_xs_T_73 = _io_refill_to_ldq_bits_xs_T_71 & _io_refill_to_ldq_bits_xs_T_72; // @[ParallelMux.scala 65:65]
  wire  io_refill_to_ldq_bits_xs_7_refill_done = _io_refill_to_ldq_bits_xs_T_73[0]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_7_hasdata = _io_refill_to_ldq_bits_xs_T_73[1]; // @[ParallelMux.scala 65:87]
  wire [511:0] io_refill_to_ldq_bits_xs_7_data_raw = _io_refill_to_ldq_bits_xs_T_73[513:2]; // @[ParallelMux.scala 65:87]
  wire  io_refill_to_ldq_bits_xs_7_error = _io_refill_to_ldq_bits_xs_T_73[514]; // @[ParallelMux.scala 65:87]
  wire [255:0] io_refill_to_ldq_bits_xs_7_data = _io_refill_to_ldq_bits_xs_T_73[770:515]; // @[ParallelMux.scala 65:87]
  wire [35:0] io_refill_to_ldq_bits_xs_7_addr = _io_refill_to_ldq_bits_xs_T_73[806:771]; // @[ParallelMux.scala 65:87]
  wire [806:0] _io_refill_to_ldq_bits_T = {io_refill_to_ldq_bits_xs_0_addr,io_refill_to_ldq_bits_xs_0_data,
    io_refill_to_ldq_bits_xs_0_error,io_refill_to_ldq_bits_xs_0_data_raw,io_refill_to_ldq_bits_xs_0_hasdata,
    io_refill_to_ldq_bits_xs_0_refill_done}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_1 = {io_refill_to_ldq_bits_xs_1_addr,io_refill_to_ldq_bits_xs_1_data,
    io_refill_to_ldq_bits_xs_1_error,io_refill_to_ldq_bits_xs_1_data_raw,io_refill_to_ldq_bits_xs_1_hasdata,
    io_refill_to_ldq_bits_xs_1_refill_done}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_2 = _io_refill_to_ldq_bits_T | _io_refill_to_ldq_bits_T_1; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_9 = {io_refill_to_ldq_bits_xs_2_addr,io_refill_to_ldq_bits_xs_2_data,
    io_refill_to_ldq_bits_xs_2_error,io_refill_to_ldq_bits_xs_2_data_raw,io_refill_to_ldq_bits_xs_2_hasdata,
    io_refill_to_ldq_bits_xs_2_refill_done}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_10 = {io_refill_to_ldq_bits_xs_3_addr,io_refill_to_ldq_bits_xs_3_data,
    io_refill_to_ldq_bits_xs_3_error,io_refill_to_ldq_bits_xs_3_data_raw,io_refill_to_ldq_bits_xs_3_hasdata,
    io_refill_to_ldq_bits_xs_3_refill_done}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_11 = _io_refill_to_ldq_bits_T_9 | _io_refill_to_ldq_bits_T_10; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_18 = {_io_refill_to_ldq_bits_T_2[806:771],_io_refill_to_ldq_bits_T_2[770:515],
    _io_refill_to_ldq_bits_T_2[514],_io_refill_to_ldq_bits_T_2[513:2],_io_refill_to_ldq_bits_T_2[1],
    _io_refill_to_ldq_bits_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_19 = {_io_refill_to_ldq_bits_T_11[806:771],_io_refill_to_ldq_bits_T_11[770:515],
    _io_refill_to_ldq_bits_T_11[514],_io_refill_to_ldq_bits_T_11[513:2],_io_refill_to_ldq_bits_T_11[1],
    _io_refill_to_ldq_bits_T_11[0]}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_20 = _io_refill_to_ldq_bits_T_18 | _io_refill_to_ldq_bits_T_19; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_27 = {io_refill_to_ldq_bits_xs_4_addr,io_refill_to_ldq_bits_xs_4_data,
    io_refill_to_ldq_bits_xs_4_error,io_refill_to_ldq_bits_xs_4_data_raw,io_refill_to_ldq_bits_xs_4_hasdata,
    io_refill_to_ldq_bits_xs_4_refill_done}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_28 = {io_refill_to_ldq_bits_xs_5_addr,io_refill_to_ldq_bits_xs_5_data,
    io_refill_to_ldq_bits_xs_5_error,io_refill_to_ldq_bits_xs_5_data_raw,io_refill_to_ldq_bits_xs_5_hasdata,
    io_refill_to_ldq_bits_xs_5_refill_done}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_29 = _io_refill_to_ldq_bits_T_27 | _io_refill_to_ldq_bits_T_28; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_36 = {io_refill_to_ldq_bits_xs_6_addr,io_refill_to_ldq_bits_xs_6_data,
    io_refill_to_ldq_bits_xs_6_error,io_refill_to_ldq_bits_xs_6_data_raw,io_refill_to_ldq_bits_xs_6_hasdata,
    io_refill_to_ldq_bits_xs_6_refill_done}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_37 = {io_refill_to_ldq_bits_xs_7_addr,io_refill_to_ldq_bits_xs_7_data,
    io_refill_to_ldq_bits_xs_7_error,io_refill_to_ldq_bits_xs_7_data_raw,io_refill_to_ldq_bits_xs_7_hasdata,
    io_refill_to_ldq_bits_xs_7_refill_done}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_38 = _io_refill_to_ldq_bits_T_36 | _io_refill_to_ldq_bits_T_37; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_45 = {_io_refill_to_ldq_bits_T_29[806:771],_io_refill_to_ldq_bits_T_29[770:515],
    _io_refill_to_ldq_bits_T_29[514],_io_refill_to_ldq_bits_T_29[513:2],_io_refill_to_ldq_bits_T_29[1],
    _io_refill_to_ldq_bits_T_29[0]}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_46 = {_io_refill_to_ldq_bits_T_38[806:771],_io_refill_to_ldq_bits_T_38[770:515],
    _io_refill_to_ldq_bits_T_38[514],_io_refill_to_ldq_bits_T_38[513:2],_io_refill_to_ldq_bits_T_38[1],
    _io_refill_to_ldq_bits_T_38[0]}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_47 = _io_refill_to_ldq_bits_T_45 | _io_refill_to_ldq_bits_T_46; // @[ParallelMux.scala 37:55]
  wire [806:0] _io_refill_to_ldq_bits_T_54 = {_io_refill_to_ldq_bits_T_20[806:771],_io_refill_to_ldq_bits_T_20[770:515],
    _io_refill_to_ldq_bits_T_20[514],_io_refill_to_ldq_bits_T_20[513:2],_io_refill_to_ldq_bits_T_20[1],
    _io_refill_to_ldq_bits_T_20[0]}; // @[ParallelMux.scala 37:52]
  wire [806:0] _io_refill_to_ldq_bits_T_55 = {_io_refill_to_ldq_bits_T_47[806:771],_io_refill_to_ldq_bits_T_47[770:515],
    _io_refill_to_ldq_bits_T_47[514],_io_refill_to_ldq_bits_T_47[513:2],_io_refill_to_ldq_bits_T_47[1],
    _io_refill_to_ldq_bits_T_47[0]}; // @[ParallelMux.scala 37:65]
  wire [806:0] _io_refill_to_ldq_bits_T_56 = _io_refill_to_ldq_bits_T_54 | _io_refill_to_ldq_bits_T_55; // @[ParallelMux.scala 37:55]
  wire  opdata = ~entries_0_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_1 = ~entries_1_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_2 = ~entries_2_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_3 = ~entries_3_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_4 = ~entries_4_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_5 = ~entries_5_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_6 = ~entries_6_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  opdata_7 = ~entries_7_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & io_mem_acquire_ready; // @[Arbiter.scala 89:24]
  wire  out_earlyValid = entries_0_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_1_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_2_earlyValid = entries_2_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_3_earlyValid = entries_3_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_4_earlyValid = entries_4_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_5_earlyValid = entries_5_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_6_earlyValid = entries_6_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_7_earlyValid = entries_7_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [7:0] _readys_T = {out_7_earlyValid,out_6_earlyValid,out_5_earlyValid,out_4_earlyValid,out_3_earlyValid,
    out_2_earlyValid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  wire [8:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_3 = _readys_T | _readys_T_1[7:0]; // @[package.scala 244:43]
  wire [9:0] _readys_T_4 = {_readys_T_3, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_6 = _readys_T_3 | _readys_T_4[7:0]; // @[package.scala 244:43]
  wire [11:0] _readys_T_7 = {_readys_T_6, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_9 = _readys_T_6 | _readys_T_7[7:0]; // @[package.scala 244:43]
  wire [8:0] _readys_T_11 = {_readys_T_9, 1'h0}; // @[Arbiter.scala 16:78]
  wire [7:0] _readys_T_13 = ~_readys_T_11[7:0]; // @[Arbiter.scala 16:61]
  wire  readys__0 = _readys_T_13[0]; // @[Arbiter.scala 95:86]
  wire  readys__1 = _readys_T_13[1]; // @[Arbiter.scala 95:86]
  wire  readys__2 = _readys_T_13[2]; // @[Arbiter.scala 95:86]
  wire  readys__3 = _readys_T_13[3]; // @[Arbiter.scala 95:86]
  wire  readys__4 = _readys_T_13[4]; // @[Arbiter.scala 95:86]
  wire  readys__5 = _readys_T_13[5]; // @[Arbiter.scala 95:86]
  wire  readys__6 = _readys_T_13[6]; // @[Arbiter.scala 95:86]
  wire  readys__7 = _readys_T_13[7]; // @[Arbiter.scala 95:86]
  wire  earlyWinner__0 = readys__0 & out_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__2 = readys__2 & out_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__3 = readys__3 & out_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__4 = readys__4 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__5 = readys__5 & out_5_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__6 = readys__6 & out_6_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__7 = readys__7 & out_7_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_74 = out_earlyValid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid | out_4_earlyValid |
    out_5_earlyValid | out_6_earlyValid | out_7_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & opdata; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & opdata_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner__2 & opdata_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3 = earlyWinner__3 & opdata_3; // @[Arbiter.scala 111:73]
  wire  maskedBeats_4 = earlyWinner__4 & opdata_4; // @[Arbiter.scala 111:73]
  wire  maskedBeats_5 = earlyWinner__5 & opdata_5; // @[Arbiter.scala 111:73]
  wire  maskedBeats_6 = earlyWinner__6 & opdata_6; // @[Arbiter.scala 111:73]
  wire  maskedBeats_7 = earlyWinner__7 & opdata_7; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2 | maskedBeats_3 | maskedBeats_4 | maskedBeats_5 |
    maskedBeats_6 | maskedBeats_7; // @[Arbiter.scala 112:44]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  reg  state__2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__2 = idle ? earlyWinner__2 : state__2; // @[Arbiter.scala 117:30]
  reg  state__3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__3 = idle ? earlyWinner__3 : state__3; // @[Arbiter.scala 117:30]
  reg  state__4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__4 = idle ? earlyWinner__4 : state__4; // @[Arbiter.scala 117:30]
  reg  state__5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__5 = idle ? earlyWinner__5 : state__5; // @[Arbiter.scala 117:30]
  reg  state__6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__6 = idle ? earlyWinner__6 : state__6; // @[Arbiter.scala 117:30]
  reg  state__7; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__7 = idle ? earlyWinner__7 : state__7; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_21 = state__0 & out_earlyValid | state__1 & out_1_earlyValid | state__2 &
    out_2_earlyValid | state__3 & out_3_earlyValid | state__4 & out_4_earlyValid | state__5 & out_5_earlyValid |
    state__6 & out_6_earlyValid | state__7 & out_7_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_74 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_mem_acquire_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  allowed__2 = idle ? readys__2 : state__2; // @[Arbiter.scala 121:24]
  wire  allowed__3 = idle ? readys__3 : state__3; // @[Arbiter.scala 121:24]
  wire  allowed__4 = idle ? readys__4 : state__4; // @[Arbiter.scala 121:24]
  wire  allowed__5 = idle ? readys__5 : state__5; // @[Arbiter.scala 121:24]
  wire  allowed__6 = idle ? readys__6 : state__6; // @[Arbiter.scala 121:24]
  wire  allowed__7 = idle ? readys__7 : state__7; // @[Arbiter.scala 121:24]
  wire [31:0] _T_136 = muxStateEarly__0 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_137 = muxStateEarly__1 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_138 = muxStateEarly__2 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_139 = muxStateEarly__3 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_140 = muxStateEarly__4 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_141 = muxStateEarly__5 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_142 = muxStateEarly__6 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_143 = muxStateEarly__7 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_144 = _T_136 | _T_137; // @[Mux.scala 27:73]
  wire [31:0] _T_145 = _T_144 | _T_138; // @[Mux.scala 27:73]
  wire [31:0] _T_146 = _T_145 | _T_139; // @[Mux.scala 27:73]
  wire [31:0] _T_147 = _T_146 | _T_140; // @[Mux.scala 27:73]
  wire [31:0] _T_148 = _T_147 | _T_141; // @[Mux.scala 27:73]
  wire [31:0] _T_149 = _T_148 | _T_142; // @[Mux.scala 27:73]
  wire [1:0] out_bits_user_alias = entries_0_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_196 = muxStateEarly__0 ? out_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_1_bits_user_alias = entries_1_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_197 = muxStateEarly__1 ? out_1_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_2_bits_user_alias = entries_2_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_198 = muxStateEarly__2 ? out_2_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_3_bits_user_alias = entries_3_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_199 = muxStateEarly__3 ? out_3_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_4_bits_user_alias = entries_4_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_200 = muxStateEarly__4 ? out_4_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_5_bits_user_alias = entries_5_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_201 = muxStateEarly__5 ? out_5_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_6_bits_user_alias = entries_6_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_202 = muxStateEarly__6 ? out_6_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_7_bits_user_alias = entries_7_io_mem_acquire_bits_user_alias; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_203 = muxStateEarly__7 ? out_7_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_204 = _T_196 | _T_197; // @[Mux.scala 27:73]
  wire [1:0] _T_205 = _T_204 | _T_198; // @[Mux.scala 27:73]
  wire [1:0] _T_206 = _T_205 | _T_199; // @[Mux.scala 27:73]
  wire [1:0] _T_207 = _T_206 | _T_200; // @[Mux.scala 27:73]
  wire [1:0] _T_208 = _T_207 | _T_201; // @[Mux.scala 27:73]
  wire [1:0] _T_209 = _T_208 | _T_202; // @[Mux.scala 27:73]
  wire [35:0] out_bits_address = entries_0_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_211 = muxStateEarly__0 ? out_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_1_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_212 = muxStateEarly__1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_bits_address = entries_2_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_213 = muxStateEarly__2 ? out_2_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_3_bits_address = entries_3_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_214 = muxStateEarly__3 ? out_3_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_4_bits_address = entries_4_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_215 = muxStateEarly__4 ? out_4_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_5_bits_address = entries_5_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_216 = muxStateEarly__5 ? out_5_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_6_bits_address = entries_6_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_217 = muxStateEarly__6 ? out_6_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_7_bits_address = entries_7_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_218 = muxStateEarly__7 ? out_7_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_219 = _T_211 | _T_212; // @[Mux.scala 27:73]
  wire [35:0] _T_220 = _T_219 | _T_213; // @[Mux.scala 27:73]
  wire [35:0] _T_221 = _T_220 | _T_214; // @[Mux.scala 27:73]
  wire [35:0] _T_222 = _T_221 | _T_215; // @[Mux.scala 27:73]
  wire [35:0] _T_223 = _T_222 | _T_216; // @[Mux.scala 27:73]
  wire [35:0] _T_224 = _T_223 | _T_217; // @[Mux.scala 27:73]
  wire [4:0] out_bits_source = entries_0_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_226 = muxStateEarly__0 ? out_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_1_bits_source = entries_1_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_227 = muxStateEarly__1 ? out_1_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_2_bits_source = entries_2_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_228 = muxStateEarly__2 ? out_2_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_3_bits_source = entries_3_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_229 = muxStateEarly__3 ? out_3_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_4_bits_source = entries_4_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_230 = muxStateEarly__4 ? out_4_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_5_bits_source = entries_5_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_231 = muxStateEarly__5 ? out_5_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_6_bits_source = entries_6_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_232 = muxStateEarly__6 ? out_6_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_7_bits_source = entries_7_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_233 = muxStateEarly__7 ? out_7_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_234 = _T_226 | _T_227; // @[Mux.scala 27:73]
  wire [4:0] _T_235 = _T_234 | _T_228; // @[Mux.scala 27:73]
  wire [4:0] _T_236 = _T_235 | _T_229; // @[Mux.scala 27:73]
  wire [4:0] _T_237 = _T_236 | _T_230; // @[Mux.scala 27:73]
  wire [4:0] _T_238 = _T_237 | _T_231; // @[Mux.scala 27:73]
  wire [4:0] _T_239 = _T_238 | _T_232; // @[Mux.scala 27:73]
  wire [2:0] _T_241 = muxStateEarly__0 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_242 = muxStateEarly__1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_243 = muxStateEarly__2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_244 = muxStateEarly__3 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_245 = muxStateEarly__4 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_246 = muxStateEarly__5 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_247 = muxStateEarly__6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_248 = muxStateEarly__7 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_249 = _T_241 | _T_242; // @[Mux.scala 27:73]
  wire [2:0] _T_250 = _T_249 | _T_243; // @[Mux.scala 27:73]
  wire [2:0] _T_251 = _T_250 | _T_244; // @[Mux.scala 27:73]
  wire [2:0] _T_252 = _T_251 | _T_245; // @[Mux.scala 27:73]
  wire [2:0] _T_253 = _T_252 | _T_246; // @[Mux.scala 27:73]
  wire [2:0] _T_254 = _T_253 | _T_247; // @[Mux.scala 27:73]
  wire [2:0] out_bits_param = entries_0_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_256 = muxStateEarly__0 ? out_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_param = entries_1_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_257 = muxStateEarly__1 ? out_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_param = entries_2_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_258 = muxStateEarly__2 ? out_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_param = entries_3_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_259 = muxStateEarly__3 ? out_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_param = entries_4_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_260 = muxStateEarly__4 ? out_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_param = entries_5_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_261 = muxStateEarly__5 ? out_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_param = entries_6_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_262 = muxStateEarly__6 ? out_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_param = entries_7_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_263 = muxStateEarly__7 ? out_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_264 = _T_256 | _T_257; // @[Mux.scala 27:73]
  wire [2:0] _T_265 = _T_264 | _T_258; // @[Mux.scala 27:73]
  wire [2:0] _T_266 = _T_265 | _T_259; // @[Mux.scala 27:73]
  wire [2:0] _T_267 = _T_266 | _T_260; // @[Mux.scala 27:73]
  wire [2:0] _T_268 = _T_267 | _T_261; // @[Mux.scala 27:73]
  wire [2:0] _T_269 = _T_268 | _T_262; // @[Mux.scala 27:73]
  wire [2:0] out_bits_opcode = entries_0_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_271 = muxStateEarly__0 ? out_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_opcode = entries_1_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_272 = muxStateEarly__1 ? out_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_opcode = entries_2_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_273 = muxStateEarly__2 ? out_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_opcode = entries_3_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_274 = muxStateEarly__3 ? out_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_opcode = entries_4_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_275 = muxStateEarly__4 ? out_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_opcode = entries_5_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_276 = muxStateEarly__5 ? out_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_opcode = entries_6_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_277 = muxStateEarly__6 ? out_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_opcode = entries_7_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_278 = muxStateEarly__7 ? out_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_279 = _T_271 | _T_272; // @[Mux.scala 27:73]
  wire [2:0] _T_280 = _T_279 | _T_273; // @[Mux.scala 27:73]
  wire [2:0] _T_281 = _T_280 | _T_274; // @[Mux.scala 27:73]
  wire [2:0] _T_282 = _T_281 | _T_275; // @[Mux.scala 27:73]
  wire [2:0] _T_283 = _T_282 | _T_276; // @[Mux.scala 27:73]
  wire [2:0] _T_284 = _T_283 | _T_277; // @[Mux.scala 27:73]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  latch_1 = idle_1 & io_mem_finish_ready; // @[Arbiter.scala 89:24]
  wire  out_9_earlyValid = entries_0_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_10_earlyValid = entries_1_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_11_earlyValid = entries_2_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_12_earlyValid = entries_3_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_13_earlyValid = entries_4_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_14_earlyValid = entries_5_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_15_earlyValid = entries_6_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_16_earlyValid = entries_7_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [7:0] _readys_T_22 = {out_16_earlyValid,out_15_earlyValid,out_14_earlyValid,out_13_earlyValid,out_12_earlyValid,
    out_11_earlyValid,out_10_earlyValid,out_9_earlyValid}; // @[Cat.scala 31:58]
  wire [8:0] _readys_T_23 = {_readys_T_22, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_25 = _readys_T_22 | _readys_T_23[7:0]; // @[package.scala 244:43]
  wire [9:0] _readys_T_26 = {_readys_T_25, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_28 = _readys_T_25 | _readys_T_26[7:0]; // @[package.scala 244:43]
  wire [11:0] _readys_T_29 = {_readys_T_28, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_T_31 = _readys_T_28 | _readys_T_29[7:0]; // @[package.scala 244:43]
  wire [8:0] _readys_T_33 = {_readys_T_31, 1'h0}; // @[Arbiter.scala 16:78]
  wire [7:0] _readys_T_35 = ~_readys_T_33[7:0]; // @[Arbiter.scala 16:61]
  wire  readys_1_0 = _readys_T_35[0]; // @[Arbiter.scala 95:86]
  wire  readys_1_1 = _readys_T_35[1]; // @[Arbiter.scala 95:86]
  wire  readys_1_2 = _readys_T_35[2]; // @[Arbiter.scala 95:86]
  wire  readys_1_3 = _readys_T_35[3]; // @[Arbiter.scala 95:86]
  wire  readys_1_4 = _readys_T_35[4]; // @[Arbiter.scala 95:86]
  wire  readys_1_5 = _readys_T_35[5]; // @[Arbiter.scala 95:86]
  wire  readys_1_6 = _readys_T_35[6]; // @[Arbiter.scala 95:86]
  wire  readys_1_7 = _readys_T_35[7]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_0 = readys_1_0 & out_9_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & out_10_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_2 = readys_1_2 & out_11_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_3 = readys_1_3 & out_12_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_4 = readys_1_4 & out_13_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_5 = readys_1_5 & out_14_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_6 = readys_1_6 & out_15_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_7 = readys_1_7 & out_16_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_326 = out_9_earlyValid | out_10_earlyValid | out_11_earlyValid | out_12_earlyValid | out_13_earlyValid |
    out_14_earlyValid | out_15_earlyValid | out_16_earlyValid; // @[Arbiter.scala 107:36]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  reg  state_1_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 117:30]
  reg  state_1_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_3 = idle_1 ? earlyWinner_1_3 : state_1_3; // @[Arbiter.scala 117:30]
  reg  state_1_4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_4 = idle_1 ? earlyWinner_1_4 : state_1_4; // @[Arbiter.scala 117:30]
  reg  state_1_5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_5 = idle_1 ? earlyWinner_1_5 : state_1_5; // @[Arbiter.scala 117:30]
  reg  state_1_6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_6 = idle_1 ? earlyWinner_1_6 : state_1_6; // @[Arbiter.scala 117:30]
  reg  state_1_7; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_7 = idle_1 ? earlyWinner_1_7 : state_1_7; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_44 = state_1_0 & out_9_earlyValid | state_1_1 & out_10_earlyValid | state_1_2 &
    out_11_earlyValid | state_1_3 & out_12_earlyValid | state_1_4 & out_13_earlyValid | state_1_5 & out_14_earlyValid |
    state_1_6 & out_15_earlyValid | state_1_7 & out_16_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_1_earlyValid = idle_1 ? _T_326 : _sink_ACancel_earlyValid_T_44; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = io_mem_finish_ready & sink_ACancel_1_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 121:24]
  wire  allowed_1_3 = idle_1 ? readys_1_3 : state_1_3; // @[Arbiter.scala 121:24]
  wire  allowed_1_4 = idle_1 ? readys_1_4 : state_1_4; // @[Arbiter.scala 121:24]
  wire  allowed_1_5 = idle_1 ? readys_1_5 : state_1_5; // @[Arbiter.scala 121:24]
  wire  allowed_1_6 = idle_1 ? readys_1_6 : state_1_6; // @[Arbiter.scala 121:24]
  wire  allowed_1_7 = idle_1 ? readys_1_7 : state_1_7; // @[Arbiter.scala 121:24]
  wire [4:0] out_9_bits_sink = entries_0_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_358 = muxStateEarly_1_0 ? out_9_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_10_bits_sink = entries_1_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_359 = muxStateEarly_1_1 ? out_10_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_11_bits_sink = entries_2_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_360 = muxStateEarly_1_2 ? out_11_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_12_bits_sink = entries_3_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_361 = muxStateEarly_1_3 ? out_12_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_13_bits_sink = entries_4_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_362 = muxStateEarly_1_4 ? out_13_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_14_bits_sink = entries_5_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_363 = muxStateEarly_1_5 ? out_14_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_15_bits_sink = entries_6_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_364 = muxStateEarly_1_6 ? out_15_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_16_bits_sink = entries_7_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [4:0] _T_365 = muxStateEarly_1_7 ? out_16_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_366 = _T_358 | _T_359; // @[Mux.scala 27:73]
  wire [4:0] _T_367 = _T_366 | _T_360; // @[Mux.scala 27:73]
  wire [4:0] _T_368 = _T_367 | _T_361; // @[Mux.scala 27:73]
  wire [4:0] _T_369 = _T_368 | _T_362; // @[Mux.scala 27:73]
  wire [4:0] _T_370 = _T_369 | _T_363; // @[Mux.scala 27:73]
  wire [4:0] _T_371 = _T_370 | _T_364; // @[Mux.scala 27:73]
  wire [7:0] _io_probe_block_T = {probe_block_vec_0,probe_block_vec_1,probe_block_vec_2,probe_block_vec_3,
    probe_block_vec_4,probe_block_vec_5,probe_block_vec_6,probe_block_vec_7}; // @[Cat.scala 31:58]
  wire  _T_386 = ~entries_0_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_387 = ~entries_1_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_388 = ~entries_2_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_389 = ~entries_3_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_390 = ~entries_4_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_391 = ~entries_5_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_392 = ~entries_6_io_primary_ready; // @[MissQueue.scala 594:64]
  wire  _T_393 = ~entries_7_io_primary_ready; // @[MissQueue.scala 594:64]
  wire [1:0] _T_394 = _T_386 + _T_387; // @[Bitwise.scala 48:55]
  wire [1:0] _T_396 = _T_388 + _T_389; // @[Bitwise.scala 48:55]
  wire [2:0] _T_398 = _T_394 + _T_396; // @[Bitwise.scala 48:55]
  wire [1:0] _T_400 = _T_390 + _T_391; // @[Bitwise.scala 48:55]
  wire [1:0] _T_402 = _T_392 + _T_393; // @[Bitwise.scala 48:55]
  wire [2:0] _T_404 = _T_400 + _T_402; // @[Bitwise.scala 48:55]
  wire [3:0] _T_406 = _T_398 + _T_404; // @[Bitwise.scala 48:55]
  wire [3:0] _T_408 = 4'h8 / 3'h4; // @[MissQueue.scala 594:112]
  wire [3:0] _T_456 = 4'h8 / 2'h2; // @[MissQueue.scala 595:202]
  wire [5:0] _T_505 = 4'h8 * 2'h3; // @[MissQueue.scala 596:202]
  wire [5:0] _T_506 = _T_505 / 3'h4; // @[MissQueue.scala 596:206]
  wire [5:0] _GEN_89 = {{2'd0}, _T_406}; // @[MissQueue.scala 596:180]
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
  MissEntry entries_0 ( // @[MissQueue.scala 488:50]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_source(entries_0_io_req_bits_source),
    .io_req_bits_cmd(entries_0_io_req_bits_cmd),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_vaddr(entries_0_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_0_io_req_bits_way_en),
    .io_req_bits_store_data(entries_0_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_0_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_0_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_0_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_0_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_0_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_0_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_0_io_req_bits_replace_tag),
    .io_req_bits_id(entries_0_io_req_bits_id),
    .io_req_bits_cancel(entries_0_io_req_bits_cancel),
    .io_primary_valid(entries_0_io_primary_valid),
    .io_primary_ready(entries_0_io_primary_ready),
    .io_secondary_ready(entries_0_io_secondary_ready),
    .io_secondary_reject(entries_0_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_0_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_0_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_0_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_0_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_0_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_0_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_0_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_0_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_0_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_0_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_0_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_0_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_0_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_0_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_0_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_0_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_0_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_0_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_0_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_0_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_0_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_0_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_0_io_mem_finish_ready),
    .io_mem_finish_valid(entries_0_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_0_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_0_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_0_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_0_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_0_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_0_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_0_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_0_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_0_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_0_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_0_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_0_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_0_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_0_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_0_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_0_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_0_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_0_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_0_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_0_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_0_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_0_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_0_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_0_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_0_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_0_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_0_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_0_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_0_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_0_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_0_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_0_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_0_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_0_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_0_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_0_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_0_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_0_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_0_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_0_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_0_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_0_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_0_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_0_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_0_io_main_pipe_resp),
    .io_block_addr_valid(entries_0_io_block_addr_valid),
    .io_block_addr_bits(entries_0_io_block_addr_bits)
  );
  MissEntry entries_1 ( // @[MissQueue.scala 488:50]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_source(entries_1_io_req_bits_source),
    .io_req_bits_cmd(entries_1_io_req_bits_cmd),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_vaddr(entries_1_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_1_io_req_bits_way_en),
    .io_req_bits_store_data(entries_1_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_1_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_1_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_1_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_1_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_1_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_1_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_1_io_req_bits_replace_tag),
    .io_req_bits_id(entries_1_io_req_bits_id),
    .io_req_bits_cancel(entries_1_io_req_bits_cancel),
    .io_primary_valid(entries_1_io_primary_valid),
    .io_primary_ready(entries_1_io_primary_ready),
    .io_secondary_ready(entries_1_io_secondary_ready),
    .io_secondary_reject(entries_1_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_1_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_1_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_1_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_1_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_1_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_1_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_1_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_1_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_1_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_1_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_1_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_1_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_1_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_1_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_1_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_1_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_1_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_1_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_1_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_1_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_1_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_1_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_1_io_mem_finish_ready),
    .io_mem_finish_valid(entries_1_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_1_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_1_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_1_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_1_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_1_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_1_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_1_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_1_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_1_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_1_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_1_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_1_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_1_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_1_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_1_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_1_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_1_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_1_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_1_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_1_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_1_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_1_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_1_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_1_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_1_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_1_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_1_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_1_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_1_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_1_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_1_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_1_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_1_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_1_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_1_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_1_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_1_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_1_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_1_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_1_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_1_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_1_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_1_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_1_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_1_io_main_pipe_resp),
    .io_block_addr_valid(entries_1_io_block_addr_valid),
    .io_block_addr_bits(entries_1_io_block_addr_bits)
  );
  MissEntry entries_2 ( // @[MissQueue.scala 488:50]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_id(entries_2_io_id),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_source(entries_2_io_req_bits_source),
    .io_req_bits_cmd(entries_2_io_req_bits_cmd),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_bits_vaddr(entries_2_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_2_io_req_bits_way_en),
    .io_req_bits_store_data(entries_2_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_2_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_2_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_2_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_2_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_2_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_2_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_2_io_req_bits_replace_tag),
    .io_req_bits_id(entries_2_io_req_bits_id),
    .io_req_bits_cancel(entries_2_io_req_bits_cancel),
    .io_primary_valid(entries_2_io_primary_valid),
    .io_primary_ready(entries_2_io_primary_ready),
    .io_secondary_ready(entries_2_io_secondary_ready),
    .io_secondary_reject(entries_2_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_2_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_2_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_2_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_2_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_2_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_2_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_2_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_2_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_2_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_2_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_2_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_2_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_2_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_2_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_2_io_mem_grant_ready),
    .io_mem_grant_valid(entries_2_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_2_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_2_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_2_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_2_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_2_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_2_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_2_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_2_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_2_io_mem_finish_ready),
    .io_mem_finish_valid(entries_2_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_2_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_2_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_2_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_2_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_2_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_2_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_2_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_2_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_2_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_2_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_2_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_2_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_2_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_2_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_2_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_2_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_2_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_2_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_2_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_2_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_2_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_2_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_2_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_2_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_2_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_2_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_2_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_2_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_2_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_2_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_2_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_2_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_2_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_2_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_2_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_2_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_2_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_2_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_2_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_2_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_2_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_2_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_2_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_2_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_2_io_main_pipe_resp),
    .io_block_addr_valid(entries_2_io_block_addr_valid),
    .io_block_addr_bits(entries_2_io_block_addr_bits)
  );
  MissEntry entries_3 ( // @[MissQueue.scala 488:50]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_id(entries_3_io_id),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_source(entries_3_io_req_bits_source),
    .io_req_bits_cmd(entries_3_io_req_bits_cmd),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_bits_vaddr(entries_3_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_3_io_req_bits_way_en),
    .io_req_bits_store_data(entries_3_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_3_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_3_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_3_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_3_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_3_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_3_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_3_io_req_bits_replace_tag),
    .io_req_bits_id(entries_3_io_req_bits_id),
    .io_req_bits_cancel(entries_3_io_req_bits_cancel),
    .io_primary_valid(entries_3_io_primary_valid),
    .io_primary_ready(entries_3_io_primary_ready),
    .io_secondary_ready(entries_3_io_secondary_ready),
    .io_secondary_reject(entries_3_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_3_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_3_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_3_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_3_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_3_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_3_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_3_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_3_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_3_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_3_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_3_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_3_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_3_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_3_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_3_io_mem_grant_ready),
    .io_mem_grant_valid(entries_3_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_3_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_3_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_3_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_3_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_3_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_3_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_3_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_3_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_3_io_mem_finish_ready),
    .io_mem_finish_valid(entries_3_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_3_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_3_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_3_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_3_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_3_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_3_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_3_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_3_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_3_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_3_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_3_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_3_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_3_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_3_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_3_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_3_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_3_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_3_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_3_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_3_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_3_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_3_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_3_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_3_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_3_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_3_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_3_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_3_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_3_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_3_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_3_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_3_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_3_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_3_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_3_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_3_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_3_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_3_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_3_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_3_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_3_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_3_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_3_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_3_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_3_io_main_pipe_resp),
    .io_block_addr_valid(entries_3_io_block_addr_valid),
    .io_block_addr_bits(entries_3_io_block_addr_bits)
  );
  MissEntry entries_4 ( // @[MissQueue.scala 488:50]
    .clock(entries_4_clock),
    .reset(entries_4_reset),
    .io_id(entries_4_io_id),
    .io_req_valid(entries_4_io_req_valid),
    .io_req_bits_source(entries_4_io_req_bits_source),
    .io_req_bits_cmd(entries_4_io_req_bits_cmd),
    .io_req_bits_addr(entries_4_io_req_bits_addr),
    .io_req_bits_vaddr(entries_4_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_4_io_req_bits_way_en),
    .io_req_bits_store_data(entries_4_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_4_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_4_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_4_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_4_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_4_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_4_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_4_io_req_bits_replace_tag),
    .io_req_bits_id(entries_4_io_req_bits_id),
    .io_req_bits_cancel(entries_4_io_req_bits_cancel),
    .io_primary_valid(entries_4_io_primary_valid),
    .io_primary_ready(entries_4_io_primary_ready),
    .io_secondary_ready(entries_4_io_secondary_ready),
    .io_secondary_reject(entries_4_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_4_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_4_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_4_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_4_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_4_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_4_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_4_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_4_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_4_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_4_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_4_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_4_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_4_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_4_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_4_io_mem_grant_ready),
    .io_mem_grant_valid(entries_4_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_4_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_4_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_4_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_4_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_4_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_4_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_4_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_4_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_4_io_mem_finish_ready),
    .io_mem_finish_valid(entries_4_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_4_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_4_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_4_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_4_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_4_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_4_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_4_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_4_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_4_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_4_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_4_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_4_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_4_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_4_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_4_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_4_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_4_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_4_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_4_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_4_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_4_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_4_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_4_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_4_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_4_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_4_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_4_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_4_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_4_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_4_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_4_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_4_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_4_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_4_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_4_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_4_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_4_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_4_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_4_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_4_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_4_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_4_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_4_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_4_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_4_io_main_pipe_resp),
    .io_block_addr_valid(entries_4_io_block_addr_valid),
    .io_block_addr_bits(entries_4_io_block_addr_bits)
  );
  MissEntry entries_5 ( // @[MissQueue.scala 488:50]
    .clock(entries_5_clock),
    .reset(entries_5_reset),
    .io_id(entries_5_io_id),
    .io_req_valid(entries_5_io_req_valid),
    .io_req_bits_source(entries_5_io_req_bits_source),
    .io_req_bits_cmd(entries_5_io_req_bits_cmd),
    .io_req_bits_addr(entries_5_io_req_bits_addr),
    .io_req_bits_vaddr(entries_5_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_5_io_req_bits_way_en),
    .io_req_bits_store_data(entries_5_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_5_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_5_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_5_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_5_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_5_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_5_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_5_io_req_bits_replace_tag),
    .io_req_bits_id(entries_5_io_req_bits_id),
    .io_req_bits_cancel(entries_5_io_req_bits_cancel),
    .io_primary_valid(entries_5_io_primary_valid),
    .io_primary_ready(entries_5_io_primary_ready),
    .io_secondary_ready(entries_5_io_secondary_ready),
    .io_secondary_reject(entries_5_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_5_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_5_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_5_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_5_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_5_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_5_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_5_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_5_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_5_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_5_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_5_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_5_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_5_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_5_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_5_io_mem_grant_ready),
    .io_mem_grant_valid(entries_5_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_5_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_5_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_5_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_5_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_5_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_5_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_5_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_5_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_5_io_mem_finish_ready),
    .io_mem_finish_valid(entries_5_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_5_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_5_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_5_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_5_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_5_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_5_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_5_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_5_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_5_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_5_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_5_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_5_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_5_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_5_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_5_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_5_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_5_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_5_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_5_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_5_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_5_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_5_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_5_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_5_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_5_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_5_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_5_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_5_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_5_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_5_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_5_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_5_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_5_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_5_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_5_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_5_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_5_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_5_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_5_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_5_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_5_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_5_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_5_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_5_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_5_io_main_pipe_resp),
    .io_block_addr_valid(entries_5_io_block_addr_valid),
    .io_block_addr_bits(entries_5_io_block_addr_bits)
  );
  MissEntry entries_6 ( // @[MissQueue.scala 488:50]
    .clock(entries_6_clock),
    .reset(entries_6_reset),
    .io_id(entries_6_io_id),
    .io_req_valid(entries_6_io_req_valid),
    .io_req_bits_source(entries_6_io_req_bits_source),
    .io_req_bits_cmd(entries_6_io_req_bits_cmd),
    .io_req_bits_addr(entries_6_io_req_bits_addr),
    .io_req_bits_vaddr(entries_6_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_6_io_req_bits_way_en),
    .io_req_bits_store_data(entries_6_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_6_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_6_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_6_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_6_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_6_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_6_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_6_io_req_bits_replace_tag),
    .io_req_bits_id(entries_6_io_req_bits_id),
    .io_req_bits_cancel(entries_6_io_req_bits_cancel),
    .io_primary_valid(entries_6_io_primary_valid),
    .io_primary_ready(entries_6_io_primary_ready),
    .io_secondary_ready(entries_6_io_secondary_ready),
    .io_secondary_reject(entries_6_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_6_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_6_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_6_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_6_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_6_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_6_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_6_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_6_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_6_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_6_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_6_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_6_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_6_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_6_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_6_io_mem_grant_ready),
    .io_mem_grant_valid(entries_6_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_6_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_6_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_6_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_6_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_6_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_6_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_6_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_6_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_6_io_mem_finish_ready),
    .io_mem_finish_valid(entries_6_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_6_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_6_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_6_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_6_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_6_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_6_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_6_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_6_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_6_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_6_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_6_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_6_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_6_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_6_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_6_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_6_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_6_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_6_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_6_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_6_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_6_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_6_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_6_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_6_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_6_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_6_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_6_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_6_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_6_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_6_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_6_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_6_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_6_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_6_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_6_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_6_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_6_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_6_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_6_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_6_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_6_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_6_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_6_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_6_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_6_io_main_pipe_resp),
    .io_block_addr_valid(entries_6_io_block_addr_valid),
    .io_block_addr_bits(entries_6_io_block_addr_bits)
  );
  MissEntry entries_7 ( // @[MissQueue.scala 488:50]
    .clock(entries_7_clock),
    .reset(entries_7_reset),
    .io_id(entries_7_io_id),
    .io_req_valid(entries_7_io_req_valid),
    .io_req_bits_source(entries_7_io_req_bits_source),
    .io_req_bits_cmd(entries_7_io_req_bits_cmd),
    .io_req_bits_addr(entries_7_io_req_bits_addr),
    .io_req_bits_vaddr(entries_7_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_7_io_req_bits_way_en),
    .io_req_bits_store_data(entries_7_io_req_bits_store_data),
    .io_req_bits_store_mask(entries_7_io_req_bits_store_mask),
    .io_req_bits_word_idx(entries_7_io_req_bits_word_idx),
    .io_req_bits_amo_data(entries_7_io_req_bits_amo_data),
    .io_req_bits_amo_mask(entries_7_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(entries_7_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(entries_7_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(entries_7_io_req_bits_replace_tag),
    .io_req_bits_id(entries_7_io_req_bits_id),
    .io_req_bits_cancel(entries_7_io_req_bits_cancel),
    .io_primary_valid(entries_7_io_primary_valid),
    .io_primary_ready(entries_7_io_primary_ready),
    .io_secondary_ready(entries_7_io_secondary_ready),
    .io_secondary_reject(entries_7_io_secondary_reject),
    .io_refill_to_ldq_valid(entries_7_io_refill_to_ldq_valid),
    .io_refill_to_ldq_bits_addr(entries_7_io_refill_to_ldq_bits_addr),
    .io_refill_to_ldq_bits_data(entries_7_io_refill_to_ldq_bits_data),
    .io_refill_to_ldq_bits_error(entries_7_io_refill_to_ldq_bits_error),
    .io_refill_to_ldq_bits_data_raw(entries_7_io_refill_to_ldq_bits_data_raw),
    .io_refill_to_ldq_bits_hasdata(entries_7_io_refill_to_ldq_bits_hasdata),
    .io_refill_to_ldq_bits_refill_done(entries_7_io_refill_to_ldq_bits_refill_done),
    .io_mem_acquire_ready(entries_7_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_7_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_7_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(entries_7_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_7_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_7_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(entries_7_io_mem_acquire_bits_user_alias),
    .io_mem_grant_ready(entries_7_io_mem_grant_ready),
    .io_mem_grant_valid(entries_7_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_7_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_7_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_7_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_7_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_7_io_mem_grant_bits_denied),
    .io_mem_grant_bits_echo_blockisdirty(entries_7_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(entries_7_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_7_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_7_io_mem_finish_ready),
    .io_mem_finish_valid(entries_7_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_7_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_7_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_7_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_7_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_7_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_7_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_wmask(entries_7_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_7_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_7_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_7_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_7_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_7_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_7_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_7_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_7_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_7_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_bits_alias(entries_7_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_7_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_7_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_7_io_refill_pipe_req_bits_error),
    .io_refill_pipe_resp(entries_7_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_7_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_7_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_7_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_7_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_7_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_7_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_7_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_7_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_7_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_7_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_7_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_dirty(entries_7_io_main_pipe_req_bits_miss_dirty),
    .io_main_pipe_req_bits_miss_way_en(entries_7_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_7_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_7_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_7_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_7_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_7_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_7_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_7_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_7_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_7_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_7_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_7_io_main_pipe_resp),
    .io_block_addr_valid(entries_7_io_block_addr_valid),
    .io_block_addr_bits(entries_7_io_block_addr_bits)
  );
  Arbiter_22 refill_pipe_req_arb ( // @[DCacheWrapper.scala 181:21]
    .io_in_0_ready(refill_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(refill_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_source(refill_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_addr(refill_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_way_en(refill_pipe_req_arb_io_in_0_bits_way_en),
    .io_in_0_bits_wmask(refill_pipe_req_arb_io_in_0_bits_wmask),
    .io_in_0_bits_data_0(refill_pipe_req_arb_io_in_0_bits_data_0),
    .io_in_0_bits_data_1(refill_pipe_req_arb_io_in_0_bits_data_1),
    .io_in_0_bits_data_2(refill_pipe_req_arb_io_in_0_bits_data_2),
    .io_in_0_bits_data_3(refill_pipe_req_arb_io_in_0_bits_data_3),
    .io_in_0_bits_data_4(refill_pipe_req_arb_io_in_0_bits_data_4),
    .io_in_0_bits_data_5(refill_pipe_req_arb_io_in_0_bits_data_5),
    .io_in_0_bits_data_6(refill_pipe_req_arb_io_in_0_bits_data_6),
    .io_in_0_bits_data_7(refill_pipe_req_arb_io_in_0_bits_data_7),
    .io_in_0_bits_meta_coh_state(refill_pipe_req_arb_io_in_0_bits_meta_coh_state),
    .io_in_0_bits_alias(refill_pipe_req_arb_io_in_0_bits_alias),
    .io_in_0_bits_miss_id(refill_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_id(refill_pipe_req_arb_io_in_0_bits_id),
    .io_in_0_bits_error(refill_pipe_req_arb_io_in_0_bits_error),
    .io_in_1_ready(refill_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(refill_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_source(refill_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_addr(refill_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_way_en(refill_pipe_req_arb_io_in_1_bits_way_en),
    .io_in_1_bits_wmask(refill_pipe_req_arb_io_in_1_bits_wmask),
    .io_in_1_bits_data_0(refill_pipe_req_arb_io_in_1_bits_data_0),
    .io_in_1_bits_data_1(refill_pipe_req_arb_io_in_1_bits_data_1),
    .io_in_1_bits_data_2(refill_pipe_req_arb_io_in_1_bits_data_2),
    .io_in_1_bits_data_3(refill_pipe_req_arb_io_in_1_bits_data_3),
    .io_in_1_bits_data_4(refill_pipe_req_arb_io_in_1_bits_data_4),
    .io_in_1_bits_data_5(refill_pipe_req_arb_io_in_1_bits_data_5),
    .io_in_1_bits_data_6(refill_pipe_req_arb_io_in_1_bits_data_6),
    .io_in_1_bits_data_7(refill_pipe_req_arb_io_in_1_bits_data_7),
    .io_in_1_bits_meta_coh_state(refill_pipe_req_arb_io_in_1_bits_meta_coh_state),
    .io_in_1_bits_alias(refill_pipe_req_arb_io_in_1_bits_alias),
    .io_in_1_bits_miss_id(refill_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_id(refill_pipe_req_arb_io_in_1_bits_id),
    .io_in_1_bits_error(refill_pipe_req_arb_io_in_1_bits_error),
    .io_in_2_ready(refill_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(refill_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_source(refill_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_addr(refill_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_way_en(refill_pipe_req_arb_io_in_2_bits_way_en),
    .io_in_2_bits_wmask(refill_pipe_req_arb_io_in_2_bits_wmask),
    .io_in_2_bits_data_0(refill_pipe_req_arb_io_in_2_bits_data_0),
    .io_in_2_bits_data_1(refill_pipe_req_arb_io_in_2_bits_data_1),
    .io_in_2_bits_data_2(refill_pipe_req_arb_io_in_2_bits_data_2),
    .io_in_2_bits_data_3(refill_pipe_req_arb_io_in_2_bits_data_3),
    .io_in_2_bits_data_4(refill_pipe_req_arb_io_in_2_bits_data_4),
    .io_in_2_bits_data_5(refill_pipe_req_arb_io_in_2_bits_data_5),
    .io_in_2_bits_data_6(refill_pipe_req_arb_io_in_2_bits_data_6),
    .io_in_2_bits_data_7(refill_pipe_req_arb_io_in_2_bits_data_7),
    .io_in_2_bits_meta_coh_state(refill_pipe_req_arb_io_in_2_bits_meta_coh_state),
    .io_in_2_bits_alias(refill_pipe_req_arb_io_in_2_bits_alias),
    .io_in_2_bits_miss_id(refill_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_id(refill_pipe_req_arb_io_in_2_bits_id),
    .io_in_2_bits_error(refill_pipe_req_arb_io_in_2_bits_error),
    .io_in_3_ready(refill_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(refill_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_source(refill_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_addr(refill_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_way_en(refill_pipe_req_arb_io_in_3_bits_way_en),
    .io_in_3_bits_wmask(refill_pipe_req_arb_io_in_3_bits_wmask),
    .io_in_3_bits_data_0(refill_pipe_req_arb_io_in_3_bits_data_0),
    .io_in_3_bits_data_1(refill_pipe_req_arb_io_in_3_bits_data_1),
    .io_in_3_bits_data_2(refill_pipe_req_arb_io_in_3_bits_data_2),
    .io_in_3_bits_data_3(refill_pipe_req_arb_io_in_3_bits_data_3),
    .io_in_3_bits_data_4(refill_pipe_req_arb_io_in_3_bits_data_4),
    .io_in_3_bits_data_5(refill_pipe_req_arb_io_in_3_bits_data_5),
    .io_in_3_bits_data_6(refill_pipe_req_arb_io_in_3_bits_data_6),
    .io_in_3_bits_data_7(refill_pipe_req_arb_io_in_3_bits_data_7),
    .io_in_3_bits_meta_coh_state(refill_pipe_req_arb_io_in_3_bits_meta_coh_state),
    .io_in_3_bits_alias(refill_pipe_req_arb_io_in_3_bits_alias),
    .io_in_3_bits_miss_id(refill_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_id(refill_pipe_req_arb_io_in_3_bits_id),
    .io_in_3_bits_error(refill_pipe_req_arb_io_in_3_bits_error),
    .io_in_4_ready(refill_pipe_req_arb_io_in_4_ready),
    .io_in_4_valid(refill_pipe_req_arb_io_in_4_valid),
    .io_in_4_bits_source(refill_pipe_req_arb_io_in_4_bits_source),
    .io_in_4_bits_addr(refill_pipe_req_arb_io_in_4_bits_addr),
    .io_in_4_bits_way_en(refill_pipe_req_arb_io_in_4_bits_way_en),
    .io_in_4_bits_wmask(refill_pipe_req_arb_io_in_4_bits_wmask),
    .io_in_4_bits_data_0(refill_pipe_req_arb_io_in_4_bits_data_0),
    .io_in_4_bits_data_1(refill_pipe_req_arb_io_in_4_bits_data_1),
    .io_in_4_bits_data_2(refill_pipe_req_arb_io_in_4_bits_data_2),
    .io_in_4_bits_data_3(refill_pipe_req_arb_io_in_4_bits_data_3),
    .io_in_4_bits_data_4(refill_pipe_req_arb_io_in_4_bits_data_4),
    .io_in_4_bits_data_5(refill_pipe_req_arb_io_in_4_bits_data_5),
    .io_in_4_bits_data_6(refill_pipe_req_arb_io_in_4_bits_data_6),
    .io_in_4_bits_data_7(refill_pipe_req_arb_io_in_4_bits_data_7),
    .io_in_4_bits_meta_coh_state(refill_pipe_req_arb_io_in_4_bits_meta_coh_state),
    .io_in_4_bits_alias(refill_pipe_req_arb_io_in_4_bits_alias),
    .io_in_4_bits_miss_id(refill_pipe_req_arb_io_in_4_bits_miss_id),
    .io_in_4_bits_id(refill_pipe_req_arb_io_in_4_bits_id),
    .io_in_4_bits_error(refill_pipe_req_arb_io_in_4_bits_error),
    .io_in_5_ready(refill_pipe_req_arb_io_in_5_ready),
    .io_in_5_valid(refill_pipe_req_arb_io_in_5_valid),
    .io_in_5_bits_source(refill_pipe_req_arb_io_in_5_bits_source),
    .io_in_5_bits_addr(refill_pipe_req_arb_io_in_5_bits_addr),
    .io_in_5_bits_way_en(refill_pipe_req_arb_io_in_5_bits_way_en),
    .io_in_5_bits_wmask(refill_pipe_req_arb_io_in_5_bits_wmask),
    .io_in_5_bits_data_0(refill_pipe_req_arb_io_in_5_bits_data_0),
    .io_in_5_bits_data_1(refill_pipe_req_arb_io_in_5_bits_data_1),
    .io_in_5_bits_data_2(refill_pipe_req_arb_io_in_5_bits_data_2),
    .io_in_5_bits_data_3(refill_pipe_req_arb_io_in_5_bits_data_3),
    .io_in_5_bits_data_4(refill_pipe_req_arb_io_in_5_bits_data_4),
    .io_in_5_bits_data_5(refill_pipe_req_arb_io_in_5_bits_data_5),
    .io_in_5_bits_data_6(refill_pipe_req_arb_io_in_5_bits_data_6),
    .io_in_5_bits_data_7(refill_pipe_req_arb_io_in_5_bits_data_7),
    .io_in_5_bits_meta_coh_state(refill_pipe_req_arb_io_in_5_bits_meta_coh_state),
    .io_in_5_bits_alias(refill_pipe_req_arb_io_in_5_bits_alias),
    .io_in_5_bits_miss_id(refill_pipe_req_arb_io_in_5_bits_miss_id),
    .io_in_5_bits_id(refill_pipe_req_arb_io_in_5_bits_id),
    .io_in_5_bits_error(refill_pipe_req_arb_io_in_5_bits_error),
    .io_in_6_ready(refill_pipe_req_arb_io_in_6_ready),
    .io_in_6_valid(refill_pipe_req_arb_io_in_6_valid),
    .io_in_6_bits_source(refill_pipe_req_arb_io_in_6_bits_source),
    .io_in_6_bits_addr(refill_pipe_req_arb_io_in_6_bits_addr),
    .io_in_6_bits_way_en(refill_pipe_req_arb_io_in_6_bits_way_en),
    .io_in_6_bits_wmask(refill_pipe_req_arb_io_in_6_bits_wmask),
    .io_in_6_bits_data_0(refill_pipe_req_arb_io_in_6_bits_data_0),
    .io_in_6_bits_data_1(refill_pipe_req_arb_io_in_6_bits_data_1),
    .io_in_6_bits_data_2(refill_pipe_req_arb_io_in_6_bits_data_2),
    .io_in_6_bits_data_3(refill_pipe_req_arb_io_in_6_bits_data_3),
    .io_in_6_bits_data_4(refill_pipe_req_arb_io_in_6_bits_data_4),
    .io_in_6_bits_data_5(refill_pipe_req_arb_io_in_6_bits_data_5),
    .io_in_6_bits_data_6(refill_pipe_req_arb_io_in_6_bits_data_6),
    .io_in_6_bits_data_7(refill_pipe_req_arb_io_in_6_bits_data_7),
    .io_in_6_bits_meta_coh_state(refill_pipe_req_arb_io_in_6_bits_meta_coh_state),
    .io_in_6_bits_alias(refill_pipe_req_arb_io_in_6_bits_alias),
    .io_in_6_bits_miss_id(refill_pipe_req_arb_io_in_6_bits_miss_id),
    .io_in_6_bits_id(refill_pipe_req_arb_io_in_6_bits_id),
    .io_in_6_bits_error(refill_pipe_req_arb_io_in_6_bits_error),
    .io_in_7_ready(refill_pipe_req_arb_io_in_7_ready),
    .io_in_7_valid(refill_pipe_req_arb_io_in_7_valid),
    .io_in_7_bits_source(refill_pipe_req_arb_io_in_7_bits_source),
    .io_in_7_bits_addr(refill_pipe_req_arb_io_in_7_bits_addr),
    .io_in_7_bits_way_en(refill_pipe_req_arb_io_in_7_bits_way_en),
    .io_in_7_bits_wmask(refill_pipe_req_arb_io_in_7_bits_wmask),
    .io_in_7_bits_data_0(refill_pipe_req_arb_io_in_7_bits_data_0),
    .io_in_7_bits_data_1(refill_pipe_req_arb_io_in_7_bits_data_1),
    .io_in_7_bits_data_2(refill_pipe_req_arb_io_in_7_bits_data_2),
    .io_in_7_bits_data_3(refill_pipe_req_arb_io_in_7_bits_data_3),
    .io_in_7_bits_data_4(refill_pipe_req_arb_io_in_7_bits_data_4),
    .io_in_7_bits_data_5(refill_pipe_req_arb_io_in_7_bits_data_5),
    .io_in_7_bits_data_6(refill_pipe_req_arb_io_in_7_bits_data_6),
    .io_in_7_bits_data_7(refill_pipe_req_arb_io_in_7_bits_data_7),
    .io_in_7_bits_meta_coh_state(refill_pipe_req_arb_io_in_7_bits_meta_coh_state),
    .io_in_7_bits_alias(refill_pipe_req_arb_io_in_7_bits_alias),
    .io_in_7_bits_miss_id(refill_pipe_req_arb_io_in_7_bits_miss_id),
    .io_in_7_bits_id(refill_pipe_req_arb_io_in_7_bits_id),
    .io_in_7_bits_error(refill_pipe_req_arb_io_in_7_bits_error),
    .io_out_ready(refill_pipe_req_arb_io_out_ready),
    .io_out_valid(refill_pipe_req_arb_io_out_valid),
    .io_out_bits_source(refill_pipe_req_arb_io_out_bits_source),
    .io_out_bits_addr(refill_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_way_en(refill_pipe_req_arb_io_out_bits_way_en),
    .io_out_bits_wmask(refill_pipe_req_arb_io_out_bits_wmask),
    .io_out_bits_data_0(refill_pipe_req_arb_io_out_bits_data_0),
    .io_out_bits_data_1(refill_pipe_req_arb_io_out_bits_data_1),
    .io_out_bits_data_2(refill_pipe_req_arb_io_out_bits_data_2),
    .io_out_bits_data_3(refill_pipe_req_arb_io_out_bits_data_3),
    .io_out_bits_data_4(refill_pipe_req_arb_io_out_bits_data_4),
    .io_out_bits_data_5(refill_pipe_req_arb_io_out_bits_data_5),
    .io_out_bits_data_6(refill_pipe_req_arb_io_out_bits_data_6),
    .io_out_bits_data_7(refill_pipe_req_arb_io_out_bits_data_7),
    .io_out_bits_meta_coh_state(refill_pipe_req_arb_io_out_bits_meta_coh_state),
    .io_out_bits_alias(refill_pipe_req_arb_io_out_bits_alias),
    .io_out_bits_miss_id(refill_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_id(refill_pipe_req_arb_io_out_bits_id),
    .io_out_bits_error(refill_pipe_req_arb_io_out_bits_error)
  );
  PipelineRegModule pipelineReg ( // @[MemCommon.scala 167:29]
    .clock(pipelineReg_clock),
    .reset(pipelineReg_reset),
    .io_in_ready(pipelineReg_io_in_ready),
    .io_in_valid(pipelineReg_io_in_valid),
    .io_in_bits_source(pipelineReg_io_in_bits_source),
    .io_in_bits_addr(pipelineReg_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_io_in_bits_way_en),
    .io_in_bits_wmask(pipelineReg_io_in_bits_wmask),
    .io_in_bits_data_0(pipelineReg_io_in_bits_data_0),
    .io_in_bits_data_1(pipelineReg_io_in_bits_data_1),
    .io_in_bits_data_2(pipelineReg_io_in_bits_data_2),
    .io_in_bits_data_3(pipelineReg_io_in_bits_data_3),
    .io_in_bits_data_4(pipelineReg_io_in_bits_data_4),
    .io_in_bits_data_5(pipelineReg_io_in_bits_data_5),
    .io_in_bits_data_6(pipelineReg_io_in_bits_data_6),
    .io_in_bits_data_7(pipelineReg_io_in_bits_data_7),
    .io_in_bits_meta_coh_state(pipelineReg_io_in_bits_meta_coh_state),
    .io_in_bits_alias(pipelineReg_io_in_bits_alias),
    .io_in_bits_miss_id(pipelineReg_io_in_bits_miss_id),
    .io_in_bits_id(pipelineReg_io_in_bits_id),
    .io_in_bits_error(pipelineReg_io_in_bits_error),
    .io_out_ready(pipelineReg_io_out_ready),
    .io_out_valid(pipelineReg_io_out_valid),
    .io_out_bits_source(pipelineReg_io_out_bits_source),
    .io_out_bits_addr(pipelineReg_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_io_out_bits_way_en),
    .io_out_bits_wmask(pipelineReg_io_out_bits_wmask),
    .io_out_bits_data_0(pipelineReg_io_out_bits_data_0),
    .io_out_bits_data_1(pipelineReg_io_out_bits_data_1),
    .io_out_bits_data_2(pipelineReg_io_out_bits_data_2),
    .io_out_bits_data_3(pipelineReg_io_out_bits_data_3),
    .io_out_bits_data_4(pipelineReg_io_out_bits_data_4),
    .io_out_bits_data_5(pipelineReg_io_out_bits_data_5),
    .io_out_bits_data_6(pipelineReg_io_out_bits_data_6),
    .io_out_bits_data_7(pipelineReg_io_out_bits_data_7),
    .io_out_bits_meta_coh_state(pipelineReg_io_out_bits_meta_coh_state),
    .io_out_bits_alias(pipelineReg_io_out_bits_alias),
    .io_out_bits_miss_id(pipelineReg_io_out_bits_miss_id),
    .io_out_bits_id(pipelineReg_io_out_bits_id),
    .io_out_bits_error(pipelineReg_io_out_bits_error)
  );
  Arbiter_23 replace_pipe_req_arb ( // @[DCacheWrapper.scala 169:21]
    .io_in_0_ready(replace_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(replace_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(replace_pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(replace_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(replace_pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(replace_pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(replace_pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_source(replace_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(replace_pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(replace_pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(replace_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(replace_pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(replace_pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(replace_pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(replace_pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(replace_pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(replace_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(replace_pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(replace_pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(replace_pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(replace_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(replace_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(replace_pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(replace_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(replace_pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(replace_pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(replace_pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_source(replace_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(replace_pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(replace_pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(replace_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(replace_pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(replace_pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(replace_pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(replace_pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(replace_pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(replace_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(replace_pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(replace_pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(replace_pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(replace_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(replace_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_miss(replace_pipe_req_arb_io_in_2_bits_miss),
    .io_in_2_bits_miss_id(replace_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_miss_param(replace_pipe_req_arb_io_in_2_bits_miss_param),
    .io_in_2_bits_miss_dirty(replace_pipe_req_arb_io_in_2_bits_miss_dirty),
    .io_in_2_bits_miss_way_en(replace_pipe_req_arb_io_in_2_bits_miss_way_en),
    .io_in_2_bits_source(replace_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(replace_pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(replace_pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(replace_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(replace_pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(replace_pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_word_idx(replace_pipe_req_arb_io_in_2_bits_word_idx),
    .io_in_2_bits_amo_data(replace_pipe_req_arb_io_in_2_bits_amo_data),
    .io_in_2_bits_amo_mask(replace_pipe_req_arb_io_in_2_bits_amo_mask),
    .io_in_2_bits_error(replace_pipe_req_arb_io_in_2_bits_error),
    .io_in_2_bits_replace(replace_pipe_req_arb_io_in_2_bits_replace),
    .io_in_2_bits_replace_way_en(replace_pipe_req_arb_io_in_2_bits_replace_way_en),
    .io_in_2_bits_id(replace_pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(replace_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(replace_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(replace_pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(replace_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(replace_pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(replace_pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(replace_pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_source(replace_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(replace_pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(replace_pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(replace_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(replace_pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(replace_pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(replace_pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(replace_pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(replace_pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(replace_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(replace_pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(replace_pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(replace_pipe_req_arb_io_in_3_bits_id),
    .io_in_4_ready(replace_pipe_req_arb_io_in_4_ready),
    .io_in_4_valid(replace_pipe_req_arb_io_in_4_valid),
    .io_in_4_bits_miss(replace_pipe_req_arb_io_in_4_bits_miss),
    .io_in_4_bits_miss_id(replace_pipe_req_arb_io_in_4_bits_miss_id),
    .io_in_4_bits_miss_param(replace_pipe_req_arb_io_in_4_bits_miss_param),
    .io_in_4_bits_miss_dirty(replace_pipe_req_arb_io_in_4_bits_miss_dirty),
    .io_in_4_bits_miss_way_en(replace_pipe_req_arb_io_in_4_bits_miss_way_en),
    .io_in_4_bits_source(replace_pipe_req_arb_io_in_4_bits_source),
    .io_in_4_bits_cmd(replace_pipe_req_arb_io_in_4_bits_cmd),
    .io_in_4_bits_vaddr(replace_pipe_req_arb_io_in_4_bits_vaddr),
    .io_in_4_bits_addr(replace_pipe_req_arb_io_in_4_bits_addr),
    .io_in_4_bits_store_data(replace_pipe_req_arb_io_in_4_bits_store_data),
    .io_in_4_bits_store_mask(replace_pipe_req_arb_io_in_4_bits_store_mask),
    .io_in_4_bits_word_idx(replace_pipe_req_arb_io_in_4_bits_word_idx),
    .io_in_4_bits_amo_data(replace_pipe_req_arb_io_in_4_bits_amo_data),
    .io_in_4_bits_amo_mask(replace_pipe_req_arb_io_in_4_bits_amo_mask),
    .io_in_4_bits_error(replace_pipe_req_arb_io_in_4_bits_error),
    .io_in_4_bits_replace(replace_pipe_req_arb_io_in_4_bits_replace),
    .io_in_4_bits_replace_way_en(replace_pipe_req_arb_io_in_4_bits_replace_way_en),
    .io_in_4_bits_id(replace_pipe_req_arb_io_in_4_bits_id),
    .io_in_5_ready(replace_pipe_req_arb_io_in_5_ready),
    .io_in_5_valid(replace_pipe_req_arb_io_in_5_valid),
    .io_in_5_bits_miss(replace_pipe_req_arb_io_in_5_bits_miss),
    .io_in_5_bits_miss_id(replace_pipe_req_arb_io_in_5_bits_miss_id),
    .io_in_5_bits_miss_param(replace_pipe_req_arb_io_in_5_bits_miss_param),
    .io_in_5_bits_miss_dirty(replace_pipe_req_arb_io_in_5_bits_miss_dirty),
    .io_in_5_bits_miss_way_en(replace_pipe_req_arb_io_in_5_bits_miss_way_en),
    .io_in_5_bits_source(replace_pipe_req_arb_io_in_5_bits_source),
    .io_in_5_bits_cmd(replace_pipe_req_arb_io_in_5_bits_cmd),
    .io_in_5_bits_vaddr(replace_pipe_req_arb_io_in_5_bits_vaddr),
    .io_in_5_bits_addr(replace_pipe_req_arb_io_in_5_bits_addr),
    .io_in_5_bits_store_data(replace_pipe_req_arb_io_in_5_bits_store_data),
    .io_in_5_bits_store_mask(replace_pipe_req_arb_io_in_5_bits_store_mask),
    .io_in_5_bits_word_idx(replace_pipe_req_arb_io_in_5_bits_word_idx),
    .io_in_5_bits_amo_data(replace_pipe_req_arb_io_in_5_bits_amo_data),
    .io_in_5_bits_amo_mask(replace_pipe_req_arb_io_in_5_bits_amo_mask),
    .io_in_5_bits_error(replace_pipe_req_arb_io_in_5_bits_error),
    .io_in_5_bits_replace(replace_pipe_req_arb_io_in_5_bits_replace),
    .io_in_5_bits_replace_way_en(replace_pipe_req_arb_io_in_5_bits_replace_way_en),
    .io_in_5_bits_id(replace_pipe_req_arb_io_in_5_bits_id),
    .io_in_6_ready(replace_pipe_req_arb_io_in_6_ready),
    .io_in_6_valid(replace_pipe_req_arb_io_in_6_valid),
    .io_in_6_bits_miss(replace_pipe_req_arb_io_in_6_bits_miss),
    .io_in_6_bits_miss_id(replace_pipe_req_arb_io_in_6_bits_miss_id),
    .io_in_6_bits_miss_param(replace_pipe_req_arb_io_in_6_bits_miss_param),
    .io_in_6_bits_miss_dirty(replace_pipe_req_arb_io_in_6_bits_miss_dirty),
    .io_in_6_bits_miss_way_en(replace_pipe_req_arb_io_in_6_bits_miss_way_en),
    .io_in_6_bits_source(replace_pipe_req_arb_io_in_6_bits_source),
    .io_in_6_bits_cmd(replace_pipe_req_arb_io_in_6_bits_cmd),
    .io_in_6_bits_vaddr(replace_pipe_req_arb_io_in_6_bits_vaddr),
    .io_in_6_bits_addr(replace_pipe_req_arb_io_in_6_bits_addr),
    .io_in_6_bits_store_data(replace_pipe_req_arb_io_in_6_bits_store_data),
    .io_in_6_bits_store_mask(replace_pipe_req_arb_io_in_6_bits_store_mask),
    .io_in_6_bits_word_idx(replace_pipe_req_arb_io_in_6_bits_word_idx),
    .io_in_6_bits_amo_data(replace_pipe_req_arb_io_in_6_bits_amo_data),
    .io_in_6_bits_amo_mask(replace_pipe_req_arb_io_in_6_bits_amo_mask),
    .io_in_6_bits_error(replace_pipe_req_arb_io_in_6_bits_error),
    .io_in_6_bits_replace(replace_pipe_req_arb_io_in_6_bits_replace),
    .io_in_6_bits_replace_way_en(replace_pipe_req_arb_io_in_6_bits_replace_way_en),
    .io_in_6_bits_id(replace_pipe_req_arb_io_in_6_bits_id),
    .io_in_7_ready(replace_pipe_req_arb_io_in_7_ready),
    .io_in_7_valid(replace_pipe_req_arb_io_in_7_valid),
    .io_in_7_bits_miss(replace_pipe_req_arb_io_in_7_bits_miss),
    .io_in_7_bits_miss_id(replace_pipe_req_arb_io_in_7_bits_miss_id),
    .io_in_7_bits_miss_param(replace_pipe_req_arb_io_in_7_bits_miss_param),
    .io_in_7_bits_miss_dirty(replace_pipe_req_arb_io_in_7_bits_miss_dirty),
    .io_in_7_bits_miss_way_en(replace_pipe_req_arb_io_in_7_bits_miss_way_en),
    .io_in_7_bits_source(replace_pipe_req_arb_io_in_7_bits_source),
    .io_in_7_bits_cmd(replace_pipe_req_arb_io_in_7_bits_cmd),
    .io_in_7_bits_vaddr(replace_pipe_req_arb_io_in_7_bits_vaddr),
    .io_in_7_bits_addr(replace_pipe_req_arb_io_in_7_bits_addr),
    .io_in_7_bits_store_data(replace_pipe_req_arb_io_in_7_bits_store_data),
    .io_in_7_bits_store_mask(replace_pipe_req_arb_io_in_7_bits_store_mask),
    .io_in_7_bits_word_idx(replace_pipe_req_arb_io_in_7_bits_word_idx),
    .io_in_7_bits_amo_data(replace_pipe_req_arb_io_in_7_bits_amo_data),
    .io_in_7_bits_amo_mask(replace_pipe_req_arb_io_in_7_bits_amo_mask),
    .io_in_7_bits_error(replace_pipe_req_arb_io_in_7_bits_error),
    .io_in_7_bits_replace(replace_pipe_req_arb_io_in_7_bits_replace),
    .io_in_7_bits_replace_way_en(replace_pipe_req_arb_io_in_7_bits_replace_way_en),
    .io_in_7_bits_id(replace_pipe_req_arb_io_in_7_bits_id),
    .io_out_ready(replace_pipe_req_arb_io_out_ready),
    .io_out_valid(replace_pipe_req_arb_io_out_valid),
    .io_out_bits_miss(replace_pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(replace_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(replace_pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(replace_pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(replace_pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_source(replace_pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(replace_pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(replace_pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(replace_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(replace_pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(replace_pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(replace_pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(replace_pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(replace_pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(replace_pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(replace_pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(replace_pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(replace_pipe_req_arb_io_out_bits_id)
  );
  Arbiter_23 main_pipe_req_arb ( // @[DCacheWrapper.scala 169:21]
    .io_in_0_ready(main_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(main_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(main_pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(main_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(main_pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(main_pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(main_pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_source(main_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(main_pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(main_pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(main_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(main_pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(main_pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(main_pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(main_pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(main_pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(main_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(main_pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(main_pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(main_pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(main_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(main_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(main_pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(main_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(main_pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(main_pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(main_pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_source(main_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(main_pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(main_pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(main_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(main_pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(main_pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(main_pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(main_pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(main_pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(main_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(main_pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(main_pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(main_pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(main_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(main_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_miss(main_pipe_req_arb_io_in_2_bits_miss),
    .io_in_2_bits_miss_id(main_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_miss_param(main_pipe_req_arb_io_in_2_bits_miss_param),
    .io_in_2_bits_miss_dirty(main_pipe_req_arb_io_in_2_bits_miss_dirty),
    .io_in_2_bits_miss_way_en(main_pipe_req_arb_io_in_2_bits_miss_way_en),
    .io_in_2_bits_source(main_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(main_pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(main_pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(main_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(main_pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(main_pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_word_idx(main_pipe_req_arb_io_in_2_bits_word_idx),
    .io_in_2_bits_amo_data(main_pipe_req_arb_io_in_2_bits_amo_data),
    .io_in_2_bits_amo_mask(main_pipe_req_arb_io_in_2_bits_amo_mask),
    .io_in_2_bits_error(main_pipe_req_arb_io_in_2_bits_error),
    .io_in_2_bits_replace(main_pipe_req_arb_io_in_2_bits_replace),
    .io_in_2_bits_replace_way_en(main_pipe_req_arb_io_in_2_bits_replace_way_en),
    .io_in_2_bits_id(main_pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(main_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(main_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(main_pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(main_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(main_pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(main_pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(main_pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_source(main_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(main_pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(main_pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(main_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(main_pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(main_pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(main_pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(main_pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(main_pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(main_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(main_pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(main_pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(main_pipe_req_arb_io_in_3_bits_id),
    .io_in_4_ready(main_pipe_req_arb_io_in_4_ready),
    .io_in_4_valid(main_pipe_req_arb_io_in_4_valid),
    .io_in_4_bits_miss(main_pipe_req_arb_io_in_4_bits_miss),
    .io_in_4_bits_miss_id(main_pipe_req_arb_io_in_4_bits_miss_id),
    .io_in_4_bits_miss_param(main_pipe_req_arb_io_in_4_bits_miss_param),
    .io_in_4_bits_miss_dirty(main_pipe_req_arb_io_in_4_bits_miss_dirty),
    .io_in_4_bits_miss_way_en(main_pipe_req_arb_io_in_4_bits_miss_way_en),
    .io_in_4_bits_source(main_pipe_req_arb_io_in_4_bits_source),
    .io_in_4_bits_cmd(main_pipe_req_arb_io_in_4_bits_cmd),
    .io_in_4_bits_vaddr(main_pipe_req_arb_io_in_4_bits_vaddr),
    .io_in_4_bits_addr(main_pipe_req_arb_io_in_4_bits_addr),
    .io_in_4_bits_store_data(main_pipe_req_arb_io_in_4_bits_store_data),
    .io_in_4_bits_store_mask(main_pipe_req_arb_io_in_4_bits_store_mask),
    .io_in_4_bits_word_idx(main_pipe_req_arb_io_in_4_bits_word_idx),
    .io_in_4_bits_amo_data(main_pipe_req_arb_io_in_4_bits_amo_data),
    .io_in_4_bits_amo_mask(main_pipe_req_arb_io_in_4_bits_amo_mask),
    .io_in_4_bits_error(main_pipe_req_arb_io_in_4_bits_error),
    .io_in_4_bits_replace(main_pipe_req_arb_io_in_4_bits_replace),
    .io_in_4_bits_replace_way_en(main_pipe_req_arb_io_in_4_bits_replace_way_en),
    .io_in_4_bits_id(main_pipe_req_arb_io_in_4_bits_id),
    .io_in_5_ready(main_pipe_req_arb_io_in_5_ready),
    .io_in_5_valid(main_pipe_req_arb_io_in_5_valid),
    .io_in_5_bits_miss(main_pipe_req_arb_io_in_5_bits_miss),
    .io_in_5_bits_miss_id(main_pipe_req_arb_io_in_5_bits_miss_id),
    .io_in_5_bits_miss_param(main_pipe_req_arb_io_in_5_bits_miss_param),
    .io_in_5_bits_miss_dirty(main_pipe_req_arb_io_in_5_bits_miss_dirty),
    .io_in_5_bits_miss_way_en(main_pipe_req_arb_io_in_5_bits_miss_way_en),
    .io_in_5_bits_source(main_pipe_req_arb_io_in_5_bits_source),
    .io_in_5_bits_cmd(main_pipe_req_arb_io_in_5_bits_cmd),
    .io_in_5_bits_vaddr(main_pipe_req_arb_io_in_5_bits_vaddr),
    .io_in_5_bits_addr(main_pipe_req_arb_io_in_5_bits_addr),
    .io_in_5_bits_store_data(main_pipe_req_arb_io_in_5_bits_store_data),
    .io_in_5_bits_store_mask(main_pipe_req_arb_io_in_5_bits_store_mask),
    .io_in_5_bits_word_idx(main_pipe_req_arb_io_in_5_bits_word_idx),
    .io_in_5_bits_amo_data(main_pipe_req_arb_io_in_5_bits_amo_data),
    .io_in_5_bits_amo_mask(main_pipe_req_arb_io_in_5_bits_amo_mask),
    .io_in_5_bits_error(main_pipe_req_arb_io_in_5_bits_error),
    .io_in_5_bits_replace(main_pipe_req_arb_io_in_5_bits_replace),
    .io_in_5_bits_replace_way_en(main_pipe_req_arb_io_in_5_bits_replace_way_en),
    .io_in_5_bits_id(main_pipe_req_arb_io_in_5_bits_id),
    .io_in_6_ready(main_pipe_req_arb_io_in_6_ready),
    .io_in_6_valid(main_pipe_req_arb_io_in_6_valid),
    .io_in_6_bits_miss(main_pipe_req_arb_io_in_6_bits_miss),
    .io_in_6_bits_miss_id(main_pipe_req_arb_io_in_6_bits_miss_id),
    .io_in_6_bits_miss_param(main_pipe_req_arb_io_in_6_bits_miss_param),
    .io_in_6_bits_miss_dirty(main_pipe_req_arb_io_in_6_bits_miss_dirty),
    .io_in_6_bits_miss_way_en(main_pipe_req_arb_io_in_6_bits_miss_way_en),
    .io_in_6_bits_source(main_pipe_req_arb_io_in_6_bits_source),
    .io_in_6_bits_cmd(main_pipe_req_arb_io_in_6_bits_cmd),
    .io_in_6_bits_vaddr(main_pipe_req_arb_io_in_6_bits_vaddr),
    .io_in_6_bits_addr(main_pipe_req_arb_io_in_6_bits_addr),
    .io_in_6_bits_store_data(main_pipe_req_arb_io_in_6_bits_store_data),
    .io_in_6_bits_store_mask(main_pipe_req_arb_io_in_6_bits_store_mask),
    .io_in_6_bits_word_idx(main_pipe_req_arb_io_in_6_bits_word_idx),
    .io_in_6_bits_amo_data(main_pipe_req_arb_io_in_6_bits_amo_data),
    .io_in_6_bits_amo_mask(main_pipe_req_arb_io_in_6_bits_amo_mask),
    .io_in_6_bits_error(main_pipe_req_arb_io_in_6_bits_error),
    .io_in_6_bits_replace(main_pipe_req_arb_io_in_6_bits_replace),
    .io_in_6_bits_replace_way_en(main_pipe_req_arb_io_in_6_bits_replace_way_en),
    .io_in_6_bits_id(main_pipe_req_arb_io_in_6_bits_id),
    .io_in_7_ready(main_pipe_req_arb_io_in_7_ready),
    .io_in_7_valid(main_pipe_req_arb_io_in_7_valid),
    .io_in_7_bits_miss(main_pipe_req_arb_io_in_7_bits_miss),
    .io_in_7_bits_miss_id(main_pipe_req_arb_io_in_7_bits_miss_id),
    .io_in_7_bits_miss_param(main_pipe_req_arb_io_in_7_bits_miss_param),
    .io_in_7_bits_miss_dirty(main_pipe_req_arb_io_in_7_bits_miss_dirty),
    .io_in_7_bits_miss_way_en(main_pipe_req_arb_io_in_7_bits_miss_way_en),
    .io_in_7_bits_source(main_pipe_req_arb_io_in_7_bits_source),
    .io_in_7_bits_cmd(main_pipe_req_arb_io_in_7_bits_cmd),
    .io_in_7_bits_vaddr(main_pipe_req_arb_io_in_7_bits_vaddr),
    .io_in_7_bits_addr(main_pipe_req_arb_io_in_7_bits_addr),
    .io_in_7_bits_store_data(main_pipe_req_arb_io_in_7_bits_store_data),
    .io_in_7_bits_store_mask(main_pipe_req_arb_io_in_7_bits_store_mask),
    .io_in_7_bits_word_idx(main_pipe_req_arb_io_in_7_bits_word_idx),
    .io_in_7_bits_amo_data(main_pipe_req_arb_io_in_7_bits_amo_data),
    .io_in_7_bits_amo_mask(main_pipe_req_arb_io_in_7_bits_amo_mask),
    .io_in_7_bits_error(main_pipe_req_arb_io_in_7_bits_error),
    .io_in_7_bits_replace(main_pipe_req_arb_io_in_7_bits_replace),
    .io_in_7_bits_replace_way_en(main_pipe_req_arb_io_in_7_bits_replace_way_en),
    .io_in_7_bits_id(main_pipe_req_arb_io_in_7_bits_id),
    .io_out_ready(main_pipe_req_arb_io_out_ready),
    .io_out_valid(main_pipe_req_arb_io_out_valid),
    .io_out_bits_miss(main_pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(main_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(main_pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(main_pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(main_pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_source(main_pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(main_pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(main_pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(main_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(main_pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(main_pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(main_pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(main_pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(main_pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(main_pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(main_pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(main_pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(main_pipe_req_arb_io_out_bits_id)
  );
  assign io_req_ready = alloc | merge; // @[MissQueue.scala 498:22]
  assign io_refill_to_ldq_valid = |_io_refill_to_ldq_valid_T; // @[MissQueue.scala 552:72]
  assign io_refill_to_ldq_bits_addr = _io_refill_to_ldq_bits_T_56[806:771]; // @[ParallelMux.scala 37:77]
  assign io_refill_to_ldq_bits_data = _io_refill_to_ldq_bits_T_56[770:515]; // @[ParallelMux.scala 37:77]
  assign io_mem_acquire_valid = idle ? _T_74 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  assign io_mem_acquire_bits_opcode = _T_284 | _T_278; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_param = _T_269 | _T_263; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_size = _T_254 | _T_248; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_source = _T_239 | _T_233; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_address = _T_224 | _T_218; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_alias = _T_209 | _T_203; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_needHint = muxStateEarly__0 | muxStateEarly__1 | muxStateEarly__2 | muxStateEarly__3
     | muxStateEarly__4 | muxStateEarly__5 | muxStateEarly__6 | muxStateEarly__7; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_mask = _T_149 | _T_143; // @[Mux.scala 27:73]
  assign io_mem_grant_ready = io_mem_grant_bits_source == 5'h7 ? entries_7_io_mem_grant_ready : _GEN_76; // @[MissQueue.scala 540:47 541:24]
  assign io_mem_finish_valid = idle_1 ? _T_326 : _sink_ACancel_earlyValid_T_44; // @[Arbiter.scala 125:29]
  assign io_mem_finish_bits_sink = _T_371 | _T_365; // @[Mux.scala 27:73]
  assign io_refill_pipe_req_valid = pipelineReg_io_out_valid; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_source = pipelineReg_io_out_bits_source; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_addr = pipelineReg_io_out_bits_addr; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_way_en = pipelineReg_io_out_bits_way_en; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_wmask = pipelineReg_io_out_bits_wmask; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_0 = pipelineReg_io_out_bits_data_0; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_1 = pipelineReg_io_out_bits_data_1; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_2 = pipelineReg_io_out_bits_data_2; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_3 = pipelineReg_io_out_bits_data_3; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_4 = pipelineReg_io_out_bits_data_4; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_5 = pipelineReg_io_out_bits_data_5; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_6 = pipelineReg_io_out_bits_data_6; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_data_7 = pipelineReg_io_out_bits_data_7; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_meta_coh_state = pipelineReg_io_out_bits_meta_coh_state; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_alias = pipelineReg_io_out_bits_alias; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_miss_id = pipelineReg_io_out_bits_miss_id; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_id = pipelineReg_io_out_bits_id; // @[MemCommon.scala 170:11]
  assign io_refill_pipe_req_bits_error = pipelineReg_io_out_bits_error; // @[MemCommon.scala 170:11]
  assign io_replace_pipe_req_valid = replace_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_miss = replace_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_miss_id = replace_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_miss_param = replace_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_miss_dirty = replace_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_miss_way_en = replace_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_source = replace_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_cmd = replace_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_vaddr = replace_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_addr = replace_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_store_data = replace_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_store_mask = replace_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_word_idx = replace_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_amo_data = replace_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_amo_mask = replace_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_error = replace_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_replace = replace_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_replace_way_en = replace_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 174:9]
  assign io_replace_pipe_req_bits_id = replace_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_valid = main_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_miss = main_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_miss_id = main_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_miss_param = main_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_miss_dirty = main_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_miss_way_en = main_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_source = main_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_cmd = main_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_vaddr = main_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_addr = main_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_store_data = main_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_store_mask = main_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_word_idx = main_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_amo_data = main_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_amo_mask = main_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_error = main_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_replace = main_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_replace_way_en = main_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 174:9]
  assign io_main_pipe_req_bits_id = main_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 174:9]
  assign io_probe_block = |_io_probe_block_T; // @[MissQueue.scala 562:42]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 3'h0; // @[MissQueue.scala 529:15]
  assign entries_0_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_0_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_0_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_0_io_primary_valid = _entries_0_io_primary_valid_T_3 & entries_0_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_0_io_mem_acquire_ready = io_mem_acquire_ready & allowed__0; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = io_mem_grant_bits_source == 5'h0 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_0_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_0_io_mem_finish_ready = io_mem_finish_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_0_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h0; // @[MissQueue.scala 544:58]
  assign entries_0_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_0_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h0; // @[MissQueue.scala 545:60]
  assign entries_0_io_main_pipe_req_ready = main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_0_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h0; // @[MissQueue.scala 546:95]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 3'h1; // @[MissQueue.scala 529:15]
  assign entries_1_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_1_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_1_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_1_io_primary_valid = _entries_1_io_primary_valid_T_5 & entries_1_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_1_io_mem_acquire_ready = io_mem_acquire_ready & allowed__1; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = io_mem_grant_bits_source == 5'h1 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_1_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_1_io_mem_finish_ready = io_mem_finish_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_1_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h1; // @[MissQueue.scala 544:58]
  assign entries_1_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_1_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h1; // @[MissQueue.scala 545:60]
  assign entries_1_io_main_pipe_req_ready = main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_1_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h1; // @[MissQueue.scala 546:95]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_id = 3'h2; // @[MissQueue.scala 529:15]
  assign entries_2_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_2_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_2_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_2_io_primary_valid = _entries_2_io_primary_valid_T_5 & entries_2_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_2_io_mem_acquire_ready = io_mem_acquire_ready & allowed__2; // @[Arbiter.scala 123:31]
  assign entries_2_io_mem_grant_valid = io_mem_grant_bits_source == 5'h2 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_2_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_2_io_mem_finish_ready = io_mem_finish_ready & allowed_1_2; // @[Arbiter.scala 123:31]
  assign entries_2_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_2_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h2; // @[MissQueue.scala 544:58]
  assign entries_2_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_2_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h2; // @[MissQueue.scala 545:60]
  assign entries_2_io_main_pipe_req_ready = main_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_2_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h2; // @[MissQueue.scala 546:95]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_id = 3'h3; // @[MissQueue.scala 529:15]
  assign entries_3_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_3_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_3_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_3_io_primary_valid = _entries_3_io_primary_valid_T_5 & entries_3_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_3_io_mem_acquire_ready = io_mem_acquire_ready & allowed__3; // @[Arbiter.scala 123:31]
  assign entries_3_io_mem_grant_valid = io_mem_grant_bits_source == 5'h3 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_3_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_3_io_mem_finish_ready = io_mem_finish_ready & allowed_1_3; // @[Arbiter.scala 123:31]
  assign entries_3_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_3_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h3; // @[MissQueue.scala 544:58]
  assign entries_3_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_3_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h3; // @[MissQueue.scala 545:60]
  assign entries_3_io_main_pipe_req_ready = main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_3_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h3; // @[MissQueue.scala 546:95]
  assign entries_4_clock = clock;
  assign entries_4_reset = reset;
  assign entries_4_io_id = 3'h4; // @[MissQueue.scala 529:15]
  assign entries_4_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_4_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_4_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_4_io_primary_valid = _entries_4_io_primary_valid_T_5 & entries_4_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_4_io_mem_acquire_ready = io_mem_acquire_ready & allowed__4; // @[Arbiter.scala 123:31]
  assign entries_4_io_mem_grant_valid = io_mem_grant_bits_source == 5'h4 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_4_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_4_io_mem_finish_ready = io_mem_finish_ready & allowed_1_4; // @[Arbiter.scala 123:31]
  assign entries_4_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_4_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h4; // @[MissQueue.scala 544:58]
  assign entries_4_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_4_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h4; // @[MissQueue.scala 545:60]
  assign entries_4_io_main_pipe_req_ready = main_pipe_req_arb_io_in_4_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_4_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h4; // @[MissQueue.scala 546:95]
  assign entries_5_clock = clock;
  assign entries_5_reset = reset;
  assign entries_5_io_id = 3'h5; // @[MissQueue.scala 529:15]
  assign entries_5_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_5_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_5_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_5_io_primary_valid = _entries_5_io_primary_valid_T_5 & entries_5_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_5_io_mem_acquire_ready = io_mem_acquire_ready & allowed__5; // @[Arbiter.scala 123:31]
  assign entries_5_io_mem_grant_valid = io_mem_grant_bits_source == 5'h5 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_5_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_5_io_mem_finish_ready = io_mem_finish_ready & allowed_1_5; // @[Arbiter.scala 123:31]
  assign entries_5_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_5_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h5; // @[MissQueue.scala 544:58]
  assign entries_5_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_5_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h5; // @[MissQueue.scala 545:60]
  assign entries_5_io_main_pipe_req_ready = main_pipe_req_arb_io_in_5_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_5_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h5; // @[MissQueue.scala 546:95]
  assign entries_6_clock = clock;
  assign entries_6_reset = reset;
  assign entries_6_io_id = 3'h6; // @[MissQueue.scala 529:15]
  assign entries_6_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_6_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_6_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_6_io_primary_valid = _entries_6_io_primary_valid_T_5 & entries_6_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_6_io_mem_acquire_ready = io_mem_acquire_ready & allowed__6; // @[Arbiter.scala 123:31]
  assign entries_6_io_mem_grant_valid = io_mem_grant_bits_source == 5'h6 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_6_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_6_io_mem_finish_ready = io_mem_finish_ready & allowed_1_6; // @[Arbiter.scala 123:31]
  assign entries_6_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_6_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h6; // @[MissQueue.scala 544:58]
  assign entries_6_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_6_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h6; // @[MissQueue.scala 545:60]
  assign entries_6_io_main_pipe_req_ready = main_pipe_req_arb_io_in_6_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_6_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h6; // @[MissQueue.scala 546:95]
  assign entries_7_clock = clock;
  assign entries_7_reset = reset;
  assign entries_7_io_id = 3'h7; // @[MissQueue.scala 529:15]
  assign entries_7_io_req_valid = io_req_valid; // @[MissQueue.scala 530:22]
  assign entries_7_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_cmd = io_req_bits_cmd; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_store_data = io_req_bits_store_data; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_store_mask = io_req_bits_store_mask; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_word_idx = io_req_bits_word_idx; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_amo_data = io_req_bits_amo_data; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_amo_mask = io_req_bits_amo_mask; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_req_coh_state = io_req_bits_req_coh_state; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_replace_coh_state = io_req_bits_replace_coh_state; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_replace_tag = io_req_bits_replace_tag; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_id = io_req_bits_id; // @[MissQueue.scala 536:21]
  assign entries_7_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 536:21]
  assign entries_7_io_primary_valid = _entries_7_io_primary_valid_T_5 & entries_7_io_primary_ready; // @[MissQueue.scala 534:31]
  assign entries_7_io_mem_acquire_ready = io_mem_acquire_ready & allowed__7; // @[Arbiter.scala 123:31]
  assign entries_7_io_mem_grant_valid = io_mem_grant_bits_source == 5'h7 & io_mem_grant_valid; // @[MissQueue.scala 540:47 541:24 538:28]
  assign entries_7_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_echo_blockisdirty = io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 540:47 541:24]
  assign entries_7_io_mem_finish_ready = io_mem_finish_ready & allowed_1_7; // @[Arbiter.scala 123:31]
  assign entries_7_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 184:9]
  assign entries_7_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 3'h7; // @[MissQueue.scala 544:58]
  assign entries_7_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_7_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 3'h7; // @[MissQueue.scala 545:60]
  assign entries_7_io_main_pipe_req_ready = main_pipe_req_arb_io_in_7_ready; // @[DCacheWrapper.scala 172:9]
  assign entries_7_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 3'h7; // @[MissQueue.scala 546:95]
  assign refill_pipe_req_arb_io_in_0_valid = entries_0_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_source = entries_0_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_addr = entries_0_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_way_en = entries_0_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_wmask = entries_0_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_0 = entries_0_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_1 = entries_0_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_2 = entries_0_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_3 = entries_0_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_4 = entries_0_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_5 = entries_0_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_6 = entries_0_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_7 = entries_0_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_meta_coh_state = entries_0_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_alias = entries_0_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_miss_id = entries_0_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_id = entries_0_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_0_bits_error = entries_0_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_valid = entries_1_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_source = entries_1_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_addr = entries_1_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_way_en = entries_1_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_wmask = entries_1_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_0 = entries_1_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_1 = entries_1_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_2 = entries_1_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_3 = entries_1_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_4 = entries_1_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_5 = entries_1_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_6 = entries_1_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_7 = entries_1_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_meta_coh_state = entries_1_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_alias = entries_1_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_miss_id = entries_1_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_id = entries_1_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_1_bits_error = entries_1_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_valid = entries_2_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_source = entries_2_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_addr = entries_2_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_way_en = entries_2_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_wmask = entries_2_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_0 = entries_2_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_1 = entries_2_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_2 = entries_2_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_3 = entries_2_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_4 = entries_2_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_5 = entries_2_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_6 = entries_2_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_7 = entries_2_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_meta_coh_state = entries_2_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_alias = entries_2_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_miss_id = entries_2_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_id = entries_2_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_2_bits_error = entries_2_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_valid = entries_3_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_source = entries_3_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_addr = entries_3_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_way_en = entries_3_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_wmask = entries_3_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_0 = entries_3_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_1 = entries_3_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_2 = entries_3_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_3 = entries_3_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_4 = entries_3_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_5 = entries_3_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_6 = entries_3_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_7 = entries_3_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_meta_coh_state = entries_3_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_alias = entries_3_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_miss_id = entries_3_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_id = entries_3_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_3_bits_error = entries_3_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_valid = entries_4_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_source = entries_4_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_addr = entries_4_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_way_en = entries_4_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_wmask = entries_4_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_0 = entries_4_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_1 = entries_4_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_2 = entries_4_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_3 = entries_4_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_4 = entries_4_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_5 = entries_4_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_6 = entries_4_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_data_7 = entries_4_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_meta_coh_state = entries_4_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_alias = entries_4_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_miss_id = entries_4_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_id = entries_4_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_4_bits_error = entries_4_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_valid = entries_5_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_source = entries_5_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_addr = entries_5_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_way_en = entries_5_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_wmask = entries_5_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_0 = entries_5_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_1 = entries_5_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_2 = entries_5_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_3 = entries_5_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_4 = entries_5_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_5 = entries_5_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_6 = entries_5_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_data_7 = entries_5_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_meta_coh_state = entries_5_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_alias = entries_5_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_miss_id = entries_5_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_id = entries_5_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_5_bits_error = entries_5_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_valid = entries_6_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_source = entries_6_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_addr = entries_6_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_way_en = entries_6_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_wmask = entries_6_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_0 = entries_6_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_1 = entries_6_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_2 = entries_6_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_3 = entries_6_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_4 = entries_6_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_5 = entries_6_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_6 = entries_6_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_data_7 = entries_6_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_meta_coh_state = entries_6_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_alias = entries_6_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_miss_id = entries_6_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_id = entries_6_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_6_bits_error = entries_6_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_valid = entries_7_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_source = entries_7_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_addr = entries_7_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_way_en = entries_7_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_wmask = entries_7_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_0 = entries_7_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_1 = entries_7_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_2 = entries_7_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_3 = entries_7_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_4 = entries_7_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_5 = entries_7_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_6 = entries_7_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_data_7 = entries_7_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_meta_coh_state = entries_7_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_alias = entries_7_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_miss_id = entries_7_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_id = entries_7_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_in_7_bits_error = entries_7_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 184:9]
  assign refill_pipe_req_arb_io_out_ready = pipelineReg_io_in_ready; // @[MemCommon.scala 169:23]
  assign pipelineReg_clock = clock;
  assign pipelineReg_reset = reset;
  assign pipelineReg_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_source = refill_pipe_req_arb_io_out_bits_source; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_wmask = refill_pipe_req_arb_io_out_bits_wmask; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_0 = refill_pipe_req_arb_io_out_bits_data_0; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_1 = refill_pipe_req_arb_io_out_bits_data_1; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_2 = refill_pipe_req_arb_io_out_bits_data_2; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_3 = refill_pipe_req_arb_io_out_bits_data_3; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_4 = refill_pipe_req_arb_io_out_bits_data_4; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_5 = refill_pipe_req_arb_io_out_bits_data_5; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_6 = refill_pipe_req_arb_io_out_bits_data_6; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_data_7 = refill_pipe_req_arb_io_out_bits_data_7; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_meta_coh_state = refill_pipe_req_arb_io_out_bits_meta_coh_state; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_miss_id = refill_pipe_req_arb_io_out_bits_miss_id; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_id = refill_pipe_req_arb_io_out_bits_id; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_in_bits_error = refill_pipe_req_arb_io_out_bits_error; // @[MemCommon.scala 169:23]
  assign pipelineReg_io_out_ready = io_refill_pipe_req_ready; // @[MemCommon.scala 170:11]
  assign replace_pipe_req_arb_io_in_0_valid = entries_0_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_id = entries_0_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_vaddr = entries_0_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_addr = entries_0_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_replace_way_en = entries_0_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_0_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_valid = entries_1_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_id = entries_1_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_vaddr = entries_1_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_addr = entries_1_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_replace_way_en = entries_1_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_1_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_valid = entries_2_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss_id = entries_2_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_vaddr = entries_2_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_addr = entries_2_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_replace_way_en = entries_2_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_2_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_valid = entries_3_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_id = entries_3_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_vaddr = entries_3_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_addr = entries_3_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_replace_way_en = entries_3_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_3_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_valid = entries_4_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_miss_id = entries_4_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_vaddr = entries_4_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_addr = entries_4_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_replace_way_en = entries_4_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_4_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_valid = entries_5_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_miss_id = entries_5_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_vaddr = entries_5_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_addr = entries_5_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_replace_way_en = entries_5_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_5_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_valid = entries_6_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_miss_id = entries_6_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_vaddr = entries_6_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_addr = entries_6_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_replace_way_en = entries_6_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_6_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_valid = entries_7_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_miss = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_miss_id = entries_7_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_miss_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_source = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_cmd = 5'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_vaddr = entries_7_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_addr = entries_7_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_store_data = 512'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_error = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_replace = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_replace_way_en = entries_7_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_in_7_bits_id = 64'h0; // @[DCacheWrapper.scala 172:9]
  assign replace_pipe_req_arb_io_out_ready = io_replace_pipe_req_ready; // @[DCacheWrapper.scala 174:9]
  assign main_pipe_req_arb_io_in_0_valid = entries_0_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_id = entries_0_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_param = entries_0_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_dirty = entries_0_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_way_en = entries_0_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_source = entries_0_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_cmd = entries_0_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_vaddr = entries_0_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_addr = entries_0_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_store_data = entries_0_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_word_idx = entries_0_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_data = entries_0_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_mask = entries_0_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_error = entries_0_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_id = entries_0_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_valid = entries_1_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_id = entries_1_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_param = entries_1_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_dirty = entries_1_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_way_en = entries_1_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_source = entries_1_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_cmd = entries_1_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_vaddr = entries_1_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_addr = entries_1_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_store_data = entries_1_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_word_idx = entries_1_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_data = entries_1_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_mask = entries_1_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_error = entries_1_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_id = entries_1_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_valid = entries_2_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_miss_id = entries_2_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_miss_param = entries_2_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_miss_dirty = entries_2_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_miss_way_en = entries_2_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_source = entries_2_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_cmd = entries_2_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_vaddr = entries_2_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_addr = entries_2_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_store_data = entries_2_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_word_idx = entries_2_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_amo_data = entries_2_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_amo_mask = entries_2_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_error = entries_2_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_bits_id = entries_2_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_valid = entries_3_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_id = entries_3_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_param = entries_3_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_dirty = entries_3_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_way_en = entries_3_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_source = entries_3_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_cmd = entries_3_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_vaddr = entries_3_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_addr = entries_3_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_store_data = entries_3_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_word_idx = entries_3_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_data = entries_3_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_mask = entries_3_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_error = entries_3_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_id = entries_3_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_valid = entries_4_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_miss_id = entries_4_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_miss_param = entries_4_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_miss_dirty = entries_4_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_miss_way_en = entries_4_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_source = entries_4_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_cmd = entries_4_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_vaddr = entries_4_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_addr = entries_4_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_store_data = entries_4_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_word_idx = entries_4_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_amo_data = entries_4_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_amo_mask = entries_4_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_error = entries_4_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_4_bits_id = entries_4_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_valid = entries_5_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_miss_id = entries_5_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_miss_param = entries_5_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_miss_dirty = entries_5_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_miss_way_en = entries_5_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_source = entries_5_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_cmd = entries_5_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_vaddr = entries_5_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_addr = entries_5_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_store_data = entries_5_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_word_idx = entries_5_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_amo_data = entries_5_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_amo_mask = entries_5_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_error = entries_5_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_5_bits_id = entries_5_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_valid = entries_6_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_miss_id = entries_6_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_miss_param = entries_6_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_miss_dirty = entries_6_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_miss_way_en = entries_6_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_source = entries_6_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_cmd = entries_6_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_vaddr = entries_6_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_addr = entries_6_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_store_data = entries_6_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_word_idx = entries_6_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_amo_data = entries_6_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_amo_mask = entries_6_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_error = entries_6_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_6_bits_id = entries_6_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_valid = entries_7_io_main_pipe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_miss = 1'h1; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_miss_id = entries_7_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_miss_param = entries_7_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_miss_dirty = entries_7_io_main_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_miss_way_en = entries_7_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_source = entries_7_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_cmd = entries_7_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_vaddr = entries_7_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_addr = entries_7_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_store_data = entries_7_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_store_mask = 64'hffffffffffffffff; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_word_idx = entries_7_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_amo_data = entries_7_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_amo_mask = entries_7_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_error = entries_7_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_replace = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_replace_way_en = 4'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_7_bits_id = entries_7_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_out_ready = io_main_pipe_req_ready; // @[DCacheWrapper.scala 174:9]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__0 <= earlyWinner__0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__1 <= earlyWinner__1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__2 <= earlyWinner__2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__3 <= earlyWinner__3;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__4 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__4 <= earlyWinner__4;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__5 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__5 <= earlyWinner__5;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__6 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__6 <= earlyWinner__6;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__7 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__7 <= earlyWinner__7;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_1 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_1) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= 1'h0;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _beatsLeft_T_8;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_0 <= earlyWinner_1_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_1 <= earlyWinner_1_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_2 <= earlyWinner_1_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_3 <= earlyWinner_1_3;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_4 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_4 <= earlyWinner_1_4;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_5 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_5 <= earlyWinner_1_5;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_6 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_6 <= earlyWinner_1_6;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_7 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_7 <= earlyWinner_1_7;
    end
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_406 < _T_408; // @[MissQueue.scala 594:91]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_406 > _T_408 & _T_406 <= _T_456; // @[MissQueue.scala 595:119]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_406 > _T_456 & _GEN_89 <= _T_506; // @[MissQueue.scala 596:119]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= _GEN_89 > _T_506; // @[MissQueue.scala 597:91]
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
  state__0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state__1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state__2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state__3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state__4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state__5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state__6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state__7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_1_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_1_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  state_1_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  state_1_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  state_1_4 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_1_5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  state_1_6 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  state_1_7 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_27[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
