module Uncache(
  input         clock,
  input         reset,
  input         auto_client_out_a_ready,
  output        auto_client_out_a_valid,
  output [2:0]  auto_client_out_a_bits_opcode,
  output [2:0]  auto_client_out_a_bits_size,
  output [35:0] auto_client_out_a_bits_address,
  output [7:0]  auto_client_out_a_bits_mask,
  output [63:0] auto_client_out_a_bits_data,
  output        auto_client_out_d_ready,
  input         auto_client_out_d_valid,
  input         auto_client_out_d_bits_source,
  input  [63:0] auto_client_out_d_bits_data,
  output        io_lsq_req_ready,
  input         io_lsq_req_valid,
  input  [4:0]  io_lsq_req_bits_cmd,
  input  [35:0] io_lsq_req_bits_addr,
  input  [63:0] io_lsq_req_bits_data,
  input  [7:0]  io_lsq_req_bits_mask,
  output        io_lsq_resp_valid,
  output [63:0] io_lsq_resp_bits_data
);
  wire  resp_arb_io_in_0_valid; // @[Uncache.scala 169:24]
  wire [63:0] resp_arb_io_in_0_bits_data; // @[Uncache.scala 169:24]
  wire  resp_arb_io_out_valid; // @[Uncache.scala 169:24]
  wire [63:0] resp_arb_io_out_bits_data; // @[Uncache.scala 169:24]
  wire  entries_0_clock; // @[Uncache.scala 189:23]
  wire  entries_0_reset; // @[Uncache.scala 189:23]
  wire  entries_0_io_req_ready; // @[Uncache.scala 189:23]
  wire  entries_0_io_req_valid; // @[Uncache.scala 189:23]
  wire [4:0] entries_0_io_req_bits_cmd; // @[Uncache.scala 189:23]
  wire [35:0] entries_0_io_req_bits_addr; // @[Uncache.scala 189:23]
  wire [63:0] entries_0_io_req_bits_data; // @[Uncache.scala 189:23]
  wire [7:0] entries_0_io_req_bits_mask; // @[Uncache.scala 189:23]
  wire  entries_0_io_resp_valid; // @[Uncache.scala 189:23]
  wire [63:0] entries_0_io_resp_bits_data; // @[Uncache.scala 189:23]
  wire  entries_0_io_mem_acquire_ready; // @[Uncache.scala 189:23]
  wire  entries_0_io_mem_acquire_valid; // @[Uncache.scala 189:23]
  wire [2:0] entries_0_io_mem_acquire_bits_opcode; // @[Uncache.scala 189:23]
  wire [2:0] entries_0_io_mem_acquire_bits_size; // @[Uncache.scala 189:23]
  wire [35:0] entries_0_io_mem_acquire_bits_address; // @[Uncache.scala 189:23]
  wire [7:0] entries_0_io_mem_acquire_bits_mask; // @[Uncache.scala 189:23]
  wire [63:0] entries_0_io_mem_acquire_bits_data; // @[Uncache.scala 189:23]
  wire  entries_0_io_mem_grant_ready; // @[Uncache.scala 189:23]
  wire  entries_0_io_mem_grant_valid; // @[Uncache.scala 189:23]
  wire [63:0] entries_0_io_mem_grant_bits_data; // @[Uncache.scala 189:23]
  Arbiter_30 resp_arb ( // @[Uncache.scala 169:24]
    .io_in_0_valid(resp_arb_io_in_0_valid),
    .io_in_0_bits_data(resp_arb_io_in_0_bits_data),
    .io_out_valid(resp_arb_io_out_valid),
    .io_out_bits_data(resp_arb_io_out_bits_data)
  );
  MMIOEntry entries_0 ( // @[Uncache.scala 189:23]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_cmd(entries_0_io_req_bits_cmd),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_data(entries_0_io_req_bits_data),
    .io_req_bits_mask(entries_0_io_req_bits_mask),
    .io_resp_valid(entries_0_io_resp_valid),
    .io_resp_bits_data(entries_0_io_resp_bits_data),
    .io_mem_acquire_ready(entries_0_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_0_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_0_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(entries_0_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_address(entries_0_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_mask(entries_0_io_mem_acquire_bits_mask),
    .io_mem_acquire_bits_data(entries_0_io_mem_acquire_bits_data),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_mem_grant_bits_data(entries_0_io_mem_grant_bits_data)
  );
  assign auto_client_out_a_valid = entries_0_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  assign auto_client_out_a_bits_opcode = entries_0_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_a_bits_size = entries_0_io_mem_acquire_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_a_bits_address = entries_0_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_a_bits_mask = entries_0_io_mem_acquire_bits_mask; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_a_bits_data = entries_0_io_mem_acquire_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  assign auto_client_out_d_ready = ~auto_client_out_d_bits_source & entries_0_io_mem_grant_ready; // @[Uncache.scala 183:15 205:42 206:26]
  assign io_lsq_req_ready = entries_0_io_req_ready; // @[Uncache.scala 196:36 197:17]
  assign io_lsq_resp_valid = resp_arb_io_out_valid; // @[Uncache.scala 214:17]
  assign io_lsq_resp_bits_data = resp_arb_io_out_bits_data; // @[Uncache.scala 214:17]
  assign resp_arb_io_in_0_valid = entries_0_io_resp_valid; // @[Uncache.scala 201:23]
  assign resp_arb_io_in_0_bits_data = entries_0_io_resp_bits_data; // @[Uncache.scala 201:23]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_req_valid = io_lsq_req_valid; // @[Uncache.scala 194:53]
  assign entries_0_io_req_bits_cmd = io_lsq_req_bits_cmd; // @[Uncache.scala 195:24]
  assign entries_0_io_req_bits_addr = io_lsq_req_bits_addr; // @[Uncache.scala 195:24]
  assign entries_0_io_req_bits_data = io_lsq_req_bits_data; // @[Uncache.scala 195:24]
  assign entries_0_io_req_bits_mask = io_lsq_req_bits_mask; // @[Uncache.scala 195:24]
  assign entries_0_io_mem_acquire_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_0_io_mem_grant_valid = ~auto_client_out_d_bits_source & auto_client_out_d_valid; // @[Uncache.scala 205:42 206:26 203:30]
  assign entries_0_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule
