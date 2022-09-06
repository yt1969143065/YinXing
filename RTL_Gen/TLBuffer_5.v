module TLBuffer_5(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_size,
  input  [7:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [1:0]   auto_in_d_bits_param,
  output [2:0]   auto_in_d_bits_size,
  output [7:0]   auto_in_d_bits_source,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [7:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [7:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data
);
  wire  bundleOut_0_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [35:0] bundleOut_0_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [255:0] bundleOut_0_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] bundleIn_0_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [7:0] bundleIn_0_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] bundleIn_0_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  Queue_111 bundleOut_0_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_a_q_clock),
    .reset(bundleOut_0_a_q_reset),
    .io_enq_ready(bundleOut_0_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_a_q_io_enq_bits_opcode),
    .io_enq_bits_size(bundleOut_0_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_a_q_io_enq_bits_address),
    .io_enq_bits_mask(bundleOut_0_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_0_a_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_0_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_a_q_io_deq_bits_opcode),
    .io_deq_bits_size(bundleOut_0_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_a_q_io_deq_bits_address),
    .io_deq_bits_mask(bundleOut_0_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_0_a_q_io_deq_bits_data)
  );
  Queue_112 bundleIn_0_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_d_q_clock),
    .reset(bundleIn_0_d_q_reset),
    .io_enq_ready(bundleIn_0_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_0_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_0_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(bundleIn_0_d_q_io_enq_bits_param),
    .io_enq_bits_size(bundleIn_0_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_0_d_q_io_enq_bits_source),
    .io_enq_bits_denied(bundleIn_0_d_q_io_enq_bits_denied),
    .io_enq_bits_data(bundleIn_0_d_q_io_enq_bits_data),
    .io_deq_ready(bundleIn_0_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_0_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_0_d_q_io_deq_bits_source),
    .io_deq_bits_denied(bundleIn_0_d_q_io_deq_bits_denied),
    .io_deq_bits_data(bundleIn_0_d_q_io_deq_bits_data)
  );
  assign auto_in_a_ready = bundleOut_0_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_d_valid = bundleIn_0_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_opcode = bundleIn_0_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_param = bundleIn_0_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_size = bundleIn_0_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_source = bundleIn_0_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_denied = bundleIn_0_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_data = bundleIn_0_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_out_a_valid = bundleOut_0_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_opcode = bundleOut_0_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_size = bundleOut_0_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_source = bundleOut_0_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_address = bundleOut_0_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_mask = bundleOut_0_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_data = bundleOut_0_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_d_ready = bundleIn_0_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign bundleOut_0_a_q_clock = clock;
  assign bundleOut_0_a_q_reset = reset;
  assign bundleOut_0_a_q_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_clock = clock;
  assign bundleIn_0_d_q_reset = reset;
  assign bundleIn_0_d_q_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
