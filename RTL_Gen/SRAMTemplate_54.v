module SRAMTemplate_54(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [4:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0,
  output       io_rresp_data_1,
  output       io_rresp_data_2,
  output       io_rresp_data_3,
  input        io_wreq_valid,
  input  [4:0] io_wreq_bits_setIdx,
  input        io_wreq_bits_data_0,
  input        io_wreq_bits_data_1,
  input        io_wreq_bits_data_2,
  input        io_wreq_bits_data_3,
  input  [3:0] io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire [4:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 102:26]
  reg  resetState; // @[SRAMTemplate.scala 106:30]
  reg [4:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 5'h1f; // @[Counter.scala 74:24]
  wire [4:0] _wrap_value_T_1 = resetSet + 5'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  _GEN_2 = resetFinish ? 1'h0 : resetState; // @[SRAMTemplate.scala 108:24 106:30 108:38]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 114:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 115:38]
  wire [4:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 117:19]
  wire [3:0] waymask = resetState ? 4'hf : io_wreq_bits_waymask; // @[SRAMTemplate.scala 119:20]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg  rdata_r0; // @[Reg.scala 28:20]
  reg  rdata_r1; // @[Reg.scala 28:20]
  reg  rdata_r2; // @[Reg.scala 28:20]
  reg  rdata_r3; // @[Reg.scala 28:20]
  array_9 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign io_rresp_data_0 = rdata_REG ? array_RW0_rdata_0 : rdata_r0; // @[Hold.scala 24:48]
  assign io_rresp_data_1 = rdata_REG ? array_RW0_rdata_1 : rdata_r1; // @[Hold.scala 24:48]
  assign io_rresp_data_2 = rdata_REG ? array_RW0_rdata_2 : rdata_r2; // @[Hold.scala 24:48]
  assign io_rresp_data_3 = rdata_REG ? array_RW0_rdata_3 : rdata_r3; // @[Hold.scala 24:48]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = resetState ? 1'h0 : io_wreq_bits_data_0; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_1 = resetState ? 1'h0 : io_wreq_bits_data_1; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_2 = resetState ? 1'h0 : io_wreq_bits_data_2; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_3 = resetState ? 1'h0 : io_wreq_bits_data_3; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wmask_0 = waymask[0]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_1 = waymask[1]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_2 = waymask[2]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_3 = waymask[3]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    resetState <= reset | _GEN_2; // @[SRAMTemplate.scala 106:{30,30}]
    if (reset) begin // @[Counter.scala 62:40]
      resetSet <= 5'h0; // @[Counter.scala 62:40]
    end else if (resetState) begin // @[Counter.scala 120:16]
      resetSet <= _wrap_value_T_1; // @[Counter.scala 78:15]
    end
    rdata_REG <= io_rreq_valid & ~wen; // @[SRAMTemplate.scala 115:38]
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r0 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r0 <= array_RW0_rdata_0; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r1 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r1 <= array_RW0_rdata_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r2 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r2 <= array_RW0_rdata_2; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r3 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r3 <= array_RW0_rdata_3; // @[Reg.scala 29:22]
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
  resetSet = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  rdata_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  rdata_r0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rdata_r1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rdata_r2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  rdata_r3 = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
