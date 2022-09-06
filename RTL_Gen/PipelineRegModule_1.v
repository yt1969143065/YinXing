module PipelineRegModule_1(
  input          clock,
  input          reset,
  output         io_in_ready,
  input          io_in_valid,
  input          io_in_bits_miss,
  input  [2:0]   io_in_bits_miss_id,
  input  [1:0]   io_in_bits_miss_param,
  input          io_in_bits_miss_dirty,
  input  [3:0]   io_in_bits_miss_way_en,
  input  [1:0]   io_in_bits_source,
  input  [4:0]   io_in_bits_cmd,
  input  [38:0]  io_in_bits_vaddr,
  input  [35:0]  io_in_bits_addr,
  input  [511:0] io_in_bits_store_data,
  input  [63:0]  io_in_bits_store_mask,
  input  [2:0]   io_in_bits_word_idx,
  input  [63:0]  io_in_bits_amo_data,
  input  [7:0]   io_in_bits_amo_mask,
  input          io_in_bits_error,
  input          io_in_bits_replace,
  input  [3:0]   io_in_bits_replace_way_en,
  input  [63:0]  io_in_bits_id,
  input          io_out_ready,
  output         io_out_valid,
  output         io_out_bits_miss,
  output [2:0]   io_out_bits_miss_id,
  output [1:0]   io_out_bits_miss_param,
  output         io_out_bits_miss_dirty,
  output [3:0]   io_out_bits_miss_way_en,
  output [1:0]   io_out_bits_source,
  output [4:0]   io_out_bits_cmd,
  output [38:0]  io_out_bits_vaddr,
  output [35:0]  io_out_bits_addr,
  output [511:0] io_out_bits_store_data,
  output [63:0]  io_out_bits_store_mask,
  output [2:0]   io_out_bits_word_idx,
  output [63:0]  io_out_bits_amo_data,
  output [7:0]   io_out_bits_amo_mask,
  output         io_out_bits_error,
  output         io_out_bits_replace,
  output [3:0]   io_out_bits_replace_way_en,
  output [63:0]  io_out_bits_id
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
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [511:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_reg_valid; // @[MemCommon.scala 152:24]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T ? 1'h0 : pipeline_reg_valid; // @[MemCommon.scala 152:24 154:{26,34}]
  wire  _T_1 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_1 = _T_1 | _GEN_0; // @[MemCommon.scala 155:{25,33}]
  reg  io_out_bits_rmiss; // @[Reg.scala 16:16]
  reg [2:0] io_out_bits_rmiss_id; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_rmiss_param; // @[Reg.scala 16:16]
  reg  io_out_bits_rmiss_dirty; // @[Reg.scala 16:16]
  reg [3:0] io_out_bits_rmiss_way_en; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_rsource; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_rcmd; // @[Reg.scala 16:16]
  reg [38:0] io_out_bits_rvaddr; // @[Reg.scala 16:16]
  reg [35:0] io_out_bits_raddr; // @[Reg.scala 16:16]
  reg [511:0] io_out_bits_rstore_data; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rstore_mask; // @[Reg.scala 16:16]
  reg [2:0] io_out_bits_rword_idx; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_ramo_data; // @[Reg.scala 16:16]
  reg [7:0] io_out_bits_ramo_mask; // @[Reg.scala 16:16]
  reg  io_out_bits_rerror; // @[Reg.scala 16:16]
  reg  io_out_bits_rreplace; // @[Reg.scala 16:16]
  reg [3:0] io_out_bits_rreplace_way_en; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rid; // @[Reg.scala 16:16]
  assign io_in_ready = ~pipeline_reg_valid | io_out_ready; // @[MemCommon.scala 158:27]
  assign io_out_valid = pipeline_reg_valid; // @[MemCommon.scala 160:18]
  assign io_out_bits_miss = io_out_bits_rmiss; // @[MemCommon.scala 159:17]
  assign io_out_bits_miss_id = io_out_bits_rmiss_id; // @[MemCommon.scala 159:17]
  assign io_out_bits_miss_param = io_out_bits_rmiss_param; // @[MemCommon.scala 159:17]
  assign io_out_bits_miss_dirty = io_out_bits_rmiss_dirty; // @[MemCommon.scala 159:17]
  assign io_out_bits_miss_way_en = io_out_bits_rmiss_way_en; // @[MemCommon.scala 159:17]
  assign io_out_bits_source = io_out_bits_rsource; // @[MemCommon.scala 159:17]
  assign io_out_bits_cmd = io_out_bits_rcmd; // @[MemCommon.scala 159:17]
  assign io_out_bits_vaddr = io_out_bits_rvaddr; // @[MemCommon.scala 159:17]
  assign io_out_bits_addr = io_out_bits_raddr; // @[MemCommon.scala 159:17]
  assign io_out_bits_store_data = io_out_bits_rstore_data; // @[MemCommon.scala 159:17]
  assign io_out_bits_store_mask = io_out_bits_rstore_mask; // @[MemCommon.scala 159:17]
  assign io_out_bits_word_idx = io_out_bits_rword_idx; // @[MemCommon.scala 159:17]
  assign io_out_bits_amo_data = io_out_bits_ramo_data; // @[MemCommon.scala 159:17]
  assign io_out_bits_amo_mask = io_out_bits_ramo_mask; // @[MemCommon.scala 159:17]
  assign io_out_bits_error = io_out_bits_rerror; // @[MemCommon.scala 159:17]
  assign io_out_bits_replace = io_out_bits_rreplace; // @[MemCommon.scala 159:17]
  assign io_out_bits_replace_way_en = io_out_bits_rreplace_way_en; // @[MemCommon.scala 159:17]
  assign io_out_bits_id = io_out_bits_rid; // @[MemCommon.scala 159:17]
  always @(posedge clock) begin
    if (reset) begin // @[MemCommon.scala 152:24]
      pipeline_reg_valid <= 1'h0; // @[MemCommon.scala 152:24]
    end else begin
      pipeline_reg_valid <= _GEN_1;
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss <= io_in_bits_miss; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss_id <= io_in_bits_miss_id; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss_param <= io_in_bits_miss_param; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss_dirty <= io_in_bits_miss_dirty; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss_way_en <= io_in_bits_miss_way_en; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rsource <= io_in_bits_source; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rcmd <= io_in_bits_cmd; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rvaddr <= io_in_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_raddr <= io_in_bits_addr; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rstore_data <= io_in_bits_store_data; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rstore_mask <= io_in_bits_store_mask; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rword_idx <= io_in_bits_word_idx; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_ramo_data <= io_in_bits_amo_data; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_ramo_mask <= io_in_bits_amo_mask; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rerror <= io_in_bits_error; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rreplace <= io_in_bits_replace; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rreplace_way_en <= io_in_bits_replace_way_en; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rid <= io_in_bits_id; // @[Reg.scala 17:22]
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
  pipeline_reg_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_rmiss = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_rmiss_id = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_rmiss_param = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_rmiss_dirty = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_rmiss_way_en = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_rsource = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_rcmd = _RAND_7[4:0];
  _RAND_8 = {2{`RANDOM}};
  io_out_bits_rvaddr = _RAND_8[38:0];
  _RAND_9 = {2{`RANDOM}};
  io_out_bits_raddr = _RAND_9[35:0];
  _RAND_10 = {16{`RANDOM}};
  io_out_bits_rstore_data = _RAND_10[511:0];
  _RAND_11 = {2{`RANDOM}};
  io_out_bits_rstore_mask = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_bits_rword_idx = _RAND_12[2:0];
  _RAND_13 = {2{`RANDOM}};
  io_out_bits_ramo_data = _RAND_13[63:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_bits_ramo_mask = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_bits_rerror = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_bits_rreplace = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_bits_rreplace_way_en = _RAND_17[3:0];
  _RAND_18 = {2{`RANDOM}};
  io_out_bits_rid = _RAND_18[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
