module RecentRequestTable(
  input         clock,
  input         reset,
  output        io_wready,
  input         io_wvalid,
  input  [35:0] io_wbits,
  output        io_rreq_ready,
  input         io_rreq_valid,
  input  [35:0] io_rreq_bits_addr,
  input  [4:0]  io_rreq_bits_testOffset,
  input  [3:0]  io_rreq_bits_ptr,
  output        io_rresp_valid,
  output [3:0]  io_rresp_bits_ptr,
  output        io_rresp_bits_hit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  rrTable_clock; // @[BestOffsetPrefetch.scala 105:23]
  wire  rrTable_reset; // @[BestOffsetPrefetch.scala 105:23]
  wire  rrTable_io_rreq_ready; // @[BestOffsetPrefetch.scala 105:23]
  wire  rrTable_io_rreq_valid; // @[BestOffsetPrefetch.scala 105:23]
  wire [7:0] rrTable_io_rreq_bits_setIdx; // @[BestOffsetPrefetch.scala 105:23]
  wire  rrTable_io_rresp_data_0_valid; // @[BestOffsetPrefetch.scala 105:23]
  wire [11:0] rrTable_io_rresp_data_0_tag; // @[BestOffsetPrefetch.scala 105:23]
  wire  rrTable_io_wreq_valid; // @[BestOffsetPrefetch.scala 105:23]
  wire [7:0] rrTable_io_wreq_bits_setIdx; // @[BestOffsetPrefetch.scala 105:23]
  wire [11:0] rrTable_io_wreq_bits_data_0_tag; // @[BestOffsetPrefetch.scala 105:23]
  wire [10:0] _rAddr_T = {io_rreq_bits_testOffset, 6'h0}; // @[BestOffsetPrefetch.scala 115:62]
  wire [35:0] _GEN_0 = {{25'd0}, _rAddr_T}; // @[BestOffsetPrefetch.scala 115:34]
  wire [35:0] rAddr = io_rreq_bits_addr - _GEN_0; // @[BestOffsetPrefetch.scala 115:34]
  reg  io_rresp_valid_REG; // @[BestOffsetPrefetch.scala 125:29]
  reg [3:0] io_rresp_bits_ptr_REG; // @[BestOffsetPrefetch.scala 126:32]
  reg [11:0] io_rresp_bits_hit_REG; // @[BestOffsetPrefetch.scala 127:61]
  wire [11:0] rData_tag = rrTable_io_rresp_data_0_tag; // @[BestOffsetPrefetch.scala 116:19 119:9]
  wire  rData_valid = rrTable_io_rresp_data_0_valid; // @[BestOffsetPrefetch.scala 116:19 119:9]
  SRAMTemplate_170 rrTable ( // @[BestOffsetPrefetch.scala 105:23]
    .clock(rrTable_clock),
    .reset(rrTable_reset),
    .io_rreq_ready(rrTable_io_rreq_ready),
    .io_rreq_valid(rrTable_io_rreq_valid),
    .io_rreq_bits_setIdx(rrTable_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(rrTable_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(rrTable_io_rresp_data_0_tag),
    .io_wreq_valid(rrTable_io_wreq_valid),
    .io_wreq_bits_setIdx(rrTable_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(rrTable_io_wreq_bits_data_0_tag)
  );
  assign io_wready = ~io_rreq_valid; // @[BestOffsetPrefetch.scala 123:43]
  assign io_rreq_ready = 1'h1; // @[BestOffsetPrefetch.scala 124:18]
  assign io_rresp_valid = io_rresp_valid_REG; // @[BestOffsetPrefetch.scala 125:19]
  assign io_rresp_bits_ptr = io_rresp_bits_ptr_REG; // @[BestOffsetPrefetch.scala 126:22]
  assign io_rresp_bits_hit = rData_valid & rData_tag == io_rresp_bits_hit_REG; // @[BestOffsetPrefetch.scala 127:37]
  assign rrTable_clock = clock;
  assign rrTable_reset = reset;
  assign rrTable_io_rreq_valid = io_rreq_ready & io_rreq_valid; // @[Decoupled.scala 50:35]
  assign rrTable_io_rreq_bits_setIdx = rAddr[13:6] ^ rAddr[21:14]; // @[BestOffsetPrefetch.scala 98:42]
  assign rrTable_io_wreq_valid = io_wvalid & ~io_rreq_valid; // @[BestOffsetPrefetch.scala 110:40]
  assign rrTable_io_wreq_bits_setIdx = io_wbits[13:6] ^ io_wbits[21:14]; // @[BestOffsetPrefetch.scala 98:42]
  assign rrTable_io_wreq_bits_data_0_tag = io_wbits[25:14]; // @[BestOffsetPrefetch.scala 99:44]
  always @(posedge clock) begin
    io_rresp_valid_REG <= rrTable_io_rreq_ready & rrTable_io_rreq_valid; // @[Decoupled.scala 50:35]
    io_rresp_bits_ptr_REG <= io_rreq_bits_ptr; // @[BestOffsetPrefetch.scala 126:32]
    io_rresp_bits_hit_REG <= rAddr[25:14]; // @[BestOffsetPrefetch.scala 99:44]
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
  io_rresp_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_rresp_bits_ptr_REG = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  io_rresp_bits_hit_REG = _RAND_2[11:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
