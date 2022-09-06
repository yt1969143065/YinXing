module ICacheProbeEntry(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits_addr,
  input  [38:0] io_req_bits_vaddr,
  input  [1:0]  io_req_bits_param,
  input         io_req_bits_needData,
  input         io_pipe_req_ready,
  output        io_pipe_req_valid,
  output [35:0] io_pipe_req_bits_paddr,
  output [38:0] io_pipe_req_bits_vaddr,
  output [2:0]  io_pipe_req_bits_param,
  output        io_pipe_req_bits_needData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  state; // @[ICacheProbeUnit.scala 47:22]
  reg [35:0] req_addr; // @[ICacheProbeUnit.scala 49:16]
  reg [38:0] req_vaddr; // @[ICacheProbeUnit.scala 49:16]
  reg [1:0] req_param; // @[ICacheProbeUnit.scala 49:16]
  reg  req_needData; // @[ICacheProbeUnit.scala 49:16]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_6 = _T_1 | state; // @[ICacheProbeUnit.scala 58:26 60:13 47:22]
  wire  _GEN_14 = ~state ? _GEN_6 : state; // @[ICacheProbeUnit.scala 47:22 56:30]
  wire  _T_3 = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  assign io_req_ready = ~state; // @[ICacheProbeUnit.scala 56:15]
  assign io_pipe_req_valid = state; // @[ICacheProbeUnit.scala 53:21 64:31 65:23]
  assign io_pipe_req_bits_paddr = req_addr; // @[ICacheProbeUnit.scala 64:31 69:22]
  assign io_pipe_req_bits_vaddr = req_vaddr; // @[ICacheProbeUnit.scala 64:31 70:21]
  assign io_pipe_req_bits_param = {{1'd0}, req_param};
  assign io_pipe_req_bits_needData = req_needData; // @[ICacheProbeUnit.scala 64:31 73:23]
  always @(posedge clock) begin
    if (reset) begin // @[ICacheProbeUnit.scala 47:22]
      state <= 1'h0; // @[ICacheProbeUnit.scala 47:22]
    end else if (state) begin // @[ICacheProbeUnit.scala 64:31]
      if (_T_3) begin // @[ICacheProbeUnit.scala 76:31]
        state <= 1'h0; // @[ICacheProbeUnit.scala 77:13]
      end else begin
        state <= _GEN_14;
      end
    end else begin
      state <= _GEN_14;
    end
    if (~state) begin // @[ICacheProbeUnit.scala 56:30]
      if (_T_1) begin // @[ICacheProbeUnit.scala 58:26]
        req_addr <= io_req_bits_addr; // @[ICacheProbeUnit.scala 59:11]
      end
    end
    if (~state) begin // @[ICacheProbeUnit.scala 56:30]
      if (_T_1) begin // @[ICacheProbeUnit.scala 58:26]
        req_vaddr <= io_req_bits_vaddr; // @[ICacheProbeUnit.scala 59:11]
      end
    end
    if (~state) begin // @[ICacheProbeUnit.scala 56:30]
      if (_T_1) begin // @[ICacheProbeUnit.scala 58:26]
        req_param <= io_req_bits_param; // @[ICacheProbeUnit.scala 59:11]
      end
    end
    if (~state) begin // @[ICacheProbeUnit.scala 56:30]
      if (_T_1) begin // @[ICacheProbeUnit.scala 58:26]
        req_needData <= io_req_bits_needData; // @[ICacheProbeUnit.scala 59:11]
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
  state = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  req_addr = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  req_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  req_param = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  req_needData = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
