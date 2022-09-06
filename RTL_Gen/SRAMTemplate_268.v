module SRAMTemplate_268(
  input         clock,
  input         io_rreq_valid,
  input  [11:0] io_rreq_bits_setIdx,
  output        io_rresp_data_0_dirty,
  output [1:0]  io_rresp_data_0_state,
  output [1:0]  io_rresp_data_0_clientStates_0,
  output        io_rresp_data_1_dirty,
  output [1:0]  io_rresp_data_1_state,
  output [1:0]  io_rresp_data_1_clientStates_0,
  output        io_rresp_data_2_dirty,
  output [1:0]  io_rresp_data_2_state,
  output [1:0]  io_rresp_data_2_clientStates_0,
  output        io_rresp_data_3_dirty,
  output [1:0]  io_rresp_data_3_state,
  output [1:0]  io_rresp_data_3_clientStates_0,
  input         io_wreq_valid,
  input  [11:0] io_wreq_bits_setIdx,
  input         io_wreq_bits_data_0_dirty,
  input  [1:0]  io_wreq_bits_data_0_state,
  input  [1:0]  io_wreq_bits_data_0_clientStates_0,
  input         io_wreq_bits_data_1_dirty,
  input  [1:0]  io_wreq_bits_data_1_state,
  input  [1:0]  io_wreq_bits_data_1_clientStates_0,
  input         io_wreq_bits_data_2_dirty,
  input  [1:0]  io_wreq_bits_data_2_state,
  input  [1:0]  io_wreq_bits_data_2_clientStates_0,
  input         io_wreq_bits_data_3_dirty,
  input  [1:0]  io_wreq_bits_data_3_state,
  input  [1:0]  io_wreq_bits_data_3_clientStates_0,
  input  [3:0]  io_wreq_bits_waymask
);
  wire [11:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  wire [2:0] wdata_hi = {io_wreq_bits_data_0_dirty,io_wreq_bits_data_0_state}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_1 = {io_wreq_bits_data_1_dirty,io_wreq_bits_data_1_state}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_2 = {io_wreq_bits_data_2_dirty,io_wreq_bits_data_2_state}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_3 = {io_wreq_bits_data_3_dirty,io_wreq_bits_data_3_state}; // @[SRAMTemplate.scala 129:102]
  wire [4:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [4:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [4:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [4:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  array_42 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign io_rresp_data_0_dirty = _rdata_WIRE[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_state = _rdata_WIRE[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_clientStates_0 = _rdata_WIRE[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_dirty = _rdata_WIRE_1[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_state = _rdata_WIRE_1[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_clientStates_0 = _rdata_WIRE_1[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_dirty = _rdata_WIRE_2[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_state = _rdata_WIRE_2[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_clientStates_0 = _rdata_WIRE_2[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_dirty = _rdata_WIRE_3[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_state = _rdata_WIRE_3[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_clientStates_0 = _rdata_WIRE_3[1:0]; // @[SRAMTemplate.scala 163:22]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = {wdata_hi,io_wreq_bits_data_0_clientStates_0}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,io_wreq_bits_data_1_clientStates_0}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,io_wreq_bits_data_2_clientStates_0}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,io_wreq_bits_data_3_clientStates_0}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule
