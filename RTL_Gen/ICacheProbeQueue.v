module ICacheProbeQueue(
  input          clock,
  input          reset,
  output         io_mem_probe_ready,
  input          io_mem_probe_valid,
  input  [1:0]   io_mem_probe_bits_param,
  input  [35:0]  io_mem_probe_bits_address,
  input  [255:0] io_mem_probe_bits_data,
  input          io_pipe_req_ready,
  output         io_pipe_req_valid,
  output [35:0]  io_pipe_req_bits_paddr,
  output [38:0]  io_pipe_req_bits_vaddr,
  output [2:0]   io_pipe_req_bits_param,
  output         io_pipe_req_bits_needData,
  output [4:0]   io_pipe_req_bits_id
);
  wire  pipe_req_arb_clock; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_0_ready; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_0_valid; // @[ICacheProbeUnit.scala 89:28]
  wire [35:0] pipe_req_arb_io_in_0_bits_paddr; // @[ICacheProbeUnit.scala 89:28]
  wire [38:0] pipe_req_arb_io_in_0_bits_vaddr; // @[ICacheProbeUnit.scala 89:28]
  wire [2:0] pipe_req_arb_io_in_0_bits_param; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_0_bits_needData; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_1_ready; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_1_valid; // @[ICacheProbeUnit.scala 89:28]
  wire [35:0] pipe_req_arb_io_in_1_bits_paddr; // @[ICacheProbeUnit.scala 89:28]
  wire [38:0] pipe_req_arb_io_in_1_bits_vaddr; // @[ICacheProbeUnit.scala 89:28]
  wire [2:0] pipe_req_arb_io_in_1_bits_param; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_in_1_bits_needData; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_out_ready; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_out_valid; // @[ICacheProbeUnit.scala 89:28]
  wire [35:0] pipe_req_arb_io_out_bits_paddr; // @[ICacheProbeUnit.scala 89:28]
  wire [38:0] pipe_req_arb_io_out_bits_vaddr; // @[ICacheProbeUnit.scala 89:28]
  wire [2:0] pipe_req_arb_io_out_bits_param; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_out_bits_needData; // @[ICacheProbeUnit.scala 89:28]
  wire [4:0] pipe_req_arb_io_out_bits_id; // @[ICacheProbeUnit.scala 89:28]
  wire  pipe_req_arb_io_chosen; // @[ICacheProbeUnit.scala 89:28]
  wire  entries_0_clock; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_reset; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_req_ready; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_req_valid; // @[ICacheProbeUnit.scala 119:23]
  wire [35:0] entries_0_io_req_bits_addr; // @[ICacheProbeUnit.scala 119:23]
  wire [38:0] entries_0_io_req_bits_vaddr; // @[ICacheProbeUnit.scala 119:23]
  wire [1:0] entries_0_io_req_bits_param; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_req_bits_needData; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_pipe_req_ready; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_pipe_req_valid; // @[ICacheProbeUnit.scala 119:23]
  wire [35:0] entries_0_io_pipe_req_bits_paddr; // @[ICacheProbeUnit.scala 119:23]
  wire [38:0] entries_0_io_pipe_req_bits_vaddr; // @[ICacheProbeUnit.scala 119:23]
  wire [2:0] entries_0_io_pipe_req_bits_param; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_0_io_pipe_req_bits_needData; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_clock; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_reset; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_req_ready; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_req_valid; // @[ICacheProbeUnit.scala 119:23]
  wire [35:0] entries_1_io_req_bits_addr; // @[ICacheProbeUnit.scala 119:23]
  wire [38:0] entries_1_io_req_bits_vaddr; // @[ICacheProbeUnit.scala 119:23]
  wire [1:0] entries_1_io_req_bits_param; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_req_bits_needData; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_pipe_req_ready; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_pipe_req_valid; // @[ICacheProbeUnit.scala 119:23]
  wire [35:0] entries_1_io_pipe_req_bits_paddr; // @[ICacheProbeUnit.scala 119:23]
  wire [38:0] entries_1_io_pipe_req_bits_vaddr; // @[ICacheProbeUnit.scala 119:23]
  wire [2:0] entries_1_io_pipe_req_bits_param; // @[ICacheProbeUnit.scala 119:23]
  wire  entries_1_io_pipe_req_bits_needData; // @[ICacheProbeUnit.scala 119:23]
  wire  primary_ready_1 = entries_1_io_req_ready; // @[ICacheProbeUnit.scala 123:24 92:28]
  wire  primary_ready_0 = entries_0_io_req_ready; // @[ICacheProbeUnit.scala 123:24 92:28]
  wire [1:0] _allocate_T = {primary_ready_1,primary_ready_0}; // @[ICacheProbeUnit.scala 93:32]
  wire  allocate = |_allocate_T; // @[ICacheProbeUnit.scala 93:39]
  wire  alloc_idx = primary_ready_0 ? 1'h0 : 1'h1; // @[Mux.scala 47:70]
  wire [1:0] alias_addr_frag = io_mem_probe_bits_data[2:1]; // @[ICacheProbeUnit.scala 98:47]
  wire [35:0] _req_vaddr_T_3 = {io_mem_probe_bits_address[35:14],alias_addr_frag,io_mem_probe_bits_address[11:0]}; // @[Cat.scala 31:58]
  RRArbiter pipe_req_arb ( // @[ICacheProbeUnit.scala 89:28]
    .clock(pipe_req_arb_clock),
    .io_in_0_ready(pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_paddr(pipe_req_arb_io_in_0_bits_paddr),
    .io_in_0_bits_vaddr(pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_param(pipe_req_arb_io_in_0_bits_param),
    .io_in_0_bits_needData(pipe_req_arb_io_in_0_bits_needData),
    .io_in_1_ready(pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_paddr(pipe_req_arb_io_in_1_bits_paddr),
    .io_in_1_bits_vaddr(pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_param(pipe_req_arb_io_in_1_bits_param),
    .io_in_1_bits_needData(pipe_req_arb_io_in_1_bits_needData),
    .io_out_ready(pipe_req_arb_io_out_ready),
    .io_out_valid(pipe_req_arb_io_out_valid),
    .io_out_bits_paddr(pipe_req_arb_io_out_bits_paddr),
    .io_out_bits_vaddr(pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_param(pipe_req_arb_io_out_bits_param),
    .io_out_bits_needData(pipe_req_arb_io_out_bits_needData),
    .io_out_bits_id(pipe_req_arb_io_out_bits_id),
    .io_chosen(pipe_req_arb_io_chosen)
  );
  ICacheProbeEntry entries_0 ( // @[ICacheProbeUnit.scala 119:23]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_vaddr(entries_0_io_req_bits_vaddr),
    .io_req_bits_param(entries_0_io_req_bits_param),
    .io_req_bits_needData(entries_0_io_req_bits_needData),
    .io_pipe_req_ready(entries_0_io_pipe_req_ready),
    .io_pipe_req_valid(entries_0_io_pipe_req_valid),
    .io_pipe_req_bits_paddr(entries_0_io_pipe_req_bits_paddr),
    .io_pipe_req_bits_vaddr(entries_0_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_param(entries_0_io_pipe_req_bits_param),
    .io_pipe_req_bits_needData(entries_0_io_pipe_req_bits_needData)
  );
  ICacheProbeEntry_1 entries_1 ( // @[ICacheProbeUnit.scala 119:23]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_req_ready(entries_1_io_req_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_vaddr(entries_1_io_req_bits_vaddr),
    .io_req_bits_param(entries_1_io_req_bits_param),
    .io_req_bits_needData(entries_1_io_req_bits_needData),
    .io_pipe_req_ready(entries_1_io_pipe_req_ready),
    .io_pipe_req_valid(entries_1_io_pipe_req_valid),
    .io_pipe_req_bits_paddr(entries_1_io_pipe_req_bits_paddr),
    .io_pipe_req_bits_vaddr(entries_1_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_param(entries_1_io_pipe_req_bits_param),
    .io_pipe_req_bits_needData(entries_1_io_pipe_req_bits_needData)
  );
  assign io_mem_probe_ready = |_allocate_T; // @[ICacheProbeUnit.scala 93:39]
  assign io_pipe_req_valid = pipe_req_arb_io_out_valid; // @[ICacheProbeUnit.scala 132:15]
  assign io_pipe_req_bits_paddr = pipe_req_arb_io_out_bits_paddr; // @[ICacheProbeUnit.scala 132:15]
  assign io_pipe_req_bits_vaddr = pipe_req_arb_io_out_bits_vaddr; // @[ICacheProbeUnit.scala 132:15]
  assign io_pipe_req_bits_param = pipe_req_arb_io_out_bits_param; // @[ICacheProbeUnit.scala 132:15]
  assign io_pipe_req_bits_needData = pipe_req_arb_io_out_bits_needData; // @[ICacheProbeUnit.scala 132:15]
  assign io_pipe_req_bits_id = pipe_req_arb_io_out_bits_id; // @[ICacheProbeUnit.scala 132:15]
  assign pipe_req_arb_clock = clock;
  assign pipe_req_arb_io_in_0_valid = entries_0_io_pipe_req_valid; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_0_bits_paddr = entries_0_io_pipe_req_bits_paddr; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_0_bits_vaddr = entries_0_io_pipe_req_bits_vaddr; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_0_bits_param = entries_0_io_pipe_req_bits_param; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_0_bits_needData = entries_0_io_pipe_req_bits_needData; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_1_valid = entries_1_io_pipe_req_valid; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_1_bits_paddr = entries_1_io_pipe_req_bits_paddr; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_1_bits_vaddr = entries_1_io_pipe_req_bits_vaddr; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_1_bits_param = entries_1_io_pipe_req_bits_param; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_in_1_bits_needData = entries_1_io_pipe_req_bits_needData; // @[ICacheProbeUnit.scala 127:27]
  assign pipe_req_arb_io_out_ready = io_pipe_req_ready; // @[ICacheProbeUnit.scala 132:15]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_req_valid = ~alloc_idx & allocate & io_mem_probe_valid; // @[ICacheProbeUnit.scala 122:59]
  assign entries_0_io_req_bits_addr = io_mem_probe_bits_address; // @[ICacheProbeUnit.scala 101:12 97:17]
  assign entries_0_io_req_bits_vaddr = {{3'd0}, _req_vaddr_T_3}; // @[ICacheProbeUnit.scala 104:15 97:17]
  assign entries_0_io_req_bits_param = io_mem_probe_bits_param; // @[ICacheProbeUnit.scala 113:13 97:17]
  assign entries_0_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[ICacheProbeUnit.scala 114:41]
  assign entries_0_io_pipe_req_ready = pipe_req_arb_io_in_0_ready; // @[ICacheProbeUnit.scala 127:27]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_req_valid = alloc_idx & allocate & io_mem_probe_valid; // @[ICacheProbeUnit.scala 122:59]
  assign entries_1_io_req_bits_addr = io_mem_probe_bits_address; // @[ICacheProbeUnit.scala 101:12 97:17]
  assign entries_1_io_req_bits_vaddr = {{3'd0}, _req_vaddr_T_3}; // @[ICacheProbeUnit.scala 104:15 97:17]
  assign entries_1_io_req_bits_param = io_mem_probe_bits_param; // @[ICacheProbeUnit.scala 113:13 97:17]
  assign entries_1_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[ICacheProbeUnit.scala 114:41]
  assign entries_1_io_pipe_req_ready = pipe_req_arb_io_in_1_ready; // @[ICacheProbeUnit.scala 127:27]
endmodule
