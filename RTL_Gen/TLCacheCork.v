module TLCacheCork(
  input          clock,
  input          reset,
  output         auto_in_3_a_ready,
  input          auto_in_3_a_valid,
  input  [2:0]   auto_in_3_a_bits_opcode,
  input  [2:0]   auto_in_3_a_bits_param,
  input  [2:0]   auto_in_3_a_bits_size,
  input  [3:0]   auto_in_3_a_bits_source,
  input  [35:0]  auto_in_3_a_bits_address,
  input  [31:0]  auto_in_3_a_bits_mask,
  input  [255:0] auto_in_3_a_bits_data,
  output         auto_in_3_c_ready,
  input          auto_in_3_c_valid,
  input  [2:0]   auto_in_3_c_bits_opcode,
  input  [2:0]   auto_in_3_c_bits_size,
  input  [3:0]   auto_in_3_c_bits_source,
  input  [35:0]  auto_in_3_c_bits_address,
  input  [255:0] auto_in_3_c_bits_data,
  input          auto_in_3_d_ready,
  output         auto_in_3_d_valid,
  output [2:0]   auto_in_3_d_bits_opcode,
  output [1:0]   auto_in_3_d_bits_param,
  output [2:0]   auto_in_3_d_bits_size,
  output [3:0]   auto_in_3_d_bits_source,
  output [2:0]   auto_in_3_d_bits_sink,
  output         auto_in_3_d_bits_denied,
  output [255:0] auto_in_3_d_bits_data,
  input          auto_in_3_e_valid,
  input  [2:0]   auto_in_3_e_bits_sink,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_param,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [3:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  output         auto_in_2_c_ready,
  input          auto_in_2_c_valid,
  input  [2:0]   auto_in_2_c_bits_opcode,
  input  [2:0]   auto_in_2_c_bits_size,
  input  [3:0]   auto_in_2_c_bits_source,
  input  [35:0]  auto_in_2_c_bits_address,
  input  [255:0] auto_in_2_c_bits_data,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [1:0]   auto_in_2_d_bits_param,
  output [2:0]   auto_in_2_d_bits_size,
  output [3:0]   auto_in_2_d_bits_source,
  output [2:0]   auto_in_2_d_bits_sink,
  output         auto_in_2_d_bits_denied,
  output [255:0] auto_in_2_d_bits_data,
  input          auto_in_2_e_valid,
  input  [2:0]   auto_in_2_e_bits_sink,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [3:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [3:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [3:0]   auto_in_1_d_bits_source,
  output [2:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  input          auto_in_1_e_valid,
  input  [2:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [3:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [3:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [3:0]   auto_in_0_d_bits_source,
  output [2:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output [255:0] auto_in_0_d_bits_data,
  input          auto_in_0_e_valid,
  input  [2:0]   auto_in_0_e_bits_sink,
  input          auto_out_3_a_ready,
  output         auto_out_3_a_valid,
  output [2:0]   auto_out_3_a_bits_opcode,
  output [2:0]   auto_out_3_a_bits_size,
  output [4:0]   auto_out_3_a_bits_source,
  output [35:0]  auto_out_3_a_bits_address,
  output [31:0]  auto_out_3_a_bits_mask,
  output [255:0] auto_out_3_a_bits_data,
  output         auto_out_3_d_ready,
  input          auto_out_3_d_valid,
  input  [2:0]   auto_out_3_d_bits_opcode,
  input  [1:0]   auto_out_3_d_bits_param,
  input  [2:0]   auto_out_3_d_bits_size,
  input  [4:0]   auto_out_3_d_bits_source,
  input          auto_out_3_d_bits_denied,
  input  [255:0] auto_out_3_d_bits_data,
  input          auto_out_2_a_ready,
  output         auto_out_2_a_valid,
  output [2:0]   auto_out_2_a_bits_opcode,
  output [2:0]   auto_out_2_a_bits_size,
  output [4:0]   auto_out_2_a_bits_source,
  output [35:0]  auto_out_2_a_bits_address,
  output [31:0]  auto_out_2_a_bits_mask,
  output [255:0] auto_out_2_a_bits_data,
  output         auto_out_2_d_ready,
  input          auto_out_2_d_valid,
  input  [2:0]   auto_out_2_d_bits_opcode,
  input  [1:0]   auto_out_2_d_bits_param,
  input  [2:0]   auto_out_2_d_bits_size,
  input  [4:0]   auto_out_2_d_bits_source,
  input          auto_out_2_d_bits_denied,
  input  [255:0] auto_out_2_d_bits_data,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_size,
  output [4:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [4:0]   auto_out_1_d_bits_source,
  input          auto_out_1_d_bits_denied,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_size,
  output [4:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [4:0]   auto_out_0_d_bits_source,
  input          auto_out_0_d_bits_denied,
  input  [255:0] auto_out_0_d_bits_data
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
`endif // RANDOMIZE_REG_INIT
  wire  pool_clock; // @[CacheCork.scala 117:26]
  wire  pool_reset; // @[CacheCork.scala 117:26]
  wire  pool_io_free_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_io_free_bits; // @[CacheCork.scala 117:26]
  wire  pool_io_alloc_ready; // @[CacheCork.scala 117:26]
  wire  pool_io_alloc_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_io_alloc_bits; // @[CacheCork.scala 117:26]
  wire  q_clock; // @[Decoupled.scala 361:21]
  wire  q_reset; // @[Decoupled.scala 361:21]
  wire  q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_1_clock; // @[Decoupled.scala 361:21]
  wire  q_1_reset; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_1_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_1_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_1_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_1_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_1_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_1_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  pool_1_clock; // @[CacheCork.scala 117:26]
  wire  pool_1_reset; // @[CacheCork.scala 117:26]
  wire  pool_1_io_free_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_1_io_free_bits; // @[CacheCork.scala 117:26]
  wire  pool_1_io_alloc_ready; // @[CacheCork.scala 117:26]
  wire  pool_1_io_alloc_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_1_io_alloc_bits; // @[CacheCork.scala 117:26]
  wire  q_2_clock; // @[Decoupled.scala 361:21]
  wire  q_2_reset; // @[Decoupled.scala 361:21]
  wire  q_2_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_2_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_2_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_2_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_2_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_2_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_2_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_2_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_2_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_2_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_2_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_2_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_2_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_3_clock; // @[Decoupled.scala 361:21]
  wire  q_3_reset; // @[Decoupled.scala 361:21]
  wire  q_3_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_3_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_3_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_3_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_3_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_3_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_3_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_3_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_3_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_3_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_3_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_3_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_3_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  pool_2_clock; // @[CacheCork.scala 117:26]
  wire  pool_2_reset; // @[CacheCork.scala 117:26]
  wire  pool_2_io_free_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_2_io_free_bits; // @[CacheCork.scala 117:26]
  wire  pool_2_io_alloc_ready; // @[CacheCork.scala 117:26]
  wire  pool_2_io_alloc_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_2_io_alloc_bits; // @[CacheCork.scala 117:26]
  wire  q_4_clock; // @[Decoupled.scala 361:21]
  wire  q_4_reset; // @[Decoupled.scala 361:21]
  wire  q_4_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_4_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_4_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_4_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_4_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_4_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_4_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_4_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_4_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_4_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_4_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_4_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_4_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_5_clock; // @[Decoupled.scala 361:21]
  wire  q_5_reset; // @[Decoupled.scala 361:21]
  wire  q_5_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_5_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_5_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_5_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_5_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_5_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_5_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_5_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_5_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_5_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_5_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_5_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_5_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  pool_3_clock; // @[CacheCork.scala 117:26]
  wire  pool_3_reset; // @[CacheCork.scala 117:26]
  wire  pool_3_io_free_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_3_io_free_bits; // @[CacheCork.scala 117:26]
  wire  pool_3_io_alloc_ready; // @[CacheCork.scala 117:26]
  wire  pool_3_io_alloc_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_3_io_alloc_bits; // @[CacheCork.scala 117:26]
  wire  q_6_clock; // @[Decoupled.scala 361:21]
  wire  q_6_reset; // @[Decoupled.scala 361:21]
  wire  q_6_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_6_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_6_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_6_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_6_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_6_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_6_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_6_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_6_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_6_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_6_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_6_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_6_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_7_clock; // @[Decoupled.scala 361:21]
  wire  q_7_reset; // @[Decoupled.scala 361:21]
  wire  q_7_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_7_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_7_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_7_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_7_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_7_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_7_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_7_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_7_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_7_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_7_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_7_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_7_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  isPut = auto_in_0_a_bits_opcode == 3'h0 | auto_in_0_a_bits_opcode == 3'h1; // @[CacheCork.scala 66:54]
  wire  _toD_T = auto_in_0_a_bits_opcode == 3'h6; // @[CacheCork.scala 67:37]
  wire  _toD_T_3 = auto_in_0_a_bits_opcode == 3'h7; // @[CacheCork.scala 68:37]
  wire  toD = auto_in_0_a_bits_opcode == 3'h6 & auto_in_0_a_bits_param == 3'h2 | _toD_T_3; // @[CacheCork.scala 67:97]
  wire  a_d_ready = q_1_io_enq_ready; // @[CacheCork.scala 65:23 Decoupled.scala 365:17]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  a_a_valid = auto_in_0_a_valid & ~toD; // @[CacheCork.scala 71:33]
  wire  c_a_valid = auto_in_0_c_valid & auto_in_0_c_bits_opcode == 3'h7; // @[CacheCork.scala 92:33]
  wire [1:0] _readys_T = {a_a_valid,c_a_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_3 = _readys_T | _readys_T_1[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_7 = ~_readys_T_5[1:0]; // @[Arbiter.scala 16:61]
  wire  readys__1 = _readys_T_7[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = auto_out_0_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire [4:0] _a_a_bits_source_T = {auto_in_0_a_bits_source, 1'h0}; // @[CacheCork.scala 73:45]
  wire [4:0] _GEN_228 = {{4'd0}, isPut}; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_2 = _a_a_bits_source_T | _GEN_228; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_4 = _a_a_bits_source_T | 5'h1; // @[CacheCork.scala 79:52]
  wire [2:0] a_a_bits_opcode = _toD_T | _toD_T_3 ? 3'h4 : auto_in_0_a_bits_opcode; // @[CacheCork.scala 72:18 76:86 77:27]
  wire [4:0] a_a_bits_source = _toD_T | _toD_T_3 ? _a_a_bits_source_T_4 : _a_a_bits_source_T_2; // @[CacheCork.scala 73:25 76:86 79:27]
  wire [4:0] c_a_bits_a_source = {auto_in_0_c_bits_source, 1'h0}; // @[CacheCork.scala 94:41]
  wire [4:0] _c_a_bits_a_mask_sizeOH_T = {{2'd0}, auto_in_0_c_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] c_a_bits_a_mask_sizeOH_shiftAmount = _c_a_bits_a_mask_sizeOH_T[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _c_a_bits_a_mask_sizeOH_T_1 = 8'h1 << c_a_bits_a_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] c_a_bits_a_mask_sizeOH = _c_a_bits_a_mask_sizeOH_T_1[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _c_a_bits_a_mask_T = auto_in_0_c_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  c_a_bits_a_mask_size = c_a_bits_a_mask_sizeOH[4]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit = auto_in_0_c_bits_address[4]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit = ~c_a_bits_a_mask_bit; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_acc = _c_a_bits_a_mask_T | c_a_bits_a_mask_size & c_a_bits_a_mask_nbit; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_acc_1 = _c_a_bits_a_mask_T | c_a_bits_a_mask_size & c_a_bits_a_mask_bit; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_1 = c_a_bits_a_mask_sizeOH[3]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_1 = auto_in_0_c_bits_address[3]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_1 = ~c_a_bits_a_mask_bit_1; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_2 = c_a_bits_a_mask_nbit & c_a_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_2 = c_a_bits_a_mask_acc | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_2; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_3 = c_a_bits_a_mask_nbit & c_a_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_3 = c_a_bits_a_mask_acc | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_3; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_4 = c_a_bits_a_mask_bit & c_a_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_4 = c_a_bits_a_mask_acc_1 | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_4; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_5 = c_a_bits_a_mask_bit & c_a_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_5 = c_a_bits_a_mask_acc_1 | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_5; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_2 = c_a_bits_a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_2 = auto_in_0_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_2 = ~c_a_bits_a_mask_bit_2; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_6 = c_a_bits_a_mask_eq_2 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_6 = c_a_bits_a_mask_acc_2 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_6; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_7 = c_a_bits_a_mask_eq_2 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_7 = c_a_bits_a_mask_acc_2 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_7; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_8 = c_a_bits_a_mask_eq_3 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_8 = c_a_bits_a_mask_acc_3 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_8; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_9 = c_a_bits_a_mask_eq_3 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_9 = c_a_bits_a_mask_acc_3 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_9; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_10 = c_a_bits_a_mask_eq_4 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_10 = c_a_bits_a_mask_acc_4 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_10; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_11 = c_a_bits_a_mask_eq_4 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_11 = c_a_bits_a_mask_acc_4 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_11; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_12 = c_a_bits_a_mask_eq_5 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_12 = c_a_bits_a_mask_acc_5 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_12; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_13 = c_a_bits_a_mask_eq_5 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_13 = c_a_bits_a_mask_acc_5 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_13; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_3 = c_a_bits_a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_3 = auto_in_0_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_3 = ~c_a_bits_a_mask_bit_3; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_14 = c_a_bits_a_mask_eq_6 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_14 = c_a_bits_a_mask_acc_6 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_14; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_15 = c_a_bits_a_mask_eq_6 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_15 = c_a_bits_a_mask_acc_6 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_15; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_16 = c_a_bits_a_mask_eq_7 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_16 = c_a_bits_a_mask_acc_7 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_16; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_17 = c_a_bits_a_mask_eq_7 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_17 = c_a_bits_a_mask_acc_7 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_17; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_18 = c_a_bits_a_mask_eq_8 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_18 = c_a_bits_a_mask_acc_8 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_18; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_19 = c_a_bits_a_mask_eq_8 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_19 = c_a_bits_a_mask_acc_8 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_19; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_20 = c_a_bits_a_mask_eq_9 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_20 = c_a_bits_a_mask_acc_9 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_20; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_21 = c_a_bits_a_mask_eq_9 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_21 = c_a_bits_a_mask_acc_9 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_21; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_22 = c_a_bits_a_mask_eq_10 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_22 = c_a_bits_a_mask_acc_10 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_22; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_23 = c_a_bits_a_mask_eq_10 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_23 = c_a_bits_a_mask_acc_10 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_23; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_24 = c_a_bits_a_mask_eq_11 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_24 = c_a_bits_a_mask_acc_11 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_24; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_25 = c_a_bits_a_mask_eq_11 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_25 = c_a_bits_a_mask_acc_11 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_25; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_26 = c_a_bits_a_mask_eq_12 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_26 = c_a_bits_a_mask_acc_12 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_26; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_27 = c_a_bits_a_mask_eq_12 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_27 = c_a_bits_a_mask_acc_12 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_27; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_28 = c_a_bits_a_mask_eq_13 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_28 = c_a_bits_a_mask_acc_13 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_28; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_29 = c_a_bits_a_mask_eq_13 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_29 = c_a_bits_a_mask_acc_13 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_29; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_4 = c_a_bits_a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_4 = auto_in_0_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_4 = ~c_a_bits_a_mask_bit_4; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_30 = c_a_bits_a_mask_eq_14 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_30 = c_a_bits_a_mask_acc_14 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_30; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_31 = c_a_bits_a_mask_eq_14 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_31 = c_a_bits_a_mask_acc_14 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_31; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_32 = c_a_bits_a_mask_eq_15 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_32 = c_a_bits_a_mask_acc_15 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_32; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_33 = c_a_bits_a_mask_eq_15 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_33 = c_a_bits_a_mask_acc_15 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_33; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_34 = c_a_bits_a_mask_eq_16 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_34 = c_a_bits_a_mask_acc_16 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_34; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_35 = c_a_bits_a_mask_eq_16 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_35 = c_a_bits_a_mask_acc_16 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_35; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_36 = c_a_bits_a_mask_eq_17 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_36 = c_a_bits_a_mask_acc_17 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_36; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_37 = c_a_bits_a_mask_eq_17 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_37 = c_a_bits_a_mask_acc_17 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_37; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_38 = c_a_bits_a_mask_eq_18 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_38 = c_a_bits_a_mask_acc_18 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_38; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_39 = c_a_bits_a_mask_eq_18 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_39 = c_a_bits_a_mask_acc_18 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_39; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_40 = c_a_bits_a_mask_eq_19 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_40 = c_a_bits_a_mask_acc_19 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_40; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_41 = c_a_bits_a_mask_eq_19 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_41 = c_a_bits_a_mask_acc_19 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_41; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_42 = c_a_bits_a_mask_eq_20 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_42 = c_a_bits_a_mask_acc_20 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_42; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_43 = c_a_bits_a_mask_eq_20 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_43 = c_a_bits_a_mask_acc_20 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_43; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_44 = c_a_bits_a_mask_eq_21 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_44 = c_a_bits_a_mask_acc_21 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_44; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_45 = c_a_bits_a_mask_eq_21 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_45 = c_a_bits_a_mask_acc_21 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_45; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_46 = c_a_bits_a_mask_eq_22 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_46 = c_a_bits_a_mask_acc_22 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_46; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_47 = c_a_bits_a_mask_eq_22 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_47 = c_a_bits_a_mask_acc_22 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_47; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_48 = c_a_bits_a_mask_eq_23 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_48 = c_a_bits_a_mask_acc_23 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_48; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_49 = c_a_bits_a_mask_eq_23 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_49 = c_a_bits_a_mask_acc_23 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_49; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_50 = c_a_bits_a_mask_eq_24 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_50 = c_a_bits_a_mask_acc_24 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_50; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_51 = c_a_bits_a_mask_eq_24 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_51 = c_a_bits_a_mask_acc_24 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_51; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_52 = c_a_bits_a_mask_eq_25 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_52 = c_a_bits_a_mask_acc_25 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_52; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_53 = c_a_bits_a_mask_eq_25 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_53 = c_a_bits_a_mask_acc_25 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_53; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_54 = c_a_bits_a_mask_eq_26 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_54 = c_a_bits_a_mask_acc_26 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_54; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_55 = c_a_bits_a_mask_eq_26 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_55 = c_a_bits_a_mask_acc_26 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_55; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_56 = c_a_bits_a_mask_eq_27 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_56 = c_a_bits_a_mask_acc_27 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_56; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_57 = c_a_bits_a_mask_eq_27 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_57 = c_a_bits_a_mask_acc_27 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_57; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_58 = c_a_bits_a_mask_eq_28 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_58 = c_a_bits_a_mask_acc_28 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_58; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_59 = c_a_bits_a_mask_eq_28 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_59 = c_a_bits_a_mask_acc_28 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_59; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_60 = c_a_bits_a_mask_eq_29 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_60 = c_a_bits_a_mask_acc_29 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_60; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_61 = c_a_bits_a_mask_eq_29 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_61 = c_a_bits_a_mask_acc_29 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_61; // @[Misc.scala 214:29]
  wire [7:0] c_a_bits_a_mask_lo_lo = {c_a_bits_a_mask_acc_37,c_a_bits_a_mask_acc_36,c_a_bits_a_mask_acc_35,
    c_a_bits_a_mask_acc_34,c_a_bits_a_mask_acc_33,c_a_bits_a_mask_acc_32,c_a_bits_a_mask_acc_31,c_a_bits_a_mask_acc_30}; // @[Cat.scala 31:58]
  wire [15:0] c_a_bits_a_mask_lo = {c_a_bits_a_mask_acc_45,c_a_bits_a_mask_acc_44,c_a_bits_a_mask_acc_43,
    c_a_bits_a_mask_acc_42,c_a_bits_a_mask_acc_41,c_a_bits_a_mask_acc_40,c_a_bits_a_mask_acc_39,c_a_bits_a_mask_acc_38,
    c_a_bits_a_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] c_a_bits_a_mask_hi_lo = {c_a_bits_a_mask_acc_53,c_a_bits_a_mask_acc_52,c_a_bits_a_mask_acc_51,
    c_a_bits_a_mask_acc_50,c_a_bits_a_mask_acc_49,c_a_bits_a_mask_acc_48,c_a_bits_a_mask_acc_47,c_a_bits_a_mask_acc_46}; // @[Cat.scala 31:58]
  wire [31:0] c_a_bits_a_mask = {c_a_bits_a_mask_acc_61,c_a_bits_a_mask_acc_60,c_a_bits_a_mask_acc_59,
    c_a_bits_a_mask_acc_58,c_a_bits_a_mask_acc_57,c_a_bits_a_mask_acc_56,c_a_bits_a_mask_acc_55,c_a_bits_a_mask_acc_54,
    c_a_bits_a_mask_hi_lo,c_a_bits_a_mask_lo}; // @[Cat.scala 31:58]
  wire  _c_d_valid_T = auto_in_0_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:53]
  wire  c_d_ready = q_io_enq_ready; // @[CacheCork.scala 102:23 Decoupled.scala 365:17]
  wire  readys__0 = _readys_T_7[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  out_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  d_first_counter; // @[Edges.scala 228:27]
  wire  d_first = ~d_first_counter; // @[Edges.scala 230:25]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  out_5_earlyValid = q_1_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_4_earlyValid = q_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T_10 = {out_5_earlyValid,out_4_earlyValid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_11 = {_readys_T_10, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_13 = _readys_T_10 | _readys_T_11[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_14 = {_readys_T_13, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_16 = _readys_T_13 | _readys_T_14[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_18 = {_readys_T_16, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_20 = ~_readys_T_18[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_1_0 = _readys_T_20[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_0 = readys_1_0 & auto_out_0_d_valid; // @[Arbiter.scala 97:79]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire [2:0] _GEN_54 = auto_out_0_d_bits_opcode == 3'h1 & auto_out_0_d_bits_source[0] ? 3'h5 : auto_out_0_d_bits_opcode; // @[CacheCork.scala 132:13 152:76 153:27]
  wire [2:0] d_d_bits_opcode = auto_out_0_d_bits_opcode == 3'h0 & ~auto_out_0_d_bits_source[0] ? 3'h6 : _GEN_54; // @[CacheCork.scala 156:73 157:27]
  wire [2:0] _T_141 = muxStateEarly_1_0 ? d_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  readys_1_1 = _readys_T_20[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_1 = readys_1_1 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire [2:0] out_4_bits_opcode = q_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_142 = muxStateEarly_1_1 ? out_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_144 = _T_141 | _T_142; // @[Mux.scala 27:73]
  wire  readys_1_2 = _readys_T_20[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_2 = readys_1_2 & out_5_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_1_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 117:30]
  wire [2:0] out_5_bits_opcode = q_1_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_143 = muxStateEarly_1_2 ? out_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_1_bits_opcode = _T_144 | _T_143; // @[Mux.scala 27:73]
  wire  d_grant = sink_ACancel_1_bits_opcode == 3'h5 | sink_ACancel_1_bits_opcode == 3'h4; // @[CacheCork.scala 123:54]
  wire  _in_d_ready_T_3 = pool_io_alloc_valid | ~d_first | ~d_grant; // @[CacheCork.scala 126:70]
  wire  in_d_ready = auto_in_0_d_ready & (pool_io_alloc_valid | ~d_first | ~d_grant); // @[CacheCork.scala 126:34]
  wire  _sink_ACancel_earlyValid_T_11 = state_1_0 & auto_out_0_d_valid | state_1_1 & out_4_earlyValid | state_1_2 &
    out_5_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_1_earlyValid = idle_1 ? auto_out_0_d_valid | out_4_earlyValid | out_5_earlyValid :
    _sink_ACancel_earlyValid_T_11; // @[Arbiter.scala 125:29]
  wire  _d_first_T = in_d_ready & sink_ACancel_1_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _T_131 = muxStateEarly_1_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_size = q_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_132 = muxStateEarly_1_1 ? out_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_134 = _T_131 | _T_132; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_size = q_1_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_133 = muxStateEarly_1_2 ? out_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_1_bits_size = _T_134 | _T_133; // @[Mux.scala 27:73]
  wire [12:0] _d_first_beats1_decode_T_1 = 13'h3f << sink_ACancel_1_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_3 = ~_d_first_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode = _d_first_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata = sink_ACancel_1_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1 = d_first_beats1_opdata & d_first_beats1_decode; // @[Edges.scala 220:14]
  wire  d_first_counter1 = d_first_counter - 1'h1; // @[Edges.scala 229:28]
  wire  bundleIn_0_d_valid = sink_ACancel_1_earlyValid & _in_d_ready_T_3; // @[CacheCork.scala 125:34]
  wire  _pool_io_alloc_ready_T = auto_in_0_d_ready & bundleIn_0_d_valid; // @[Decoupled.scala 50:35]
  reg [2:0] bundleIn_0_d_bits_sink_r; // @[Reg.scala 16:16]
  wire [3:0] d_d_bits_source = auto_out_0_d_bits_source[4:1]; // @[CacheCork.scala 133:46]
  wire [1:0] d_d_bits_param = auto_out_0_d_bits_opcode == 3'h1 & auto_out_0_d_bits_source[0] ? 2'h0 :
    auto_out_0_d_bits_param; // @[CacheCork.scala 132:13 152:76 154:26]
  wire [12:0] _decode_T_1 = 13'h3f << auto_in_0_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_3 = ~_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  decode = _decode_T_3[5]; // @[Edges.scala 219:59]
  wire [12:0] _decode_T_5 = 13'h3f << auto_in_0_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_7 = ~_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  decode_1 = _decode_T_7[5]; // @[Edges.scala 219:59]
  wire  opdata_1 = ~a_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_24 = opdata_1 & decode_1; // @[Edges.scala 220:14]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner__0 = readys__0 & c_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & a_a_valid; // @[Arbiter.scala 97:79]
  wire  _T_35 = c_a_valid | a_a_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & decode; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & _T_24; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state__0 & c_a_valid | state__1 & a_a_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_35 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_52 = muxStateEarly__0 ? auto_in_0_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_53 = muxStateEarly__1 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_55 = muxStateEarly__0 ? c_a_bits_a_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_56 = muxStateEarly__1 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_58 = muxStateEarly__0 ? auto_in_0_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_59 = muxStateEarly__1 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_61 = muxStateEarly__0 ? c_a_bits_a_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_62 = muxStateEarly__1 ? a_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_64 = muxStateEarly__0 ? auto_in_0_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_65 = muxStateEarly__1 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [12:0] _decode_T_9 = 13'h3f << auto_out_0_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_11 = ~_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  decode_2 = _decode_T_11[5]; // @[Edges.scala 219:59]
  wire  opdata_2 = d_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_73 = opdata_2 & decode_2; // @[Edges.scala 220:14]
  wire  latch_1 = idle_1 & in_d_ready; // @[Arbiter.scala 89:24]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & _T_73; // @[Arbiter.scala 111:73]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 121:24]
  wire [255:0] _T_111 = muxStateEarly_1_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_4_bits_data = q_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_112 = muxStateEarly_1_1 ? out_4_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_5_bits_data = q_1_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_113 = muxStateEarly_1_2 ? out_5_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_114 = _T_111 | _T_112; // @[Mux.scala 27:73]
  wire  out_4_bits_denied = q_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_5_bits_denied = q_1_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_126 = muxStateEarly_1_0 ? d_d_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_4_bits_source = q_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_127 = muxStateEarly_1_1 ? out_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_5_bits_source = q_1_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_128 = muxStateEarly_1_2 ? out_5_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_129 = _T_126 | _T_127; // @[Mux.scala 27:73]
  wire [1:0] _T_136 = muxStateEarly_1_0 ? d_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_4_bits_param = q_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_137 = muxStateEarly_1_1 ? out_4_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_5_bits_param = q_1_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_138 = muxStateEarly_1_2 ? out_5_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_139 = _T_136 | _T_137; // @[Mux.scala 27:73]
  wire  isPut_1 = auto_in_1_a_bits_opcode == 3'h0 | auto_in_1_a_bits_opcode == 3'h1; // @[CacheCork.scala 66:54]
  wire  _toD_T_4 = auto_in_1_a_bits_opcode == 3'h6; // @[CacheCork.scala 67:37]
  wire  _toD_T_7 = auto_in_1_a_bits_opcode == 3'h7; // @[CacheCork.scala 68:37]
  wire  toD_1 = auto_in_1_a_bits_opcode == 3'h6 & auto_in_1_a_bits_param == 3'h2 | _toD_T_7; // @[CacheCork.scala 67:97]
  wire  a_d_1_ready = q_3_io_enq_ready; // @[CacheCork.scala 65:23 Decoupled.scala 365:17]
  reg  beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = ~beatsLeft_2; // @[Arbiter.scala 88:28]
  wire  a_a_1_valid = auto_in_1_a_valid & ~toD_1; // @[CacheCork.scala 71:33]
  wire  c_a_1_valid = auto_in_1_c_valid & auto_in_1_c_bits_opcode == 3'h7; // @[CacheCork.scala 92:33]
  wire [1:0] _readys_T_24 = {a_a_1_valid,c_a_1_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_25 = {_readys_T_24, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_27 = _readys_T_24 | _readys_T_25[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_29 = {_readys_T_27, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_31 = ~_readys_T_29[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_2_1 = _readys_T_31[1]; // @[Arbiter.scala 95:86]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  out_8_ready = auto_out_1_a_ready & allowed_2_1; // @[Arbiter.scala 123:31]
  wire [4:0] _a_a_bits_source_T_5 = {auto_in_1_a_bits_source, 1'h0}; // @[CacheCork.scala 73:45]
  wire [4:0] _GEN_229 = {{4'd0}, isPut_1}; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_7 = _a_a_bits_source_T_5 | _GEN_229; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_9 = _a_a_bits_source_T_5 | 5'h1; // @[CacheCork.scala 79:52]
  wire [2:0] a_a_1_bits_opcode = _toD_T_4 | _toD_T_7 ? 3'h4 : auto_in_1_a_bits_opcode; // @[CacheCork.scala 72:18 76:86 77:27]
  wire [4:0] a_a_1_bits_source = _toD_T_4 | _toD_T_7 ? _a_a_bits_source_T_9 : _a_a_bits_source_T_7; // @[CacheCork.scala 73:25 76:86 79:27]
  wire [4:0] c_a_bits_a_1_source = {auto_in_1_c_bits_source, 1'h0}; // @[CacheCork.scala 94:41]
  wire [4:0] _c_a_bits_a_mask_sizeOH_T_3 = {{2'd0}, auto_in_1_c_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] c_a_bits_a_mask_sizeOH_shiftAmount_1 = _c_a_bits_a_mask_sizeOH_T_3[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _c_a_bits_a_mask_sizeOH_T_4 = 8'h1 << c_a_bits_a_mask_sizeOH_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [4:0] c_a_bits_a_mask_sizeOH_1 = _c_a_bits_a_mask_sizeOH_T_4[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _c_a_bits_a_mask_T_2 = auto_in_1_c_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  c_a_bits_a_mask_size_5 = c_a_bits_a_mask_sizeOH_1[4]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_5 = auto_in_1_c_bits_address[4]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_5 = ~c_a_bits_a_mask_bit_5; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_acc_62 = _c_a_bits_a_mask_T_2 | c_a_bits_a_mask_size_5 & c_a_bits_a_mask_nbit_5; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_acc_63 = _c_a_bits_a_mask_T_2 | c_a_bits_a_mask_size_5 & c_a_bits_a_mask_bit_5; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_6 = c_a_bits_a_mask_sizeOH_1[3]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_6 = auto_in_1_c_bits_address[3]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_6 = ~c_a_bits_a_mask_bit_6; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_64 = c_a_bits_a_mask_nbit_5 & c_a_bits_a_mask_nbit_6; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_64 = c_a_bits_a_mask_acc_62 | c_a_bits_a_mask_size_6 & c_a_bits_a_mask_eq_64; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_65 = c_a_bits_a_mask_nbit_5 & c_a_bits_a_mask_bit_6; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_65 = c_a_bits_a_mask_acc_62 | c_a_bits_a_mask_size_6 & c_a_bits_a_mask_eq_65; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_66 = c_a_bits_a_mask_bit_5 & c_a_bits_a_mask_nbit_6; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_66 = c_a_bits_a_mask_acc_63 | c_a_bits_a_mask_size_6 & c_a_bits_a_mask_eq_66; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_67 = c_a_bits_a_mask_bit_5 & c_a_bits_a_mask_bit_6; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_67 = c_a_bits_a_mask_acc_63 | c_a_bits_a_mask_size_6 & c_a_bits_a_mask_eq_67; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_7 = c_a_bits_a_mask_sizeOH_1[2]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_7 = auto_in_1_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_7 = ~c_a_bits_a_mask_bit_7; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_68 = c_a_bits_a_mask_eq_64 & c_a_bits_a_mask_nbit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_68 = c_a_bits_a_mask_acc_64 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_68; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_69 = c_a_bits_a_mask_eq_64 & c_a_bits_a_mask_bit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_69 = c_a_bits_a_mask_acc_64 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_69; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_70 = c_a_bits_a_mask_eq_65 & c_a_bits_a_mask_nbit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_70 = c_a_bits_a_mask_acc_65 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_70; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_71 = c_a_bits_a_mask_eq_65 & c_a_bits_a_mask_bit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_71 = c_a_bits_a_mask_acc_65 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_71; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_72 = c_a_bits_a_mask_eq_66 & c_a_bits_a_mask_nbit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_72 = c_a_bits_a_mask_acc_66 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_72; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_73 = c_a_bits_a_mask_eq_66 & c_a_bits_a_mask_bit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_73 = c_a_bits_a_mask_acc_66 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_73; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_74 = c_a_bits_a_mask_eq_67 & c_a_bits_a_mask_nbit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_74 = c_a_bits_a_mask_acc_67 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_74; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_75 = c_a_bits_a_mask_eq_67 & c_a_bits_a_mask_bit_7; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_75 = c_a_bits_a_mask_acc_67 | c_a_bits_a_mask_size_7 & c_a_bits_a_mask_eq_75; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_8 = c_a_bits_a_mask_sizeOH_1[1]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_8 = auto_in_1_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_8 = ~c_a_bits_a_mask_bit_8; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_76 = c_a_bits_a_mask_eq_68 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_76 = c_a_bits_a_mask_acc_68 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_76; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_77 = c_a_bits_a_mask_eq_68 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_77 = c_a_bits_a_mask_acc_68 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_77; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_78 = c_a_bits_a_mask_eq_69 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_78 = c_a_bits_a_mask_acc_69 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_78; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_79 = c_a_bits_a_mask_eq_69 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_79 = c_a_bits_a_mask_acc_69 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_79; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_80 = c_a_bits_a_mask_eq_70 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_80 = c_a_bits_a_mask_acc_70 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_80; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_81 = c_a_bits_a_mask_eq_70 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_81 = c_a_bits_a_mask_acc_70 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_81; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_82 = c_a_bits_a_mask_eq_71 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_82 = c_a_bits_a_mask_acc_71 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_82; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_83 = c_a_bits_a_mask_eq_71 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_83 = c_a_bits_a_mask_acc_71 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_83; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_84 = c_a_bits_a_mask_eq_72 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_84 = c_a_bits_a_mask_acc_72 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_84; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_85 = c_a_bits_a_mask_eq_72 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_85 = c_a_bits_a_mask_acc_72 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_85; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_86 = c_a_bits_a_mask_eq_73 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_86 = c_a_bits_a_mask_acc_73 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_86; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_87 = c_a_bits_a_mask_eq_73 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_87 = c_a_bits_a_mask_acc_73 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_87; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_88 = c_a_bits_a_mask_eq_74 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_88 = c_a_bits_a_mask_acc_74 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_88; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_89 = c_a_bits_a_mask_eq_74 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_89 = c_a_bits_a_mask_acc_74 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_89; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_90 = c_a_bits_a_mask_eq_75 & c_a_bits_a_mask_nbit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_90 = c_a_bits_a_mask_acc_75 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_90; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_91 = c_a_bits_a_mask_eq_75 & c_a_bits_a_mask_bit_8; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_91 = c_a_bits_a_mask_acc_75 | c_a_bits_a_mask_size_8 & c_a_bits_a_mask_eq_91; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_9 = c_a_bits_a_mask_sizeOH_1[0]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_9 = auto_in_1_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_9 = ~c_a_bits_a_mask_bit_9; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_92 = c_a_bits_a_mask_eq_76 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_92 = c_a_bits_a_mask_acc_76 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_92; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_93 = c_a_bits_a_mask_eq_76 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_93 = c_a_bits_a_mask_acc_76 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_93; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_94 = c_a_bits_a_mask_eq_77 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_94 = c_a_bits_a_mask_acc_77 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_94; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_95 = c_a_bits_a_mask_eq_77 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_95 = c_a_bits_a_mask_acc_77 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_95; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_96 = c_a_bits_a_mask_eq_78 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_96 = c_a_bits_a_mask_acc_78 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_96; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_97 = c_a_bits_a_mask_eq_78 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_97 = c_a_bits_a_mask_acc_78 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_97; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_98 = c_a_bits_a_mask_eq_79 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_98 = c_a_bits_a_mask_acc_79 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_98; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_99 = c_a_bits_a_mask_eq_79 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_99 = c_a_bits_a_mask_acc_79 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_99; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_100 = c_a_bits_a_mask_eq_80 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_100 = c_a_bits_a_mask_acc_80 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_100; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_101 = c_a_bits_a_mask_eq_80 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_101 = c_a_bits_a_mask_acc_80 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_101; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_102 = c_a_bits_a_mask_eq_81 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_102 = c_a_bits_a_mask_acc_81 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_102; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_103 = c_a_bits_a_mask_eq_81 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_103 = c_a_bits_a_mask_acc_81 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_103; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_104 = c_a_bits_a_mask_eq_82 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_104 = c_a_bits_a_mask_acc_82 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_104; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_105 = c_a_bits_a_mask_eq_82 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_105 = c_a_bits_a_mask_acc_82 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_105; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_106 = c_a_bits_a_mask_eq_83 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_106 = c_a_bits_a_mask_acc_83 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_106; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_107 = c_a_bits_a_mask_eq_83 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_107 = c_a_bits_a_mask_acc_83 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_107; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_108 = c_a_bits_a_mask_eq_84 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_108 = c_a_bits_a_mask_acc_84 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_108; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_109 = c_a_bits_a_mask_eq_84 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_109 = c_a_bits_a_mask_acc_84 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_109; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_110 = c_a_bits_a_mask_eq_85 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_110 = c_a_bits_a_mask_acc_85 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_110; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_111 = c_a_bits_a_mask_eq_85 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_111 = c_a_bits_a_mask_acc_85 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_111; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_112 = c_a_bits_a_mask_eq_86 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_112 = c_a_bits_a_mask_acc_86 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_112; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_113 = c_a_bits_a_mask_eq_86 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_113 = c_a_bits_a_mask_acc_86 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_113; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_114 = c_a_bits_a_mask_eq_87 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_114 = c_a_bits_a_mask_acc_87 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_114; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_115 = c_a_bits_a_mask_eq_87 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_115 = c_a_bits_a_mask_acc_87 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_115; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_116 = c_a_bits_a_mask_eq_88 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_116 = c_a_bits_a_mask_acc_88 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_116; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_117 = c_a_bits_a_mask_eq_88 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_117 = c_a_bits_a_mask_acc_88 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_117; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_118 = c_a_bits_a_mask_eq_89 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_118 = c_a_bits_a_mask_acc_89 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_118; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_119 = c_a_bits_a_mask_eq_89 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_119 = c_a_bits_a_mask_acc_89 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_119; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_120 = c_a_bits_a_mask_eq_90 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_120 = c_a_bits_a_mask_acc_90 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_120; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_121 = c_a_bits_a_mask_eq_90 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_121 = c_a_bits_a_mask_acc_90 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_121; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_122 = c_a_bits_a_mask_eq_91 & c_a_bits_a_mask_nbit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_122 = c_a_bits_a_mask_acc_91 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_122; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_123 = c_a_bits_a_mask_eq_91 & c_a_bits_a_mask_bit_9; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_123 = c_a_bits_a_mask_acc_91 | c_a_bits_a_mask_size_9 & c_a_bits_a_mask_eq_123; // @[Misc.scala 214:29]
  wire [7:0] c_a_bits_a_mask_lo_lo_1 = {c_a_bits_a_mask_acc_99,c_a_bits_a_mask_acc_98,c_a_bits_a_mask_acc_97,
    c_a_bits_a_mask_acc_96,c_a_bits_a_mask_acc_95,c_a_bits_a_mask_acc_94,c_a_bits_a_mask_acc_93,c_a_bits_a_mask_acc_92}; // @[Cat.scala 31:58]
  wire [15:0] c_a_bits_a_mask_lo_1 = {c_a_bits_a_mask_acc_107,c_a_bits_a_mask_acc_106,c_a_bits_a_mask_acc_105,
    c_a_bits_a_mask_acc_104,c_a_bits_a_mask_acc_103,c_a_bits_a_mask_acc_102,c_a_bits_a_mask_acc_101,
    c_a_bits_a_mask_acc_100,c_a_bits_a_mask_lo_lo_1}; // @[Cat.scala 31:58]
  wire [7:0] c_a_bits_a_mask_hi_lo_1 = {c_a_bits_a_mask_acc_115,c_a_bits_a_mask_acc_114,c_a_bits_a_mask_acc_113,
    c_a_bits_a_mask_acc_112,c_a_bits_a_mask_acc_111,c_a_bits_a_mask_acc_110,c_a_bits_a_mask_acc_109,
    c_a_bits_a_mask_acc_108}; // @[Cat.scala 31:58]
  wire [31:0] c_a_bits_a_1_mask = {c_a_bits_a_mask_acc_123,c_a_bits_a_mask_acc_122,c_a_bits_a_mask_acc_121,
    c_a_bits_a_mask_acc_120,c_a_bits_a_mask_acc_119,c_a_bits_a_mask_acc_118,c_a_bits_a_mask_acc_117,
    c_a_bits_a_mask_acc_116,c_a_bits_a_mask_hi_lo_1,c_a_bits_a_mask_lo_1}; // @[Cat.scala 31:58]
  wire  _c_d_valid_T_2 = auto_in_1_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:53]
  wire  c_d_1_ready = q_2_io_enq_ready; // @[CacheCork.scala 102:23 Decoupled.scala 365:17]
  wire  readys_2_0 = _readys_T_31[0]; // @[Arbiter.scala 95:86]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  out_7_ready = auto_out_1_a_ready & allowed_2_0; // @[Arbiter.scala 123:31]
  reg  d_first_counter_1; // @[Edges.scala 228:27]
  wire  d_first_1 = ~d_first_counter_1; // @[Edges.scala 230:25]
  reg  beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = ~beatsLeft_3; // @[Arbiter.scala 88:28]
  wire  out_12_earlyValid = q_3_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_11_earlyValid = q_2_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T_34 = {out_12_earlyValid,out_11_earlyValid,auto_out_1_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_35 = {_readys_T_34, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_37 = _readys_T_34 | _readys_T_35[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_38 = {_readys_T_37, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_40 = _readys_T_37 | _readys_T_38[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_42 = {_readys_T_40, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_44 = ~_readys_T_42[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_3_0 = _readys_T_44[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3_0 = readys_3_0 & auto_out_1_d_valid; // @[Arbiter.scala 97:79]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire [2:0] _GEN_111 = auto_out_1_d_bits_opcode == 3'h1 & auto_out_1_d_bits_source[0] ? 3'h5 : auto_out_1_d_bits_opcode
    ; // @[CacheCork.scala 132:13 152:76 153:27]
  wire [2:0] d_d_1_bits_opcode = auto_out_1_d_bits_opcode == 3'h0 & ~auto_out_1_d_bits_source[0] ? 3'h6 : _GEN_111; // @[CacheCork.scala 156:73 157:27]
  wire [2:0] _T_287 = muxStateEarly_3_0 ? d_d_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  readys_3_1 = _readys_T_44[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3_1 = readys_3_1 & out_11_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire [2:0] out_11_bits_opcode = q_2_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_288 = muxStateEarly_3_1 ? out_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_290 = _T_287 | _T_288; // @[Mux.scala 27:73]
  wire  readys_3_2 = _readys_T_44[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3_2 = readys_3_2 & out_12_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_3_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3_2 = idle_3 ? earlyWinner_3_2 : state_3_2; // @[Arbiter.scala 117:30]
  wire [2:0] out_12_bits_opcode = q_3_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_289 = muxStateEarly_3_2 ? out_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_3_bits_opcode = _T_290 | _T_289; // @[Mux.scala 27:73]
  wire  d_grant_1 = sink_ACancel_3_bits_opcode == 3'h5 | sink_ACancel_3_bits_opcode == 3'h4; // @[CacheCork.scala 123:54]
  wire  _in_d_ready_T_8 = pool_1_io_alloc_valid | ~d_first_1 | ~d_grant_1; // @[CacheCork.scala 126:70]
  wire  in_d_1_ready = auto_in_1_d_ready & (pool_1_io_alloc_valid | ~d_first_1 | ~d_grant_1); // @[CacheCork.scala 126:34]
  wire  _sink_ACancel_earlyValid_T_24 = state_3_0 & auto_out_1_d_valid | state_3_1 & out_11_earlyValid | state_3_2 &
    out_12_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_3_earlyValid = idle_3 ? auto_out_1_d_valid | out_11_earlyValid | out_12_earlyValid :
    _sink_ACancel_earlyValid_T_24; // @[Arbiter.scala 125:29]
  wire  _d_first_T_1 = in_d_1_ready & sink_ACancel_3_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _T_277 = muxStateEarly_3_0 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_11_bits_size = q_2_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_278 = muxStateEarly_3_1 ? out_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_280 = _T_277 | _T_278; // @[Mux.scala 27:73]
  wire [2:0] out_12_bits_size = q_3_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_279 = muxStateEarly_3_2 ? out_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_3_bits_size = _T_280 | _T_279; // @[Mux.scala 27:73]
  wire [12:0] _d_first_beats1_decode_T_5 = 13'h3f << sink_ACancel_3_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_7 = ~_d_first_beats1_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode_1 = _d_first_beats1_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata_1 = sink_ACancel_3_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1_1 = d_first_beats1_opdata_1 & d_first_beats1_decode_1; // @[Edges.scala 220:14]
  wire  d_first_counter1_1 = d_first_counter_1 - 1'h1; // @[Edges.scala 229:28]
  wire  bundleIn_1_d_valid = sink_ACancel_3_earlyValid & _in_d_ready_T_8; // @[CacheCork.scala 125:34]
  wire  _pool_io_alloc_ready_T_3 = auto_in_1_d_ready & bundleIn_1_d_valid; // @[Decoupled.scala 50:35]
  reg [2:0] bundleIn_1_d_bits_sink_r; // @[Reg.scala 16:16]
  wire [3:0] d_d_1_bits_source = auto_out_1_d_bits_source[4:1]; // @[CacheCork.scala 133:46]
  wire [1:0] d_d_1_bits_param = auto_out_1_d_bits_opcode == 3'h1 & auto_out_1_d_bits_source[0] ? 2'h0 :
    auto_out_1_d_bits_param; // @[CacheCork.scala 132:13 152:76 154:26]
  wire [12:0] _decode_T_13 = 13'h3f << auto_in_1_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_15 = ~_decode_T_13[5:0]; // @[package.scala 234:46]
  wire  decode_3 = _decode_T_15[5]; // @[Edges.scala 219:59]
  wire [12:0] _decode_T_17 = 13'h3f << auto_in_1_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_19 = ~_decode_T_17[5:0]; // @[package.scala 234:46]
  wire  decode_4 = _decode_T_19[5]; // @[Edges.scala 219:59]
  wire  opdata_4 = ~a_a_1_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_170 = opdata_4 & decode_4; // @[Edges.scala 220:14]
  wire  latch_2 = idle_2 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_2_0 = readys_2_0 & c_a_1_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2_1 = readys_2_1 & a_a_1_valid; // @[Arbiter.scala 97:79]
  wire  _T_181 = c_a_1_valid | a_a_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_2 = earlyWinner_2_0 & decode_3; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_2 = earlyWinner_2_1 & _T_170; // @[Arbiter.scala 111:73]
  wire  initBeats_2 = maskedBeats_0_2 | maskedBeats_1_2; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_16 = state_2_0 & c_a_1_valid | state_2_1 & a_a_1_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_2_earlyValid = idle_2 ? _T_181 : _sink_ACancel_earlyValid_T_16; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_14 = auto_out_1_a_ready & sink_ACancel_2_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_198 = muxStateEarly_2_0 ? auto_in_1_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_199 = muxStateEarly_2_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_201 = muxStateEarly_2_0 ? c_a_bits_a_1_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_202 = muxStateEarly_2_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_204 = muxStateEarly_2_0 ? auto_in_1_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_205 = muxStateEarly_2_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_207 = muxStateEarly_2_0 ? c_a_bits_a_1_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_208 = muxStateEarly_2_1 ? a_a_1_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_210 = muxStateEarly_2_0 ? auto_in_1_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_211 = muxStateEarly_2_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [12:0] _decode_T_21 = 13'h3f << auto_out_1_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_23 = ~_decode_T_21[5:0]; // @[package.scala 234:46]
  wire  decode_5 = _decode_T_23[5]; // @[Edges.scala 219:59]
  wire  opdata_5 = d_d_1_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_219 = opdata_5 & decode_5; // @[Edges.scala 220:14]
  wire  latch_3 = idle_3 & in_d_1_ready; // @[Arbiter.scala 89:24]
  wire  maskedBeats_0_3 = earlyWinner_3_0 & _T_219; // @[Arbiter.scala 111:73]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  allowed_3_2 = idle_3 ? readys_3_2 : state_3_2; // @[Arbiter.scala 121:24]
  wire [255:0] _T_257 = muxStateEarly_3_0 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_11_bits_data = q_2_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_258 = muxStateEarly_3_1 ? out_11_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_12_bits_data = q_3_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_259 = muxStateEarly_3_2 ? out_12_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_260 = _T_257 | _T_258; // @[Mux.scala 27:73]
  wire  out_11_bits_denied = q_2_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_12_bits_denied = q_3_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_272 = muxStateEarly_3_0 ? d_d_1_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_11_bits_source = q_2_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_273 = muxStateEarly_3_1 ? out_11_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_12_bits_source = q_3_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_274 = muxStateEarly_3_2 ? out_12_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_275 = _T_272 | _T_273; // @[Mux.scala 27:73]
  wire [1:0] _T_282 = muxStateEarly_3_0 ? d_d_1_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_11_bits_param = q_2_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_283 = muxStateEarly_3_1 ? out_11_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_12_bits_param = q_3_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_284 = muxStateEarly_3_2 ? out_12_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_285 = _T_282 | _T_283; // @[Mux.scala 27:73]
  wire  isPut_2 = auto_in_2_a_bits_opcode == 3'h0 | auto_in_2_a_bits_opcode == 3'h1; // @[CacheCork.scala 66:54]
  wire  _toD_T_8 = auto_in_2_a_bits_opcode == 3'h6; // @[CacheCork.scala 67:37]
  wire  _toD_T_11 = auto_in_2_a_bits_opcode == 3'h7; // @[CacheCork.scala 68:37]
  wire  toD_2 = auto_in_2_a_bits_opcode == 3'h6 & auto_in_2_a_bits_param == 3'h2 | _toD_T_11; // @[CacheCork.scala 67:97]
  wire  a_d_2_ready = q_5_io_enq_ready; // @[CacheCork.scala 65:23 Decoupled.scala 365:17]
  reg  beatsLeft_4; // @[Arbiter.scala 87:30]
  wire  idle_4 = ~beatsLeft_4; // @[Arbiter.scala 88:28]
  wire  a_a_2_valid = auto_in_2_a_valid & ~toD_2; // @[CacheCork.scala 71:33]
  wire  c_a_2_valid = auto_in_2_c_valid & auto_in_2_c_bits_opcode == 3'h7; // @[CacheCork.scala 92:33]
  wire [1:0] _readys_T_48 = {a_a_2_valid,c_a_2_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_49 = {_readys_T_48, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_51 = _readys_T_48 | _readys_T_49[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_53 = {_readys_T_51, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_55 = ~_readys_T_53[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_4_1 = _readys_T_55[1]; // @[Arbiter.scala 95:86]
  reg  state_4_1; // @[Arbiter.scala 116:26]
  wire  allowed_4_1 = idle_4 ? readys_4_1 : state_4_1; // @[Arbiter.scala 121:24]
  wire  out_15_ready = auto_out_2_a_ready & allowed_4_1; // @[Arbiter.scala 123:31]
  wire [4:0] _a_a_bits_source_T_10 = {auto_in_2_a_bits_source, 1'h0}; // @[CacheCork.scala 73:45]
  wire [4:0] _GEN_230 = {{4'd0}, isPut_2}; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_12 = _a_a_bits_source_T_10 | _GEN_230; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_14 = _a_a_bits_source_T_10 | 5'h1; // @[CacheCork.scala 79:52]
  wire [2:0] a_a_2_bits_opcode = _toD_T_8 | _toD_T_11 ? 3'h4 : auto_in_2_a_bits_opcode; // @[CacheCork.scala 72:18 76:86 77:27]
  wire [4:0] a_a_2_bits_source = _toD_T_8 | _toD_T_11 ? _a_a_bits_source_T_14 : _a_a_bits_source_T_12; // @[CacheCork.scala 73:25 76:86 79:27]
  wire [4:0] c_a_bits_a_2_source = {auto_in_2_c_bits_source, 1'h0}; // @[CacheCork.scala 94:41]
  wire [4:0] _c_a_bits_a_mask_sizeOH_T_6 = {{2'd0}, auto_in_2_c_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] c_a_bits_a_mask_sizeOH_shiftAmount_2 = _c_a_bits_a_mask_sizeOH_T_6[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _c_a_bits_a_mask_sizeOH_T_7 = 8'h1 << c_a_bits_a_mask_sizeOH_shiftAmount_2; // @[OneHot.scala 64:12]
  wire [4:0] c_a_bits_a_mask_sizeOH_2 = _c_a_bits_a_mask_sizeOH_T_7[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _c_a_bits_a_mask_T_4 = auto_in_2_c_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  c_a_bits_a_mask_size_10 = c_a_bits_a_mask_sizeOH_2[4]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_10 = auto_in_2_c_bits_address[4]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_10 = ~c_a_bits_a_mask_bit_10; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_acc_124 = _c_a_bits_a_mask_T_4 | c_a_bits_a_mask_size_10 & c_a_bits_a_mask_nbit_10; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_acc_125 = _c_a_bits_a_mask_T_4 | c_a_bits_a_mask_size_10 & c_a_bits_a_mask_bit_10; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_11 = c_a_bits_a_mask_sizeOH_2[3]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_11 = auto_in_2_c_bits_address[3]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_11 = ~c_a_bits_a_mask_bit_11; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_126 = c_a_bits_a_mask_nbit_10 & c_a_bits_a_mask_nbit_11; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_126 = c_a_bits_a_mask_acc_124 | c_a_bits_a_mask_size_11 & c_a_bits_a_mask_eq_126; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_127 = c_a_bits_a_mask_nbit_10 & c_a_bits_a_mask_bit_11; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_127 = c_a_bits_a_mask_acc_124 | c_a_bits_a_mask_size_11 & c_a_bits_a_mask_eq_127; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_128 = c_a_bits_a_mask_bit_10 & c_a_bits_a_mask_nbit_11; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_128 = c_a_bits_a_mask_acc_125 | c_a_bits_a_mask_size_11 & c_a_bits_a_mask_eq_128; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_129 = c_a_bits_a_mask_bit_10 & c_a_bits_a_mask_bit_11; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_129 = c_a_bits_a_mask_acc_125 | c_a_bits_a_mask_size_11 & c_a_bits_a_mask_eq_129; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_12 = c_a_bits_a_mask_sizeOH_2[2]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_12 = auto_in_2_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_12 = ~c_a_bits_a_mask_bit_12; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_130 = c_a_bits_a_mask_eq_126 & c_a_bits_a_mask_nbit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_130 = c_a_bits_a_mask_acc_126 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_130; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_131 = c_a_bits_a_mask_eq_126 & c_a_bits_a_mask_bit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_131 = c_a_bits_a_mask_acc_126 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_131; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_132 = c_a_bits_a_mask_eq_127 & c_a_bits_a_mask_nbit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_132 = c_a_bits_a_mask_acc_127 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_132; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_133 = c_a_bits_a_mask_eq_127 & c_a_bits_a_mask_bit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_133 = c_a_bits_a_mask_acc_127 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_133; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_134 = c_a_bits_a_mask_eq_128 & c_a_bits_a_mask_nbit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_134 = c_a_bits_a_mask_acc_128 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_134; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_135 = c_a_bits_a_mask_eq_128 & c_a_bits_a_mask_bit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_135 = c_a_bits_a_mask_acc_128 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_135; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_136 = c_a_bits_a_mask_eq_129 & c_a_bits_a_mask_nbit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_136 = c_a_bits_a_mask_acc_129 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_136; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_137 = c_a_bits_a_mask_eq_129 & c_a_bits_a_mask_bit_12; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_137 = c_a_bits_a_mask_acc_129 | c_a_bits_a_mask_size_12 & c_a_bits_a_mask_eq_137; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_13 = c_a_bits_a_mask_sizeOH_2[1]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_13 = auto_in_2_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_13 = ~c_a_bits_a_mask_bit_13; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_138 = c_a_bits_a_mask_eq_130 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_138 = c_a_bits_a_mask_acc_130 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_138; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_139 = c_a_bits_a_mask_eq_130 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_139 = c_a_bits_a_mask_acc_130 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_139; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_140 = c_a_bits_a_mask_eq_131 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_140 = c_a_bits_a_mask_acc_131 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_140; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_141 = c_a_bits_a_mask_eq_131 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_141 = c_a_bits_a_mask_acc_131 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_141; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_142 = c_a_bits_a_mask_eq_132 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_142 = c_a_bits_a_mask_acc_132 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_142; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_143 = c_a_bits_a_mask_eq_132 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_143 = c_a_bits_a_mask_acc_132 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_143; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_144 = c_a_bits_a_mask_eq_133 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_144 = c_a_bits_a_mask_acc_133 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_144; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_145 = c_a_bits_a_mask_eq_133 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_145 = c_a_bits_a_mask_acc_133 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_145; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_146 = c_a_bits_a_mask_eq_134 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_146 = c_a_bits_a_mask_acc_134 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_146; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_147 = c_a_bits_a_mask_eq_134 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_147 = c_a_bits_a_mask_acc_134 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_147; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_148 = c_a_bits_a_mask_eq_135 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_148 = c_a_bits_a_mask_acc_135 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_148; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_149 = c_a_bits_a_mask_eq_135 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_149 = c_a_bits_a_mask_acc_135 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_149; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_150 = c_a_bits_a_mask_eq_136 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_150 = c_a_bits_a_mask_acc_136 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_150; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_151 = c_a_bits_a_mask_eq_136 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_151 = c_a_bits_a_mask_acc_136 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_151; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_152 = c_a_bits_a_mask_eq_137 & c_a_bits_a_mask_nbit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_152 = c_a_bits_a_mask_acc_137 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_152; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_153 = c_a_bits_a_mask_eq_137 & c_a_bits_a_mask_bit_13; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_153 = c_a_bits_a_mask_acc_137 | c_a_bits_a_mask_size_13 & c_a_bits_a_mask_eq_153; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_14 = c_a_bits_a_mask_sizeOH_2[0]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_14 = auto_in_2_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_14 = ~c_a_bits_a_mask_bit_14; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_154 = c_a_bits_a_mask_eq_138 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_154 = c_a_bits_a_mask_acc_138 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_154; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_155 = c_a_bits_a_mask_eq_138 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_155 = c_a_bits_a_mask_acc_138 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_155; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_156 = c_a_bits_a_mask_eq_139 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_156 = c_a_bits_a_mask_acc_139 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_156; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_157 = c_a_bits_a_mask_eq_139 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_157 = c_a_bits_a_mask_acc_139 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_157; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_158 = c_a_bits_a_mask_eq_140 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_158 = c_a_bits_a_mask_acc_140 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_158; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_159 = c_a_bits_a_mask_eq_140 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_159 = c_a_bits_a_mask_acc_140 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_159; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_160 = c_a_bits_a_mask_eq_141 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_160 = c_a_bits_a_mask_acc_141 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_160; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_161 = c_a_bits_a_mask_eq_141 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_161 = c_a_bits_a_mask_acc_141 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_161; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_162 = c_a_bits_a_mask_eq_142 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_162 = c_a_bits_a_mask_acc_142 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_162; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_163 = c_a_bits_a_mask_eq_142 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_163 = c_a_bits_a_mask_acc_142 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_163; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_164 = c_a_bits_a_mask_eq_143 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_164 = c_a_bits_a_mask_acc_143 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_164; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_165 = c_a_bits_a_mask_eq_143 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_165 = c_a_bits_a_mask_acc_143 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_165; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_166 = c_a_bits_a_mask_eq_144 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_166 = c_a_bits_a_mask_acc_144 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_166; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_167 = c_a_bits_a_mask_eq_144 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_167 = c_a_bits_a_mask_acc_144 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_167; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_168 = c_a_bits_a_mask_eq_145 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_168 = c_a_bits_a_mask_acc_145 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_168; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_169 = c_a_bits_a_mask_eq_145 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_169 = c_a_bits_a_mask_acc_145 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_169; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_170 = c_a_bits_a_mask_eq_146 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_170 = c_a_bits_a_mask_acc_146 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_170; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_171 = c_a_bits_a_mask_eq_146 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_171 = c_a_bits_a_mask_acc_146 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_171; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_172 = c_a_bits_a_mask_eq_147 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_172 = c_a_bits_a_mask_acc_147 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_172; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_173 = c_a_bits_a_mask_eq_147 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_173 = c_a_bits_a_mask_acc_147 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_173; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_174 = c_a_bits_a_mask_eq_148 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_174 = c_a_bits_a_mask_acc_148 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_174; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_175 = c_a_bits_a_mask_eq_148 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_175 = c_a_bits_a_mask_acc_148 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_175; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_176 = c_a_bits_a_mask_eq_149 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_176 = c_a_bits_a_mask_acc_149 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_176; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_177 = c_a_bits_a_mask_eq_149 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_177 = c_a_bits_a_mask_acc_149 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_177; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_178 = c_a_bits_a_mask_eq_150 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_178 = c_a_bits_a_mask_acc_150 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_178; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_179 = c_a_bits_a_mask_eq_150 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_179 = c_a_bits_a_mask_acc_150 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_179; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_180 = c_a_bits_a_mask_eq_151 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_180 = c_a_bits_a_mask_acc_151 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_180; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_181 = c_a_bits_a_mask_eq_151 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_181 = c_a_bits_a_mask_acc_151 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_181; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_182 = c_a_bits_a_mask_eq_152 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_182 = c_a_bits_a_mask_acc_152 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_182; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_183 = c_a_bits_a_mask_eq_152 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_183 = c_a_bits_a_mask_acc_152 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_183; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_184 = c_a_bits_a_mask_eq_153 & c_a_bits_a_mask_nbit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_184 = c_a_bits_a_mask_acc_153 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_184; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_185 = c_a_bits_a_mask_eq_153 & c_a_bits_a_mask_bit_14; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_185 = c_a_bits_a_mask_acc_153 | c_a_bits_a_mask_size_14 & c_a_bits_a_mask_eq_185; // @[Misc.scala 214:29]
  wire [7:0] c_a_bits_a_mask_lo_lo_2 = {c_a_bits_a_mask_acc_161,c_a_bits_a_mask_acc_160,c_a_bits_a_mask_acc_159,
    c_a_bits_a_mask_acc_158,c_a_bits_a_mask_acc_157,c_a_bits_a_mask_acc_156,c_a_bits_a_mask_acc_155,
    c_a_bits_a_mask_acc_154}; // @[Cat.scala 31:58]
  wire [15:0] c_a_bits_a_mask_lo_2 = {c_a_bits_a_mask_acc_169,c_a_bits_a_mask_acc_168,c_a_bits_a_mask_acc_167,
    c_a_bits_a_mask_acc_166,c_a_bits_a_mask_acc_165,c_a_bits_a_mask_acc_164,c_a_bits_a_mask_acc_163,
    c_a_bits_a_mask_acc_162,c_a_bits_a_mask_lo_lo_2}; // @[Cat.scala 31:58]
  wire [7:0] c_a_bits_a_mask_hi_lo_2 = {c_a_bits_a_mask_acc_177,c_a_bits_a_mask_acc_176,c_a_bits_a_mask_acc_175,
    c_a_bits_a_mask_acc_174,c_a_bits_a_mask_acc_173,c_a_bits_a_mask_acc_172,c_a_bits_a_mask_acc_171,
    c_a_bits_a_mask_acc_170}; // @[Cat.scala 31:58]
  wire [31:0] c_a_bits_a_2_mask = {c_a_bits_a_mask_acc_185,c_a_bits_a_mask_acc_184,c_a_bits_a_mask_acc_183,
    c_a_bits_a_mask_acc_182,c_a_bits_a_mask_acc_181,c_a_bits_a_mask_acc_180,c_a_bits_a_mask_acc_179,
    c_a_bits_a_mask_acc_178,c_a_bits_a_mask_hi_lo_2,c_a_bits_a_mask_lo_2}; // @[Cat.scala 31:58]
  wire  _c_d_valid_T_4 = auto_in_2_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:53]
  wire  c_d_2_ready = q_4_io_enq_ready; // @[CacheCork.scala 102:23 Decoupled.scala 365:17]
  wire  readys_4_0 = _readys_T_55[0]; // @[Arbiter.scala 95:86]
  reg  state_4_0; // @[Arbiter.scala 116:26]
  wire  allowed_4_0 = idle_4 ? readys_4_0 : state_4_0; // @[Arbiter.scala 121:24]
  wire  out_14_ready = auto_out_2_a_ready & allowed_4_0; // @[Arbiter.scala 123:31]
  reg  d_first_counter_2; // @[Edges.scala 228:27]
  wire  d_first_2 = ~d_first_counter_2; // @[Edges.scala 230:25]
  reg  beatsLeft_5; // @[Arbiter.scala 87:30]
  wire  idle_5 = ~beatsLeft_5; // @[Arbiter.scala 88:28]
  wire  out_19_earlyValid = q_5_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_18_earlyValid = q_4_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T_58 = {out_19_earlyValid,out_18_earlyValid,auto_out_2_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_59 = {_readys_T_58, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_61 = _readys_T_58 | _readys_T_59[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_62 = {_readys_T_61, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_64 = _readys_T_61 | _readys_T_62[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_66 = {_readys_T_64, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_68 = ~_readys_T_66[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_5_0 = _readys_T_68[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_0 = readys_5_0 & auto_out_2_d_valid; // @[Arbiter.scala 97:79]
  reg  state_5_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_0 = idle_5 ? earlyWinner_5_0 : state_5_0; // @[Arbiter.scala 117:30]
  wire [2:0] _GEN_168 = auto_out_2_d_bits_opcode == 3'h1 & auto_out_2_d_bits_source[0] ? 3'h5 : auto_out_2_d_bits_opcode
    ; // @[CacheCork.scala 132:13 152:76 153:27]
  wire [2:0] d_d_2_bits_opcode = auto_out_2_d_bits_opcode == 3'h0 & ~auto_out_2_d_bits_source[0] ? 3'h6 : _GEN_168; // @[CacheCork.scala 156:73 157:27]
  wire [2:0] _T_433 = muxStateEarly_5_0 ? d_d_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  readys_5_1 = _readys_T_68[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_1 = readys_5_1 & out_18_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_5_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_1 = idle_5 ? earlyWinner_5_1 : state_5_1; // @[Arbiter.scala 117:30]
  wire [2:0] out_18_bits_opcode = q_4_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_434 = muxStateEarly_5_1 ? out_18_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_436 = _T_433 | _T_434; // @[Mux.scala 27:73]
  wire  readys_5_2 = _readys_T_68[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_2 = readys_5_2 & out_19_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_5_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_2 = idle_5 ? earlyWinner_5_2 : state_5_2; // @[Arbiter.scala 117:30]
  wire [2:0] out_19_bits_opcode = q_5_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_435 = muxStateEarly_5_2 ? out_19_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_5_bits_opcode = _T_436 | _T_435; // @[Mux.scala 27:73]
  wire  d_grant_2 = sink_ACancel_5_bits_opcode == 3'h5 | sink_ACancel_5_bits_opcode == 3'h4; // @[CacheCork.scala 123:54]
  wire  _in_d_ready_T_13 = pool_2_io_alloc_valid | ~d_first_2 | ~d_grant_2; // @[CacheCork.scala 126:70]
  wire  in_d_2_ready = auto_in_2_d_ready & (pool_2_io_alloc_valid | ~d_first_2 | ~d_grant_2); // @[CacheCork.scala 126:34]
  wire  _sink_ACancel_earlyValid_T_37 = state_5_0 & auto_out_2_d_valid | state_5_1 & out_18_earlyValid | state_5_2 &
    out_19_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle_5 ? auto_out_2_d_valid | out_18_earlyValid | out_19_earlyValid :
    _sink_ACancel_earlyValid_T_37; // @[Arbiter.scala 125:29]
  wire  _d_first_T_2 = in_d_2_ready & sink_ACancel_5_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _T_423 = muxStateEarly_5_0 ? auto_out_2_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_18_bits_size = q_4_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_424 = muxStateEarly_5_1 ? out_18_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_426 = _T_423 | _T_424; // @[Mux.scala 27:73]
  wire [2:0] out_19_bits_size = q_5_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_425 = muxStateEarly_5_2 ? out_19_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_5_bits_size = _T_426 | _T_425; // @[Mux.scala 27:73]
  wire [12:0] _d_first_beats1_decode_T_9 = 13'h3f << sink_ACancel_5_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_11 = ~_d_first_beats1_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode_2 = _d_first_beats1_decode_T_11[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata_2 = sink_ACancel_5_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1_2 = d_first_beats1_opdata_2 & d_first_beats1_decode_2; // @[Edges.scala 220:14]
  wire  d_first_counter1_2 = d_first_counter_2 - 1'h1; // @[Edges.scala 229:28]
  wire  bundleIn_2_d_valid = sink_ACancel_5_earlyValid & _in_d_ready_T_13; // @[CacheCork.scala 125:34]
  wire  _pool_io_alloc_ready_T_6 = auto_in_2_d_ready & bundleIn_2_d_valid; // @[Decoupled.scala 50:35]
  reg [2:0] bundleIn_2_d_bits_sink_r; // @[Reg.scala 16:16]
  wire [3:0] d_d_2_bits_source = auto_out_2_d_bits_source[4:1]; // @[CacheCork.scala 133:46]
  wire [1:0] d_d_2_bits_param = auto_out_2_d_bits_opcode == 3'h1 & auto_out_2_d_bits_source[0] ? 2'h0 :
    auto_out_2_d_bits_param; // @[CacheCork.scala 132:13 152:76 154:26]
  wire [12:0] _decode_T_25 = 13'h3f << auto_in_2_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_27 = ~_decode_T_25[5:0]; // @[package.scala 234:46]
  wire  decode_6 = _decode_T_27[5]; // @[Edges.scala 219:59]
  wire [12:0] _decode_T_29 = 13'h3f << auto_in_2_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_31 = ~_decode_T_29[5:0]; // @[package.scala 234:46]
  wire  decode_7 = _decode_T_31[5]; // @[Edges.scala 219:59]
  wire  opdata_7 = ~a_a_2_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_316 = opdata_7 & decode_7; // @[Edges.scala 220:14]
  wire  latch_4 = idle_4 & auto_out_2_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_4_0 = readys_4_0 & c_a_2_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_4_1 = readys_4_1 & a_a_2_valid; // @[Arbiter.scala 97:79]
  wire  _T_327 = c_a_2_valid | a_a_2_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_4 = earlyWinner_4_0 & decode_6; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_4 = earlyWinner_4_1 & _T_316; // @[Arbiter.scala 111:73]
  wire  initBeats_4 = maskedBeats_0_4 | maskedBeats_1_4; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_4_0 = idle_4 ? earlyWinner_4_0 : state_4_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_4_1 = idle_4 ? earlyWinner_4_1 : state_4_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_29 = state_4_0 & c_a_2_valid | state_4_1 & a_a_2_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_4_earlyValid = idle_4 ? _T_327 : _sink_ACancel_earlyValid_T_29; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_26 = auto_out_2_a_ready & sink_ACancel_4_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_344 = muxStateEarly_4_0 ? auto_in_2_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_345 = muxStateEarly_4_1 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_347 = muxStateEarly_4_0 ? c_a_bits_a_2_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_348 = muxStateEarly_4_1 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_350 = muxStateEarly_4_0 ? auto_in_2_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_351 = muxStateEarly_4_1 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_353 = muxStateEarly_4_0 ? c_a_bits_a_2_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_354 = muxStateEarly_4_1 ? a_a_2_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_356 = muxStateEarly_4_0 ? auto_in_2_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_357 = muxStateEarly_4_1 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [12:0] _decode_T_33 = 13'h3f << auto_out_2_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_35 = ~_decode_T_33[5:0]; // @[package.scala 234:46]
  wire  decode_8 = _decode_T_35[5]; // @[Edges.scala 219:59]
  wire  opdata_8 = d_d_2_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_365 = opdata_8 & decode_8; // @[Edges.scala 220:14]
  wire  latch_5 = idle_5 & in_d_2_ready; // @[Arbiter.scala 89:24]
  wire  maskedBeats_0_5 = earlyWinner_5_0 & _T_365; // @[Arbiter.scala 111:73]
  wire  allowed_5_0 = idle_5 ? readys_5_0 : state_5_0; // @[Arbiter.scala 121:24]
  wire  allowed_5_1 = idle_5 ? readys_5_1 : state_5_1; // @[Arbiter.scala 121:24]
  wire  allowed_5_2 = idle_5 ? readys_5_2 : state_5_2; // @[Arbiter.scala 121:24]
  wire [255:0] _T_403 = muxStateEarly_5_0 ? auto_out_2_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_18_bits_data = q_4_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_404 = muxStateEarly_5_1 ? out_18_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_19_bits_data = q_5_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_405 = muxStateEarly_5_2 ? out_19_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_406 = _T_403 | _T_404; // @[Mux.scala 27:73]
  wire  out_18_bits_denied = q_4_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_19_bits_denied = q_5_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_418 = muxStateEarly_5_0 ? d_d_2_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_18_bits_source = q_4_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_419 = muxStateEarly_5_1 ? out_18_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_19_bits_source = q_5_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_420 = muxStateEarly_5_2 ? out_19_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_421 = _T_418 | _T_419; // @[Mux.scala 27:73]
  wire [1:0] _T_428 = muxStateEarly_5_0 ? d_d_2_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_18_bits_param = q_4_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_429 = muxStateEarly_5_1 ? out_18_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_19_bits_param = q_5_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_430 = muxStateEarly_5_2 ? out_19_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_431 = _T_428 | _T_429; // @[Mux.scala 27:73]
  wire  isPut_3 = auto_in_3_a_bits_opcode == 3'h0 | auto_in_3_a_bits_opcode == 3'h1; // @[CacheCork.scala 66:54]
  wire  _toD_T_12 = auto_in_3_a_bits_opcode == 3'h6; // @[CacheCork.scala 67:37]
  wire  _toD_T_15 = auto_in_3_a_bits_opcode == 3'h7; // @[CacheCork.scala 68:37]
  wire  toD_3 = auto_in_3_a_bits_opcode == 3'h6 & auto_in_3_a_bits_param == 3'h2 | _toD_T_15; // @[CacheCork.scala 67:97]
  wire  a_d_3_ready = q_7_io_enq_ready; // @[CacheCork.scala 65:23 Decoupled.scala 365:17]
  reg  beatsLeft_6; // @[Arbiter.scala 87:30]
  wire  idle_6 = ~beatsLeft_6; // @[Arbiter.scala 88:28]
  wire  a_a_3_valid = auto_in_3_a_valid & ~toD_3; // @[CacheCork.scala 71:33]
  wire  c_a_3_valid = auto_in_3_c_valid & auto_in_3_c_bits_opcode == 3'h7; // @[CacheCork.scala 92:33]
  wire [1:0] _readys_T_72 = {a_a_3_valid,c_a_3_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_73 = {_readys_T_72, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_75 = _readys_T_72 | _readys_T_73[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_77 = {_readys_T_75, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_79 = ~_readys_T_77[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_6_1 = _readys_T_79[1]; // @[Arbiter.scala 95:86]
  reg  state_6_1; // @[Arbiter.scala 116:26]
  wire  allowed_6_1 = idle_6 ? readys_6_1 : state_6_1; // @[Arbiter.scala 121:24]
  wire  out_22_ready = auto_out_3_a_ready & allowed_6_1; // @[Arbiter.scala 123:31]
  wire [4:0] _a_a_bits_source_T_15 = {auto_in_3_a_bits_source, 1'h0}; // @[CacheCork.scala 73:45]
  wire [4:0] _GEN_231 = {{4'd0}, isPut_3}; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_17 = _a_a_bits_source_T_15 | _GEN_231; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_19 = _a_a_bits_source_T_15 | 5'h1; // @[CacheCork.scala 79:52]
  wire [2:0] a_a_3_bits_opcode = _toD_T_12 | _toD_T_15 ? 3'h4 : auto_in_3_a_bits_opcode; // @[CacheCork.scala 72:18 76:86 77:27]
  wire [4:0] a_a_3_bits_source = _toD_T_12 | _toD_T_15 ? _a_a_bits_source_T_19 : _a_a_bits_source_T_17; // @[CacheCork.scala 73:25 76:86 79:27]
  wire [4:0] c_a_bits_a_3_source = {auto_in_3_c_bits_source, 1'h0}; // @[CacheCork.scala 94:41]
  wire [4:0] _c_a_bits_a_mask_sizeOH_T_9 = {{2'd0}, auto_in_3_c_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] c_a_bits_a_mask_sizeOH_shiftAmount_3 = _c_a_bits_a_mask_sizeOH_T_9[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _c_a_bits_a_mask_sizeOH_T_10 = 8'h1 << c_a_bits_a_mask_sizeOH_shiftAmount_3; // @[OneHot.scala 64:12]
  wire [4:0] c_a_bits_a_mask_sizeOH_3 = _c_a_bits_a_mask_sizeOH_T_10[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _c_a_bits_a_mask_T_6 = auto_in_3_c_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  c_a_bits_a_mask_size_15 = c_a_bits_a_mask_sizeOH_3[4]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_15 = auto_in_3_c_bits_address[4]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_15 = ~c_a_bits_a_mask_bit_15; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_acc_186 = _c_a_bits_a_mask_T_6 | c_a_bits_a_mask_size_15 & c_a_bits_a_mask_nbit_15; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_acc_187 = _c_a_bits_a_mask_T_6 | c_a_bits_a_mask_size_15 & c_a_bits_a_mask_bit_15; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_16 = c_a_bits_a_mask_sizeOH_3[3]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_16 = auto_in_3_c_bits_address[3]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_16 = ~c_a_bits_a_mask_bit_16; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_188 = c_a_bits_a_mask_nbit_15 & c_a_bits_a_mask_nbit_16; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_188 = c_a_bits_a_mask_acc_186 | c_a_bits_a_mask_size_16 & c_a_bits_a_mask_eq_188; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_189 = c_a_bits_a_mask_nbit_15 & c_a_bits_a_mask_bit_16; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_189 = c_a_bits_a_mask_acc_186 | c_a_bits_a_mask_size_16 & c_a_bits_a_mask_eq_189; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_190 = c_a_bits_a_mask_bit_15 & c_a_bits_a_mask_nbit_16; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_190 = c_a_bits_a_mask_acc_187 | c_a_bits_a_mask_size_16 & c_a_bits_a_mask_eq_190; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_191 = c_a_bits_a_mask_bit_15 & c_a_bits_a_mask_bit_16; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_191 = c_a_bits_a_mask_acc_187 | c_a_bits_a_mask_size_16 & c_a_bits_a_mask_eq_191; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_17 = c_a_bits_a_mask_sizeOH_3[2]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_17 = auto_in_3_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_17 = ~c_a_bits_a_mask_bit_17; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_192 = c_a_bits_a_mask_eq_188 & c_a_bits_a_mask_nbit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_192 = c_a_bits_a_mask_acc_188 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_192; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_193 = c_a_bits_a_mask_eq_188 & c_a_bits_a_mask_bit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_193 = c_a_bits_a_mask_acc_188 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_193; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_194 = c_a_bits_a_mask_eq_189 & c_a_bits_a_mask_nbit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_194 = c_a_bits_a_mask_acc_189 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_194; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_195 = c_a_bits_a_mask_eq_189 & c_a_bits_a_mask_bit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_195 = c_a_bits_a_mask_acc_189 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_195; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_196 = c_a_bits_a_mask_eq_190 & c_a_bits_a_mask_nbit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_196 = c_a_bits_a_mask_acc_190 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_196; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_197 = c_a_bits_a_mask_eq_190 & c_a_bits_a_mask_bit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_197 = c_a_bits_a_mask_acc_190 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_197; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_198 = c_a_bits_a_mask_eq_191 & c_a_bits_a_mask_nbit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_198 = c_a_bits_a_mask_acc_191 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_198; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_199 = c_a_bits_a_mask_eq_191 & c_a_bits_a_mask_bit_17; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_199 = c_a_bits_a_mask_acc_191 | c_a_bits_a_mask_size_17 & c_a_bits_a_mask_eq_199; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_18 = c_a_bits_a_mask_sizeOH_3[1]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_18 = auto_in_3_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_18 = ~c_a_bits_a_mask_bit_18; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_200 = c_a_bits_a_mask_eq_192 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_200 = c_a_bits_a_mask_acc_192 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_200; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_201 = c_a_bits_a_mask_eq_192 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_201 = c_a_bits_a_mask_acc_192 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_201; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_202 = c_a_bits_a_mask_eq_193 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_202 = c_a_bits_a_mask_acc_193 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_202; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_203 = c_a_bits_a_mask_eq_193 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_203 = c_a_bits_a_mask_acc_193 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_203; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_204 = c_a_bits_a_mask_eq_194 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_204 = c_a_bits_a_mask_acc_194 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_204; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_205 = c_a_bits_a_mask_eq_194 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_205 = c_a_bits_a_mask_acc_194 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_205; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_206 = c_a_bits_a_mask_eq_195 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_206 = c_a_bits_a_mask_acc_195 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_206; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_207 = c_a_bits_a_mask_eq_195 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_207 = c_a_bits_a_mask_acc_195 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_207; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_208 = c_a_bits_a_mask_eq_196 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_208 = c_a_bits_a_mask_acc_196 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_208; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_209 = c_a_bits_a_mask_eq_196 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_209 = c_a_bits_a_mask_acc_196 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_209; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_210 = c_a_bits_a_mask_eq_197 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_210 = c_a_bits_a_mask_acc_197 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_210; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_211 = c_a_bits_a_mask_eq_197 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_211 = c_a_bits_a_mask_acc_197 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_211; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_212 = c_a_bits_a_mask_eq_198 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_212 = c_a_bits_a_mask_acc_198 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_212; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_213 = c_a_bits_a_mask_eq_198 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_213 = c_a_bits_a_mask_acc_198 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_213; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_214 = c_a_bits_a_mask_eq_199 & c_a_bits_a_mask_nbit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_214 = c_a_bits_a_mask_acc_199 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_214; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_215 = c_a_bits_a_mask_eq_199 & c_a_bits_a_mask_bit_18; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_215 = c_a_bits_a_mask_acc_199 | c_a_bits_a_mask_size_18 & c_a_bits_a_mask_eq_215; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_19 = c_a_bits_a_mask_sizeOH_3[0]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_19 = auto_in_3_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_19 = ~c_a_bits_a_mask_bit_19; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_216 = c_a_bits_a_mask_eq_200 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_216 = c_a_bits_a_mask_acc_200 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_216; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_217 = c_a_bits_a_mask_eq_200 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_217 = c_a_bits_a_mask_acc_200 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_217; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_218 = c_a_bits_a_mask_eq_201 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_218 = c_a_bits_a_mask_acc_201 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_218; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_219 = c_a_bits_a_mask_eq_201 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_219 = c_a_bits_a_mask_acc_201 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_219; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_220 = c_a_bits_a_mask_eq_202 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_220 = c_a_bits_a_mask_acc_202 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_220; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_221 = c_a_bits_a_mask_eq_202 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_221 = c_a_bits_a_mask_acc_202 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_221; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_222 = c_a_bits_a_mask_eq_203 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_222 = c_a_bits_a_mask_acc_203 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_222; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_223 = c_a_bits_a_mask_eq_203 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_223 = c_a_bits_a_mask_acc_203 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_223; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_224 = c_a_bits_a_mask_eq_204 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_224 = c_a_bits_a_mask_acc_204 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_224; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_225 = c_a_bits_a_mask_eq_204 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_225 = c_a_bits_a_mask_acc_204 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_225; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_226 = c_a_bits_a_mask_eq_205 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_226 = c_a_bits_a_mask_acc_205 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_226; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_227 = c_a_bits_a_mask_eq_205 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_227 = c_a_bits_a_mask_acc_205 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_227; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_228 = c_a_bits_a_mask_eq_206 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_228 = c_a_bits_a_mask_acc_206 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_228; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_229 = c_a_bits_a_mask_eq_206 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_229 = c_a_bits_a_mask_acc_206 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_229; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_230 = c_a_bits_a_mask_eq_207 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_230 = c_a_bits_a_mask_acc_207 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_230; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_231 = c_a_bits_a_mask_eq_207 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_231 = c_a_bits_a_mask_acc_207 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_231; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_232 = c_a_bits_a_mask_eq_208 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_232 = c_a_bits_a_mask_acc_208 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_232; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_233 = c_a_bits_a_mask_eq_208 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_233 = c_a_bits_a_mask_acc_208 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_233; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_234 = c_a_bits_a_mask_eq_209 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_234 = c_a_bits_a_mask_acc_209 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_234; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_235 = c_a_bits_a_mask_eq_209 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_235 = c_a_bits_a_mask_acc_209 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_235; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_236 = c_a_bits_a_mask_eq_210 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_236 = c_a_bits_a_mask_acc_210 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_236; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_237 = c_a_bits_a_mask_eq_210 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_237 = c_a_bits_a_mask_acc_210 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_237; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_238 = c_a_bits_a_mask_eq_211 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_238 = c_a_bits_a_mask_acc_211 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_238; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_239 = c_a_bits_a_mask_eq_211 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_239 = c_a_bits_a_mask_acc_211 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_239; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_240 = c_a_bits_a_mask_eq_212 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_240 = c_a_bits_a_mask_acc_212 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_240; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_241 = c_a_bits_a_mask_eq_212 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_241 = c_a_bits_a_mask_acc_212 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_241; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_242 = c_a_bits_a_mask_eq_213 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_242 = c_a_bits_a_mask_acc_213 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_242; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_243 = c_a_bits_a_mask_eq_213 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_243 = c_a_bits_a_mask_acc_213 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_243; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_244 = c_a_bits_a_mask_eq_214 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_244 = c_a_bits_a_mask_acc_214 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_244; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_245 = c_a_bits_a_mask_eq_214 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_245 = c_a_bits_a_mask_acc_214 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_245; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_246 = c_a_bits_a_mask_eq_215 & c_a_bits_a_mask_nbit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_246 = c_a_bits_a_mask_acc_215 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_246; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_247 = c_a_bits_a_mask_eq_215 & c_a_bits_a_mask_bit_19; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_247 = c_a_bits_a_mask_acc_215 | c_a_bits_a_mask_size_19 & c_a_bits_a_mask_eq_247; // @[Misc.scala 214:29]
  wire [7:0] c_a_bits_a_mask_lo_lo_3 = {c_a_bits_a_mask_acc_223,c_a_bits_a_mask_acc_222,c_a_bits_a_mask_acc_221,
    c_a_bits_a_mask_acc_220,c_a_bits_a_mask_acc_219,c_a_bits_a_mask_acc_218,c_a_bits_a_mask_acc_217,
    c_a_bits_a_mask_acc_216}; // @[Cat.scala 31:58]
  wire [15:0] c_a_bits_a_mask_lo_3 = {c_a_bits_a_mask_acc_231,c_a_bits_a_mask_acc_230,c_a_bits_a_mask_acc_229,
    c_a_bits_a_mask_acc_228,c_a_bits_a_mask_acc_227,c_a_bits_a_mask_acc_226,c_a_bits_a_mask_acc_225,
    c_a_bits_a_mask_acc_224,c_a_bits_a_mask_lo_lo_3}; // @[Cat.scala 31:58]
  wire [7:0] c_a_bits_a_mask_hi_lo_3 = {c_a_bits_a_mask_acc_239,c_a_bits_a_mask_acc_238,c_a_bits_a_mask_acc_237,
    c_a_bits_a_mask_acc_236,c_a_bits_a_mask_acc_235,c_a_bits_a_mask_acc_234,c_a_bits_a_mask_acc_233,
    c_a_bits_a_mask_acc_232}; // @[Cat.scala 31:58]
  wire [31:0] c_a_bits_a_3_mask = {c_a_bits_a_mask_acc_247,c_a_bits_a_mask_acc_246,c_a_bits_a_mask_acc_245,
    c_a_bits_a_mask_acc_244,c_a_bits_a_mask_acc_243,c_a_bits_a_mask_acc_242,c_a_bits_a_mask_acc_241,
    c_a_bits_a_mask_acc_240,c_a_bits_a_mask_hi_lo_3,c_a_bits_a_mask_lo_3}; // @[Cat.scala 31:58]
  wire  _c_d_valid_T_6 = auto_in_3_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:53]
  wire  c_d_3_ready = q_6_io_enq_ready; // @[CacheCork.scala 102:23 Decoupled.scala 365:17]
  wire  readys_6_0 = _readys_T_79[0]; // @[Arbiter.scala 95:86]
  reg  state_6_0; // @[Arbiter.scala 116:26]
  wire  allowed_6_0 = idle_6 ? readys_6_0 : state_6_0; // @[Arbiter.scala 121:24]
  wire  out_21_ready = auto_out_3_a_ready & allowed_6_0; // @[Arbiter.scala 123:31]
  reg  d_first_counter_3; // @[Edges.scala 228:27]
  wire  d_first_3 = ~d_first_counter_3; // @[Edges.scala 230:25]
  reg  beatsLeft_7; // @[Arbiter.scala 87:30]
  wire  idle_7 = ~beatsLeft_7; // @[Arbiter.scala 88:28]
  wire  out_26_earlyValid = q_7_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_25_earlyValid = q_6_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T_82 = {out_26_earlyValid,out_25_earlyValid,auto_out_3_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_83 = {_readys_T_82, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_85 = _readys_T_82 | _readys_T_83[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_86 = {_readys_T_85, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_88 = _readys_T_85 | _readys_T_86[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_90 = {_readys_T_88, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_92 = ~_readys_T_90[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_7_0 = _readys_T_92[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7_0 = readys_7_0 & auto_out_3_d_valid; // @[Arbiter.scala 97:79]
  reg  state_7_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7_0 = idle_7 ? earlyWinner_7_0 : state_7_0; // @[Arbiter.scala 117:30]
  wire [2:0] _GEN_225 = auto_out_3_d_bits_opcode == 3'h1 & auto_out_3_d_bits_source[0] ? 3'h5 : auto_out_3_d_bits_opcode
    ; // @[CacheCork.scala 132:13 152:76 153:27]
  wire [2:0] d_d_3_bits_opcode = auto_out_3_d_bits_opcode == 3'h0 & ~auto_out_3_d_bits_source[0] ? 3'h6 : _GEN_225; // @[CacheCork.scala 156:73 157:27]
  wire [2:0] _T_579 = muxStateEarly_7_0 ? d_d_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  readys_7_1 = _readys_T_92[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7_1 = readys_7_1 & out_25_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_7_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7_1 = idle_7 ? earlyWinner_7_1 : state_7_1; // @[Arbiter.scala 117:30]
  wire [2:0] out_25_bits_opcode = q_6_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_580 = muxStateEarly_7_1 ? out_25_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_582 = _T_579 | _T_580; // @[Mux.scala 27:73]
  wire  readys_7_2 = _readys_T_92[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7_2 = readys_7_2 & out_26_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_7_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7_2 = idle_7 ? earlyWinner_7_2 : state_7_2; // @[Arbiter.scala 117:30]
  wire [2:0] out_26_bits_opcode = q_7_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_581 = muxStateEarly_7_2 ? out_26_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_7_bits_opcode = _T_582 | _T_581; // @[Mux.scala 27:73]
  wire  d_grant_3 = sink_ACancel_7_bits_opcode == 3'h5 | sink_ACancel_7_bits_opcode == 3'h4; // @[CacheCork.scala 123:54]
  wire  _in_d_ready_T_18 = pool_3_io_alloc_valid | ~d_first_3 | ~d_grant_3; // @[CacheCork.scala 126:70]
  wire  in_d_3_ready = auto_in_3_d_ready & (pool_3_io_alloc_valid | ~d_first_3 | ~d_grant_3); // @[CacheCork.scala 126:34]
  wire  _sink_ACancel_earlyValid_T_50 = state_7_0 & auto_out_3_d_valid | state_7_1 & out_25_earlyValid | state_7_2 &
    out_26_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_7_earlyValid = idle_7 ? auto_out_3_d_valid | out_25_earlyValid | out_26_earlyValid :
    _sink_ACancel_earlyValid_T_50; // @[Arbiter.scala 125:29]
  wire  _d_first_T_3 = in_d_3_ready & sink_ACancel_7_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _T_569 = muxStateEarly_7_0 ? auto_out_3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_25_bits_size = q_6_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_570 = muxStateEarly_7_1 ? out_25_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_572 = _T_569 | _T_570; // @[Mux.scala 27:73]
  wire [2:0] out_26_bits_size = q_7_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_571 = muxStateEarly_7_2 ? out_26_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_7_bits_size = _T_572 | _T_571; // @[Mux.scala 27:73]
  wire [12:0] _d_first_beats1_decode_T_13 = 13'h3f << sink_ACancel_7_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_15 = ~_d_first_beats1_decode_T_13[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode_3 = _d_first_beats1_decode_T_15[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata_3 = sink_ACancel_7_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1_3 = d_first_beats1_opdata_3 & d_first_beats1_decode_3; // @[Edges.scala 220:14]
  wire  d_first_counter1_3 = d_first_counter_3 - 1'h1; // @[Edges.scala 229:28]
  wire  bundleIn_3_d_valid = sink_ACancel_7_earlyValid & _in_d_ready_T_18; // @[CacheCork.scala 125:34]
  wire  _pool_io_alloc_ready_T_9 = auto_in_3_d_ready & bundleIn_3_d_valid; // @[Decoupled.scala 50:35]
  reg [2:0] bundleIn_3_d_bits_sink_r; // @[Reg.scala 16:16]
  wire [3:0] d_d_3_bits_source = auto_out_3_d_bits_source[4:1]; // @[CacheCork.scala 133:46]
  wire [1:0] d_d_3_bits_param = auto_out_3_d_bits_opcode == 3'h1 & auto_out_3_d_bits_source[0] ? 2'h0 :
    auto_out_3_d_bits_param; // @[CacheCork.scala 132:13 152:76 154:26]
  wire [12:0] _decode_T_37 = 13'h3f << auto_in_3_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_39 = ~_decode_T_37[5:0]; // @[package.scala 234:46]
  wire  decode_9 = _decode_T_39[5]; // @[Edges.scala 219:59]
  wire [12:0] _decode_T_41 = 13'h3f << auto_in_3_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_43 = ~_decode_T_41[5:0]; // @[package.scala 234:46]
  wire  decode_10 = _decode_T_43[5]; // @[Edges.scala 219:59]
  wire  opdata_10 = ~a_a_3_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_462 = opdata_10 & decode_10; // @[Edges.scala 220:14]
  wire  latch_6 = idle_6 & auto_out_3_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_6_0 = readys_6_0 & c_a_3_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_6_1 = readys_6_1 & a_a_3_valid; // @[Arbiter.scala 97:79]
  wire  _T_473 = c_a_3_valid | a_a_3_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_6 = earlyWinner_6_0 & decode_9; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_6 = earlyWinner_6_1 & _T_462; // @[Arbiter.scala 111:73]
  wire  initBeats_6 = maskedBeats_0_6 | maskedBeats_1_6; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_6_0 = idle_6 ? earlyWinner_6_0 : state_6_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_6_1 = idle_6 ? earlyWinner_6_1 : state_6_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_42 = state_6_0 & c_a_3_valid | state_6_1 & a_a_3_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_6_earlyValid = idle_6 ? _T_473 : _sink_ACancel_earlyValid_T_42; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_38 = auto_out_3_a_ready & sink_ACancel_6_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_490 = muxStateEarly_6_0 ? auto_in_3_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_491 = muxStateEarly_6_1 ? auto_in_3_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_493 = muxStateEarly_6_0 ? c_a_bits_a_3_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_494 = muxStateEarly_6_1 ? auto_in_3_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_496 = muxStateEarly_6_0 ? auto_in_3_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_497 = muxStateEarly_6_1 ? auto_in_3_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_499 = muxStateEarly_6_0 ? c_a_bits_a_3_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_500 = muxStateEarly_6_1 ? a_a_3_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_502 = muxStateEarly_6_0 ? auto_in_3_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_503 = muxStateEarly_6_1 ? auto_in_3_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [12:0] _decode_T_45 = 13'h3f << auto_out_3_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_47 = ~_decode_T_45[5:0]; // @[package.scala 234:46]
  wire  decode_11 = _decode_T_47[5]; // @[Edges.scala 219:59]
  wire  opdata_11 = d_d_3_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_511 = opdata_11 & decode_11; // @[Edges.scala 220:14]
  wire  latch_7 = idle_7 & in_d_3_ready; // @[Arbiter.scala 89:24]
  wire  maskedBeats_0_7 = earlyWinner_7_0 & _T_511; // @[Arbiter.scala 111:73]
  wire  allowed_7_0 = idle_7 ? readys_7_0 : state_7_0; // @[Arbiter.scala 121:24]
  wire  allowed_7_1 = idle_7 ? readys_7_1 : state_7_1; // @[Arbiter.scala 121:24]
  wire  allowed_7_2 = idle_7 ? readys_7_2 : state_7_2; // @[Arbiter.scala 121:24]
  wire [255:0] _T_549 = muxStateEarly_7_0 ? auto_out_3_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_25_bits_data = q_6_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_550 = muxStateEarly_7_1 ? out_25_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_26_bits_data = q_7_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_551 = muxStateEarly_7_2 ? out_26_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_552 = _T_549 | _T_550; // @[Mux.scala 27:73]
  wire  out_25_bits_denied = q_6_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_26_bits_denied = q_7_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_564 = muxStateEarly_7_0 ? d_d_3_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_25_bits_source = q_6_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_565 = muxStateEarly_7_1 ? out_25_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_26_bits_source = q_7_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_566 = muxStateEarly_7_2 ? out_26_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_567 = _T_564 | _T_565; // @[Mux.scala 27:73]
  wire [1:0] _T_574 = muxStateEarly_7_0 ? d_d_3_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_25_bits_param = q_6_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_575 = muxStateEarly_7_1 ? out_25_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_26_bits_param = q_7_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_576 = muxStateEarly_7_2 ? out_26_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_577 = _T_574 | _T_575; // @[Mux.scala 27:73]
  IDPool pool ( // @[CacheCork.scala 117:26]
    .clock(pool_clock),
    .reset(pool_reset),
    .io_free_valid(pool_io_free_valid),
    .io_free_bits(pool_io_free_bits),
    .io_alloc_ready(pool_io_alloc_ready),
    .io_alloc_valid(pool_io_alloc_valid),
    .io_alloc_bits(pool_io_alloc_bits)
  );
  Queue_16 q ( // @[Decoupled.scala 361:21]
    .clock(q_clock),
    .reset(q_reset),
    .io_enq_ready(q_io_enq_ready),
    .io_enq_valid(q_io_enq_valid),
    .io_enq_bits_opcode(q_io_enq_bits_opcode),
    .io_enq_bits_param(q_io_enq_bits_param),
    .io_enq_bits_size(q_io_enq_bits_size),
    .io_enq_bits_source(q_io_enq_bits_source),
    .io_enq_bits_sink(q_io_enq_bits_sink),
    .io_enq_bits_denied(q_io_enq_bits_denied),
    .io_enq_bits_data(q_io_enq_bits_data),
    .io_deq_ready(q_io_deq_ready),
    .io_deq_valid(q_io_deq_valid),
    .io_deq_bits_opcode(q_io_deq_bits_opcode),
    .io_deq_bits_param(q_io_deq_bits_param),
    .io_deq_bits_size(q_io_deq_bits_size),
    .io_deq_bits_source(q_io_deq_bits_source),
    .io_deq_bits_sink(q_io_deq_bits_sink),
    .io_deq_bits_denied(q_io_deq_bits_denied),
    .io_deq_bits_data(q_io_deq_bits_data)
  );
  Queue_16 q_1 ( // @[Decoupled.scala 361:21]
    .clock(q_1_clock),
    .reset(q_1_reset),
    .io_enq_ready(q_1_io_enq_ready),
    .io_enq_valid(q_1_io_enq_valid),
    .io_enq_bits_opcode(q_1_io_enq_bits_opcode),
    .io_enq_bits_param(q_1_io_enq_bits_param),
    .io_enq_bits_size(q_1_io_enq_bits_size),
    .io_enq_bits_source(q_1_io_enq_bits_source),
    .io_enq_bits_sink(q_1_io_enq_bits_sink),
    .io_enq_bits_denied(q_1_io_enq_bits_denied),
    .io_enq_bits_data(q_1_io_enq_bits_data),
    .io_deq_ready(q_1_io_deq_ready),
    .io_deq_valid(q_1_io_deq_valid),
    .io_deq_bits_opcode(q_1_io_deq_bits_opcode),
    .io_deq_bits_param(q_1_io_deq_bits_param),
    .io_deq_bits_size(q_1_io_deq_bits_size),
    .io_deq_bits_source(q_1_io_deq_bits_source),
    .io_deq_bits_sink(q_1_io_deq_bits_sink),
    .io_deq_bits_denied(q_1_io_deq_bits_denied),
    .io_deq_bits_data(q_1_io_deq_bits_data)
  );
  IDPool pool_1 ( // @[CacheCork.scala 117:26]
    .clock(pool_1_clock),
    .reset(pool_1_reset),
    .io_free_valid(pool_1_io_free_valid),
    .io_free_bits(pool_1_io_free_bits),
    .io_alloc_ready(pool_1_io_alloc_ready),
    .io_alloc_valid(pool_1_io_alloc_valid),
    .io_alloc_bits(pool_1_io_alloc_bits)
  );
  Queue_16 q_2 ( // @[Decoupled.scala 361:21]
    .clock(q_2_clock),
    .reset(q_2_reset),
    .io_enq_ready(q_2_io_enq_ready),
    .io_enq_valid(q_2_io_enq_valid),
    .io_enq_bits_opcode(q_2_io_enq_bits_opcode),
    .io_enq_bits_param(q_2_io_enq_bits_param),
    .io_enq_bits_size(q_2_io_enq_bits_size),
    .io_enq_bits_source(q_2_io_enq_bits_source),
    .io_enq_bits_sink(q_2_io_enq_bits_sink),
    .io_enq_bits_denied(q_2_io_enq_bits_denied),
    .io_enq_bits_data(q_2_io_enq_bits_data),
    .io_deq_ready(q_2_io_deq_ready),
    .io_deq_valid(q_2_io_deq_valid),
    .io_deq_bits_opcode(q_2_io_deq_bits_opcode),
    .io_deq_bits_param(q_2_io_deq_bits_param),
    .io_deq_bits_size(q_2_io_deq_bits_size),
    .io_deq_bits_source(q_2_io_deq_bits_source),
    .io_deq_bits_sink(q_2_io_deq_bits_sink),
    .io_deq_bits_denied(q_2_io_deq_bits_denied),
    .io_deq_bits_data(q_2_io_deq_bits_data)
  );
  Queue_16 q_3 ( // @[Decoupled.scala 361:21]
    .clock(q_3_clock),
    .reset(q_3_reset),
    .io_enq_ready(q_3_io_enq_ready),
    .io_enq_valid(q_3_io_enq_valid),
    .io_enq_bits_opcode(q_3_io_enq_bits_opcode),
    .io_enq_bits_param(q_3_io_enq_bits_param),
    .io_enq_bits_size(q_3_io_enq_bits_size),
    .io_enq_bits_source(q_3_io_enq_bits_source),
    .io_enq_bits_sink(q_3_io_enq_bits_sink),
    .io_enq_bits_denied(q_3_io_enq_bits_denied),
    .io_enq_bits_data(q_3_io_enq_bits_data),
    .io_deq_ready(q_3_io_deq_ready),
    .io_deq_valid(q_3_io_deq_valid),
    .io_deq_bits_opcode(q_3_io_deq_bits_opcode),
    .io_deq_bits_param(q_3_io_deq_bits_param),
    .io_deq_bits_size(q_3_io_deq_bits_size),
    .io_deq_bits_source(q_3_io_deq_bits_source),
    .io_deq_bits_sink(q_3_io_deq_bits_sink),
    .io_deq_bits_denied(q_3_io_deq_bits_denied),
    .io_deq_bits_data(q_3_io_deq_bits_data)
  );
  IDPool pool_2 ( // @[CacheCork.scala 117:26]
    .clock(pool_2_clock),
    .reset(pool_2_reset),
    .io_free_valid(pool_2_io_free_valid),
    .io_free_bits(pool_2_io_free_bits),
    .io_alloc_ready(pool_2_io_alloc_ready),
    .io_alloc_valid(pool_2_io_alloc_valid),
    .io_alloc_bits(pool_2_io_alloc_bits)
  );
  Queue_16 q_4 ( // @[Decoupled.scala 361:21]
    .clock(q_4_clock),
    .reset(q_4_reset),
    .io_enq_ready(q_4_io_enq_ready),
    .io_enq_valid(q_4_io_enq_valid),
    .io_enq_bits_opcode(q_4_io_enq_bits_opcode),
    .io_enq_bits_param(q_4_io_enq_bits_param),
    .io_enq_bits_size(q_4_io_enq_bits_size),
    .io_enq_bits_source(q_4_io_enq_bits_source),
    .io_enq_bits_sink(q_4_io_enq_bits_sink),
    .io_enq_bits_denied(q_4_io_enq_bits_denied),
    .io_enq_bits_data(q_4_io_enq_bits_data),
    .io_deq_ready(q_4_io_deq_ready),
    .io_deq_valid(q_4_io_deq_valid),
    .io_deq_bits_opcode(q_4_io_deq_bits_opcode),
    .io_deq_bits_param(q_4_io_deq_bits_param),
    .io_deq_bits_size(q_4_io_deq_bits_size),
    .io_deq_bits_source(q_4_io_deq_bits_source),
    .io_deq_bits_sink(q_4_io_deq_bits_sink),
    .io_deq_bits_denied(q_4_io_deq_bits_denied),
    .io_deq_bits_data(q_4_io_deq_bits_data)
  );
  Queue_16 q_5 ( // @[Decoupled.scala 361:21]
    .clock(q_5_clock),
    .reset(q_5_reset),
    .io_enq_ready(q_5_io_enq_ready),
    .io_enq_valid(q_5_io_enq_valid),
    .io_enq_bits_opcode(q_5_io_enq_bits_opcode),
    .io_enq_bits_param(q_5_io_enq_bits_param),
    .io_enq_bits_size(q_5_io_enq_bits_size),
    .io_enq_bits_source(q_5_io_enq_bits_source),
    .io_enq_bits_sink(q_5_io_enq_bits_sink),
    .io_enq_bits_denied(q_5_io_enq_bits_denied),
    .io_enq_bits_data(q_5_io_enq_bits_data),
    .io_deq_ready(q_5_io_deq_ready),
    .io_deq_valid(q_5_io_deq_valid),
    .io_deq_bits_opcode(q_5_io_deq_bits_opcode),
    .io_deq_bits_param(q_5_io_deq_bits_param),
    .io_deq_bits_size(q_5_io_deq_bits_size),
    .io_deq_bits_source(q_5_io_deq_bits_source),
    .io_deq_bits_sink(q_5_io_deq_bits_sink),
    .io_deq_bits_denied(q_5_io_deq_bits_denied),
    .io_deq_bits_data(q_5_io_deq_bits_data)
  );
  IDPool pool_3 ( // @[CacheCork.scala 117:26]
    .clock(pool_3_clock),
    .reset(pool_3_reset),
    .io_free_valid(pool_3_io_free_valid),
    .io_free_bits(pool_3_io_free_bits),
    .io_alloc_ready(pool_3_io_alloc_ready),
    .io_alloc_valid(pool_3_io_alloc_valid),
    .io_alloc_bits(pool_3_io_alloc_bits)
  );
  Queue_16 q_6 ( // @[Decoupled.scala 361:21]
    .clock(q_6_clock),
    .reset(q_6_reset),
    .io_enq_ready(q_6_io_enq_ready),
    .io_enq_valid(q_6_io_enq_valid),
    .io_enq_bits_opcode(q_6_io_enq_bits_opcode),
    .io_enq_bits_param(q_6_io_enq_bits_param),
    .io_enq_bits_size(q_6_io_enq_bits_size),
    .io_enq_bits_source(q_6_io_enq_bits_source),
    .io_enq_bits_sink(q_6_io_enq_bits_sink),
    .io_enq_bits_denied(q_6_io_enq_bits_denied),
    .io_enq_bits_data(q_6_io_enq_bits_data),
    .io_deq_ready(q_6_io_deq_ready),
    .io_deq_valid(q_6_io_deq_valid),
    .io_deq_bits_opcode(q_6_io_deq_bits_opcode),
    .io_deq_bits_param(q_6_io_deq_bits_param),
    .io_deq_bits_size(q_6_io_deq_bits_size),
    .io_deq_bits_source(q_6_io_deq_bits_source),
    .io_deq_bits_sink(q_6_io_deq_bits_sink),
    .io_deq_bits_denied(q_6_io_deq_bits_denied),
    .io_deq_bits_data(q_6_io_deq_bits_data)
  );
  Queue_16 q_7 ( // @[Decoupled.scala 361:21]
    .clock(q_7_clock),
    .reset(q_7_reset),
    .io_enq_ready(q_7_io_enq_ready),
    .io_enq_valid(q_7_io_enq_valid),
    .io_enq_bits_opcode(q_7_io_enq_bits_opcode),
    .io_enq_bits_param(q_7_io_enq_bits_param),
    .io_enq_bits_size(q_7_io_enq_bits_size),
    .io_enq_bits_source(q_7_io_enq_bits_source),
    .io_enq_bits_sink(q_7_io_enq_bits_sink),
    .io_enq_bits_denied(q_7_io_enq_bits_denied),
    .io_enq_bits_data(q_7_io_enq_bits_data),
    .io_deq_ready(q_7_io_deq_ready),
    .io_deq_valid(q_7_io_deq_valid),
    .io_deq_bits_opcode(q_7_io_deq_bits_opcode),
    .io_deq_bits_param(q_7_io_deq_bits_param),
    .io_deq_bits_size(q_7_io_deq_bits_size),
    .io_deq_bits_source(q_7_io_deq_bits_source),
    .io_deq_bits_sink(q_7_io_deq_bits_sink),
    .io_deq_bits_denied(q_7_io_deq_bits_denied),
    .io_deq_bits_data(q_7_io_deq_bits_data)
  );
  assign auto_in_3_a_ready = toD_3 ? a_d_3_ready : out_22_ready; // @[CacheCork.scala 69:26]
  assign auto_in_3_c_ready = _c_d_valid_T_6 ? c_d_3_ready : out_21_ready; // @[CacheCork.scala 107:26]
  assign auto_in_3_d_valid = sink_ACancel_7_earlyValid & _in_d_ready_T_18; // @[CacheCork.scala 125:34]
  assign auto_in_3_d_bits_opcode = _T_582 | _T_581; // @[Mux.scala 27:73]
  assign auto_in_3_d_bits_param = _T_577 | _T_576; // @[Mux.scala 27:73]
  assign auto_in_3_d_bits_size = _T_572 | _T_571; // @[Mux.scala 27:73]
  assign auto_in_3_d_bits_source = _T_567 | _T_566; // @[Mux.scala 27:73]
  assign auto_in_3_d_bits_sink = d_first_3 ? pool_3_io_alloc_bits : bundleIn_3_d_bits_sink_r; // @[package.scala 79:42]
  assign auto_in_3_d_bits_denied = muxStateEarly_7_0 & auto_out_3_d_bits_denied | muxStateEarly_7_1 & out_25_bits_denied
     | muxStateEarly_7_2 & out_26_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_3_d_bits_data = _T_552 | _T_551; // @[Mux.scala 27:73]
  assign auto_in_2_a_ready = toD_2 ? a_d_2_ready : out_15_ready; // @[CacheCork.scala 69:26]
  assign auto_in_2_c_ready = _c_d_valid_T_4 ? c_d_2_ready : out_14_ready; // @[CacheCork.scala 107:26]
  assign auto_in_2_d_valid = sink_ACancel_5_earlyValid & _in_d_ready_T_13; // @[CacheCork.scala 125:34]
  assign auto_in_2_d_bits_opcode = _T_436 | _T_435; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_param = _T_431 | _T_430; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_size = _T_426 | _T_425; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_source = _T_421 | _T_420; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_sink = d_first_2 ? pool_2_io_alloc_bits : bundleIn_2_d_bits_sink_r; // @[package.scala 79:42]
  assign auto_in_2_d_bits_denied = muxStateEarly_5_0 & auto_out_2_d_bits_denied | muxStateEarly_5_1 & out_18_bits_denied
     | muxStateEarly_5_2 & out_19_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_data = _T_406 | _T_405; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = toD_1 ? a_d_1_ready : out_8_ready; // @[CacheCork.scala 69:26]
  assign auto_in_1_c_ready = _c_d_valid_T_2 ? c_d_1_ready : out_7_ready; // @[CacheCork.scala 107:26]
  assign auto_in_1_d_valid = sink_ACancel_3_earlyValid & _in_d_ready_T_8; // @[CacheCork.scala 125:34]
  assign auto_in_1_d_bits_opcode = _T_290 | _T_289; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_param = _T_285 | _T_284; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_size = _T_280 | _T_279; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_source = _T_275 | _T_274; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_sink = d_first_1 ? pool_1_io_alloc_bits : bundleIn_1_d_bits_sink_r; // @[package.scala 79:42]
  assign auto_in_1_d_bits_denied = muxStateEarly_3_0 & auto_out_1_d_bits_denied | muxStateEarly_3_1 & out_11_bits_denied
     | muxStateEarly_3_2 & out_12_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_data = _T_260 | _T_259; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = toD ? a_d_ready : out_1_ready; // @[CacheCork.scala 69:26]
  assign auto_in_0_c_ready = _c_d_valid_T ? c_d_ready : out_ready; // @[CacheCork.scala 107:26]
  assign auto_in_0_d_valid = sink_ACancel_1_earlyValid & _in_d_ready_T_3; // @[CacheCork.scala 125:34]
  assign auto_in_0_d_bits_opcode = _T_144 | _T_143; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_param = _T_139 | _T_138; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_134 | _T_133; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_source = _T_129 | _T_128; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_sink = d_first ? pool_io_alloc_bits : bundleIn_0_d_bits_sink_r; // @[package.scala 79:42]
  assign auto_in_0_d_bits_denied = muxStateEarly_1_0 & auto_out_0_d_bits_denied | muxStateEarly_1_1 & out_4_bits_denied
     | muxStateEarly_1_2 & out_5_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = _T_114 | _T_113; // @[Mux.scala 27:73]
  assign auto_out_3_a_valid = idle_6 ? _T_473 : _sink_ACancel_earlyValid_T_42; // @[Arbiter.scala 125:29]
  assign auto_out_3_a_bits_opcode = muxStateEarly_6_1 ? a_a_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_size = _T_502 | _T_503; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_source = _T_499 | _T_500; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_address = _T_496 | _T_497; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_mask = _T_493 | _T_494; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_data = _T_490 | _T_491; // @[Mux.scala 27:73]
  assign auto_out_3_d_ready = in_d_3_ready & allowed_7_0; // @[Arbiter.scala 123:31]
  assign auto_out_2_a_valid = idle_4 ? _T_327 : _sink_ACancel_earlyValid_T_29; // @[Arbiter.scala 125:29]
  assign auto_out_2_a_bits_opcode = muxStateEarly_4_1 ? a_a_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_size = _T_356 | _T_357; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_source = _T_353 | _T_354; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_address = _T_350 | _T_351; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_mask = _T_347 | _T_348; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_data = _T_344 | _T_345; // @[Mux.scala 27:73]
  assign auto_out_2_d_ready = in_d_2_ready & allowed_5_0; // @[Arbiter.scala 123:31]
  assign auto_out_1_a_valid = idle_2 ? _T_181 : _sink_ACancel_earlyValid_T_16; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = muxStateEarly_2_1 ? a_a_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_210 | _T_211; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = _T_207 | _T_208; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_204 | _T_205; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_201 | _T_202; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_198 | _T_199; // @[Mux.scala 27:73]
  assign auto_out_1_d_ready = in_d_1_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  assign auto_out_0_a_valid = idle ? _T_35 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = muxStateEarly__1 ? a_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = _T_64 | _T_65; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_source = _T_61 | _T_62; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_address = _T_58 | _T_59; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_mask = _T_55 | _T_56; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_data = _T_52 | _T_53; // @[Mux.scala 27:73]
  assign auto_out_0_d_ready = in_d_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  assign pool_clock = clock;
  assign pool_reset = reset;
  assign pool_io_free_valid = auto_in_0_e_valid; // @[Decoupled.scala 50:35]
  assign pool_io_free_bits = auto_in_0_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign pool_io_alloc_ready = _pool_io_alloc_ready_T & d_first & d_grant; // @[CacheCork.scala 124:55]
  assign q_clock = clock;
  assign q_reset = reset;
  assign q_io_enq_valid = auto_in_0_c_valid & auto_in_0_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:33]
  assign q_io_enq_bits_opcode = 3'h6; // @[Edges.scala 642:17 643:15]
  assign q_io_enq_bits_param = 2'h0; // @[Edges.scala 642:17 644:15]
  assign q_io_enq_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_io_enq_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_io_enq_bits_sink = 3'h0; // @[Edges.scala 642:17 647:15]
  assign q_io_enq_bits_denied = 1'h0; // @[Edges.scala 642:17 648:15]
  assign q_io_enq_bits_data = 256'h0; // @[Edges.scala 642:17 649:15]
  assign q_io_deq_ready = in_d_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  assign q_1_clock = clock;
  assign q_1_reset = reset;
  assign q_1_io_enq_valid = auto_in_0_a_valid & toD; // @[CacheCork.scala 83:33]
  assign q_1_io_enq_bits_opcode = 3'h4; // @[Edges.scala 614:17 615:15]
  assign q_1_io_enq_bits_param = 2'h0; // @[Edges.scala 614:17 616:15]
  assign q_1_io_enq_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_1_io_enq_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_1_io_enq_bits_sink = 3'h0; // @[Edges.scala 614:17 619:15]
  assign q_1_io_enq_bits_denied = 1'h0; // @[Edges.scala 614:17 620:15]
  assign q_1_io_enq_bits_data = 256'h0; // @[Edges.scala 614:17 621:15]
  assign q_1_io_deq_ready = in_d_ready & allowed_1_2; // @[Arbiter.scala 123:31]
  assign pool_1_clock = clock;
  assign pool_1_reset = reset;
  assign pool_1_io_free_valid = auto_in_1_e_valid; // @[Decoupled.scala 50:35]
  assign pool_1_io_free_bits = auto_in_1_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign pool_1_io_alloc_ready = _pool_io_alloc_ready_T_3 & d_first_1 & d_grant_1; // @[CacheCork.scala 124:55]
  assign q_2_clock = clock;
  assign q_2_reset = reset;
  assign q_2_io_enq_valid = auto_in_1_c_valid & auto_in_1_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:33]
  assign q_2_io_enq_bits_opcode = 3'h6; // @[Edges.scala 642:17 643:15]
  assign q_2_io_enq_bits_param = 2'h0; // @[Edges.scala 642:17 644:15]
  assign q_2_io_enq_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_2_io_enq_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_2_io_enq_bits_sink = 3'h0; // @[Edges.scala 642:17 647:15]
  assign q_2_io_enq_bits_denied = 1'h0; // @[Edges.scala 642:17 648:15]
  assign q_2_io_enq_bits_data = 256'h0; // @[Edges.scala 642:17 649:15]
  assign q_2_io_deq_ready = in_d_1_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  assign q_3_clock = clock;
  assign q_3_reset = reset;
  assign q_3_io_enq_valid = auto_in_1_a_valid & toD_1; // @[CacheCork.scala 83:33]
  assign q_3_io_enq_bits_opcode = 3'h4; // @[Edges.scala 614:17 615:15]
  assign q_3_io_enq_bits_param = 2'h0; // @[Edges.scala 614:17 616:15]
  assign q_3_io_enq_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_3_io_enq_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_3_io_enq_bits_sink = 3'h0; // @[Edges.scala 614:17 619:15]
  assign q_3_io_enq_bits_denied = 1'h0; // @[Edges.scala 614:17 620:15]
  assign q_3_io_enq_bits_data = 256'h0; // @[Edges.scala 614:17 621:15]
  assign q_3_io_deq_ready = in_d_1_ready & allowed_3_2; // @[Arbiter.scala 123:31]
  assign pool_2_clock = clock;
  assign pool_2_reset = reset;
  assign pool_2_io_free_valid = auto_in_2_e_valid; // @[Decoupled.scala 50:35]
  assign pool_2_io_free_bits = auto_in_2_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign pool_2_io_alloc_ready = _pool_io_alloc_ready_T_6 & d_first_2 & d_grant_2; // @[CacheCork.scala 124:55]
  assign q_4_clock = clock;
  assign q_4_reset = reset;
  assign q_4_io_enq_valid = auto_in_2_c_valid & auto_in_2_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:33]
  assign q_4_io_enq_bits_opcode = 3'h6; // @[Edges.scala 642:17 643:15]
  assign q_4_io_enq_bits_param = 2'h0; // @[Edges.scala 642:17 644:15]
  assign q_4_io_enq_bits_size = auto_in_2_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_4_io_enq_bits_source = auto_in_2_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_4_io_enq_bits_sink = 3'h0; // @[Edges.scala 642:17 647:15]
  assign q_4_io_enq_bits_denied = 1'h0; // @[Edges.scala 642:17 648:15]
  assign q_4_io_enq_bits_data = 256'h0; // @[Edges.scala 642:17 649:15]
  assign q_4_io_deq_ready = in_d_2_ready & allowed_5_1; // @[Arbiter.scala 123:31]
  assign q_5_clock = clock;
  assign q_5_reset = reset;
  assign q_5_io_enq_valid = auto_in_2_a_valid & toD_2; // @[CacheCork.scala 83:33]
  assign q_5_io_enq_bits_opcode = 3'h4; // @[Edges.scala 614:17 615:15]
  assign q_5_io_enq_bits_param = 2'h0; // @[Edges.scala 614:17 616:15]
  assign q_5_io_enq_bits_size = auto_in_2_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_5_io_enq_bits_source = auto_in_2_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_5_io_enq_bits_sink = 3'h0; // @[Edges.scala 614:17 619:15]
  assign q_5_io_enq_bits_denied = 1'h0; // @[Edges.scala 614:17 620:15]
  assign q_5_io_enq_bits_data = 256'h0; // @[Edges.scala 614:17 621:15]
  assign q_5_io_deq_ready = in_d_2_ready & allowed_5_2; // @[Arbiter.scala 123:31]
  assign pool_3_clock = clock;
  assign pool_3_reset = reset;
  assign pool_3_io_free_valid = auto_in_3_e_valid; // @[Decoupled.scala 50:35]
  assign pool_3_io_free_bits = auto_in_3_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign pool_3_io_alloc_ready = _pool_io_alloc_ready_T_9 & d_first_3 & d_grant_3; // @[CacheCork.scala 124:55]
  assign q_6_clock = clock;
  assign q_6_reset = reset;
  assign q_6_io_enq_valid = auto_in_3_c_valid & auto_in_3_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:33]
  assign q_6_io_enq_bits_opcode = 3'h6; // @[Edges.scala 642:17 643:15]
  assign q_6_io_enq_bits_param = 2'h0; // @[Edges.scala 642:17 644:15]
  assign q_6_io_enq_bits_size = auto_in_3_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_6_io_enq_bits_source = auto_in_3_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_6_io_enq_bits_sink = 3'h0; // @[Edges.scala 642:17 647:15]
  assign q_6_io_enq_bits_denied = 1'h0; // @[Edges.scala 642:17 648:15]
  assign q_6_io_enq_bits_data = 256'h0; // @[Edges.scala 642:17 649:15]
  assign q_6_io_deq_ready = in_d_3_ready & allowed_7_1; // @[Arbiter.scala 123:31]
  assign q_7_clock = clock;
  assign q_7_reset = reset;
  assign q_7_io_enq_valid = auto_in_3_a_valid & toD_3; // @[CacheCork.scala 83:33]
  assign q_7_io_enq_bits_opcode = 3'h4; // @[Edges.scala 614:17 615:15]
  assign q_7_io_enq_bits_param = 2'h0; // @[Edges.scala 614:17 616:15]
  assign q_7_io_enq_bits_size = auto_in_3_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_7_io_enq_bits_source = auto_in_3_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_7_io_enq_bits_sink = 3'h0; // @[Edges.scala 614:17 619:15]
  assign q_7_io_enq_bits_denied = 1'h0; // @[Edges.scala 614:17 620:15]
  assign q_7_io_enq_bits_data = 256'h0; // @[Edges.scala 614:17 621:15]
  assign q_7_io_deq_ready = in_d_3_ready & allowed_7_2; // @[Arbiter.scala 123:31]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__1 <= earlyWinner__1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__0 <= earlyWinner__0;
    end
    if (reset) begin // @[Edges.scala 228:27]
      d_first_counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_d_first_T) begin // @[Edges.scala 234:17]
      if (d_first) begin // @[Edges.scala 235:21]
        d_first_counter <= d_first_beats1;
      end else begin
        d_first_counter <= d_first_counter1;
      end
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_1 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_1) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= maskedBeats_0_1;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _d_first_T;
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
    if (d_first) begin // @[Reg.scala 17:18]
      bundleIn_0_d_bits_sink_r <= pool_io_alloc_bits; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_2 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_2) begin // @[Arbiter.scala 113:23]
      beatsLeft_2 <= initBeats_2;
    end else begin
      beatsLeft_2 <= beatsLeft_2 - _beatsLeft_T_14;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_1 <= earlyWinner_2_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_0 <= earlyWinner_2_0;
    end
    if (reset) begin // @[Edges.scala 228:27]
      d_first_counter_1 <= 1'h0; // @[Edges.scala 228:27]
    end else if (_d_first_T_1) begin // @[Edges.scala 234:17]
      if (d_first_1) begin // @[Edges.scala 235:21]
        d_first_counter_1 <= d_first_beats1_1;
      end else begin
        d_first_counter_1 <= d_first_counter1_1;
      end
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_3 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_3) begin // @[Arbiter.scala 113:23]
      beatsLeft_3 <= maskedBeats_0_3;
    end else begin
      beatsLeft_3 <= beatsLeft_3 - _d_first_T_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_0 <= earlyWinner_3_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_1 <= earlyWinner_3_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_2 <= earlyWinner_3_2;
    end
    if (d_first_1) begin // @[Reg.scala 17:18]
      bundleIn_1_d_bits_sink_r <= pool_1_io_alloc_bits; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_4 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_4) begin // @[Arbiter.scala 113:23]
      beatsLeft_4 <= initBeats_4;
    end else begin
      beatsLeft_4 <= beatsLeft_4 - _beatsLeft_T_26;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_1 <= earlyWinner_4_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_0 <= earlyWinner_4_0;
    end
    if (reset) begin // @[Edges.scala 228:27]
      d_first_counter_2 <= 1'h0; // @[Edges.scala 228:27]
    end else if (_d_first_T_2) begin // @[Edges.scala 234:17]
      if (d_first_2) begin // @[Edges.scala 235:21]
        d_first_counter_2 <= d_first_beats1_2;
      end else begin
        d_first_counter_2 <= d_first_counter1_2;
      end
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_5 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_5) begin // @[Arbiter.scala 113:23]
      beatsLeft_5 <= maskedBeats_0_5;
    end else begin
      beatsLeft_5 <= beatsLeft_5 - _d_first_T_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_0 <= earlyWinner_5_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_1 <= earlyWinner_5_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_2 <= earlyWinner_5_2;
    end
    if (d_first_2) begin // @[Reg.scala 17:18]
      bundleIn_2_d_bits_sink_r <= pool_2_io_alloc_bits; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_6 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_6) begin // @[Arbiter.scala 113:23]
      beatsLeft_6 <= initBeats_6;
    end else begin
      beatsLeft_6 <= beatsLeft_6 - _beatsLeft_T_38;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_1 <= earlyWinner_6_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_0 <= earlyWinner_6_0;
    end
    if (reset) begin // @[Edges.scala 228:27]
      d_first_counter_3 <= 1'h0; // @[Edges.scala 228:27]
    end else if (_d_first_T_3) begin // @[Edges.scala 234:17]
      if (d_first_3) begin // @[Edges.scala 235:21]
        d_first_counter_3 <= d_first_beats1_3;
      end else begin
        d_first_counter_3 <= d_first_counter1_3;
      end
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_7 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_7) begin // @[Arbiter.scala 113:23]
      beatsLeft_7 <= maskedBeats_0_7;
    end else begin
      beatsLeft_7 <= beatsLeft_7 - _d_first_T_3;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_7) begin // @[Arbiter.scala 117:30]
      state_7_0 <= earlyWinner_7_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_7) begin // @[Arbiter.scala 117:30]
      state_7_1 <= earlyWinner_7_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_7) begin // @[Arbiter.scala 117:30]
      state_7_2 <= earlyWinner_7_2;
    end
    if (d_first_3) begin // @[Reg.scala 17:18]
      bundleIn_3_d_bits_sink_r <= pool_3_io_alloc_bits; // @[Reg.scala 17:22]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  state__1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  d_first_counter = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_1_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_1_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_1_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  bundleIn_0_d_bits_sink_r = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  beatsLeft_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_2_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_2_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  d_first_counter_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  beatsLeft_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  state_3_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_3_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  state_3_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  bundleIn_1_d_bits_sink_r = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  beatsLeft_4 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  state_4_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  state_4_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  d_first_counter_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  beatsLeft_5 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  state_5_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  state_5_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  state_5_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  bundleIn_2_d_bits_sink_r = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  beatsLeft_6 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  state_6_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  state_6_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  d_first_counter_3 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  beatsLeft_7 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  state_7_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  state_7_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  state_7_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  bundleIn_3_d_bits_sink_r = _RAND_35[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
