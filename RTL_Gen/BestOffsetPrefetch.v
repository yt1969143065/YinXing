module BestOffsetPrefetch(
  input         clock,
  input         reset,
  output        io_train_ready,
  input         io_train_valid,
  input  [21:0] io_train_bits_tag,
  input  [7:0]  io_train_bits_set,
  input         io_train_bits_needT,
  input  [5:0]  io_train_bits_source,
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
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  rrTable_clock; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_reset; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_wready; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_wvalid; // @[BestOffsetPrefetch.scala 218:23]
  wire [35:0] rrTable_io_wbits; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_rreq_ready; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_rreq_valid; // @[BestOffsetPrefetch.scala 218:23]
  wire [35:0] rrTable_io_rreq_bits_addr; // @[BestOffsetPrefetch.scala 218:23]
  wire [4:0] rrTable_io_rreq_bits_testOffset; // @[BestOffsetPrefetch.scala 218:23]
  wire [3:0] rrTable_io_rreq_bits_ptr; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_rresp_valid; // @[BestOffsetPrefetch.scala 218:23]
  wire [3:0] rrTable_io_rresp_bits_ptr; // @[BestOffsetPrefetch.scala 218:23]
  wire  rrTable_io_rresp_bits_hit; // @[BestOffsetPrefetch.scala 218:23]
  wire  scoreTable_clock; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_reset; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_req_ready; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_req_valid; // @[BestOffsetPrefetch.scala 219:26]
  wire [35:0] scoreTable_io_req_bits; // @[BestOffsetPrefetch.scala 219:26]
  wire [4:0] scoreTable_io_prefetchOffset; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_test_req_valid; // @[BestOffsetPrefetch.scala 219:26]
  wire [35:0] scoreTable_io_test_req_bits_addr; // @[BestOffsetPrefetch.scala 219:26]
  wire [4:0] scoreTable_io_test_req_bits_testOffset; // @[BestOffsetPrefetch.scala 219:26]
  wire [3:0] scoreTable_io_test_req_bits_ptr; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_test_resp_ready; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_test_resp_valid; // @[BestOffsetPrefetch.scala 219:26]
  wire [3:0] scoreTable_io_test_resp_bits_ptr; // @[BestOffsetPrefetch.scala 219:26]
  wire  scoreTable_io_test_resp_bits_hit; // @[BestOffsetPrefetch.scala 219:26]
  wire [29:0] oldAddr_hi = {io_train_bits_tag,io_train_bits_set}; // @[Cat.scala 31:58]
  wire [35:0] oldAddr = {io_train_bits_tag,io_train_bits_set,6'h0}; // @[Cat.scala 31:58]
  wire [10:0] _newAddr_T = {scoreTable_io_prefetchOffset, 6'h0}; // @[BestOffsetPrefetch.scala 223:43]
  wire [35:0] _GEN_6 = {{25'd0}, _newAddr_T}; // @[BestOffsetPrefetch.scala 223:25]
  wire [35:0] newAddr = oldAddr + _GEN_6; // @[BestOffsetPrefetch.scala 223:25]
  wire [29:0] _rrTable_io_wT = {io_resp_bits_tag,io_resp_bits_set}; // @[Cat.scala 31:58]
  wire [29:0] _GEN_7 = {{25'd0}, scoreTable_io_prefetchOffset}; // @[BestOffsetPrefetch.scala 227:68]
  wire [29:0] _rrTable_io_wT_2 = _rrTable_io_wT - _GEN_7; // @[BestOffsetPrefetch.scala 227:68]
  reg [21:0] req_tag; // @[BestOffsetPrefetch.scala 231:16]
  reg [7:0] req_set; // @[BestOffsetPrefetch.scala 231:16]
  reg  req_needT; // @[BestOffsetPrefetch.scala 231:16]
  reg [5:0] req_source; // @[BestOffsetPrefetch.scala 231:16]
  reg  req_valid; // @[BestOffsetPrefetch.scala 232:26]
  wire  crossPage = newAddr[35:12] != oldAddr[35:12]; // @[BestOffsetPrefetch.scala 233:35]
  wire  _T_1 = scoreTable_io_req_ready & scoreTable_io_req_valid; // @[Decoupled.scala 50:35]
  wire [29:0] req_tag_set = newAddr[35:6]; // @[HuanCun.scala 132:22]
  wire [21:0] req_tag_tag = req_tag_set[29:8]; // @[HuanCun.scala 133:19]
  RecentRequestTable rrTable ( // @[BestOffsetPrefetch.scala 218:23]
    .clock(rrTable_clock),
    .reset(rrTable_reset),
    .io_wready(rrTable_io_wready),
    .io_wvalid(rrTable_io_wvalid),
    .io_wbits(rrTable_io_wbits),
    .io_rreq_ready(rrTable_io_rreq_ready),
    .io_rreq_valid(rrTable_io_rreq_valid),
    .io_rreq_bits_addr(rrTable_io_rreq_bits_addr),
    .io_rreq_bits_testOffset(rrTable_io_rreq_bits_testOffset),
    .io_rreq_bits_ptr(rrTable_io_rreq_bits_ptr),
    .io_rresp_valid(rrTable_io_rresp_valid),
    .io_rresp_bits_ptr(rrTable_io_rresp_bits_ptr),
    .io_rresp_bits_hit(rrTable_io_rresp_bits_hit)
  );
  OffsetScoreTable scoreTable ( // @[BestOffsetPrefetch.scala 219:26]
    .clock(scoreTable_clock),
    .reset(scoreTable_reset),
    .io_req_ready(scoreTable_io_req_ready),
    .io_req_valid(scoreTable_io_req_valid),
    .io_req_bits(scoreTable_io_req_bits),
    .io_prefetchOffset(scoreTable_io_prefetchOffset),
    .io_test_req_valid(scoreTable_io_test_req_valid),
    .io_test_req_bits_addr(scoreTable_io_test_req_bits_addr),
    .io_test_req_bits_testOffset(scoreTable_io_test_req_bits_testOffset),
    .io_test_req_bits_ptr(scoreTable_io_test_req_bits_ptr),
    .io_test_resp_ready(scoreTable_io_test_resp_ready),
    .io_test_resp_valid(scoreTable_io_test_resp_valid),
    .io_test_resp_bits_ptr(scoreTable_io_test_resp_bits_ptr),
    .io_test_resp_bits_hit(scoreTable_io_test_resp_bits_hit)
  );
  assign io_train_ready = scoreTable_io_req_ready; // @[BestOffsetPrefetch.scala 247:45]
  assign io_req_valid = req_valid; // @[BestOffsetPrefetch.scala 245:16]
  assign io_req_bits_tag = req_tag; // @[BestOffsetPrefetch.scala 246:15]
  assign io_req_bits_set = req_set; // @[BestOffsetPrefetch.scala 246:15]
  assign io_req_bits_needT = req_needT; // @[BestOffsetPrefetch.scala 246:15]
  assign io_req_bits_source = req_source; // @[BestOffsetPrefetch.scala 246:15]
  assign io_resp_ready = rrTable_io_wready; // @[BestOffsetPrefetch.scala 248:17]
  assign rrTable_clock = clock;
  assign rrTable_reset = reset;
  assign rrTable_io_wvalid = io_resp_valid; // @[BestOffsetPrefetch.scala 226:22]
  assign rrTable_io_wbits = {_rrTable_io_wT_2,6'h0}; // @[Cat.scala 31:58]
  assign rrTable_io_rreq_valid = scoreTable_io_test_req_valid; // @[BestOffsetPrefetch.scala 225:16]
  assign rrTable_io_rreq_bits_addr = scoreTable_io_test_req_bits_addr; // @[BestOffsetPrefetch.scala 225:16]
  assign rrTable_io_rreq_bits_testOffset = scoreTable_io_test_req_bits_testOffset; // @[BestOffsetPrefetch.scala 225:16]
  assign rrTable_io_rreq_bits_ptr = scoreTable_io_test_req_bits_ptr; // @[BestOffsetPrefetch.scala 225:16]
  assign scoreTable_clock = clock;
  assign scoreTable_reset = reset;
  assign scoreTable_io_req_valid = io_train_valid; // @[BestOffsetPrefetch.scala 228:27]
  assign scoreTable_io_req_bits = {oldAddr_hi,6'h0}; // @[Cat.scala 31:58]
  assign scoreTable_io_test_resp_valid = rrTable_io_rresp_valid; // @[BestOffsetPrefetch.scala 225:16]
  assign scoreTable_io_test_resp_bits_ptr = rrTable_io_rresp_bits_ptr; // @[BestOffsetPrefetch.scala 225:16]
  assign scoreTable_io_test_resp_bits_hit = rrTable_io_rresp_bits_hit; // @[BestOffsetPrefetch.scala 225:16]
  always @(posedge clock) begin
    if (_T_1) begin // @[BestOffsetPrefetch.scala 237:34]
      req_tag <= req_tag_tag; // @[BestOffsetPrefetch.scala 238:13]
    end
    if (_T_1) begin // @[BestOffsetPrefetch.scala 237:34]
      req_set <= req_tag_set[7:0]; // @[BestOffsetPrefetch.scala 239:13]
    end
    if (_T_1) begin // @[BestOffsetPrefetch.scala 237:34]
      req_needT <= io_train_bits_needT; // @[BestOffsetPrefetch.scala 240:15]
    end
    if (_T_1) begin // @[BestOffsetPrefetch.scala 237:34]
      req_source <= io_train_bits_source; // @[BestOffsetPrefetch.scala 241:16]
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 232:26]
      req_valid <= 1'h0; // @[BestOffsetPrefetch.scala 232:26]
    end else if (_T_1) begin // @[BestOffsetPrefetch.scala 237:34]
      req_valid <= ~crossPage; // @[BestOffsetPrefetch.scala 242:15]
    end else if (io_req_valid) begin // @[BestOffsetPrefetch.scala 234:23]
      req_valid <= 1'h0; // @[BestOffsetPrefetch.scala 235:15]
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
  req_tag = _RAND_0[21:0];
  _RAND_1 = {1{`RANDOM}};
  req_set = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  req_needT = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  req_source = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  req_valid = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
