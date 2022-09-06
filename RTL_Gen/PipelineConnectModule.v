module PipelineConnectModule(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [26:0] io_in_bits_req_info_vpn,
  input  [1:0]  io_in_bits_req_info_source,
  input         io_in_bits_isFirst,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_req_info_vpn,
  output [1:0]  io_out_bits_req_info_source,
  output        io_out_bits_isFirst,
  input         io_rightOutFire,
  input         io_isFlush,
  input         io_block
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_valid; // @[PipelineConnect.scala 34:24]
  wire  _leftFire_T_1 = ~io_block; // @[PipelineConnect.scala 36:51]
  wire  leftFire = io_in_valid & io_out_ready & ~io_block; // @[PipelineConnect.scala 36:48]
  wire  _GEN_0 = io_rightOutFire ? 1'h0 : pipeline_valid; // @[PipelineConnect.scala 34:24 37:{28,36}]
  wire  _GEN_1 = leftFire | _GEN_0; // @[PipelineConnect.scala 38:{21,29}]
  reg [26:0] io_out_bits_rreq_info_vpn; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_rreq_info_source; // @[Reg.scala 16:16]
  reg  io_out_bits_risFirst; // @[Reg.scala 16:16]
  assign io_in_ready = io_out_ready & _leftFire_T_1; // @[PipelineConnect.scala 41:33]
  assign io_out_valid = pipeline_valid; // @[PipelineConnect.scala 43:18]
  assign io_out_bits_req_info_vpn = io_out_bits_rreq_info_vpn; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_req_info_source = io_out_bits_rreq_info_source; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_isFirst = io_out_bits_risFirst; // @[PipelineConnect.scala 42:17]
  always @(posedge clock) begin
    if (reset) begin // @[PipelineConnect.scala 34:24]
      pipeline_valid <= 1'h0; // @[PipelineConnect.scala 34:24]
    end else if (io_isFlush) begin // @[PipelineConnect.scala 39:23]
      pipeline_valid <= 1'h0; // @[PipelineConnect.scala 39:31]
    end else begin
      pipeline_valid <= _GEN_1;
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rreq_info_vpn <= io_in_bits_req_info_vpn; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rreq_info_source <= io_in_bits_req_info_source; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_risFirst <= io_in_bits_isFirst; // @[Reg.scala 17:22]
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
  pipeline_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_rreq_info_vpn = _RAND_1[26:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_rreq_info_source = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_risFirst = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
