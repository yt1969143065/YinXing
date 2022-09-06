module JtagStateMachine(
  input        clock,
  input        reset,
  input        io_tms,
  output [3:0] io_currState
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] currState; // @[JtagStateMachine.scala 78:26]
  wire [3:0] _nextState_T_1 = io_tms ? 4'h7 : 4'hc; // @[JtagStateMachine.scala 85:23]
  wire [3:0] _nextState_T_3 = io_tms ? 4'h1 : 4'h2; // @[JtagStateMachine.scala 91:23]
  wire [3:0] _nextState_T_5 = io_tms ? 4'h5 : 4'h3; // @[JtagStateMachine.scala 97:23]
  wire [3:0] _nextState_T_6 = io_tms ? 4'h0 : 4'h3; // @[JtagStateMachine.scala 100:23]
  wire [3:0] _nextState_T_7 = io_tms ? 4'h5 : 4'h2; // @[JtagStateMachine.scala 103:23]
  wire [3:0] _nextState_T_9 = io_tms ? 4'hf : 4'he; // @[JtagStateMachine.scala 109:23]
  wire [3:0] _nextState_T_10 = io_tms ? 4'h9 : 4'ha; // @[JtagStateMachine.scala 112:23]
  wire [3:0] _nextState_T_12 = io_tms ? 4'hd : 4'hb; // @[JtagStateMachine.scala 118:23]
  wire [3:0] _nextState_T_13 = io_tms ? 4'h8 : 4'hb; // @[JtagStateMachine.scala 121:23]
  wire [3:0] _nextState_T_14 = io_tms ? 4'hd : 4'ha; // @[JtagStateMachine.scala 124:23]
  wire [3:0] _GEN_0 = 4'hd == currState ? _nextState_T_1 : 4'hf; // @[JtagStateMachine.scala 127:17 80:22]
  wire [3:0] _GEN_1 = 4'h8 == currState ? _nextState_T_14 : _GEN_0; // @[JtagStateMachine.scala 124:17 80:22]
  wire [3:0] _GEN_2 = 4'hb == currState ? _nextState_T_13 : _GEN_1; // @[JtagStateMachine.scala 121:17 80:22]
  wire [3:0] _GEN_3 = 4'h9 == currState ? _nextState_T_12 : _GEN_2; // @[JtagStateMachine.scala 118:17 80:22]
  wire [3:0] _GEN_4 = 4'ha == currState ? _nextState_T_10 : _GEN_3; // @[JtagStateMachine.scala 115:17 80:22]
  wire [3:0] _GEN_5 = 4'he == currState ? _nextState_T_10 : _GEN_4; // @[JtagStateMachine.scala 112:17 80:22]
  wire [3:0] _GEN_6 = 4'h4 == currState ? _nextState_T_9 : _GEN_5; // @[JtagStateMachine.scala 109:17 80:22]
  wire [3:0] _GEN_7 = 4'h5 == currState ? _nextState_T_1 : _GEN_6; // @[JtagStateMachine.scala 106:17 80:22]
  wire [3:0] _GEN_8 = 4'h0 == currState ? _nextState_T_7 : _GEN_7; // @[JtagStateMachine.scala 103:17 80:22]
  wire [3:0] _GEN_9 = 4'h3 == currState ? _nextState_T_6 : _GEN_8; // @[JtagStateMachine.scala 100:17 80:22]
  wire [3:0] _GEN_10 = 4'h1 == currState ? _nextState_T_5 : _GEN_9; // @[JtagStateMachine.scala 80:22 97:17]
  wire [3:0] _GEN_11 = 4'h2 == currState ? _nextState_T_3 : _GEN_10; // @[JtagStateMachine.scala 80:22 94:17]
  assign io_currState = currState; // @[JtagStateMachine.scala 131:16]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[JtagStateMachine.scala 80:22]
      currState <= 4'hf; // @[JtagStateMachine.scala 82:23]
    end else if (4'hf == currState) begin // @[JtagStateMachine.scala 80:22]
      if (io_tms) begin // @[JtagStateMachine.scala 85:23]
        currState <= 4'hf;
      end else begin
        currState <= 4'hc;
      end
    end else if (4'hc == currState) begin // @[JtagStateMachine.scala 80:22]
      if (io_tms) begin // @[JtagStateMachine.scala 88:23]
        currState <= 4'h7;
      end else begin
        currState <= 4'hc;
      end
    end else if (4'h7 == currState) begin // @[JtagStateMachine.scala 80:22]
      if (io_tms) begin // @[JtagStateMachine.scala 91:17]
        currState <= 4'h4;
      end else begin
        currState <= 4'h6;
      end
    end else if (4'h6 == currState) begin
      currState <= _nextState_T_3;
    end else begin
      currState <= _GEN_11;
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
  currState = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    currState = 4'hf;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
