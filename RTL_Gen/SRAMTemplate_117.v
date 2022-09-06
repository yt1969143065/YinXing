module SRAMTemplate_117(
  input          clock,
  input          reset,
  input          io_rreq_valid,
  input  [5:0]   io_rreq_bits_setIdx,
  output [511:0] io_rresp_data_0_meta,
  input          io_wreq_valid,
  input  [5:0]   io_wreq_bits_setIdx,
  input  [511:0] io_wreq_bits_data_0_meta
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [5:0] array_R0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 102:26]
  wire [511:0] array_R0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 102:26]
  wire [511:0] array_W0_data_0; // @[SRAMTemplate.scala 102:26]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 127:29]
  reg [5:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 128:28]
  reg [5:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 129:28]
  wire  bypass_mask_bypass = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 131:39]
  wire [511:0] bypass_wdata_0 = {{448'd0}, bypass_wdata_lfsr}; // @[SRAMTemplate.scala 135:{58,58}]
  array_19 array ( // @[SRAMTemplate.scala 102:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0)
  );
  assign io_rresp_data_0_meta = bypass_mask_bypass ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 140:30]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 122:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 102:26 122:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 122:{29,29}]
  assign array_W0_addr = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 120:14]
  assign array_W0_en = io_wreq_valid; // @[SRAMTemplate.scala 120:14 102:26]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_W0_data_0 = io_wreq_bits_data_0_meta; // @[SRAMTemplate.scala 118:26]
  always @(posedge clock) begin
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr <= 64'h1;
    end else begin
      bypass_wdata_lfsr <= _bypass_wdata_lfsr_T_2;
    end
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 127:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 129:28]
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
  _RAND_0 = {2{`RANDOM}};
  bypass_wdata_lfsr = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_3[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
