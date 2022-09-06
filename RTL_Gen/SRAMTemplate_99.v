module SRAMTemplate_99(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [10:0] io_rreq_bits_setIdx,
  output [1:0]  io_rresp_data_0,
  output [1:0]  io_rresp_data_1,
  input         io_wreq_valid,
  input  [10:0] io_wreq_bits_setIdx,
  input  [1:0]  io_wreq_bits_data_0,
  input  [1:0]  io_wreq_bits_data_1,
  input  [1:0]  io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire [10:0] array_R0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 102:26]
  wire [1:0] array_R0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [1:0] array_R0_data_1; // @[SRAMTemplate.scala 102:26]
  wire [10:0] array_W0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 102:26]
  wire [1:0] array_W0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [1:0] array_W0_data_1; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_0; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_1; // @[SRAMTemplate.scala 102:26]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg [63:0] bypass_wdata_lfsr_1; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor_1 = bypass_wdata_lfsr_1[0] ^ bypass_wdata_lfsr_1[1] ^ bypass_wdata_lfsr_1[3] ^
    bypass_wdata_lfsr_1[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_6 = {bypass_wdata_xor_1,bypass_wdata_lfsr_1[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 127:29]
  reg [10:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 128:28]
  reg [10:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 129:28]
  wire  _bypass_mask_bypass_T_1 = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 131:39]
  wire [1:0] _bypass_mask_bypass_T_3 = _bypass_mask_bypass_T_1 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  reg [1:0] bypass_mask_bypass_REG; // @[SRAMTemplate.scala 131:76]
  wire [1:0] bypass_mask_bypass = _bypass_mask_bypass_T_3 & bypass_mask_bypass_REG; // @[SRAMTemplate.scala 131:67]
  wire [1:0] bypass_wdata_0 = bypass_wdata_lfsr[1:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [1:0] mem_rdata_0 = bypass_mask_bypass[0] ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 140:30]
  wire [1:0] bypass_wdata_1 = bypass_wdata_lfsr_1[1:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [1:0] mem_rdata_1 = bypass_mask_bypass[1] ? bypass_wdata_1 : array_R0_data_1; // @[SRAMTemplate.scala 140:30]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg [1:0] rdata_r0; // @[Reg.scala 28:20]
  reg [1:0] rdata_r1; // @[Reg.scala 28:20]
  array_15 array ( // @[SRAMTemplate.scala 102:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .R0_data_1(array_R0_data_1),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0),
    .W0_data_1(array_W0_data_1),
    .W0_mask_0(array_W0_mask_0),
    .W0_mask_1(array_W0_mask_1)
  );
  assign io_rresp_data_0 = rdata_REG ? mem_rdata_0 : rdata_r0; // @[Hold.scala 24:48]
  assign io_rresp_data_1 = rdata_REG ? mem_rdata_1 : rdata_r1; // @[Hold.scala 24:48]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 122:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 102:26 122:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 122:{29,29}]
  assign array_W0_addr = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 120:14]
  assign array_W0_en = io_wreq_valid; // @[SRAMTemplate.scala 120:14 102:26]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_W0_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 118:26]
  assign array_W0_data_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 118:26]
  assign array_W0_mask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 120:51]
  assign array_W0_mask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 120:51]
  always @(posedge clock) begin
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr <= 64'h1;
    end else begin
      bypass_wdata_lfsr <= _bypass_wdata_lfsr_T_2;
    end
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr_1 <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr_1 == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr_1 <= 64'h1;
    end else begin
      bypass_wdata_lfsr_1 <= _bypass_wdata_lfsr_T_6;
    end
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 127:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 129:28]
    bypass_mask_bypass_REG <= io_wreq_bits_waymask; // @[SRAMTemplate.scala 131:76]
    rdata_REG <= io_rreq_valid; // @[SRAMTemplate.scala 145:59]
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r0 <= 2'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[0]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r0 <= bypass_wdata_0;
      end else begin
        rdata_r0 <= array_R0_data_0;
      end
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r1 <= 2'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[1]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r1 <= bypass_wdata_1;
      end else begin
        rdata_r1 <= array_R0_data_1;
      end
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
  _RAND_0 = {2{`RANDOM}};
  bypass_wdata_lfsr = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  bypass_wdata_lfsr_1 = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_3[10:0];
  _RAND_4 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_4[10:0];
  _RAND_5 = {1{`RANDOM}};
  bypass_mask_bypass_REG = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  rdata_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  rdata_r0 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  rdata_r1 = _RAND_8[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
