module DCacheWrapper(
  input          clock,
  input          reset,
  input          auto_client_out_a_ready,
  output         auto_client_out_a_valid,
  output [2:0]   auto_client_out_a_bits_opcode,
  output [2:0]   auto_client_out_a_bits_param,
  output [2:0]   auto_client_out_a_bits_size,
  output [4:0]   auto_client_out_a_bits_source,
  output [35:0]  auto_client_out_a_bits_address,
  output [1:0]   auto_client_out_a_bits_user_alias,
  output         auto_client_out_a_bits_user_needHint,
  output [31:0]  auto_client_out_a_bits_mask,
  output         auto_client_out_bready,
  input          auto_client_out_bvalid,
  input  [1:0]   auto_client_out_bparam,
  input  [35:0]  auto_client_out_baddress,
  input  [255:0] auto_client_out_bdata,
  input          auto_client_out_c_ready,
  output         auto_client_out_c_valid,
  output [2:0]   auto_client_out_c_bits_opcode,
  output [2:0]   auto_client_out_c_bits_param,
  output [2:0]   auto_client_out_c_bits_size,
  output [4:0]   auto_client_out_c_bits_source,
  output [35:0]  auto_client_out_c_bits_address,
  output         auto_client_out_c_bits_echo_blockisdirty,
  output [255:0] auto_client_out_c_bits_data,
  output         auto_client_out_d_ready,
  input          auto_client_out_d_valid,
  input  [2:0]   auto_client_out_d_bits_opcode,
  input  [1:0]   auto_client_out_d_bits_param,
  input  [2:0]   auto_client_out_d_bits_size,
  input  [4:0]   auto_client_out_d_bits_source,
  input  [4:0]   auto_client_out_d_bits_sink,
  input          auto_client_out_d_bits_denied,
  input          auto_client_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_client_out_d_bits_data,
  input          auto_client_out_d_bits_corrupt,
  input          auto_client_out_e_ready,
  output         auto_client_out_e_valid,
  output [4:0]   auto_client_out_e_bits_sink,
  output         io_lsu_load_0_req_ready,
  input          io_lsu_load_0_req_valid,
  input  [4:0]   io_lsu_load_0_req_bits_cmd,
  input  [35:0]  io_lsu_load_0_req_bits_addr,
  input  [1:0]   io_lsu_load_0_req_bits_instrtype,
  output [63:0]  io_lsu_load_0_resp_bits_data,
  output         io_lsu_load_0_resp_bits_miss,
  output         io_lsu_load_0_resp_bits_replay,
  output         io_lsu_load_0_resp_bits_tag_error,
  output         io_lsu_load_0_resp_bits_error,
  input          io_lsu_load_0_s1_kill,
  input          io_lsu_load_0_s2_kill,
  input  [35:0]  io_lsu_load_0_s1_paddr,
  output [3:0]   io_lsu_load_0_s1_hit_way,
  output         io_lsu_load_0_s1_disable_fast_wakeup,
  output         io_lsu_load_0_s1_bank_conflict,
  output         io_lsu_load_1_req_ready,
  input          io_lsu_load_1_req_valid,
  input  [4:0]   io_lsu_load_1_req_bits_cmd,
  input  [35:0]  io_lsu_load_1_req_bits_addr,
  input  [1:0]   io_lsu_load_1_req_bits_instrtype,
  output [63:0]  io_lsu_load_1_resp_bits_data,
  output         io_lsu_load_1_resp_bits_miss,
  output         io_lsu_load_1_resp_bits_replay,
  output         io_lsu_load_1_resp_bits_tag_error,
  output         io_lsu_load_1_resp_bits_error,
  input          io_lsu_load_1_s1_kill,
  input          io_lsu_load_1_s2_kill,
  input  [35:0]  io_lsu_load_1_s1_paddr,
  output [3:0]   io_lsu_load_1_s1_hit_way,
  output         io_lsu_load_1_s1_disable_fast_wakeup,
  output         io_lsu_load_1_s1_bank_conflict,
  output         io_lsu_lsq_valid,
  output [35:0]  io_lsu_lsq_bits_addr,
  output [255:0] io_lsu_lsq_bits_data,
  output         io_lsu_store_req_ready,
  input          io_lsu_store_req_valid,
  input  [38:0]  io_lsu_store_req_bits_vaddr,
  input  [35:0]  io_lsu_store_req_bits_addr,
  input  [511:0] io_lsu_store_req_bits_data,
  input  [63:0]  io_lsu_store_req_bits_mask,
  input  [63:0]  io_lsu_store_req_bits_id,
  output         io_lsu_store_main_pipe_hit_resp_valid,
  output [63:0]  io_lsu_store_main_pipe_hit_resp_bits_id,
  output         io_lsu_store_refill_hit_resp_valid,
  output [63:0]  io_lsu_store_refill_hit_resp_bits_id,
  output         io_lsu_store_replay_resp_valid,
  output [63:0]  io_lsu_store_replay_resp_bits_id,
  output         io_lsu_atomics_req_ready,
  input          io_lsu_atomics_req_valid,
  input  [4:0]   io_lsu_atomics_req_bits_cmd,
  input  [35:0]  io_lsu_atomics_req_bits_addr,
  input  [63:0]  io_lsu_atomics_req_bits_data,
  input  [7:0]   io_lsu_atomics_req_bits_mask,
  input  [38:0]  io_lsu_atomics_req_bits_vaddr,
  input          io_lsu_atomics_resp_ready,
  output         io_lsu_atomics_resp_valid,
  output [63:0]  io_lsu_atomics_resp_bits_data,
  output [63:0]  io_lsu_atomics_resp_bits_id,
  output         io_lsu_atomics_resp_bits_error,
  output         io_lsu_release_valid,
  output [35:0]  io_lsu_release_bits_paddr,
  input          io_csr_distribute_csr_wvalid,
  input  [11:0]  io_csr_distribute_csr_waddr,
  input  [63:0]  io_csr_distribute_csr_wdata,
  output         io_csr_update_wvalid,
  output [11:0]  io_csr_update_waddr,
  output [63:0]  io_csr_update_wdata,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value,
  output [5:0]   io_perf_13_value,
  output [5:0]   io_perf_14_value,
  output [5:0]   io_perf_15_value,
  output [5:0]   io_perf_16_value,
  output [5:0]   io_perf_17_value,
  output [5:0]   io_perf_18_value,
  output [5:0]   io_perf_19_value,
  output [5:0]   io_perf_20_value,
  output [5:0]   io_perf_21_value,
  output [5:0]   io_perf_22_value,
  output [5:0]   io_perf_23_value,
  output [5:0]   io_perf_24_value,
  output [5:0]   io_perf_25_value,
  output [5:0]   io_perf_26_value
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
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
`endif // RANDOMIZE_REG_INIT
  wire  dcache_clock; // @[DCacheWrapper.scala 739:41]
  wire  dcache_reset; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_a_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_a_valid; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_a_bits_opcode; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_a_bits_param; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_a_bits_size; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_auto_client_out_a_bits_source; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_auto_client_out_a_bits_address; // @[DCacheWrapper.scala 739:41]
  wire [1:0] dcache_auto_client_out_a_bits_user_alias; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_a_bits_user_needHint; // @[DCacheWrapper.scala 739:41]
  wire [31:0] dcache_auto_client_out_a_bits_mask; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_bready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_bvalid; // @[DCacheWrapper.scala 739:41]
  wire [1:0] dcache_auto_client_out_bparam; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_auto_client_out_baddress; // @[DCacheWrapper.scala 739:41]
  wire [255:0] dcache_auto_client_out_bdata; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_c_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_c_valid; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_c_bits_opcode; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_c_bits_param; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_c_bits_size; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_auto_client_out_c_bits_source; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_auto_client_out_c_bits_address; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_c_bits_echo_blockisdirty; // @[DCacheWrapper.scala 739:41]
  wire [255:0] dcache_auto_client_out_c_bits_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_d_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_d_valid; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_d_bits_opcode; // @[DCacheWrapper.scala 739:41]
  wire [1:0] dcache_auto_client_out_d_bits_param; // @[DCacheWrapper.scala 739:41]
  wire [2:0] dcache_auto_client_out_d_bits_size; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_auto_client_out_d_bits_source; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_auto_client_out_d_bits_sink; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_d_bits_denied; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_d_bits_echo_blockisdirty; // @[DCacheWrapper.scala 739:41]
  wire [255:0] dcache_auto_client_out_d_bits_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_d_bits_corrupt; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_e_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_auto_client_out_e_valid; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_auto_client_out_e_bits_sink; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_req_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_req_valid; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_io_lsu_load_0_req_bits_cmd; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_load_0_req_bits_addr; // @[DCacheWrapper.scala 739:41]
  wire [1:0] dcache_io_lsu_load_0_req_bits_instrtype; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_load_0_resp_bits_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_resp_bits_miss; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_resp_bits_replay; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_resp_bits_tag_error; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_resp_bits_error; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_s1_kill; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_s2_kill; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_load_0_s1_paddr; // @[DCacheWrapper.scala 739:41]
  wire [3:0] dcache_io_lsu_load_0_s1_hit_way; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_0_s1_bank_conflict; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_req_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_req_valid; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_io_lsu_load_1_req_bits_cmd; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_load_1_req_bits_addr; // @[DCacheWrapper.scala 739:41]
  wire [1:0] dcache_io_lsu_load_1_req_bits_instrtype; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_load_1_resp_bits_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_resp_bits_miss; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_resp_bits_replay; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_resp_bits_tag_error; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_resp_bits_error; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_s1_kill; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_s2_kill; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_load_1_s1_paddr; // @[DCacheWrapper.scala 739:41]
  wire [3:0] dcache_io_lsu_load_1_s1_hit_way; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_load_1_s1_bank_conflict; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_lsq_valid; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_lsq_bits_addr; // @[DCacheWrapper.scala 739:41]
  wire [255:0] dcache_io_lsu_lsq_bits_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_store_req_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_store_req_valid; // @[DCacheWrapper.scala 739:41]
  wire [38:0] dcache_io_lsu_store_req_bits_vaddr; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_store_req_bits_addr; // @[DCacheWrapper.scala 739:41]
  wire [511:0] dcache_io_lsu_store_req_bits_data; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_store_req_bits_mask; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_store_req_bits_id; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_store_main_pipe_hit_resp_valid; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_store_main_pipe_hit_resp_bits_id; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_store_refill_hit_resp_valid; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_store_refill_hit_resp_bits_id; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_store_replay_resp_valid; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_store_replay_resp_bits_id; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_atomics_req_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_atomics_req_valid; // @[DCacheWrapper.scala 739:41]
  wire [4:0] dcache_io_lsu_atomics_req_bits_cmd; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_atomics_req_bits_addr; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_atomics_req_bits_data; // @[DCacheWrapper.scala 739:41]
  wire [7:0] dcache_io_lsu_atomics_req_bits_mask; // @[DCacheWrapper.scala 739:41]
  wire [38:0] dcache_io_lsu_atomics_req_bits_vaddr; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_atomics_resp_ready; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_atomics_resp_valid; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_atomics_resp_bits_data; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_lsu_atomics_resp_bits_id; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_atomics_resp_bits_error; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_lsu_release_valid; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_lsu_release_bits_paddr; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 739:41]
  wire [11:0] dcache_io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_csr_update_wvalid; // @[DCacheWrapper.scala 739:41]
  wire [11:0] dcache_io_csr_update_waddr; // @[DCacheWrapper.scala 739:41]
  wire [63:0] dcache_io_csr_update_wdata; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_source_tag; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_source_data; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_source_l2; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_fetch; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_load; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_store; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_probe; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_release; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_opType_atom; // @[DCacheWrapper.scala 739:41]
  wire [35:0] dcache_io_error_paddr; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_report_to_beu; // @[DCacheWrapper.scala 739:41]
  wire  dcache_io_error_valid; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_0_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_1_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_2_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_3_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_4_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_5_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_6_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_7_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_8_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_9_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_10_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_11_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_12_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_13_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_14_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_15_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_16_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_17_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_18_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_19_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_20_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_21_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_22_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_23_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_24_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_25_value; // @[DCacheWrapper.scala 739:41]
  wire [5:0] dcache_io_perf_26_value; // @[DCacheWrapper.scala 739:41]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_17_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_18_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_19_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_19_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_20_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_20_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_21_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_21_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_22_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_23_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_23_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_24_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_24_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_25_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_25_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_26_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_26_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  DCache dcache ( // @[DCacheWrapper.scala 739:41]
    .clock(dcache_clock),
    .reset(dcache_reset),
    .auto_client_out_a_ready(dcache_auto_client_out_a_ready),
    .auto_client_out_a_valid(dcache_auto_client_out_a_valid),
    .auto_client_out_a_bits_opcode(dcache_auto_client_out_a_bits_opcode),
    .auto_client_out_a_bits_param(dcache_auto_client_out_a_bits_param),
    .auto_client_out_a_bits_size(dcache_auto_client_out_a_bits_size),
    .auto_client_out_a_bits_source(dcache_auto_client_out_a_bits_source),
    .auto_client_out_a_bits_address(dcache_auto_client_out_a_bits_address),
    .auto_client_out_a_bits_user_alias(dcache_auto_client_out_a_bits_user_alias),
    .auto_client_out_a_bits_user_needHint(dcache_auto_client_out_a_bits_user_needHint),
    .auto_client_out_a_bits_mask(dcache_auto_client_out_a_bits_mask),
    .auto_client_out_bready(dcache_auto_client_out_bready),
    .auto_client_out_bvalid(dcache_auto_client_out_bvalid),
    .auto_client_out_bparam(dcache_auto_client_out_bparam),
    .auto_client_out_baddress(dcache_auto_client_out_baddress),
    .auto_client_out_bdata(dcache_auto_client_out_bdata),
    .auto_client_out_c_ready(dcache_auto_client_out_c_ready),
    .auto_client_out_c_valid(dcache_auto_client_out_c_valid),
    .auto_client_out_c_bits_opcode(dcache_auto_client_out_c_bits_opcode),
    .auto_client_out_c_bits_param(dcache_auto_client_out_c_bits_param),
    .auto_client_out_c_bits_size(dcache_auto_client_out_c_bits_size),
    .auto_client_out_c_bits_source(dcache_auto_client_out_c_bits_source),
    .auto_client_out_c_bits_address(dcache_auto_client_out_c_bits_address),
    .auto_client_out_c_bits_echo_blockisdirty(dcache_auto_client_out_c_bits_echo_blockisdirty),
    .auto_client_out_c_bits_data(dcache_auto_client_out_c_bits_data),
    .auto_client_out_d_ready(dcache_auto_client_out_d_ready),
    .auto_client_out_d_valid(dcache_auto_client_out_d_valid),
    .auto_client_out_d_bits_opcode(dcache_auto_client_out_d_bits_opcode),
    .auto_client_out_d_bits_param(dcache_auto_client_out_d_bits_param),
    .auto_client_out_d_bits_size(dcache_auto_client_out_d_bits_size),
    .auto_client_out_d_bits_source(dcache_auto_client_out_d_bits_source),
    .auto_client_out_d_bits_sink(dcache_auto_client_out_d_bits_sink),
    .auto_client_out_d_bits_denied(dcache_auto_client_out_d_bits_denied),
    .auto_client_out_d_bits_echo_blockisdirty(dcache_auto_client_out_d_bits_echo_blockisdirty),
    .auto_client_out_d_bits_data(dcache_auto_client_out_d_bits_data),
    .auto_client_out_d_bits_corrupt(dcache_auto_client_out_d_bits_corrupt),
    .auto_client_out_e_ready(dcache_auto_client_out_e_ready),
    .auto_client_out_e_valid(dcache_auto_client_out_e_valid),
    .auto_client_out_e_bits_sink(dcache_auto_client_out_e_bits_sink),
    .io_lsu_load_0_req_ready(dcache_io_lsu_load_0_req_ready),
    .io_lsu_load_0_req_valid(dcache_io_lsu_load_0_req_valid),
    .io_lsu_load_0_req_bits_cmd(dcache_io_lsu_load_0_req_bits_cmd),
    .io_lsu_load_0_req_bits_addr(dcache_io_lsu_load_0_req_bits_addr),
    .io_lsu_load_0_req_bits_instrtype(dcache_io_lsu_load_0_req_bits_instrtype),
    .io_lsu_load_0_resp_bits_data(dcache_io_lsu_load_0_resp_bits_data),
    .io_lsu_load_0_resp_bits_miss(dcache_io_lsu_load_0_resp_bits_miss),
    .io_lsu_load_0_resp_bits_replay(dcache_io_lsu_load_0_resp_bits_replay),
    .io_lsu_load_0_resp_bits_tag_error(dcache_io_lsu_load_0_resp_bits_tag_error),
    .io_lsu_load_0_resp_bits_error(dcache_io_lsu_load_0_resp_bits_error),
    .io_lsu_load_0_s1_kill(dcache_io_lsu_load_0_s1_kill),
    .io_lsu_load_0_s2_kill(dcache_io_lsu_load_0_s2_kill),
    .io_lsu_load_0_s1_paddr(dcache_io_lsu_load_0_s1_paddr),
    .io_lsu_load_0_s1_hit_way(dcache_io_lsu_load_0_s1_hit_way),
    .io_lsu_load_0_s1_disable_fast_wakeup(dcache_io_lsu_load_0_s1_disable_fast_wakeup),
    .io_lsu_load_0_s1_bank_conflict(dcache_io_lsu_load_0_s1_bank_conflict),
    .io_lsu_load_1_req_ready(dcache_io_lsu_load_1_req_ready),
    .io_lsu_load_1_req_valid(dcache_io_lsu_load_1_req_valid),
    .io_lsu_load_1_req_bits_cmd(dcache_io_lsu_load_1_req_bits_cmd),
    .io_lsu_load_1_req_bits_addr(dcache_io_lsu_load_1_req_bits_addr),
    .io_lsu_load_1_req_bits_instrtype(dcache_io_lsu_load_1_req_bits_instrtype),
    .io_lsu_load_1_resp_bits_data(dcache_io_lsu_load_1_resp_bits_data),
    .io_lsu_load_1_resp_bits_miss(dcache_io_lsu_load_1_resp_bits_miss),
    .io_lsu_load_1_resp_bits_replay(dcache_io_lsu_load_1_resp_bits_replay),
    .io_lsu_load_1_resp_bits_tag_error(dcache_io_lsu_load_1_resp_bits_tag_error),
    .io_lsu_load_1_resp_bits_error(dcache_io_lsu_load_1_resp_bits_error),
    .io_lsu_load_1_s1_kill(dcache_io_lsu_load_1_s1_kill),
    .io_lsu_load_1_s2_kill(dcache_io_lsu_load_1_s2_kill),
    .io_lsu_load_1_s1_paddr(dcache_io_lsu_load_1_s1_paddr),
    .io_lsu_load_1_s1_hit_way(dcache_io_lsu_load_1_s1_hit_way),
    .io_lsu_load_1_s1_disable_fast_wakeup(dcache_io_lsu_load_1_s1_disable_fast_wakeup),
    .io_lsu_load_1_s1_bank_conflict(dcache_io_lsu_load_1_s1_bank_conflict),
    .io_lsu_lsq_valid(dcache_io_lsu_lsq_valid),
    .io_lsu_lsq_bits_addr(dcache_io_lsu_lsq_bits_addr),
    .io_lsu_lsq_bits_data(dcache_io_lsu_lsq_bits_data),
    .io_lsu_store_req_ready(dcache_io_lsu_store_req_ready),
    .io_lsu_store_req_valid(dcache_io_lsu_store_req_valid),
    .io_lsu_store_req_bits_vaddr(dcache_io_lsu_store_req_bits_vaddr),
    .io_lsu_store_req_bits_addr(dcache_io_lsu_store_req_bits_addr),
    .io_lsu_store_req_bits_data(dcache_io_lsu_store_req_bits_data),
    .io_lsu_store_req_bits_mask(dcache_io_lsu_store_req_bits_mask),
    .io_lsu_store_req_bits_id(dcache_io_lsu_store_req_bits_id),
    .io_lsu_store_main_pipe_hit_resp_valid(dcache_io_lsu_store_main_pipe_hit_resp_valid),
    .io_lsu_store_main_pipe_hit_resp_bits_id(dcache_io_lsu_store_main_pipe_hit_resp_bits_id),
    .io_lsu_store_refill_hit_resp_valid(dcache_io_lsu_store_refill_hit_resp_valid),
    .io_lsu_store_refill_hit_resp_bits_id(dcache_io_lsu_store_refill_hit_resp_bits_id),
    .io_lsu_store_replay_resp_valid(dcache_io_lsu_store_replay_resp_valid),
    .io_lsu_store_replay_resp_bits_id(dcache_io_lsu_store_replay_resp_bits_id),
    .io_lsu_atomics_req_ready(dcache_io_lsu_atomics_req_ready),
    .io_lsu_atomics_req_valid(dcache_io_lsu_atomics_req_valid),
    .io_lsu_atomics_req_bits_cmd(dcache_io_lsu_atomics_req_bits_cmd),
    .io_lsu_atomics_req_bits_addr(dcache_io_lsu_atomics_req_bits_addr),
    .io_lsu_atomics_req_bits_data(dcache_io_lsu_atomics_req_bits_data),
    .io_lsu_atomics_req_bits_mask(dcache_io_lsu_atomics_req_bits_mask),
    .io_lsu_atomics_req_bits_vaddr(dcache_io_lsu_atomics_req_bits_vaddr),
    .io_lsu_atomics_resp_ready(dcache_io_lsu_atomics_resp_ready),
    .io_lsu_atomics_resp_valid(dcache_io_lsu_atomics_resp_valid),
    .io_lsu_atomics_resp_bits_data(dcache_io_lsu_atomics_resp_bits_data),
    .io_lsu_atomics_resp_bits_id(dcache_io_lsu_atomics_resp_bits_id),
    .io_lsu_atomics_resp_bits_error(dcache_io_lsu_atomics_resp_bits_error),
    .io_lsu_release_valid(dcache_io_lsu_release_valid),
    .io_lsu_release_bits_paddr(dcache_io_lsu_release_bits_paddr),
    .io_csr_distribute_csr_wvalid(dcache_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(dcache_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(dcache_io_csr_distribute_csr_wdata),
    .io_csr_update_wvalid(dcache_io_csr_update_wvalid),
    .io_csr_update_waddr(dcache_io_csr_update_waddr),
    .io_csr_update_wdata(dcache_io_csr_update_wdata),
    .io_error_source_tag(dcache_io_error_source_tag),
    .io_error_source_data(dcache_io_error_source_data),
    .io_error_source_l2(dcache_io_error_source_l2),
    .io_error_opType_fetch(dcache_io_error_opType_fetch),
    .io_error_opType_load(dcache_io_error_opType_load),
    .io_error_opType_store(dcache_io_error_opType_store),
    .io_error_opType_probe(dcache_io_error_opType_probe),
    .io_error_opType_release(dcache_io_error_opType_release),
    .io_error_opType_atom(dcache_io_error_opType_atom),
    .io_error_paddr(dcache_io_error_paddr),
    .io_error_report_to_beu(dcache_io_error_report_to_beu),
    .io_error_valid(dcache_io_error_valid),
    .io_perf_0_value(dcache_io_perf_0_value),
    .io_perf_1_value(dcache_io_perf_1_value),
    .io_perf_2_value(dcache_io_perf_2_value),
    .io_perf_3_value(dcache_io_perf_3_value),
    .io_perf_4_value(dcache_io_perf_4_value),
    .io_perf_5_value(dcache_io_perf_5_value),
    .io_perf_6_value(dcache_io_perf_6_value),
    .io_perf_7_value(dcache_io_perf_7_value),
    .io_perf_8_value(dcache_io_perf_8_value),
    .io_perf_9_value(dcache_io_perf_9_value),
    .io_perf_10_value(dcache_io_perf_10_value),
    .io_perf_11_value(dcache_io_perf_11_value),
    .io_perf_12_value(dcache_io_perf_12_value),
    .io_perf_13_value(dcache_io_perf_13_value),
    .io_perf_14_value(dcache_io_perf_14_value),
    .io_perf_15_value(dcache_io_perf_15_value),
    .io_perf_16_value(dcache_io_perf_16_value),
    .io_perf_17_value(dcache_io_perf_17_value),
    .io_perf_18_value(dcache_io_perf_18_value),
    .io_perf_19_value(dcache_io_perf_19_value),
    .io_perf_20_value(dcache_io_perf_20_value),
    .io_perf_21_value(dcache_io_perf_21_value),
    .io_perf_22_value(dcache_io_perf_22_value),
    .io_perf_23_value(dcache_io_perf_23_value),
    .io_perf_24_value(dcache_io_perf_24_value),
    .io_perf_25_value(dcache_io_perf_25_value),
    .io_perf_26_value(dcache_io_perf_26_value)
  );
  assign auto_client_out_a_valid = dcache_auto_client_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_opcode = dcache_auto_client_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_param = dcache_auto_client_out_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_size = dcache_auto_client_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_source = dcache_auto_client_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_address = dcache_auto_client_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_user_alias = dcache_auto_client_out_a_bits_user_alias; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_user_needHint = dcache_auto_client_out_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_mask = dcache_auto_client_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_bready = dcache_auto_client_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_valid = dcache_auto_client_out_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_opcode = dcache_auto_client_out_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_param = dcache_auto_client_out_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_size = dcache_auto_client_out_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_source = dcache_auto_client_out_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_address = dcache_auto_client_out_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_echo_blockisdirty = dcache_auto_client_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_data = dcache_auto_client_out_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_d_ready = dcache_auto_client_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_e_valid = dcache_auto_client_out_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_e_bits_sink = dcache_auto_client_out_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign io_lsu_load_0_req_ready = dcache_io_lsu_load_0_req_ready; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_resp_bits_data = dcache_io_lsu_load_0_resp_bits_data; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_resp_bits_miss = dcache_io_lsu_load_0_resp_bits_miss; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_resp_bits_replay = dcache_io_lsu_load_0_resp_bits_replay; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_resp_bits_tag_error = dcache_io_lsu_load_0_resp_bits_tag_error; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_resp_bits_error = dcache_io_lsu_load_0_resp_bits_error; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_s1_hit_way = dcache_io_lsu_load_0_s1_hit_way; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_s1_disable_fast_wakeup = dcache_io_lsu_load_0_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_0_s1_bank_conflict = dcache_io_lsu_load_0_s1_bank_conflict; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_req_ready = dcache_io_lsu_load_1_req_ready; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_resp_bits_data = dcache_io_lsu_load_1_resp_bits_data; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_resp_bits_miss = dcache_io_lsu_load_1_resp_bits_miss; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_resp_bits_replay = dcache_io_lsu_load_1_resp_bits_replay; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_resp_bits_tag_error = dcache_io_lsu_load_1_resp_bits_tag_error; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_resp_bits_error = dcache_io_lsu_load_1_resp_bits_error; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_s1_hit_way = dcache_io_lsu_load_1_s1_hit_way; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_s1_disable_fast_wakeup = dcache_io_lsu_load_1_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_load_1_s1_bank_conflict = dcache_io_lsu_load_1_s1_bank_conflict; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_lsq_valid = dcache_io_lsu_lsq_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_lsq_bits_addr = dcache_io_lsu_lsq_bits_addr; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_lsq_bits_data = dcache_io_lsu_lsq_bits_data; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_req_ready = dcache_io_lsu_store_req_ready; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_main_pipe_hit_resp_valid = dcache_io_lsu_store_main_pipe_hit_resp_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_main_pipe_hit_resp_bits_id = dcache_io_lsu_store_main_pipe_hit_resp_bits_id; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_refill_hit_resp_valid = dcache_io_lsu_store_refill_hit_resp_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_refill_hit_resp_bits_id = dcache_io_lsu_store_refill_hit_resp_bits_id; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_replay_resp_valid = dcache_io_lsu_store_replay_resp_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_store_replay_resp_bits_id = dcache_io_lsu_store_replay_resp_bits_id; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_atomics_req_ready = dcache_io_lsu_atomics_req_ready; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_atomics_resp_valid = dcache_io_lsu_atomics_resp_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_atomics_resp_bits_data = dcache_io_lsu_atomics_resp_bits_data; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_atomics_resp_bits_id = dcache_io_lsu_atomics_resp_bits_id; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_atomics_resp_bits_error = dcache_io_lsu_atomics_resp_bits_error; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_release_valid = dcache_io_lsu_release_valid; // @[DCacheWrapper.scala 753:10]
  assign io_lsu_release_bits_paddr = dcache_io_lsu_release_bits_paddr; // @[DCacheWrapper.scala 753:10]
  assign io_csr_update_wvalid = dcache_io_csr_update_wvalid; // @[DCacheWrapper.scala 753:10]
  assign io_csr_update_waddr = dcache_io_csr_update_waddr; // @[DCacheWrapper.scala 753:10]
  assign io_csr_update_wdata = dcache_io_csr_update_wdata; // @[DCacheWrapper.scala 753:10]
  assign io_error_paddr = dcache_io_error_paddr; // @[DCacheWrapper.scala 753:10]
  assign io_error_report_to_beu = dcache_io_error_report_to_beu; // @[DCacheWrapper.scala 753:10]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_14_value = io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_15_value = io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_16_value = io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_17_value = io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_18_value = io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_19_value = io_perf_19_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_20_value = io_perf_20_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_21_value = io_perf_21_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_22_value = io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_23_value = io_perf_23_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_24_value = io_perf_24_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_25_value = io_perf_25_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_26_value = io_perf_26_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign dcache_clock = clock;
  assign dcache_reset = reset;
  assign dcache_auto_client_out_a_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bvalid = auto_client_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bparam = auto_client_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_baddress = auto_client_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bdata = auto_client_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_c_ready = auto_client_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_valid = auto_client_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_opcode = auto_client_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_param = auto_client_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_size = auto_client_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_sink = auto_client_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_denied = auto_client_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_echo_blockisdirty = auto_client_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_corrupt = auto_client_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_e_ready = auto_client_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_io_lsu_load_0_req_valid = io_lsu_load_0_req_valid; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_req_bits_cmd = io_lsu_load_0_req_bits_cmd; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_req_bits_addr = io_lsu_load_0_req_bits_addr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_req_bits_instrtype = io_lsu_load_0_req_bits_instrtype; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_s1_kill = io_lsu_load_0_s1_kill; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_s2_kill = io_lsu_load_0_s2_kill; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_0_s1_paddr = io_lsu_load_0_s1_paddr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_req_valid = io_lsu_load_1_req_valid; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_req_bits_cmd = io_lsu_load_1_req_bits_cmd; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_req_bits_addr = io_lsu_load_1_req_bits_addr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_req_bits_instrtype = io_lsu_load_1_req_bits_instrtype; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_s1_kill = io_lsu_load_1_s1_kill; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_s2_kill = io_lsu_load_1_s2_kill; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_load_1_s1_paddr = io_lsu_load_1_s1_paddr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_valid = io_lsu_store_req_valid; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_bits_vaddr = io_lsu_store_req_bits_vaddr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_bits_addr = io_lsu_store_req_bits_addr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_bits_data = io_lsu_store_req_bits_data; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_bits_mask = io_lsu_store_req_bits_mask; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_store_req_bits_id = io_lsu_store_req_bits_id; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_valid = io_lsu_atomics_req_valid; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_bits_cmd = io_lsu_atomics_req_bits_cmd; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_bits_addr = io_lsu_atomics_req_bits_addr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_bits_data = io_lsu_atomics_req_bits_data; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_bits_mask = io_lsu_atomics_req_bits_mask; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_req_bits_vaddr = io_lsu_atomics_req_bits_vaddr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_lsu_atomics_resp_ready = io_lsu_atomics_resp_ready; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 753:10]
  assign dcache_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 753:10]
  always @(posedge clock) begin
    io_perf_0_value_REG <= dcache_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= dcache_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= dcache_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= dcache_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= dcache_io_perf_4_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= dcache_io_perf_5_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= dcache_io_perf_6_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= dcache_io_perf_7_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= dcache_io_perf_8_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= dcache_io_perf_9_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= dcache_io_perf_10_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= dcache_io_perf_11_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_12_value_REG <= dcache_io_perf_12_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_13_value_REG <= dcache_io_perf_13_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_14_value_REG <= dcache_io_perf_14_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_15_value_REG <= dcache_io_perf_15_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_16_value_REG <= dcache_io_perf_16_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_17_value_REG <= dcache_io_perf_17_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_18_value_REG <= dcache_io_perf_18_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_18_value_REG_1 <= io_perf_18_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_19_value_REG <= dcache_io_perf_19_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_19_value_REG_1 <= io_perf_19_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_20_value_REG <= dcache_io_perf_20_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_20_value_REG_1 <= io_perf_20_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_21_value_REG <= dcache_io_perf_21_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_21_value_REG_1 <= io_perf_21_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_22_value_REG <= dcache_io_perf_22_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_22_value_REG_1 <= io_perf_22_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_23_value_REG <= dcache_io_perf_23_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_23_value_REG_1 <= io_perf_23_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_24_value_REG <= dcache_io_perf_24_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_24_value_REG_1 <= io_perf_24_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_25_value_REG <= dcache_io_perf_25_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_25_value_REG_1 <= io_perf_25_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_26_value_REG <= dcache_io_perf_26_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_26_value_REG_1 <= io_perf_26_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_18_value_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_18_value_REG_1 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  io_perf_19_value_REG = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  io_perf_19_value_REG_1 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  io_perf_20_value_REG = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  io_perf_20_value_REG_1 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  io_perf_21_value_REG = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  io_perf_21_value_REG_1 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  io_perf_22_value_REG = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  io_perf_22_value_REG_1 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  io_perf_23_value_REG = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  io_perf_23_value_REG_1 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  io_perf_24_value_REG = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  io_perf_24_value_REG_1 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  io_perf_25_value_REG = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  io_perf_25_value_REG_1 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  io_perf_26_value_REG = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  io_perf_26_value_REG_1 = _RAND_53[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
