module ProbeEntry(
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
  output [1:0]  io_pipe_req_bits_probe_param,
  output        io_pipe_req_bits_probe_need_data,
  output [38:0] io_pipe_req_bits_vaddr,
  output [35:0] io_pipe_req_bits_addr,
  output [63:0] io_pipe_req_bits_id,
  input         io_pipe_resp_valid,
  input  [1:0]  io_pipe_resp_bits_id,
  input         io_lrsc_locked_block_valid,
  input  [35:0] io_lrsc_locked_block_bits,
  input  [1:0]  io_id,
  output        io_block_addr_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[Probe.scala 63:22]
  reg [35:0] req_addr; // @[Probe.scala 65:16]
  reg [38:0] req_vaddr; // @[Probe.scala 65:16]
  reg [1:0] req_param; // @[Probe.scala 65:16]
  reg  req_needData; // @[Probe.scala 65:16]
  wire  _T_3 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_7 = _T_3 ? 2'h1 : state; // @[Probe.scala 85:26 87:13 63:22]
  wire [1:0] _GEN_16 = state == 2'h0 ? _GEN_7 : state; // @[Probe.scala 63:22 83:30]
  wire  _lrsc_blocked_T_4 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] == io_req_bits_addr[35:6]; // @[Probe.scala 93:32]
  wire  _lrsc_blocked_T_8 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] == req_addr[35:6]; // @[Probe.scala 94:32]
  reg  io_pipe_req_valid_REG; // @[Probe.scala 100:34]
  wire  _T_5 = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_17 = _T_5 ? 2'h2 : _GEN_16; // @[Probe.scala 113:31 114:13]
  wire [1:0] _GEN_26 = state == 2'h1 ? _GEN_17 : _GEN_16; // @[Probe.scala 97:31]
  assign io_req_ready = state == 2'h0; // @[Probe.scala 83:15]
  assign io_pipe_req_valid = state == 2'h1 & ~io_pipe_req_valid_REG; // @[Probe.scala 100:23 69:21 97:31]
  assign io_pipe_req_bits_probe_param = req_param; // @[Probe.scala 106:26 97:31]
  assign io_pipe_req_bits_probe_need_data = req_needData; // @[Probe.scala 109:30 97:31]
  assign io_pipe_req_bits_vaddr = req_vaddr; // @[Probe.scala 108:21 97:31]
  assign io_pipe_req_bits_addr = req_addr; // @[Probe.scala 107:21 97:31]
  assign io_pipe_req_bits_id = {{62'd0}, io_id};
  assign io_block_addr_valid = state != 2'h0; // @[Probe.scala 72:32]
  always @(posedge clock) begin
    if (reset) begin // @[Probe.scala 63:22]
      state <= 2'h0; // @[Probe.scala 63:22]
    end else if (state == 2'h2) begin // @[Probe.scala 118:32]
      if (io_pipe_resp_valid & io_id == io_pipe_resp_bits_id) begin // @[Probe.scala 119:65]
        state <= 2'h0; // @[Probe.scala 120:13]
      end else begin
        state <= _GEN_26;
      end
    end else begin
      state <= _GEN_26;
    end
    if (state == 2'h0) begin // @[Probe.scala 83:30]
      if (_T_3) begin // @[Probe.scala 85:26]
        req_addr <= io_req_bits_addr; // @[Probe.scala 86:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 83:30]
      if (_T_3) begin // @[Probe.scala 85:26]
        req_vaddr <= io_req_bits_vaddr; // @[Probe.scala 86:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 83:30]
      if (_T_3) begin // @[Probe.scala 85:26]
        req_param <= io_req_bits_param; // @[Probe.scala 86:11]
      end
    end
    if (state == 2'h0) begin // @[Probe.scala 83:30]
      if (_T_3) begin // @[Probe.scala 85:26]
        req_needData <= io_req_bits_needData; // @[Probe.scala 86:11]
      end
    end
    if (_T_3) begin // @[Probe.scala 91:25]
      io_pipe_req_valid_REG <= _lrsc_blocked_T_4;
    end else begin
      io_pipe_req_valid_REG <= _lrsc_blocked_T_8;
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
  state = _RAND_0[1:0];
  _RAND_1 = {2{`RANDOM}};
  req_addr = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  req_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  req_param = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  req_needData = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_pipe_req_valid_REG = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
