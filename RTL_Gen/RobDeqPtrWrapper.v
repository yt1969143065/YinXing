module RobDeqPtrWrapper(
  input        clock,
  input        reset,
  input  [1:0] io_state,
  input        io_deq_v_0,
  input        io_deq_v_1,
  input        io_deq_v_2,
  input        io_deq_v_3,
  input        io_deq_w0,
  input        io_deq_w1,
  input        io_deq_w2,
  input        io_deq_w3,
  input        io_exception_state_valid,
  input        io_exception_state_bits_robIdx_flag,
  input  [6:0] io_exception_state_bits_robIdx_value,
  input        io_exception_state_bits_exceptionVec_0,
  input        io_exception_state_bits_exceptionVec_1,
  input        io_exception_state_bits_exceptionVec_2,
  input        io_exception_state_bits_exceptionVec_3,
  input        io_exception_state_bits_exceptionVec_4,
  input        io_exception_state_bits_exceptionVec_5,
  input        io_exception_state_bits_exceptionVec_6,
  input        io_exception_state_bits_exceptionVec_7,
  input        io_exception_state_bits_exceptionVec_8,
  input        io_exception_state_bits_exceptionVec_9,
  input        io_exception_state_bits_exceptionVec_10,
  input        io_exception_state_bits_exceptionVec_11,
  input        io_exception_state_bits_exceptionVec_12,
  input        io_exception_state_bits_exceptionVec_13,
  input        io_exception_state_bits_exceptionVec_14,
  input        io_exception_state_bits_exceptionVec_15,
  input        io_exception_state_bits_replayInst,
  input        io_exception_state_bits_singleStep,
  input        io_exception_state_bits_trigger_frontendHit_0,
  input        io_exception_state_bits_trigger_frontendHit_1,
  input        io_exception_state_bits_trigger_frontendHit_2,
  input        io_exception_state_bits_trigger_frontendHit_3,
  input        io_exception_state_bits_trigger_backendHit_0,
  input        io_exception_state_bits_trigger_backendHit_1,
  input        io_exception_state_bits_trigger_backendHit_2,
  input        io_exception_state_bits_trigger_backendHit_3,
  input        io_exception_state_bits_trigger_backendHit_4,
  input        io_exception_state_bits_trigger_backendHit_5,
  input        io_intrBitSetReg,
  input        io_hasNoSpecExec,
  input        io_interrupt_safe,
  input        io_misPredBlock,
  input        io_isReplaying,
  input        io_hasWFI,
  output       io_out_0_flag,
  output [6:0] io_out_0_value,
  output [6:0] io_out_1_value,
  output [6:0] io_out_2_value,
  output       io_out_3_flag,
  output [6:0] io_out_3_value,
  output [6:0] io_next_out_0_value,
  output [6:0] io_next_out_1_value,
  output [6:0] io_next_out_2_value,
  output [6:0] io_next_out_3_value
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
`endif // RANDOMIZE_REG_INIT
  reg  deqPtrVec_0_flag; // @[Rob.scala 101:26]
  reg [6:0] deqPtrVec_0_value; // @[Rob.scala 101:26]
  reg  deqPtrVec_1_flag; // @[Rob.scala 101:26]
  reg [6:0] deqPtrVec_1_value; // @[Rob.scala 101:26]
  reg  deqPtrVec_2_flag; // @[Rob.scala 101:26]
  reg [6:0] deqPtrVec_2_value; // @[Rob.scala 101:26]
  reg  deqPtrVec_3_flag; // @[Rob.scala 101:26]
  reg [6:0] deqPtrVec_3_value; // @[Rob.scala 101:26]
  wire  intrEnable = io_intrBitSetReg & ~io_hasNoSpecExec & io_interrupt_safe; // @[Rob.scala 105:58]
  wire [7:0] exceptionEnable_lo = {io_exception_state_bits_exceptionVec_7,io_exception_state_bits_exceptionVec_6,
    io_exception_state_bits_exceptionVec_5,io_exception_state_bits_exceptionVec_4,io_exception_state_bits_exceptionVec_3
    ,io_exception_state_bits_exceptionVec_2,io_exception_state_bits_exceptionVec_1,
    io_exception_state_bits_exceptionVec_0}; // @[Rob.scala 173:33]
  wire [15:0] _exceptionEnable_T_1 = {io_exception_state_bits_exceptionVec_15,io_exception_state_bits_exceptionVec_14,
    io_exception_state_bits_exceptionVec_13,io_exception_state_bits_exceptionVec_12,
    io_exception_state_bits_exceptionVec_11,io_exception_state_bits_exceptionVec_10,
    io_exception_state_bits_exceptionVec_9,io_exception_state_bits_exceptionVec_8,exceptionEnable_lo}; // @[Rob.scala 173:33]
  wire  _exceptionEnable_T_7 = io_exception_state_bits_trigger_frontendHit_0 |
    io_exception_state_bits_trigger_frontendHit_1 | io_exception_state_bits_trigger_frontendHit_2 |
    io_exception_state_bits_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire  _exceptionEnable_T_12 = io_exception_state_bits_trigger_backendHit_0 |
    io_exception_state_bits_trigger_backendHit_1 | io_exception_state_bits_trigger_backendHit_2 |
    io_exception_state_bits_trigger_backendHit_3 | io_exception_state_bits_trigger_backendHit_4 |
    io_exception_state_bits_trigger_backendHit_5; // @[Bundle.scala 583:43]
  wire  _exceptionEnable_T_13 = _exceptionEnable_T_7 | _exceptionEnable_T_12; // @[Bundle.scala 584:28]
  wire  _exceptionEnable_T_14 = |_exceptionEnable_T_1 | io_exception_state_bits_singleStep |
    io_exception_state_bits_replayInst | _exceptionEnable_T_13; // @[Rob.scala 173:72]
  wire [7:0] _exceptionEnable_T_16 = {io_exception_state_bits_robIdx_flag,io_exception_state_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _exceptionEnable_T_17 = {deqPtrVec_0_flag,deqPtrVec_0_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _exceptionEnable_T_18 = _exceptionEnable_T_16 == _exceptionEnable_T_17; // @[CircularQueuePtr.scala 62:52]
  wire  exceptionEnable = io_deq_w0 & io_exception_state_valid & _exceptionEnable_T_14 & _exceptionEnable_T_18; // @[Rob.scala 106:103]
  wire  _redirectOutValid_T = io_state == 2'h0; // @[Rob.scala 107:35]
  wire  redirectOutValid = io_state == 2'h0 & io_deq_v_0 & (intrEnable | exceptionEnable); // @[Rob.scala 107:58]
  wire  commit_exception_differentFlag = io_exception_state_bits_robIdx_flag ^ deqPtrVec_3_flag; // @[CircularQueuePtr.scala 85:35]
  wire  commit_exception_compare = io_exception_state_bits_robIdx_value > deqPtrVec_3_value; // @[CircularQueuePtr.scala 86:30]
  wire  _commit_exception_T = commit_exception_differentFlag ^ commit_exception_compare; // @[CircularQueuePtr.scala 87:19]
  wire  commit_exception = io_exception_state_valid & ~_commit_exception_T; // @[Rob.scala 111:51]
  wire  canCommit_0 = io_deq_v_0 & io_deq_w0 & ~io_misPredBlock & ~io_isReplaying & ~io_hasWFI; // @[Rob.scala 112:124]
  wire  canCommit_1 = io_deq_v_1 & io_deq_w1 & ~io_misPredBlock & ~io_isReplaying & ~io_hasWFI; // @[Rob.scala 112:124]
  wire  canCommit_2 = io_deq_v_2 & io_deq_w2 & ~io_misPredBlock & ~io_isReplaying & ~io_hasWFI; // @[Rob.scala 112:124]
  wire  canCommit_3 = io_deq_v_3 & io_deq_w3 & ~io_misPredBlock & ~io_isReplaying & ~io_hasWFI; // @[Rob.scala 112:124]
  wire  _normalCommitCnt_T = ~canCommit_0; // @[Rob.scala 113:60]
  wire  _normalCommitCnt_T_1 = ~canCommit_1; // @[Rob.scala 113:60]
  wire  _normalCommitCnt_T_2 = ~canCommit_2; // @[Rob.scala 113:60]
  wire  _normalCommitCnt_T_3 = ~canCommit_3; // @[Rob.scala 113:60]
  wire [2:0] _normalCommitCnt_T_4 = _normalCommitCnt_T_3 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _normalCommitCnt_T_5 = _normalCommitCnt_T_2 ? 3'h2 : _normalCommitCnt_T_4; // @[Mux.scala 47:70]
  wire [2:0] _normalCommitCnt_T_6 = _normalCommitCnt_T_1 ? 3'h1 : _normalCommitCnt_T_5; // @[Mux.scala 47:70]
  wire [2:0] normalCommitCnt = _normalCommitCnt_T ? 3'h0 : _normalCommitCnt_T_6; // @[Mux.scala 47:70]
  wire  allowOnlyOne = commit_exception | io_intrBitSetReg; // @[Rob.scala 116:39]
  wire [2:0] commitCnt = allowOnlyOne ? {{2'd0}, canCommit_0} : normalCommitCnt; // @[Rob.scala 117:22]
  wire [7:0] _GEN_0 = {{5'd0}, commitCnt}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_2 = _exceptionEnable_T_17 + _GEN_0; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] commitDeqPtrVec_new_ptr_value = _commitDeqPtrVec_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  commitDeqPtrVec_new_ptr_flag = _commitDeqPtrVec_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_5 = {deqPtrVec_1_flag,deqPtrVec_1_value}; // @[Cat.scala 31:58]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_7 = _commitDeqPtrVec_new_ptr_T_5 + _GEN_0; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] commitDeqPtrVec_new_ptr_1_value = _commitDeqPtrVec_new_ptr_T_7[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  commitDeqPtrVec_new_ptr_1_flag = _commitDeqPtrVec_new_ptr_T_7[7]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_10 = {deqPtrVec_2_flag,deqPtrVec_2_value}; // @[Cat.scala 31:58]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_12 = _commitDeqPtrVec_new_ptr_T_10 + _GEN_0; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] commitDeqPtrVec_new_ptr_2_value = _commitDeqPtrVec_new_ptr_T_12[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  commitDeqPtrVec_new_ptr_2_flag = _commitDeqPtrVec_new_ptr_T_12[7]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_15 = {deqPtrVec_3_flag,deqPtrVec_3_value}; // @[Cat.scala 31:58]
  wire [7:0] _commitDeqPtrVec_new_ptr_T_17 = _commitDeqPtrVec_new_ptr_T_15 + _GEN_0; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] commitDeqPtrVec_new_ptr_3_value = _commitDeqPtrVec_new_ptr_T_17[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  commitDeqPtrVec_new_ptr_3_flag = _commitDeqPtrVec_new_ptr_T_17[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_0_flag = deqPtrVec_0_flag; // @[Rob.scala 125:15]
  assign io_out_0_value = deqPtrVec_0_value; // @[Rob.scala 125:15]
  assign io_out_1_value = deqPtrVec_1_value; // @[Rob.scala 125:15]
  assign io_out_2_value = deqPtrVec_2_value; // @[Rob.scala 125:15]
  assign io_out_3_flag = deqPtrVec_3_flag; // @[Rob.scala 125:15]
  assign io_out_3_value = deqPtrVec_3_value; // @[Rob.scala 125:15]
  assign io_next_out_0_value = _redirectOutValid_T & ~redirectOutValid ? commitDeqPtrVec_new_ptr_value :
    deqPtrVec_0_value; // @[Rob.scala 120:27]
  assign io_next_out_1_value = _redirectOutValid_T & ~redirectOutValid ? commitDeqPtrVec_new_ptr_1_value :
    deqPtrVec_1_value; // @[Rob.scala 120:27]
  assign io_next_out_2_value = _redirectOutValid_T & ~redirectOutValid ? commitDeqPtrVec_new_ptr_2_value :
    deqPtrVec_2_value; // @[Rob.scala 120:27]
  assign io_next_out_3_value = _redirectOutValid_T & ~redirectOutValid ? commitDeqPtrVec_new_ptr_3_value :
    deqPtrVec_3_value; // @[Rob.scala 120:27]
  always @(posedge clock) begin
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_0_flag <= 1'h0; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_0_flag <= commitDeqPtrVec_new_ptr_flag;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_0_value <= 7'h0; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_0_value <= commitDeqPtrVec_new_ptr_value;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_1_flag <= 1'h0; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_1_flag <= commitDeqPtrVec_new_ptr_1_flag;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_1_value <= 7'h1; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_1_value <= commitDeqPtrVec_new_ptr_1_value;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_2_flag <= 1'h0; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_2_flag <= commitDeqPtrVec_new_ptr_2_flag;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_2_value <= 7'h2; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_2_value <= commitDeqPtrVec_new_ptr_2_value;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_3_flag <= 1'h0; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_3_flag <= commitDeqPtrVec_new_ptr_3_flag;
    end
    if (reset) begin // @[Rob.scala 101:26]
      deqPtrVec_3_value <= 7'h3; // @[Rob.scala 101:26]
    end else if (_redirectOutValid_T & ~redirectOutValid) begin // @[Rob.scala 120:27]
      deqPtrVec_3_value <= commitDeqPtrVec_new_ptr_3_value;
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
  deqPtrVec_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  deqPtrVec_0_value = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  deqPtrVec_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  deqPtrVec_1_value = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  deqPtrVec_2_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  deqPtrVec_2_value = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  deqPtrVec_3_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  deqPtrVec_3_value = _RAND_7[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
