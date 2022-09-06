module AtomicsReplayEntry(
  input         clock,
  input         reset,
  output        io_lsu_req_ready,
  input         io_lsu_req_valid,
  input  [4:0]  io_lsu_req_bits_cmd,
  input  [35:0] io_lsu_req_bits_addr,
  input  [63:0] io_lsu_req_bits_data,
  input  [7:0]  io_lsu_req_bits_mask,
  input  [38:0] io_lsu_req_bits_vaddr,
  input         io_lsu_resp_ready,
  output        io_lsu_resp_valid,
  output [63:0] io_lsu_resp_bits_data,
  output [63:0] io_lsu_resp_bits_id,
  output        io_lsu_resp_bits_error,
  input         io_pipe_req_ready,
  output        io_pipe_req_valid,
  output [4:0]  io_pipe_req_bits_cmd,
  output [38:0] io_pipe_req_bits_vaddr,
  output [35:0] io_pipe_req_bits_addr,
  output [2:0]  io_pipe_req_bits_word_idx,
  output [63:0] io_pipe_req_bits_amo_data,
  output [7:0]  io_pipe_req_bits_amo_mask,
  input         io_pipe_resp_valid,
  input  [63:0] io_pipe_resp_bits_data,
  input         io_pipe_resp_bits_miss,
  input         io_pipe_resp_bits_replay,
  input         io_pipe_resp_bits_error,
  input  [63:0] io_pipe_resp_bits_id,
  input         io_block_lr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[AtomicsReplayUnit.scala 49:22]
  reg [4:0] req_cmd; // @[AtomicsReplayUnit.scala 51:16]
  reg [35:0] req_addr; // @[AtomicsReplayUnit.scala 51:16]
  reg [63:0] req_data; // @[AtomicsReplayUnit.scala 51:16]
  reg [7:0] req_mask; // @[AtomicsReplayUnit.scala 51:16]
  reg [38:0] req_vaddr; // @[AtomicsReplayUnit.scala 51:16]
  wire  _io_lsu_req_ready_T = state == 2'h0; // @[AtomicsReplayUnit.scala 54:33]
  wire  _T_2 = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_8 = _T_2 ? 2'h1 : state; // @[AtomicsReplayUnit.scala 72:30 74:13 49:22]
  wire [1:0] _GEN_17 = _io_lsu_req_ready_T ? _GEN_8 : state; // @[AtomicsReplayUnit.scala 49:22 71:30]
  wire  _io_pipe_req_valid_T = io_pipe_req_bits_cmd == 5'h6; // @[AtomicsReplayUnit.scala 82:28]
  wire  _io_pipe_req_valid_T_1 = ~io_block_lr; // @[AtomicsReplayUnit.scala 83:7]
  wire  _io_pipe_req_valid_T_2 = _io_pipe_req_valid_T ? _io_pipe_req_valid_T_1 : 1'h1; // @[AtomicsReplayUnit.scala 81:29]
  wire  _T_4 = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_18 = _T_4 ? 2'h2 : _GEN_17; // @[AtomicsReplayUnit.scala 100:31 101:13]
  wire [1:0] _GEN_28 = state == 2'h1 ? _GEN_18 : _GEN_17; // @[AtomicsReplayUnit.scala 80:31]
  reg [63:0] resp_data; // @[AtomicsReplayUnit.scala 106:23]
  reg [63:0] resp_id; // @[AtomicsReplayUnit.scala 107:23]
  reg  resp_error; // @[AtomicsReplayUnit.scala 108:23]
  wire [1:0] _GEN_29 = io_pipe_resp_bits_replay ? 2'h1 : _GEN_28; // @[AtomicsReplayUnit.scala 121:41 122:17]
  wire [1:0] _GEN_30 = io_pipe_resp_bits_miss ? _GEN_29 : 2'h3; // @[AtomicsReplayUnit.scala 120:37 128:15]
  wire [1:0] _GEN_34 = io_pipe_resp_valid ? _GEN_30 : _GEN_28; // @[AtomicsReplayUnit.scala 119:32]
  wire [1:0] _GEN_38 = state == 2'h2 ? _GEN_34 : _GEN_28; // @[AtomicsReplayUnit.scala 109:32]
  wire  _T_12 = io_lsu_resp_ready & io_lsu_resp_valid; // @[Decoupled.scala 50:35]
  assign io_lsu_req_ready = state == 2'h0; // @[AtomicsReplayUnit.scala 54:33]
  assign io_lsu_resp_valid = state == 2'h3; // @[AtomicsReplayUnit.scala 134:15]
  assign io_lsu_resp_bits_data = resp_data; // @[AtomicsReplayUnit.scala 134:27 137:28]
  assign io_lsu_resp_bits_id = resp_id; // @[AtomicsReplayUnit.scala 134:27 138:28]
  assign io_lsu_resp_bits_error = resp_error; // @[AtomicsReplayUnit.scala 134:27 139:28]
  assign io_pipe_req_valid = state == 2'h1 & _io_pipe_req_valid_T_2; // @[AtomicsReplayUnit.scala 80:31 81:23 58:24]
  assign io_pipe_req_bits_cmd = req_cmd; // @[AtomicsReplayUnit.scala 80:31 93:21]
  assign io_pipe_req_bits_vaddr = {req_vaddr[38:6], 6'h0}; // @[L1Cache.scala 85:59]
  assign io_pipe_req_bits_addr = {req_addr[35:6], 6'h0}; // @[L1Cache.scala 85:59]
  assign io_pipe_req_bits_word_idx = req_addr[5:3]; // @[L1Cache.scala 90:34]
  assign io_pipe_req_bits_amo_data = req_data; // @[AtomicsReplayUnit.scala 80:31 97:24]
  assign io_pipe_req_bits_amo_mask = req_mask; // @[AtomicsReplayUnit.scala 80:31 98:24]
  always @(posedge clock) begin
    if (reset) begin // @[AtomicsReplayUnit.scala 49:22]
      state <= 2'h0; // @[AtomicsReplayUnit.scala 49:22]
    end else if (state == 2'h3) begin // @[AtomicsReplayUnit.scala 134:27]
      if (_T_12) begin // @[AtomicsReplayUnit.scala 141:31]
        state <= 2'h0; // @[AtomicsReplayUnit.scala 142:13]
      end else begin
        state <= _GEN_38;
      end
    end else begin
      state <= _GEN_38;
    end
    if (_io_lsu_req_ready_T) begin // @[AtomicsReplayUnit.scala 71:30]
      if (_T_2) begin // @[AtomicsReplayUnit.scala 72:30]
        req_cmd <= io_lsu_req_bits_cmd; // @[AtomicsReplayUnit.scala 73:13]
      end
    end
    if (_io_lsu_req_ready_T) begin // @[AtomicsReplayUnit.scala 71:30]
      if (_T_2) begin // @[AtomicsReplayUnit.scala 72:30]
        req_addr <= io_lsu_req_bits_addr; // @[AtomicsReplayUnit.scala 73:13]
      end
    end
    if (_io_lsu_req_ready_T) begin // @[AtomicsReplayUnit.scala 71:30]
      if (_T_2) begin // @[AtomicsReplayUnit.scala 72:30]
        req_data <= io_lsu_req_bits_data; // @[AtomicsReplayUnit.scala 73:13]
      end
    end
    if (_io_lsu_req_ready_T) begin // @[AtomicsReplayUnit.scala 71:30]
      if (_T_2) begin // @[AtomicsReplayUnit.scala 72:30]
        req_mask <= io_lsu_req_bits_mask; // @[AtomicsReplayUnit.scala 73:13]
      end
    end
    if (_io_lsu_req_ready_T) begin // @[AtomicsReplayUnit.scala 71:30]
      if (_T_2) begin // @[AtomicsReplayUnit.scala 72:30]
        req_vaddr <= io_lsu_req_bits_vaddr; // @[AtomicsReplayUnit.scala 73:13]
      end
    end
    if (state == 2'h2) begin // @[AtomicsReplayUnit.scala 109:32]
      if (io_pipe_resp_valid) begin // @[AtomicsReplayUnit.scala 119:32]
        if (!(io_pipe_resp_bits_miss)) begin // @[AtomicsReplayUnit.scala 120:37]
          resp_data <= io_pipe_resp_bits_data; // @[AtomicsReplayUnit.scala 125:20]
        end
      end
    end
    if (state == 2'h2) begin // @[AtomicsReplayUnit.scala 109:32]
      if (io_pipe_resp_valid) begin // @[AtomicsReplayUnit.scala 119:32]
        if (!(io_pipe_resp_bits_miss)) begin // @[AtomicsReplayUnit.scala 120:37]
          resp_id <= io_pipe_resp_bits_id; // @[AtomicsReplayUnit.scala 126:20]
        end
      end
    end
    if (state == 2'h2) begin // @[AtomicsReplayUnit.scala 109:32]
      if (io_pipe_resp_valid) begin // @[AtomicsReplayUnit.scala 119:32]
        if (!(io_pipe_resp_bits_miss)) begin // @[AtomicsReplayUnit.scala 120:37]
          resp_error <= io_pipe_resp_bits_error; // @[AtomicsReplayUnit.scala 127:20]
        end
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  req_addr = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  req_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  req_mask = _RAND_4[7:0];
  _RAND_5 = {2{`RANDOM}};
  req_vaddr = _RAND_5[38:0];
  _RAND_6 = {2{`RANDOM}};
  resp_data = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  resp_id = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  resp_error = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
