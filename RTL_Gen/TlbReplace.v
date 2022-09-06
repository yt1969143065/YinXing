module TlbReplace(
  input        clock,
  input        reset,
  input        io_superPage_access_0_touch_ways_valid,
  input  [2:0] io_superPage_access_0_touch_ways_bits,
  input        io_superPage_access_1_touch_ways_valid,
  input  [2:0] io_superPage_access_1_touch_ways_bits,
  output [2:0] io_superPage_refillIdx
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [6:0] state_reg_1; // @[Replacement.scala 198:70]
  wire  _T_1 = io_superPage_access_0_touch_ways_valid | io_superPage_access_1_touch_ways_valid; // @[package.scala 72:59]
  wire  state_reg_set_left_older = ~io_superPage_access_0_touch_ways_bits[2]; // @[Replacement.scala 226:33]
  wire [2:0] state_reg_left_subtree_state = state_reg_1[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state = state_reg_1[2:0]; // @[Replacement.scala 228:38]
  wire  state_reg_set_left_older_1 = ~io_superPage_access_0_touch_ways_bits[1]; // @[Replacement.scala 226:33]
  wire  state_reg_left_subtree_state_1 = state_reg_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_1 = state_reg_left_subtree_state[0]; // @[Replacement.scala 228:38]
  wire  _state_reg_T_3 = ~io_superPage_access_0_touch_ways_bits[0]; // @[Replacement.scala 248:7]
  wire  _state_reg_T_4 = state_reg_set_left_older_1 ? state_reg_left_subtree_state_1 : _state_reg_T_3; // @[Replacement.scala 233:16]
  wire  _state_reg_T_8 = state_reg_set_left_older_1 ? _state_reg_T_3 : state_reg_right_subtree_state_1; // @[Replacement.scala 236:16]
  wire [2:0] _state_reg_T_9 = {state_reg_set_left_older_1,_state_reg_T_4,_state_reg_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_10 = state_reg_set_left_older ? state_reg_left_subtree_state : _state_reg_T_9; // @[Replacement.scala 233:16]
  wire  state_reg_left_subtree_state_2 = state_reg_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_2 = state_reg_right_subtree_state[0]; // @[Replacement.scala 228:38]
  wire  _state_reg_T_15 = state_reg_set_left_older_1 ? state_reg_left_subtree_state_2 : _state_reg_T_3; // @[Replacement.scala 233:16]
  wire  _state_reg_T_19 = state_reg_set_left_older_1 ? _state_reg_T_3 : state_reg_right_subtree_state_2; // @[Replacement.scala 236:16]
  wire [2:0] _state_reg_T_20 = {state_reg_set_left_older_1,_state_reg_T_15,_state_reg_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_21 = state_reg_set_left_older ? _state_reg_T_20 : state_reg_right_subtree_state; // @[Replacement.scala 236:16]
  wire [6:0] _state_reg_T_22 = {state_reg_set_left_older,_state_reg_T_10,_state_reg_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_23 = io_superPage_access_0_touch_ways_valid ? _state_reg_T_22 : state_reg_1; // @[Replacement.scala 41:56]
  wire  state_reg_set_left_older_3 = ~io_superPage_access_1_touch_ways_bits[2]; // @[Replacement.scala 226:33]
  wire [2:0] state_reg_left_subtree_state_3 = _state_reg_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state_3 = _state_reg_T_23[2:0]; // @[Replacement.scala 228:38]
  wire  state_reg_set_left_older_4 = ~io_superPage_access_1_touch_ways_bits[1]; // @[Replacement.scala 226:33]
  wire  state_reg_left_subtree_state_4 = state_reg_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_4 = state_reg_left_subtree_state_3[0]; // @[Replacement.scala 228:38]
  wire  _state_reg_T_27 = ~io_superPage_access_1_touch_ways_bits[0]; // @[Replacement.scala 248:7]
  wire  _state_reg_T_28 = state_reg_set_left_older_4 ? state_reg_left_subtree_state_4 : _state_reg_T_27; // @[Replacement.scala 233:16]
  wire  _state_reg_T_32 = state_reg_set_left_older_4 ? _state_reg_T_27 : state_reg_right_subtree_state_4; // @[Replacement.scala 236:16]
  wire [2:0] _state_reg_T_33 = {state_reg_set_left_older_4,_state_reg_T_28,_state_reg_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_34 = state_reg_set_left_older_3 ? state_reg_left_subtree_state_3 : _state_reg_T_33; // @[Replacement.scala 233:16]
  wire  state_reg_left_subtree_state_5 = state_reg_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_5 = state_reg_right_subtree_state_3[0]; // @[Replacement.scala 228:38]
  wire  _state_reg_T_39 = state_reg_set_left_older_4 ? state_reg_left_subtree_state_5 : _state_reg_T_27; // @[Replacement.scala 233:16]
  wire  _state_reg_T_43 = state_reg_set_left_older_4 ? _state_reg_T_27 : state_reg_right_subtree_state_5; // @[Replacement.scala 236:16]
  wire [2:0] _state_reg_T_44 = {state_reg_set_left_older_4,_state_reg_T_39,_state_reg_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_45 = state_reg_set_left_older_3 ? _state_reg_T_44 : state_reg_right_subtree_state_3; // @[Replacement.scala 236:16]
  wire [6:0] _state_reg_T_46 = {state_reg_set_left_older_3,_state_reg_T_34,_state_reg_T_45}; // @[Cat.scala 31:58]
  wire  io_superPage_refillIdx_left_subtree_older = state_reg_1[6]; // @[Replacement.scala 273:38]
  wire  io_superPage_refillIdx_left_subtree_older_1 = state_reg_left_subtree_state[2]; // @[Replacement.scala 273:38]
  wire  _io_superPage_refillIdx_T_2 = io_superPage_refillIdx_left_subtree_older_1 ? state_reg_left_subtree_state_1 :
    state_reg_right_subtree_state_1; // @[Replacement.scala 280:16]
  wire [1:0] _io_superPage_refillIdx_T_3 = {io_superPage_refillIdx_left_subtree_older_1,_io_superPage_refillIdx_T_2}; // @[Cat.scala 31:58]
  wire  io_superPage_refillIdx_left_subtree_older_2 = state_reg_right_subtree_state[2]; // @[Replacement.scala 273:38]
  wire  _io_superPage_refillIdx_T_6 = io_superPage_refillIdx_left_subtree_older_2 ? state_reg_left_subtree_state_2 :
    state_reg_right_subtree_state_2; // @[Replacement.scala 280:16]
  wire [1:0] _io_superPage_refillIdx_T_7 = {io_superPage_refillIdx_left_subtree_older_2,_io_superPage_refillIdx_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _io_superPage_refillIdx_T_8 = io_superPage_refillIdx_left_subtree_older ? _io_superPage_refillIdx_T_3 :
    _io_superPage_refillIdx_T_7; // @[Replacement.scala 280:16]
  assign io_superPage_refillIdx = {io_superPage_refillIdx_left_subtree_older,_io_superPage_refillIdx_T_8}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (reset) begin // @[Replacement.scala 198:70]
      state_reg_1 <= 7'h0; // @[Replacement.scala 198:70]
    end else if (_T_1) begin // @[Replacement.scala 205:40]
      if (io_superPage_access_1_touch_ways_valid) begin // @[Replacement.scala 41:56]
        state_reg_1 <= _state_reg_T_46;
      end else if (io_superPage_access_0_touch_ways_valid) begin // @[Replacement.scala 41:56]
        state_reg_1 <= _state_reg_T_22;
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
  state_reg_1 = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
