module FDivSqrt(
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
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input         io_in_bits_uop_ctrl_fpu_typeTagIn,
  input         io_in_bits_uop_ctrl_fpu_sqrt,
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
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
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
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[FDivSqrt.scala 93:35]
  wire  dataModule_reset; // @[FDivSqrt.scala 93:35]
  wire [63:0] dataModule_io_in_src_0; // @[FDivSqrt.scala 93:35]
  wire [63:0] dataModule_io_in_src_1; // @[FDivSqrt.scala 93:35]
  wire  dataModule_io_in_fpCtrl_typeTagIn; // @[FDivSqrt.scala 93:35]
  wire  dataModule_io_in_fpCtrl_sqrt; // @[FDivSqrt.scala 93:35]
  wire [2:0] dataModule_io_in_rm; // @[FDivSqrt.scala 93:35]
  wire [63:0] dataModule_io_out_data; // @[FDivSqrt.scala 93:35]
  wire [4:0] dataModule_io_out_fflags; // @[FDivSqrt.scala 93:35]
  wire  dataModule_in_valid; // @[FDivSqrt.scala 93:35]
  wire  dataModule_out_ready; // @[FDivSqrt.scala 93:35]
  wire  dataModule_in_ready; // @[FDivSqrt.scala 93:35]
  wire  dataModule_out_valid; // @[FDivSqrt.scala 93:35]
  wire  dataModule_kill_w; // @[FDivSqrt.scala 93:35]
  wire  dataModule_kill_r; // @[FDivSqrt.scala 93:35]
  wire  _T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg  uopReg_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  uopReg_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  uopReg_cf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  uopReg_cf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  uopReg_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  uopReg_cf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  uopReg_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  uopReg_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [6:0] uopReg_pdest; // @[Reg.scala 16:16]
  reg  uopReg_robIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] uopReg_robIdx_value; // @[Reg.scala 16:16]
  wire [7:0] _kill_rflushItself_T_1 = {uopReg_robIdx_flag,uopReg_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _kill_rflushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _kill_rflushItself_T_3 = _kill_rflushItself_T_1 == _kill_rflushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  kill_rflushItself = io_redirectIn_bits_level & _kill_rflushItself_T_3; // @[Rob.scala 35:51]
  wire  kill_rdifferentFlag = uopReg_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  kill_rcompare = uopReg_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _kill_rT_1 = kill_rdifferentFlag ^ kill_rcompare; // @[CircularQueuePtr.scala 87:19]
  wire  _kill_rT_3 = io_redirectIn_valid & (kill_rflushItself | _kill_rT_1); // @[Rob.scala 36:20]
  wire [7:0] _dataModule_kill_wflushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _dataModule_kill_wflushItself_T_3 = _dataModule_kill_wflushItself_T_1 == _kill_rflushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  dataModule_kill_wflushItself = io_redirectIn_bits_level & _dataModule_kill_wflushItself_T_3; // @[Rob.scala 35:51]
  wire  dataModule_kill_wdifferentFlag = io_in_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  dataModule_kill_wcompare = io_in_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _dataModule_kill_wT = dataModule_kill_wdifferentFlag ^ dataModule_kill_wcompare; // @[CircularQueuePtr.scala 87:19]
  FDivSqrtDataModule dataModule ( // @[FDivSqrt.scala 93:35]
    .clock(dataModule_clock),
    .reset(dataModule_reset),
    .io_in_src_0(dataModule_io_in_src_0),
    .io_in_src_1(dataModule_io_in_src_1),
    .io_in_fpCtrl_typeTagIn(dataModule_io_in_fpCtrl_typeTagIn),
    .io_in_fpCtrl_sqrt(dataModule_io_in_fpCtrl_sqrt),
    .io_in_rm(dataModule_io_in_rm),
    .io_out_data(dataModule_io_out_data),
    .io_out_fflags(dataModule_io_out_fflags),
    .in_valid(dataModule_in_valid),
    .out_ready(dataModule_out_ready),
    .in_ready(dataModule_in_ready),
    .out_valid(dataModule_out_valid),
    .kill_w(dataModule_kill_w),
    .kill_r(dataModule_kill_r)
  );
  assign io_in_ready = dataModule_in_ready; // @[FDivSqrt.scala 99:15]
  assign io_out_valid = dataModule_out_valid; // @[FDivSqrt.scala 100:16]
  assign io_out_bits_data = dataModule_io_out_data; // @[FPUSubModule.scala 59:22]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = uopReg_cf_trigger_backendHit_0; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = uopReg_cf_trigger_backendHit_1; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = uopReg_cf_trigger_backendHit_2; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = uopReg_cf_trigger_backendHit_3; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = uopReg_cf_trigger_backendHit_4; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = uopReg_cf_trigger_backendHit_5; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_ctrl_rfWen = uopReg_ctrl_rfWen; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_ctrl_fpWen = uopReg_ctrl_fpWen; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_pdest = uopReg_pdest; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_robIdx_flag = uopReg_robIdx_flag; // @[FDivSqrt.scala 101:19]
  assign io_out_bits_uop_robIdx_value = uopReg_robIdx_value; // @[FDivSqrt.scala 101:19]
  assign fflags = dataModule_io_out_fflags; // @[FPUSubModule.scala 60:12]
  assign dataModule_clock = clock;
  assign dataModule_reset = reset;
  assign dataModule_io_in_src_0 = io_in_bits_src_0; // @[FPUSubModule.scala 56:26]
  assign dataModule_io_in_src_1 = io_in_bits_src_1; // @[FPUSubModule.scala 56:26]
  assign dataModule_io_in_fpCtrl_typeTagIn = io_in_bits_uop_ctrl_fpu_typeTagIn; // @[FPUSubModule.scala 57:29]
  assign dataModule_io_in_fpCtrl_sqrt = io_in_bits_uop_ctrl_fpu_sqrt; // @[FPUSubModule.scala 57:29]
  assign dataModule_io_in_rm = rm; // @[FPUSubModule.scala 58:25]
  assign dataModule_in_valid = io_in_valid; // @[FDivSqrt.scala 95:23]
  assign dataModule_out_ready = io_out_ready; // @[FDivSqrt.scala 96:24]
  assign dataModule_kill_w = io_redirectIn_valid & (dataModule_kill_wflushItself | _dataModule_kill_wT); // @[Rob.scala 36:20]
  assign dataModule_kill_r = ~io_in_ready & _kill_rT_3; // @[FDivSqrt.scala 91:29]
  always @(posedge clock) begin
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_pdest <= io_in_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_robIdx_value <= io_in_bits_uop_robIdx_value; // @[Reg.scala 17:22]
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
  uopReg_cf_trigger_backendHit_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  uopReg_cf_trigger_backendHit_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  uopReg_cf_trigger_backendHit_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  uopReg_cf_trigger_backendHit_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  uopReg_cf_trigger_backendHit_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  uopReg_cf_trigger_backendHit_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  uopReg_ctrl_rfWen = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  uopReg_ctrl_fpWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  uopReg_pdest = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  uopReg_robIdx_flag = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  uopReg_robIdx_value = _RAND_10[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
