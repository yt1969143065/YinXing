module FastArbiter_1(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [21:0] io_in_0_bits_tag,
  input  [7:0]  io_in_0_bits_set,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [21:0] io_in_1_bits_tag,
  input  [7:0]  io_in_1_bits_set,
  input         io_out_ready,
  output        io_out_valid,
  output [21:0] io_out_bits_tag,
  output [7:0]  io_out_bits_set
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [1:0] valids = {io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 18:50]
  reg [1:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [1:0] pendingMask; // @[Reg.scala 28:20]
  wire [1:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 33:47]
  wire  _rrSelOH_T_5 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 13:24]
  wire [1:0] rrSelOH = {_rrSelOH_T_5,_rrSelOH_T[0]}; // @[FastArbiter.scala 33:80]
  wire [1:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 35:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 35:39]
  wire  _firstOneOH_T_4 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 13:24]
  wire [1:0] firstOneOH = {_firstOneOH_T_4,valids[0]}; // @[FastArbiter.scala 34:62]
  wire [1:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 36:18]
  wire [1:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 21:15]
  wire [1:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 21:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 31:51]
  wire [1:0] _rrGrantMask_T_2 = {_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 32:12]
  wire [7:0] _io_out_bits_T_2 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_3 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_5 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_6 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 38:29]
  assign io_out_bits_tag = _io_out_bits_T_5 | _io_out_bits_T_6; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_2 | _io_out_bits_T_3; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      rrGrantMask <= 2'h0; // @[Reg.scala 28:20]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 29:18]
      rrGrantMask <= _rrGrantMask_T_2; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      pendingMask <= 2'h0; // @[Reg.scala 28:20]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 29:18]
      pendingMask <= _pendingMask_T_1; // @[Reg.scala 29:22]
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
  rrGrantMask = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
