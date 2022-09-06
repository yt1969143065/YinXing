module SyncDataModuleTemplate_1(
  input         clock,
  input  [5:0]  io_raddr_0,
  input  [5:0]  io_raddr_1,
  input  [5:0]  io_raddr_2,
  input  [5:0]  io_raddr_3,
  input  [5:0]  io_raddr_4,
  input  [5:0]  io_raddr_5,
  input  [5:0]  io_raddr_6,
  input  [5:0]  io_raddr_7,
  input  [5:0]  io_raddr_8,
  input  [5:0]  io_raddr_9,
  input  [5:0]  io_raddr_10,
  input  [5:0]  io_raddr_11,
  output [38:0] io_rdata_0_startAddr,
  output [38:0] io_rdata_0_nextLineAddr,
  output        io_rdata_0_isNextMask_0,
  output        io_rdata_0_isNextMask_1,
  output        io_rdata_0_isNextMask_2,
  output        io_rdata_0_isNextMask_3,
  output        io_rdata_0_isNextMask_4,
  output        io_rdata_0_isNextMask_5,
  output        io_rdata_0_isNextMask_6,
  output        io_rdata_0_isNextMask_7,
  output [38:0] io_rdata_1_startAddr,
  output [38:0] io_rdata_1_nextLineAddr,
  output        io_rdata_1_isNextMask_0,
  output        io_rdata_1_isNextMask_1,
  output        io_rdata_1_isNextMask_2,
  output        io_rdata_1_isNextMask_3,
  output        io_rdata_1_isNextMask_4,
  output        io_rdata_1_isNextMask_5,
  output        io_rdata_1_isNextMask_6,
  output        io_rdata_1_isNextMask_7,
  output [38:0] io_rdata_2_startAddr,
  output [38:0] io_rdata_2_nextLineAddr,
  output        io_rdata_2_isNextMask_0,
  output        io_rdata_2_isNextMask_1,
  output        io_rdata_2_isNextMask_2,
  output        io_rdata_2_isNextMask_3,
  output        io_rdata_2_isNextMask_4,
  output        io_rdata_2_isNextMask_5,
  output        io_rdata_2_isNextMask_6,
  output        io_rdata_2_isNextMask_7,
  output [38:0] io_rdata_3_startAddr,
  output [38:0] io_rdata_3_nextLineAddr,
  output        io_rdata_3_isNextMask_0,
  output        io_rdata_3_isNextMask_1,
  output        io_rdata_3_isNextMask_2,
  output        io_rdata_3_isNextMask_3,
  output        io_rdata_3_isNextMask_4,
  output        io_rdata_3_isNextMask_5,
  output        io_rdata_3_isNextMask_6,
  output        io_rdata_3_isNextMask_7,
  output [38:0] io_rdata_4_startAddr,
  output [38:0] io_rdata_4_nextLineAddr,
  output        io_rdata_4_isNextMask_0,
  output        io_rdata_4_isNextMask_1,
  output        io_rdata_4_isNextMask_2,
  output        io_rdata_4_isNextMask_3,
  output        io_rdata_4_isNextMask_4,
  output        io_rdata_4_isNextMask_5,
  output        io_rdata_4_isNextMask_6,
  output        io_rdata_4_isNextMask_7,
  output [38:0] io_rdata_5_startAddr,
  output [38:0] io_rdata_5_nextLineAddr,
  output        io_rdata_5_isNextMask_0,
  output        io_rdata_5_isNextMask_1,
  output        io_rdata_5_isNextMask_2,
  output        io_rdata_5_isNextMask_3,
  output        io_rdata_5_isNextMask_4,
  output        io_rdata_5_isNextMask_5,
  output        io_rdata_5_isNextMask_6,
  output        io_rdata_5_isNextMask_7,
  output [38:0] io_rdata_6_startAddr,
  output [38:0] io_rdata_6_nextLineAddr,
  output        io_rdata_6_isNextMask_0,
  output        io_rdata_6_isNextMask_1,
  output        io_rdata_6_isNextMask_2,
  output        io_rdata_6_isNextMask_3,
  output        io_rdata_6_isNextMask_4,
  output        io_rdata_6_isNextMask_5,
  output        io_rdata_6_isNextMask_6,
  output        io_rdata_6_isNextMask_7,
  output [38:0] io_rdata_7_startAddr,
  output [38:0] io_rdata_7_nextLineAddr,
  output        io_rdata_7_isNextMask_0,
  output        io_rdata_7_isNextMask_1,
  output        io_rdata_7_isNextMask_2,
  output        io_rdata_7_isNextMask_3,
  output        io_rdata_7_isNextMask_4,
  output        io_rdata_7_isNextMask_5,
  output        io_rdata_7_isNextMask_6,
  output        io_rdata_7_isNextMask_7,
  output [38:0] io_rdata_8_startAddr,
  output [38:0] io_rdata_8_nextLineAddr,
  output        io_rdata_8_isNextMask_0,
  output        io_rdata_8_isNextMask_1,
  output        io_rdata_8_isNextMask_2,
  output        io_rdata_8_isNextMask_3,
  output        io_rdata_8_isNextMask_4,
  output        io_rdata_8_isNextMask_5,
  output        io_rdata_8_isNextMask_6,
  output        io_rdata_8_isNextMask_7,
  output [38:0] io_rdata_9_startAddr,
  output [38:0] io_rdata_9_nextLineAddr,
  output        io_rdata_9_fallThruError,
  output [38:0] io_rdata_10_startAddr,
  output [38:0] io_rdata_10_nextLineAddr,
  output        io_rdata_10_fallThruError,
  output [38:0] io_rdata_11_startAddr,
  input         io_wen_0,
  input  [5:0]  io_waddr_0,
  input  [38:0] io_wdata_0_startAddr,
  input  [38:0] io_wdata_0_nextLineAddr,
  input         io_wdata_0_isNextMask_0,
  input         io_wdata_0_isNextMask_1,
  input         io_wdata_0_isNextMask_2,
  input         io_wdata_0_isNextMask_3,
  input         io_wdata_0_isNextMask_4,
  input         io_wdata_0_isNextMask_5,
  input         io_wdata_0_isNextMask_6,
  input         io_wdata_0_isNextMask_7,
  input         io_wdata_0_fallThruError
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] data_startAddr [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_startAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_startAddr_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_startAddr_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [38:0] data_nextLineAddr [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_nextLineAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_nextLineAddr_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_nextLineAddr_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_0 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_1 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_2 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_3 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_4 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_5 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_6 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isNextMask_7 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isNextMask_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isNextMask_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_fallThruError [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_8_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_8_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_9_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_9_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_10_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_10_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_11_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_io_rdata_11_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_fallThruError_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_fallThruError_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_3; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_4; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_5; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_6; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_7; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_8; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_9; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_10; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_11; // @[DataModuleTemplate.scala 67:35]
  assign data_startAddr_io_rdata_0_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_0_MPORT_addr = raddr_0;
  assign data_startAddr_io_rdata_0_MPORT_data = data_startAddr[data_startAddr_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_1_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_1_MPORT_addr = raddr_1;
  assign data_startAddr_io_rdata_1_MPORT_data = data_startAddr[data_startAddr_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_2_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_2_MPORT_addr = raddr_2;
  assign data_startAddr_io_rdata_2_MPORT_data = data_startAddr[data_startAddr_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_3_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_3_MPORT_addr = raddr_3;
  assign data_startAddr_io_rdata_3_MPORT_data = data_startAddr[data_startAddr_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_4_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_4_MPORT_addr = raddr_4;
  assign data_startAddr_io_rdata_4_MPORT_data = data_startAddr[data_startAddr_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_5_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_5_MPORT_addr = raddr_5;
  assign data_startAddr_io_rdata_5_MPORT_data = data_startAddr[data_startAddr_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_6_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_6_MPORT_addr = raddr_6;
  assign data_startAddr_io_rdata_6_MPORT_data = data_startAddr[data_startAddr_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_7_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_7_MPORT_addr = raddr_7;
  assign data_startAddr_io_rdata_7_MPORT_data = data_startAddr[data_startAddr_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_8_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_8_MPORT_addr = raddr_8;
  assign data_startAddr_io_rdata_8_MPORT_data = data_startAddr[data_startAddr_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_9_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_9_MPORT_addr = raddr_9;
  assign data_startAddr_io_rdata_9_MPORT_data = data_startAddr[data_startAddr_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_10_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_10_MPORT_addr = raddr_10;
  assign data_startAddr_io_rdata_10_MPORT_data = data_startAddr[data_startAddr_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_io_rdata_11_MPORT_en = 1'h1;
  assign data_startAddr_io_rdata_11_MPORT_addr = raddr_11;
  assign data_startAddr_io_rdata_11_MPORT_data = data_startAddr[data_startAddr_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_startAddr_MPORT_data = io_wdata_0_startAddr;
  assign data_startAddr_MPORT_addr = io_waddr_0;
  assign data_startAddr_MPORT_mask = 1'h1;
  assign data_startAddr_MPORT_en = io_wen_0;
  assign data_nextLineAddr_io_rdata_0_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_0_MPORT_addr = raddr_0;
  assign data_nextLineAddr_io_rdata_0_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_1_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_1_MPORT_addr = raddr_1;
  assign data_nextLineAddr_io_rdata_1_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_2_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_2_MPORT_addr = raddr_2;
  assign data_nextLineAddr_io_rdata_2_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_3_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_3_MPORT_addr = raddr_3;
  assign data_nextLineAddr_io_rdata_3_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_4_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_4_MPORT_addr = raddr_4;
  assign data_nextLineAddr_io_rdata_4_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_5_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_5_MPORT_addr = raddr_5;
  assign data_nextLineAddr_io_rdata_5_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_6_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_6_MPORT_addr = raddr_6;
  assign data_nextLineAddr_io_rdata_6_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_7_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_7_MPORT_addr = raddr_7;
  assign data_nextLineAddr_io_rdata_7_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_8_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_8_MPORT_addr = raddr_8;
  assign data_nextLineAddr_io_rdata_8_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_9_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_9_MPORT_addr = raddr_9;
  assign data_nextLineAddr_io_rdata_9_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_10_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_10_MPORT_addr = raddr_10;
  assign data_nextLineAddr_io_rdata_10_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_io_rdata_11_MPORT_en = 1'h1;
  assign data_nextLineAddr_io_rdata_11_MPORT_addr = raddr_11;
  assign data_nextLineAddr_io_rdata_11_MPORT_data = data_nextLineAddr[data_nextLineAddr_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_nextLineAddr_MPORT_data = io_wdata_0_nextLineAddr;
  assign data_nextLineAddr_MPORT_addr = io_waddr_0;
  assign data_nextLineAddr_MPORT_mask = 1'h1;
  assign data_nextLineAddr_MPORT_en = io_wen_0;
  assign data_isNextMask_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_0_io_rdata_0_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_0_io_rdata_1_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_0_io_rdata_2_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_0_io_rdata_3_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_0_io_rdata_4_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_0_io_rdata_5_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_0_io_rdata_6_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_0_io_rdata_7_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_0_io_rdata_8_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_0_io_rdata_9_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_0_io_rdata_10_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_0_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_0_io_rdata_11_MPORT_data = data_isNextMask_0[data_isNextMask_0_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_0_MPORT_data = io_wdata_0_isNextMask_0;
  assign data_isNextMask_0_MPORT_addr = io_waddr_0;
  assign data_isNextMask_0_MPORT_mask = 1'h1;
  assign data_isNextMask_0_MPORT_en = io_wen_0;
  assign data_isNextMask_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_1_io_rdata_0_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_1_io_rdata_1_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_1_io_rdata_2_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_1_io_rdata_3_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_1_io_rdata_4_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_1_io_rdata_5_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_1_io_rdata_6_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_1_io_rdata_7_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_1_io_rdata_8_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_1_io_rdata_9_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_1_io_rdata_10_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_1_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_1_io_rdata_11_MPORT_data = data_isNextMask_1[data_isNextMask_1_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_1_MPORT_data = io_wdata_0_isNextMask_1;
  assign data_isNextMask_1_MPORT_addr = io_waddr_0;
  assign data_isNextMask_1_MPORT_mask = 1'h1;
  assign data_isNextMask_1_MPORT_en = io_wen_0;
  assign data_isNextMask_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_2_io_rdata_0_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_2_io_rdata_1_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_2_io_rdata_2_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_2_io_rdata_3_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_2_io_rdata_4_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_2_io_rdata_5_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_2_io_rdata_6_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_2_io_rdata_7_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_2_io_rdata_8_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_2_io_rdata_9_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_2_io_rdata_10_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_2_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_2_io_rdata_11_MPORT_data = data_isNextMask_2[data_isNextMask_2_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_2_MPORT_data = io_wdata_0_isNextMask_2;
  assign data_isNextMask_2_MPORT_addr = io_waddr_0;
  assign data_isNextMask_2_MPORT_mask = 1'h1;
  assign data_isNextMask_2_MPORT_en = io_wen_0;
  assign data_isNextMask_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_3_io_rdata_0_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_3_io_rdata_1_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_3_io_rdata_2_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_3_io_rdata_3_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_3_io_rdata_4_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_3_io_rdata_5_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_3_io_rdata_6_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_3_io_rdata_7_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_3_io_rdata_8_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_3_io_rdata_9_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_3_io_rdata_10_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_3_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_3_io_rdata_11_MPORT_data = data_isNextMask_3[data_isNextMask_3_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_3_MPORT_data = io_wdata_0_isNextMask_3;
  assign data_isNextMask_3_MPORT_addr = io_waddr_0;
  assign data_isNextMask_3_MPORT_mask = 1'h1;
  assign data_isNextMask_3_MPORT_en = io_wen_0;
  assign data_isNextMask_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_4_io_rdata_0_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_4_io_rdata_1_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_4_io_rdata_2_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_4_io_rdata_3_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_4_io_rdata_4_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_4_io_rdata_5_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_4_io_rdata_6_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_4_io_rdata_7_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_4_io_rdata_8_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_4_io_rdata_9_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_4_io_rdata_10_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_4_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_4_io_rdata_11_MPORT_data = data_isNextMask_4[data_isNextMask_4_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_4_MPORT_data = io_wdata_0_isNextMask_4;
  assign data_isNextMask_4_MPORT_addr = io_waddr_0;
  assign data_isNextMask_4_MPORT_mask = 1'h1;
  assign data_isNextMask_4_MPORT_en = io_wen_0;
  assign data_isNextMask_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_5_io_rdata_0_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_5_io_rdata_1_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_5_io_rdata_2_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_5_io_rdata_3_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_5_io_rdata_4_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_5_io_rdata_5_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_5_io_rdata_6_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_5_io_rdata_7_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_5_io_rdata_8_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_5_io_rdata_9_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_5_io_rdata_10_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_5_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_5_io_rdata_11_MPORT_data = data_isNextMask_5[data_isNextMask_5_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_5_MPORT_data = io_wdata_0_isNextMask_5;
  assign data_isNextMask_5_MPORT_addr = io_waddr_0;
  assign data_isNextMask_5_MPORT_mask = 1'h1;
  assign data_isNextMask_5_MPORT_en = io_wen_0;
  assign data_isNextMask_6_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_6_io_rdata_0_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_6_io_rdata_1_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_6_io_rdata_2_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_6_io_rdata_3_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_6_io_rdata_4_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_6_io_rdata_5_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_6_io_rdata_6_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_6_io_rdata_7_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_6_io_rdata_8_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_6_io_rdata_9_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_6_io_rdata_10_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_6_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_6_io_rdata_11_MPORT_data = data_isNextMask_6[data_isNextMask_6_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_6_MPORT_data = io_wdata_0_isNextMask_6;
  assign data_isNextMask_6_MPORT_addr = io_waddr_0;
  assign data_isNextMask_6_MPORT_mask = 1'h1;
  assign data_isNextMask_6_MPORT_en = io_wen_0;
  assign data_isNextMask_7_io_rdata_0_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isNextMask_7_io_rdata_0_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_1_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isNextMask_7_io_rdata_1_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_2_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isNextMask_7_io_rdata_2_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_3_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_3_MPORT_addr = raddr_3;
  assign data_isNextMask_7_io_rdata_3_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_4_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_4_MPORT_addr = raddr_4;
  assign data_isNextMask_7_io_rdata_4_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_5_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_5_MPORT_addr = raddr_5;
  assign data_isNextMask_7_io_rdata_5_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_6_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_6_MPORT_addr = raddr_6;
  assign data_isNextMask_7_io_rdata_6_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_7_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_7_MPORT_addr = raddr_7;
  assign data_isNextMask_7_io_rdata_7_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_8_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_8_MPORT_addr = raddr_8;
  assign data_isNextMask_7_io_rdata_8_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_9_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_9_MPORT_addr = raddr_9;
  assign data_isNextMask_7_io_rdata_9_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_10_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_10_MPORT_addr = raddr_10;
  assign data_isNextMask_7_io_rdata_10_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_io_rdata_11_MPORT_en = 1'h1;
  assign data_isNextMask_7_io_rdata_11_MPORT_addr = raddr_11;
  assign data_isNextMask_7_io_rdata_11_MPORT_data = data_isNextMask_7[data_isNextMask_7_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isNextMask_7_MPORT_data = io_wdata_0_isNextMask_7;
  assign data_isNextMask_7_MPORT_addr = io_waddr_0;
  assign data_isNextMask_7_MPORT_mask = 1'h1;
  assign data_isNextMask_7_MPORT_en = io_wen_0;
  assign data_fallThruError_io_rdata_0_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_0_MPORT_addr = raddr_0;
  assign data_fallThruError_io_rdata_0_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_1_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_1_MPORT_addr = raddr_1;
  assign data_fallThruError_io_rdata_1_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_2_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_2_MPORT_addr = raddr_2;
  assign data_fallThruError_io_rdata_2_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_3_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_3_MPORT_addr = raddr_3;
  assign data_fallThruError_io_rdata_3_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_4_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_4_MPORT_addr = raddr_4;
  assign data_fallThruError_io_rdata_4_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_4_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_5_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_5_MPORT_addr = raddr_5;
  assign data_fallThruError_io_rdata_5_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_5_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_6_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_6_MPORT_addr = raddr_6;
  assign data_fallThruError_io_rdata_6_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_6_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_7_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_7_MPORT_addr = raddr_7;
  assign data_fallThruError_io_rdata_7_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_7_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_8_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_8_MPORT_addr = raddr_8;
  assign data_fallThruError_io_rdata_8_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_8_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_9_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_9_MPORT_addr = raddr_9;
  assign data_fallThruError_io_rdata_9_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_9_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_10_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_10_MPORT_addr = raddr_10;
  assign data_fallThruError_io_rdata_10_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_10_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_io_rdata_11_MPORT_en = 1'h1;
  assign data_fallThruError_io_rdata_11_MPORT_addr = raddr_11;
  assign data_fallThruError_io_rdata_11_MPORT_data = data_fallThruError[data_fallThruError_io_rdata_11_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fallThruError_MPORT_data = io_wdata_0_fallThruError;
  assign data_fallThruError_MPORT_addr = io_waddr_0;
  assign data_fallThruError_MPORT_mask = 1'h1;
  assign data_fallThruError_MPORT_en = io_wen_0;
  assign io_rdata_0_startAddr = data_startAddr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_nextLineAddr = data_nextLineAddr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_0 = data_isNextMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_1 = data_isNextMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_2 = data_isNextMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_3 = data_isNextMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_4 = data_isNextMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_5 = data_isNextMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_6 = data_isNextMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isNextMask_7 = data_isNextMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_startAddr = data_startAddr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_nextLineAddr = data_nextLineAddr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_0 = data_isNextMask_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_1 = data_isNextMask_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_2 = data_isNextMask_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_3 = data_isNextMask_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_4 = data_isNextMask_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_5 = data_isNextMask_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_6 = data_isNextMask_6_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_isNextMask_7 = data_isNextMask_7_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_startAddr = data_startAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_nextLineAddr = data_nextLineAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_0 = data_isNextMask_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_1 = data_isNextMask_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_2 = data_isNextMask_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_3 = data_isNextMask_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_4 = data_isNextMask_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_5 = data_isNextMask_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_6 = data_isNextMask_6_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isNextMask_7 = data_isNextMask_7_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_startAddr = data_startAddr_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_nextLineAddr = data_nextLineAddr_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_0 = data_isNextMask_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_1 = data_isNextMask_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_2 = data_isNextMask_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_3 = data_isNextMask_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_4 = data_isNextMask_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_5 = data_isNextMask_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_6 = data_isNextMask_6_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_isNextMask_7 = data_isNextMask_7_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_startAddr = data_startAddr_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_nextLineAddr = data_nextLineAddr_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_0 = data_isNextMask_0_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_1 = data_isNextMask_1_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_2 = data_isNextMask_2_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_3 = data_isNextMask_3_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_4 = data_isNextMask_4_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_5 = data_isNextMask_5_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_6 = data_isNextMask_6_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_4_isNextMask_7 = data_isNextMask_7_io_rdata_4_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_startAddr = data_startAddr_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_nextLineAddr = data_nextLineAddr_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_0 = data_isNextMask_0_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_1 = data_isNextMask_1_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_2 = data_isNextMask_2_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_3 = data_isNextMask_3_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_4 = data_isNextMask_4_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_5 = data_isNextMask_5_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_6 = data_isNextMask_6_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_5_isNextMask_7 = data_isNextMask_7_io_rdata_5_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_startAddr = data_startAddr_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_nextLineAddr = data_nextLineAddr_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_0 = data_isNextMask_0_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_1 = data_isNextMask_1_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_2 = data_isNextMask_2_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_3 = data_isNextMask_3_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_4 = data_isNextMask_4_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_5 = data_isNextMask_5_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_6 = data_isNextMask_6_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_6_isNextMask_7 = data_isNextMask_7_io_rdata_6_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_startAddr = data_startAddr_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_nextLineAddr = data_nextLineAddr_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_0 = data_isNextMask_0_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_1 = data_isNextMask_1_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_2 = data_isNextMask_2_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_3 = data_isNextMask_3_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_4 = data_isNextMask_4_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_5 = data_isNextMask_5_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_6 = data_isNextMask_6_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_7_isNextMask_7 = data_isNextMask_7_io_rdata_7_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_startAddr = data_startAddr_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_nextLineAddr = data_nextLineAddr_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_0 = data_isNextMask_0_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_1 = data_isNextMask_1_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_2 = data_isNextMask_2_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_3 = data_isNextMask_3_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_4 = data_isNextMask_4_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_5 = data_isNextMask_5_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_6 = data_isNextMask_6_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_8_isNextMask_7 = data_isNextMask_7_io_rdata_8_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_9_startAddr = data_startAddr_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_9_nextLineAddr = data_nextLineAddr_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_9_fallThruError = data_fallThruError_io_rdata_9_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_10_startAddr = data_startAddr_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_10_nextLineAddr = data_nextLineAddr_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_10_fallThruError = data_fallThruError_io_rdata_10_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_11_startAddr = data_startAddr_io_rdata_11_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_startAddr_MPORT_en & data_startAddr_MPORT_mask) begin
      data_startAddr[data_startAddr_MPORT_addr] <= data_startAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_nextLineAddr_MPORT_en & data_nextLineAddr_MPORT_mask) begin
      data_nextLineAddr[data_nextLineAddr_MPORT_addr] <= data_nextLineAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_0_MPORT_en & data_isNextMask_0_MPORT_mask) begin
      data_isNextMask_0[data_isNextMask_0_MPORT_addr] <= data_isNextMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_1_MPORT_en & data_isNextMask_1_MPORT_mask) begin
      data_isNextMask_1[data_isNextMask_1_MPORT_addr] <= data_isNextMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_2_MPORT_en & data_isNextMask_2_MPORT_mask) begin
      data_isNextMask_2[data_isNextMask_2_MPORT_addr] <= data_isNextMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_3_MPORT_en & data_isNextMask_3_MPORT_mask) begin
      data_isNextMask_3[data_isNextMask_3_MPORT_addr] <= data_isNextMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_4_MPORT_en & data_isNextMask_4_MPORT_mask) begin
      data_isNextMask_4[data_isNextMask_4_MPORT_addr] <= data_isNextMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_5_MPORT_en & data_isNextMask_5_MPORT_mask) begin
      data_isNextMask_5[data_isNextMask_5_MPORT_addr] <= data_isNextMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_6_MPORT_en & data_isNextMask_6_MPORT_mask) begin
      data_isNextMask_6[data_isNextMask_6_MPORT_addr] <= data_isNextMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isNextMask_7_MPORT_en & data_isNextMask_7_MPORT_mask) begin
      data_isNextMask_7[data_isNextMask_7_MPORT_addr] <= data_isNextMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_fallThruError_MPORT_en & data_fallThruError_MPORT_mask) begin
      data_fallThruError[data_fallThruError_MPORT_addr] <= data_fallThruError_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
    raddr_1 <= io_raddr_1; // @[DataModuleTemplate.scala 67:35]
    raddr_2 <= io_raddr_2; // @[DataModuleTemplate.scala 67:35]
    raddr_3 <= io_raddr_3; // @[DataModuleTemplate.scala 67:35]
    raddr_4 <= io_raddr_4; // @[DataModuleTemplate.scala 67:35]
    raddr_5 <= io_raddr_5; // @[DataModuleTemplate.scala 67:35]
    raddr_6 <= io_raddr_6; // @[DataModuleTemplate.scala 67:35]
    raddr_7 <= io_raddr_7; // @[DataModuleTemplate.scala 67:35]
    raddr_8 <= io_raddr_8; // @[DataModuleTemplate.scala 67:35]
    raddr_9 <= io_raddr_9; // @[DataModuleTemplate.scala 67:35]
    raddr_10 <= io_raddr_10; // @[DataModuleTemplate.scala 67:35]
    raddr_11 <= io_raddr_11; // @[DataModuleTemplate.scala 67:35]
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
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_startAddr[initvar] = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_nextLineAddr[initvar] = _RAND_1[38:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_0[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_1[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_2[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_3[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_4[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_5[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_6[initvar] = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isNextMask_7[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_fallThruError[initvar] = _RAND_10[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  raddr_0 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  raddr_1 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  raddr_2 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  raddr_3 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  raddr_4 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  raddr_5 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  raddr_6 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  raddr_7 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  raddr_8 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  raddr_9 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  raddr_10 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  raddr_11 = _RAND_22[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
