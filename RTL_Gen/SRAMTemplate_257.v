module SRAMTemplate_257(
  input         clock,
  output        io_rreq_ready,
  input         io_rreq_valid,
  input  [11:0] io_rreq_bits_setIdx,
  output [31:0] io_rresp_data_0,
  input         io_wreq_valid,
  input  [11:0] io_wreq_bits_setIdx,
  input  [31:0] io_wreq_bits_data_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [11:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [31:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [31:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  reg  rdata_en1; // @[SRAMTemplate.scala 33:22]
  reg [31:0] rdata_data_reg_0; // @[Reg.scala 16:16]
  reg  rdata_en2; // @[SRAMTemplate.scala 35:22]
  reg [63:0] rdata_lfsr; // @[Fuzzer.scala 43:19]
  wire  rdata_xor = rdata_lfsr[0] ^ rdata_lfsr[1] ^ rdata_lfsr[3] ^ rdata_lfsr[4]; // @[Fuzzer.scala 44:43]
  wire [63:0] _rdata_lfsr_T_2 = {rdata_xor,rdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  array_38 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rreq_ready = ~io_wreq_valid; // @[SRAMTemplate.scala 173:53]
  assign io_rresp_data_0 = rdata_en2 ? rdata_data_reg_0 : rdata_lfsr[31:0]; // @[SRAMTemplate.scala 36:8]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 129:26]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_en1 <= io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
    if (rdata_en1) begin // @[Reg.scala 17:18]
      rdata_data_reg_0 <= array_RW0_rdata_0; // @[Reg.scala 17:22]
    end
    rdata_en2 <= rdata_en1; // @[SRAMTemplate.scala 35:22]
    if (rdata_lfsr == 64'h0) begin // @[Fuzzer.scala 46:18]
      rdata_lfsr <= 64'h1;
    end else begin
      rdata_lfsr <= _rdata_lfsr_T_2;
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
  rdata_en1 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  rdata_data_reg_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  rdata_en2 = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  rdata_lfsr = _RAND_3[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
