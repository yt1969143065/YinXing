module FoldedSRAMTemplate_45(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [5:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0,
  output       io_rresp_data_1,
  input        io_wreq_valid,
  input  [5:0] io_wreq_bits_setIdx,
  input        io_wreq_bits_data_0,
  input        io_wreq_bits_data_1,
  input  [1:0] io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  array_clock; // @[SRAMTemplate.scala 169:21]
  wire  array_reset; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [4:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_0; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_1; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_2; // @[SRAMTemplate.scala 169:21]
  wire  array_io_rresp_data_3; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 169:21]
  wire [4:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_0; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_1; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_2; // @[SRAMTemplate.scala 169:21]
  wire  array_io_wreq_bits_data_3; // @[SRAMTemplate.scala 169:21]
  wire [3:0] array_io_wreq_bits_waymask; // @[SRAMTemplate.scala 169:21]
  reg  ridx; // @[SRAMTemplate.scala 175:21]
  reg  holdRidx_REG; // @[SRAMTemplate.scala 184:44]
  reg  holdRidx_r; // @[Reg.scala 28:20]
  wire  _GEN_0 = holdRidx_REG ? ridx : holdRidx_r; // @[Reg.scala 29:18 28:20 29:22]
  wire [1:0] _io_rresp_data_0_T = 2'h1 << _GEN_0; // @[OneHot.scala 64:12]
  wire  wayData__0 = array_io_rresp_data_0; // @[SRAMTemplate.scala 183:{26,26}]
  wire  wayData__1 = array_io_rresp_data_2; // @[SRAMTemplate.scala 183:{26,26}]
  reg  holdRidx_REG_1; // @[SRAMTemplate.scala 184:44]
  reg  holdRidx_r1; // @[Reg.scala 28:20]
  wire  _GEN_1 = holdRidx_REG_1 ? ridx : holdRidx_r1; // @[Reg.scala 29:18 28:20 29:22]
  wire [1:0] _io_rresp_data_1_T = 2'h1 << _GEN_1; // @[OneHot.scala 64:12]
  wire  wayData_1_0 = array_io_rresp_data_1; // @[SRAMTemplate.scala 183:{26,26}]
  wire  wayData_1_1 = array_io_rresp_data_3; // @[SRAMTemplate.scala 183:{26,26}]
  wire  widthIdx = io_wreq_bits_setIdx[0]; // @[SRAMTemplate.scala 192:54]
  wire  _wmask_T_2 = ~widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 196:82]
  wire  _wmask_T_5 = ~widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 196:82]
  wire  _wmask_T_8 = widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 196:82]
  wire  _wmask_T_11 = widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 196:82]
  wire [1:0] wmask_lo = {_wmask_T_5,_wmask_T_2}; // @[SRAMTemplate.scala 196:122]
  wire [1:0] wmask_hi = {_wmask_T_11,_wmask_T_8}; // @[SRAMTemplate.scala 196:122]
  SRAMTemplate_54 array ( // @[SRAMTemplate.scala 169:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0(array_io_rresp_data_0),
    .io_rresp_data_1(array_io_rresp_data_1),
    .io_rresp_data_2(array_io_rresp_data_2),
    .io_rresp_data_3(array_io_rresp_data_3),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(array_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(array_io_wreq_bits_waymask)
  );
  assign io_rresp_data_0 = _io_rresp_data_0_T[0] & wayData__0 | _io_rresp_data_0_T[1] & wayData__1; // @[Mux.scala 27:73]
  assign io_rresp_data_1 = _io_rresp_data_1_T[0] & wayData_1_0 | _io_rresp_data_1_T[1] & wayData_1_1; // @[Mux.scala 27:73]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 178:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx[5:1]; // @[SRAMTemplate.scala 174:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 85:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx[5:1]; // @[SRAMTemplate.scala 191:36]
  assign array_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_2 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_data_3 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 190:{22,22}]
  assign array_io_wreq_bits_waymask = {wmask_hi,wmask_lo}; // @[SRAMTemplate.scala 196:122]
  always @(posedge clock) begin
    ridx <= io_rreq_bits_setIdx[0]; // @[SRAMTemplate.scala 175:58]
    holdRidx_REG <= io_rreq_valid; // @[SRAMTemplate.scala 184:44]
    if (reset) begin // @[Reg.scala 28:20]
      holdRidx_r <= 1'h0; // @[Reg.scala 28:20]
    end else if (holdRidx_REG) begin // @[Reg.scala 29:18]
      holdRidx_r <= ridx; // @[Reg.scala 29:22]
    end
    holdRidx_REG_1 <= io_rreq_valid; // @[SRAMTemplate.scala 184:44]
    if (reset) begin // @[Reg.scala 28:20]
      holdRidx_r1 <= 1'h0; // @[Reg.scala 28:20]
    end else if (holdRidx_REG_1) begin // @[Reg.scala 29:18]
      holdRidx_r1 <= ridx; // @[Reg.scala 29:22]
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
  ridx = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  holdRidx_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  holdRidx_r = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  holdRidx_REG_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  holdRidx_r1 = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
