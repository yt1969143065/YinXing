module RobEnqPtrWrapper(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [6:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  input        io_allowEnqueue,
  input        io_hasBlockBackward,
  input        io_enq_0,
  input        io_enq_1,
  input        io_enq_2,
  input        io_enq_3,
  output       io_out_flag,
  output [6:0] io_out_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  enqPtr_flag; // @[Rob.scala 144:23]
  reg [6:0] enqPtr_value; // @[Rob.scala 144:23]
  wire  canAccept = io_allowEnqueue & ~io_hasBlockBackward; // @[Rob.scala 147:35]
  wire [1:0] _dispatchNum_T = io_enq_0 + io_enq_1; // @[Bitwise.scala 48:55]
  wire [1:0] _dispatchNum_T_2 = io_enq_2 + io_enq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _dispatchNum_T_4 = _dispatchNum_T + _dispatchNum_T_2; // @[Bitwise.scala 48:55]
  wire [2:0] dispatchNum = canAccept ? _dispatchNum_T_4 : 3'h0; // @[Rob.scala 148:24]
  wire  _enqPtr_T_1 = io_redirect_bits_level ? 1'h0 : 1'h1; // @[Rob.scala 151:44]
  wire [7:0] _enqPtr_new_ptr_T = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_2 = {{7'd0}, _enqPtr_T_1}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _enqPtr_new_ptr_T_2 = _enqPtr_new_ptr_T + _GEN_2; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] enqPtr_new_ptr_value = _enqPtr_new_ptr_T_2[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  enqPtr_new_ptr_flag = _enqPtr_new_ptr_T_2[7]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _enqPtr_new_ptr_T_5 = {enqPtr_flag,enqPtr_value}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_3 = {{5'd0}, dispatchNum}; // @[CircularQueuePtr.scala 40:46]
  wire [7:0] _enqPtr_new_ptr_T_7 = _enqPtr_new_ptr_T_5 + _GEN_3; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] enqPtr_new_ptr_1_value = _enqPtr_new_ptr_T_7[6:0]; // @[CircularQueuePtr.scala 40:59]
  wire  enqPtr_new_ptr_1_flag = _enqPtr_new_ptr_T_7[7]; // @[CircularQueuePtr.scala 40:59]
  assign io_out_flag = enqPtr_flag; // @[Rob.scala 156:10]
  assign io_out_value = enqPtr_value; // @[Rob.scala 156:10]
  always @(posedge clock) begin
    if (reset) begin // @[Rob.scala 144:23]
      enqPtr_flag <= 1'h0; // @[Rob.scala 144:23]
    end else if (io_redirect_valid) begin // @[Rob.scala 150:28]
      enqPtr_flag <= enqPtr_new_ptr_flag; // @[Rob.scala 151:12]
    end else begin
      enqPtr_flag <= enqPtr_new_ptr_1_flag; // @[Rob.scala 153:12]
    end
    if (reset) begin // @[Rob.scala 144:23]
      enqPtr_value <= 7'h0; // @[Rob.scala 144:23]
    end else if (io_redirect_valid) begin // @[Rob.scala 150:28]
      enqPtr_value <= enqPtr_new_ptr_value; // @[Rob.scala 151:12]
    end else begin
      enqPtr_value <= enqPtr_new_ptr_1_value; // @[Rob.scala 153:12]
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
  enqPtr_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  enqPtr_value = _RAND_1[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
