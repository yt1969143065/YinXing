module SyncDataModuleTemplate_3(
  input         clock,
  input  [5:0]  io_raddr_0,
  output        io_rdata_0_brMask_0,
  output        io_rdata_0_brMask_1,
  output        io_rdata_0_brMask_2,
  output        io_rdata_0_brMask_3,
  output        io_rdata_0_brMask_4,
  output        io_rdata_0_brMask_5,
  output        io_rdata_0_brMask_6,
  output        io_rdata_0_brMask_7,
  output        io_rdata_0_jmpInfo_valid,
  output        io_rdata_0_jmpInfo_bits_0,
  output        io_rdata_0_jmpInfo_bits_1,
  output        io_rdata_0_jmpInfo_bits_2,
  output [2:0]  io_rdata_0_jmpOffset,
  output [38:0] io_rdata_0_jalTarget,
  output        io_rdata_0_rvcMask_0,
  output        io_rdata_0_rvcMask_1,
  output        io_rdata_0_rvcMask_2,
  output        io_rdata_0_rvcMask_3,
  output        io_rdata_0_rvcMask_4,
  output        io_rdata_0_rvcMask_5,
  output        io_rdata_0_rvcMask_6,
  output        io_rdata_0_rvcMask_7,
  input         io_wen_0,
  input  [5:0]  io_waddr_0,
  input         io_wdata_0_brMask_0,
  input         io_wdata_0_brMask_1,
  input         io_wdata_0_brMask_2,
  input         io_wdata_0_brMask_3,
  input         io_wdata_0_brMask_4,
  input         io_wdata_0_brMask_5,
  input         io_wdata_0_brMask_6,
  input         io_wdata_0_brMask_7,
  input         io_wdata_0_jmpInfo_valid,
  input         io_wdata_0_jmpInfo_bits_0,
  input         io_wdata_0_jmpInfo_bits_1,
  input         io_wdata_0_jmpInfo_bits_2,
  input  [2:0]  io_wdata_0_jmpOffset,
  input  [38:0] io_wdata_0_jalTarget,
  input         io_wdata_0_rvcMask_0,
  input         io_wdata_0_rvcMask_1,
  input         io_wdata_0_rvcMask_2,
  input         io_wdata_0_rvcMask_3,
  input         io_wdata_0_rvcMask_4,
  input         io_wdata_0_rvcMask_5,
  input         io_wdata_0_rvcMask_6,
  input         io_wdata_0_rvcMask_7
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  reg  data_brMask_0 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_1 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_2 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_3 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_4 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_4_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_5 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_5_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_6 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_6_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_6_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_6_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brMask_7 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_7_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_7_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brMask_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_7_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brMask_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_jmpInfo_valid [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_valid_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_valid_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_valid_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_valid_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_valid_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_jmpInfo_bits_0 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_jmpInfo_bits_1 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_jmpInfo_bits_2 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpInfo_bits_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpInfo_bits_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_jmpOffset [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpOffset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpOffset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_jmpOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_jmpOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jmpOffset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpOffset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jmpOffset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [38:0] data_jalTarget [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_jalTarget_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jalTarget_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_jalTarget_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_jalTarget_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_jalTarget_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_jalTarget_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_jalTarget_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_0 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_1 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_2 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_3 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_4 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_4_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_5 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_5_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_6 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_6_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_6_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_6_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_6_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_6_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rvcMask_7 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_7_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_7_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_rvcMask_7_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_7_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rvcMask_7_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  assign data_brMask_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_0_io_rdata_0_MPORT_data = data_brMask_0[data_brMask_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_0_MPORT_data = io_wdata_0_brMask_0;
  assign data_brMask_0_MPORT_addr = io_waddr_0;
  assign data_brMask_0_MPORT_mask = 1'h1;
  assign data_brMask_0_MPORT_en = io_wen_0;
  assign data_brMask_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_1_io_rdata_0_MPORT_data = data_brMask_1[data_brMask_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_1_MPORT_data = io_wdata_0_brMask_1;
  assign data_brMask_1_MPORT_addr = io_waddr_0;
  assign data_brMask_1_MPORT_mask = 1'h1;
  assign data_brMask_1_MPORT_en = io_wen_0;
  assign data_brMask_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_2_io_rdata_0_MPORT_data = data_brMask_2[data_brMask_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_2_MPORT_data = io_wdata_0_brMask_2;
  assign data_brMask_2_MPORT_addr = io_waddr_0;
  assign data_brMask_2_MPORT_mask = 1'h1;
  assign data_brMask_2_MPORT_en = io_wen_0;
  assign data_brMask_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_3_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_3_io_rdata_0_MPORT_data = data_brMask_3[data_brMask_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_3_MPORT_data = io_wdata_0_brMask_3;
  assign data_brMask_3_MPORT_addr = io_waddr_0;
  assign data_brMask_3_MPORT_mask = 1'h1;
  assign data_brMask_3_MPORT_en = io_wen_0;
  assign data_brMask_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_4_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_4_io_rdata_0_MPORT_data = data_brMask_4[data_brMask_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_4_MPORT_data = io_wdata_0_brMask_4;
  assign data_brMask_4_MPORT_addr = io_waddr_0;
  assign data_brMask_4_MPORT_mask = 1'h1;
  assign data_brMask_4_MPORT_en = io_wen_0;
  assign data_brMask_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_5_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_5_io_rdata_0_MPORT_data = data_brMask_5[data_brMask_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_5_MPORT_data = io_wdata_0_brMask_5;
  assign data_brMask_5_MPORT_addr = io_waddr_0;
  assign data_brMask_5_MPORT_mask = 1'h1;
  assign data_brMask_5_MPORT_en = io_wen_0;
  assign data_brMask_6_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_6_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_6_io_rdata_0_MPORT_data = data_brMask_6[data_brMask_6_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_6_MPORT_data = io_wdata_0_brMask_6;
  assign data_brMask_6_MPORT_addr = io_waddr_0;
  assign data_brMask_6_MPORT_mask = 1'h1;
  assign data_brMask_6_MPORT_en = io_wen_0;
  assign data_brMask_7_io_rdata_0_MPORT_en = 1'h1;
  assign data_brMask_7_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brMask_7_io_rdata_0_MPORT_data = data_brMask_7[data_brMask_7_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brMask_7_MPORT_data = io_wdata_0_brMask_7;
  assign data_brMask_7_MPORT_addr = io_waddr_0;
  assign data_brMask_7_MPORT_mask = 1'h1;
  assign data_brMask_7_MPORT_en = io_wen_0;
  assign data_jmpInfo_valid_io_rdata_0_MPORT_en = 1'h1;
  assign data_jmpInfo_valid_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jmpInfo_valid_io_rdata_0_MPORT_data = data_jmpInfo_valid[data_jmpInfo_valid_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jmpInfo_valid_MPORT_data = io_wdata_0_jmpInfo_valid;
  assign data_jmpInfo_valid_MPORT_addr = io_waddr_0;
  assign data_jmpInfo_valid_MPORT_mask = 1'h1;
  assign data_jmpInfo_valid_MPORT_en = io_wen_0;
  assign data_jmpInfo_bits_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_jmpInfo_bits_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jmpInfo_bits_0_io_rdata_0_MPORT_data = data_jmpInfo_bits_0[data_jmpInfo_bits_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jmpInfo_bits_0_MPORT_data = io_wdata_0_jmpInfo_bits_0;
  assign data_jmpInfo_bits_0_MPORT_addr = io_waddr_0;
  assign data_jmpInfo_bits_0_MPORT_mask = 1'h1;
  assign data_jmpInfo_bits_0_MPORT_en = io_wen_0;
  assign data_jmpInfo_bits_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_jmpInfo_bits_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jmpInfo_bits_1_io_rdata_0_MPORT_data = data_jmpInfo_bits_1[data_jmpInfo_bits_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jmpInfo_bits_1_MPORT_data = io_wdata_0_jmpInfo_bits_1;
  assign data_jmpInfo_bits_1_MPORT_addr = io_waddr_0;
  assign data_jmpInfo_bits_1_MPORT_mask = 1'h1;
  assign data_jmpInfo_bits_1_MPORT_en = io_wen_0;
  assign data_jmpInfo_bits_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_jmpInfo_bits_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jmpInfo_bits_2_io_rdata_0_MPORT_data = data_jmpInfo_bits_2[data_jmpInfo_bits_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jmpInfo_bits_2_MPORT_data = io_wdata_0_jmpInfo_bits_2;
  assign data_jmpInfo_bits_2_MPORT_addr = io_waddr_0;
  assign data_jmpInfo_bits_2_MPORT_mask = 1'h1;
  assign data_jmpInfo_bits_2_MPORT_en = io_wen_0;
  assign data_jmpOffset_io_rdata_0_MPORT_en = 1'h1;
  assign data_jmpOffset_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jmpOffset_io_rdata_0_MPORT_data = data_jmpOffset[data_jmpOffset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jmpOffset_MPORT_data = io_wdata_0_jmpOffset;
  assign data_jmpOffset_MPORT_addr = io_waddr_0;
  assign data_jmpOffset_MPORT_mask = 1'h1;
  assign data_jmpOffset_MPORT_en = io_wen_0;
  assign data_jalTarget_io_rdata_0_MPORT_en = 1'h1;
  assign data_jalTarget_io_rdata_0_MPORT_addr = raddr_0;
  assign data_jalTarget_io_rdata_0_MPORT_data = data_jalTarget[data_jalTarget_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_jalTarget_MPORT_data = io_wdata_0_jalTarget;
  assign data_jalTarget_MPORT_addr = io_waddr_0;
  assign data_jalTarget_MPORT_mask = 1'h1;
  assign data_jalTarget_MPORT_en = io_wen_0;
  assign data_rvcMask_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_0_io_rdata_0_MPORT_data = data_rvcMask_0[data_rvcMask_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_0_MPORT_data = io_wdata_0_rvcMask_0;
  assign data_rvcMask_0_MPORT_addr = io_waddr_0;
  assign data_rvcMask_0_MPORT_mask = 1'h1;
  assign data_rvcMask_0_MPORT_en = io_wen_0;
  assign data_rvcMask_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_1_io_rdata_0_MPORT_data = data_rvcMask_1[data_rvcMask_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_1_MPORT_data = io_wdata_0_rvcMask_1;
  assign data_rvcMask_1_MPORT_addr = io_waddr_0;
  assign data_rvcMask_1_MPORT_mask = 1'h1;
  assign data_rvcMask_1_MPORT_en = io_wen_0;
  assign data_rvcMask_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_2_io_rdata_0_MPORT_data = data_rvcMask_2[data_rvcMask_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_2_MPORT_data = io_wdata_0_rvcMask_2;
  assign data_rvcMask_2_MPORT_addr = io_waddr_0;
  assign data_rvcMask_2_MPORT_mask = 1'h1;
  assign data_rvcMask_2_MPORT_en = io_wen_0;
  assign data_rvcMask_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_3_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_3_io_rdata_0_MPORT_data = data_rvcMask_3[data_rvcMask_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_3_MPORT_data = io_wdata_0_rvcMask_3;
  assign data_rvcMask_3_MPORT_addr = io_waddr_0;
  assign data_rvcMask_3_MPORT_mask = 1'h1;
  assign data_rvcMask_3_MPORT_en = io_wen_0;
  assign data_rvcMask_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_4_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_4_io_rdata_0_MPORT_data = data_rvcMask_4[data_rvcMask_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_4_MPORT_data = io_wdata_0_rvcMask_4;
  assign data_rvcMask_4_MPORT_addr = io_waddr_0;
  assign data_rvcMask_4_MPORT_mask = 1'h1;
  assign data_rvcMask_4_MPORT_en = io_wen_0;
  assign data_rvcMask_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_5_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_5_io_rdata_0_MPORT_data = data_rvcMask_5[data_rvcMask_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_5_MPORT_data = io_wdata_0_rvcMask_5;
  assign data_rvcMask_5_MPORT_addr = io_waddr_0;
  assign data_rvcMask_5_MPORT_mask = 1'h1;
  assign data_rvcMask_5_MPORT_en = io_wen_0;
  assign data_rvcMask_6_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_6_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_6_io_rdata_0_MPORT_data = data_rvcMask_6[data_rvcMask_6_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_6_MPORT_data = io_wdata_0_rvcMask_6;
  assign data_rvcMask_6_MPORT_addr = io_waddr_0;
  assign data_rvcMask_6_MPORT_mask = 1'h1;
  assign data_rvcMask_6_MPORT_en = io_wen_0;
  assign data_rvcMask_7_io_rdata_0_MPORT_en = 1'h1;
  assign data_rvcMask_7_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rvcMask_7_io_rdata_0_MPORT_data = data_rvcMask_7[data_rvcMask_7_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rvcMask_7_MPORT_data = io_wdata_0_rvcMask_7;
  assign data_rvcMask_7_MPORT_addr = io_waddr_0;
  assign data_rvcMask_7_MPORT_mask = 1'h1;
  assign data_rvcMask_7_MPORT_en = io_wen_0;
  assign io_rdata_0_brMask_0 = data_brMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_1 = data_brMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_2 = data_brMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_3 = data_brMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_4 = data_brMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_5 = data_brMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_6 = data_brMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brMask_7 = data_brMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jmpInfo_valid = data_jmpInfo_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jmpInfo_bits_0 = data_jmpInfo_bits_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jmpInfo_bits_1 = data_jmpInfo_bits_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jmpInfo_bits_2 = data_jmpInfo_bits_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jmpOffset = data_jmpOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_jalTarget = data_jalTarget_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_0 = data_rvcMask_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_1 = data_rvcMask_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_2 = data_rvcMask_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_3 = data_rvcMask_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_4 = data_rvcMask_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_5 = data_rvcMask_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_6 = data_rvcMask_6_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rvcMask_7 = data_rvcMask_7_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_brMask_0_MPORT_en & data_brMask_0_MPORT_mask) begin
      data_brMask_0[data_brMask_0_MPORT_addr] <= data_brMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_1_MPORT_en & data_brMask_1_MPORT_mask) begin
      data_brMask_1[data_brMask_1_MPORT_addr] <= data_brMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_2_MPORT_en & data_brMask_2_MPORT_mask) begin
      data_brMask_2[data_brMask_2_MPORT_addr] <= data_brMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_3_MPORT_en & data_brMask_3_MPORT_mask) begin
      data_brMask_3[data_brMask_3_MPORT_addr] <= data_brMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_4_MPORT_en & data_brMask_4_MPORT_mask) begin
      data_brMask_4[data_brMask_4_MPORT_addr] <= data_brMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_5_MPORT_en & data_brMask_5_MPORT_mask) begin
      data_brMask_5[data_brMask_5_MPORT_addr] <= data_brMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_6_MPORT_en & data_brMask_6_MPORT_mask) begin
      data_brMask_6[data_brMask_6_MPORT_addr] <= data_brMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brMask_7_MPORT_en & data_brMask_7_MPORT_mask) begin
      data_brMask_7[data_brMask_7_MPORT_addr] <= data_brMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jmpInfo_valid_MPORT_en & data_jmpInfo_valid_MPORT_mask) begin
      data_jmpInfo_valid[data_jmpInfo_valid_MPORT_addr] <= data_jmpInfo_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jmpInfo_bits_0_MPORT_en & data_jmpInfo_bits_0_MPORT_mask) begin
      data_jmpInfo_bits_0[data_jmpInfo_bits_0_MPORT_addr] <= data_jmpInfo_bits_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jmpInfo_bits_1_MPORT_en & data_jmpInfo_bits_1_MPORT_mask) begin
      data_jmpInfo_bits_1[data_jmpInfo_bits_1_MPORT_addr] <= data_jmpInfo_bits_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jmpInfo_bits_2_MPORT_en & data_jmpInfo_bits_2_MPORT_mask) begin
      data_jmpInfo_bits_2[data_jmpInfo_bits_2_MPORT_addr] <= data_jmpInfo_bits_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jmpOffset_MPORT_en & data_jmpOffset_MPORT_mask) begin
      data_jmpOffset[data_jmpOffset_MPORT_addr] <= data_jmpOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_jalTarget_MPORT_en & data_jalTarget_MPORT_mask) begin
      data_jalTarget[data_jalTarget_MPORT_addr] <= data_jalTarget_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_0_MPORT_en & data_rvcMask_0_MPORT_mask) begin
      data_rvcMask_0[data_rvcMask_0_MPORT_addr] <= data_rvcMask_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_1_MPORT_en & data_rvcMask_1_MPORT_mask) begin
      data_rvcMask_1[data_rvcMask_1_MPORT_addr] <= data_rvcMask_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_2_MPORT_en & data_rvcMask_2_MPORT_mask) begin
      data_rvcMask_2[data_rvcMask_2_MPORT_addr] <= data_rvcMask_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_3_MPORT_en & data_rvcMask_3_MPORT_mask) begin
      data_rvcMask_3[data_rvcMask_3_MPORT_addr] <= data_rvcMask_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_4_MPORT_en & data_rvcMask_4_MPORT_mask) begin
      data_rvcMask_4[data_rvcMask_4_MPORT_addr] <= data_rvcMask_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_5_MPORT_en & data_rvcMask_5_MPORT_mask) begin
      data_rvcMask_5[data_rvcMask_5_MPORT_addr] <= data_rvcMask_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_6_MPORT_en & data_rvcMask_6_MPORT_mask) begin
      data_rvcMask_6[data_rvcMask_6_MPORT_addr] <= data_rvcMask_6_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rvcMask_7_MPORT_en & data_rvcMask_7_MPORT_mask) begin
      data_rvcMask_7[data_rvcMask_7_MPORT_addr] <= data_rvcMask_7_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
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
    data_brMask_0[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_1[initvar] = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_2[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_3[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_4[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_5[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_6[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brMask_7[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jmpInfo_valid[initvar] = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jmpInfo_bits_0[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jmpInfo_bits_1[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jmpInfo_bits_2[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jmpOffset[initvar] = _RAND_12[2:0];
  _RAND_13 = {2{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_jalTarget[initvar] = _RAND_13[38:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_0[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_1[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_2[initvar] = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_3[initvar] = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_4[initvar] = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_5[initvar] = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_6[initvar] = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_rvcMask_7[initvar] = _RAND_21[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  raddr_0 = _RAND_22[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
