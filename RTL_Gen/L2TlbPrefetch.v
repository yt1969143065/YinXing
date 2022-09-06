module L2TlbPrefetch(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  input         io_in_valid,
  input  [26:0] io_in_bits_vpn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_vpn
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  flush = io_sfence_valid | io_csr_satp_changed; // @[L2TlbPrefetch.scala 38:31]
  wire [23:0] _next_line_T_2 = io_in_bits_vpn[26:3] + 24'h1; // @[MMUConst.scala 222:31]
  wire [26:0] _next_line_T_3 = {_next_line_T_2,3'h0}; // @[Cat.scala 31:58]
  reg [26:0] next_line; // @[Reg.scala 16:16]
  wire  _v_T_1 = io_in_valid & ~flush; // @[L2TlbPrefetch.scala 40:33]
  wire  _v_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg  v; // @[Hold.scala 38:24]
  wire  _GEN_1 = _v_T_2 ? 1'h0 : v; // @[Hold.scala 39:20 38:24 39:28]
  wire  _GEN_2 = _v_T_1 | _GEN_1; // @[Hold.scala 40:{19,27}]
  assign io_out_valid = v; // @[L2TlbPrefetch.scala 42:16]
  assign io_out_bits_vpn = next_line; // @[L2TlbPrefetch.scala 43:19]
  always @(posedge clock) begin
    if (io_in_valid) begin // @[Reg.scala 17:18]
      next_line <= _next_line_T_3; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Hold.scala 38:24]
      v <= 1'h0; // @[Hold.scala 38:24]
    end else if (flush) begin // @[Hold.scala 41:18]
      v <= 1'h0; // @[Hold.scala 41:26]
    end else begin
      v <= _GEN_2;
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
  next_line = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  v = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
