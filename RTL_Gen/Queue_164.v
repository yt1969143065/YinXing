module Queue_164(
  input          clock,
  input          reset,
  output         io_enq_ready,
  input          io_enq_valid,
  input  [2:0]   io_enq_bits_opcode,
  input  [2:0]   io_enq_bits_param,
  input  [2:0]   io_enq_bits_size,
  input  [4:0]   io_enq_bits_source,
  input  [35:0]  io_enq_bits_address,
  input          io_enq_bits_user_preferCache,
  input  [31:0]  io_enq_bits_mask,
  input  [255:0] io_enq_bits_data,
  input          io_enq_bits_corrupt,
  input          io_deq_ready,
  output         io_deq_valid,
  output [2:0]   io_deq_bits_opcode,
  output [2:0]   io_deq_bits_param,
  output [2:0]   io_deq_bits_size,
  output [4:0]   io_deq_bits_source,
  output [35:0]  io_deq_bits_address,
  output         io_deq_bits_user_preferCache,
  output [31:0]  io_deq_bits_mask,
  output [255:0] io_deq_bits_data,
  output         io_deq_bits_corrupt
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_param [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [4:0] ram_source [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [4:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [4:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [35:0] ram_address [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_address_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_address_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [35:0] ram_address_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [35:0] ram_address_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_user_preferCache [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_user_preferCache_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_mask [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [255:0] ram_data [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [255:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_corrupt [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_en; // @[Decoupled.scala 259:95]
  reg  value; // @[Counter.scala 62:40]
  reg  value_1; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = value_1;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = io_enq_bits_opcode;
  assign ram_opcode_MPORT_addr = value;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = value_1;
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_param_MPORT_data = io_enq_bits_param;
  assign ram_param_MPORT_addr = value;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = value_1;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = value_1;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_address_io_deq_bits_MPORT_en = 1'h1;
  assign ram_address_io_deq_bits_MPORT_addr = value_1;
  assign ram_address_io_deq_bits_MPORT_data = ram_address[ram_address_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_address_MPORT_data = io_enq_bits_address;
  assign ram_address_MPORT_addr = value;
  assign ram_address_MPORT_mask = 1'h1;
  assign ram_address_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_user_preferCache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_user_preferCache_io_deq_bits_MPORT_addr = value_1;
  assign ram_user_preferCache_io_deq_bits_MPORT_data = ram_user_preferCache[ram_user_preferCache_io_deq_bits_MPORT_addr]
    ; // @[Decoupled.scala 259:95]
  assign ram_user_preferCache_MPORT_data = io_enq_bits_user_preferCache;
  assign ram_user_preferCache_MPORT_addr = value;
  assign ram_user_preferCache_MPORT_mask = 1'h1;
  assign ram_user_preferCache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_mask_io_deq_bits_MPORT_addr = value_1;
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_mask_MPORT_data = io_enq_bits_mask;
  assign ram_mask_MPORT_addr = value;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = value_1;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt_io_deq_bits_MPORT_en = 1'h1;
  assign ram_corrupt_io_deq_bits_MPORT_addr = value_1;
  assign ram_corrupt_io_deq_bits_MPORT_data = ram_corrupt[ram_corrupt_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_corrupt_MPORT_data = io_enq_bits_corrupt;
  assign ram_corrupt_MPORT_addr = value;
  assign ram_corrupt_MPORT_mask = 1'h1;
  assign ram_corrupt_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_opcode = ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_param = ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_address = ram_address_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_user_preferCache = ram_user_preferCache_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_mask = ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_corrupt = ram_corrupt_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_opcode_MPORT_en & ram_opcode_MPORT_mask) begin
      ram_opcode[ram_opcode_MPORT_addr] <= ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_param_MPORT_en & ram_param_MPORT_mask) begin
      ram_param[ram_param_MPORT_addr] <= ram_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_address_MPORT_en & ram_address_MPORT_mask) begin
      ram_address[ram_address_MPORT_addr] <= ram_address_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_user_preferCache_MPORT_en & ram_user_preferCache_MPORT_mask) begin
      ram_user_preferCache[ram_user_preferCache_MPORT_addr] <= ram_user_preferCache_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_mask_MPORT_en & ram_mask_MPORT_mask) begin
      ram_mask[ram_mask_MPORT_addr] <= ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_corrupt_MPORT_en & ram_corrupt_MPORT_mask) begin
      ram_corrupt[ram_corrupt_MPORT_addr] <= ram_corrupt_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      value <= value + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 78:15]
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
    ram_opcode[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[4:0];
  _RAND_4 = {2{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_address[initvar] = _RAND_4[35:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_preferCache[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_mask[initvar] = _RAND_6[31:0];
  _RAND_7 = {8{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_7[255:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_8[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  value = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  value_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  maybe_full = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
