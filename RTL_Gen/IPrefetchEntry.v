module IPrefetchEntry(
  input         clock,
  input         reset,
  input  [1:0]  io_id,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits_paddr,
  input         io_mem_hint_ready,
  output        io_mem_hint_valid,
  output [1:0]  io_mem_hint_bits_source,
  output [35:0] io_mem_hint_bits_address
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[IPrefetch.scala 224:22]
  reg [35:0] req_paddr; // @[IPrefetch.scala 227:16]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_3 = io_mem_hint_ready & io_mem_hint_valid; // @[Decoupled.scala 50:35]
  wire [35:0] _hint_T_1 = {req_paddr[35:6],6'h0}; // @[Cat.scala 31:58]
  assign io_req_ready = state == 2'h0; // @[IPrefetch.scala 232:26]
  assign io_mem_hint_valid = state == 2'h1; // @[IPrefetch.scala 233:31]
  assign io_mem_hint_bits_source = io_id; // @[Edges.scala 528:17 532:15]
  assign io_mem_hint_bits_address = _hint_T_1 + 36'h40; // @[IPrefetch.scala 255:61]
  always @(posedge clock) begin
    if (reset) begin // @[IPrefetch.scala 224:22]
      state <= 2'h0; // @[IPrefetch.scala 224:22]
    end else if (2'h0 == state) begin // @[IPrefetch.scala 236:17]
      if (_T_1) begin // @[IPrefetch.scala 238:27]
        state <= 2'h1; // @[IPrefetch.scala 239:15]
      end
    end else if (2'h1 == state) begin // @[IPrefetch.scala 236:17]
      if (_T_3) begin // @[IPrefetch.scala 246:32]
        state <= 2'h0; // @[IPrefetch.scala 247:15]
      end
    end
    if (2'h0 == state) begin // @[IPrefetch.scala 236:17]
      if (_T_1) begin // @[IPrefetch.scala 238:27]
        req_paddr <= io_req_bits_paddr; // @[IPrefetch.scala 240:13]
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
  _RAND_1 = {2{`RANDOM}};
  req_paddr = _RAND_1[35:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
