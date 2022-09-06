module RVCORETileMisc(
  input          clock,
  input          reset,
  output         auto_buffers_in_1_a_ready,
  input          auto_buffers_in_1_a_valid,
  input  [2:0]   auto_buffers_in_1_a_bits_opcode,
  input  [2:0]   auto_buffers_in_1_a_bits_size,
  input  [35:0]  auto_buffers_in_1_a_bits_address,
  input  [7:0]   auto_buffers_in_1_a_bits_mask,
  input  [63:0]  auto_buffers_in_1_a_bits_data,
  input          auto_buffers_in_1_d_ready,
  output         auto_buffers_in_1_d_valid,
  output         auto_buffers_in_1_d_bits_source,
  output [63:0]  auto_buffers_in_1_d_bits_data,
  output         auto_buffers_in_0_a_ready,
  input          auto_buffers_in_0_a_valid,
  input  [35:0]  auto_buffers_in_0_a_bits_address,
  input          auto_buffers_in_0_d_ready,
  output         auto_buffers_in_0_d_valid,
  output         auto_buffers_in_0_d_bits_source,
  output [63:0]  auto_buffers_in_0_d_bits_data,
  output         auto_binder_in_1_a_ready,
  input          auto_binder_in_1_a_valid,
  input  [2:0]   auto_binder_in_1_a_bits_opcode,
  input  [2:0]   auto_binder_in_1_a_bits_param,
  input  [2:0]   auto_binder_in_1_a_bits_size,
  input  [3:0]   auto_binder_in_1_a_bits_source,
  input  [35:0]  auto_binder_in_1_a_bits_address,
  input          auto_binder_in_1_a_bits_user_preferCache,
  input  [31:0]  auto_binder_in_1_a_bits_mask,
  input  [255:0] auto_binder_in_1_a_bits_data,
  input          auto_binder_in_1_a_bits_corrupt,
  input          auto_binder_in_1_bready,
  output         auto_binder_in_1_bvalid,
  output [2:0]   auto_binder_in_1_bopcode,
  output [1:0]   auto_binder_in_1_bparam,
  output [2:0]   auto_binder_in_1_bsize,
  output [3:0]   auto_binder_in_1_bsource,
  output [35:0]  auto_binder_in_1_baddress,
  output [255:0] auto_binder_in_1_bdata,
  output         auto_binder_in_1_c_ready,
  input          auto_binder_in_1_c_valid,
  input  [2:0]   auto_binder_in_1_c_bits_opcode,
  input  [2:0]   auto_binder_in_1_c_bits_param,
  input  [2:0]   auto_binder_in_1_c_bits_size,
  input  [3:0]   auto_binder_in_1_c_bits_source,
  input  [35:0]  auto_binder_in_1_c_bits_address,
  input          auto_binder_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_binder_in_1_c_bits_data,
  input          auto_binder_in_1_d_ready,
  output         auto_binder_in_1_d_valid,
  output [2:0]   auto_binder_in_1_d_bits_opcode,
  output [1:0]   auto_binder_in_1_d_bits_param,
  output [2:0]   auto_binder_in_1_d_bits_size,
  output [3:0]   auto_binder_in_1_d_bits_source,
  output [5:0]   auto_binder_in_1_d_bits_sink,
  output         auto_binder_in_1_d_bits_denied,
  output         auto_binder_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_binder_in_1_d_bits_data,
  output         auto_binder_in_1_e_ready,
  input          auto_binder_in_1_e_valid,
  input  [5:0]   auto_binder_in_1_e_bits_sink,
  output         auto_binder_in_0_a_ready,
  input          auto_binder_in_0_a_valid,
  input  [2:0]   auto_binder_in_0_a_bits_opcode,
  input  [2:0]   auto_binder_in_0_a_bits_param,
  input  [2:0]   auto_binder_in_0_a_bits_size,
  input  [3:0]   auto_binder_in_0_a_bits_source,
  input  [35:0]  auto_binder_in_0_a_bits_address,
  input          auto_binder_in_0_a_bits_user_preferCache,
  input  [31:0]  auto_binder_in_0_a_bits_mask,
  input  [255:0] auto_binder_in_0_a_bits_data,
  input          auto_binder_in_0_a_bits_corrupt,
  input          auto_binder_in_0_bready,
  output         auto_binder_in_0_bvalid,
  output [2:0]   auto_binder_in_0_bopcode,
  output [1:0]   auto_binder_in_0_bparam,
  output [2:0]   auto_binder_in_0_bsize,
  output [3:0]   auto_binder_in_0_bsource,
  output [35:0]  auto_binder_in_0_baddress,
  output [255:0] auto_binder_in_0_bdata,
  output         auto_binder_in_0_c_ready,
  input          auto_binder_in_0_c_valid,
  input  [2:0]   auto_binder_in_0_c_bits_opcode,
  input  [2:0]   auto_binder_in_0_c_bits_param,
  input  [2:0]   auto_binder_in_0_c_bits_size,
  input  [3:0]   auto_binder_in_0_c_bits_source,
  input  [35:0]  auto_binder_in_0_c_bits_address,
  input          auto_binder_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_binder_in_0_c_bits_data,
  input          auto_binder_in_0_d_ready,
  output         auto_binder_in_0_d_valid,
  output [2:0]   auto_binder_in_0_d_bits_opcode,
  output [1:0]   auto_binder_in_0_d_bits_param,
  output [2:0]   auto_binder_in_0_d_bits_size,
  output [3:0]   auto_binder_in_0_d_bits_source,
  output [5:0]   auto_binder_in_0_d_bits_sink,
  output         auto_binder_in_0_d_bits_denied,
  output         auto_binder_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_binder_in_0_d_bits_data,
  output         auto_binder_in_0_e_ready,
  input          auto_binder_in_0_e_valid,
  input  [5:0]   auto_binder_in_0_e_bits_sink,
  output         auto_beu_int_out_0,
  input          auto_memory_port_out_a_ready,
  output         auto_memory_port_out_a_valid,
  output [2:0]   auto_memory_port_out_a_bits_opcode,
  output [2:0]   auto_memory_port_out_a_bits_param,
  output [2:0]   auto_memory_port_out_a_bits_size,
  output [4:0]   auto_memory_port_out_a_bits_source,
  output [35:0]  auto_memory_port_out_a_bits_address,
  output         auto_memory_port_out_a_bits_user_preferCache,
  output [31:0]  auto_memory_port_out_a_bits_mask,
  output [255:0] auto_memory_port_out_a_bits_data,
  output         auto_memory_port_out_a_bits_corrupt,
  output         auto_memory_port_out_bready,
  input          auto_memory_port_out_bvalid,
  input  [2:0]   auto_memory_port_out_bopcode,
  input  [1:0]   auto_memory_port_out_bparam,
  input  [2:0]   auto_memory_port_out_bsize,
  input  [35:0]  auto_memory_port_out_baddress,
  input  [255:0] auto_memory_port_out_bdata,
  input          auto_memory_port_out_c_ready,
  output         auto_memory_port_out_c_valid,
  output [2:0]   auto_memory_port_out_c_bits_opcode,
  output [2:0]   auto_memory_port_out_c_bits_param,
  output [2:0]   auto_memory_port_out_c_bits_size,
  output [4:0]   auto_memory_port_out_c_bits_source,
  output [35:0]  auto_memory_port_out_c_bits_address,
  output         auto_memory_port_out_c_bits_echo_blockisdirty,
  output [255:0] auto_memory_port_out_c_bits_data,
  output         auto_memory_port_out_d_ready,
  input          auto_memory_port_out_d_valid,
  input  [2:0]   auto_memory_port_out_d_bits_opcode,
  input  [1:0]   auto_memory_port_out_d_bits_param,
  input  [2:0]   auto_memory_port_out_d_bits_size,
  input  [4:0]   auto_memory_port_out_d_bits_source,
  input  [5:0]   auto_memory_port_out_d_bits_sink,
  input          auto_memory_port_out_d_bits_denied,
  input          auto_memory_port_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_memory_port_out_d_bits_data,
  input          auto_memory_port_out_e_ready,
  output         auto_memory_port_out_e_valid,
  output [5:0]   auto_memory_port_out_e_bits_sink,
  input          auto_mmio_port_out_a_ready,
  output         auto_mmio_port_out_a_valid,
  output [2:0]   auto_mmio_port_out_a_bits_opcode,
  output [2:0]   auto_mmio_port_out_a_bits_size,
  output         auto_mmio_port_out_a_bits_source,
  output [35:0]  auto_mmio_port_out_a_bits_address,
  output [7:0]   auto_mmio_port_out_a_bits_mask,
  output [63:0]  auto_mmio_port_out_a_bits_data,
  output         auto_mmio_port_out_d_ready,
  input          auto_mmio_port_out_d_valid,
  input  [2:0]   auto_mmio_port_out_d_bits_opcode,
  input  [2:0]   auto_mmio_port_out_d_bits_size,
  input          auto_mmio_port_out_d_bits_source,
  input  [63:0]  auto_mmio_port_out_d_bits_data,
  input          beu_errors_icache_ecc_error_valid,
  input  [35:0]  beu_errors_icache_ecc_error_bits,
  input          beu_errors_dcache_ecc_error_valid,
  input  [35:0]  beu_errors_dcache_ecc_error_bits,
  input          beu_errors_l2_ecc_error_valid,
  input  [35:0]  beu_errors_l2_ecc_error_bits
);
  wire  xbar_clock; // @[Xbar.scala 142:26]
  wire  xbar_reset; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_a_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_auto_out_1_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_1_d_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_0_a_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [29:0] xbar_auto_out_0_a_bits_address; // @[Xbar.scala 142:26]
  wire [7:0] xbar_auto_out_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_auto_out_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_auto_out_0_d_bits_size; // @[Xbar.scala 142:26]
  wire  xbar_auto_out_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [63:0] xbar_auto_out_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  beu_clock; // @[RVCORETile.scala 42:23]
  wire  beu_reset; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_a_ready; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_a_valid; // @[RVCORETile.scala 42:23]
  wire [2:0] beu_auto_in_a_bits_opcode; // @[RVCORETile.scala 42:23]
  wire [1:0] beu_auto_in_a_bits_size; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_a_bits_source; // @[RVCORETile.scala 42:23]
  wire [29:0] beu_auto_in_a_bits_address; // @[RVCORETile.scala 42:23]
  wire [7:0] beu_auto_in_a_bits_mask; // @[RVCORETile.scala 42:23]
  wire [63:0] beu_auto_in_a_bits_data; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_d_ready; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_d_valid; // @[RVCORETile.scala 42:23]
  wire [2:0] beu_auto_in_d_bits_opcode; // @[RVCORETile.scala 42:23]
  wire [1:0] beu_auto_in_d_bits_size; // @[RVCORETile.scala 42:23]
  wire  beu_auto_in_d_bits_source; // @[RVCORETile.scala 42:23]
  wire [63:0] beu_auto_in_d_bits_data; // @[RVCORETile.scala 42:23]
  wire  beu_auto_int_out_0; // @[RVCORETile.scala 42:23]
  wire  beu_io_errors_icache_ecc_error_valid; // @[RVCORETile.scala 42:23]
  wire [35:0] beu_io_errors_icache_ecc_error_bits; // @[RVCORETile.scala 42:23]
  wire  beu_io_errors_dcache_ecc_error_valid; // @[RVCORETile.scala 42:23]
  wire [35:0] beu_io_errors_dcache_ecc_error_bits; // @[RVCORETile.scala 42:23]
  wire  beu_io_errors_l2_ecc_error_valid; // @[RVCORETile.scala 42:23]
  wire [35:0] beu_io_errors_l2_ecc_error_bits; // @[RVCORETile.scala 42:23]
  wire  binder_auto_in_1_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_a_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_a_bits_user_preferCache; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_1_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_a_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_1_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_bsize; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_baddress; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_1_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_1_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_1_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_1_d_bits_source; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_in_1_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_1_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_1_e_valid; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_in_1_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_a_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_bits_user_preferCache; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_in_0_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_a_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_0_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_bsize; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_baddress; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_in_0_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_in_0_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_in_0_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_in_0_d_bits_source; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_in_0_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_in_0_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_in_0_e_valid; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_in_0_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_a_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_bits_user_preferCache; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_1_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_a_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_1_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_bsize; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_baddress; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_1_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_1_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_1_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_1_d_bits_source; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_out_1_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_1_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_1_e_valid; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_out_1_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_a_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_a_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_a_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_bits_user_preferCache; // @[BankBinder.scala 67:28]
  wire [31:0] binder_auto_out_0_a_bits_mask; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_a_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_a_bits_corrupt; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_bready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_bvalid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_bopcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_0_bparam; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_bsize; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_bsource; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_baddress; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_bdata; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_opcode; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_c_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_c_bits_source; // @[BankBinder.scala 67:28]
  wire [35:0] binder_auto_out_0_c_bits_address; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_c_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_c_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_valid; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_d_bits_opcode; // @[BankBinder.scala 67:28]
  wire [1:0] binder_auto_out_0_d_bits_param; // @[BankBinder.scala 67:28]
  wire [2:0] binder_auto_out_0_d_bits_size; // @[BankBinder.scala 67:28]
  wire [3:0] binder_auto_out_0_d_bits_source; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_out_0_d_bits_sink; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_bits_denied; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_d_bits_echo_blockisdirty; // @[BankBinder.scala 67:28]
  wire [255:0] binder_auto_out_0_d_bits_data; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_e_ready; // @[BankBinder.scala 67:28]
  wire  binder_auto_out_0_e_valid; // @[BankBinder.scala 67:28]
  wire [5:0] binder_auto_out_0_e_bits_sink; // @[BankBinder.scala 67:28]
  wire  buffers_clock; // @[Buffer.scala 73:47]
  wire  buffers_reset; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_bits_user_preferCache; // @[Buffer.scala 73:47]
  wire [31:0] buffers_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_a_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_bready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_bvalid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_bopcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_in_bparam; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_bsize; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_in_baddress; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_bdata; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_c_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_c_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_c_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_c_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_c_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_in_c_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_in_c_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_c_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_c_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [5:0] buffers_auto_in_d_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_d_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_e_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_in_e_valid; // @[Buffer.scala 73:47]
  wire [5:0] buffers_auto_in_e_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_bits_user_preferCache; // @[Buffer.scala 73:47]
  wire [31:0] buffers_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_a_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_bready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_bvalid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_bopcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_out_bparam; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_bsize; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_out_baddress; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_bdata; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_c_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_c_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_c_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_c_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_c_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_out_c_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_auto_out_c_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_c_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_c_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [5:0] buffers_auto_out_d_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_d_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_e_ready; // @[Buffer.scala 73:47]
  wire  buffers_auto_out_e_valid; // @[Buffer.scala 73:47]
  wire [5:0] buffers_auto_out_e_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_1_clock; // @[Buffer.scala 73:47]
  wire  buffers_1_reset; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_bits_user_preferCache; // @[Buffer.scala 73:47]
  wire [31:0] buffers_1_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_a_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_bready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_bvalid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_bopcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_in_bparam; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_bsize; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_in_baddress; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_bdata; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_c_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_c_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_c_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_c_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_c_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_in_c_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_in_c_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_c_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_c_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_in_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [5:0] buffers_1_auto_in_d_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_bits_denied; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_d_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_e_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_in_e_valid; // @[Buffer.scala 73:47]
  wire [5:0] buffers_1_auto_in_e_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_bits_user_preferCache; // @[Buffer.scala 73:47]
  wire [31:0] buffers_1_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_a_bits_corrupt; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_bready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_bvalid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_bopcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_out_bparam; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_bsize; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_out_baddress; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_bdata; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_c_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_c_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_c_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_c_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_c_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_out_c_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_1_auto_out_c_bits_address; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_c_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_c_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_1_auto_out_d_bits_param; // @[Buffer.scala 73:47]
  wire [2:0] buffers_1_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire [4:0] buffers_1_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [5:0] buffers_1_auto_out_d_bits_sink; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_bits_denied; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_d_bits_echo_blockisdirty; // @[Buffer.scala 73:47]
  wire [255:0] buffers_1_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_e_ready; // @[Buffer.scala 73:47]
  wire  buffers_1_auto_out_e_valid; // @[Buffer.scala 73:47]
  wire [5:0] buffers_1_auto_out_e_bits_sink; // @[Buffer.scala 73:47]
  wire  merger_auto_in_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_in_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_a_bits_user_preferCache; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_in_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_a_bits_corrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_bready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_bvalid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_bopcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_in_bparam; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_bsize; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_in_bsource; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_baddress; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_bdata; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_in_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_in_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_c_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_in_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_in_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_in_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [5:0] merger_auto_in_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_d_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_in_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_in_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [5:0] merger_auto_in_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_a_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_out_a_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_a_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_bits_user_preferCache; // @[TLClientsMerger.scala 66:28]
  wire [31:0] merger_auto_out_a_bits_mask; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_a_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_a_bits_corrupt; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_bready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_bvalid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_bopcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_out_bparam; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_bsize; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_baddress; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_bdata; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_c_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_out_c_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [35:0] merger_auto_out_c_bits_address; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_c_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_c_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_valid; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_opcode; // @[TLClientsMerger.scala 66:28]
  wire [1:0] merger_auto_out_d_bits_param; // @[TLClientsMerger.scala 66:28]
  wire [2:0] merger_auto_out_d_bits_size; // @[TLClientsMerger.scala 66:28]
  wire [4:0] merger_auto_out_d_bits_source; // @[TLClientsMerger.scala 66:28]
  wire [5:0] merger_auto_out_d_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_denied; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_d_bits_echo_blockisdirty; // @[TLClientsMerger.scala 66:28]
  wire [255:0] merger_auto_out_d_bits_data; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_ready; // @[TLClientsMerger.scala 66:28]
  wire  merger_auto_out_e_valid; // @[TLClientsMerger.scala 66:28]
  wire [5:0] merger_auto_out_e_bits_sink; // @[TLClientsMerger.scala 66:28]
  wire  xbar_2_clock; // @[Xbar.scala 142:26]
  wire  xbar_2_reset; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_a_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_a_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_bits_user_preferCache; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_1_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_1_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_bsize; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_baddress; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_c_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_1_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_1_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_1_d_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_1_d_bits_source; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_in_1_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_1_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_1_e_valid; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_in_1_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_a_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_a_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_bits_user_preferCache; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_in_0_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_bsize; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_baddress; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_c_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_in_0_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_in_0_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_in_0_d_bits_size; // @[Xbar.scala 142:26]
  wire [3:0] xbar_2_auto_in_0_d_bits_source; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_in_0_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_in_0_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_in_0_e_valid; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_in_0_e_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_a_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_2_auto_out_a_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_a_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_bits_user_preferCache; // @[Xbar.scala 142:26]
  wire [31:0] xbar_2_auto_out_a_bits_mask; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_a_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_a_bits_corrupt; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_bvalid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_bopcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_bparam; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_bsize; // @[Xbar.scala 142:26]
  wire [4:0] xbar_2_auto_out_bsource; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_baddress; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_bdata; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_opcode; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_c_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_2_auto_out_c_bits_source; // @[Xbar.scala 142:26]
  wire [35:0] xbar_2_auto_out_c_bits_address; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_c_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_c_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_valid; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_opcode; // @[Xbar.scala 142:26]
  wire [1:0] xbar_2_auto_out_d_bits_param; // @[Xbar.scala 142:26]
  wire [2:0] xbar_2_auto_out_d_bits_size; // @[Xbar.scala 142:26]
  wire [4:0] xbar_2_auto_out_d_bits_source; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_out_d_bits_sink; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_denied; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_d_bits_echo_blockisdirty; // @[Xbar.scala 142:26]
  wire [255:0] xbar_2_auto_out_d_bits_data; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_e_ready; // @[Xbar.scala 142:26]
  wire  xbar_2_auto_out_e_valid; // @[Xbar.scala 142:26]
  wire [5:0] xbar_2_auto_out_e_bits_sink; // @[Xbar.scala 142:26]
  wire  buffers_2_clock; // @[Buffer.scala 73:47]
  wire  buffers_2_reset; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_2_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_2_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_2_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_2_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_2_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_2_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_clock; // @[Buffer.scala 73:47]
  wire  buffers_3_reset; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_3_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_3_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_3_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_3_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_3_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_3_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_clock; // @[Buffer.scala 73:47]
  wire  buffers_4_reset; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_4_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_4_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_4_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_4_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_4_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_4_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_4_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_clock; // @[Buffer.scala 73:47]
  wire  buffers_5_reset; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_5_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_5_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [35:0] buffers_5_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_5_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [2:0] buffers_5_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_5_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_5_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_clock; // @[Buffer.scala 73:47]
  wire  buffers_6_reset; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_in_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_6_auto_in_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_6_auto_in_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_in_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_in_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_in_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_in_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_in_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_a_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_a_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_a_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_out_a_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_a_bits_source; // @[Buffer.scala 73:47]
  wire [29:0] buffers_6_auto_out_a_bits_address; // @[Buffer.scala 73:47]
  wire [7:0] buffers_6_auto_out_a_bits_mask; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_out_a_bits_data; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_d_ready; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_d_valid; // @[Buffer.scala 73:47]
  wire [2:0] buffers_6_auto_out_d_bits_opcode; // @[Buffer.scala 73:47]
  wire [1:0] buffers_6_auto_out_d_bits_size; // @[Buffer.scala 73:47]
  wire  buffers_6_auto_out_d_bits_source; // @[Buffer.scala 73:47]
  wire [63:0] buffers_6_auto_out_d_bits_data; // @[Buffer.scala 73:47]
  wire  buffer_clock; // @[Buffer.scala 68:28]
  wire  buffer_reset; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 68:28]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 68:28]
  wire  buffer_auto_in_d_bits_source; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_a_bits_source; // @[Buffer.scala 68:28]
  wire [35:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 68:28]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 68:28]
  wire [2:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 68:28]
  wire  buffer_auto_out_d_bits_source; // @[Buffer.scala 68:28]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 68:28]
  TLXbar_8 xbar ( // @[Xbar.scala 142:26]
    .clock(xbar_clock),
    .reset(xbar_reset),
    .auto_in_1_a_ready(xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_size(xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(xbar_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_auto_in_1_a_bits_data),
    .auto_in_1_d_ready(xbar_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_size(xbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_data(xbar_auto_in_1_d_bits_data),
    .auto_in_0_a_ready(xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_size(xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_address(xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_auto_in_0_a_bits_data),
    .auto_in_0_d_ready(xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_size(xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_data(xbar_auto_in_0_d_bits_data),
    .auto_out_1_a_ready(xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_size(xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(xbar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_size(xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_data(xbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_size(xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(xbar_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_size(xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_data(xbar_auto_out_0_d_bits_data)
  );
  BusErrorUnit beu ( // @[RVCORETile.scala 42:23]
    .clock(beu_clock),
    .reset(beu_reset),
    .auto_in_a_ready(beu_auto_in_a_ready),
    .auto_in_a_valid(beu_auto_in_a_valid),
    .auto_in_a_bits_opcode(beu_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(beu_auto_in_a_bits_size),
    .auto_in_a_bits_source(beu_auto_in_a_bits_source),
    .auto_in_a_bits_address(beu_auto_in_a_bits_address),
    .auto_in_a_bits_mask(beu_auto_in_a_bits_mask),
    .auto_in_a_bits_data(beu_auto_in_a_bits_data),
    .auto_in_d_ready(beu_auto_in_d_ready),
    .auto_in_d_valid(beu_auto_in_d_valid),
    .auto_in_d_bits_opcode(beu_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(beu_auto_in_d_bits_size),
    .auto_in_d_bits_source(beu_auto_in_d_bits_source),
    .auto_in_d_bits_data(beu_auto_in_d_bits_data),
    .auto_int_out_0(beu_auto_int_out_0),
    .io_errors_icache_ecc_error_valid(beu_io_errors_icache_ecc_error_valid),
    .io_errors_icache_ecc_error_bits(beu_io_errors_icache_ecc_error_bits),
    .io_errors_dcache_ecc_error_valid(beu_io_errors_dcache_ecc_error_valid),
    .io_errors_dcache_ecc_error_bits(beu_io_errors_dcache_ecc_error_bits),
    .io_errors_l2_ecc_error_valid(beu_io_errors_l2_ecc_error_valid),
    .io_errors_l2_ecc_error_bits(beu_io_errors_l2_ecc_error_bits)
  );
  BankBinder_1 binder ( // @[BankBinder.scala 67:28]
    .auto_in_1_a_ready(binder_auto_in_1_a_ready),
    .auto_in_1_a_valid(binder_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(binder_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(binder_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(binder_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(binder_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(binder_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_user_preferCache(binder_auto_in_1_a_bits_user_preferCache),
    .auto_in_1_a_bits_mask(binder_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(binder_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(binder_auto_in_1_a_bits_corrupt),
    .auto_in_1_bready(binder_auto_in_1_bready),
    .auto_in_1_bvalid(binder_auto_in_1_bvalid),
    .auto_in_1_bopcode(binder_auto_in_1_bopcode),
    .auto_in_1_bparam(binder_auto_in_1_bparam),
    .auto_in_1_bsize(binder_auto_in_1_bsize),
    .auto_in_1_bsource(binder_auto_in_1_bsource),
    .auto_in_1_baddress(binder_auto_in_1_baddress),
    .auto_in_1_bdata(binder_auto_in_1_bdata),
    .auto_in_1_c_ready(binder_auto_in_1_c_ready),
    .auto_in_1_c_valid(binder_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(binder_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(binder_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(binder_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(binder_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(binder_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_echo_blockisdirty(binder_auto_in_1_c_bits_echo_blockisdirty),
    .auto_in_1_c_bits_data(binder_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(binder_auto_in_1_d_ready),
    .auto_in_1_d_valid(binder_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(binder_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(binder_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(binder_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(binder_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(binder_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(binder_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_echo_blockisdirty(binder_auto_in_1_d_bits_echo_blockisdirty),
    .auto_in_1_d_bits_data(binder_auto_in_1_d_bits_data),
    .auto_in_1_e_ready(binder_auto_in_1_e_ready),
    .auto_in_1_e_valid(binder_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(binder_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(binder_auto_in_0_a_ready),
    .auto_in_0_a_valid(binder_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(binder_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(binder_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(binder_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(binder_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(binder_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_preferCache(binder_auto_in_0_a_bits_user_preferCache),
    .auto_in_0_a_bits_mask(binder_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(binder_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(binder_auto_in_0_a_bits_corrupt),
    .auto_in_0_bready(binder_auto_in_0_bready),
    .auto_in_0_bvalid(binder_auto_in_0_bvalid),
    .auto_in_0_bopcode(binder_auto_in_0_bopcode),
    .auto_in_0_bparam(binder_auto_in_0_bparam),
    .auto_in_0_bsize(binder_auto_in_0_bsize),
    .auto_in_0_bsource(binder_auto_in_0_bsource),
    .auto_in_0_baddress(binder_auto_in_0_baddress),
    .auto_in_0_bdata(binder_auto_in_0_bdata),
    .auto_in_0_c_ready(binder_auto_in_0_c_ready),
    .auto_in_0_c_valid(binder_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(binder_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(binder_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(binder_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(binder_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(binder_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_echo_blockisdirty(binder_auto_in_0_c_bits_echo_blockisdirty),
    .auto_in_0_c_bits_data(binder_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(binder_auto_in_0_d_ready),
    .auto_in_0_d_valid(binder_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(binder_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(binder_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(binder_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(binder_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(binder_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(binder_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_echo_blockisdirty(binder_auto_in_0_d_bits_echo_blockisdirty),
    .auto_in_0_d_bits_data(binder_auto_in_0_d_bits_data),
    .auto_in_0_e_ready(binder_auto_in_0_e_ready),
    .auto_in_0_e_valid(binder_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(binder_auto_in_0_e_bits_sink),
    .auto_out_1_a_ready(binder_auto_out_1_a_ready),
    .auto_out_1_a_valid(binder_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(binder_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(binder_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(binder_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(binder_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(binder_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_user_preferCache(binder_auto_out_1_a_bits_user_preferCache),
    .auto_out_1_a_bits_mask(binder_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(binder_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(binder_auto_out_1_a_bits_corrupt),
    .auto_out_1_bready(binder_auto_out_1_bready),
    .auto_out_1_bvalid(binder_auto_out_1_bvalid),
    .auto_out_1_bopcode(binder_auto_out_1_bopcode),
    .auto_out_1_bparam(binder_auto_out_1_bparam),
    .auto_out_1_bsize(binder_auto_out_1_bsize),
    .auto_out_1_bsource(binder_auto_out_1_bsource),
    .auto_out_1_baddress(binder_auto_out_1_baddress),
    .auto_out_1_bdata(binder_auto_out_1_bdata),
    .auto_out_1_c_ready(binder_auto_out_1_c_ready),
    .auto_out_1_c_valid(binder_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(binder_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(binder_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(binder_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(binder_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(binder_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_echo_blockisdirty(binder_auto_out_1_c_bits_echo_blockisdirty),
    .auto_out_1_c_bits_data(binder_auto_out_1_c_bits_data),
    .auto_out_1_d_ready(binder_auto_out_1_d_ready),
    .auto_out_1_d_valid(binder_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(binder_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(binder_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(binder_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(binder_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(binder_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(binder_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_echo_blockisdirty(binder_auto_out_1_d_bits_echo_blockisdirty),
    .auto_out_1_d_bits_data(binder_auto_out_1_d_bits_data),
    .auto_out_1_e_ready(binder_auto_out_1_e_ready),
    .auto_out_1_e_valid(binder_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(binder_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(binder_auto_out_0_a_ready),
    .auto_out_0_a_valid(binder_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(binder_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(binder_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(binder_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(binder_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(binder_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_user_preferCache(binder_auto_out_0_a_bits_user_preferCache),
    .auto_out_0_a_bits_mask(binder_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(binder_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(binder_auto_out_0_a_bits_corrupt),
    .auto_out_0_bready(binder_auto_out_0_bready),
    .auto_out_0_bvalid(binder_auto_out_0_bvalid),
    .auto_out_0_bopcode(binder_auto_out_0_bopcode),
    .auto_out_0_bparam(binder_auto_out_0_bparam),
    .auto_out_0_bsize(binder_auto_out_0_bsize),
    .auto_out_0_bsource(binder_auto_out_0_bsource),
    .auto_out_0_baddress(binder_auto_out_0_baddress),
    .auto_out_0_bdata(binder_auto_out_0_bdata),
    .auto_out_0_c_ready(binder_auto_out_0_c_ready),
    .auto_out_0_c_valid(binder_auto_out_0_c_valid),
    .auto_out_0_c_bits_opcode(binder_auto_out_0_c_bits_opcode),
    .auto_out_0_c_bits_param(binder_auto_out_0_c_bits_param),
    .auto_out_0_c_bits_size(binder_auto_out_0_c_bits_size),
    .auto_out_0_c_bits_source(binder_auto_out_0_c_bits_source),
    .auto_out_0_c_bits_address(binder_auto_out_0_c_bits_address),
    .auto_out_0_c_bits_echo_blockisdirty(binder_auto_out_0_c_bits_echo_blockisdirty),
    .auto_out_0_c_bits_data(binder_auto_out_0_c_bits_data),
    .auto_out_0_d_ready(binder_auto_out_0_d_ready),
    .auto_out_0_d_valid(binder_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(binder_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(binder_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(binder_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(binder_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(binder_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(binder_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_echo_blockisdirty(binder_auto_out_0_d_bits_echo_blockisdirty),
    .auto_out_0_d_bits_data(binder_auto_out_0_d_bits_data),
    .auto_out_0_e_ready(binder_auto_out_0_e_ready),
    .auto_out_0_e_valid(binder_auto_out_0_e_valid),
    .auto_out_0_e_bits_sink(binder_auto_out_0_e_bits_sink)
  );
  TLBuffer_12 buffers ( // @[Buffer.scala 73:47]
    .clock(buffers_clock),
    .reset(buffers_reset),
    .auto_in_a_ready(buffers_auto_in_a_ready),
    .auto_in_a_valid(buffers_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffers_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffers_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_auto_in_a_bits_address),
    .auto_in_a_bits_user_preferCache(buffers_auto_in_a_bits_user_preferCache),
    .auto_in_a_bits_mask(buffers_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffers_auto_in_a_bits_corrupt),
    .auto_in_bready(buffers_auto_in_bready),
    .auto_in_bvalid(buffers_auto_in_bvalid),
    .auto_in_bopcode(buffers_auto_in_bopcode),
    .auto_in_bparam(buffers_auto_in_bparam),
    .auto_in_bsize(buffers_auto_in_bsize),
    .auto_in_baddress(buffers_auto_in_baddress),
    .auto_in_bdata(buffers_auto_in_bdata),
    .auto_in_c_ready(buffers_auto_in_c_ready),
    .auto_in_c_valid(buffers_auto_in_c_valid),
    .auto_in_c_bits_opcode(buffers_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(buffers_auto_in_c_bits_param),
    .auto_in_c_bits_size(buffers_auto_in_c_bits_size),
    .auto_in_c_bits_source(buffers_auto_in_c_bits_source),
    .auto_in_c_bits_address(buffers_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(buffers_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(buffers_auto_in_c_bits_data),
    .auto_in_d_ready(buffers_auto_in_d_ready),
    .auto_in_d_valid(buffers_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffers_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffers_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(buffers_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(buffers_auto_in_d_bits_data),
    .auto_in_e_ready(buffers_auto_in_e_ready),
    .auto_in_e_valid(buffers_auto_in_e_valid),
    .auto_in_e_bits_sink(buffers_auto_in_e_bits_sink),
    .auto_out_a_ready(buffers_auto_out_a_ready),
    .auto_out_a_valid(buffers_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffers_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffers_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_auto_out_a_bits_address),
    .auto_out_a_bits_user_preferCache(buffers_auto_out_a_bits_user_preferCache),
    .auto_out_a_bits_mask(buffers_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffers_auto_out_a_bits_corrupt),
    .auto_out_bready(buffers_auto_out_bready),
    .auto_out_bvalid(buffers_auto_out_bvalid),
    .auto_out_bopcode(buffers_auto_out_bopcode),
    .auto_out_bparam(buffers_auto_out_bparam),
    .auto_out_bsize(buffers_auto_out_bsize),
    .auto_out_baddress(buffers_auto_out_baddress),
    .auto_out_bdata(buffers_auto_out_bdata),
    .auto_out_c_ready(buffers_auto_out_c_ready),
    .auto_out_c_valid(buffers_auto_out_c_valid),
    .auto_out_c_bits_opcode(buffers_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(buffers_auto_out_c_bits_param),
    .auto_out_c_bits_size(buffers_auto_out_c_bits_size),
    .auto_out_c_bits_source(buffers_auto_out_c_bits_source),
    .auto_out_c_bits_address(buffers_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(buffers_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(buffers_auto_out_c_bits_data),
    .auto_out_d_ready(buffers_auto_out_d_ready),
    .auto_out_d_valid(buffers_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffers_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffers_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(buffers_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(buffers_auto_out_d_bits_data),
    .auto_out_e_ready(buffers_auto_out_e_ready),
    .auto_out_e_valid(buffers_auto_out_e_valid),
    .auto_out_e_bits_sink(buffers_auto_out_e_bits_sink)
  );
  TLBuffer_12 buffers_1 ( // @[Buffer.scala 73:47]
    .clock(buffers_1_clock),
    .reset(buffers_1_reset),
    .auto_in_a_ready(buffers_1_auto_in_a_ready),
    .auto_in_a_valid(buffers_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffers_1_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffers_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_1_auto_in_a_bits_address),
    .auto_in_a_bits_user_preferCache(buffers_1_auto_in_a_bits_user_preferCache),
    .auto_in_a_bits_mask(buffers_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_1_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffers_1_auto_in_a_bits_corrupt),
    .auto_in_bready(buffers_1_auto_in_bready),
    .auto_in_bvalid(buffers_1_auto_in_bvalid),
    .auto_in_bopcode(buffers_1_auto_in_bopcode),
    .auto_in_bparam(buffers_1_auto_in_bparam),
    .auto_in_bsize(buffers_1_auto_in_bsize),
    .auto_in_baddress(buffers_1_auto_in_baddress),
    .auto_in_bdata(buffers_1_auto_in_bdata),
    .auto_in_c_ready(buffers_1_auto_in_c_ready),
    .auto_in_c_valid(buffers_1_auto_in_c_valid),
    .auto_in_c_bits_opcode(buffers_1_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(buffers_1_auto_in_c_bits_param),
    .auto_in_c_bits_size(buffers_1_auto_in_c_bits_size),
    .auto_in_c_bits_source(buffers_1_auto_in_c_bits_source),
    .auto_in_c_bits_address(buffers_1_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(buffers_1_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(buffers_1_auto_in_c_bits_data),
    .auto_in_d_ready(buffers_1_auto_in_d_ready),
    .auto_in_d_valid(buffers_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffers_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffers_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_1_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffers_1_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffers_1_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(buffers_1_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(buffers_1_auto_in_d_bits_data),
    .auto_in_e_ready(buffers_1_auto_in_e_ready),
    .auto_in_e_valid(buffers_1_auto_in_e_valid),
    .auto_in_e_bits_sink(buffers_1_auto_in_e_bits_sink),
    .auto_out_a_ready(buffers_1_auto_out_a_ready),
    .auto_out_a_valid(buffers_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffers_1_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffers_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_1_auto_out_a_bits_address),
    .auto_out_a_bits_user_preferCache(buffers_1_auto_out_a_bits_user_preferCache),
    .auto_out_a_bits_mask(buffers_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_1_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffers_1_auto_out_a_bits_corrupt),
    .auto_out_bready(buffers_1_auto_out_bready),
    .auto_out_bvalid(buffers_1_auto_out_bvalid),
    .auto_out_bopcode(buffers_1_auto_out_bopcode),
    .auto_out_bparam(buffers_1_auto_out_bparam),
    .auto_out_bsize(buffers_1_auto_out_bsize),
    .auto_out_baddress(buffers_1_auto_out_baddress),
    .auto_out_bdata(buffers_1_auto_out_bdata),
    .auto_out_c_ready(buffers_1_auto_out_c_ready),
    .auto_out_c_valid(buffers_1_auto_out_c_valid),
    .auto_out_c_bits_opcode(buffers_1_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(buffers_1_auto_out_c_bits_param),
    .auto_out_c_bits_size(buffers_1_auto_out_c_bits_size),
    .auto_out_c_bits_source(buffers_1_auto_out_c_bits_source),
    .auto_out_c_bits_address(buffers_1_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(buffers_1_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(buffers_1_auto_out_c_bits_data),
    .auto_out_d_ready(buffers_1_auto_out_d_ready),
    .auto_out_d_valid(buffers_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffers_1_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffers_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_1_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffers_1_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffers_1_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(buffers_1_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(buffers_1_auto_out_d_bits_data),
    .auto_out_e_ready(buffers_1_auto_out_e_ready),
    .auto_out_e_valid(buffers_1_auto_out_e_valid),
    .auto_out_e_bits_sink(buffers_1_auto_out_e_bits_sink)
  );
  TLClientsMerger merger ( // @[TLClientsMerger.scala 66:28]
    .auto_in_a_ready(merger_auto_in_a_ready),
    .auto_in_a_valid(merger_auto_in_a_valid),
    .auto_in_a_bits_opcode(merger_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(merger_auto_in_a_bits_param),
    .auto_in_a_bits_size(merger_auto_in_a_bits_size),
    .auto_in_a_bits_source(merger_auto_in_a_bits_source),
    .auto_in_a_bits_address(merger_auto_in_a_bits_address),
    .auto_in_a_bits_user_preferCache(merger_auto_in_a_bits_user_preferCache),
    .auto_in_a_bits_mask(merger_auto_in_a_bits_mask),
    .auto_in_a_bits_data(merger_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(merger_auto_in_a_bits_corrupt),
    .auto_in_bready(merger_auto_in_bready),
    .auto_in_bvalid(merger_auto_in_bvalid),
    .auto_in_bopcode(merger_auto_in_bopcode),
    .auto_in_bparam(merger_auto_in_bparam),
    .auto_in_bsize(merger_auto_in_bsize),
    .auto_in_bsource(merger_auto_in_bsource),
    .auto_in_baddress(merger_auto_in_baddress),
    .auto_in_bdata(merger_auto_in_bdata),
    .auto_in_c_ready(merger_auto_in_c_ready),
    .auto_in_c_valid(merger_auto_in_c_valid),
    .auto_in_c_bits_opcode(merger_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(merger_auto_in_c_bits_param),
    .auto_in_c_bits_size(merger_auto_in_c_bits_size),
    .auto_in_c_bits_source(merger_auto_in_c_bits_source),
    .auto_in_c_bits_address(merger_auto_in_c_bits_address),
    .auto_in_c_bits_echo_blockisdirty(merger_auto_in_c_bits_echo_blockisdirty),
    .auto_in_c_bits_data(merger_auto_in_c_bits_data),
    .auto_in_d_ready(merger_auto_in_d_ready),
    .auto_in_d_valid(merger_auto_in_d_valid),
    .auto_in_d_bits_opcode(merger_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(merger_auto_in_d_bits_param),
    .auto_in_d_bits_size(merger_auto_in_d_bits_size),
    .auto_in_d_bits_source(merger_auto_in_d_bits_source),
    .auto_in_d_bits_sink(merger_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(merger_auto_in_d_bits_denied),
    .auto_in_d_bits_echo_blockisdirty(merger_auto_in_d_bits_echo_blockisdirty),
    .auto_in_d_bits_data(merger_auto_in_d_bits_data),
    .auto_in_e_ready(merger_auto_in_e_ready),
    .auto_in_e_valid(merger_auto_in_e_valid),
    .auto_in_e_bits_sink(merger_auto_in_e_bits_sink),
    .auto_out_a_ready(merger_auto_out_a_ready),
    .auto_out_a_valid(merger_auto_out_a_valid),
    .auto_out_a_bits_opcode(merger_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(merger_auto_out_a_bits_param),
    .auto_out_a_bits_size(merger_auto_out_a_bits_size),
    .auto_out_a_bits_source(merger_auto_out_a_bits_source),
    .auto_out_a_bits_address(merger_auto_out_a_bits_address),
    .auto_out_a_bits_user_preferCache(merger_auto_out_a_bits_user_preferCache),
    .auto_out_a_bits_mask(merger_auto_out_a_bits_mask),
    .auto_out_a_bits_data(merger_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(merger_auto_out_a_bits_corrupt),
    .auto_out_bready(merger_auto_out_bready),
    .auto_out_bvalid(merger_auto_out_bvalid),
    .auto_out_bopcode(merger_auto_out_bopcode),
    .auto_out_bparam(merger_auto_out_bparam),
    .auto_out_bsize(merger_auto_out_bsize),
    .auto_out_baddress(merger_auto_out_baddress),
    .auto_out_bdata(merger_auto_out_bdata),
    .auto_out_c_ready(merger_auto_out_c_ready),
    .auto_out_c_valid(merger_auto_out_c_valid),
    .auto_out_c_bits_opcode(merger_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(merger_auto_out_c_bits_param),
    .auto_out_c_bits_size(merger_auto_out_c_bits_size),
    .auto_out_c_bits_source(merger_auto_out_c_bits_source),
    .auto_out_c_bits_address(merger_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(merger_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(merger_auto_out_c_bits_data),
    .auto_out_d_ready(merger_auto_out_d_ready),
    .auto_out_d_valid(merger_auto_out_d_valid),
    .auto_out_d_bits_opcode(merger_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(merger_auto_out_d_bits_param),
    .auto_out_d_bits_size(merger_auto_out_d_bits_size),
    .auto_out_d_bits_source(merger_auto_out_d_bits_source),
    .auto_out_d_bits_sink(merger_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(merger_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(merger_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(merger_auto_out_d_bits_data),
    .auto_out_e_ready(merger_auto_out_e_ready),
    .auto_out_e_valid(merger_auto_out_e_valid),
    .auto_out_e_bits_sink(merger_auto_out_e_bits_sink)
  );
  TLXbar_10 xbar_2 ( // @[Xbar.scala 142:26]
    .clock(xbar_2_clock),
    .reset(xbar_2_reset),
    .auto_in_1_a_ready(xbar_2_auto_in_1_a_ready),
    .auto_in_1_a_valid(xbar_2_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(xbar_2_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(xbar_2_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(xbar_2_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(xbar_2_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(xbar_2_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_user_preferCache(xbar_2_auto_in_1_a_bits_user_preferCache),
    .auto_in_1_a_bits_mask(xbar_2_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(xbar_2_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(xbar_2_auto_in_1_a_bits_corrupt),
    .auto_in_1_bready(xbar_2_auto_in_1_bready),
    .auto_in_1_bvalid(xbar_2_auto_in_1_bvalid),
    .auto_in_1_bopcode(xbar_2_auto_in_1_bopcode),
    .auto_in_1_bparam(xbar_2_auto_in_1_bparam),
    .auto_in_1_bsize(xbar_2_auto_in_1_bsize),
    .auto_in_1_bsource(xbar_2_auto_in_1_bsource),
    .auto_in_1_baddress(xbar_2_auto_in_1_baddress),
    .auto_in_1_bdata(xbar_2_auto_in_1_bdata),
    .auto_in_1_c_ready(xbar_2_auto_in_1_c_ready),
    .auto_in_1_c_valid(xbar_2_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(xbar_2_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(xbar_2_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(xbar_2_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(xbar_2_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(xbar_2_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_echo_blockisdirty(xbar_2_auto_in_1_c_bits_echo_blockisdirty),
    .auto_in_1_c_bits_data(xbar_2_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(xbar_2_auto_in_1_d_ready),
    .auto_in_1_d_valid(xbar_2_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(xbar_2_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(xbar_2_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(xbar_2_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(xbar_2_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(xbar_2_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(xbar_2_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_echo_blockisdirty(xbar_2_auto_in_1_d_bits_echo_blockisdirty),
    .auto_in_1_d_bits_data(xbar_2_auto_in_1_d_bits_data),
    .auto_in_1_e_ready(xbar_2_auto_in_1_e_ready),
    .auto_in_1_e_valid(xbar_2_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(xbar_2_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(xbar_2_auto_in_0_a_ready),
    .auto_in_0_a_valid(xbar_2_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(xbar_2_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(xbar_2_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(xbar_2_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(xbar_2_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(xbar_2_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_preferCache(xbar_2_auto_in_0_a_bits_user_preferCache),
    .auto_in_0_a_bits_mask(xbar_2_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(xbar_2_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(xbar_2_auto_in_0_a_bits_corrupt),
    .auto_in_0_bready(xbar_2_auto_in_0_bready),
    .auto_in_0_bvalid(xbar_2_auto_in_0_bvalid),
    .auto_in_0_bopcode(xbar_2_auto_in_0_bopcode),
    .auto_in_0_bparam(xbar_2_auto_in_0_bparam),
    .auto_in_0_bsize(xbar_2_auto_in_0_bsize),
    .auto_in_0_bsource(xbar_2_auto_in_0_bsource),
    .auto_in_0_baddress(xbar_2_auto_in_0_baddress),
    .auto_in_0_bdata(xbar_2_auto_in_0_bdata),
    .auto_in_0_c_ready(xbar_2_auto_in_0_c_ready),
    .auto_in_0_c_valid(xbar_2_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(xbar_2_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(xbar_2_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(xbar_2_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(xbar_2_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(xbar_2_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_echo_blockisdirty(xbar_2_auto_in_0_c_bits_echo_blockisdirty),
    .auto_in_0_c_bits_data(xbar_2_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(xbar_2_auto_in_0_d_ready),
    .auto_in_0_d_valid(xbar_2_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(xbar_2_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(xbar_2_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(xbar_2_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(xbar_2_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(xbar_2_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(xbar_2_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_echo_blockisdirty(xbar_2_auto_in_0_d_bits_echo_blockisdirty),
    .auto_in_0_d_bits_data(xbar_2_auto_in_0_d_bits_data),
    .auto_in_0_e_ready(xbar_2_auto_in_0_e_ready),
    .auto_in_0_e_valid(xbar_2_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(xbar_2_auto_in_0_e_bits_sink),
    .auto_out_a_ready(xbar_2_auto_out_a_ready),
    .auto_out_a_valid(xbar_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(xbar_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(xbar_2_auto_out_a_bits_param),
    .auto_out_a_bits_size(xbar_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(xbar_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(xbar_2_auto_out_a_bits_address),
    .auto_out_a_bits_user_preferCache(xbar_2_auto_out_a_bits_user_preferCache),
    .auto_out_a_bits_mask(xbar_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(xbar_2_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(xbar_2_auto_out_a_bits_corrupt),
    .auto_out_bready(xbar_2_auto_out_bready),
    .auto_out_bvalid(xbar_2_auto_out_bvalid),
    .auto_out_bopcode(xbar_2_auto_out_bopcode),
    .auto_out_bparam(xbar_2_auto_out_bparam),
    .auto_out_bsize(xbar_2_auto_out_bsize),
    .auto_out_bsource(xbar_2_auto_out_bsource),
    .auto_out_baddress(xbar_2_auto_out_baddress),
    .auto_out_bdata(xbar_2_auto_out_bdata),
    .auto_out_c_ready(xbar_2_auto_out_c_ready),
    .auto_out_c_valid(xbar_2_auto_out_c_valid),
    .auto_out_c_bits_opcode(xbar_2_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(xbar_2_auto_out_c_bits_param),
    .auto_out_c_bits_size(xbar_2_auto_out_c_bits_size),
    .auto_out_c_bits_source(xbar_2_auto_out_c_bits_source),
    .auto_out_c_bits_address(xbar_2_auto_out_c_bits_address),
    .auto_out_c_bits_echo_blockisdirty(xbar_2_auto_out_c_bits_echo_blockisdirty),
    .auto_out_c_bits_data(xbar_2_auto_out_c_bits_data),
    .auto_out_d_ready(xbar_2_auto_out_d_ready),
    .auto_out_d_valid(xbar_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(xbar_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(xbar_2_auto_out_d_bits_param),
    .auto_out_d_bits_size(xbar_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(xbar_2_auto_out_d_bits_source),
    .auto_out_d_bits_sink(xbar_2_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(xbar_2_auto_out_d_bits_denied),
    .auto_out_d_bits_echo_blockisdirty(xbar_2_auto_out_d_bits_echo_blockisdirty),
    .auto_out_d_bits_data(xbar_2_auto_out_d_bits_data),
    .auto_out_e_ready(xbar_2_auto_out_e_ready),
    .auto_out_e_valid(xbar_2_auto_out_e_valid),
    .auto_out_e_bits_sink(xbar_2_auto_out_e_bits_sink)
  );
  TLBuffer_2 buffers_2 ( // @[Buffer.scala 73:47]
    .clock(buffers_2_clock),
    .reset(buffers_2_reset),
    .auto_in_a_ready(buffers_2_auto_in_a_ready),
    .auto_in_a_valid(buffers_2_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_2_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_2_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_2_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_2_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_2_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_2_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_2_auto_in_d_ready),
    .auto_in_d_valid(buffers_2_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_2_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_2_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_2_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_2_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_2_auto_out_a_ready),
    .auto_out_a_valid(buffers_2_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_2_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_2_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_2_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_2_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_2_auto_out_d_ready),
    .auto_out_d_valid(buffers_2_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_2_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_2_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_2_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_2_auto_out_d_bits_data)
  );
  TLBuffer_2 buffers_3 ( // @[Buffer.scala 73:47]
    .clock(buffers_3_clock),
    .reset(buffers_3_reset),
    .auto_in_a_ready(buffers_3_auto_in_a_ready),
    .auto_in_a_valid(buffers_3_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_3_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_3_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_3_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_3_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_3_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_3_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_3_auto_in_d_ready),
    .auto_in_d_valid(buffers_3_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_3_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_3_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_3_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_3_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_3_auto_out_a_ready),
    .auto_out_a_valid(buffers_3_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_3_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_3_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_3_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_3_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_3_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_3_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_3_auto_out_d_ready),
    .auto_out_d_valid(buffers_3_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_3_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_3_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_3_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_3_auto_out_d_bits_data)
  );
  TLBuffer_2 buffers_4 ( // @[Buffer.scala 73:47]
    .clock(buffers_4_clock),
    .reset(buffers_4_reset),
    .auto_in_a_ready(buffers_4_auto_in_a_ready),
    .auto_in_a_valid(buffers_4_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_4_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_4_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_4_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_4_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_4_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_4_auto_in_d_ready),
    .auto_in_d_valid(buffers_4_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_4_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_4_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_4_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_4_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_4_auto_out_a_ready),
    .auto_out_a_valid(buffers_4_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_4_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_4_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_4_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_4_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_4_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_4_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_4_auto_out_d_ready),
    .auto_out_d_valid(buffers_4_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_4_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_4_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_4_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_4_auto_out_d_bits_data)
  );
  TLBuffer_2 buffers_5 ( // @[Buffer.scala 73:47]
    .clock(buffers_5_clock),
    .reset(buffers_5_reset),
    .auto_in_a_ready(buffers_5_auto_in_a_ready),
    .auto_in_a_valid(buffers_5_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_5_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_5_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_5_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_5_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_5_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_5_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_5_auto_in_d_ready),
    .auto_in_d_valid(buffers_5_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_5_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_5_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_5_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_5_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_5_auto_out_a_ready),
    .auto_out_a_valid(buffers_5_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_5_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_5_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_5_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_5_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_5_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_5_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_5_auto_out_d_ready),
    .auto_out_d_valid(buffers_5_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_5_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_5_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_5_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_5_auto_out_d_bits_data)
  );
  TLBuffer_16 buffers_6 ( // @[Buffer.scala 73:47]
    .clock(buffers_6_clock),
    .reset(buffers_6_reset),
    .auto_in_a_ready(buffers_6_auto_in_a_ready),
    .auto_in_a_valid(buffers_6_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffers_6_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffers_6_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffers_6_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffers_6_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffers_6_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffers_6_auto_in_a_bits_data),
    .auto_in_d_ready(buffers_6_auto_in_d_ready),
    .auto_in_d_valid(buffers_6_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffers_6_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffers_6_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffers_6_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffers_6_auto_in_d_bits_data),
    .auto_out_a_ready(buffers_6_auto_out_a_ready),
    .auto_out_a_valid(buffers_6_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffers_6_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffers_6_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffers_6_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffers_6_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffers_6_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffers_6_auto_out_a_bits_data),
    .auto_out_d_ready(buffers_6_auto_out_d_ready),
    .auto_out_d_valid(buffers_6_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffers_6_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffers_6_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffers_6_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffers_6_auto_out_d_bits_data)
  );
  TLBuffer_2 buffer ( // @[Buffer.scala 68:28]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data)
  );
  assign auto_buffers_in_1_a_ready = buffers_5_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_valid = buffers_5_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_bits_source = buffers_5_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_1_d_bits_data = buffers_5_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_a_ready = buffers_3_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_valid = buffers_3_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_bits_source = buffers_3_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_buffers_in_0_d_bits_data = buffers_3_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_a_ready = binder_auto_in_1_a_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bvalid = binder_auto_in_1_bvalid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bopcode = binder_auto_in_1_bopcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bparam = binder_auto_in_1_bparam; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bsize = binder_auto_in_1_bsize; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bsource = binder_auto_in_1_bsource; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_baddress = binder_auto_in_1_baddress; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_bdata = binder_auto_in_1_bdata; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_c_ready = binder_auto_in_1_c_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_valid = binder_auto_in_1_d_valid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_opcode = binder_auto_in_1_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_param = binder_auto_in_1_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_size = binder_auto_in_1_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_source = binder_auto_in_1_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_sink = binder_auto_in_1_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_denied = binder_auto_in_1_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_echo_blockisdirty = binder_auto_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_d_bits_data = binder_auto_in_1_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_1_e_ready = binder_auto_in_1_e_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_a_ready = binder_auto_in_0_a_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bvalid = binder_auto_in_0_bvalid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bopcode = binder_auto_in_0_bopcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bparam = binder_auto_in_0_bparam; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bsize = binder_auto_in_0_bsize; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bsource = binder_auto_in_0_bsource; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_baddress = binder_auto_in_0_baddress; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_bdata = binder_auto_in_0_bdata; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_c_ready = binder_auto_in_0_c_ready; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_valid = binder_auto_in_0_d_valid; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_opcode = binder_auto_in_0_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_param = binder_auto_in_0_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_size = binder_auto_in_0_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_source = binder_auto_in_0_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_sink = binder_auto_in_0_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_denied = binder_auto_in_0_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_echo_blockisdirty = binder_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_d_bits_data = binder_auto_in_0_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_binder_in_0_e_ready = binder_auto_in_0_e_ready; // @[LazyModule.scala 309:16]
  assign auto_beu_int_out_0 = beu_auto_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_memory_port_out_a_valid = buffers_auto_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_opcode = buffers_auto_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_param = buffers_auto_out_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_size = buffers_auto_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_source = buffers_auto_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_address = buffers_auto_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_user_preferCache = buffers_auto_out_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_mask = buffers_auto_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_data = buffers_auto_out_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_a_bits_corrupt = buffers_auto_out_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_bready = buffers_auto_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_valid = buffers_auto_out_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_opcode = buffers_auto_out_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_param = buffers_auto_out_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_size = buffers_auto_out_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_source = buffers_auto_out_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_address = buffers_auto_out_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_echo_blockisdirty = buffers_auto_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_c_bits_data = buffers_auto_out_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_d_ready = buffers_auto_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_e_valid = buffers_auto_out_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_memory_port_out_e_bits_sink = buffers_auto_out_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_a_bits_data = buffer_auto_out_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_mmio_port_out_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign xbar_clock = clock;
  assign xbar_reset = reset;
  assign xbar_auto_in_1_a_valid = buffers_4_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_opcode = buffers_4_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_size = buffers_4_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_source = buffers_4_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_address = buffers_4_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_mask = buffers_4_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_a_bits_data = buffers_4_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_1_d_ready = buffers_4_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_valid = buffers_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_bits_opcode = buffers_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_bits_size = buffers_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_bits_address = buffers_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_bits_mask = buffers_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_a_bits_data = buffers_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_auto_in_0_d_ready = buffers_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign xbar_auto_out_1_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_1_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_a_ready = buffers_6_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_valid = buffers_6_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_opcode = buffers_6_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_size = buffers_6_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_source = buffers_6_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_auto_out_0_d_bits_data = buffers_6_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign beu_clock = clock;
  assign beu_reset = reset;
  assign beu_auto_in_a_valid = buffers_6_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_opcode = buffers_6_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_size = buffers_6_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_source = buffers_6_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_address = buffers_6_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_mask = buffers_6_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign beu_auto_in_a_bits_data = buffers_6_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign beu_auto_in_d_ready = buffers_6_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign beu_io_errors_icache_ecc_error_valid = beu_errors_icache_ecc_error_valid; // @[RVCORETile.scala 67:26]
  assign beu_io_errors_icache_ecc_error_bits = beu_errors_icache_ecc_error_bits; // @[RVCORETile.scala 67:26]
  assign beu_io_errors_dcache_ecc_error_valid = beu_errors_dcache_ecc_error_valid; // @[RVCORETile.scala 67:26]
  assign beu_io_errors_dcache_ecc_error_bits = beu_errors_dcache_ecc_error_bits; // @[RVCORETile.scala 67:26]
  assign beu_io_errors_l2_ecc_error_valid = beu_errors_l2_ecc_error_valid; // @[RVCORETile.scala 67:26]
  assign beu_io_errors_l2_ecc_error_bits = beu_errors_l2_ecc_error_bits; // @[RVCORETile.scala 67:26]
  assign binder_auto_in_1_a_valid = auto_binder_in_1_a_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_opcode = auto_binder_in_1_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_param = auto_binder_in_1_a_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_size = auto_binder_in_1_a_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_source = auto_binder_in_1_a_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_address = auto_binder_in_1_a_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_user_preferCache = auto_binder_in_1_a_bits_user_preferCache; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_mask = auto_binder_in_1_a_bits_mask; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_data = auto_binder_in_1_a_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_a_bits_corrupt = auto_binder_in_1_a_bits_corrupt; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_bready = auto_binder_in_1_bready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_valid = auto_binder_in_1_c_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_opcode = auto_binder_in_1_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_param = auto_binder_in_1_c_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_size = auto_binder_in_1_c_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_source = auto_binder_in_1_c_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_address = auto_binder_in_1_c_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_echo_blockisdirty = auto_binder_in_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_c_bits_data = auto_binder_in_1_c_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_d_ready = auto_binder_in_1_d_ready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_e_valid = auto_binder_in_1_e_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_1_e_bits_sink = auto_binder_in_1_e_bits_sink; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_valid = auto_binder_in_0_a_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_opcode = auto_binder_in_0_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_param = auto_binder_in_0_a_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_size = auto_binder_in_0_a_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_source = auto_binder_in_0_a_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_address = auto_binder_in_0_a_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_user_preferCache = auto_binder_in_0_a_bits_user_preferCache; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_mask = auto_binder_in_0_a_bits_mask; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_data = auto_binder_in_0_a_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_a_bits_corrupt = auto_binder_in_0_a_bits_corrupt; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_bready = auto_binder_in_0_bready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_valid = auto_binder_in_0_c_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_opcode = auto_binder_in_0_c_bits_opcode; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_param = auto_binder_in_0_c_bits_param; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_size = auto_binder_in_0_c_bits_size; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_source = auto_binder_in_0_c_bits_source; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_address = auto_binder_in_0_c_bits_address; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_echo_blockisdirty = auto_binder_in_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_c_bits_data = auto_binder_in_0_c_bits_data; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_d_ready = auto_binder_in_0_d_ready; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_e_valid = auto_binder_in_0_e_valid; // @[LazyModule.scala 309:16]
  assign binder_auto_in_0_e_bits_sink = auto_binder_in_0_e_bits_sink; // @[LazyModule.scala 309:16]
  assign binder_auto_out_1_a_ready = xbar_2_auto_in_1_a_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bvalid = xbar_2_auto_in_1_bvalid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bopcode = xbar_2_auto_in_1_bopcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bparam = xbar_2_auto_in_1_bparam; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bsize = xbar_2_auto_in_1_bsize; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bsource = xbar_2_auto_in_1_bsource; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_baddress = xbar_2_auto_in_1_baddress; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_bdata = xbar_2_auto_in_1_bdata; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_c_ready = xbar_2_auto_in_1_c_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_valid = xbar_2_auto_in_1_d_valid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_opcode = xbar_2_auto_in_1_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_param = xbar_2_auto_in_1_d_bits_param; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_size = xbar_2_auto_in_1_d_bits_size; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_source = xbar_2_auto_in_1_d_bits_source; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_sink = xbar_2_auto_in_1_d_bits_sink; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_denied = xbar_2_auto_in_1_d_bits_denied; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_echo_blockisdirty = xbar_2_auto_in_1_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_d_bits_data = xbar_2_auto_in_1_d_bits_data; // @[LazyModule.scala 298:16]
  assign binder_auto_out_1_e_ready = xbar_2_auto_in_1_e_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_a_ready = xbar_2_auto_in_0_a_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bvalid = xbar_2_auto_in_0_bvalid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bopcode = xbar_2_auto_in_0_bopcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bparam = xbar_2_auto_in_0_bparam; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bsize = xbar_2_auto_in_0_bsize; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bsource = xbar_2_auto_in_0_bsource; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_baddress = xbar_2_auto_in_0_baddress; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_bdata = xbar_2_auto_in_0_bdata; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_c_ready = xbar_2_auto_in_0_c_ready; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_valid = xbar_2_auto_in_0_d_valid; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_opcode = xbar_2_auto_in_0_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_param = xbar_2_auto_in_0_d_bits_param; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_size = xbar_2_auto_in_0_d_bits_size; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_source = xbar_2_auto_in_0_d_bits_source; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_sink = xbar_2_auto_in_0_d_bits_sink; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_denied = xbar_2_auto_in_0_d_bits_denied; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_echo_blockisdirty = xbar_2_auto_in_0_d_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_d_bits_data = xbar_2_auto_in_0_d_bits_data; // @[LazyModule.scala 298:16]
  assign binder_auto_out_0_e_ready = xbar_2_auto_in_0_e_ready; // @[LazyModule.scala 298:16]
  assign buffers_clock = clock;
  assign buffers_reset = reset;
  assign buffers_auto_in_a_valid = buffers_1_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_opcode = buffers_1_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_param = buffers_1_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_size = buffers_1_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_source = buffers_1_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_address = buffers_1_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_user_preferCache = buffers_1_auto_out_a_bits_user_preferCache; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_mask = buffers_1_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_data = buffers_1_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_a_bits_corrupt = buffers_1_auto_out_a_bits_corrupt; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_bready = buffers_1_auto_out_bready; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_valid = buffers_1_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_opcode = buffers_1_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_param = buffers_1_auto_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_size = buffers_1_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_source = buffers_1_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_address = buffers_1_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_echo_blockisdirty = buffers_1_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_c_bits_data = buffers_1_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_d_ready = buffers_1_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_e_valid = buffers_1_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign buffers_auto_in_e_bits_sink = buffers_1_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign buffers_auto_out_a_ready = auto_memory_port_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_bvalid = auto_memory_port_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_bopcode = auto_memory_port_out_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_bparam = auto_memory_port_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_bsize = auto_memory_port_out_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_baddress = auto_memory_port_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_bdata = auto_memory_port_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_c_ready = auto_memory_port_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_valid = auto_memory_port_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_opcode = auto_memory_port_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_param = auto_memory_port_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_size = auto_memory_port_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_source = auto_memory_port_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_sink = auto_memory_port_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_denied = auto_memory_port_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_echo_blockisdirty = auto_memory_port_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_d_bits_data = auto_memory_port_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_auto_out_e_ready = auto_memory_port_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffers_1_clock = clock;
  assign buffers_1_reset = reset;
  assign buffers_1_auto_in_a_valid = merger_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_opcode = merger_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_param = merger_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_size = merger_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_source = merger_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_address = merger_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_user_preferCache = merger_auto_out_a_bits_user_preferCache; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_mask = merger_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_data = merger_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_a_bits_corrupt = merger_auto_out_a_bits_corrupt; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_bready = merger_auto_out_bready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_valid = merger_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_opcode = merger_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_param = merger_auto_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_size = merger_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_source = merger_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_address = merger_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_echo_blockisdirty = merger_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_c_bits_data = merger_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_d_ready = merger_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_e_valid = merger_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_in_e_bits_sink = merger_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_a_ready = buffers_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_bvalid = buffers_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_bopcode = buffers_auto_in_bopcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_bparam = buffers_auto_in_bparam; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_bsize = buffers_auto_in_bsize; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_baddress = buffers_auto_in_baddress; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_bdata = buffers_auto_in_bdata; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_c_ready = buffers_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_valid = buffers_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_opcode = buffers_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_param = buffers_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_size = buffers_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_source = buffers_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_sink = buffers_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_denied = buffers_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_echo_blockisdirty = buffers_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_d_bits_data = buffers_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_1_auto_out_e_ready = buffers_auto_in_e_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_valid = xbar_2_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_opcode = xbar_2_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_param = xbar_2_auto_out_a_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_size = xbar_2_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_source = xbar_2_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_address = xbar_2_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_user_preferCache = xbar_2_auto_out_a_bits_user_preferCache; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_mask = xbar_2_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_data = xbar_2_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_a_bits_corrupt = xbar_2_auto_out_a_bits_corrupt; // @[LazyModule.scala 296:16]
  assign merger_auto_in_bready = xbar_2_auto_out_bready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_valid = xbar_2_auto_out_c_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_opcode = xbar_2_auto_out_c_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_param = xbar_2_auto_out_c_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_size = xbar_2_auto_out_c_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_source = xbar_2_auto_out_c_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_address = xbar_2_auto_out_c_bits_address; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_echo_blockisdirty = xbar_2_auto_out_c_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign merger_auto_in_c_bits_data = xbar_2_auto_out_c_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_in_d_ready = xbar_2_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_valid = xbar_2_auto_out_e_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_in_e_bits_sink = xbar_2_auto_out_e_bits_sink; // @[LazyModule.scala 296:16]
  assign merger_auto_out_a_ready = buffers_1_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_out_bvalid = buffers_1_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign merger_auto_out_bopcode = buffers_1_auto_in_bopcode; // @[LazyModule.scala 296:16]
  assign merger_auto_out_bparam = buffers_1_auto_in_bparam; // @[LazyModule.scala 296:16]
  assign merger_auto_out_bsize = buffers_1_auto_in_bsize; // @[LazyModule.scala 296:16]
  assign merger_auto_out_baddress = buffers_1_auto_in_baddress; // @[LazyModule.scala 296:16]
  assign merger_auto_out_bdata = buffers_1_auto_in_bdata; // @[LazyModule.scala 296:16]
  assign merger_auto_out_c_ready = buffers_1_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_valid = buffers_1_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_opcode = buffers_1_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_param = buffers_1_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_size = buffers_1_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_source = buffers_1_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_sink = buffers_1_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_denied = buffers_1_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_echo_blockisdirty = buffers_1_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign merger_auto_out_d_bits_data = buffers_1_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign merger_auto_out_e_ready = buffers_1_auto_in_e_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_clock = clock;
  assign xbar_2_reset = reset;
  assign xbar_2_auto_in_1_a_valid = binder_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_opcode = binder_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_param = binder_auto_out_1_a_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_size = binder_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_source = binder_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_address = binder_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_user_preferCache = binder_auto_out_1_a_bits_user_preferCache; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_mask = binder_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_data = binder_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_a_bits_corrupt = binder_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_bready = binder_auto_out_1_bready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_valid = binder_auto_out_1_c_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_opcode = binder_auto_out_1_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_param = binder_auto_out_1_c_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_size = binder_auto_out_1_c_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_source = binder_auto_out_1_c_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_address = binder_auto_out_1_c_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_echo_blockisdirty = binder_auto_out_1_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_c_bits_data = binder_auto_out_1_c_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_d_ready = binder_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_e_valid = binder_auto_out_1_e_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_1_e_bits_sink = binder_auto_out_1_e_bits_sink; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_valid = binder_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_opcode = binder_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_param = binder_auto_out_0_a_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_size = binder_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_source = binder_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_address = binder_auto_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_user_preferCache = binder_auto_out_0_a_bits_user_preferCache; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_mask = binder_auto_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_data = binder_auto_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_a_bits_corrupt = binder_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_bready = binder_auto_out_0_bready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_valid = binder_auto_out_0_c_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_opcode = binder_auto_out_0_c_bits_opcode; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_param = binder_auto_out_0_c_bits_param; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_size = binder_auto_out_0_c_bits_size; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_source = binder_auto_out_0_c_bits_source; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_address = binder_auto_out_0_c_bits_address; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_echo_blockisdirty = binder_auto_out_0_c_bits_echo_blockisdirty; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_c_bits_data = binder_auto_out_0_c_bits_data; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_d_ready = binder_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_e_valid = binder_auto_out_0_e_valid; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_in_0_e_bits_sink = binder_auto_out_0_e_bits_sink; // @[LazyModule.scala 298:16]
  assign xbar_2_auto_out_a_ready = merger_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bvalid = merger_auto_in_bvalid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bopcode = merger_auto_in_bopcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bparam = merger_auto_in_bparam; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bsize = merger_auto_in_bsize; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bsource = merger_auto_in_bsource; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_baddress = merger_auto_in_baddress; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_bdata = merger_auto_in_bdata; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_c_ready = merger_auto_in_c_ready; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_valid = merger_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_opcode = merger_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_param = merger_auto_in_d_bits_param; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_size = merger_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_source = merger_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_sink = merger_auto_in_d_bits_sink; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_denied = merger_auto_in_d_bits_denied; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_echo_blockisdirty = merger_auto_in_d_bits_echo_blockisdirty; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_d_bits_data = merger_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign xbar_2_auto_out_e_ready = merger_auto_in_e_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_clock = clock;
  assign buffers_2_reset = reset;
  assign buffers_2_auto_in_a_valid = buffers_3_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_opcode = buffers_3_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_size = buffers_3_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_source = buffers_3_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_address = buffers_3_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_mask = buffers_3_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_a_bits_data = buffers_3_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_in_d_ready = buffers_3_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_a_ready = xbar_auto_in_0_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_valid = xbar_auto_in_0_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_opcode = xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_size = xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_source = 1'h0; // @[LazyModule.scala 296:16]
  assign buffers_2_auto_out_d_bits_data = xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_3_clock = clock;
  assign buffers_3_reset = reset;
  assign buffers_3_auto_in_a_valid = auto_buffers_in_0_a_valid; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_opcode = 3'h4; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_size = 3'h3; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_source = 1'h0; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_address = auto_buffers_in_0_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_mask = 8'hff; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_a_bits_data = 64'h0; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_in_d_ready = auto_buffers_in_0_d_ready; // @[LazyModule.scala 309:16]
  assign buffers_3_auto_out_a_ready = buffers_2_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_valid = buffers_2_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_opcode = buffers_2_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_size = buffers_2_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_source = buffers_2_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_3_auto_out_d_bits_data = buffers_2_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_4_clock = clock;
  assign buffers_4_reset = reset;
  assign buffers_4_auto_in_a_valid = buffers_5_auto_out_a_valid; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_opcode = buffers_5_auto_out_a_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_size = buffers_5_auto_out_a_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_source = buffers_5_auto_out_a_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_address = buffers_5_auto_out_a_bits_address; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_mask = buffers_5_auto_out_a_bits_mask; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_a_bits_data = buffers_5_auto_out_a_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_in_d_ready = buffers_5_auto_out_d_ready; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_a_ready = xbar_auto_in_1_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_valid = xbar_auto_in_1_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_opcode = xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_size = xbar_auto_in_1_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_source = 1'h0; // @[LazyModule.scala 296:16]
  assign buffers_4_auto_out_d_bits_data = xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_5_clock = clock;
  assign buffers_5_reset = reset;
  assign buffers_5_auto_in_a_valid = auto_buffers_in_1_a_valid; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_opcode = auto_buffers_in_1_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_size = auto_buffers_in_1_a_bits_size; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_source = 1'h0; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_address = auto_buffers_in_1_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_mask = auto_buffers_in_1_a_bits_mask; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_a_bits_data = auto_buffers_in_1_a_bits_data; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_in_d_ready = auto_buffers_in_1_d_ready; // @[LazyModule.scala 309:16]
  assign buffers_5_auto_out_a_ready = buffers_4_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_valid = buffers_4_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_opcode = buffers_4_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_size = buffers_4_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_source = buffers_4_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_5_auto_out_d_bits_data = buffers_4_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffers_6_clock = clock;
  assign buffers_6_reset = reset;
  assign buffers_6_auto_in_a_valid = xbar_auto_out_0_a_valid; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_opcode = xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_size = xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_source = xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_address = xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_mask = xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_a_bits_data = xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_in_d_ready = xbar_auto_out_0_d_ready; // @[LazyModule.scala 298:16]
  assign buffers_6_auto_out_a_ready = beu_auto_in_a_ready; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_valid = beu_auto_in_d_valid; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_opcode = beu_auto_in_d_bits_opcode; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_size = beu_auto_in_d_bits_size; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_source = beu_auto_in_d_bits_source; // @[LazyModule.scala 296:16]
  assign buffers_6_auto_out_d_bits_data = beu_auto_in_d_bits_data; // @[LazyModule.scala 296:16]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = xbar_auto_out_1_a_valid; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_opcode = xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_size = xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_source = xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_address = xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_mask = xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_a_bits_data = xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 298:16]
  assign buffer_auto_in_d_ready = xbar_auto_out_1_d_ready; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_a_ready = auto_mmio_port_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_valid = auto_mmio_port_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_opcode = auto_mmio_port_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_size = auto_mmio_port_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_source = auto_mmio_port_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign buffer_auto_out_d_bits_data = auto_mmio_port_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule
