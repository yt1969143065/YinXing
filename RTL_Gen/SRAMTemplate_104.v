module SRAMTemplate_104(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [5:0]  io_rreq_bits_setIdx,
  output [8:0]  io_rresp_data_0_tag,
  output [1:0]  io_rresp_data_0_ctr,
  output [38:0] io_rresp_data_0_target,
  input         io_wreq_valid,
  input  [5:0]  io_wreq_bits_setIdx,
  input  [8:0]  io_wreq_bits_data_0_tag,
  input  [1:0]  io_wreq_bits_data_0_ctr,
  input  [38:0] io_wreq_bits_data_0_target
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [5:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire [49:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire [49:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
  wire [10:0] wdata_hi = {io_wreq_bits_data_0_tag,io_wreq_bits_data_0_ctr}; // @[SRAMTemplate.scala 118:102]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg [49:0] rdata_r0; // @[Reg.scala 28:20]
  wire [49:0] _GEN_12 = rdata_REG ? array_RW0_rdata_0 : rdata_r0; // @[Reg.scala 29:18 28:20 29:22]
  array_17 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_tag = _GEN_12[49:41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_ctr = _GEN_12[40:39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_target = _GEN_12[38:0]; // @[SRAMTemplate.scala 146:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = {wdata_hi,io_wreq_bits_data_0_target}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_REG <= io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r0 <= 50'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r0 <= array_RW0_rdata_0; // @[Reg.scala 29:22]
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
  rdata_REG = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  rdata_r0 = _RAND_1[49:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
