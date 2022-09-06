module Queue_235(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [7:0] io_enq_bits_set,
  input  [2:0] io_enq_bits_way,
  input  [1:0] io_enq_bits_data_0_state,
  input  [1:0] io_enq_bits_data_0_alias,
  input  [1:0] io_enq_bits_data_1_state,
  input  [1:0] io_enq_bits_data_1_alias,
  output       io_deq_valid,
  output [7:0] io_deq_bits_set,
  output [2:0] io_deq_bits_way,
  output [1:0] io_deq_bits_data_0_state,
  output [1:0] io_deq_bits_data_0_alias,
  output [1:0] io_deq_bits_data_1_state,
  output [1:0] io_deq_bits_data_1_alias
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] ram_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_way [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_way_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_way_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_way_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_data_0_state [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_0_state_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_0_state_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_0_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_0_state_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_0_state_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_0_state_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_0_state_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_data_0_alias [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_0_alias_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_0_alias_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_0_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_0_alias_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_0_alias_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_0_alias_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_0_alias_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_data_1_state [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_1_state_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_1_state_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_1_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_1_state_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_1_state_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_1_state_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_1_state_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_data_1_alias [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_1_alias_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_1_alias_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_1_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_data_1_alias_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_1_alias_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_1_alias_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_1_alias_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = 1'h0;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_way_io_deq_bits_MPORT_en = 1'h1;
  assign ram_way_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_way_io_deq_bits_MPORT_data = ram_way[ram_way_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_way_MPORT_data = io_enq_bits_way;
  assign ram_way_MPORT_addr = 1'h0;
  assign ram_way_MPORT_mask = 1'h1;
  assign ram_way_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_0_state_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_0_state_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_0_state_io_deq_bits_MPORT_data = ram_data_0_state[ram_data_0_state_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_0_state_MPORT_data = io_enq_bits_data_0_state;
  assign ram_data_0_state_MPORT_addr = 1'h0;
  assign ram_data_0_state_MPORT_mask = 1'h1;
  assign ram_data_0_state_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_0_alias_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_0_alias_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_0_alias_io_deq_bits_MPORT_data = ram_data_0_alias[ram_data_0_alias_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_0_alias_MPORT_data = io_enq_bits_data_0_alias;
  assign ram_data_0_alias_MPORT_addr = 1'h0;
  assign ram_data_0_alias_MPORT_mask = 1'h1;
  assign ram_data_0_alias_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_1_state_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_1_state_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_1_state_io_deq_bits_MPORT_data = ram_data_1_state[ram_data_1_state_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_1_state_MPORT_data = io_enq_bits_data_1_state;
  assign ram_data_1_state_MPORT_addr = 1'h0;
  assign ram_data_1_state_MPORT_mask = 1'h1;
  assign ram_data_1_state_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_1_alias_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_1_alias_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_1_alias_io_deq_bits_MPORT_data = ram_data_1_alias[ram_data_1_alias_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_1_alias_MPORT_data = io_enq_bits_data_1_alias;
  assign ram_data_1_alias_MPORT_addr = 1'h0;
  assign ram_data_1_alias_MPORT_mask = 1'h1;
  assign ram_data_1_alias_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = 1'h1; // @[Decoupled.scala 289:16 309:{24,39}]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_set = ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_way = ram_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_0_state = ram_data_0_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_0_alias = ram_data_0_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_1_state = ram_data_1_state_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_1_alias = ram_data_1_alias_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_set_MPORT_en & ram_set_MPORT_mask) begin
      ram_set[ram_set_MPORT_addr] <= ram_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_way_MPORT_en & ram_way_MPORT_mask) begin
      ram_way[ram_way_MPORT_addr] <= ram_way_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_0_state_MPORT_en & ram_data_0_state_MPORT_mask) begin
      ram_data_0_state[ram_data_0_state_MPORT_addr] <= ram_data_0_state_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_0_alias_MPORT_en & ram_data_0_alias_MPORT_mask) begin
      ram_data_0_alias[ram_data_0_alias_MPORT_addr] <= ram_data_0_alias_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_1_state_MPORT_en & ram_data_1_state_MPORT_mask) begin
      ram_data_1_state[ram_data_1_state_MPORT_addr] <= ram_data_1_state_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_1_alias_MPORT_en & ram_data_1_alias_MPORT_mask) begin
      ram_data_1_alias[ram_data_1_alias_MPORT_addr] <= ram_data_1_alias_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != io_deq_valid) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_set[initvar] = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_way[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_0_state[initvar] = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_0_alias[initvar] = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_1_state[initvar] = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_1_alias[initvar] = _RAND_5[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
