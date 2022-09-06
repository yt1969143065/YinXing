module SRAMTemplate_8(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [7:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0,
  output       io_rresp_data_1,
  output       io_rresp_data_2,
  output       io_rresp_data_3,
  output       io_rresp_data_4,
  output       io_rresp_data_5,
  output       io_rresp_data_6,
  output       io_rresp_data_7,
  input        io_wreq_valid,
  input  [7:0] io_wreq_bits_setIdx,
  input        io_wreq_bits_data_0,
  input        io_wreq_bits_data_1,
  input        io_wreq_bits_data_2,
  input        io_wreq_bits_data_3,
  input        io_wreq_bits_data_4,
  input        io_wreq_bits_data_5,
  input        io_wreq_bits_data_6,
  input        io_wreq_bits_data_7,
  input  [7:0] io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_4; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_5; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_6; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wdata_7; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_4; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_5; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_6; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_rdata_7; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_6; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmask_7; // @[SRAMTemplate.scala 102:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
  reg  rdata_REG; // @[SRAMTemplate.scala 145:59]
  reg  rdata_r0; // @[Reg.scala 28:20]
  reg  rdata_r1; // @[Reg.scala 28:20]
  reg  rdata_r2; // @[Reg.scala 28:20]
  reg  rdata_r3; // @[Reg.scala 28:20]
  reg  rdata_r4; // @[Reg.scala 28:20]
  reg  rdata_r5; // @[Reg.scala 28:20]
  reg  rdata_r6; // @[Reg.scala 28:20]
  reg  rdata_r7; // @[Reg.scala 28:20]
  array_4 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_wdata_6(array_RW0_wdata_6),
    .RW0_wdata_7(array_RW0_wdata_7),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_rdata_6(array_RW0_rdata_6),
    .RW0_rdata_7(array_RW0_rdata_7),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5),
    .RW0_wmask_6(array_RW0_wmask_6),
    .RW0_wmask_7(array_RW0_wmask_7)
  );
  assign io_rresp_data_0 = rdata_REG ? array_RW0_rdata_0 : rdata_r0; // @[Hold.scala 24:48]
  assign io_rresp_data_1 = rdata_REG ? array_RW0_rdata_1 : rdata_r1; // @[Hold.scala 24:48]
  assign io_rresp_data_2 = rdata_REG ? array_RW0_rdata_2 : rdata_r2; // @[Hold.scala 24:48]
  assign io_rresp_data_3 = rdata_REG ? array_RW0_rdata_3 : rdata_r3; // @[Hold.scala 24:48]
  assign io_rresp_data_4 = rdata_REG ? array_RW0_rdata_4 : rdata_r4; // @[Hold.scala 24:48]
  assign io_rresp_data_5 = rdata_REG ? array_RW0_rdata_5 : rdata_r5; // @[Hold.scala 24:48]
  assign io_rresp_data_6 = rdata_REG ? array_RW0_rdata_6 : rdata_r6; // @[Hold.scala 24:48]
  assign io_rresp_data_7 = rdata_REG ? array_RW0_rdata_7 : rdata_r7; // @[Hold.scala 24:48]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_2 = io_wreq_bits_data_2; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_3 = io_wreq_bits_data_3; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_4 = io_wreq_bits_data_4; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_5 = io_wreq_bits_data_5; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_6 = io_wreq_bits_data_6; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wdata_7 = io_wreq_bits_data_7; // @[SRAMTemplate.scala 118:26]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_4 = io_wreq_bits_waymask[4]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_5 = io_wreq_bits_waymask[5]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_6 = io_wreq_bits_waymask[6]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_wmask_7 = io_wreq_bits_waymask[7]; // @[SRAMTemplate.scala 120:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_REG <= io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
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
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r4 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r4 <= array_RW0_rdata_4; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r5 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r5 <= array_RW0_rdata_5; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r6 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r6 <= array_RW0_rdata_6; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      rdata_r7 <= 1'h0; // @[Reg.scala 28:20]
    end else if (rdata_REG) begin // @[Reg.scala 29:18]
      rdata_r7 <= array_RW0_rdata_7; // @[Reg.scala 29:22]
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
  _RAND_1 = {1{`RANDOM}};
  rdata_r0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  rdata_r1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  rdata_r2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rdata_r3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rdata_r4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  rdata_r5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  rdata_r6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  rdata_r7 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
