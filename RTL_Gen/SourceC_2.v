module SourceC_2(
  input          clock,
  input          reset,
  input          io_c_ready,
  output         io_c_valid,
  output [2:0]   io_c_bits_opcode,
  output [2:0]   io_c_bits_size,
  output [3:0]   io_c_bits_source,
  output [35:0]  io_c_bits_address,
  output [255:0] io_c_bits_data,
  input          io_bs_raddr_ready,
  output         io_bs_raddr_valid,
  output [1:0]   io_bs_raddr_bits_way,
  output [11:0]  io_bs_raddr_bits_set,
  output         io_bs_raddr_bits_beat,
  input  [255:0] io_bs_rdata_data,
  output         io_task_ready,
  input          io_task_valid,
  input  [2:0]   io_task_bits_opcode,
  input  [15:0]  io_task_bits_tag,
  input  [11:0]  io_task_bits_set,
  input  [3:0]   io_task_bits_source,
  input  [1:0]   io_task_bits_way
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[SourceC.scala 49:21]
  wire  queue_reset; // @[SourceC.scala 49:21]
  wire  queue_io_enq_ready; // @[SourceC.scala 49:21]
  wire  queue_io_enq_valid; // @[SourceC.scala 49:21]
  wire [2:0] queue_io_enq_bits_opcode; // @[SourceC.scala 49:21]
  wire [3:0] queue_io_enq_bits_source; // @[SourceC.scala 49:21]
  wire [35:0] queue_io_enq_bits_address; // @[SourceC.scala 49:21]
  wire [255:0] queue_io_enq_bits_data; // @[SourceC.scala 49:21]
  wire  queue_io_deq_ready; // @[SourceC.scala 49:21]
  wire  queue_io_deq_valid; // @[SourceC.scala 49:21]
  wire [2:0] queue_io_deq_bits_opcode; // @[SourceC.scala 49:21]
  wire [2:0] queue_io_deq_bits_size; // @[SourceC.scala 49:21]
  wire [3:0] queue_io_deq_bits_source; // @[SourceC.scala 49:21]
  wire [35:0] queue_io_deq_bits_address; // @[SourceC.scala 49:21]
  wire [255:0] queue_io_deq_bits_data; // @[SourceC.scala 49:21]
  wire [3:0] queue_io_count; // @[SourceC.scala 49:21]
  reg  bs_busy; // @[SourceC.scala 47:24]
  reg  back_pressure; // @[SourceC.scala 48:30]
  reg  beat; // @[SourceC.scala 53:21]
  wire  _T = io_bs_raddr_ready & io_bs_raddr_valid; // @[Decoupled.scala 50:35]
  wire  _task_latch_T = ~bs_busy; // @[SourceC.scala 57:44]
  wire  _task_latch_T_1 = ~bs_busy & io_task_valid; // @[SourceC.scala 57:53]
  reg [2:0] task_latch_opcode; // @[Reg.scala 16:16]
  reg [15:0] task_latch_tag; // @[Reg.scala 16:16]
  reg [11:0] task_latch_set; // @[Reg.scala 16:16]
  reg [3:0] task_latch_source; // @[Reg.scala 16:16]
  reg [1:0] task_latch_way; // @[Reg.scala 16:16]
  wire  _taskWithData_T = ~back_pressure; // @[SourceC.scala 59:39]
  wire  taskWithData = io_task_valid & ~back_pressure & io_task_bits_opcode[0]; // @[SourceC.scala 59:54]
  wire  _GEN_8 = taskWithData | bs_busy; // @[SourceC.scala 60:22 47:24 60:32]
  wire  _task_handled_T = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  wire  task_handled = _GEN_8 ? io_bs_raddr_ready : _task_handled_T; // @[SourceC.scala 74:25]
  reg [2:0] s1_task_opcode; // @[SourceC.scala 75:24]
  reg [15:0] s1_task_tag; // @[SourceC.scala 75:24]
  reg [11:0] s1_task_set; // @[SourceC.scala 75:24]
  reg [3:0] s1_task_source; // @[SourceC.scala 75:24]
  reg  s1_valid; // @[SourceC.scala 77:25]
  wire  _GEN_10 = s1_valid ? 1'h0 : s1_valid; // @[SourceC.scala 78:17 79:14 77:25]
  wire  _GEN_11 = task_handled | _GEN_10; // @[SourceC.scala 81:22 82:14]
  reg  pipeOutPipe_valid; // @[Valid.scala 127:22]
  reg [2:0] pipeOutPipe_bits_task_opcode; // @[Reg.scala 16:16]
  reg [15:0] pipeOutPipe_bits_task_tag; // @[Reg.scala 16:16]
  reg [11:0] pipeOutPipe_bits_task_set; // @[Reg.scala 16:16]
  reg [3:0] pipeOutPipe_bits_task_source; // @[Reg.scala 16:16]
  reg  pipeOutPipe_valid_1; // @[Valid.scala 127:22]
  reg [2:0] pipeOutPipe_bits_1_task_opcode; // @[Reg.scala 16:16]
  reg [15:0] pipeOutPipe_bits_1_task_tag; // @[Reg.scala 16:16]
  reg [11:0] pipeOutPipe_bits_1_task_set; // @[Reg.scala 16:16]
  reg [3:0] pipeOutPipe_bits_1_task_source; // @[Reg.scala 16:16]
  reg  pipeOutPipe_valid_2; // @[Valid.scala 127:22]
  reg [2:0] pipeOutPipe_bits_2_task_opcode; // @[Reg.scala 16:16]
  reg [15:0] pipeOutPipe_bits_2_task_tag; // @[Reg.scala 16:16]
  reg [11:0] pipeOutPipe_bits_2_task_set; // @[Reg.scala 16:16]
  reg [3:0] pipeOutPipe_bits_2_task_source; // @[Reg.scala 16:16]
  wire [33:0] _queue_io_enq_bits_address_T = {pipeOutPipe_bits_2_task_tag,pipeOutPipe_bits_2_task_set,6'h0}; // @[Cat.scala 31:58]
  Queue_269 queue ( // @[SourceC.scala 49:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_opcode(queue_io_enq_bits_opcode),
    .io_enq_bits_source(queue_io_enq_bits_source),
    .io_enq_bits_address(queue_io_enq_bits_address),
    .io_enq_bits_data(queue_io_enq_bits_data),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_opcode(queue_io_deq_bits_opcode),
    .io_deq_bits_size(queue_io_deq_bits_size),
    .io_deq_bits_source(queue_io_deq_bits_source),
    .io_deq_bits_address(queue_io_deq_bits_address),
    .io_deq_bits_data(queue_io_deq_bits_data),
    .io_count(queue_io_count)
  );
  assign io_c_valid = queue_io_deq_valid; // @[SourceC.scala 104:8]
  assign io_c_bits_opcode = queue_io_deq_bits_opcode; // @[SourceC.scala 104:8]
  assign io_c_bits_size = queue_io_deq_bits_size; // @[SourceC.scala 104:8]
  assign io_c_bits_source = queue_io_deq_bits_source; // @[SourceC.scala 104:8]
  assign io_c_bits_address = queue_io_deq_bits_address; // @[SourceC.scala 104:8]
  assign io_c_bits_data = queue_io_deq_bits_data; // @[SourceC.scala 104:8]
  assign io_bs_raddr_valid = taskWithData | bs_busy; // @[SourceC.scala 65:31]
  assign io_bs_raddr_bits_way = _task_latch_T ? io_task_bits_way : task_latch_way; // @[SourceC.scala 58:17]
  assign io_bs_raddr_bits_set = _task_latch_T ? io_task_bits_set : task_latch_set; // @[SourceC.scala 58:17]
  assign io_bs_raddr_bits_beat = beat; // @[SourceC.scala 69:25]
  assign io_task_ready = _task_latch_T & _taskWithData_T; // @[SourceC.scala 62:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = pipeOutPipe_valid_2; // @[Valid.scala 122:21 123:17]
  assign queue_io_enq_bits_opcode = pipeOutPipe_bits_2_task_opcode; // @[Valid.scala 122:21 124:16]
  assign queue_io_enq_bits_source = pipeOutPipe_bits_2_task_source; // @[Valid.scala 122:21 124:16]
  assign queue_io_enq_bits_address = {{2'd0}, _queue_io_enq_bits_address_T}; // @[SourceC.scala 98:29]
  assign queue_io_enq_bits_data = io_bs_rdata_data; // @[SourceC.scala 99:26]
  assign queue_io_deq_ready = io_c_ready; // @[SourceC.scala 104:8]
  always @(posedge clock) begin
    if (reset) begin // @[SourceC.scala 47:24]
      bs_busy <= 1'h0; // @[SourceC.scala 47:24]
    end else if (_T & beat) begin // @[SourceC.scala 61:57]
      bs_busy <= 1'h0; // @[SourceC.scala 61:67]
    end else begin
      bs_busy <= _GEN_8;
    end
    if (reset) begin // @[SourceC.scala 48:30]
      back_pressure <= 1'h0; // @[SourceC.scala 48:30]
    end else begin
      back_pressure <= queue_io_count >= 4'h2; // @[SourceC.scala 50:17]
    end
    if (reset) begin // @[SourceC.scala 53:21]
      beat <= 1'h0; // @[SourceC.scala 53:21]
    end else if (_T) begin // @[SourceC.scala 54:28]
      beat <= beat + 1'h1; // @[SourceC.scala 55:10]
    end
    if (_task_latch_T_1) begin // @[Reg.scala 17:18]
      task_latch_opcode <= io_task_bits_opcode; // @[Reg.scala 17:22]
    end
    if (_task_latch_T_1) begin // @[Reg.scala 17:18]
      task_latch_tag <= io_task_bits_tag; // @[Reg.scala 17:22]
    end
    if (_task_latch_T_1) begin // @[Reg.scala 17:18]
      task_latch_set <= io_task_bits_set; // @[Reg.scala 17:22]
    end
    if (_task_latch_T_1) begin // @[Reg.scala 17:18]
      task_latch_source <= io_task_bits_source; // @[Reg.scala 17:22]
    end
    if (_task_latch_T_1) begin // @[Reg.scala 17:18]
      task_latch_way <= io_task_bits_way; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[SourceC.scala 75:24]
      s1_task_opcode <= io_task_bits_opcode; // @[SourceC.scala 75:24]
    end else if (task_handled) begin // @[SourceC.scala 81:22]
      if (_task_latch_T) begin // @[SourceC.scala 58:17]
        s1_task_opcode <= io_task_bits_opcode;
      end else begin
        s1_task_opcode <= task_latch_opcode;
      end
    end
    if (reset) begin // @[SourceC.scala 75:24]
      s1_task_tag <= io_task_bits_tag; // @[SourceC.scala 75:24]
    end else if (task_handled) begin // @[SourceC.scala 81:22]
      if (_task_latch_T) begin // @[SourceC.scala 58:17]
        s1_task_tag <= io_task_bits_tag;
      end else begin
        s1_task_tag <= task_latch_tag;
      end
    end
    if (reset) begin // @[SourceC.scala 75:24]
      s1_task_set <= io_task_bits_set; // @[SourceC.scala 75:24]
    end else if (task_handled) begin // @[SourceC.scala 81:22]
      if (_task_latch_T) begin // @[SourceC.scala 58:17]
        s1_task_set <= io_task_bits_set;
      end else begin
        s1_task_set <= task_latch_set;
      end
    end
    if (reset) begin // @[SourceC.scala 75:24]
      s1_task_source <= io_task_bits_source; // @[SourceC.scala 75:24]
    end else if (task_handled) begin // @[SourceC.scala 81:22]
      if (_task_latch_T) begin // @[SourceC.scala 58:17]
        s1_task_source <= io_task_bits_source;
      end else begin
        s1_task_source <= task_latch_source;
      end
    end
    if (reset) begin // @[SourceC.scala 77:25]
      s1_valid <= 1'h0; // @[SourceC.scala 77:25]
    end else begin
      s1_valid <= _GEN_11;
    end
    if (reset) begin // @[Valid.scala 127:22]
      pipeOutPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      pipeOutPipe_valid <= s1_valid; // @[Valid.scala 127:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_task_opcode <= s1_task_opcode; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_task_tag <= s1_task_tag; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_task_set <= s1_task_set; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_task_source <= s1_task_source; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      pipeOutPipe_valid_1 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      pipeOutPipe_valid_1 <= pipeOutPipe_valid; // @[Valid.scala 127:22]
    end
    if (pipeOutPipe_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_1_task_opcode <= pipeOutPipe_bits_task_opcode; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_1_task_tag <= pipeOutPipe_bits_task_tag; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_1_task_set <= pipeOutPipe_bits_task_set; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_1_task_source <= pipeOutPipe_bits_task_source; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      pipeOutPipe_valid_2 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      pipeOutPipe_valid_2 <= pipeOutPipe_valid_1; // @[Valid.scala 127:22]
    end
    if (pipeOutPipe_valid_1) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_2_task_opcode <= pipeOutPipe_bits_1_task_opcode; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid_1) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_2_task_tag <= pipeOutPipe_bits_1_task_tag; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid_1) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_2_task_set <= pipeOutPipe_bits_1_task_set; // @[Reg.scala 17:22]
    end
    if (pipeOutPipe_valid_1) begin // @[Reg.scala 17:18]
      pipeOutPipe_bits_2_task_source <= pipeOutPipe_bits_1_task_source; // @[Reg.scala 17:22]
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
  bs_busy = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  back_pressure = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  beat = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  task_latch_opcode = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  task_latch_tag = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  task_latch_set = _RAND_5[11:0];
  _RAND_6 = {1{`RANDOM}};
  task_latch_source = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  task_latch_way = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  s1_task_opcode = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  s1_task_tag = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  s1_task_set = _RAND_10[11:0];
  _RAND_11 = {1{`RANDOM}};
  s1_task_source = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  s1_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  pipeOutPipe_valid = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  pipeOutPipe_bits_task_opcode = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  pipeOutPipe_bits_task_tag = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  pipeOutPipe_bits_task_set = _RAND_16[11:0];
  _RAND_17 = {1{`RANDOM}};
  pipeOutPipe_bits_task_source = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  pipeOutPipe_valid_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  pipeOutPipe_bits_1_task_opcode = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  pipeOutPipe_bits_1_task_tag = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  pipeOutPipe_bits_1_task_set = _RAND_21[11:0];
  _RAND_22 = {1{`RANDOM}};
  pipeOutPipe_bits_1_task_source = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  pipeOutPipe_valid_2 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  pipeOutPipe_bits_2_task_opcode = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  pipeOutPipe_bits_2_task_tag = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  pipeOutPipe_bits_2_task_set = _RAND_26[11:0];
  _RAND_27 = {1{`RANDOM}};
  pipeOutPipe_bits_2_task_source = _RAND_27[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
