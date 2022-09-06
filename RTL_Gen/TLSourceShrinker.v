module TLSourceShrinker(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_size,
  input  [7:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [2:0]   auto_in_d_bits_size,
  output [7:0]   auto_in_d_bits_source,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [5:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [2:0]   auto_out_d_bits_size,
  input  [5:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] sourceIdMap [0:63]; // @[SourceShrinker.scala 51:30]
  wire  sourceIdMap_bundleIn_0_d_bits_source_MPORT_en; // @[SourceShrinker.scala 51:30]
  wire [5:0] sourceIdMap_bundleIn_0_d_bits_source_MPORT_addr; // @[SourceShrinker.scala 51:30]
  wire [7:0] sourceIdMap_bundleIn_0_d_bits_source_MPORT_data; // @[SourceShrinker.scala 51:30]
  wire [7:0] sourceIdMap_MPORT_data; // @[SourceShrinker.scala 51:30]
  wire [5:0] sourceIdMap_MPORT_addr; // @[SourceShrinker.scala 51:30]
  wire  sourceIdMap_MPORT_mask; // @[SourceShrinker.scala 51:30]
  wire  sourceIdMap_MPORT_en; // @[SourceShrinker.scala 51:30]
  reg [63:0] allocated; // @[SourceShrinker.scala 52:32]
  wire [63:0] _nextFreeOH_T = ~allocated; // @[SourceShrinker.scala 53:35]
  wire [64:0] _nextFreeOH_T_1 = {_nextFreeOH_T, 1'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_3 = _nextFreeOH_T | _nextFreeOH_T_1[63:0]; // @[package.scala 244:43]
  wire [65:0] _nextFreeOH_T_4 = {_nextFreeOH_T_3, 2'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_6 = _nextFreeOH_T_3 | _nextFreeOH_T_4[63:0]; // @[package.scala 244:43]
  wire [67:0] _nextFreeOH_T_7 = {_nextFreeOH_T_6, 4'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_9 = _nextFreeOH_T_6 | _nextFreeOH_T_7[63:0]; // @[package.scala 244:43]
  wire [71:0] _nextFreeOH_T_10 = {_nextFreeOH_T_9, 8'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_12 = _nextFreeOH_T_9 | _nextFreeOH_T_10[63:0]; // @[package.scala 244:43]
  wire [79:0] _nextFreeOH_T_13 = {_nextFreeOH_T_12, 16'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_15 = _nextFreeOH_T_12 | _nextFreeOH_T_13[63:0]; // @[package.scala 244:43]
  wire [95:0] _nextFreeOH_T_16 = {_nextFreeOH_T_15, 32'h0}; // @[package.scala 244:48]
  wire [63:0] _nextFreeOH_T_18 = _nextFreeOH_T_15 | _nextFreeOH_T_16[63:0]; // @[package.scala 244:43]
  wire [64:0] _nextFreeOH_T_20 = {_nextFreeOH_T_18, 1'h0}; // @[SourceShrinker.scala 53:47]
  wire [64:0] _nextFreeOH_T_21 = ~_nextFreeOH_T_20; // @[SourceShrinker.scala 53:26]
  wire [64:0] _GEN_8 = {{1'd0}, _nextFreeOH_T}; // @[SourceShrinker.scala 53:53]
  wire [64:0] nextFreeOH = _nextFreeOH_T_21 & _GEN_8; // @[SourceShrinker.scala 53:53]
  wire  nextFree_hi = nextFreeOH[64]; // @[OneHot.scala 30:18]
  wire [63:0] nextFree_lo = nextFreeOH[63:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T = |nextFree_hi; // @[OneHot.scala 32:14]
  wire [63:0] _GEN_9 = {{63'd0}, nextFree_hi}; // @[OneHot.scala 32:28]
  wire [63:0] _nextFree_T_1 = _GEN_9 | nextFree_lo; // @[OneHot.scala 32:28]
  wire [31:0] nextFree_hi_1 = _nextFree_T_1[63:32]; // @[OneHot.scala 30:18]
  wire [31:0] nextFree_lo_1 = _nextFree_T_1[31:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T_2 = |nextFree_hi_1; // @[OneHot.scala 32:14]
  wire [31:0] _nextFree_T_3 = nextFree_hi_1 | nextFree_lo_1; // @[OneHot.scala 32:28]
  wire [15:0] nextFree_hi_2 = _nextFree_T_3[31:16]; // @[OneHot.scala 30:18]
  wire [15:0] nextFree_lo_2 = _nextFree_T_3[15:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T_4 = |nextFree_hi_2; // @[OneHot.scala 32:14]
  wire [15:0] _nextFree_T_5 = nextFree_hi_2 | nextFree_lo_2; // @[OneHot.scala 32:28]
  wire [7:0] nextFree_hi_3 = _nextFree_T_5[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] nextFree_lo_3 = _nextFree_T_5[7:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T_6 = |nextFree_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _nextFree_T_7 = nextFree_hi_3 | nextFree_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] nextFree_hi_4 = _nextFree_T_7[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] nextFree_lo_4 = _nextFree_T_7[3:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T_8 = |nextFree_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _nextFree_T_9 = nextFree_hi_4 | nextFree_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] nextFree_hi_5 = _nextFree_T_9[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] nextFree_lo_5 = _nextFree_T_9[1:0]; // @[OneHot.scala 31:18]
  wire  _nextFree_T_10 = |nextFree_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _nextFree_T_11 = nextFree_hi_5 | nextFree_lo_5; // @[OneHot.scala 32:28]
  wire [6:0] nextFree = {_nextFree_T,_nextFree_T_2,_nextFree_T_4,_nextFree_T_6,_nextFree_T_8,_nextFree_T_10,
    _nextFree_T_11[1]}; // @[Cat.scala 31:58]
  wire  full = &allocated; // @[SourceShrinker.scala 55:34]
  reg  a_first_counter; // @[Edges.scala 228:27]
  wire  a_first = ~a_first_counter; // @[Edges.scala 230:25]
  wire  block = a_first & full; // @[SourceShrinker.scala 60:29]
  wire  _bundleIn_0_a_ready_T = ~block; // @[SourceShrinker.scala 61:38]
  wire  bundleIn_0_a_ready = auto_out_a_ready & ~block; // @[SourceShrinker.scala 61:35]
  wire  _a_first_T = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _a_first_beats1_decode_T_1 = 13'h3f << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _a_first_beats1_decode_T_3 = ~_a_first_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  a_first_beats1_decode = _a_first_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  a_first_beats1_opdata = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  a_first_beats1 = a_first_beats1_opdata & a_first_beats1_decode; // @[Edges.scala 220:14]
  wire  a_first_counter1 = a_first_counter - 1'h1; // @[Edges.scala 229:28]
  wire  _d_last_T = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _d_last_beats1_decode_T_1 = 13'h3f << auto_out_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_last_beats1_decode_T_3 = ~_d_last_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  d_last_beats1_decode = _d_last_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  d_last_beats1_opdata = auto_out_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_last_beats1 = d_last_beats1_opdata & d_last_beats1_decode; // @[Edges.scala 220:14]
  reg  d_last_counter; // @[Edges.scala 228:27]
  wire  d_last_counter1 = d_last_counter - 1'h1; // @[Edges.scala 229:28]
  wire  d_last_first = ~d_last_counter; // @[Edges.scala 230:25]
  wire  d_last = d_last_counter | ~d_last_beats1; // @[Edges.scala 231:37]
  wire  d_last_done = d_last & _d_last_T; // @[Edges.scala 232:22]
  reg [6:0] bundleOut_0_a_bits_source_r; // @[Reg.scala 16:16]
  wire [6:0] _GEN_2 = a_first ? nextFree : bundleOut_0_a_bits_source_r; // @[Reg.scala 16:16 17:{18,22}]
  wire  _T_1 = a_first & _a_first_T; // @[SourceShrinker.scala 70:23]
  wire [64:0] alloc_id = _T_1 ? nextFreeOH : 65'h0; // @[SourceShrinker.scala 76:27]
  wire [63:0] _free_id_T = 64'h1 << auto_out_d_bits_source; // @[OneHot.scala 57:35]
  wire [63:0] free_id = d_last_done ? _free_id_T : 64'h0; // @[SourceShrinker.scala 77:26]
  wire [64:0] _GEN_11 = {{1'd0}, allocated}; // @[SourceShrinker.scala 78:33]
  wire [64:0] _allocated_T = _GEN_11 | alloc_id; // @[SourceShrinker.scala 78:33]
  wire [63:0] _allocated_T_1 = ~free_id; // @[SourceShrinker.scala 78:47]
  wire [64:0] _GEN_12 = {{1'd0}, _allocated_T_1}; // @[SourceShrinker.scala 78:45]
  wire [64:0] _allocated_T_2 = _allocated_T & _GEN_12; // @[SourceShrinker.scala 78:45]
  assign sourceIdMap_bundleIn_0_d_bits_source_MPORT_en = 1'h1;
  assign sourceIdMap_bundleIn_0_d_bits_source_MPORT_addr = auto_out_d_bits_source;
  assign sourceIdMap_bundleIn_0_d_bits_source_MPORT_data = sourceIdMap[sourceIdMap_bundleIn_0_d_bits_source_MPORT_addr]; // @[SourceShrinker.scala 51:30]
  assign sourceIdMap_MPORT_data = auto_in_a_bits_source;
  assign sourceIdMap_MPORT_addr = nextFree[5:0];
  assign sourceIdMap_MPORT_mask = 1'h1;
  assign sourceIdMap_MPORT_en = a_first & _a_first_T;
  assign auto_in_a_ready = auto_out_a_ready & ~block; // @[SourceShrinker.scala 61:35]
  assign auto_in_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_source = sourceIdMap_bundleIn_0_d_bits_source_MPORT_data; // @[SourceShrinker.scala 68:32]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = auto_in_a_valid & _bundleIn_0_a_ready_T; // @[SourceShrinker.scala 62:35]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_source = _GEN_2[5:0]; // @[Nodes.scala 1207:84 SourceShrinker.scala 64:27]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  always @(posedge clock) begin
    if (sourceIdMap_MPORT_en & sourceIdMap_MPORT_mask) begin
      sourceIdMap[sourceIdMap_MPORT_addr] <= sourceIdMap_MPORT_data; // @[SourceShrinker.scala 51:30]
    end
    if (reset) begin // @[SourceShrinker.scala 52:32]
      allocated <= 64'h0; // @[SourceShrinker.scala 52:32]
    end else begin
      allocated <= _allocated_T_2[63:0]; // @[SourceShrinker.scala 78:19]
    end
    if (reset) begin // @[Edges.scala 228:27]
      a_first_counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_a_first_T) begin // @[Edges.scala 234:17]
      if (a_first) begin // @[Edges.scala 235:21]
        a_first_counter <= a_first_beats1;
      end else begin
        a_first_counter <= a_first_counter1;
      end
    end
    if (reset) begin // @[Edges.scala 228:27]
      d_last_counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_d_last_T) begin // @[Edges.scala 234:17]
      if (d_last_first) begin // @[Edges.scala 235:21]
        d_last_counter <= d_last_beats1;
      end else begin
        d_last_counter <= d_last_counter1;
      end
    end
    if (a_first) begin // @[Reg.scala 17:18]
      bundleOut_0_a_bits_source_r <= nextFree; // @[Reg.scala 17:22]
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
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    sourceIdMap[initvar] = _RAND_0[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  allocated = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  a_first_counter = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  d_last_counter = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  bundleOut_0_a_bits_source_r = _RAND_4[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
