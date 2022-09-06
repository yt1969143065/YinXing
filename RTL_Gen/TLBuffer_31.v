module TLBuffer_31(
  input          clock,
  input          reset,
  output         auto_in_3_a_ready,
  input          auto_in_3_a_valid,
  input  [2:0]   auto_in_3_a_bits_opcode,
  input  [2:0]   auto_in_3_a_bits_param,
  input  [2:0]   auto_in_3_a_bits_size,
  input  [5:0]   auto_in_3_a_bits_source,
  input  [35:0]  auto_in_3_a_bits_address,
  input          auto_in_3_a_bits_user_preferCache,
  input  [31:0]  auto_in_3_a_bits_mask,
  input  [255:0] auto_in_3_a_bits_data,
  input          auto_in_3_a_bits_corrupt,
  input          auto_in_3_bready,
  output         auto_in_3_bvalid,
  output [2:0]   auto_in_3_bopcode,
  output [1:0]   auto_in_3_bparam,
  output [2:0]   auto_in_3_bsize,
  output [5:0]   auto_in_3_bsource,
  output [35:0]  auto_in_3_baddress,
  output [255:0] auto_in_3_bdata,
  output         auto_in_3_c_ready,
  input          auto_in_3_c_valid,
  input  [2:0]   auto_in_3_c_bits_opcode,
  input  [2:0]   auto_in_3_c_bits_param,
  input  [2:0]   auto_in_3_c_bits_size,
  input  [5:0]   auto_in_3_c_bits_source,
  input  [35:0]  auto_in_3_c_bits_address,
  input          auto_in_3_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_3_c_bits_data,
  input          auto_in_3_d_ready,
  output         auto_in_3_d_valid,
  output [2:0]   auto_in_3_d_bits_opcode,
  output [1:0]   auto_in_3_d_bits_param,
  output [2:0]   auto_in_3_d_bits_size,
  output [5:0]   auto_in_3_d_bits_source,
  output [3:0]   auto_in_3_d_bits_sink,
  output         auto_in_3_d_bits_denied,
  output         auto_in_3_d_bits_echo_blockisdirty,
  output [255:0] auto_in_3_d_bits_data,
  output         auto_in_3_d_bits_corrupt,
  output         auto_in_3_e_ready,
  input          auto_in_3_e_valid,
  input  [3:0]   auto_in_3_e_bits_sink,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_param,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [5:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input          auto_in_2_a_bits_user_preferCache,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  input          auto_in_2_a_bits_corrupt,
  input          auto_in_2_bready,
  output         auto_in_2_bvalid,
  output [2:0]   auto_in_2_bopcode,
  output [1:0]   auto_in_2_bparam,
  output [2:0]   auto_in_2_bsize,
  output [5:0]   auto_in_2_bsource,
  output [35:0]  auto_in_2_baddress,
  output [255:0] auto_in_2_bdata,
  output         auto_in_2_c_ready,
  input          auto_in_2_c_valid,
  input  [2:0]   auto_in_2_c_bits_opcode,
  input  [2:0]   auto_in_2_c_bits_param,
  input  [2:0]   auto_in_2_c_bits_size,
  input  [5:0]   auto_in_2_c_bits_source,
  input  [35:0]  auto_in_2_c_bits_address,
  input          auto_in_2_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_2_c_bits_data,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [1:0]   auto_in_2_d_bits_param,
  output [2:0]   auto_in_2_d_bits_size,
  output [5:0]   auto_in_2_d_bits_source,
  output [3:0]   auto_in_2_d_bits_sink,
  output         auto_in_2_d_bits_denied,
  output         auto_in_2_d_bits_echo_blockisdirty,
  output [255:0] auto_in_2_d_bits_data,
  output         auto_in_2_d_bits_corrupt,
  output         auto_in_2_e_ready,
  input          auto_in_2_e_valid,
  input  [3:0]   auto_in_2_e_bits_sink,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [5:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input          auto_in_1_a_bits_user_preferCache,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [2:0]   auto_in_1_bopcode,
  output [1:0]   auto_in_1_bparam,
  output [2:0]   auto_in_1_bsize,
  output [5:0]   auto_in_1_bsource,
  output [35:0]  auto_in_1_baddress,
  output [255:0] auto_in_1_bdata,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_param,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [5:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input          auto_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [5:0]   auto_in_1_d_bits_source,
  output [3:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_denied,
  output         auto_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_1_e_ready,
  input          auto_in_1_e_valid,
  input  [3:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [5:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input          auto_in_0_a_bits_user_preferCache,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [2:0]   auto_in_0_bopcode,
  output [1:0]   auto_in_0_bparam,
  output [2:0]   auto_in_0_bsize,
  output [5:0]   auto_in_0_bsource,
  output [35:0]  auto_in_0_baddress,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [5:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input          auto_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [5:0]   auto_in_0_d_bits_source,
  output [3:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [3:0]   auto_in_0_e_bits_sink,
  input          auto_out_3_a_ready,
  output         auto_out_3_a_valid,
  output [2:0]   auto_out_3_a_bits_opcode,
  output [2:0]   auto_out_3_a_bits_param,
  output [2:0]   auto_out_3_a_bits_size,
  output [5:0]   auto_out_3_a_bits_source,
  output [35:0]  auto_out_3_a_bits_address,
  output         auto_out_3_a_bits_user_preferCache,
  output [31:0]  auto_out_3_a_bits_mask,
  output [255:0] auto_out_3_a_bits_data,
  output         auto_out_3_a_bits_corrupt,
  output         auto_out_3_bready,
  input          auto_out_3_bvalid,
  input  [2:0]   auto_out_3_bopcode,
  input  [1:0]   auto_out_3_bparam,
  input  [2:0]   auto_out_3_bsize,
  input  [5:0]   auto_out_3_bsource,
  input  [35:0]  auto_out_3_baddress,
  input  [255:0] auto_out_3_bdata,
  input          auto_out_3_c_ready,
  output         auto_out_3_c_valid,
  output [2:0]   auto_out_3_c_bits_opcode,
  output [2:0]   auto_out_3_c_bits_param,
  output [2:0]   auto_out_3_c_bits_size,
  output [5:0]   auto_out_3_c_bits_source,
  output [35:0]  auto_out_3_c_bits_address,
  output         auto_out_3_c_bits_echo_blockisdirty,
  output [255:0] auto_out_3_c_bits_data,
  output         auto_out_3_d_ready,
  input          auto_out_3_d_valid,
  input  [2:0]   auto_out_3_d_bits_opcode,
  input  [1:0]   auto_out_3_d_bits_param,
  input  [2:0]   auto_out_3_d_bits_size,
  input  [5:0]   auto_out_3_d_bits_source,
  input  [3:0]   auto_out_3_d_bits_sink,
  input          auto_out_3_d_bits_denied,
  input          auto_out_3_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_3_d_bits_data,
  input          auto_out_3_d_bits_corrupt,
  input          auto_out_3_e_ready,
  output         auto_out_3_e_valid,
  output [3:0]   auto_out_3_e_bits_sink,
  input          auto_out_2_a_ready,
  output         auto_out_2_a_valid,
  output [2:0]   auto_out_2_a_bits_opcode,
  output [2:0]   auto_out_2_a_bits_param,
  output [2:0]   auto_out_2_a_bits_size,
  output [5:0]   auto_out_2_a_bits_source,
  output [35:0]  auto_out_2_a_bits_address,
  output         auto_out_2_a_bits_user_preferCache,
  output [31:0]  auto_out_2_a_bits_mask,
  output [255:0] auto_out_2_a_bits_data,
  output         auto_out_2_a_bits_corrupt,
  output         auto_out_2_bready,
  input          auto_out_2_bvalid,
  input  [2:0]   auto_out_2_bopcode,
  input  [1:0]   auto_out_2_bparam,
  input  [2:0]   auto_out_2_bsize,
  input  [5:0]   auto_out_2_bsource,
  input  [35:0]  auto_out_2_baddress,
  input  [255:0] auto_out_2_bdata,
  input          auto_out_2_c_ready,
  output         auto_out_2_c_valid,
  output [2:0]   auto_out_2_c_bits_opcode,
  output [2:0]   auto_out_2_c_bits_param,
  output [2:0]   auto_out_2_c_bits_size,
  output [5:0]   auto_out_2_c_bits_source,
  output [35:0]  auto_out_2_c_bits_address,
  output         auto_out_2_c_bits_echo_blockisdirty,
  output [255:0] auto_out_2_c_bits_data,
  output         auto_out_2_d_ready,
  input          auto_out_2_d_valid,
  input  [2:0]   auto_out_2_d_bits_opcode,
  input  [1:0]   auto_out_2_d_bits_param,
  input  [2:0]   auto_out_2_d_bits_size,
  input  [5:0]   auto_out_2_d_bits_source,
  input  [3:0]   auto_out_2_d_bits_sink,
  input          auto_out_2_d_bits_denied,
  input          auto_out_2_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_2_d_bits_data,
  input          auto_out_2_d_bits_corrupt,
  input          auto_out_2_e_ready,
  output         auto_out_2_e_valid,
  output [3:0]   auto_out_2_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [5:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output         auto_out_1_a_bits_user_preferCache,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_a_bits_corrupt,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
  input  [5:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [5:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output         auto_out_1_c_bits_echo_blockisdirty,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [5:0]   auto_out_1_d_bits_source,
  input  [3:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input          auto_out_1_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [3:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [5:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output         auto_out_0_a_bits_user_preferCache,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_a_bits_corrupt,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
  input  [5:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [5:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output         auto_out_0_c_bits_echo_blockisdirty,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [5:0]   auto_out_0_d_bits_source,
  input  [3:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input          auto_out_0_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_d_bits_corrupt,
  input          auto_out_0_e_ready,
  output         auto_out_0_e_valid,
  output [3:0]   auto_out_0_e_bits_sink
);
  wire  bundleOut_0_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_0_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_0_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_0_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_0_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_0_bq_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_0_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_0_bq_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_0_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_0_c_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_c_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_c_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_c_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_0_c_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_c_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_c_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_c_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_1_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_1_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_enq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_1_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_1_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_1_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_1_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_deq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_1_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_1_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_1_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_1_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_1_d_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_1_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_1_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_1_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_1_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_1_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_bq_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_1_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_bq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_1_bq_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_1_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_1_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_1_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_1_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_1_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_1_bq_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_1_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_1_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_1_c_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_1_c_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_1_c_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_1_c_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_1_c_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_1_c_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_c_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_1_c_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_1_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_1_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_1_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_2_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_2_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_enq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_2_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_2_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_2_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_2_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_deq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_2_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_2_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_2_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_2_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_2_d_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_2_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_2_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_2_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_2_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_2_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_bq_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_2_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_bq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_2_bq_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_2_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_2_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_2_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_2_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_2_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_2_bq_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_2_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_2_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_2_c_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_2_c_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_2_c_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_2_c_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_2_c_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_2_c_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_c_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_2_c_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_2_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_2_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_2_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_3_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_3_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_enq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_3_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_3_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_3_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_3_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_deq_bits_user_preferCache; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_3_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_3_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_3_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_3_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_3_d_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_3_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_3_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_3_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_3_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_3_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_bq_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_3_bq_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_bq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_3_bq_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_3_bq_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_3_bq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_3_bq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_bq_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_3_bq_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_3_bq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleIn_3_bq_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleIn_3_bq_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_3_bq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_3_c_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_3_c_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_enq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_3_c_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_3_c_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] bundleOut_3_c_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_3_c_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_c_q_io_deq_bits_echo_blockisdirty; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_3_c_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_3_e_q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_3_e_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_3_e_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  Queue_363 bundleOut_0_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_a_q_clock),
    .reset(bundleOut_0_a_q_reset),
    .io_enq_ready(bundleOut_0_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_0_a_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_0_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_a_q_io_enq_bits_address),
    .io_enq_bits_user_preferCache(bundleOut_0_a_q_io_enq_bits_user_preferCache),
    .io_enq_bits_mask(bundleOut_0_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_0_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleOut_0_a_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleOut_0_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_0_a_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_0_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_a_q_io_deq_bits_address),
    .io_deq_bits_user_preferCache(bundleOut_0_a_q_io_deq_bits_user_preferCache),
    .io_deq_bits_mask(bundleOut_0_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_0_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleOut_0_a_q_io_deq_bits_corrupt)
  );
  Queue_364 bundleIn_0_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_d_q_clock),
    .reset(bundleIn_0_d_q_reset),
    .io_enq_ready(bundleIn_0_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_0_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_0_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_0_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_0_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_0_d_q_io_enq_bits_source),
    .io_enq_bits_sink(bundleIn_0_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(bundleIn_0_d_q_io_enq_bits_denied),
    .io_enq_bits_echo_blockisdirty(bundleIn_0_d_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleIn_0_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_0_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_0_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_0_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_0_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_0_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_0_d_q_io_deq_bits_denied),
    .io_deq_bits_echo_blockisdirty(bundleIn_0_d_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleIn_0_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_0_d_q_io_deq_bits_corrupt)
  );
  Queue_365 bundleIn_0_bq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_bq_clock),
    .reset(bundleIn_0_bq_reset),
    .io_enq_ready(bundleIn_0_bq_io_enq_ready),
    .io_enq_valid(bundleIn_0_bq_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_0_bq_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_0_bq_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_0_bq_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_0_bq_io_enq_bits_source),
    .io_enq_bits_address(bundleIn_0_bq_io_enq_bits_address),
    .io_enq_bits_data(bundleIn_0_bq_io_enq_bits_data),
    .io_deq_ready(bundleIn_0_bq_io_deq_ready),
    .io_deq_valid(bundleIn_0_bq_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_bq_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_bq_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_bq_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_0_bq_io_deq_bits_source),
    .io_deq_bits_address(bundleIn_0_bq_io_deq_bits_address),
    .io_deq_bits_data(bundleIn_0_bq_io_deq_bits_data)
  );
  Queue_366 bundleOut_0_c_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_c_q_clock),
    .reset(bundleOut_0_c_q_reset),
    .io_enq_ready(bundleOut_0_c_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_c_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_0_c_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_0_c_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_c_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_c_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(bundleOut_0_c_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleOut_0_c_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_0_c_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_c_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_0_c_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_0_c_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_c_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_c_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(bundleOut_0_c_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleOut_0_c_q_io_deq_bits_data)
  );
  Queue_367 bundleOut_0_e_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_e_q_clock),
    .reset(bundleOut_0_e_q_reset),
    .io_enq_ready(bundleOut_0_e_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_e_q_io_enq_valid),
    .io_enq_bits_sink(bundleOut_0_e_q_io_enq_bits_sink),
    .io_deq_ready(bundleOut_0_e_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_e_q_io_deq_valid),
    .io_deq_bits_sink(bundleOut_0_e_q_io_deq_bits_sink)
  );
  Queue_363 bundleOut_1_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_1_a_q_clock),
    .reset(bundleOut_1_a_q_reset),
    .io_enq_ready(bundleOut_1_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_1_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_1_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_1_a_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_1_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_1_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_1_a_q_io_enq_bits_address),
    .io_enq_bits_user_preferCache(bundleOut_1_a_q_io_enq_bits_user_preferCache),
    .io_enq_bits_mask(bundleOut_1_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_1_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleOut_1_a_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleOut_1_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_1_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_1_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_1_a_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_1_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_1_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_1_a_q_io_deq_bits_address),
    .io_deq_bits_user_preferCache(bundleOut_1_a_q_io_deq_bits_user_preferCache),
    .io_deq_bits_mask(bundleOut_1_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_1_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleOut_1_a_q_io_deq_bits_corrupt)
  );
  Queue_364 bundleIn_1_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_1_d_q_clock),
    .reset(bundleIn_1_d_q_reset),
    .io_enq_ready(bundleIn_1_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_1_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_1_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_1_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_1_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_1_d_q_io_enq_bits_source),
    .io_enq_bits_sink(bundleIn_1_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(bundleIn_1_d_q_io_enq_bits_denied),
    .io_enq_bits_echo_blockisdirty(bundleIn_1_d_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleIn_1_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_1_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_1_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_1_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_1_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_1_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_1_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_1_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_1_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_1_d_q_io_deq_bits_denied),
    .io_deq_bits_echo_blockisdirty(bundleIn_1_d_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleIn_1_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_1_d_q_io_deq_bits_corrupt)
  );
  Queue_365 bundleIn_1_bq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_1_bq_clock),
    .reset(bundleIn_1_bq_reset),
    .io_enq_ready(bundleIn_1_bq_io_enq_ready),
    .io_enq_valid(bundleIn_1_bq_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_1_bq_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_1_bq_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_1_bq_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_1_bq_io_enq_bits_source),
    .io_enq_bits_address(bundleIn_1_bq_io_enq_bits_address),
    .io_enq_bits_data(bundleIn_1_bq_io_enq_bits_data),
    .io_deq_ready(bundleIn_1_bq_io_deq_ready),
    .io_deq_valid(bundleIn_1_bq_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_1_bq_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_1_bq_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_1_bq_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_1_bq_io_deq_bits_source),
    .io_deq_bits_address(bundleIn_1_bq_io_deq_bits_address),
    .io_deq_bits_data(bundleIn_1_bq_io_deq_bits_data)
  );
  Queue_366 bundleOut_1_c_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_1_c_q_clock),
    .reset(bundleOut_1_c_q_reset),
    .io_enq_ready(bundleOut_1_c_q_io_enq_ready),
    .io_enq_valid(bundleOut_1_c_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_1_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_1_c_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_1_c_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_1_c_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_1_c_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(bundleOut_1_c_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleOut_1_c_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_1_c_q_io_deq_ready),
    .io_deq_valid(bundleOut_1_c_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_1_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_1_c_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_1_c_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_1_c_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_1_c_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(bundleOut_1_c_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleOut_1_c_q_io_deq_bits_data)
  );
  Queue_367 bundleOut_1_e_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_1_e_q_clock),
    .reset(bundleOut_1_e_q_reset),
    .io_enq_ready(bundleOut_1_e_q_io_enq_ready),
    .io_enq_valid(bundleOut_1_e_q_io_enq_valid),
    .io_enq_bits_sink(bundleOut_1_e_q_io_enq_bits_sink),
    .io_deq_ready(bundleOut_1_e_q_io_deq_ready),
    .io_deq_valid(bundleOut_1_e_q_io_deq_valid),
    .io_deq_bits_sink(bundleOut_1_e_q_io_deq_bits_sink)
  );
  Queue_363 bundleOut_2_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_2_a_q_clock),
    .reset(bundleOut_2_a_q_reset),
    .io_enq_ready(bundleOut_2_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_2_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_2_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_2_a_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_2_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_2_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_2_a_q_io_enq_bits_address),
    .io_enq_bits_user_preferCache(bundleOut_2_a_q_io_enq_bits_user_preferCache),
    .io_enq_bits_mask(bundleOut_2_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_2_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleOut_2_a_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleOut_2_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_2_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_2_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_2_a_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_2_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_2_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_2_a_q_io_deq_bits_address),
    .io_deq_bits_user_preferCache(bundleOut_2_a_q_io_deq_bits_user_preferCache),
    .io_deq_bits_mask(bundleOut_2_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_2_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleOut_2_a_q_io_deq_bits_corrupt)
  );
  Queue_364 bundleIn_2_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_2_d_q_clock),
    .reset(bundleIn_2_d_q_reset),
    .io_enq_ready(bundleIn_2_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_2_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_2_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_2_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_2_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_2_d_q_io_enq_bits_source),
    .io_enq_bits_sink(bundleIn_2_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(bundleIn_2_d_q_io_enq_bits_denied),
    .io_enq_bits_echo_blockisdirty(bundleIn_2_d_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleIn_2_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_2_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_2_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_2_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_2_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_2_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_2_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_2_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_2_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_2_d_q_io_deq_bits_denied),
    .io_deq_bits_echo_blockisdirty(bundleIn_2_d_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleIn_2_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_2_d_q_io_deq_bits_corrupt)
  );
  Queue_365 bundleIn_2_bq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_2_bq_clock),
    .reset(bundleIn_2_bq_reset),
    .io_enq_ready(bundleIn_2_bq_io_enq_ready),
    .io_enq_valid(bundleIn_2_bq_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_2_bq_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_2_bq_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_2_bq_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_2_bq_io_enq_bits_source),
    .io_enq_bits_address(bundleIn_2_bq_io_enq_bits_address),
    .io_enq_bits_data(bundleIn_2_bq_io_enq_bits_data),
    .io_deq_ready(bundleIn_2_bq_io_deq_ready),
    .io_deq_valid(bundleIn_2_bq_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_2_bq_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_2_bq_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_2_bq_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_2_bq_io_deq_bits_source),
    .io_deq_bits_address(bundleIn_2_bq_io_deq_bits_address),
    .io_deq_bits_data(bundleIn_2_bq_io_deq_bits_data)
  );
  Queue_366 bundleOut_2_c_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_2_c_q_clock),
    .reset(bundleOut_2_c_q_reset),
    .io_enq_ready(bundleOut_2_c_q_io_enq_ready),
    .io_enq_valid(bundleOut_2_c_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_2_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_2_c_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_2_c_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_2_c_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_2_c_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(bundleOut_2_c_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleOut_2_c_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_2_c_q_io_deq_ready),
    .io_deq_valid(bundleOut_2_c_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_2_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_2_c_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_2_c_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_2_c_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_2_c_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(bundleOut_2_c_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleOut_2_c_q_io_deq_bits_data)
  );
  Queue_367 bundleOut_2_e_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_2_e_q_clock),
    .reset(bundleOut_2_e_q_reset),
    .io_enq_ready(bundleOut_2_e_q_io_enq_ready),
    .io_enq_valid(bundleOut_2_e_q_io_enq_valid),
    .io_enq_bits_sink(bundleOut_2_e_q_io_enq_bits_sink),
    .io_deq_ready(bundleOut_2_e_q_io_deq_ready),
    .io_deq_valid(bundleOut_2_e_q_io_deq_valid),
    .io_deq_bits_sink(bundleOut_2_e_q_io_deq_bits_sink)
  );
  Queue_363 bundleOut_3_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_3_a_q_clock),
    .reset(bundleOut_3_a_q_reset),
    .io_enq_ready(bundleOut_3_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_3_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_3_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_3_a_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_3_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_3_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_3_a_q_io_enq_bits_address),
    .io_enq_bits_user_preferCache(bundleOut_3_a_q_io_enq_bits_user_preferCache),
    .io_enq_bits_mask(bundleOut_3_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_3_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleOut_3_a_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleOut_3_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_3_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_3_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_3_a_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_3_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_3_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_3_a_q_io_deq_bits_address),
    .io_deq_bits_user_preferCache(bundleOut_3_a_q_io_deq_bits_user_preferCache),
    .io_deq_bits_mask(bundleOut_3_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_3_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleOut_3_a_q_io_deq_bits_corrupt)
  );
  Queue_364 bundleIn_3_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_3_d_q_clock),
    .reset(bundleIn_3_d_q_reset),
    .io_enq_ready(bundleIn_3_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_3_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_3_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_3_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_3_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_3_d_q_io_enq_bits_source),
    .io_enq_bits_sink(bundleIn_3_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(bundleIn_3_d_q_io_enq_bits_denied),
    .io_enq_bits_echo_blockisdirty(bundleIn_3_d_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleIn_3_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_3_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_3_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_3_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_3_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_3_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_3_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_3_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_3_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_3_d_q_io_deq_bits_denied),
    .io_deq_bits_echo_blockisdirty(bundleIn_3_d_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleIn_3_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_3_d_q_io_deq_bits_corrupt)
  );
  Queue_365 bundleIn_3_bq ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_3_bq_clock),
    .reset(bundleIn_3_bq_reset),
    .io_enq_ready(bundleIn_3_bq_io_enq_ready),
    .io_enq_valid(bundleIn_3_bq_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_3_bq_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_3_bq_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_3_bq_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_3_bq_io_enq_bits_source),
    .io_enq_bits_address(bundleIn_3_bq_io_enq_bits_address),
    .io_enq_bits_data(bundleIn_3_bq_io_enq_bits_data),
    .io_deq_ready(bundleIn_3_bq_io_deq_ready),
    .io_deq_valid(bundleIn_3_bq_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_3_bq_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_3_bq_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_3_bq_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_3_bq_io_deq_bits_source),
    .io_deq_bits_address(bundleIn_3_bq_io_deq_bits_address),
    .io_deq_bits_data(bundleIn_3_bq_io_deq_bits_data)
  );
  Queue_366 bundleOut_3_c_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_3_c_q_clock),
    .reset(bundleOut_3_c_q_reset),
    .io_enq_ready(bundleOut_3_c_q_io_enq_ready),
    .io_enq_valid(bundleOut_3_c_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_3_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleOut_3_c_q_io_enq_bits_param),
    .io_enq_bits_size(bundleOut_3_c_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_3_c_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_3_c_q_io_enq_bits_address),
    .io_enq_bits_echo_blockisdirty(bundleOut_3_c_q_io_enq_bits_echo_blockisdirty),
    .io_enq_bits_data(bundleOut_3_c_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_3_c_q_io_deq_ready),
    .io_deq_valid(bundleOut_3_c_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_3_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleOut_3_c_q_io_deq_bits_param),
    .io_deq_bits_size(bundleOut_3_c_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_3_c_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_3_c_q_io_deq_bits_address),
    .io_deq_bits_echo_blockisdirty(bundleOut_3_c_q_io_deq_bits_echo_blockisdirty),
    .io_deq_bits_data(bundleOut_3_c_q_io_deq_bits_data)
  );
  Queue_367 bundleOut_3_e_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_3_e_q_clock),
    .reset(bundleOut_3_e_q_reset),
    .io_enq_ready(bundleOut_3_e_q_io_enq_ready),
    .io_enq_valid(bundleOut_3_e_q_io_enq_valid),
    .io_enq_bits_sink(bundleOut_3_e_q_io_enq_bits_sink),
    .io_deq_ready(bundleOut_3_e_q_io_deq_ready),
    .io_deq_valid(bundleOut_3_e_q_io_deq_valid),
    .io_deq_bits_sink(bundleOut_3_e_q_io_deq_bits_sink)
  );
  assign auto_in_3_a_ready = bundleOut_3_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_3_bvalid = bundleIn_3_bq_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_bopcode = bundleIn_3_bq_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_bparam = bundleIn_3_bq_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_bsize = bundleIn_3_bq_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_bsource = bundleIn_3_bq_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_baddress = bundleIn_3_bq_io_deq_bits_address; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_bdata = bundleIn_3_bq_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_3_c_ready = bundleOut_3_c_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_3_d_valid = bundleIn_3_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_opcode = bundleIn_3_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_param = bundleIn_3_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_size = bundleIn_3_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_source = bundleIn_3_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_sink = bundleIn_3_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_denied = bundleIn_3_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_echo_blockisdirty = bundleIn_3_d_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_data = bundleIn_3_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_d_bits_corrupt = bundleIn_3_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_3_e_ready = bundleOut_3_e_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_2_a_ready = bundleOut_2_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_2_bvalid = bundleIn_2_bq_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_bopcode = bundleIn_2_bq_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_bparam = bundleIn_2_bq_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_bsize = bundleIn_2_bq_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_bsource = bundleIn_2_bq_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_baddress = bundleIn_2_bq_io_deq_bits_address; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_bdata = bundleIn_2_bq_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_2_c_ready = bundleOut_2_c_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_2_d_valid = bundleIn_2_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_opcode = bundleIn_2_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_param = bundleIn_2_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_size = bundleIn_2_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_source = bundleIn_2_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_sink = bundleIn_2_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_denied = bundleIn_2_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_echo_blockisdirty = bundleIn_2_d_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_data = bundleIn_2_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_d_bits_corrupt = bundleIn_2_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_2_e_ready = bundleOut_2_e_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_1_a_ready = bundleOut_1_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_1_bvalid = bundleIn_1_bq_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_bopcode = bundleIn_1_bq_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_bparam = bundleIn_1_bq_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_bsize = bundleIn_1_bq_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_bsource = bundleIn_1_bq_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_baddress = bundleIn_1_bq_io_deq_bits_address; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_bdata = bundleIn_1_bq_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_1_c_ready = bundleOut_1_c_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_1_d_valid = bundleIn_1_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_opcode = bundleIn_1_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_param = bundleIn_1_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_size = bundleIn_1_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_source = bundleIn_1_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_sink = bundleIn_1_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_denied = bundleIn_1_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_echo_blockisdirty = bundleIn_1_d_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_data = bundleIn_1_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_d_bits_corrupt = bundleIn_1_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_1_e_ready = bundleOut_1_e_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_0_a_ready = bundleOut_0_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_0_bvalid = bundleIn_0_bq_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_bopcode = bundleIn_0_bq_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_bparam = bundleIn_0_bq_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_bsize = bundleIn_0_bq_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_bsource = bundleIn_0_bq_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_baddress = bundleIn_0_bq_io_deq_bits_address; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_bdata = bundleIn_0_bq_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 41:15]
  assign auto_in_0_c_ready = bundleOut_0_c_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_0_d_valid = bundleIn_0_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_opcode = bundleIn_0_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_param = bundleIn_0_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_size = bundleIn_0_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_source = bundleIn_0_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_sink = bundleIn_0_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_denied = bundleIn_0_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_echo_blockisdirty = bundleIn_0_d_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_data = bundleIn_0_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_d_bits_corrupt = bundleIn_0_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_0_e_ready = bundleOut_0_e_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_out_3_a_valid = bundleOut_3_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_opcode = bundleOut_3_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_param = bundleOut_3_a_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_size = bundleOut_3_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_source = bundleOut_3_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_address = bundleOut_3_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_user_preferCache = bundleOut_3_a_q_io_deq_bits_user_preferCache; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_mask = bundleOut_3_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_data = bundleOut_3_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_a_bits_corrupt = bundleOut_3_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_3_bready = bundleIn_3_bq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_3_c_valid = bundleOut_3_c_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_opcode = bundleOut_3_c_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_param = bundleOut_3_c_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_size = bundleOut_3_c_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_source = bundleOut_3_c_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_address = bundleOut_3_c_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_echo_blockisdirty = bundleOut_3_c_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_c_bits_data = bundleOut_3_c_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_3_d_ready = bundleIn_3_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_3_e_valid = bundleOut_3_e_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_3_e_bits_sink = bundleOut_3_e_q_io_deq_bits_sink; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_2_a_valid = bundleOut_2_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_opcode = bundleOut_2_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_param = bundleOut_2_a_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_size = bundleOut_2_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_source = bundleOut_2_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_address = bundleOut_2_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_user_preferCache = bundleOut_2_a_q_io_deq_bits_user_preferCache; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_mask = bundleOut_2_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_data = bundleOut_2_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_a_bits_corrupt = bundleOut_2_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_2_bready = bundleIn_2_bq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_2_c_valid = bundleOut_2_c_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_opcode = bundleOut_2_c_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_param = bundleOut_2_c_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_size = bundleOut_2_c_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_source = bundleOut_2_c_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_address = bundleOut_2_c_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_echo_blockisdirty = bundleOut_2_c_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_c_bits_data = bundleOut_2_c_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_2_d_ready = bundleIn_2_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_2_e_valid = bundleOut_2_e_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_2_e_bits_sink = bundleOut_2_e_q_io_deq_bits_sink; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_1_a_valid = bundleOut_1_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_opcode = bundleOut_1_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_param = bundleOut_1_a_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_size = bundleOut_1_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_source = bundleOut_1_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_address = bundleOut_1_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_user_preferCache = bundleOut_1_a_q_io_deq_bits_user_preferCache; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_mask = bundleOut_1_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_data = bundleOut_1_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_a_bits_corrupt = bundleOut_1_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_1_bready = bundleIn_1_bq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_1_c_valid = bundleOut_1_c_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_opcode = bundleOut_1_c_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_param = bundleOut_1_c_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_size = bundleOut_1_c_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_source = bundleOut_1_c_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_address = bundleOut_1_c_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_echo_blockisdirty = bundleOut_1_c_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_c_bits_data = bundleOut_1_c_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_1_d_ready = bundleIn_1_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_1_e_valid = bundleOut_1_e_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_1_e_bits_sink = bundleOut_1_e_q_io_deq_bits_sink; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_0_a_valid = bundleOut_0_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_opcode = bundleOut_0_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_param = bundleOut_0_a_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_size = bundleOut_0_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_source = bundleOut_0_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_address = bundleOut_0_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_user_preferCache = bundleOut_0_a_q_io_deq_bits_user_preferCache; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_mask = bundleOut_0_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_data = bundleOut_0_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_a_bits_corrupt = bundleOut_0_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_0_bready = bundleIn_0_bq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_0_c_valid = bundleOut_0_c_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_opcode = bundleOut_0_c_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_param = bundleOut_0_c_q_io_deq_bits_param; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_size = bundleOut_0_c_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_source = bundleOut_0_c_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_address = bundleOut_0_c_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_echo_blockisdirty = bundleOut_0_c_q_io_deq_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_c_bits_data = bundleOut_0_c_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 42:15]
  assign auto_out_0_d_ready = bundleIn_0_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign auto_out_0_e_valid = bundleOut_0_e_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign auto_out_0_e_bits_sink = bundleOut_0_e_q_io_deq_bits_sink; // @[Nodes.scala 1207:84 Buffer.scala 43:15]
  assign bundleOut_0_a_q_clock = clock;
  assign bundleOut_0_a_q_reset = reset;
  assign bundleOut_0_a_q_io_enq_valid = auto_in_0_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_user_preferCache = auto_in_0_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_data = auto_in_0_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_corrupt = auto_in_0_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_deq_ready = auto_out_0_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_clock = clock;
  assign bundleIn_0_d_q_reset = reset;
  assign bundleIn_0_d_q_io_enq_valid = auto_out_0_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_echo_blockisdirty = auto_out_0_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_data = auto_out_0_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_corrupt = auto_out_0_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_deq_ready = auto_in_0_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_bq_clock = clock;
  assign bundleIn_0_bq_reset = reset;
  assign bundleIn_0_bq_io_enq_valid = auto_out_0_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_opcode = auto_out_0_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_param = auto_out_0_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_size = auto_out_0_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_source = auto_out_0_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_address = auto_out_0_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_enq_bits_data = auto_out_0_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_bq_io_deq_ready = auto_in_0_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_clock = clock;
  assign bundleOut_0_c_q_reset = reset;
  assign bundleOut_0_c_q_io_enq_valid = auto_in_0_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_enq_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_c_q_io_deq_ready = auto_out_0_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_e_q_clock = clock;
  assign bundleOut_0_e_q_reset = reset;
  assign bundleOut_0_e_q_io_enq_valid = auto_in_0_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_e_q_io_enq_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_e_q_io_deq_ready = auto_out_0_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_1_a_q_clock = clock;
  assign bundleOut_1_a_q_reset = reset;
  assign bundleOut_1_a_q_io_enq_valid = auto_in_1_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_user_preferCache = auto_in_1_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_data = auto_in_1_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_enq_bits_corrupt = auto_in_1_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_a_q_io_deq_ready = auto_out_1_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_clock = clock;
  assign bundleIn_1_d_q_reset = reset;
  assign bundleIn_1_d_q_io_enq_valid = auto_out_1_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_echo_blockisdirty = auto_out_1_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_data = auto_out_1_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_enq_bits_corrupt = auto_out_1_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_d_q_io_deq_ready = auto_in_1_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_1_bq_clock = clock;
  assign bundleIn_1_bq_reset = reset;
  assign bundleIn_1_bq_io_enq_valid = auto_out_1_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_opcode = auto_out_1_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_param = auto_out_1_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_size = auto_out_1_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_source = auto_out_1_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_address = auto_out_1_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_enq_bits_data = auto_out_1_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_1_bq_io_deq_ready = auto_in_1_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_clock = clock;
  assign bundleOut_1_c_q_reset = reset;
  assign bundleOut_1_c_q_io_enq_valid = auto_in_1_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_echo_blockisdirty = auto_in_1_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_enq_bits_data = auto_in_1_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_c_q_io_deq_ready = auto_out_1_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_1_e_q_clock = clock;
  assign bundleOut_1_e_q_reset = reset;
  assign bundleOut_1_e_q_io_enq_valid = auto_in_1_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_e_q_io_enq_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_e_q_io_deq_ready = auto_out_1_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_2_a_q_clock = clock;
  assign bundleOut_2_a_q_reset = reset;
  assign bundleOut_2_a_q_io_enq_valid = auto_in_2_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_opcode = auto_in_2_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_param = auto_in_2_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_size = auto_in_2_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_source = auto_in_2_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_address = auto_in_2_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_user_preferCache = auto_in_2_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_mask = auto_in_2_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_data = auto_in_2_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_enq_bits_corrupt = auto_in_2_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_a_q_io_deq_ready = auto_out_2_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_clock = clock;
  assign bundleIn_2_d_q_reset = reset;
  assign bundleIn_2_d_q_io_enq_valid = auto_out_2_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_opcode = auto_out_2_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_param = auto_out_2_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_size = auto_out_2_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_source = auto_out_2_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_sink = auto_out_2_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_denied = auto_out_2_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_echo_blockisdirty = auto_out_2_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_data = auto_out_2_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_enq_bits_corrupt = auto_out_2_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_d_q_io_deq_ready = auto_in_2_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_2_bq_clock = clock;
  assign bundleIn_2_bq_reset = reset;
  assign bundleIn_2_bq_io_enq_valid = auto_out_2_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_opcode = auto_out_2_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_param = auto_out_2_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_size = auto_out_2_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_source = auto_out_2_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_address = auto_out_2_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_enq_bits_data = auto_out_2_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_2_bq_io_deq_ready = auto_in_2_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_clock = clock;
  assign bundleOut_2_c_q_reset = reset;
  assign bundleOut_2_c_q_io_enq_valid = auto_in_2_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_opcode = auto_in_2_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_param = auto_in_2_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_size = auto_in_2_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_source = auto_in_2_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_address = auto_in_2_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_echo_blockisdirty = auto_in_2_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_enq_bits_data = auto_in_2_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_c_q_io_deq_ready = auto_out_2_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_2_e_q_clock = clock;
  assign bundleOut_2_e_q_reset = reset;
  assign bundleOut_2_e_q_io_enq_valid = auto_in_2_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_e_q_io_enq_bits_sink = auto_in_2_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_2_e_q_io_deq_ready = auto_out_2_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_3_a_q_clock = clock;
  assign bundleOut_3_a_q_reset = reset;
  assign bundleOut_3_a_q_io_enq_valid = auto_in_3_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_opcode = auto_in_3_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_param = auto_in_3_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_size = auto_in_3_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_source = auto_in_3_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_address = auto_in_3_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_user_preferCache = auto_in_3_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_mask = auto_in_3_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_data = auto_in_3_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_enq_bits_corrupt = auto_in_3_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_a_q_io_deq_ready = auto_out_3_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_clock = clock;
  assign bundleIn_3_d_q_reset = reset;
  assign bundleIn_3_d_q_io_enq_valid = auto_out_3_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_opcode = auto_out_3_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_param = auto_out_3_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_size = auto_out_3_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_source = auto_out_3_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_sink = auto_out_3_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_denied = auto_out_3_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_echo_blockisdirty = auto_out_3_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_data = auto_out_3_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_enq_bits_corrupt = auto_out_3_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_d_q_io_deq_ready = auto_in_3_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_3_bq_clock = clock;
  assign bundleIn_3_bq_reset = reset;
  assign bundleIn_3_bq_io_enq_valid = auto_out_3_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_opcode = auto_out_3_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_param = auto_out_3_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_size = auto_out_3_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_source = auto_out_3_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_address = auto_out_3_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_enq_bits_data = auto_out_3_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_3_bq_io_deq_ready = auto_in_3_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_clock = clock;
  assign bundleOut_3_c_q_reset = reset;
  assign bundleOut_3_c_q_io_enq_valid = auto_in_3_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_opcode = auto_in_3_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_param = auto_in_3_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_size = auto_in_3_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_source = auto_in_3_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_address = auto_in_3_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_echo_blockisdirty = auto_in_3_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_enq_bits_data = auto_in_3_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_c_q_io_deq_ready = auto_out_3_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_3_e_q_clock = clock;
  assign bundleOut_3_e_q_reset = reset;
  assign bundleOut_3_e_q_io_enq_valid = auto_in_3_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_e_q_io_enq_bits_sink = auto_in_3_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_3_e_q_io_deq_ready = auto_out_3_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule
