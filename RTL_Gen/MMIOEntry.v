module MMIOEntry(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [4:0]  io_req_bits_cmd,
  input  [35:0] io_req_bits_addr,
  input  [63:0] io_req_bits_data,
  input  [7:0]  io_req_bits_mask,
  output        io_resp_valid,
  output [63:0] io_resp_bits_data,
  input         io_mem_acquire_ready,
  output        io_mem_acquire_valid,
  output [2:0]  io_mem_acquire_bits_opcode,
  output [2:0]  io_mem_acquire_bits_size,
  output [35:0] io_mem_acquire_bits_address,
  output [7:0]  io_mem_acquire_bits_mask,
  output [63:0] io_mem_acquire_bits_data,
  output        io_mem_grant_ready,
  input         io_mem_grant_valid,
  input  [63:0] io_mem_grant_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[Uncache.scala 46:22]
  reg [4:0] req_cmd; // @[Uncache.scala 48:22]
  reg [35:0] req_addr; // @[Uncache.scala 48:22]
  reg [63:0] req_data; // @[Uncache.scala 48:22]
  reg [7:0] req_mask; // @[Uncache.scala 48:22]
  reg [63:0] resp_data; // @[Uncache.scala 49:22]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_6 = _T_1 ? 2'h1 : state; // @[Uncache.scala 69:26 72:13 46:22]
  wire [1:0] _GEN_14 = state == 2'h0 ? _GEN_6 : state; // @[Uncache.scala 46:22 66:30]
  wire [1:0] _size_T_8 = req_mask[0] + req_mask[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_10 = req_mask[2] + req_mask[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _size_T_12 = _size_T_8 + _size_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_14 = req_mask[4] + req_mask[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_16 = req_mask[6] + req_mask[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _size_T_18 = _size_T_14 + _size_T_16; // @[Bitwise.scala 48:55]
  wire [3:0] size = _size_T_12 + _size_T_18; // @[Bitwise.scala 48:55]
  wire  _T_2 = size == 4'h1; // @[Uncache.scala 85:19]
  wire  _T_3 = size == 4'h2; // @[Uncache.scala 85:19]
  wire  _T_4 = size == 4'h4; // @[Uncache.scala 85:19]
  wire [1:0] d_tail = _T_4 ? 2'h2 : 2'h3; // @[PriorityMuxDefault.scala 48:13]
  wire [1:0] d_tail_1 = _T_3 ? 2'h1 : d_tail; // @[PriorityMuxDefault.scala 48:13]
  wire [1:0] lgSize = _T_2 ? 2'h0 : d_tail_1; // @[PriorityMuxDefault.scala 48:13]
  wire [2:0] _load_a_mask_sizeOH_T = {{1'd0}, lgSize}; // @[Misc.scala 201:34]
  wire [1:0] load_a_mask_sizeOH_shiftAmount = _load_a_mask_sizeOH_T[1:0]; // @[OneHot.scala 63:49]
  wire [3:0] _load_a_mask_sizeOH_T_1 = 4'h1 << load_a_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [2:0] load_a_mask_sizeOH = _load_a_mask_sizeOH_T_1[2:0] | 3'h1; // @[Misc.scala 201:81]
  wire  _load_a_mask_T = lgSize >= 2'h3; // @[Misc.scala 205:21]
  wire  load_a_mask_size = load_a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit = req_addr[2]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit = ~load_a_mask_bit; // @[Misc.scala 210:20]
  wire  load_a_mask_acc = _load_a_mask_T | load_a_mask_size & load_a_mask_nbit; // @[Misc.scala 214:29]
  wire  load_a_mask_acc_1 = _load_a_mask_T | load_a_mask_size & load_a_mask_bit; // @[Misc.scala 214:29]
  wire  load_a_mask_size_1 = load_a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit_1 = req_addr[1]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit_1 = ~load_a_mask_bit_1; // @[Misc.scala 210:20]
  wire  load_a_mask_eq_2 = load_a_mask_nbit & load_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_2 = load_a_mask_acc | load_a_mask_size_1 & load_a_mask_eq_2; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_3 = load_a_mask_nbit & load_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_3 = load_a_mask_acc | load_a_mask_size_1 & load_a_mask_eq_3; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_4 = load_a_mask_bit & load_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_4 = load_a_mask_acc_1 | load_a_mask_size_1 & load_a_mask_eq_4; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_5 = load_a_mask_bit & load_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_5 = load_a_mask_acc_1 | load_a_mask_size_1 & load_a_mask_eq_5; // @[Misc.scala 214:29]
  wire  load_a_mask_size_2 = load_a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit_2 = req_addr[0]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit_2 = ~load_a_mask_bit_2; // @[Misc.scala 210:20]
  wire  load_a_mask_eq_6 = load_a_mask_eq_2 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_6 = load_a_mask_acc_2 | load_a_mask_size_2 & load_a_mask_eq_6; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_7 = load_a_mask_eq_2 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_7 = load_a_mask_acc_2 | load_a_mask_size_2 & load_a_mask_eq_7; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_8 = load_a_mask_eq_3 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_8 = load_a_mask_acc_3 | load_a_mask_size_2 & load_a_mask_eq_8; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_9 = load_a_mask_eq_3 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_9 = load_a_mask_acc_3 | load_a_mask_size_2 & load_a_mask_eq_9; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_10 = load_a_mask_eq_4 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_10 = load_a_mask_acc_4 | load_a_mask_size_2 & load_a_mask_eq_10; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_11 = load_a_mask_eq_4 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_11 = load_a_mask_acc_4 | load_a_mask_size_2 & load_a_mask_eq_11; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_12 = load_a_mask_eq_5 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_12 = load_a_mask_acc_5 | load_a_mask_size_2 & load_a_mask_eq_12; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_13 = load_a_mask_eq_5 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_13 = load_a_mask_acc_5 | load_a_mask_size_2 & load_a_mask_eq_13; // @[Misc.scala 214:29]
  wire [7:0] load_mask = {load_a_mask_acc_13,load_a_mask_acc_12,load_a_mask_acc_11,load_a_mask_acc_10,load_a_mask_acc_9,
    load_a_mask_acc_8,load_a_mask_acc_7,load_a_mask_acc_6}; // @[Cat.scala 31:58]
  wire  _T_13 = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_15 = _T_13 ? 2'h2 : _GEN_14; // @[Uncache.scala 106:34 107:13]
  wire [1:0] _GEN_25 = state == 2'h1 ? _GEN_15 : _GEN_14; // @[Uncache.scala 102:33]
  wire  _refill_done_T = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_28 = _refill_done_T ? 2'h3 : _GEN_25; // @[Uncache.scala 116:32 119:13]
  wire [1:0] _GEN_31 = state == 2'h2 ? _GEN_28 : _GEN_25; // @[Uncache.scala 113:34]
  assign io_req_ready = state == 2'h0; // @[Uncache.scala 66:15]
  assign io_resp_valid = state == 2'h3; // @[Uncache.scala 124:15]
  assign io_resp_bits_data = resp_data; // @[Uncache.scala 124:32 126:25]
  assign io_mem_acquire_valid = state == 2'h1; // @[Uncache.scala 102:15]
  assign io_mem_acquire_bits_opcode = req_cmd == 5'h1 ? 3'h1 : 3'h4; // @[Uncache.scala 104:32]
  assign io_mem_acquire_bits_size = req_cmd == 5'h1 ? _load_a_mask_sizeOH_T : _load_a_mask_sizeOH_T; // @[Uncache.scala 104:32]
  assign io_mem_acquire_bits_address = req_addr; // @[Uncache.scala 104:32]
  assign io_mem_acquire_bits_mask = req_cmd == 5'h1 ? req_mask : load_mask; // @[Uncache.scala 104:32]
  assign io_mem_acquire_bits_data = req_cmd == 5'h1 ? req_data : 64'h0; // @[Uncache.scala 104:32]
  assign io_mem_grant_ready = state == 2'h2; // @[Uncache.scala 113:15]
  always @(posedge clock) begin
    if (reset) begin // @[Uncache.scala 46:22]
      state <= 2'h0; // @[Uncache.scala 46:22]
    end else if (state == 2'h3) begin // @[Uncache.scala 124:32]
      if (io_resp_valid) begin // @[Uncache.scala 134:27]
        state <= 2'h0; // @[Uncache.scala 135:13]
      end else begin
        state <= _GEN_31;
      end
    end else begin
      state <= _GEN_31;
    end
    if (state == 2'h0) begin // @[Uncache.scala 66:30]
      if (_T_1) begin // @[Uncache.scala 69:26]
        req_cmd <= io_req_bits_cmd; // @[Uncache.scala 70:13]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 66:30]
      if (_T_1) begin // @[Uncache.scala 69:26]
        req_addr <= io_req_bits_addr; // @[Uncache.scala 71:16]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 66:30]
      if (_T_1) begin // @[Uncache.scala 69:26]
        req_data <= io_req_bits_data; // @[Uncache.scala 70:13]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 66:30]
      if (_T_1) begin // @[Uncache.scala 69:26]
        req_mask <= io_req_bits_mask; // @[Uncache.scala 70:13]
      end
    end
    if (state == 2'h2) begin // @[Uncache.scala 113:34]
      if (_refill_done_T) begin // @[Uncache.scala 116:32]
        resp_data <= io_mem_grant_bits_data; // @[Uncache.scala 117:17]
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
  resp_data = _RAND_5[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
