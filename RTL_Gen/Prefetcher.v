module Prefetcher(
  input         clock,
  input         reset,
  output        io_train_ready,
  input         io_train_valid,
  input  [21:0] io_train_bits_tag,
  input  [7:0]  io_train_bits_set,
  input         io_train_bits_needT,
  input  [5:0]  io_train_bits_source,
  input         io_req_ready,
  output        io_req_valid,
  output [21:0] io_req_bits_tag,
  output [7:0]  io_req_bits_set,
  output        io_req_bits_needT,
  output [5:0]  io_req_bits_source,
  output        io_resp_ready,
  input         io_resp_valid,
  input  [21:0] io_resp_bits_tag,
  input  [7:0]  io_resp_bits_set
);
  wire  pft_clock; // @[Prefetcher.scala 83:23]
  wire  pft_reset; // @[Prefetcher.scala 83:23]
  wire  pft_io_train_ready; // @[Prefetcher.scala 83:23]
  wire  pft_io_train_valid; // @[Prefetcher.scala 83:23]
  wire [21:0] pft_io_train_bits_tag; // @[Prefetcher.scala 83:23]
  wire [7:0] pft_io_train_bits_set; // @[Prefetcher.scala 83:23]
  wire  pft_io_train_bits_needT; // @[Prefetcher.scala 83:23]
  wire [5:0] pft_io_train_bits_source; // @[Prefetcher.scala 83:23]
  wire  pft_io_req_valid; // @[Prefetcher.scala 83:23]
  wire [21:0] pft_io_req_bits_tag; // @[Prefetcher.scala 83:23]
  wire [7:0] pft_io_req_bits_set; // @[Prefetcher.scala 83:23]
  wire  pft_io_req_bits_needT; // @[Prefetcher.scala 83:23]
  wire [5:0] pft_io_req_bits_source; // @[Prefetcher.scala 83:23]
  wire  pft_io_resp_ready; // @[Prefetcher.scala 83:23]
  wire  pft_io_resp_valid; // @[Prefetcher.scala 83:23]
  wire [21:0] pft_io_resp_bits_tag; // @[Prefetcher.scala 83:23]
  wire [7:0] pft_io_resp_bits_set; // @[Prefetcher.scala 83:23]
  wire  pftQueue_clock; // @[Prefetcher.scala 84:28]
  wire  pftQueue_reset; // @[Prefetcher.scala 84:28]
  wire  pftQueue_io_enq_valid; // @[Prefetcher.scala 84:28]
  wire [21:0] pftQueue_io_enq_bits_tag; // @[Prefetcher.scala 84:28]
  wire [7:0] pftQueue_io_enq_bits_set; // @[Prefetcher.scala 84:28]
  wire  pftQueue_io_enq_bits_needT; // @[Prefetcher.scala 84:28]
  wire [5:0] pftQueue_io_enq_bits_source; // @[Prefetcher.scala 84:28]
  wire  pftQueue_io_deq_ready; // @[Prefetcher.scala 84:28]
  wire  pftQueue_io_deq_valid; // @[Prefetcher.scala 84:28]
  wire [21:0] pftQueue_io_deq_bits_tag; // @[Prefetcher.scala 84:28]
  wire [7:0] pftQueue_io_deq_bits_set; // @[Prefetcher.scala 84:28]
  wire  pftQueue_io_deq_bits_needT; // @[Prefetcher.scala 84:28]
  wire [5:0] pftQueue_io_deq_bits_source; // @[Prefetcher.scala 84:28]
  wire  pipe_clock; // @[Prefetcher.scala 85:24]
  wire  pipe_reset; // @[Prefetcher.scala 85:24]
  wire  pipe_io_in_ready; // @[Prefetcher.scala 85:24]
  wire  pipe_io_in_valid; // @[Prefetcher.scala 85:24]
  wire [21:0] pipe_io_in_bits_tag; // @[Prefetcher.scala 85:24]
  wire [7:0] pipe_io_in_bits_set; // @[Prefetcher.scala 85:24]
  wire  pipe_io_in_bits_needT; // @[Prefetcher.scala 85:24]
  wire [5:0] pipe_io_in_bits_source; // @[Prefetcher.scala 85:24]
  wire  pipe_io_out_ready; // @[Prefetcher.scala 85:24]
  wire  pipe_io_out_valid; // @[Prefetcher.scala 85:24]
  wire [21:0] pipe_io_out_bits_tag; // @[Prefetcher.scala 85:24]
  wire [7:0] pipe_io_out_bits_set; // @[Prefetcher.scala 85:24]
  wire  pipe_io_out_bits_needT; // @[Prefetcher.scala 85:24]
  wire [5:0] pipe_io_out_bits_source; // @[Prefetcher.scala 85:24]
  BestOffsetPrefetch pft ( // @[Prefetcher.scala 83:23]
    .clock(pft_clock),
    .reset(pft_reset),
    .io_train_ready(pft_io_train_ready),
    .io_train_valid(pft_io_train_valid),
    .io_train_bits_tag(pft_io_train_bits_tag),
    .io_train_bits_set(pft_io_train_bits_set),
    .io_train_bits_needT(pft_io_train_bits_needT),
    .io_train_bits_source(pft_io_train_bits_source),
    .io_req_valid(pft_io_req_valid),
    .io_req_bits_tag(pft_io_req_bits_tag),
    .io_req_bits_set(pft_io_req_bits_set),
    .io_req_bits_needT(pft_io_req_bits_needT),
    .io_req_bits_source(pft_io_req_bits_source),
    .io_resp_ready(pft_io_resp_ready),
    .io_resp_valid(pft_io_resp_valid),
    .io_resp_bits_tag(pft_io_resp_bits_tag),
    .io_resp_bits_set(pft_io_resp_bits_set)
  );
  PrefetchQueue pftQueue ( // @[Prefetcher.scala 84:28]
    .clock(pftQueue_clock),
    .reset(pftQueue_reset),
    .io_enq_valid(pftQueue_io_enq_valid),
    .io_enq_bits_tag(pftQueue_io_enq_bits_tag),
    .io_enq_bits_set(pftQueue_io_enq_bits_set),
    .io_enq_bits_needT(pftQueue_io_enq_bits_needT),
    .io_enq_bits_source(pftQueue_io_enq_bits_source),
    .io_deq_ready(pftQueue_io_deq_ready),
    .io_deq_valid(pftQueue_io_deq_valid),
    .io_deq_bits_tag(pftQueue_io_deq_bits_tag),
    .io_deq_bits_set(pftQueue_io_deq_bits_set),
    .io_deq_bits_needT(pftQueue_io_deq_bits_needT),
    .io_deq_bits_source(pftQueue_io_deq_bits_source)
  );
  Pipeline pipe ( // @[Prefetcher.scala 85:24]
    .clock(pipe_clock),
    .reset(pipe_reset),
    .io_in_ready(pipe_io_in_ready),
    .io_in_valid(pipe_io_in_valid),
    .io_in_bits_tag(pipe_io_in_bits_tag),
    .io_in_bits_set(pipe_io_in_bits_set),
    .io_in_bits_needT(pipe_io_in_bits_needT),
    .io_in_bits_source(pipe_io_in_bits_source),
    .io_out_ready(pipe_io_out_ready),
    .io_out_valid(pipe_io_out_valid),
    .io_out_bits_tag(pipe_io_out_bits_tag),
    .io_out_bits_set(pipe_io_out_bits_set),
    .io_out_bits_needT(pipe_io_out_bits_needT),
    .io_out_bits_source(pipe_io_out_bits_source)
  );
  assign io_train_ready = pft_io_train_ready; // @[Prefetcher.scala 86:20]
  assign io_req_valid = pipe_io_out_valid; // @[Prefetcher.scala 90:14]
  assign io_req_bits_tag = pipe_io_out_bits_tag; // @[Prefetcher.scala 90:14]
  assign io_req_bits_set = pipe_io_out_bits_set; // @[Prefetcher.scala 90:14]
  assign io_req_bits_needT = pipe_io_out_bits_needT; // @[Prefetcher.scala 90:14]
  assign io_req_bits_source = pipe_io_out_bits_source; // @[Prefetcher.scala 90:14]
  assign io_resp_ready = pft_io_resp_ready; // @[Prefetcher.scala 87:19]
  assign pft_clock = clock;
  assign pft_reset = reset;
  assign pft_io_train_valid = io_train_valid; // @[Prefetcher.scala 86:20]
  assign pft_io_train_bits_tag = io_train_bits_tag; // @[Prefetcher.scala 86:20]
  assign pft_io_train_bits_set = io_train_bits_set; // @[Prefetcher.scala 86:20]
  assign pft_io_train_bits_needT = io_train_bits_needT; // @[Prefetcher.scala 86:20]
  assign pft_io_train_bits_source = io_train_bits_source; // @[Prefetcher.scala 86:20]
  assign pft_io_resp_valid = io_resp_valid; // @[Prefetcher.scala 87:19]
  assign pft_io_resp_bits_tag = io_resp_bits_tag; // @[Prefetcher.scala 87:19]
  assign pft_io_resp_bits_set = io_resp_bits_set; // @[Prefetcher.scala 87:19]
  assign pftQueue_clock = clock;
  assign pftQueue_reset = reset;
  assign pftQueue_io_enq_valid = pft_io_req_valid; // @[Prefetcher.scala 88:23]
  assign pftQueue_io_enq_bits_tag = pft_io_req_bits_tag; // @[Prefetcher.scala 88:23]
  assign pftQueue_io_enq_bits_set = pft_io_req_bits_set; // @[Prefetcher.scala 88:23]
  assign pftQueue_io_enq_bits_needT = pft_io_req_bits_needT; // @[Prefetcher.scala 88:23]
  assign pftQueue_io_enq_bits_source = pft_io_req_bits_source; // @[Prefetcher.scala 88:23]
  assign pftQueue_io_deq_ready = pipe_io_in_ready; // @[Prefetcher.scala 89:18]
  assign pipe_clock = clock;
  assign pipe_reset = reset;
  assign pipe_io_in_valid = pftQueue_io_deq_valid; // @[Prefetcher.scala 89:18]
  assign pipe_io_in_bits_tag = pftQueue_io_deq_bits_tag; // @[Prefetcher.scala 89:18]
  assign pipe_io_in_bits_set = pftQueue_io_deq_bits_set; // @[Prefetcher.scala 89:18]
  assign pipe_io_in_bits_needT = pftQueue_io_deq_bits_needT; // @[Prefetcher.scala 89:18]
  assign pipe_io_in_bits_source = pftQueue_io_deq_bits_source; // @[Prefetcher.scala 89:18]
  assign pipe_io_out_ready = io_req_ready; // @[Prefetcher.scala 90:14]
endmodule
