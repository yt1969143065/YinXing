module RVCORETile(
  input          clock,
  input          reset,
  output         auto_misc_beu_int_out_0,
  input          auto_misc_memory_port_out_a_ready,
  output         auto_misc_memory_port_out_a_valid,
  output [2:0]   auto_misc_memory_port_out_a_bits_opcode,
  output [2:0]   auto_misc_memory_port_out_a_bits_param,
  output [2:0]   auto_misc_memory_port_out_a_bits_size,
  output [4:0]   auto_misc_memory_port_out_a_bits_source,
  output [35:0]  auto_misc_memory_port_out_a_bits_address,
  output         auto_misc_memory_port_out_a_bits_user_preferCache,
  output [31:0]  auto_misc_memory_port_out_a_bits_mask,
  output [255:0] auto_misc_memory_port_out_a_bits_data,
  output         auto_misc_memory_port_out_a_bits_corrupt,
  output         auto_misc_memory_port_out_bready,
  input          auto_misc_memory_port_out_bvalid,
  input  [2:0]   auto_misc_memory_port_out_bopcode,
  input  [1:0]   auto_misc_memory_port_out_bparam,
  input  [2:0]   auto_misc_memory_port_out_bsize,
  input  [35:0]  auto_misc_memory_port_out_baddress,
  input  [255:0] auto_misc_memory_port_out_bdata,
  input          auto_misc_memory_port_out_c_ready,
  output         auto_misc_memory_port_out_c_valid,
  output [2:0]   auto_misc_memory_port_out_c_bits_opcode,
  output [2:0]   auto_misc_memory_port_out_c_bits_param,
  output [2:0]   auto_misc_memory_port_out_c_bits_size,
  output [4:0]   auto_misc_memory_port_out_c_bits_source,
  output [35:0]  auto_misc_memory_port_out_c_bits_address,
  output         auto_misc_memory_port_out_c_bits_echo_blockisdirty,
  output [255:0] auto_misc_memory_port_out_c_bits_data,
  output         auto_misc_memory_port_out_d_ready,
  input          auto_misc_memory_port_out_d_valid,
  input  [2:0]   auto_misc_memory_port_out_d_bits_opcode,
  input  [1:0]   auto_misc_memory_port_out_d_bits_param,
  input  [2:0]   auto_misc_memory_port_out_d_bits_size,
  input  [4:0]   auto_misc_memory_port_out_d_bits_source,
  input  [5:0]   auto_misc_memory_port_out_d_bits_sink,
  input          auto_misc_memory_port_out_d_bits_denied,
  input          auto_misc_memory_port_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_misc_memory_port_out_d_bits_data,
  input          auto_misc_memory_port_out_e_ready,
  output         auto_misc_memory_port_out_e_valid,
  output [5:0]   auto_misc_memory_port_out_e_bits_sink,
  input          auto_misc_mmio_port_out_a_ready,
  output         auto_misc_mmio_port_out_a_valid,
  output [2:0]   auto_misc_mmio_port_out_a_bits_opcode,
  output [2:0]   auto_misc_mmio_port_out_a_bits_size,
  output         auto_misc_mmio_port_out_a_bits_source,
  output [35:0]  auto_misc_mmio_port_out_a_bits_address,
  output [7:0]   auto_misc_mmio_port_out_a_bits_mask,
  output [63:0]  auto_misc_mmio_port_out_a_bits_data,
  output         auto_misc_mmio_port_out_d_ready,
  input          auto_misc_mmio_port_out_d_valid,
  input  [2:0]   auto_misc_mmio_port_out_d_bits_opcode,
  input  [2:0]   auto_misc_mmio_port_out_d_bits_size,
  input          auto_misc_mmio_port_out_d_bits_source,
  input  [63:0]  auto_misc_mmio_port_out_d_bits_data,
  input          auto_core_plic_int_sink_in_1_0,
  input          auto_core_plic_int_sink_in_0_0,
  input          auto_core_debug_int_sink_in_0,
  input          auto_core_clint_int_sink_in_0,
  input          auto_core_clint_int_sink_in_1,
  input          auto_core_reset_sink_in,
  input  [63:0]  io_hartId,
  input  [35:0]  io_reset_vector,
  output         io_cpu_halt
);
  wire  core_clock; // @[RVCORETile.scala 75:32]
  wire  core_reset; // @[RVCORETile.scala 75:32]
  wire  core_auto_memBlock_uncache_client_out_a_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_memBlock_uncache_client_out_a_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_memBlock_uncache_client_out_a_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_memBlock_uncache_client_out_a_bits_size; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_memBlock_uncache_client_out_a_bits_address; // @[RVCORETile.scala 75:32]
  wire [7:0] core_auto_memBlock_uncache_client_out_a_bits_mask; // @[RVCORETile.scala 75:32]
  wire [63:0] core_auto_memBlock_uncache_client_out_a_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_memBlock_uncache_client_out_d_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_memBlock_uncache_client_out_d_valid; // @[RVCORETile.scala 75:32]
  wire  core_auto_memBlock_uncache_client_out_d_bits_source; // @[RVCORETile.scala 75:32]
  wire [63:0] core_auto_memBlock_uncache_client_out_d_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_a_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_a_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_a_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_a_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_a_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_1_a_bits_source; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_1_a_bits_address; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_1_a_bits_user_alias; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_a_bits_user_preferCache; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_a_bits_user_needHint; // @[RVCORETile.scala 75:32]
  wire [31:0] core_auto_xbar_out_1_a_bits_mask; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_1_a_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_a_bits_corrupt; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_bready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_bvalid; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_1_bparam; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_1_bsource; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_1_baddress; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_1_bdata; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_c_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_c_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_c_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_c_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_c_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_1_c_bits_source; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_1_c_bits_address; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_c_bits_echo_blockisdirty; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_1_c_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_d_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_d_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_d_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_1_d_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_1_d_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_1_d_bits_source; // @[RVCORETile.scala 75:32]
  wire [3:0] core_auto_xbar_out_1_d_bits_sink; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_d_bits_denied; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_d_bits_echo_blockisdirty; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_1_d_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_d_bits_corrupt; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_1_e_valid; // @[RVCORETile.scala 75:32]
  wire [3:0] core_auto_xbar_out_1_e_bits_sink; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_a_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_a_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_a_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_a_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_a_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_0_a_bits_source; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_0_a_bits_address; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_0_a_bits_user_alias; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_a_bits_user_preferCache; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_a_bits_user_needHint; // @[RVCORETile.scala 75:32]
  wire [31:0] core_auto_xbar_out_0_a_bits_mask; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_0_a_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_a_bits_corrupt; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_bready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_bvalid; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_0_bparam; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_0_bsource; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_0_baddress; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_0_bdata; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_c_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_c_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_c_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_c_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_c_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_0_c_bits_source; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_xbar_out_0_c_bits_address; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_c_bits_echo_blockisdirty; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_0_c_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_d_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_d_valid; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_d_bits_opcode; // @[RVCORETile.scala 75:32]
  wire [1:0] core_auto_xbar_out_0_d_bits_param; // @[RVCORETile.scala 75:32]
  wire [2:0] core_auto_xbar_out_0_d_bits_size; // @[RVCORETile.scala 75:32]
  wire [5:0] core_auto_xbar_out_0_d_bits_source; // @[RVCORETile.scala 75:32]
  wire [3:0] core_auto_xbar_out_0_d_bits_sink; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_d_bits_denied; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_d_bits_echo_blockisdirty; // @[RVCORETile.scala 75:32]
  wire [255:0] core_auto_xbar_out_0_d_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_d_bits_corrupt; // @[RVCORETile.scala 75:32]
  wire  core_auto_xbar_out_0_e_valid; // @[RVCORETile.scala 75:32]
  wire [3:0] core_auto_xbar_out_0_e_bits_sink; // @[RVCORETile.scala 75:32]
  wire  core_auto_frontend_instrUncache_client_out_a_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_frontend_instrUncache_client_out_a_valid; // @[RVCORETile.scala 75:32]
  wire [35:0] core_auto_frontend_instrUncache_client_out_a_bits_address; // @[RVCORETile.scala 75:32]
  wire  core_auto_frontend_instrUncache_client_out_d_ready; // @[RVCORETile.scala 75:32]
  wire  core_auto_frontend_instrUncache_client_out_d_valid; // @[RVCORETile.scala 75:32]
  wire  core_auto_frontend_instrUncache_client_out_d_bits_source; // @[RVCORETile.scala 75:32]
  wire [63:0] core_auto_frontend_instrUncache_client_out_d_bits_data; // @[RVCORETile.scala 75:32]
  wire  core_auto_plic_int_sink_in_1_0; // @[RVCORETile.scala 75:32]
  wire  core_auto_plic_int_sink_in_0_0; // @[RVCORETile.scala 75:32]
  wire  core_auto_debug_int_sink_in_0; // @[RVCORETile.scala 75:32]
  wire  core_auto_clint_int_sink_in_0; // @[RVCORETile.scala 75:32]
  wire  core_auto_clint_int_sink_in_1; // @[RVCORETile.scala 75:32]
  wire [63:0] core_io_hartId; // @[RVCORETile.scala 75:32]
  wire [35:0] core_io_reset_vector; // @[RVCORETile.scala 75:32]
  wire  core_io_cpu_halt; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_0_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_1_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_2_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_3_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_4_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_5_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_6_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_7_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_8_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_9_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_10_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_11_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_12_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_13_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_14_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_15_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_16_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_17_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_18_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_19_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_20_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_21_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_22_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_23_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_24_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_25_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_26_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_27_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_28_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_29_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_30_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_31_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_32_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_33_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_34_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_35_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_36_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_37_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_38_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_39_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_40_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_41_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_42_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_43_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_44_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_45_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_46_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_47_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_48_value; // @[RVCORETile.scala 75:32]
  wire [5:0] core_io_perfEvents_49_value; // @[RVCORETile.scala 75:32]
  wire  core_io_beu_errors_icache_ecc_error_valid; // @[RVCORETile.scala 75:32]
  wire [35:0] core_io_beu_errors_icache_ecc_error_bits; // @[RVCORETile.scala 75:32]
  wire  core_io_beu_errors_dcache_ecc_error_valid; // @[RVCORETile.scala 75:32]
  wire [35:0] core_io_beu_errors_dcache_ecc_error_bits; // @[RVCORETile.scala 75:32]
  wire  misc_clock; // @[RVCORETile.scala 76:32]
  wire  misc_reset; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_1_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_1_a_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_buffers_in_1_a_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_buffers_in_1_a_bits_size; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_buffers_in_1_a_bits_address; // @[RVCORETile.scala 76:32]
  wire [7:0] misc_auto_buffers_in_1_a_bits_mask; // @[RVCORETile.scala 76:32]
  wire [63:0] misc_auto_buffers_in_1_a_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_1_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_1_d_valid; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_1_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [63:0] misc_auto_buffers_in_1_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_0_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_0_a_valid; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_buffers_in_0_a_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_0_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_0_d_valid; // @[RVCORETile.scala 76:32]
  wire  misc_auto_buffers_in_0_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [63:0] misc_auto_buffers_in_0_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_a_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_a_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_a_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_a_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_1_a_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_1_a_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_a_bits_user_preferCache; // @[RVCORETile.scala 76:32]
  wire [31:0] misc_auto_binder_in_1_a_bits_mask; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_1_a_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_a_bits_corrupt; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_bready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_bvalid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_bopcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_binder_in_1_bparam; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_bsize; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_1_bsource; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_1_baddress; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_1_bdata; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_c_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_c_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_c_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_c_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_c_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_1_c_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_1_c_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_c_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_1_c_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_d_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_d_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_binder_in_1_d_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_1_d_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_1_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_binder_in_1_d_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_d_bits_denied; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_d_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_1_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_e_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_1_e_valid; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_binder_in_1_e_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_a_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_a_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_a_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_a_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_0_a_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_0_a_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_a_bits_user_preferCache; // @[RVCORETile.scala 76:32]
  wire [31:0] misc_auto_binder_in_0_a_bits_mask; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_0_a_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_a_bits_corrupt; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_bready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_bvalid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_bopcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_binder_in_0_bparam; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_bsize; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_0_bsource; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_0_baddress; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_0_bdata; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_c_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_c_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_c_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_c_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_c_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_0_c_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_binder_in_0_c_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_c_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_0_c_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_d_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_d_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_binder_in_0_d_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_binder_in_0_d_bits_size; // @[RVCORETile.scala 76:32]
  wire [3:0] misc_auto_binder_in_0_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_binder_in_0_d_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_d_bits_denied; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_d_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_binder_in_0_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_e_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_binder_in_0_e_valid; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_binder_in_0_e_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_beu_int_out_0; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_a_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_a_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_a_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_a_bits_size; // @[RVCORETile.scala 76:32]
  wire [4:0] misc_auto_memory_port_out_a_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_memory_port_out_a_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_a_bits_user_preferCache; // @[RVCORETile.scala 76:32]
  wire [31:0] misc_auto_memory_port_out_a_bits_mask; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_memory_port_out_a_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_a_bits_corrupt; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_bready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_bvalid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_bopcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_memory_port_out_bparam; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_bsize; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_memory_port_out_baddress; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_memory_port_out_bdata; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_c_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_c_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_c_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_c_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_c_bits_size; // @[RVCORETile.scala 76:32]
  wire [4:0] misc_auto_memory_port_out_c_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_memory_port_out_c_bits_address; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_c_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_memory_port_out_c_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_d_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_d_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [1:0] misc_auto_memory_port_out_d_bits_param; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_memory_port_out_d_bits_size; // @[RVCORETile.scala 76:32]
  wire [4:0] misc_auto_memory_port_out_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_memory_port_out_d_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_d_bits_denied; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_d_bits_echo_blockisdirty; // @[RVCORETile.scala 76:32]
  wire [255:0] misc_auto_memory_port_out_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_e_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_memory_port_out_e_valid; // @[RVCORETile.scala 76:32]
  wire [5:0] misc_auto_memory_port_out_e_bits_sink; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_a_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_a_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_mmio_port_out_a_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_mmio_port_out_a_bits_size; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_a_bits_source; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_auto_mmio_port_out_a_bits_address; // @[RVCORETile.scala 76:32]
  wire [7:0] misc_auto_mmio_port_out_a_bits_mask; // @[RVCORETile.scala 76:32]
  wire [63:0] misc_auto_mmio_port_out_a_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_d_ready; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_d_valid; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_mmio_port_out_d_bits_opcode; // @[RVCORETile.scala 76:32]
  wire [2:0] misc_auto_mmio_port_out_d_bits_size; // @[RVCORETile.scala 76:32]
  wire  misc_auto_mmio_port_out_d_bits_source; // @[RVCORETile.scala 76:32]
  wire [63:0] misc_auto_mmio_port_out_d_bits_data; // @[RVCORETile.scala 76:32]
  wire  misc_beu_errors_icache_ecc_error_valid; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_beu_errors_icache_ecc_error_bits; // @[RVCORETile.scala 76:32]
  wire  misc_beu_errors_dcache_ecc_error_valid; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_beu_errors_dcache_ecc_error_bits; // @[RVCORETile.scala 76:32]
  wire  misc_beu_errors_l2_ecc_error_valid; // @[RVCORETile.scala 76:32]
  wire [35:0] misc_beu_errors_l2_ecc_error_bits; // @[RVCORETile.scala 76:32]
  wire  l2cache_clock; // @[RVCORETile.scala 78:15]
  wire  l2cache_reset; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_a_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_a_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_a_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_a_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_a_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_1_a_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_1_a_bits_address; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_1_a_bits_user_alias; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_a_bits_user_preferCache; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_a_bits_user_needHint; // @[RVCORETile.scala 78:15]
  wire [31:0] l2cache_auto_in_1_a_bits_mask; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_1_a_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_a_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_bready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_bvalid; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_1_bparam; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_1_bsource; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_1_baddress; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_1_bdata; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_c_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_c_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_c_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_c_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_c_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_1_c_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_1_c_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_c_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_1_c_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_d_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_d_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_d_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_1_d_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_1_d_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_1_d_bits_source; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_in_1_d_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_d_bits_denied; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_d_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_1_d_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_d_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_1_e_valid; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_in_1_e_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_a_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_a_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_a_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_a_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_a_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_0_a_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_0_a_bits_address; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_0_a_bits_user_alias; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_a_bits_user_preferCache; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_a_bits_user_needHint; // @[RVCORETile.scala 78:15]
  wire [31:0] l2cache_auto_in_0_a_bits_mask; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_0_a_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_a_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_bready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_bvalid; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_0_bparam; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_0_bsource; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_0_baddress; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_0_bdata; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_c_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_c_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_c_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_c_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_c_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_0_c_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_in_0_c_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_c_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_0_c_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_d_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_d_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_d_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_in_0_d_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_in_0_d_bits_size; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_in_0_d_bits_source; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_in_0_d_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_d_bits_denied; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_d_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_in_0_d_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_d_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_in_0_e_valid; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_in_0_e_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_a_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_a_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_a_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_a_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_a_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_1_a_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_1_a_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_a_bits_user_preferCache; // @[RVCORETile.scala 78:15]
  wire [31:0] l2cache_auto_out_1_a_bits_mask; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_1_a_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_a_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_bready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_bvalid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_bopcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_out_1_bparam; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_bsize; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_1_bsource; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_1_baddress; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_1_bdata; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_c_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_c_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_c_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_c_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_c_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_1_c_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_1_c_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_c_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_1_c_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_d_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_d_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_d_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_out_1_d_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_1_d_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_1_d_bits_source; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_out_1_d_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_d_bits_denied; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_d_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_1_d_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_e_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_1_e_valid; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_out_1_e_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_a_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_a_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_a_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_a_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_a_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_0_a_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_0_a_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_a_bits_user_preferCache; // @[RVCORETile.scala 78:15]
  wire [31:0] l2cache_auto_out_0_a_bits_mask; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_0_a_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_a_bits_corrupt; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_bready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_bvalid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_bopcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_out_0_bparam; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_bsize; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_0_bsource; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_0_baddress; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_0_bdata; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_c_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_c_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_c_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_c_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_c_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_0_c_bits_source; // @[RVCORETile.scala 78:15]
  wire [35:0] l2cache_auto_out_0_c_bits_address; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_c_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_0_c_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_d_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_d_valid; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_d_bits_opcode; // @[RVCORETile.scala 78:15]
  wire [1:0] l2cache_auto_out_0_d_bits_param; // @[RVCORETile.scala 78:15]
  wire [2:0] l2cache_auto_out_0_d_bits_size; // @[RVCORETile.scala 78:15]
  wire [3:0] l2cache_auto_out_0_d_bits_source; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_out_0_d_bits_sink; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_d_bits_denied; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_d_bits_echo_blockisdirty; // @[RVCORETile.scala 78:15]
  wire [255:0] l2cache_auto_out_0_d_bits_data; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_e_ready; // @[RVCORETile.scala 78:15]
  wire  l2cache_auto_out_0_e_valid; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_auto_out_0_e_bits_sink; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_0; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_1; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_2; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_3; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_4; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_5; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_6; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_7; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_8; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_9; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_10; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_11; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_12; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_13; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_14; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_15; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_16; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_17; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_18; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_19; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_20; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_21; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_22; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_23; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_0_24; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_0; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_1; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_2; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_3; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_4; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_5; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_6; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_7; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_8; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_9; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_10; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_11; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_12; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_13; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_14; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_15; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_16; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_17; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_18; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_19; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_20; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_21; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_22; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_23; // @[RVCORETile.scala 78:15]
  wire [5:0] l2cache_io_perfEvents_1_24; // @[RVCORETile.scala 78:15]
  wire  l2cache_io_ecc_error_valid; // @[RVCORETile.scala 78:15]
  wire [63:0] l2cache_io_ecc_error_bits; // @[RVCORETile.scala 78:15]
  wire  core_io_reset_vector_delay_clock; // @[Hold.scala 94:23]
  wire [35:0] core_io_reset_vector_delay_io_in; // @[Hold.scala 94:23]
  wire [35:0] core_io_reset_vector_delay_io_out; // @[Hold.scala 94:23]
  wire  resetGen_clock; // @[ResetGen.scala 61:32]
  wire  resetGen_reset; // @[ResetGen.scala 61:32]
  wire  resetGen_io_out; // @[ResetGen.scala 61:32]
  RVCORECore core ( // @[RVCORETile.scala 75:32]
    .clock(core_clock),
    .reset(core_reset),
    .auto_memBlock_uncache_client_out_a_ready(core_auto_memBlock_uncache_client_out_a_ready),
    .auto_memBlock_uncache_client_out_a_valid(core_auto_memBlock_uncache_client_out_a_valid),
    .auto_memBlock_uncache_client_out_a_bits_opcode(core_auto_memBlock_uncache_client_out_a_bits_opcode),
    .auto_memBlock_uncache_client_out_a_bits_size(core_auto_memBlock_uncache_client_out_a_bits_size),
    .auto_memBlock_uncache_client_out_a_bits_address(core_auto_memBlock_uncache_client_out_a_bits_address),
    .auto_memBlock_uncache_client_out_a_bits_mask(core_auto_memBlock_uncache_client_out_a_bits_mask),
    .auto_memBlock_uncache_client_out_a_bits_data(core_auto_memBlock_uncache_client_out_a_bits_data),
    .auto_memBlock_uncache_client_out_d_ready(core_auto_memBlock_uncache_client_out_d_ready),
    .auto_memBlock_uncache_client_out_d_valid(core_auto_memBlock_uncache_client_out_d_valid),
    .auto_memBlock_uncache_client_out_d_bits_source(core_auto_memBlock_uncache_client_out_d_bits_source),
    .auto_memBlock_uncache_client_out_d_bits_data(core_auto_memBlock_uncache_client_out_d_bits_data),
    .auto_xbar_out_1_a_ready(core_auto_xbar_out_1_a_ready),
    .auto_xbar_out_1_a_valid(core_auto_xbar_out_1_a_valid),
    .auto_xbar_out_1_a_bits_opcode(core_auto_xbar_out_1_a_bits_opcode),
    .auto_xbar_out_1_a_bits_param(core_auto_xbar_out_1_a_bits_param),
    .auto_xbar_out_1_a_bits_size(core_auto_xbar_out_1_a_bits_size),
    .auto_xbar_out_1_a_bits_source(core_auto_xbar_out_1_a_bits_source),
    .auto_xbar_out_1_a_bits_address(core_auto_xbar_out_1_a_bits_address),
    .auto_xbar_out_1_a_bits_user_alias(core_auto_xbar_out_1_a_bits_user_alias),
    .auto_xbar_out_1_a_bits_user_preferCache(core_auto_xbar_out_1_a_bits_user_preferCache),
    .auto_xbar_out_1_a_bits_user_needHint(core_auto_xbar_out_1_a_bits_user_needHint),
    .auto_xbar_out_1_a_bits_mask(core_auto_xbar_out_1_a_bits_mask),
    .auto_xbar_out_1_a_bits_data(core_auto_xbar_out_1_a_bits_data),
    .auto_xbar_out_1_a_bits_corrupt(core_auto_xbar_out_1_a_bits_corrupt),
    .auto_xbar_out_1_bready(core_auto_xbar_out_1_bready),
    .auto_xbar_out_1_bvalid(core_auto_xbar_out_1_bvalid),
    .auto_xbar_out_1_bparam(core_auto_xbar_out_1_bparam),
    .auto_xbar_out_1_bsource(core_auto_xbar_out_1_bsource),
    .auto_xbar_out_1_baddress(core_auto_xbar_out_1_baddress),
    .auto_xbar_out_1_bdata(core_auto_xbar_out_1_bdata),
    .auto_xbar_out_1_c_ready(core_auto_xbar_out_1_c_ready),
    .auto_xbar_out_1_c_valid(core_auto_xbar_out_1_c_valid),
    .auto_xbar_out_1_c_bits_opcode(core_auto_xbar_out_1_c_bits_opcode),
    .auto_xbar_out_1_c_bits_param(core_auto_xbar_out_1_c_bits_param),
    .auto_xbar_out_1_c_bits_size(core_auto_xbar_out_1_c_bits_size),
    .auto_xbar_out_1_c_bits_source(core_auto_xbar_out_1_c_bits_source),
    .auto_xbar_out_1_c_bits_address(core_auto_xbar_out_1_c_bits_address),
    .auto_xbar_out_1_c_bits_echo_blockisdirty(core_auto_xbar_out_1_c_bits_echo_blockisdirty),
    .auto_xbar_out_1_c_bits_data(core_auto_xbar_out_1_c_bits_data),
    .auto_xbar_out_1_d_ready(core_auto_xbar_out_1_d_ready),
    .auto_xbar_out_1_d_valid(core_auto_xbar_out_1_d_valid),
    .auto_xbar_out_1_d_bits_opcode(core_auto_xbar_out_1_d_bits_opcode),
    .auto_xbar_out_1_d_bits_param(core_auto_xbar_out_1_d_bits_param),
    .auto_xbar_out_1_d_bits_size(core_auto_xbar_out_1_d_bits_size),
    .auto_xbar_out_1_d_bits_source(core_auto_xbar_out_1_d_bits_source),
    .auto_xbar_out_1_d_bits_sink(core_auto_xbar_out_1_d_bits_sink),
    .auto_xbar_out_1_d_bits_denied(core_auto_xbar_out_1_d_bits_denied),
    .auto_xbar_out_1_d_bits_echo_blockisdirty(core_auto_xbar_out_1_d_bits_echo_blockisdirty),
    .auto_xbar_out_1_d_bits_data(core_auto_xbar_out_1_d_bits_data),
    .auto_xbar_out_1_d_bits_corrupt(core_auto_xbar_out_1_d_bits_corrupt),
    .auto_xbar_out_1_e_valid(core_auto_xbar_out_1_e_valid),
    .auto_xbar_out_1_e_bits_sink(core_auto_xbar_out_1_e_bits_sink),
    .auto_xbar_out_0_a_ready(core_auto_xbar_out_0_a_ready),
    .auto_xbar_out_0_a_valid(core_auto_xbar_out_0_a_valid),
    .auto_xbar_out_0_a_bits_opcode(core_auto_xbar_out_0_a_bits_opcode),
    .auto_xbar_out_0_a_bits_param(core_auto_xbar_out_0_a_bits_param),
    .auto_xbar_out_0_a_bits_size(core_auto_xbar_out_0_a_bits_size),
    .auto_xbar_out_0_a_bits_source(core_auto_xbar_out_0_a_bits_source),
    .auto_xbar_out_0_a_bits_address(core_auto_xbar_out_0_a_bits_address),
    .auto_xbar_out_0_a_bits_user_alias(core_auto_xbar_out_0_a_bits_user_alias),
    .auto_xbar_out_0_a_bits_user_preferCache(core_auto_xbar_out_0_a_bits_user_preferCache),
    .auto_xbar_out_0_a_bits_user_needHint(core_auto_xbar_out_0_a_bits_user_needHint),
    .auto_xbar_out_0_a_bits_mask(core_auto_xbar_out_0_a_bits_mask),
    .auto_xbar_out_0_a_bits_data(core_auto_xbar_out_0_a_bits_data),
    .auto_xbar_out_0_a_bits_corrupt(core_auto_xbar_out_0_a_bits_corrupt),
    .auto_xbar_out_0_bready(core_auto_xbar_out_0_bready),
    .auto_xbar_out_0_bvalid(core_auto_xbar_out_0_bvalid),
    .auto_xbar_out_0_bparam(core_auto_xbar_out_0_bparam),
    .auto_xbar_out_0_bsource(core_auto_xbar_out_0_bsource),
    .auto_xbar_out_0_baddress(core_auto_xbar_out_0_baddress),
    .auto_xbar_out_0_bdata(core_auto_xbar_out_0_bdata),
    .auto_xbar_out_0_c_ready(core_auto_xbar_out_0_c_ready),
    .auto_xbar_out_0_c_valid(core_auto_xbar_out_0_c_valid),
    .auto_xbar_out_0_c_bits_opcode(core_auto_xbar_out_0_c_bits_opcode),
    .auto_xbar_out_0_c_bits_param(core_auto_xbar_out_0_c_bits_param),
    .auto_xbar_out_0_c_bits_size(core_auto_xbar_out_0_c_bits_size),
    .auto_xbar_out_0_c_bits_source(core_auto_xbar_out_0_c_bits_source),
    .auto_xbar_out_0_c_bits_address(core_auto_xbar_out_0_c_bits_address),
    .auto_xbar_out_0_c_bits_echo_blockisdirty(core_auto_xbar_out_0_c_bits_echo_blockisdirty),
    .auto_xbar_out_0_c_bits_data(core_auto_xbar_out_0_c_bits_data),
    .auto_xbar_out_0_d_ready(core_auto_xbar_out_0_d_ready),
    .auto_xbar_out_0_d_valid(core_auto_xbar_out_0_d_valid),
    .auto_xbar_out_0_d_bits_opcode(core_auto_xbar_out_0_d_bits_opcode),
    .auto_xbar_out_0_d_bits_param(core_auto_xbar_out_0_d_bits_param),
    .auto_xbar_out_0_d_bits_size(core_auto_xbar_out_0_d_bits_size),
    .auto_xbar_out_0_d_bits_source(core_auto_xbar_out_0_d_bits_source),
    .auto_xbar_out_0_d_bits_sink(core_auto_xbar_out_0_d_bits_sink),
    .auto_xbar_out_0_d_bits_denied(core_auto_xbar_out_0_d_bits_denied),
    .auto_xbar_out_0_d_bits_echo_blockisdirty(core_auto_xbar_out_0_d_bits_echo_blockisdirty),
    .auto_xbar_out_0_d_bits_data(core_auto_xbar_out_0_d_bits_data),
    .auto_xbar_out_0_d_bits_corrupt(core_auto_xbar_out_0_d_bits_corrupt),
    .auto_xbar_out_0_e_valid(core_auto_xbar_out_0_e_valid),
    .auto_xbar_out_0_e_bits_sink(core_auto_xbar_out_0_e_bits_sink),
    .auto_frontend_instrUncache_client_out_a_ready(core_auto_frontend_instrUncache_client_out_a_ready),
    .auto_frontend_instrUncache_client_out_a_valid(core_auto_frontend_instrUncache_client_out_a_valid),
    .auto_frontend_instrUncache_client_out_a_bits_address(core_auto_frontend_instrUncache_client_out_a_bits_address),
    .auto_frontend_instrUncache_client_out_d_ready(core_auto_frontend_instrUncache_client_out_d_ready),
    .auto_frontend_instrUncache_client_out_d_valid(core_auto_frontend_instrUncache_client_out_d_valid),
    .auto_frontend_instrUncache_client_out_d_bits_source(core_auto_frontend_instrUncache_client_out_d_bits_source),
    .auto_frontend_instrUncache_client_out_d_bits_data(core_auto_frontend_instrUncache_client_out_d_bits_data),
    .auto_plic_int_sink_in_1_0(core_auto_plic_int_sink_in_1_0),
    .auto_plic_int_sink_in_0_0(core_auto_plic_int_sink_in_0_0),
    .auto_debug_int_sink_in_0(core_auto_debug_int_sink_in_0),
    .auto_clint_int_sink_in_0(core_auto_clint_int_sink_in_0),
    .auto_clint_int_sink_in_1(core_auto_clint_int_sink_in_1),
    .io_hartId(core_io_hartId),
    .io_reset_vector(core_io_reset_vector),
    .io_cpu_halt(core_io_cpu_halt),
    .io_perfEvents_0_value(core_io_perfEvents_0_value),
    .io_perfEvents_1_value(core_io_perfEvents_1_value),
    .io_perfEvents_2_value(core_io_perfEvents_2_value),
    .io_perfEvents_3_value(core_io_perfEvents_3_value),
    .io_perfEvents_4_value(core_io_perfEvents_4_value),
    .io_perfEvents_5_value(core_io_perfEvents_5_value),
    .io_perfEvents_6_value(core_io_perfEvents_6_value),
    .io_perfEvents_7_value(core_io_perfEvents_7_value),
    .io_perfEvents_8_value(core_io_perfEvents_8_value),
    .io_perfEvents_9_value(core_io_perfEvents_9_value),
    .io_perfEvents_10_value(core_io_perfEvents_10_value),
    .io_perfEvents_11_value(core_io_perfEvents_11_value),
    .io_perfEvents_12_value(core_io_perfEvents_12_value),
    .io_perfEvents_13_value(core_io_perfEvents_13_value),
    .io_perfEvents_14_value(core_io_perfEvents_14_value),
    .io_perfEvents_15_value(core_io_perfEvents_15_value),
    .io_perfEvents_16_value(core_io_perfEvents_16_value),
    .io_perfEvents_17_value(core_io_perfEvents_17_value),
    .io_perfEvents_18_value(core_io_perfEvents_18_value),
    .io_perfEvents_19_value(core_io_perfEvents_19_value),
    .io_perfEvents_20_value(core_io_perfEvents_20_value),
    .io_perfEvents_21_value(core_io_perfEvents_21_value),
    .io_perfEvents_22_value(core_io_perfEvents_22_value),
    .io_perfEvents_23_value(core_io_perfEvents_23_value),
    .io_perfEvents_24_value(core_io_perfEvents_24_value),
    .io_perfEvents_25_value(core_io_perfEvents_25_value),
    .io_perfEvents_26_value(core_io_perfEvents_26_value),
    .io_perfEvents_27_value(core_io_perfEvents_27_value),
    .io_perfEvents_28_value(core_io_perfEvents_28_value),
    .io_perfEvents_29_value(core_io_perfEvents_29_value),
    .io_perfEvents_30_value(core_io_perfEvents_30_value),
    .io_perfEvents_31_value(core_io_perfEvents_31_value),
    .io_perfEvents_32_value(core_io_perfEvents_32_value),
    .io_perfEvents_33_value(core_io_perfEvents_33_value),
    .io_perfEvents_34_value(core_io_perfEvents_34_value),
    .io_perfEvents_35_value(core_io_perfEvents_35_value),
    .io_perfEvents_36_value(core_io_perfEvents_36_value),
    .io_perfEvents_37_value(core_io_perfEvents_37_value),
    .io_perfEvents_38_value(core_io_perfEvents_38_value),
    .io_perfEvents_39_value(core_io_perfEvents_39_value),
    .io_perfEvents_40_value(core_io_perfEvents_40_value),
    .io_perfEvents_41_value(core_io_perfEvents_41_value),
    .io_perfEvents_42_value(core_io_perfEvents_42_value),
    .io_perfEvents_43_value(core_io_perfEvents_43_value),
    .io_perfEvents_44_value(core_io_perfEvents_44_value),
    .io_perfEvents_45_value(core_io_perfEvents_45_value),
    .io_perfEvents_46_value(core_io_perfEvents_46_value),
    .io_perfEvents_47_value(core_io_perfEvents_47_value),
    .io_perfEvents_48_value(core_io_perfEvents_48_value),
    .io_perfEvents_49_value(core_io_perfEvents_49_value),
    .io_beu_errors_icache_ecc_error_valid(core_io_beu_errors_icache_ecc_error_valid),
    .io_beu_errors_icache_ecc_error_bits(core_io_beu_errors_icache_ecc_error_bits),
    .io_beu_errors_dcache_ecc_error_valid(core_io_beu_errors_dcache_ecc_error_valid),
    .io_beu_errors_dcache_ecc_error_bits(core_io_beu_errors_dcache_ecc_error_bits)
  );
  RVCORETileMisc misc ( // @[RVCORETile.scala 76:32]
    .clock(misc_clock),
    .reset(misc_reset),
    .auto_buffers_in_1_a_ready(misc_auto_buffers_in_1_a_ready),
    .auto_buffers_in_1_a_valid(misc_auto_buffers_in_1_a_valid),
    .auto_buffers_in_1_a_bits_opcode(misc_auto_buffers_in_1_a_bits_opcode),
    .auto_buffers_in_1_a_bits_size(misc_auto_buffers_in_1_a_bits_size),
    .auto_buffers_in_1_a_bits_address(misc_auto_buffers_in_1_a_bits_address),
    .auto_buffers_in_1_a_bits_mask(misc_auto_buffers_in_1_a_bits_mask),
    .auto_buffers_in_1_a_bits_data(misc_auto_buffers_in_1_a_bits_data),
    .auto_buffers_in_1_d_ready(misc_auto_buffers_in_1_d_ready),
    .auto_buffers_in_1_d_valid(misc_auto_buffers_in_1_d_valid),
    .auto_buffers_in_1_d_bits_source(misc_auto_buffers_in_1_d_bits_source),
    .auto_buffers_in_1_d_bits_data(misc_auto_buffers_in_1_d_bits_data),
    .auto_buffers_in_0_a_ready(misc_auto_buffers_in_0_a_ready),
    .auto_buffers_in_0_a_valid(misc_auto_buffers_in_0_a_valid),
    .auto_buffers_in_0_a_bits_address(misc_auto_buffers_in_0_a_bits_address),
    .auto_buffers_in_0_d_ready(misc_auto_buffers_in_0_d_ready),
    .auto_buffers_in_0_d_valid(misc_auto_buffers_in_0_d_valid),
    .auto_buffers_in_0_d_bits_source(misc_auto_buffers_in_0_d_bits_source),
    .auto_buffers_in_0_d_bits_data(misc_auto_buffers_in_0_d_bits_data),
    .auto_binder_in_1_a_ready(misc_auto_binder_in_1_a_ready),
    .auto_binder_in_1_a_valid(misc_auto_binder_in_1_a_valid),
    .auto_binder_in_1_a_bits_opcode(misc_auto_binder_in_1_a_bits_opcode),
    .auto_binder_in_1_a_bits_param(misc_auto_binder_in_1_a_bits_param),
    .auto_binder_in_1_a_bits_size(misc_auto_binder_in_1_a_bits_size),
    .auto_binder_in_1_a_bits_source(misc_auto_binder_in_1_a_bits_source),
    .auto_binder_in_1_a_bits_address(misc_auto_binder_in_1_a_bits_address),
    .auto_binder_in_1_a_bits_user_preferCache(misc_auto_binder_in_1_a_bits_user_preferCache),
    .auto_binder_in_1_a_bits_mask(misc_auto_binder_in_1_a_bits_mask),
    .auto_binder_in_1_a_bits_data(misc_auto_binder_in_1_a_bits_data),
    .auto_binder_in_1_a_bits_corrupt(misc_auto_binder_in_1_a_bits_corrupt),
    .auto_binder_in_1_bready(misc_auto_binder_in_1_bready),
    .auto_binder_in_1_bvalid(misc_auto_binder_in_1_bvalid),
    .auto_binder_in_1_bopcode(misc_auto_binder_in_1_bopcode),
    .auto_binder_in_1_bparam(misc_auto_binder_in_1_bparam),
    .auto_binder_in_1_bsize(misc_auto_binder_in_1_bsize),
    .auto_binder_in_1_bsource(misc_auto_binder_in_1_bsource),
    .auto_binder_in_1_baddress(misc_auto_binder_in_1_baddress),
    .auto_binder_in_1_bdata(misc_auto_binder_in_1_bdata),
    .auto_binder_in_1_c_ready(misc_auto_binder_in_1_c_ready),
    .auto_binder_in_1_c_valid(misc_auto_binder_in_1_c_valid),
    .auto_binder_in_1_c_bits_opcode(misc_auto_binder_in_1_c_bits_opcode),
    .auto_binder_in_1_c_bits_param(misc_auto_binder_in_1_c_bits_param),
    .auto_binder_in_1_c_bits_size(misc_auto_binder_in_1_c_bits_size),
    .auto_binder_in_1_c_bits_source(misc_auto_binder_in_1_c_bits_source),
    .auto_binder_in_1_c_bits_address(misc_auto_binder_in_1_c_bits_address),
    .auto_binder_in_1_c_bits_echo_blockisdirty(misc_auto_binder_in_1_c_bits_echo_blockisdirty),
    .auto_binder_in_1_c_bits_data(misc_auto_binder_in_1_c_bits_data),
    .auto_binder_in_1_d_ready(misc_auto_binder_in_1_d_ready),
    .auto_binder_in_1_d_valid(misc_auto_binder_in_1_d_valid),
    .auto_binder_in_1_d_bits_opcode(misc_auto_binder_in_1_d_bits_opcode),
    .auto_binder_in_1_d_bits_param(misc_auto_binder_in_1_d_bits_param),
    .auto_binder_in_1_d_bits_size(misc_auto_binder_in_1_d_bits_size),
    .auto_binder_in_1_d_bits_source(misc_auto_binder_in_1_d_bits_source),
    .auto_binder_in_1_d_bits_sink(misc_auto_binder_in_1_d_bits_sink),
    .auto_binder_in_1_d_bits_denied(misc_auto_binder_in_1_d_bits_denied),
    .auto_binder_in_1_d_bits_echo_blockisdirty(misc_auto_binder_in_1_d_bits_echo_blockisdirty),
    .auto_binder_in_1_d_bits_data(misc_auto_binder_in_1_d_bits_data),
    .auto_binder_in_1_e_ready(misc_auto_binder_in_1_e_ready),
    .auto_binder_in_1_e_valid(misc_auto_binder_in_1_e_valid),
    .auto_binder_in_1_e_bits_sink(misc_auto_binder_in_1_e_bits_sink),
    .auto_binder_in_0_a_ready(misc_auto_binder_in_0_a_ready),
    .auto_binder_in_0_a_valid(misc_auto_binder_in_0_a_valid),
    .auto_binder_in_0_a_bits_opcode(misc_auto_binder_in_0_a_bits_opcode),
    .auto_binder_in_0_a_bits_param(misc_auto_binder_in_0_a_bits_param),
    .auto_binder_in_0_a_bits_size(misc_auto_binder_in_0_a_bits_size),
    .auto_binder_in_0_a_bits_source(misc_auto_binder_in_0_a_bits_source),
    .auto_binder_in_0_a_bits_address(misc_auto_binder_in_0_a_bits_address),
    .auto_binder_in_0_a_bits_user_preferCache(misc_auto_binder_in_0_a_bits_user_preferCache),
    .auto_binder_in_0_a_bits_mask(misc_auto_binder_in_0_a_bits_mask),
    .auto_binder_in_0_a_bits_data(misc_auto_binder_in_0_a_bits_data),
    .auto_binder_in_0_a_bits_corrupt(misc_auto_binder_in_0_a_bits_corrupt),
    .auto_binder_in_0_bready(misc_auto_binder_in_0_bready),
    .auto_binder_in_0_bvalid(misc_auto_binder_in_0_bvalid),
    .auto_binder_in_0_bopcode(misc_auto_binder_in_0_bopcode),
    .auto_binder_in_0_bparam(misc_auto_binder_in_0_bparam),
    .auto_binder_in_0_bsize(misc_auto_binder_in_0_bsize),
    .auto_binder_in_0_bsource(misc_auto_binder_in_0_bsource),
    .auto_binder_in_0_baddress(misc_auto_binder_in_0_baddress),
    .auto_binder_in_0_bdata(misc_auto_binder_in_0_bdata),
    .auto_binder_in_0_c_ready(misc_auto_binder_in_0_c_ready),
    .auto_binder_in_0_c_valid(misc_auto_binder_in_0_c_valid),
    .auto_binder_in_0_c_bits_opcode(misc_auto_binder_in_0_c_bits_opcode),
    .auto_binder_in_0_c_bits_param(misc_auto_binder_in_0_c_bits_param),
    .auto_binder_in_0_c_bits_size(misc_auto_binder_in_0_c_bits_size),
    .auto_binder_in_0_c_bits_source(misc_auto_binder_in_0_c_bits_source),
    .auto_binder_in_0_c_bits_address(misc_auto_binder_in_0_c_bits_address),
    .auto_binder_in_0_c_bits_echo_blockisdirty(misc_auto_binder_in_0_c_bits_echo_blockisdirty),
    .auto_binder_in_0_c_bits_data(misc_auto_binder_in_0_c_bits_data),
    .auto_binder_in_0_d_ready(misc_auto_binder_in_0_d_ready),
    .auto_binder_in_0_d_valid(misc_auto_binder_in_0_d_valid),
    .auto_binder_in_0_d_bits_opcode(misc_auto_binder_in_0_d_bits_opcode),
    .auto_binder_in_0_d_bits_param(misc_auto_binder_in_0_d_bits_param),
    .auto_binder_in_0_d_bits_size(misc_auto_binder_in_0_d_bits_size),
    .auto_binder_in_0_d_bits_source(misc_auto_binder_in_0_d_bits_source),
    .auto_binder_in_0_d_bits_sink(misc_auto_binder_in_0_d_bits_sink),
    .auto_binder_in_0_d_bits_denied(misc_auto_binder_in_0_d_bits_denied),
    .auto_binder_in_0_d_bits_echo_blockisdirty(misc_auto_binder_in_0_d_bits_echo_blockisdirty),
    .auto_binder_in_0_d_bits_data(misc_auto_binder_in_0_d_bits_data),
    .auto_binder_in_0_e_ready(misc_auto_binder_in_0_e_ready),
    .auto_binder_in_0_e_valid(misc_auto_binder_in_0_e_valid),
    .auto_binder_in_0_e_bits_sink(misc_auto_binder_in_0_e_bits_sink),
    .auto_beu_int_out_0(misc_auto_beu_int_out_0),
    .auto_memory_port_out_a_ready(misc_auto_memory_port_out_a_ready),
    .auto_memory_port_out_a_valid(misc_auto_memory_port_out_a_valid),
    .auto_memory_port_out_a_bits_opcode(misc_auto_memory_port_out_a_bits_opcode),
    .auto_memory_port_out_a_bits_param(misc_auto_memory_port_out_a_bits_param),
    .auto_memory_port_out_a_bits_size(misc_auto_memory_port_out_a_bits_size),
    .auto_memory_port_out_a_bits_source(misc_auto_memory_port_out_a_bits_source),
    .auto_memory_port_out_a_bits_address(misc_auto_memory_port_out_a_bits_address),
    .auto_memory_port_out_a_bits_user_preferCache(misc_auto_memory_port_out_a_bits_user_preferCache),
    .auto_memory_port_out_a_bits_mask(misc_auto_memory_port_out_a_bits_mask),
    .auto_memory_port_out_a_bits_data(misc_auto_memory_port_out_a_bits_data),
    .auto_memory_port_out_a_bits_corrupt(misc_auto_memory_port_out_a_bits_corrupt),
    .auto_memory_port_out_bready(misc_auto_memory_port_out_bready),
    .auto_memory_port_out_bvalid(misc_auto_memory_port_out_bvalid),
    .auto_memory_port_out_bopcode(misc_auto_memory_port_out_bopcode),
    .auto_memory_port_out_bparam(misc_auto_memory_port_out_bparam),
    .auto_memory_port_out_bsize(misc_auto_memory_port_out_bsize),
    .auto_memory_port_out_baddress(misc_auto_memory_port_out_baddress),
    .auto_memory_port_out_bdata(misc_auto_memory_port_out_bdata),
    .auto_memory_port_out_c_ready(misc_auto_memory_port_out_c_ready),
    .auto_memory_port_out_c_valid(misc_auto_memory_port_out_c_valid),
    .auto_memory_port_out_c_bits_opcode(misc_auto_memory_port_out_c_bits_opcode),
    .auto_memory_port_out_c_bits_param(misc_auto_memory_port_out_c_bits_param),
    .auto_memory_port_out_c_bits_size(misc_auto_memory_port_out_c_bits_size),
    .auto_memory_port_out_c_bits_source(misc_auto_memory_port_out_c_bits_source),
    .auto_memory_port_out_c_bits_address(misc_auto_memory_port_out_c_bits_address),
    .auto_memory_port_out_c_bits_echo_blockisdirty(misc_auto_memory_port_out_c_bits_echo_blockisdirty),
    .auto_memory_port_out_c_bits_data(misc_auto_memory_port_out_c_bits_data),
    .auto_memory_port_out_d_ready(misc_auto_memory_port_out_d_ready),
    .auto_memory_port_out_d_valid(misc_auto_memory_port_out_d_valid),
    .auto_memory_port_out_d_bits_opcode(misc_auto_memory_port_out_d_bits_opcode),
    .auto_memory_port_out_d_bits_param(misc_auto_memory_port_out_d_bits_param),
    .auto_memory_port_out_d_bits_size(misc_auto_memory_port_out_d_bits_size),
    .auto_memory_port_out_d_bits_source(misc_auto_memory_port_out_d_bits_source),
    .auto_memory_port_out_d_bits_sink(misc_auto_memory_port_out_d_bits_sink),
    .auto_memory_port_out_d_bits_denied(misc_auto_memory_port_out_d_bits_denied),
    .auto_memory_port_out_d_bits_echo_blockisdirty(misc_auto_memory_port_out_d_bits_echo_blockisdirty),
    .auto_memory_port_out_d_bits_data(misc_auto_memory_port_out_d_bits_data),
    .auto_memory_port_out_e_ready(misc_auto_memory_port_out_e_ready),
    .auto_memory_port_out_e_valid(misc_auto_memory_port_out_e_valid),
    .auto_memory_port_out_e_bits_sink(misc_auto_memory_port_out_e_bits_sink),
    .auto_mmio_port_out_a_ready(misc_auto_mmio_port_out_a_ready),
    .auto_mmio_port_out_a_valid(misc_auto_mmio_port_out_a_valid),
    .auto_mmio_port_out_a_bits_opcode(misc_auto_mmio_port_out_a_bits_opcode),
    .auto_mmio_port_out_a_bits_size(misc_auto_mmio_port_out_a_bits_size),
    .auto_mmio_port_out_a_bits_source(misc_auto_mmio_port_out_a_bits_source),
    .auto_mmio_port_out_a_bits_address(misc_auto_mmio_port_out_a_bits_address),
    .auto_mmio_port_out_a_bits_mask(misc_auto_mmio_port_out_a_bits_mask),
    .auto_mmio_port_out_a_bits_data(misc_auto_mmio_port_out_a_bits_data),
    .auto_mmio_port_out_d_ready(misc_auto_mmio_port_out_d_ready),
    .auto_mmio_port_out_d_valid(misc_auto_mmio_port_out_d_valid),
    .auto_mmio_port_out_d_bits_opcode(misc_auto_mmio_port_out_d_bits_opcode),
    .auto_mmio_port_out_d_bits_size(misc_auto_mmio_port_out_d_bits_size),
    .auto_mmio_port_out_d_bits_source(misc_auto_mmio_port_out_d_bits_source),
    .auto_mmio_port_out_d_bits_data(misc_auto_mmio_port_out_d_bits_data),
    .beu_errors_icache_ecc_error_valid(misc_beu_errors_icache_ecc_error_valid),
    .beu_errors_icache_ecc_error_bits(misc_beu_errors_icache_ecc_error_bits),
    .beu_errors_dcache_ecc_error_valid(misc_beu_errors_dcache_ecc_error_valid),
    .beu_errors_dcache_ecc_error_bits(misc_beu_errors_dcache_ecc_error_bits),
    .beu_errors_l2_ecc_error_valid(misc_beu_errors_l2_ecc_error_valid),
    .beu_errors_l2_ecc_error_bits(misc_beu_errors_l2_ecc_error_bits)
  );
  HuanCun l2cache ( // @[RVCORETile.scala 78:15]
    .clock(l2cache_clock),
    .reset(l2cache_reset),
    .auto_in_1_a_ready(l2cache_auto_in_1_a_ready),
    .auto_in_1_a_valid(l2cache_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(l2cache_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(l2cache_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(l2cache_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(l2cache_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(l2cache_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_user_alias(l2cache_auto_in_1_a_bits_user_alias),
    .auto_in_1_a_bits_user_preferCache(l2cache_auto_in_1_a_bits_user_preferCache),
    .auto_in_1_a_bits_user_needHint(l2cache_auto_in_1_a_bits_user_needHint),
    .auto_in_1_a_bits_mask(l2cache_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(l2cache_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(l2cache_auto_in_1_a_bits_corrupt),
    .auto_in_1_bready(l2cache_auto_in_1_bready),
    .auto_in_1_bvalid(l2cache_auto_in_1_bvalid),
    .auto_in_1_bparam(l2cache_auto_in_1_bparam),
    .auto_in_1_bsource(l2cache_auto_in_1_bsource),
    .auto_in_1_baddress(l2cache_auto_in_1_baddress),
    .auto_in_1_bdata(l2cache_auto_in_1_bdata),
    .auto_in_1_c_ready(l2cache_auto_in_1_c_ready),
    .auto_in_1_c_valid(l2cache_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(l2cache_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(l2cache_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(l2cache_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(l2cache_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(l2cache_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_echo_blockisdirty(l2cache_auto_in_1_c_bits_echo_blockisdirty),
    .auto_in_1_c_bits_data(l2cache_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(l2cache_auto_in_1_d_ready),
    .auto_in_1_d_valid(l2cache_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(l2cache_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(l2cache_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(l2cache_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(l2cache_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(l2cache_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(l2cache_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_echo_blockisdirty(l2cache_auto_in_1_d_bits_echo_blockisdirty),
    .auto_in_1_d_bits_data(l2cache_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(l2cache_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(l2cache_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(l2cache_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(l2cache_auto_in_0_a_ready),
    .auto_in_0_a_valid(l2cache_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(l2cache_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(l2cache_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(l2cache_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(l2cache_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(l2cache_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_alias(l2cache_auto_in_0_a_bits_user_alias),
    .auto_in_0_a_bits_user_preferCache(l2cache_auto_in_0_a_bits_user_preferCache),
    .auto_in_0_a_bits_user_needHint(l2cache_auto_in_0_a_bits_user_needHint),
    .auto_in_0_a_bits_mask(l2cache_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(l2cache_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(l2cache_auto_in_0_a_bits_corrupt),
    .auto_in_0_bready(l2cache_auto_in_0_bready),
    .auto_in_0_bvalid(l2cache_auto_in_0_bvalid),
    .auto_in_0_bparam(l2cache_auto_in_0_bparam),
    .auto_in_0_bsource(l2cache_auto_in_0_bsource),
    .auto_in_0_baddress(l2cache_auto_in_0_baddress),
    .auto_in_0_bdata(l2cache_auto_in_0_bdata),
    .auto_in_0_c_ready(l2cache_auto_in_0_c_ready),
    .auto_in_0_c_valid(l2cache_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(l2cache_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(l2cache_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(l2cache_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(l2cache_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(l2cache_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_echo_blockisdirty(l2cache_auto_in_0_c_bits_echo_blockisdirty),
    .auto_in_0_c_bits_data(l2cache_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(l2cache_auto_in_0_d_ready),
    .auto_in_0_d_valid(l2cache_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(l2cache_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(l2cache_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(l2cache_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(l2cache_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(l2cache_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(l2cache_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_echo_blockisdirty(l2cache_auto_in_0_d_bits_echo_blockisdirty),
    .auto_in_0_d_bits_data(l2cache_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(l2cache_auto_in_0_d_bits_corrupt),
    .auto_in_0_e_valid(l2cache_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(l2cache_auto_in_0_e_bits_sink),
    .auto_out_1_a_ready(l2cache_auto_out_1_a_ready),
    .auto_out_1_a_valid(l2cache_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(l2cache_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(l2cache_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(l2cache_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(l2cache_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(l2cache_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_user_preferCache(l2cache_auto_out_1_a_bits_user_preferCache),
    .auto_out_1_a_bits_mask(l2cache_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(l2cache_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(l2cache_auto_out_1_a_bits_corrupt),
    .auto_out_1_bready(l2cache_auto_out_1_bready),
    .auto_out_1_bvalid(l2cache_auto_out_1_bvalid),
    .auto_out_1_bopcode(l2cache_auto_out_1_bopcode),
    .auto_out_1_bparam(l2cache_auto_out_1_bparam),
    .auto_out_1_bsize(l2cache_auto_out_1_bsize),
    .auto_out_1_bsource(l2cache_auto_out_1_bsource),
    .auto_out_1_baddress(l2cache_auto_out_1_baddress),
    .auto_out_1_bdata(l2cache_auto_out_1_bdata),
    .auto_out_1_c_ready(l2cache_auto_out_1_c_ready),
    .auto_out_1_c_valid(l2cache_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(l2cache_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(l2cache_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(l2cache_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(l2cache_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(l2cache_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_echo_blockisdirty(l2cache_auto_out_1_c_bits_echo_blockisdirty),
    .auto_out_1_c_bits_data(l2cache_auto_out_1_c_bits_data),
    .auto_out_1_d_ready(l2cache_auto_out_1_d_ready),
    .auto_out_1_d_valid(l2cache_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(l2cache_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(l2cache_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(l2cache_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(l2cache_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(l2cache_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(l2cache_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_echo_blockisdirty(l2cache_auto_out_1_d_bits_echo_blockisdirty),
    .auto_out_1_d_bits_data(l2cache_auto_out_1_d_bits_data),
    .auto_out_1_e_ready(l2cache_auto_out_1_e_ready),
    .auto_out_1_e_valid(l2cache_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(l2cache_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(l2cache_auto_out_0_a_ready),
    .auto_out_0_a_valid(l2cache_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(l2cache_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(l2cache_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(l2cache_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(l2cache_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(l2cache_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_user_preferCache(l2cache_auto_out_0_a_bits_user_preferCache),
    .auto_out_0_a_bits_mask(l2cache_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(l2cache_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(l2cache_auto_out_0_a_bits_corrupt),
    .auto_out_0_bready(l2cache_auto_out_0_bready),
    .auto_out_0_bvalid(l2cache_auto_out_0_bvalid),
    .auto_out_0_bopcode(l2cache_auto_out_0_bopcode),
    .auto_out_0_bparam(l2cache_auto_out_0_bparam),
    .auto_out_0_bsize(l2cache_auto_out_0_bsize),
    .auto_out_0_bsource(l2cache_auto_out_0_bsource),
    .auto_out_0_baddress(l2cache_auto_out_0_baddress),
    .auto_out_0_bdata(l2cache_auto_out_0_bdata),
    .auto_out_0_c_ready(l2cache_auto_out_0_c_ready),
    .auto_out_0_c_valid(l2cache_auto_out_0_c_valid),
    .auto_out_0_c_bits_opcode(l2cache_auto_out_0_c_bits_opcode),
    .auto_out_0_c_bits_param(l2cache_auto_out_0_c_bits_param),
    .auto_out_0_c_bits_size(l2cache_auto_out_0_c_bits_size),
    .auto_out_0_c_bits_source(l2cache_auto_out_0_c_bits_source),
    .auto_out_0_c_bits_address(l2cache_auto_out_0_c_bits_address),
    .auto_out_0_c_bits_echo_blockisdirty(l2cache_auto_out_0_c_bits_echo_blockisdirty),
    .auto_out_0_c_bits_data(l2cache_auto_out_0_c_bits_data),
    .auto_out_0_d_ready(l2cache_auto_out_0_d_ready),
    .auto_out_0_d_valid(l2cache_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(l2cache_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(l2cache_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(l2cache_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(l2cache_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(l2cache_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(l2cache_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_echo_blockisdirty(l2cache_auto_out_0_d_bits_echo_blockisdirty),
    .auto_out_0_d_bits_data(l2cache_auto_out_0_d_bits_data),
    .auto_out_0_e_ready(l2cache_auto_out_0_e_ready),
    .auto_out_0_e_valid(l2cache_auto_out_0_e_valid),
    .auto_out_0_e_bits_sink(l2cache_auto_out_0_e_bits_sink),
    .io_perfEvents_0_0(l2cache_io_perfEvents_0_0),
    .io_perfEvents_0_1(l2cache_io_perfEvents_0_1),
    .io_perfEvents_0_2(l2cache_io_perfEvents_0_2),
    .io_perfEvents_0_3(l2cache_io_perfEvents_0_3),
    .io_perfEvents_0_4(l2cache_io_perfEvents_0_4),
    .io_perfEvents_0_5(l2cache_io_perfEvents_0_5),
    .io_perfEvents_0_6(l2cache_io_perfEvents_0_6),
    .io_perfEvents_0_7(l2cache_io_perfEvents_0_7),
    .io_perfEvents_0_8(l2cache_io_perfEvents_0_8),
    .io_perfEvents_0_9(l2cache_io_perfEvents_0_9),
    .io_perfEvents_0_10(l2cache_io_perfEvents_0_10),
    .io_perfEvents_0_11(l2cache_io_perfEvents_0_11),
    .io_perfEvents_0_12(l2cache_io_perfEvents_0_12),
    .io_perfEvents_0_13(l2cache_io_perfEvents_0_13),
    .io_perfEvents_0_14(l2cache_io_perfEvents_0_14),
    .io_perfEvents_0_15(l2cache_io_perfEvents_0_15),
    .io_perfEvents_0_16(l2cache_io_perfEvents_0_16),
    .io_perfEvents_0_17(l2cache_io_perfEvents_0_17),
    .io_perfEvents_0_18(l2cache_io_perfEvents_0_18),
    .io_perfEvents_0_19(l2cache_io_perfEvents_0_19),
    .io_perfEvents_0_20(l2cache_io_perfEvents_0_20),
    .io_perfEvents_0_21(l2cache_io_perfEvents_0_21),
    .io_perfEvents_0_22(l2cache_io_perfEvents_0_22),
    .io_perfEvents_0_23(l2cache_io_perfEvents_0_23),
    .io_perfEvents_0_24(l2cache_io_perfEvents_0_24),
    .io_perfEvents_1_0(l2cache_io_perfEvents_1_0),
    .io_perfEvents_1_1(l2cache_io_perfEvents_1_1),
    .io_perfEvents_1_2(l2cache_io_perfEvents_1_2),
    .io_perfEvents_1_3(l2cache_io_perfEvents_1_3),
    .io_perfEvents_1_4(l2cache_io_perfEvents_1_4),
    .io_perfEvents_1_5(l2cache_io_perfEvents_1_5),
    .io_perfEvents_1_6(l2cache_io_perfEvents_1_6),
    .io_perfEvents_1_7(l2cache_io_perfEvents_1_7),
    .io_perfEvents_1_8(l2cache_io_perfEvents_1_8),
    .io_perfEvents_1_9(l2cache_io_perfEvents_1_9),
    .io_perfEvents_1_10(l2cache_io_perfEvents_1_10),
    .io_perfEvents_1_11(l2cache_io_perfEvents_1_11),
    .io_perfEvents_1_12(l2cache_io_perfEvents_1_12),
    .io_perfEvents_1_13(l2cache_io_perfEvents_1_13),
    .io_perfEvents_1_14(l2cache_io_perfEvents_1_14),
    .io_perfEvents_1_15(l2cache_io_perfEvents_1_15),
    .io_perfEvents_1_16(l2cache_io_perfEvents_1_16),
    .io_perfEvents_1_17(l2cache_io_perfEvents_1_17),
    .io_perfEvents_1_18(l2cache_io_perfEvents_1_18),
    .io_perfEvents_1_19(l2cache_io_perfEvents_1_19),
    .io_perfEvents_1_20(l2cache_io_perfEvents_1_20),
    .io_perfEvents_1_21(l2cache_io_perfEvents_1_21),
    .io_perfEvents_1_22(l2cache_io_perfEvents_1_22),
    .io_perfEvents_1_23(l2cache_io_perfEvents_1_23),
    .io_perfEvents_1_24(l2cache_io_perfEvents_1_24),
    .io_ecc_error_valid(l2cache_io_ecc_error_valid),
    .io_ecc_error_bits(l2cache_io_ecc_error_bits)
  );
  DelayN_2 core_io_reset_vector_delay ( // @[Hold.scala 94:23]
    .clock(core_io_reset_vector_delay_clock),
    .io_in(core_io_reset_vector_delay_io_in),
    .io_out(core_io_reset_vector_delay_io_out)
  );
  ResetGen resetGen ( // @[ResetGen.scala 61:32]
    .clock(resetGen_clock),
    .reset(resetGen_reset),
    .io_out(resetGen_io_out)
  );
  assign auto_misc_beu_int_out_0 = misc_auto_beu_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_valid = misc_auto_memory_port_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_opcode = misc_auto_memory_port_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_param = misc_auto_memory_port_out_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_size = misc_auto_memory_port_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_source = misc_auto_memory_port_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_address = misc_auto_memory_port_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_user_preferCache = misc_auto_memory_port_out_a_bits_user_preferCache; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_mask = misc_auto_memory_port_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_data = misc_auto_memory_port_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_a_bits_corrupt = misc_auto_memory_port_out_a_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_bready = misc_auto_memory_port_out_bready; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_valid = misc_auto_memory_port_out_c_valid; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_opcode = misc_auto_memory_port_out_c_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_param = misc_auto_memory_port_out_c_bits_param; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_size = misc_auto_memory_port_out_c_bits_size; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_source = misc_auto_memory_port_out_c_bits_source; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_address = misc_auto_memory_port_out_c_bits_address; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_echo_blockisdirty = misc_auto_memory_port_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_c_bits_data = misc_auto_memory_port_out_c_bits_data; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_d_ready = misc_auto_memory_port_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_e_valid = misc_auto_memory_port_out_e_valid; // @[LazyModule.scala 311:12]
  assign auto_misc_memory_port_out_e_bits_sink = misc_auto_memory_port_out_e_bits_sink; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_valid = misc_auto_mmio_port_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_opcode = misc_auto_mmio_port_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_size = misc_auto_mmio_port_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_source = misc_auto_mmio_port_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_address = misc_auto_mmio_port_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_mask = misc_auto_mmio_port_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_a_bits_data = misc_auto_mmio_port_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_misc_mmio_port_out_d_ready = misc_auto_mmio_port_out_d_ready; // @[LazyModule.scala 311:12]
  assign io_cpu_halt = core_io_cpu_halt; // @[RVCORETile.scala 116:17]
  assign core_clock = clock;
  assign core_reset = resetGen_io_out; // @[ResetGen.scala 56:24 62:27]
  assign core_auto_memBlock_uncache_client_out_a_ready = misc_auto_buffers_in_1_a_ready; // @[LazyModule.scala 298:16]
  assign core_auto_memBlock_uncache_client_out_d_valid = misc_auto_buffers_in_1_d_valid; // @[LazyModule.scala 298:16]
  assign core_auto_memBlock_uncache_client_out_d_bits_source = misc_auto_buffers_in_1_d_bits_source; // @[LazyModule.scala 298:16]
  assign core_auto_memBlock_uncache_client_out_d_bits_data = misc_auto_buffers_in_1_d_bits_data; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_a_ready = l2cache_auto_in_1_a_ready; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_bvalid = l2cache_auto_in_1_bvalid; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_bparam = l2cache_auto_in_1_bparam; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_bsource = l2cache_auto_in_1_bsource; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_baddress = l2cache_auto_in_1_baddress; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_bdata = l2cache_auto_in_1_bdata; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_c_ready = l2cache_auto_in_1_c_ready; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_valid = l2cache_auto_in_1_d_valid; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_opcode = l2cache_auto_in_1_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_param = l2cache_auto_in_1_d_bits_param; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_size = l2cache_auto_in_1_d_bits_size; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_source = l2cache_auto_in_1_d_bits_source; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_sink = l2cache_auto_in_1_d_bits_sink; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_denied = l2cache_auto_in_1_d_bits_denied; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_echo_blockisdirty = l2cache_auto_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_data = l2cache_auto_in_1_d_bits_data; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_1_d_bits_corrupt = l2cache_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_a_ready = l2cache_auto_in_0_a_ready; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_bvalid = l2cache_auto_in_0_bvalid; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_bparam = l2cache_auto_in_0_bparam; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_bsource = l2cache_auto_in_0_bsource; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_baddress = l2cache_auto_in_0_baddress; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_bdata = l2cache_auto_in_0_bdata; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_c_ready = l2cache_auto_in_0_c_ready; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_valid = l2cache_auto_in_0_d_valid; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_opcode = l2cache_auto_in_0_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_param = l2cache_auto_in_0_d_bits_param; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_size = l2cache_auto_in_0_d_bits_size; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_source = l2cache_auto_in_0_d_bits_source; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_sink = l2cache_auto_in_0_d_bits_sink; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_denied = l2cache_auto_in_0_d_bits_denied; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_echo_blockisdirty = l2cache_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_data = l2cache_auto_in_0_d_bits_data; // @[LazyModule.scala 298:16]
  assign core_auto_xbar_out_0_d_bits_corrupt = l2cache_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign core_auto_frontend_instrUncache_client_out_a_ready = misc_auto_buffers_in_0_a_ready; // @[LazyModule.scala 298:16]
  assign core_auto_frontend_instrUncache_client_out_d_valid = misc_auto_buffers_in_0_d_valid; // @[LazyModule.scala 298:16]
  assign core_auto_frontend_instrUncache_client_out_d_bits_source = misc_auto_buffers_in_0_d_bits_source; // @[LazyModule.scala 298:16]
  assign core_auto_frontend_instrUncache_client_out_d_bits_data = misc_auto_buffers_in_0_d_bits_data; // @[LazyModule.scala 298:16]
  assign core_auto_plic_int_sink_in_1_0 = auto_core_plic_int_sink_in_1_0; // @[LazyModule.scala 309:16]
  assign core_auto_plic_int_sink_in_0_0 = auto_core_plic_int_sink_in_0_0; // @[LazyModule.scala 309:16]
  assign core_auto_debug_int_sink_in_0 = auto_core_debug_int_sink_in_0; // @[LazyModule.scala 309:16]
  assign core_auto_clint_int_sink_in_0 = auto_core_clint_int_sink_in_0; // @[LazyModule.scala 309:16]
  assign core_auto_clint_int_sink_in_1 = auto_core_clint_int_sink_in_1; // @[LazyModule.scala 309:16]
  assign core_io_hartId = io_hartId; // @[RVCORETile.scala 114:27]
  assign core_io_reset_vector = core_io_reset_vector_delay_io_out; // @[RVCORETile.scala 115:33]
  assign core_io_perfEvents_0_value = l2cache_io_perfEvents_0_0; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_1_value = l2cache_io_perfEvents_0_1; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_2_value = l2cache_io_perfEvents_0_2; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_3_value = l2cache_io_perfEvents_0_3; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_4_value = l2cache_io_perfEvents_0_4; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_5_value = l2cache_io_perfEvents_0_5; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_6_value = l2cache_io_perfEvents_0_6; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_7_value = l2cache_io_perfEvents_0_7; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_8_value = l2cache_io_perfEvents_0_8; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_9_value = l2cache_io_perfEvents_0_9; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_10_value = l2cache_io_perfEvents_0_10; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_11_value = l2cache_io_perfEvents_0_11; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_12_value = l2cache_io_perfEvents_0_12; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_13_value = l2cache_io_perfEvents_0_13; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_14_value = l2cache_io_perfEvents_0_14; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_15_value = l2cache_io_perfEvents_0_15; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_16_value = l2cache_io_perfEvents_0_16; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_17_value = l2cache_io_perfEvents_0_17; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_18_value = l2cache_io_perfEvents_0_18; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_19_value = l2cache_io_perfEvents_0_19; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_20_value = l2cache_io_perfEvents_0_20; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_21_value = l2cache_io_perfEvents_0_21; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_22_value = l2cache_io_perfEvents_0_22; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_23_value = l2cache_io_perfEvents_0_23; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_24_value = l2cache_io_perfEvents_0_24; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_25_value = l2cache_io_perfEvents_1_0; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_26_value = l2cache_io_perfEvents_1_1; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_27_value = l2cache_io_perfEvents_1_2; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_28_value = l2cache_io_perfEvents_1_3; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_29_value = l2cache_io_perfEvents_1_4; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_30_value = l2cache_io_perfEvents_1_5; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_31_value = l2cache_io_perfEvents_1_6; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_32_value = l2cache_io_perfEvents_1_7; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_33_value = l2cache_io_perfEvents_1_8; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_34_value = l2cache_io_perfEvents_1_9; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_35_value = l2cache_io_perfEvents_1_10; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_36_value = l2cache_io_perfEvents_1_11; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_37_value = l2cache_io_perfEvents_1_12; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_38_value = l2cache_io_perfEvents_1_13; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_39_value = l2cache_io_perfEvents_1_14; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_40_value = l2cache_io_perfEvents_1_15; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_41_value = l2cache_io_perfEvents_1_16; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_42_value = l2cache_io_perfEvents_1_17; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_43_value = l2cache_io_perfEvents_1_18; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_44_value = l2cache_io_perfEvents_1_19; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_45_value = l2cache_io_perfEvents_1_20; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_46_value = l2cache_io_perfEvents_1_21; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_47_value = l2cache_io_perfEvents_1_22; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_48_value = l2cache_io_perfEvents_1_23; // @[RVCORETile.scala 118:103]
  assign core_io_perfEvents_49_value = l2cache_io_perfEvents_1_24; // @[RVCORETile.scala 118:103]
  assign misc_clock = clock;
  assign misc_reset = resetGen_io_out; // @[ResetGen.scala 56:24 62:27]
  assign misc_auto_buffers_in_1_a_valid = core_auto_memBlock_uncache_client_out_a_valid; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_a_bits_opcode = core_auto_memBlock_uncache_client_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_a_bits_size = core_auto_memBlock_uncache_client_out_a_bits_size; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_a_bits_address = core_auto_memBlock_uncache_client_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_a_bits_mask = core_auto_memBlock_uncache_client_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_a_bits_data = core_auto_memBlock_uncache_client_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_1_d_ready = core_auto_memBlock_uncache_client_out_d_ready; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_0_a_valid = core_auto_frontend_instrUncache_client_out_a_valid; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_0_a_bits_address = core_auto_frontend_instrUncache_client_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign misc_auto_buffers_in_0_d_ready = core_auto_frontend_instrUncache_client_out_d_ready; // @[LazyModule.scala 298:16]
  assign misc_auto_binder_in_1_a_valid = l2cache_auto_out_1_a_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_opcode = l2cache_auto_out_1_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_param = l2cache_auto_out_1_a_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_size = l2cache_auto_out_1_a_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_source = l2cache_auto_out_1_a_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_address = l2cache_auto_out_1_a_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_user_preferCache = l2cache_auto_out_1_a_bits_user_preferCache; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_mask = l2cache_auto_out_1_a_bits_mask; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_data = l2cache_auto_out_1_a_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_a_bits_corrupt = l2cache_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_bready = l2cache_auto_out_1_bready; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_valid = l2cache_auto_out_1_c_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_opcode = l2cache_auto_out_1_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_param = l2cache_auto_out_1_c_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_size = l2cache_auto_out_1_c_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_source = l2cache_auto_out_1_c_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_address = l2cache_auto_out_1_c_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_echo_blockisdirty = l2cache_auto_out_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_c_bits_data = l2cache_auto_out_1_c_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_d_ready = l2cache_auto_out_1_d_ready; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_e_valid = l2cache_auto_out_1_e_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_1_e_bits_sink = l2cache_auto_out_1_e_bits_sink; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_valid = l2cache_auto_out_0_a_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_opcode = l2cache_auto_out_0_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_param = l2cache_auto_out_0_a_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_size = l2cache_auto_out_0_a_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_source = l2cache_auto_out_0_a_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_address = l2cache_auto_out_0_a_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_user_preferCache = l2cache_auto_out_0_a_bits_user_preferCache; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_mask = l2cache_auto_out_0_a_bits_mask; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_data = l2cache_auto_out_0_a_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_a_bits_corrupt = l2cache_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_bready = l2cache_auto_out_0_bready; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_valid = l2cache_auto_out_0_c_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_opcode = l2cache_auto_out_0_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_param = l2cache_auto_out_0_c_bits_param; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_size = l2cache_auto_out_0_c_bits_size; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_source = l2cache_auto_out_0_c_bits_source; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_address = l2cache_auto_out_0_c_bits_address; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_echo_blockisdirty = l2cache_auto_out_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_c_bits_data = l2cache_auto_out_0_c_bits_data; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_d_ready = l2cache_auto_out_0_d_ready; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_e_valid = l2cache_auto_out_0_e_valid; // @[LazyModule.scala 296:16]
  assign misc_auto_binder_in_0_e_bits_sink = l2cache_auto_out_0_e_bits_sink; // @[LazyModule.scala 296:16]
  assign misc_auto_memory_port_out_a_ready = auto_misc_memory_port_out_a_ready; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_bvalid = auto_misc_memory_port_out_bvalid; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_bopcode = auto_misc_memory_port_out_bopcode; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_bparam = auto_misc_memory_port_out_bparam; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_bsize = auto_misc_memory_port_out_bsize; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_baddress = auto_misc_memory_port_out_baddress; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_bdata = auto_misc_memory_port_out_bdata; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_c_ready = auto_misc_memory_port_out_c_ready; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_valid = auto_misc_memory_port_out_d_valid; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_opcode = auto_misc_memory_port_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_param = auto_misc_memory_port_out_d_bits_param; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_size = auto_misc_memory_port_out_d_bits_size; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_source = auto_misc_memory_port_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_sink = auto_misc_memory_port_out_d_bits_sink; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_denied = auto_misc_memory_port_out_d_bits_denied; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_echo_blockisdirty = auto_misc_memory_port_out_d_bits_echo_blockisdirty; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_d_bits_data = auto_misc_memory_port_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign misc_auto_memory_port_out_e_ready = auto_misc_memory_port_out_e_ready; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_a_ready = auto_misc_mmio_port_out_a_ready; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_d_valid = auto_misc_mmio_port_out_d_valid; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_d_bits_opcode = auto_misc_mmio_port_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_d_bits_size = auto_misc_mmio_port_out_d_bits_size; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_d_bits_source = auto_misc_mmio_port_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign misc_auto_mmio_port_out_d_bits_data = auto_misc_mmio_port_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign misc_beu_errors_icache_ecc_error_valid = core_io_beu_errors_icache_ecc_error_valid; // @[RVCORETile.scala 124:35]
  assign misc_beu_errors_icache_ecc_error_bits = core_io_beu_errors_icache_ecc_error_bits; // @[RVCORETile.scala 124:35]
  assign misc_beu_errors_dcache_ecc_error_valid = core_io_beu_errors_dcache_ecc_error_valid; // @[RVCORETile.scala 125:35]
  assign misc_beu_errors_dcache_ecc_error_bits = core_io_beu_errors_dcache_ecc_error_bits; // @[RVCORETile.scala 125:35]
  assign misc_beu_errors_l2_ecc_error_valid = l2cache_io_ecc_error_valid; // @[RVCORETile.scala 127:49]
  assign misc_beu_errors_l2_ecc_error_bits = l2cache_io_ecc_error_bits[35:0]; // @[RVCORETile.scala 128:48]
  assign l2cache_clock = clock;
  assign l2cache_reset = resetGen_io_out; // @[ResetGen.scala 56:24 62:27]
  assign l2cache_auto_in_1_a_valid = core_auto_xbar_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_opcode = core_auto_xbar_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_param = core_auto_xbar_out_1_a_bits_param; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_size = core_auto_xbar_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_source = core_auto_xbar_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_address = core_auto_xbar_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_user_alias = core_auto_xbar_out_1_a_bits_user_alias; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_user_preferCache = core_auto_xbar_out_1_a_bits_user_preferCache; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_user_needHint = core_auto_xbar_out_1_a_bits_user_needHint; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_mask = core_auto_xbar_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_data = core_auto_xbar_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_a_bits_corrupt = core_auto_xbar_out_1_a_bits_corrupt; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_bready = core_auto_xbar_out_1_bready; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_valid = core_auto_xbar_out_1_c_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_opcode = core_auto_xbar_out_1_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_param = core_auto_xbar_out_1_c_bits_param; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_size = core_auto_xbar_out_1_c_bits_size; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_source = core_auto_xbar_out_1_c_bits_source; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_address = core_auto_xbar_out_1_c_bits_address; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_echo_blockisdirty = core_auto_xbar_out_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_c_bits_data = core_auto_xbar_out_1_c_bits_data; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_d_ready = core_auto_xbar_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_e_valid = core_auto_xbar_out_1_e_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_1_e_bits_sink = core_auto_xbar_out_1_e_bits_sink; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_valid = core_auto_xbar_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_opcode = core_auto_xbar_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_param = core_auto_xbar_out_0_a_bits_param; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_size = core_auto_xbar_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_source = core_auto_xbar_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_address = core_auto_xbar_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_user_alias = core_auto_xbar_out_0_a_bits_user_alias; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_user_preferCache = core_auto_xbar_out_0_a_bits_user_preferCache; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_user_needHint = core_auto_xbar_out_0_a_bits_user_needHint; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_mask = core_auto_xbar_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_data = core_auto_xbar_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_a_bits_corrupt = core_auto_xbar_out_0_a_bits_corrupt; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_bready = core_auto_xbar_out_0_bready; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_valid = core_auto_xbar_out_0_c_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_opcode = core_auto_xbar_out_0_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_param = core_auto_xbar_out_0_c_bits_param; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_size = core_auto_xbar_out_0_c_bits_size; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_source = core_auto_xbar_out_0_c_bits_source; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_address = core_auto_xbar_out_0_c_bits_address; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_echo_blockisdirty = core_auto_xbar_out_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_c_bits_data = core_auto_xbar_out_0_c_bits_data; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_d_ready = core_auto_xbar_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_e_valid = core_auto_xbar_out_0_e_valid; // @[LazyModule.scala 298:16]
  assign l2cache_auto_in_0_e_bits_sink = core_auto_xbar_out_0_e_bits_sink; // @[LazyModule.scala 298:16]
  assign l2cache_auto_out_1_a_ready = misc_auto_binder_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bvalid = misc_auto_binder_in_1_bvalid; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bopcode = misc_auto_binder_in_1_bopcode; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bparam = misc_auto_binder_in_1_bparam; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bsize = misc_auto_binder_in_1_bsize; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bsource = misc_auto_binder_in_1_bsource; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_baddress = misc_auto_binder_in_1_baddress; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_bdata = misc_auto_binder_in_1_bdata; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_c_ready = misc_auto_binder_in_1_c_ready; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_valid = misc_auto_binder_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_opcode = misc_auto_binder_in_1_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_param = misc_auto_binder_in_1_d_bits_param; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_size = misc_auto_binder_in_1_d_bits_size; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_source = misc_auto_binder_in_1_d_bits_source; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_sink = misc_auto_binder_in_1_d_bits_sink; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_denied = misc_auto_binder_in_1_d_bits_denied; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_echo_blockisdirty = misc_auto_binder_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_d_bits_data = misc_auto_binder_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_1_e_ready = misc_auto_binder_in_1_e_ready; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_a_ready = misc_auto_binder_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bvalid = misc_auto_binder_in_0_bvalid; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bopcode = misc_auto_binder_in_0_bopcode; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bparam = misc_auto_binder_in_0_bparam; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bsize = misc_auto_binder_in_0_bsize; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bsource = misc_auto_binder_in_0_bsource; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_baddress = misc_auto_binder_in_0_baddress; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_bdata = misc_auto_binder_in_0_bdata; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_c_ready = misc_auto_binder_in_0_c_ready; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_valid = misc_auto_binder_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_opcode = misc_auto_binder_in_0_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_param = misc_auto_binder_in_0_d_bits_param; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_size = misc_auto_binder_in_0_d_bits_size; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_source = misc_auto_binder_in_0_d_bits_source; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_sink = misc_auto_binder_in_0_d_bits_sink; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_denied = misc_auto_binder_in_0_d_bits_denied; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_echo_blockisdirty = misc_auto_binder_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_d_bits_data = misc_auto_binder_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign l2cache_auto_out_0_e_ready = misc_auto_binder_in_0_e_ready; // @[LazyModule.scala 296:16]
  assign core_io_reset_vector_delay_clock = clock;
  assign core_io_reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 95:17]
  assign resetGen_clock = clock;
  assign resetGen_reset = reset | auto_core_reset_sink_in; // @[RVCORETile.scala 142:39]
endmodule
