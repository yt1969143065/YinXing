module SRAMTemplate_191(
  input        clock,
  input        io_rreq_valid,
  input  [7:0] io_rreq_bits_setIdx,
  output [1:0] io_rresp_data_0_0_state,
  output [1:0] io_rresp_data_0_0_alias,
  output [1:0] io_rresp_data_0_1_state,
  output [1:0] io_rresp_data_0_1_alias,
  output [1:0] io_rresp_data_1_0_state,
  output [1:0] io_rresp_data_1_0_alias,
  output [1:0] io_rresp_data_1_1_state,
  output [1:0] io_rresp_data_1_1_alias,
  output [1:0] io_rresp_data_2_0_state,
  output [1:0] io_rresp_data_2_0_alias,
  output [1:0] io_rresp_data_2_1_state,
  output [1:0] io_rresp_data_2_1_alias,
  output [1:0] io_rresp_data_3_0_state,
  output [1:0] io_rresp_data_3_0_alias,
  output [1:0] io_rresp_data_3_1_state,
  output [1:0] io_rresp_data_3_1_alias,
  output [1:0] io_rresp_data_4_0_state,
  output [1:0] io_rresp_data_4_0_alias,
  output [1:0] io_rresp_data_4_1_state,
  output [1:0] io_rresp_data_4_1_alias,
  output [1:0] io_rresp_data_5_0_state,
  output [1:0] io_rresp_data_5_0_alias,
  output [1:0] io_rresp_data_5_1_state,
  output [1:0] io_rresp_data_5_1_alias,
  input        io_wreq_valid,
  input  [7:0] io_wreq_bits_setIdx,
  input  [1:0] io_wreq_bits_data_0_0_state,
  input  [1:0] io_wreq_bits_data_0_0_alias,
  input  [1:0] io_wreq_bits_data_0_1_state,
  input  [1:0] io_wreq_bits_data_0_1_alias,
  input  [1:0] io_wreq_bits_data_1_0_state,
  input  [1:0] io_wreq_bits_data_1_0_alias,
  input  [1:0] io_wreq_bits_data_1_1_state,
  input  [1:0] io_wreq_bits_data_1_1_alias,
  input  [1:0] io_wreq_bits_data_2_0_state,
  input  [1:0] io_wreq_bits_data_2_0_alias,
  input  [1:0] io_wreq_bits_data_2_1_state,
  input  [1:0] io_wreq_bits_data_2_1_alias,
  input  [1:0] io_wreq_bits_data_3_0_state,
  input  [1:0] io_wreq_bits_data_3_0_alias,
  input  [1:0] io_wreq_bits_data_3_1_state,
  input  [1:0] io_wreq_bits_data_3_1_alias,
  input  [1:0] io_wreq_bits_data_4_0_state,
  input  [1:0] io_wreq_bits_data_4_0_alias,
  input  [1:0] io_wreq_bits_data_4_1_state,
  input  [1:0] io_wreq_bits_data_4_1_alias,
  input  [1:0] io_wreq_bits_data_5_0_state,
  input  [1:0] io_wreq_bits_data_5_0_alias,
  input  [1:0] io_wreq_bits_data_5_1_state,
  input  [1:0] io_wreq_bits_data_5_1_alias,
  input  [5:0] io_wreq_bits_waymask
);
  wire [7:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_4; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_wdata_5; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_4; // @[SRAMTemplate.scala 113:26]
  wire [7:0] array_RW0_rdata_5; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  wire [3:0] wdata_lo = {io_wreq_bits_data_0_0_state,io_wreq_bits_data_0_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi = {io_wreq_bits_data_0_1_state,io_wreq_bits_data_0_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_lo_1 = {io_wreq_bits_data_1_0_state,io_wreq_bits_data_1_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi_1 = {io_wreq_bits_data_1_1_state,io_wreq_bits_data_1_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_lo_2 = {io_wreq_bits_data_2_0_state,io_wreq_bits_data_2_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi_2 = {io_wreq_bits_data_2_1_state,io_wreq_bits_data_2_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_lo_3 = {io_wreq_bits_data_3_0_state,io_wreq_bits_data_3_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi_3 = {io_wreq_bits_data_3_1_state,io_wreq_bits_data_3_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_lo_4 = {io_wreq_bits_data_4_0_state,io_wreq_bits_data_4_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi_4 = {io_wreq_bits_data_4_1_state,io_wreq_bits_data_4_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_lo_5 = {io_wreq_bits_data_5_0_state,io_wreq_bits_data_5_0_alias}; // @[SRAMTemplate.scala 129:102]
  wire [3:0] wdata_hi_5 = {io_wreq_bits_data_5_1_state,io_wreq_bits_data_5_1_alias}; // @[SRAMTemplate.scala 129:102]
  wire [7:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [7:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [7:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [7:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  wire [7:0] _rdata_WIRE_4 = array_RW0_rdata_4;
  wire [7:0] _rdata_WIRE_5 = array_RW0_rdata_5;
  array_30 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5)
  );
  assign io_rresp_data_0_0_state = _rdata_WIRE[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_0_alias = _rdata_WIRE[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_1_state = _rdata_WIRE[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_1_alias = _rdata_WIRE[5:4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_0_state = _rdata_WIRE_1[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_0_alias = _rdata_WIRE_1[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_1_state = _rdata_WIRE_1[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_1_alias = _rdata_WIRE_1[5:4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_0_state = _rdata_WIRE_2[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_0_alias = _rdata_WIRE_2[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_1_state = _rdata_WIRE_2[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_1_alias = _rdata_WIRE_2[5:4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_0_state = _rdata_WIRE_3[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_0_alias = _rdata_WIRE_3[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_1_state = _rdata_WIRE_3[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_1_alias = _rdata_WIRE_3[5:4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_0_state = _rdata_WIRE_4[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_0_alias = _rdata_WIRE_4[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_1_state = _rdata_WIRE_4[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_1_alias = _rdata_WIRE_4[5:4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_0_state = _rdata_WIRE_5[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_0_alias = _rdata_WIRE_5[1:0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_1_state = _rdata_WIRE_5[7:6]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_1_alias = _rdata_WIRE_5[5:4]; // @[SRAMTemplate.scala 163:22]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_4 = {wdata_hi_4,wdata_lo_4}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_5 = {wdata_hi_5,wdata_lo_5}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_4 = io_wreq_bits_waymask[4]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_5 = io_wreq_bits_waymask[5]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule
