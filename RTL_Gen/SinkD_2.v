module SinkD_2(
  input          clock,
  input          reset,
  output         io_d_ready,
  input          io_d_valid,
  input  [2:0]   io_d_bits_opcode,
  input  [1:0]   io_d_bits_param,
  input  [2:0]   io_d_bits_size,
  input  [3:0]   io_d_bits_source,
  input  [2:0]   io_d_bits_sink,
  input          io_d_bits_denied,
  input  [255:0] io_d_bits_data,
  input          io_bs_waddr_ready,
  output         io_bs_waddr_valid,
  output [1:0]   io_bs_waddr_bits_way,
  output [11:0]  io_bs_waddr_bits_set,
  output         io_bs_waddr_bits_beat,
  output         io_bs_waddr_bits_noop,
  output [255:0] io_bs_wdata_data,
  output         io_bypass_write_valid,
  output         io_bypass_write_beat,
  output [255:0] io_bypass_write_data_data,
  input          io_bypass_write_ready,
  input  [2:0]   io_bypass_write_id,
  input  [1:0]   io_way,
  input  [11:0]  io_set,
  input          io_inner_grant,
  input          io_save_data_in_bs,
  output         io_resp_valid,
  output [2:0]   io_resp_bits_opcode,
  output [2:0]   io_resp_bits_param,
  output [3:0]   io_resp_bits_source,
  output [2:0]   io_resp_bits_sink,
  output         io_resp_bits_last,
  output         io_resp_bits_denied,
  output [2:0]   io_resp_bits_bufIdx,
  input          io_sourceD_rhazard_valid,
  input  [1:0]   io_sourceD_rhazard_bits_way,
  input  [11:0]  io_sourceD_rhazard_bits_set
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_d_ready & io_d_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  beat = beats1 & ~counter1; // @[Edges.scala 233:25]
  wire  _wsafe_T_2 = io_sourceD_rhazard_bits_set == io_set & io_sourceD_rhazard_bits_way == io_way; // @[Common.scala 193:15]
  wire  w_safe = ~(io_sourceD_rhazard_valid & _wsafe_T_2); // @[SinkD.scala 44:16]
  wire  _T_2 = ~beats1_opdata; // @[SinkD.scala 46:25]
  wire  bypass_ready = io_inner_grant & beats1_opdata & io_bypass_write_ready; // @[SinkD.scala 48:49]
  wire  _bs_ready_T_3 = (beats1_opdata & w_safe | ~first) & io_save_data_in_bs; // @[SinkD.scala 49:49]
  wire  _bs_ready_T_5 = ~io_inner_grant; // @[SinkD.scala 51:22]
  wire  _bs_ready_T_6 = bypass_ready | ~io_inner_grant; // @[SinkD.scala 51:19]
  wire  bs_ready = _bs_ready_T_3 & io_bs_waddr_ready & _bs_ready_T_6; // @[SinkD.scala 50:32]
  reg [3:0] io_resp_bits_source_r; // @[Reg.scala 16:16]
  wire  _io_bs_waddr_bits_beat_T_1 = beat + io_bs_waddr_ready; // @[SinkD.scala 70:65]
  reg  io_bs_waddr_bits_beat_r; // @[Reg.scala 16:16]
  assign io_d_ready = _T_2 | bs_ready | bypass_ready | ~io_save_data_in_bs & _bs_ready_T_5; // @[SinkD.scala 53:55]
  assign io_bs_waddr_valid = io_d_valid & bs_ready; // @[SinkD.scala 67:35]
  assign io_bs_waddr_bits_way = io_way; // @[SinkD.scala 68:24]
  assign io_bs_waddr_bits_set = io_set; // @[SinkD.scala 69:24]
  assign io_bs_waddr_bits_beat = io_d_valid ? beat : io_bs_waddr_bits_beat_r; // @[SinkD.scala 70:31]
  assign io_bs_waddr_bits_noop = ~io_d_valid; // @[SinkD.scala 72:28]
  assign io_bs_wdata_data = io_d_bits_data; // @[SinkD.scala 73:20]
  assign io_bypass_write_valid = io_d_valid & bypass_ready; // @[SinkD.scala 75:39]
  assign io_bypass_write_beat = beats1 & ~counter1; // @[Edges.scala 233:25]
  assign io_bypass_write_data_data = io_bs_wdata_data; // @[SinkD.scala 77:24]
  assign io_resp_valid = (first | last) & _T; // @[SinkD.scala 56:36]
  assign io_resp_bits_opcode = io_d_bits_opcode; // @[SinkD.scala 58:23]
  assign io_resp_bits_param = {{1'd0}, io_d_bits_param}; // @[SinkD.scala 59:22]
  assign io_resp_bits_source = io_d_valid ? io_d_bits_source : io_resp_bits_source_r; // @[SinkD.scala 60:29]
  assign io_resp_bits_sink = io_d_bits_sink; // @[SinkD.scala 61:21]
  assign io_resp_bits_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign io_resp_bits_denied = io_d_bits_denied; // @[SinkD.scala 62:23]
  assign io_resp_bits_bufIdx = io_bypass_write_id; // @[SinkD.scala 64:23]
  always @(posedge clock) begin
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T) begin // @[Edges.scala 234:17]
      if (first) begin // @[Edges.scala 235:21]
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
    if (io_d_valid) begin // @[Reg.scala 17:18]
      io_resp_bits_source_r <= io_d_bits_source; // @[Reg.scala 17:22]
    end
    if (io_d_valid) begin // @[Reg.scala 17:18]
      io_bs_waddr_bits_beat_r <= _io_bs_waddr_bits_beat_T_1; // @[Reg.scala 17:22]
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
  counter = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_resp_bits_source_r = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  io_bs_waddr_bits_beat_r = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
