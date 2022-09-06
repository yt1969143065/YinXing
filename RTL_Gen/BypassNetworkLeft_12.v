module BypassNetworkLeft_12(
  input         clock,
  input         io_hold,
  input  [63:0] io_source_0,
  input  [63:0] io_source_1,
  output [63:0] io_target_0,
  output [63:0] io_target_1,
  input         io_bypass_0_valid_0,
  input         io_bypass_0_valid_1,
  input  [63:0] io_bypass_0_data,
  input         io_bypass_1_valid_0,
  input         io_bypass_1_valid_1,
  input  [63:0] io_bypass_1_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] bypassedData_0; // @[BypassNetwork.scala 89:25]
  reg [63:0] bypassedData_1; // @[BypassNetwork.scala 89:25]
  wire [1:0] _bypassedData_0_target_T = {io_bypass_1_valid_0,io_bypass_0_valid_0}; // @[BypassNetwork.scala 48:32]
  wire [63:0] _bypassedData_0_target_T_2 = io_bypass_0_valid_0 ? io_bypass_0_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassedData_0_target_T_3 = io_bypass_1_valid_0 ? io_bypass_1_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassedData_0_target_T_4 = _bypassedData_0_target_T_2 | _bypassedData_0_target_T_3; // @[Mux.scala 27:73]
  wire [1:0] _bypassedData_1_target_T = {io_bypass_1_valid_1,io_bypass_0_valid_1}; // @[BypassNetwork.scala 48:32]
  wire [63:0] _bypassedData_1_target_T_2 = io_bypass_0_valid_1 ? io_bypass_0_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassedData_1_target_T_3 = io_bypass_1_valid_1 ? io_bypass_1_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassedData_1_target_T_4 = _bypassedData_1_target_T_2 | _bypassedData_1_target_T_3; // @[Mux.scala 27:73]
  assign io_target_0 = bypassedData_0; // @[BypassNetwork.scala 97:13]
  assign io_target_1 = bypassedData_1; // @[BypassNetwork.scala 97:13]
  always @(posedge clock) begin
    if (~io_hold) begin // @[BypassNetwork.scala 91:19]
      if (|_bypassedData_0_target_T) begin // @[BypassNetwork.scala 48:21]
        bypassedData_0 <= _bypassedData_0_target_T_4;
      end else begin
        bypassedData_0 <= io_source_0;
      end
    end
    if (~io_hold) begin // @[BypassNetwork.scala 91:19]
      if (|_bypassedData_1_target_T) begin // @[BypassNetwork.scala 48:21]
        bypassedData_1 <= _bypassedData_1_target_T_4;
      end else begin
        bypassedData_1 <= io_source_1;
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
  _RAND_0 = {2{`RANDOM}};
  bypassedData_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  bypassedData_1 = _RAND_1[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
