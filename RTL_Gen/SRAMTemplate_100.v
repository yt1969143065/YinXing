module SRAMTemplate_100(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [7:0] io_rreq_bits_setIdx,
  output [5:0] io_rresp_data_0,
  output [5:0] io_rresp_data_1,
  output [5:0] io_rresp_data_2,
  output [5:0] io_rresp_data_3,
  input        io_wreq_valid,
  input  [7:0] io_wreq_bits_setIdx,
  input  [5:0] io_wreq_bits_data_0,
  input  [5:0] io_wreq_bits_data_1,
  input  [5:0] io_wreq_bits_data_2,
  input  [5:0] io_wreq_bits_data_3,
  input  [3:0] io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] array_R0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_R0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_R0_data_1; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_R0_data_2; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_R0_data_3; // @[SRAMTemplate.scala 102:26]
  wire [7:0] array_W0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_data_1; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_data_2; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_data_3; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_0; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_1; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_2; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_mask_3; // @[SRAMTemplate.scala 102:26]
  reg  resetState; // @[SRAMTemplate.scala 106:30]
  reg [7:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 8'hff; // @[Counter.scala 74:24]
  wire [7:0] _wrap_value_T_1 = resetSet + 8'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  _GEN_2 = resetFinish ? 1'h0 : resetState; // @[SRAMTemplate.scala 108:24 106:30 108:38]
  wire [3:0] waymask = resetState ? 4'hf : io_wreq_bits_waymask; // @[SRAMTemplate.scala 119:20]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg [63:0] bypass_wdata_lfsr_1; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor_1 = bypass_wdata_lfsr_1[0] ^ bypass_wdata_lfsr_1[1] ^ bypass_wdata_lfsr_1[3] ^
    bypass_wdata_lfsr_1[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_6 = {bypass_wdata_xor_1,bypass_wdata_lfsr_1[63:1]}; // @[Cat.scala 31:58]
  reg [63:0] bypass_wdata_lfsr_2; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor_2 = bypass_wdata_lfsr_2[0] ^ bypass_wdata_lfsr_2[1] ^ bypass_wdata_lfsr_2[3] ^
    bypass_wdata_lfsr_2[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_10 = {bypass_wdata_xor_2,bypass_wdata_lfsr_2[63:1]}; // @[Cat.scala 31:58]
  reg [63:0] bypass_wdata_lfsr_3; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor_3 = bypass_wdata_lfsr_3[0] ^ bypass_wdata_lfsr_3[1] ^ bypass_wdata_lfsr_3[3] ^
    bypass_wdata_lfsr_3[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_14 = {bypass_wdata_xor_3,bypass_wdata_lfsr_3[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 127:29]
  reg [7:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 128:28]
  reg [7:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 129:28]
  wire  _bypass_mask_bypass_T_1 = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 131:39]
  wire [3:0] _bypass_mask_bypass_T_3 = _bypass_mask_bypass_T_1 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  reg [3:0] bypass_mask_bypass_REG; // @[SRAMTemplate.scala 131:76]
  wire [3:0] bypass_mask_bypass = _bypass_mask_bypass_T_3 & bypass_mask_bypass_REG; // @[SRAMTemplate.scala 131:67]
  wire [5:0] bypass_wdata_0 = bypass_wdata_lfsr[5:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [5:0] mem_rdata_0 = bypass_mask_bypass[0] ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 140:30]
  wire [5:0] bypass_wdata_1 = bypass_wdata_lfsr_1[5:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [5:0] mem_rdata_1 = bypass_mask_bypass[1] ? bypass_wdata_1 : array_R0_data_1; // @[SRAMTemplate.scala 140:30]
  wire [5:0] bypass_wdata_2 = bypass_wdata_lfsr_2[5:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [5:0] mem_rdata_2 = bypass_mask_bypass[2] ? bypass_wdata_2 : array_R0_data_2; // @[SRAMTemplate.scala 140:30]
  wire [5:0] bypass_wdata_3 = bypass_wdata_lfsr_3[5:0]; // @[SRAMTemplate.scala 135:{58,58}]
  wire [5:0] mem_rdata_3 = bypass_mask_bypass[3] ? bypass_wdata_3 : array_R0_data_3; // @[SRAMTemplate.scala 140:30]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg [5:0] rdata_r0; // @[Reg.scala 28:20]
  reg [5:0] rdata_r1; // @[Reg.scala 28:20]
  reg [5:0] rdata_r2; // @[Reg.scala 28:20]
  reg [5:0] rdata_r3; // @[Reg.scala 28:20]
  array_16 array ( // @[SRAMTemplate.scala 102:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .R0_data_1(array_R0_data_1),
    .R0_data_2(array_R0_data_2),
    .R0_data_3(array_R0_data_3),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0),
    .W0_data_1(array_W0_data_1),
    .W0_data_2(array_W0_data_2),
    .W0_data_3(array_W0_data_3),
    .W0_mask_0(array_W0_mask_0),
    .W0_mask_1(array_W0_mask_1),
    .W0_mask_2(array_W0_mask_2),
    .W0_mask_3(array_W0_mask_3)
  );
  assign io_rresp_data_0 = rdata_REG ? mem_rdata_0 : rdata_r0; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_1 = rdata_REG ? mem_rdata_1 : rdata_r1; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_2 = rdata_REG ? mem_rdata_2 : rdata_r2; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_3 = rdata_REG ? mem_rdata_3 : rdata_r3; // @[SRAMTemplate.scala 146:45]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 122:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 102:26 122:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 122:{29,29}]
  assign array_W0_addr = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 117:19]
  assign array_W0_en = io_wreq_valid | resetState; // @[SRAMTemplate.scala 114:52]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_W0_data_0 = resetState ? $signed(6'sh0) : $signed(io_wreq_bits_data_0); // @[SRAMTemplate.scala 118:102]
  assign array_W0_data_1 = resetState ? $signed(6'sh0) : $signed(io_wreq_bits_data_1); // @[SRAMTemplate.scala 118:102]
  assign array_W0_data_2 = resetState ? $signed(6'sh0) : $signed(io_wreq_bits_data_2); // @[SRAMTemplate.scala 118:102]
  assign array_W0_data_3 = resetState ? $signed(6'sh0) : $signed(io_wreq_bits_data_3); // @[SRAMTemplate.scala 118:102]
  assign array_W0_mask_0 = waymask[0]; // @[SRAMTemplate.scala 120:51]
  assign array_W0_mask_1 = waymask[1]; // @[SRAMTemplate.scala 120:51]
  assign array_W0_mask_2 = waymask[2]; // @[SRAMTemplate.scala 120:51]
  assign array_W0_mask_3 = waymask[3]; // @[SRAMTemplate.scala 120:51]
  always @(posedge clock) begin
    resetState <= reset | _GEN_2; // @[SRAMTemplate.scala 106:{30,30}]
    if (reset) begin // @[Counter.scala 62:40]
      resetSet <= 8'h0; // @[Counter.scala 62:40]
    end else if (resetState) begin // @[Counter.scala 120:16]
      resetSet <= _wrap_value_T_1; // @[Counter.scala 78:15]
    end
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
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr_2 <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr_2 == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr_2 <= 64'h1;
    end else begin
      bypass_wdata_lfsr_2 <= _bypass_wdata_lfsr_T_10;
    end
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr_3 <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr_3 == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr_3 <= 64'h1;
    end else begin
      bypass_wdata_lfsr_3 <= _bypass_wdata_lfsr_T_14;
    end
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 127:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 129:28]
    bypass_mask_bypass_REG <= io_wreq_bits_waymask; // @[SRAMTemplate.scala 131:76]
    rdata_REG <= io_rreq_valid; // @[SRAMTemplate.scala 145:59]
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r0 <= 6'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[0]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r0 <= bypass_wdata_0;
      end else begin
        rdata_r0 <= array_R0_data_0;
      end
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r1 <= 6'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[1]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r1 <= bypass_wdata_1;
      end else begin
        rdata_r1 <= array_R0_data_1;
      end
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r2 <= 6'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[2]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r2 <= bypass_wdata_2;
      end else begin
        rdata_r2 <= array_R0_data_2;
      end
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r3 <= 6'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      if (bypass_mask_bypass[3]) begin // @[SRAMTemplate.scala 140:30]
        rdata_r3 <= bypass_wdata_3;
      end else begin
        rdata_r3 <= array_R0_data_3;
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
  _RAND_0 = {1{`RANDOM}};
  resetState = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetSet = _RAND_1[7:0];
  _RAND_2 = {2{`RANDOM}};
  bypass_wdata_lfsr = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  bypass_wdata_lfsr_1 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  bypass_wdata_lfsr_2 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  bypass_wdata_lfsr_3 = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  bypass_mask_bypass_REG = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  rdata_REG = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  rdata_r0 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  rdata_r1 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  rdata_r2 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  rdata_r3 = _RAND_14[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
