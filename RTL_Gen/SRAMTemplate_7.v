module SRAMTemplate_7(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [7:0]  io_rreq_bits_setIdx,
  output [38:0] io_rresp_data_0_nextAddr,
  output [2:0]  io_rresp_data_0_cfiOffset,
  output        io_rresp_data_0_taken,
  output        io_rresp_data_0_takenOnBr,
  output [2:0]  io_rresp_data_0_brNumOH,
  input         io_wreq_valid,
  input  [7:0]  io_wreq_bits_setIdx,
  input  [38:0] io_wreq_bits_data_0_nextAddr,
  input  [2:0]  io_wreq_bits_data_0_cfiOffset,
  input         io_wreq_bits_data_0_taken,
  input         io_wreq_bits_data_0_takenOnBr,
  input  [2:0]  io_wreq_bits_data_0_brNumOH
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire [46:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire [46:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
  wire [3:0] wdata_lo = {io_wreq_bits_data_0_takenOnBr,io_wreq_bits_data_0_brNumOH}; // @[SRAMTemplate.scala 118:102]
  wire [42:0] wdata_hi = {io_wreq_bits_data_0_nextAddr,io_wreq_bits_data_0_cfiOffset,io_wreq_bits_data_0_taken}; // @[SRAMTemplate.scala 118:102]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg [46:0] rdata_r0; // @[Reg.scala 28:20]
  wire [46:0] _GEN_12 = rdata_REG ? array_RW0_rdata_0 : rdata_r0; // @[Reg.scala 29:18 28:20 29:22]
  array_3 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_nextAddr = _GEN_12[46:8]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_cfiOffset = _GEN_12[7:5]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_taken = _GEN_12[4]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_takenOnBr = _GEN_12[3]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_brNumOH = _GEN_12[2:0]; // @[SRAMTemplate.scala 146:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_REG <= io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r0 <= 47'h0; // @[Reg.scala 28:20]
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
  rdata_r0 = _RAND_1[46:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
