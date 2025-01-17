module Queue_45(
  input          clock,
  input          reset,
  output         io_enq_ready,
  input          io_enq_valid,
  input  [5:0]   io_enq_bits_id,
  input  [255:0] io_enq_bits_data,
  input  [1:0]   io_enq_bits_resp,
  input  [3:0]   io_enq_bits_echo_tl_state_size,
  input  [5:0]   io_enq_bits_echo_tl_state_source,
  input          io_enq_bits_last,
  input          io_deq_ready,
  output         io_deq_valid,
  output [5:0]   io_deq_bits_id,
  output [255:0] io_deq_bits_data,
  output [1:0]   io_deq_bits_resp,
  output [3:0]   io_deq_bits_echo_tl_state_size,
  output [5:0]   io_deq_bits_echo_tl_state_source,
  output         io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] ram_id [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_id_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 259:95]
  reg [255:0] ram_data [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_resp [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_resp_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_resp_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_resp_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_resp_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_resp_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_resp_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_echo_tl_state_size [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_echo_tl_state_source [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_last [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 259:95]
  reg  enq_ptr_value; // @[Counter.scala 62:40]
  reg  deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_id_io_deq_bits_MPORT_en = 1'h1;
  assign ram_id_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = enq_ptr_value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = enq_ptr_value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_resp_io_deq_bits_MPORT_en = 1'h1;
  assign ram_resp_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_resp_io_deq_bits_MPORT_data = ram_resp[ram_resp_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_resp_MPORT_data = io_enq_bits_resp;
  assign ram_resp_MPORT_addr = enq_ptr_value;
  assign ram_resp_MPORT_mask = 1'h1;
  assign ram_resp_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_data =
    ram_echo_tl_state_size[ram_echo_tl_state_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_size_MPORT_data = io_enq_bits_echo_tl_state_size;
  assign ram_echo_tl_state_size_MPORT_addr = enq_ptr_value;
  assign ram_echo_tl_state_size_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_data =
    ram_echo_tl_state_source[ram_echo_tl_state_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_source_MPORT_data = io_enq_bits_echo_tl_state_source;
  assign ram_echo_tl_state_source_MPORT_addr = enq_ptr_value;
  assign ram_echo_tl_state_source_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_resp = ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_echo_tl_state_size = ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_echo_tl_state_source = ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_resp_MPORT_en & ram_resp_MPORT_mask) begin
      ram_resp[ram_resp_MPORT_addr] <= ram_resp_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_size_MPORT_en & ram_echo_tl_state_size_MPORT_mask) begin
      ram_echo_tl_state_size[ram_echo_tl_state_size_MPORT_addr] <= ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_source_MPORT_en & ram_echo_tl_state_source_MPORT_mask) begin
      ram_echo_tl_state_source[ram_echo_tl_state_source_MPORT_addr] <= ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      enq_ptr_value <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= enq_ptr_value + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      deq_ptr_value <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= deq_ptr_value + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
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
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[5:0];
  _RAND_1 = {8{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_1[255:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_resp[initvar] = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_tl_state_size[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_tl_state_source[initvar] = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = _RAND_5[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  enq_ptr_value = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  deq_ptr_value = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
