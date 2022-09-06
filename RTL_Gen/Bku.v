module Bku(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  input         io_redirectIn_valid,
  input         io_redirectIn_bits_robIdx_flag,
  input  [6:0]  io_redirectIn_bits_robIdx_value,
  input         io_redirectIn_bits_level
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
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  wire  countModule_clock; // @[Bku.scala 334:27]
  wire [63:0] countModule_io_src; // @[Bku.scala 334:27]
  wire [6:0] countModule_io_func; // @[Bku.scala 334:27]
  wire  countModule_io_regEnable; // @[Bku.scala 334:27]
  wire [63:0] countModule_io_out; // @[Bku.scala 334:27]
  wire  clmulModule_clock; // @[Bku.scala 339:27]
  wire [63:0] clmulModule_io_src_0; // @[Bku.scala 339:27]
  wire [63:0] clmulModule_io_src_1; // @[Bku.scala 339:27]
  wire [6:0] clmulModule_io_func; // @[Bku.scala 339:27]
  wire  clmulModule_io_regEnable; // @[Bku.scala 339:27]
  wire [63:0] clmulModule_io_out; // @[Bku.scala 339:27]
  wire  miscModule_clock; // @[Bku.scala 345:26]
  wire [63:0] miscModule_io_src_0; // @[Bku.scala 345:26]
  wire [63:0] miscModule_io_src_1; // @[Bku.scala 345:26]
  wire [6:0] miscModule_io_func; // @[Bku.scala 345:26]
  wire  miscModule_io_regEnable; // @[Bku.scala 345:26]
  wire [63:0] miscModule_io_out; // @[Bku.scala 345:26]
  wire  cryptoModule_clock; // @[Bku.scala 351:28]
  wire [63:0] cryptoModule_io_src_0; // @[Bku.scala 351:28]
  wire [63:0] cryptoModule_io_src_1; // @[Bku.scala 351:28]
  wire [6:0] cryptoModule_io_func; // @[Bku.scala 351:28]
  wire  cryptoModule_io_regEnable; // @[Bku.scala 351:28]
  wire [63:0] cryptoModule_io_out; // @[Bku.scala 351:28]
  reg  REG; // @[FunctionUnit.scala 103:60]
  reg  REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 105:57]
  reg [6:0] REG_2_ctrl_fuOpType; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg [6:0] REG_2_pdest; // @[FunctionUnit.scala 105:57]
  reg  REG_2_robIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [6:0] REG_2_robIdx_value; // @[FunctionUnit.scala 105:57]
  wire [7:0] _flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _flushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself = io_redirectIn_bits_level & _flushItself_T_3; // @[Rob.scala 35:51]
  wire  differentFlag = io_in_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare = io_in_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T_2 = differentFlag ^ compare; // @[CircularQueuePtr.scala 87:19]
  wire  _T_4 = io_redirectIn_valid & (flushItself | _T_2); // @[Rob.scala 36:20]
  wire  _T_5 = io_in_valid & _T_4; // @[FunctionUnit.scala 109:53]
  wire [7:0] _flushItself_T_5 = {REG_2_robIdx_flag,REG_2_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushItself_T_7 = _flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushItself_1 = io_redirectIn_bits_level & _flushItself_T_7; // @[Rob.scala 35:51]
  wire  differentFlag_1 = REG_2_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  compare_1 = REG_2_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _T_6 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _T_8 = io_redirectIn_valid & (flushItself_1 | _T_6); // @[Rob.scala 36:20]
  wire  _T_9 = REG & _T_8; // @[FunctionUnit.scala 109:53]
  wire  _T_15 = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  wire  _T_17 = ~_T_5; // @[FunctionUnit.scala 116:46]
  wire  _T_21 = ~_T_9; // @[FunctionUnit.scala 116:46]
  wire  _io_out_bits_data_T_2 = REG & io_out_ready & _T_21; // @[FunctionUnit.scala 128:66]
  reg [63:0] io_out_bits_data_r; // @[Reg.scala 16:16]
  CountModule countModule ( // @[Bku.scala 334:27]
    .clock(countModule_clock),
    .io_src(countModule_io_src),
    .io_func(countModule_io_func),
    .io_regEnable(countModule_io_regEnable),
    .io_out(countModule_io_out)
  );
  ClmulModule clmulModule ( // @[Bku.scala 339:27]
    .clock(clmulModule_clock),
    .io_src_0(clmulModule_io_src_0),
    .io_src_1(clmulModule_io_src_1),
    .io_func(clmulModule_io_func),
    .io_regEnable(clmulModule_io_regEnable),
    .io_out(clmulModule_io_out)
  );
  MiscModule miscModule ( // @[Bku.scala 345:26]
    .clock(miscModule_clock),
    .io_src_0(miscModule_io_src_0),
    .io_src_1(miscModule_io_src_1),
    .io_func(miscModule_io_func),
    .io_regEnable(miscModule_io_regEnable),
    .io_out(miscModule_io_out)
  );
  CryptoModule cryptoModule ( // @[Bku.scala 351:28]
    .clock(cryptoModule_clock),
    .io_src_0(cryptoModule_io_src_0),
    .io_src_1(cryptoModule_io_src_1),
    .io_func(cryptoModule_io_func),
    .io_regEnable(cryptoModule_io_regEnable),
    .io_out(cryptoModule_io_out)
  );
  assign io_in_ready = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  assign io_out_valid = REG; // @[FunctionUnit.scala 125:16]
  assign io_out_bits_data = io_out_bits_data_r; // @[Bku.scala 364:20]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_rfWen = REG_2_ctrl_rfWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpWen = REG_2_ctrl_fpWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_pdest = REG_2_pdest; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_flag = REG_2_robIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_value = REG_2_robIdx_value; // @[FunctionUnit.scala 126:19]
  assign countModule_clock = clock;
  assign countModule_io_src = io_in_bits_src_0; // @[Bku.scala 335:22]
  assign countModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Bku.scala 336:23]
  assign countModule_io_regEnable = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign clmulModule_clock = clock;
  assign clmulModule_io_src_0 = io_in_bits_src_0; // @[Bku.scala 340:25]
  assign clmulModule_io_src_1 = io_in_bits_src_1; // @[Bku.scala 341:25]
  assign clmulModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Bku.scala 342:23]
  assign clmulModule_io_regEnable = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign miscModule_clock = clock;
  assign miscModule_io_src_0 = io_in_bits_src_0; // @[Bku.scala 346:24]
  assign miscModule_io_src_1 = io_in_bits_src_1; // @[Bku.scala 347:24]
  assign miscModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Bku.scala 348:22]
  assign miscModule_io_regEnable = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign cryptoModule_clock = clock;
  assign cryptoModule_io_src_0 = io_in_bits_src_0; // @[Bku.scala 352:26]
  assign cryptoModule_io_src_1 = io_in_bits_src_1; // @[Bku.scala 353:26]
  assign cryptoModule_io_func = io_in_bits_uop_ctrl_fuOpType; // @[Bku.scala 354:24]
  assign cryptoModule_io_regEnable = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  always @(posedge clock) begin
    if (reset) begin // @[FunctionUnit.scala 103:60]
      REG <= 1'h0; // @[FunctionUnit.scala 103:60]
    end else if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG <= io_in_valid; // @[FunctionUnit.scala 117:19]
    end else if (_T_9 | io_out_ready) begin // @[FunctionUnit.scala 119:41]
      REG <= 1'h0; // @[FunctionUnit.scala 120:19]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_pdest <= io_in_bits_uop_pdest; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_value <= io_in_bits_uop_robIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_io_out_bits_data_T_2) begin // @[Reg.scala 17:18]
      if (REG_2_ctrl_fuOpType[5]) begin // @[Bku.scala 360:19]
        io_out_bits_data_r <= cryptoModule_io_out;
      end else if (REG_2_ctrl_fuOpType[3]) begin // @[Bku.scala 361:22]
        io_out_bits_data_r <= countModule_io_out;
      end else if (REG_2_ctrl_fuOpType[2]) begin // @[Bku.scala 362:26]
        io_out_bits_data_r <= miscModule_io_out;
      end else begin
        io_out_bits_data_r <= clmulModule_io_out;
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_cf_trigger_backendHit_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_ctrl_fuOpType = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_ctrl_rfWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_ctrl_fpWen = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_pdest = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  REG_2_robIdx_flag = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_2_robIdx_value = _RAND_12[6:0];
  _RAND_13 = {2{`RANDOM}};
  io_out_bits_data_r = _RAND_13[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
