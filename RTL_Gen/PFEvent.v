module PFEvent(
  input         clock,
  input         reset,
  input         io_distribute_csr_wvalid,
  input  [11:0] io_distribute_csr_waddr,
  input  [63:0] io_distribute_csr_wdata,
  output [63:0] io_hpmevent_0,
  output [63:0] io_hpmevent_1,
  output [63:0] io_hpmevent_2,
  output [63:0] io_hpmevent_3,
  output [63:0] io_hpmevent_4,
  output [63:0] io_hpmevent_5,
  output [63:0] io_hpmevent_6,
  output [63:0] io_hpmevent_7,
  output [63:0] io_hpmevent_8,
  output [63:0] io_hpmevent_9,
  output [63:0] io_hpmevent_10,
  output [63:0] io_hpmevent_11,
  output [63:0] io_hpmevent_12,
  output [63:0] io_hpmevent_13,
  output [63:0] io_hpmevent_14,
  output [63:0] io_hpmevent_15,
  output [63:0] io_hpmevent_16,
  output [63:0] io_hpmevent_17,
  output [63:0] io_hpmevent_18,
  output [63:0] io_hpmevent_19,
  output [63:0] io_hpmevent_20,
  output [63:0] io_hpmevent_21,
  output [63:0] io_hpmevent_22,
  output [63:0] io_hpmevent_23
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] perfEvents_0; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_1; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_2; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_3; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_4; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_5; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_6; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_7; // @[CSR.scala 1248:40]
  reg [63:0] perfEvents_8; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_9; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_10; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_11; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_12; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_13; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_14; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_15; // @[CSR.scala 1249:40]
  reg [63:0] perfEvents_16; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_17; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_18; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_19; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_20; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_21; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_22; // @[CSR.scala 1250:40]
  reg [63:0] perfEvents_23; // @[CSR.scala 1250:40]
  wire [63:0] _perfEvents_6_T = io_distribute_csr_wdata & 64'hf87fff3fcff3fcff; // @[BitUtils.scala 36:14]
  wire [63:0] _perfEvents_6_T_2 = perfEvents_6 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_6_T_3 = _perfEvents_6_T | _perfEvents_6_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_11_T_2 = perfEvents_11 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_11_T_3 = _perfEvents_6_T | _perfEvents_11_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_14_T_2 = perfEvents_14 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_14_T_3 = _perfEvents_6_T | _perfEvents_14_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_3_T_2 = perfEvents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_3_T_3 = _perfEvents_6_T | _perfEvents_3_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_18_T_2 = perfEvents_18 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_18_T_3 = _perfEvents_6_T | _perfEvents_18_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_7_T_2 = perfEvents_7 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_7_T_3 = _perfEvents_6_T | _perfEvents_7_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_22_T_2 = perfEvents_22 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_22_T_3 = _perfEvents_6_T | _perfEvents_22_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_17_T_2 = perfEvents_17 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_17_T_3 = _perfEvents_6_T | _perfEvents_17_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_12_T_2 = perfEvents_12 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_12_T_3 = _perfEvents_6_T | _perfEvents_12_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_2_T_2 = perfEvents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_2_T_3 = _perfEvents_6_T | _perfEvents_2_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_21_T_2 = perfEvents_21 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_21_T_3 = _perfEvents_6_T | _perfEvents_21_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_16_T_2 = perfEvents_16 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_16_T_3 = _perfEvents_6_T | _perfEvents_16_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_23_T_2 = perfEvents_23 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_23_T_3 = _perfEvents_6_T | _perfEvents_23_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_1_T_2 = perfEvents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_1_T_3 = _perfEvents_6_T | _perfEvents_1_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_8_T_2 = perfEvents_8 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_8_T_3 = _perfEvents_6_T | _perfEvents_8_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_13_T_2 = perfEvents_13 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_13_T_3 = _perfEvents_6_T | _perfEvents_13_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_9_T_2 = perfEvents_9 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_9_T_3 = _perfEvents_6_T | _perfEvents_9_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_20_T_2 = perfEvents_20 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_20_T_3 = _perfEvents_6_T | _perfEvents_20_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_5_T_2 = perfEvents_5 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_5_T_3 = _perfEvents_6_T | _perfEvents_5_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_10_T_2 = perfEvents_10 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_10_T_3 = _perfEvents_6_T | _perfEvents_10_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_15_T_2 = perfEvents_15 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_15_T_3 = _perfEvents_6_T | _perfEvents_15_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_4_T_2 = perfEvents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_4_T_3 = _perfEvents_6_T | _perfEvents_4_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_19_T_2 = perfEvents_19 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_19_T_3 = _perfEvents_6_T | _perfEvents_19_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_0_T_2 = perfEvents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_0_T_3 = _perfEvents_6_T | _perfEvents_0_T_2; // @[BitUtils.scala 36:26]
  assign io_hpmevent_0 = perfEvents_0; // @[CSR.scala 1262:20]
  assign io_hpmevent_1 = perfEvents_1; // @[CSR.scala 1262:20]
  assign io_hpmevent_2 = perfEvents_2; // @[CSR.scala 1262:20]
  assign io_hpmevent_3 = perfEvents_3; // @[CSR.scala 1262:20]
  assign io_hpmevent_4 = perfEvents_4; // @[CSR.scala 1262:20]
  assign io_hpmevent_5 = perfEvents_5; // @[CSR.scala 1262:20]
  assign io_hpmevent_6 = perfEvents_6; // @[CSR.scala 1262:20]
  assign io_hpmevent_7 = perfEvents_7; // @[CSR.scala 1262:20]
  assign io_hpmevent_8 = perfEvents_8; // @[CSR.scala 1262:20]
  assign io_hpmevent_9 = perfEvents_9; // @[CSR.scala 1262:20]
  assign io_hpmevent_10 = perfEvents_10; // @[CSR.scala 1262:20]
  assign io_hpmevent_11 = perfEvents_11; // @[CSR.scala 1262:20]
  assign io_hpmevent_12 = perfEvents_12; // @[CSR.scala 1262:20]
  assign io_hpmevent_13 = perfEvents_13; // @[CSR.scala 1262:20]
  assign io_hpmevent_14 = perfEvents_14; // @[CSR.scala 1262:20]
  assign io_hpmevent_15 = perfEvents_15; // @[CSR.scala 1262:20]
  assign io_hpmevent_16 = perfEvents_16; // @[CSR.scala 1262:20]
  assign io_hpmevent_17 = perfEvents_17; // @[CSR.scala 1262:20]
  assign io_hpmevent_18 = perfEvents_18; // @[CSR.scala 1262:20]
  assign io_hpmevent_19 = perfEvents_19; // @[CSR.scala 1262:20]
  assign io_hpmevent_20 = perfEvents_20; // @[CSR.scala 1262:20]
  assign io_hpmevent_21 = perfEvents_21; // @[CSR.scala 1262:20]
  assign io_hpmevent_22 = perfEvents_22; // @[CSR.scala 1262:20]
  assign io_hpmevent_23 = perfEvents_23; // @[CSR.scala 1262:20]
  always @(posedge clock) begin
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_0 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h323) begin // @[RegMap.scala 52:72]
      perfEvents_0 <= _perfEvents_0_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_1 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h324) begin // @[RegMap.scala 52:72]
      perfEvents_1 <= _perfEvents_1_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_2 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h325) begin // @[RegMap.scala 52:72]
      perfEvents_2 <= _perfEvents_2_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_3 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h326) begin // @[RegMap.scala 52:72]
      perfEvents_3 <= _perfEvents_3_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_4 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h327) begin // @[RegMap.scala 52:72]
      perfEvents_4 <= _perfEvents_4_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_5 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h328) begin // @[RegMap.scala 52:72]
      perfEvents_5 <= _perfEvents_5_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_6 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h329) begin // @[RegMap.scala 52:72]
      perfEvents_6 <= _perfEvents_6_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1248:40]
      perfEvents_7 <= 64'h0; // @[CSR.scala 1248:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32a) begin // @[RegMap.scala 52:72]
      perfEvents_7 <= _perfEvents_7_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_8 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32b) begin // @[RegMap.scala 52:72]
      perfEvents_8 <= _perfEvents_8_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_9 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32c) begin // @[RegMap.scala 52:72]
      perfEvents_9 <= _perfEvents_9_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_10 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32d) begin // @[RegMap.scala 52:72]
      perfEvents_10 <= _perfEvents_10_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_11 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32e) begin // @[RegMap.scala 52:72]
      perfEvents_11 <= _perfEvents_11_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_12 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32f) begin // @[RegMap.scala 52:72]
      perfEvents_12 <= _perfEvents_12_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_13 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h330) begin // @[RegMap.scala 52:72]
      perfEvents_13 <= _perfEvents_13_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_14 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h331) begin // @[RegMap.scala 52:72]
      perfEvents_14 <= _perfEvents_14_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1249:40]
      perfEvents_15 <= 64'h4010040100; // @[CSR.scala 1249:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h332) begin // @[RegMap.scala 52:72]
      perfEvents_15 <= _perfEvents_15_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_16 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h333) begin // @[RegMap.scala 52:72]
      perfEvents_16 <= _perfEvents_16_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_17 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h334) begin // @[RegMap.scala 52:72]
      perfEvents_17 <= _perfEvents_17_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_18 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h335) begin // @[RegMap.scala 52:72]
      perfEvents_18 <= _perfEvents_18_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_19 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h336) begin // @[RegMap.scala 52:72]
      perfEvents_19 <= _perfEvents_19_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_20 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h337) begin // @[RegMap.scala 52:72]
      perfEvents_20 <= _perfEvents_20_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_21 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h338) begin // @[RegMap.scala 52:72]
      perfEvents_21 <= _perfEvents_21_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_22 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h339) begin // @[RegMap.scala 52:72]
      perfEvents_22 <= _perfEvents_22_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 1250:40]
      perfEvents_23 <= 64'h8020080200; // @[CSR.scala 1250:40]
    end else if (io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h33a) begin // @[RegMap.scala 52:72]
      perfEvents_23 <= _perfEvents_23_T_3; // @[RegMap.scala 52:76]
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
  perfEvents_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  perfEvents_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  perfEvents_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  perfEvents_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  perfEvents_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  perfEvents_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  perfEvents_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  perfEvents_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  perfEvents_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  perfEvents_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  perfEvents_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  perfEvents_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  perfEvents_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  perfEvents_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  perfEvents_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  perfEvents_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  perfEvents_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  perfEvents_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  perfEvents_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  perfEvents_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  perfEvents_20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  perfEvents_21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  perfEvents_22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  perfEvents_23 = _RAND_23[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
