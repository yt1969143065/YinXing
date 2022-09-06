module SRAMWrapper(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [10:0] io_rreq_bits_setIdx,
  output [63:0] io_rresp_data_0,
  input         io_wreq_valid,
  input  [10:0] io_wreq_bits_setIdx,
  input  [63:0] io_wreq_bits_data_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  banks_0_clock; // @[SRAMWrapper.scala 28:22]
  wire  banks_0_io_rreq_ready; // @[SRAMWrapper.scala 28:22]
  wire  banks_0_io_rreq_valid; // @[SRAMWrapper.scala 28:22]
  wire [9:0] banks_0_io_rreq_bits_setIdx; // @[SRAMWrapper.scala 28:22]
  wire [63:0] banks_0_io_rresp_data_0; // @[SRAMWrapper.scala 28:22]
  wire  banks_0_io_wreq_valid; // @[SRAMWrapper.scala 28:22]
  wire [9:0] banks_0_io_wreq_bits_setIdx; // @[SRAMWrapper.scala 28:22]
  wire [63:0] banks_0_io_wreq_bits_data_0; // @[SRAMWrapper.scala 28:22]
  wire  banks_1_clock; // @[SRAMWrapper.scala 28:22]
  wire  banks_1_io_rreq_ready; // @[SRAMWrapper.scala 28:22]
  wire  banks_1_io_rreq_valid; // @[SRAMWrapper.scala 28:22]
  wire [9:0] banks_1_io_rreq_bits_setIdx; // @[SRAMWrapper.scala 28:22]
  wire [63:0] banks_1_io_rresp_data_0; // @[SRAMWrapper.scala 28:22]
  wire  banks_1_io_wreq_valid; // @[SRAMWrapper.scala 28:22]
  wire [9:0] banks_1_io_wreq_bits_setIdx; // @[SRAMWrapper.scala 28:22]
  wire [63:0] banks_1_io_wreq_bits_data_0; // @[SRAMWrapper.scala 28:22]
  wire  r_sel = io_rreq_bits_setIdx[0]; // @[SRAMWrapper.scala 21:55]
  wire  w_sel = io_wreq_bits_setIdx[0]; // @[SRAMWrapper.scala 23:55]
  wire  ren = ~r_sel; // @[SRAMWrapper.scala 26:42]
  wire  wen = ~w_sel; // @[SRAMWrapper.scala 27:42]
  wire  ren_vec_0_0 = banks_0_io_rreq_ready & banks_0_io_rreq_valid; // @[Decoupled.scala 50:35]
  wire  ren_vec_0_1 = banks_1_io_rreq_ready & banks_1_io_rreq_valid; // @[Decoupled.scala 50:35]
  reg  ren_vec__0; // @[SRAMWrapper.scala 39:26]
  reg  ren_vec__1; // @[SRAMWrapper.scala 39:26]
  wire [63:0] _T = ren_vec__0 ? banks_0_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_1 = ren_vec__1 ? banks_1_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  SRAMTemplate_171 banks_0 ( // @[SRAMWrapper.scala 28:22]
    .clock(banks_0_clock),
    .io_rreq_ready(banks_0_io_rreq_ready),
    .io_rreq_valid(banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(banks_0_io_rresp_data_0),
    .io_wreq_valid(banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(banks_0_io_wreq_bits_data_0)
  );
  SRAMTemplate_171 banks_1 ( // @[SRAMWrapper.scala 28:22]
    .clock(banks_1_clock),
    .io_rreq_ready(banks_1_io_rreq_ready),
    .io_rreq_valid(banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(banks_1_io_rresp_data_0),
    .io_wreq_valid(banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(banks_1_io_wreq_bits_data_0)
  );
  assign io_rresp_data_0 = _T | _T_1; // @[Mux.scala 27:73]
  assign banks_0_clock = clock;
  assign banks_0_io_rreq_valid = io_rreq_valid & ren; // @[SRAMWrapper.scala 31:43]
  assign banks_0_io_rreq_bits_setIdx = io_rreq_bits_setIdx[10:1]; // @[SRAMWrapper.scala 20:43]
  assign banks_0_io_wreq_valid = io_wreq_valid & wen; // @[SRAMWrapper.scala 33:43]
  assign banks_0_io_wreq_bits_setIdx = io_wreq_bits_setIdx[10:1]; // @[SRAMWrapper.scala 22:43]
  assign banks_0_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 66:{18,18}]
  assign banks_1_clock = clock;
  assign banks_1_io_rreq_valid = io_rreq_valid & r_sel; // @[SRAMWrapper.scala 31:43]
  assign banks_1_io_rreq_bits_setIdx = io_rreq_bits_setIdx[10:1]; // @[SRAMWrapper.scala 20:43]
  assign banks_1_io_wreq_valid = io_wreq_valid & w_sel; // @[SRAMWrapper.scala 33:43]
  assign banks_1_io_wreq_bits_setIdx = io_wreq_bits_setIdx[10:1]; // @[SRAMWrapper.scala 22:43]
  assign banks_1_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 66:{18,18}]
  always @(posedge clock) begin
    if (reset) begin // @[SRAMWrapper.scala 39:26]
      ren_vec__0 <= 1'h0; // @[SRAMWrapper.scala 39:26]
    end else begin
      ren_vec__0 <= ren_vec_0_0; // @[SRAMWrapper.scala 39:26]
    end
    if (reset) begin // @[SRAMWrapper.scala 39:26]
      ren_vec__1 <= 1'h0; // @[SRAMWrapper.scala 39:26]
    end else begin
      ren_vec__1 <= ren_vec_0_1; // @[SRAMWrapper.scala 39:26]
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
  ren_vec__0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  ren_vec__1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
