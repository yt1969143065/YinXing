module IntToFP_2(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input         io_in_bits_uop_ctrl_fpu_typeTagOut,
  input         io_in_bits_uop_ctrl_fpu_wflags,
  input  [1:0]  io_in_bits_uop_ctrl_fpu_typ,
  input  [2:0]  io_in_bits_uop_ctrl_fpu_rm,
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
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  input         io_redirectIn_valid,
  input         io_redirectIn_bits_robIdx_flag,
  input  [6:0]  io_redirectIn_bits_robIdx_value,
  input         io_redirectIn_bits_level,
  input  [2:0]  rm,
  output [4:0]  fflags
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
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[IntToFP.scala 84:35]
  wire [63:0] dataModule_io_in_src_0; // @[IntToFP.scala 84:35]
  wire  dataModule_io_in_fpCtrl_typeTagOut; // @[IntToFP.scala 84:35]
  wire  dataModule_io_in_fpCtrl_wflags; // @[IntToFP.scala 84:35]
  wire [1:0] dataModule_io_in_fpCtrl_typ; // @[IntToFP.scala 84:35]
  wire [2:0] dataModule_io_in_rm; // @[IntToFP.scala 84:35]
  wire [63:0] dataModule_io_out_data; // @[IntToFP.scala 84:35]
  wire [4:0] dataModule_io_out_fflags; // @[IntToFP.scala 84:35]
  wire  dataModule_regEnables_0; // @[IntToFP.scala 84:35]
  wire  dataModule_regEnables_1; // @[IntToFP.scala 84:35]
  reg  REG; // @[FunctionUnit.scala 103:60]
  reg  REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_pd_isRVC; // @[FunctionUnit.scala 105:57]
  reg [1:0] REG_2_cf_pd_brType; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_pd_isCall; // @[FunctionUnit.scala 105:57]
  reg  REG_2_cf_pd_isRet; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg [19:0] REG_2_ctrl_imm; // @[FunctionUnit.scala 105:57]
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
  IntToFPDataModule dataModule ( // @[IntToFP.scala 84:35]
    .clock(dataModule_clock),
    .io_in_src_0(dataModule_io_in_src_0),
    .io_in_fpCtrl_typeTagOut(dataModule_io_in_fpCtrl_typeTagOut),
    .io_in_fpCtrl_wflags(dataModule_io_in_fpCtrl_wflags),
    .io_in_fpCtrl_typ(dataModule_io_in_fpCtrl_typ),
    .io_in_rm(dataModule_io_in_rm),
    .io_out_data(dataModule_io_out_data),
    .io_out_fflags(dataModule_io_out_fflags),
    .regEnables_0(dataModule_regEnables_0),
    .regEnables_1(dataModule_regEnables_1)
  );
  assign io_in_ready = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  assign io_out_valid = REG; // @[FunctionUnit.scala 125:16]
  assign io_out_bits_data = dataModule_io_out_data; // @[FPUSubModule.scala 59:22]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = REG_2_cf_trigger_backendHit_0; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = REG_2_cf_trigger_backendHit_1; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = REG_2_cf_trigger_backendHit_2; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = REG_2_cf_trigger_backendHit_3; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = REG_2_cf_trigger_backendHit_4; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = REG_2_cf_trigger_backendHit_5; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_pd_isRVC = REG_2_cf_pd_isRVC; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_pd_brType = REG_2_cf_pd_brType; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_pd_isCall = REG_2_cf_pd_isCall; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_cf_pd_isRet = REG_2_cf_pd_isRet; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_rfWen = REG_2_ctrl_rfWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpWen = REG_2_ctrl_fpWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_imm = REG_2_ctrl_imm; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_pdest = REG_2_pdest; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_flag = REG_2_robIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_value = REG_2_robIdx_value; // @[FunctionUnit.scala 126:19]
  assign fflags = dataModule_io_out_fflags; // @[FPUSubModule.scala 60:12]
  assign dataModule_clock = clock;
  assign dataModule_io_in_src_0 = io_in_bits_src_0; // @[FPUSubModule.scala 56:26]
  assign dataModule_io_in_fpCtrl_typeTagOut = io_in_bits_uop_ctrl_fpu_typeTagOut; // @[FPUSubModule.scala 57:29]
  assign dataModule_io_in_fpCtrl_wflags = io_in_bits_uop_ctrl_fpu_wflags; // @[FPUSubModule.scala 57:29]
  assign dataModule_io_in_fpCtrl_typ = io_in_bits_uop_ctrl_fpu_typ; // @[FPUSubModule.scala 57:29]
  assign dataModule_io_in_rm = rm; // @[FPUSubModule.scala 58:25]
  assign dataModule_regEnables_0 = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign dataModule_regEnables_1 = REG & io_out_ready & _T_21; // @[FunctionUnit.scala 128:66]
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
      REG_2_cf_pd_isRVC <= io_in_bits_uop_cf_pd_isRVC; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_pd_brType <= io_in_bits_uop_cf_pd_brType; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_pd_isCall <= io_in_bits_uop_cf_pd_isCall; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_cf_pd_isRet <= io_in_bits_uop_cf_pd_isRet; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_imm <= io_in_bits_uop_ctrl_imm; // @[FunctionUnit.scala 118:17]
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
  REG_2_cf_pd_isRVC = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_cf_pd_brType = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_cf_pd_isCall = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_cf_pd_isRet = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  REG_2_ctrl_rfWen = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_2_ctrl_fpWen = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_2_ctrl_imm = _RAND_13[19:0];
  _RAND_14 = {1{`RANDOM}};
  REG_2_pdest = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  REG_2_robIdx_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  REG_2_robIdx_value = _RAND_16[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
