module SQDataModule(
  input         clock,
  input  [4:0]  io_raddr_0,
  input  [4:0]  io_raddr_1,
  output [7:0]  io_rdata_0_mask,
  output [63:0] io_rdata_0_data,
  output [7:0]  io_rdata_1_mask,
  output [63:0] io_rdata_1_data,
  input         io_data_wen_0,
  input         io_data_wen_1,
  input  [4:0]  io_data_waddr_0,
  input  [4:0]  io_data_waddr_1,
  input  [63:0] io_data_wdata_0,
  input  [63:0] io_data_wdata_1,
  input         io_mask_wen_0,
  input         io_mask_wen_1,
  input  [4:0]  io_mask_waddr_0,
  input  [4:0]  io_mask_waddr_1,
  input  [7:0]  io_mask_wdata_0,
  input  [7:0]  io_mask_wdata_1,
  input  [31:0] io_needForward_0_0,
  input  [31:0] io_needForward_0_1,
  input  [31:0] io_needForward_1_0,
  input  [31:0] io_needForward_1_1,
  output        io_forwardMask_0_0,
  output        io_forwardMask_0_1,
  output        io_forwardMask_0_2,
  output        io_forwardMask_0_3,
  output        io_forwardMask_0_4,
  output        io_forwardMask_0_5,
  output        io_forwardMask_0_6,
  output        io_forwardMask_0_7,
  output        io_forwardMask_1_0,
  output        io_forwardMask_1_1,
  output        io_forwardMask_1_2,
  output        io_forwardMask_1_3,
  output        io_forwardMask_1_4,
  output        io_forwardMask_1_5,
  output        io_forwardMask_1_6,
  output        io_forwardMask_1_7,
  output [7:0]  io_forwardData_0_0,
  output [7:0]  io_forwardData_0_1,
  output [7:0]  io_forwardData_0_2,
  output [7:0]  io_forwardData_0_3,
  output [7:0]  io_forwardData_0_4,
  output [7:0]  io_forwardData_0_5,
  output [7:0]  io_forwardData_0_6,
  output [7:0]  io_forwardData_0_7,
  output [7:0]  io_forwardData_1_0,
  output [7:0]  io_forwardData_1_1,
  output [7:0]  io_forwardData_1_2,
  output [7:0]  io_forwardData_1_3,
  output [7:0]  io_forwardData_1_4,
  output [7:0]  io_forwardData_1_5,
  output [7:0]  io_forwardData_1_6,
  output [7:0]  io_forwardData_1_7
);
  wire  data8_0_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_0_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_0_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_0_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_0_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_0_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_0_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_0_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_1_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_1_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_1_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_1_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_1_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_1_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_1_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_1_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_2_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_2_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_2_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_2_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_2_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_2_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_2_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_2_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_3_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_3_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_3_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_3_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_3_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_3_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_3_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_3_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_4_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_4_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_4_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_4_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_4_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_4_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_4_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_4_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_5_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_5_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_5_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_5_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_5_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_5_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_5_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_5_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_6_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_6_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_6_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_6_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_6_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_6_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_6_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_6_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  data8_7_clock; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_raddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_raddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_rdata_0_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_rdata_0_data; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_rdata_1_valid; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_rdata_1_data; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_data_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_data_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_data_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_data_waddr_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_data_wdata_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_data_wdata_1; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_mask_wen_0; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_mask_wen_1; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_mask_waddr_0; // @[StoreQueueData.scala 240:33]
  wire [4:0] data8_7_io_mask_waddr_1; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_mask_wdata_0; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_mask_wdata_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_7_io_needForward_0_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_7_io_needForward_0_1; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_7_io_needForward_1_0; // @[StoreQueueData.scala 240:33]
  wire [31:0] data8_7_io_needForward_1_1; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_forwardValid_0; // @[StoreQueueData.scala 240:33]
  wire  data8_7_io_forwardValid_1; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_forwardData_0; // @[StoreQueueData.scala 240:33]
  wire [7:0] data8_7_io_forwardData_1; // @[StoreQueueData.scala 240:33]
  wire  _io_rdata_0_mask_WIRE_1 = data8_1_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_0 = data8_0_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_3 = data8_3_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_2 = data8_2_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire [3:0] io_rdata_0_mask_lo = {_io_rdata_0_mask_WIRE_3,_io_rdata_0_mask_WIRE_2,_io_rdata_0_mask_WIRE_1,
    _io_rdata_0_mask_WIRE_0}; // @[StoreQueueData.scala 260:83]
  wire  _io_rdata_0_mask_WIRE_5 = data8_5_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_4 = data8_4_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_7 = data8_7_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_0_mask_WIRE_6 = data8_6_io_rdata_0_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire [3:0] io_rdata_0_mask_hi = {_io_rdata_0_mask_WIRE_7,_io_rdata_0_mask_WIRE_6,_io_rdata_0_mask_WIRE_5,
    _io_rdata_0_mask_WIRE_4}; // @[StoreQueueData.scala 260:83]
  wire [7:0] _io_rdata_0_data_WIRE_1 = data8_1_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_0 = data8_0_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_3 = data8_3_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_2 = data8_2_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [31:0] io_rdata_0_data_lo = {_io_rdata_0_data_WIRE_3,_io_rdata_0_data_WIRE_2,_io_rdata_0_data_WIRE_1,
    _io_rdata_0_data_WIRE_0}; // @[StoreQueueData.scala 261:82]
  wire [7:0] _io_rdata_0_data_WIRE_5 = data8_5_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_4 = data8_4_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_7 = data8_7_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_6 = data8_6_io_rdata_0_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [31:0] io_rdata_0_data_hi = {_io_rdata_0_data_WIRE_7,_io_rdata_0_data_WIRE_6,_io_rdata_0_data_WIRE_5,
    _io_rdata_0_data_WIRE_4}; // @[StoreQueueData.scala 261:82]
  wire  _io_rdata_1_mask_WIRE_1 = data8_1_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_0 = data8_0_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_3 = data8_3_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_2 = data8_2_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire [3:0] io_rdata_1_mask_lo = {_io_rdata_1_mask_WIRE_3,_io_rdata_1_mask_WIRE_2,_io_rdata_1_mask_WIRE_1,
    _io_rdata_1_mask_WIRE_0}; // @[StoreQueueData.scala 260:83]
  wire  _io_rdata_1_mask_WIRE_5 = data8_5_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_4 = data8_4_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_7 = data8_7_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire  _io_rdata_1_mask_WIRE_6 = data8_6_io_rdata_1_valid; // @[StoreQueueData.scala 260:{32,32}]
  wire [3:0] io_rdata_1_mask_hi = {_io_rdata_1_mask_WIRE_7,_io_rdata_1_mask_WIRE_6,_io_rdata_1_mask_WIRE_5,
    _io_rdata_1_mask_WIRE_4}; // @[StoreQueueData.scala 260:83]
  wire [7:0] _io_rdata_1_data_WIRE_1 = data8_1_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_0 = data8_0_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_3 = data8_3_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_2 = data8_2_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [31:0] io_rdata_1_data_lo = {_io_rdata_1_data_WIRE_3,_io_rdata_1_data_WIRE_2,_io_rdata_1_data_WIRE_1,
    _io_rdata_1_data_WIRE_0}; // @[StoreQueueData.scala 261:82]
  wire [7:0] _io_rdata_1_data_WIRE_5 = data8_5_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_4 = data8_4_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_7 = data8_7_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_6 = data8_6_io_rdata_1_data; // @[StoreQueueData.scala 261:{32,32}]
  wire [31:0] io_rdata_1_data_hi = {_io_rdata_1_data_WIRE_7,_io_rdata_1_data_WIRE_6,_io_rdata_1_data_WIRE_5,
    _io_rdata_1_data_WIRE_4}; // @[StoreQueueData.scala 261:82]
  SQData8Module data8_0 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_0_clock),
    .io_raddr_0(data8_0_io_raddr_0),
    .io_raddr_1(data8_0_io_raddr_1),
    .io_rdata_0_valid(data8_0_io_rdata_0_valid),
    .io_rdata_0_data(data8_0_io_rdata_0_data),
    .io_rdata_1_valid(data8_0_io_rdata_1_valid),
    .io_rdata_1_data(data8_0_io_rdata_1_data),
    .io_data_wen_0(data8_0_io_data_wen_0),
    .io_data_wen_1(data8_0_io_data_wen_1),
    .io_data_waddr_0(data8_0_io_data_waddr_0),
    .io_data_waddr_1(data8_0_io_data_waddr_1),
    .io_data_wdata_0(data8_0_io_data_wdata_0),
    .io_data_wdata_1(data8_0_io_data_wdata_1),
    .io_mask_wen_0(data8_0_io_mask_wen_0),
    .io_mask_wen_1(data8_0_io_mask_wen_1),
    .io_mask_waddr_0(data8_0_io_mask_waddr_0),
    .io_mask_waddr_1(data8_0_io_mask_waddr_1),
    .io_mask_wdata_0(data8_0_io_mask_wdata_0),
    .io_mask_wdata_1(data8_0_io_mask_wdata_1),
    .io_needForward_0_0(data8_0_io_needForward_0_0),
    .io_needForward_0_1(data8_0_io_needForward_0_1),
    .io_needForward_1_0(data8_0_io_needForward_1_0),
    .io_needForward_1_1(data8_0_io_needForward_1_1),
    .io_forwardValid_0(data8_0_io_forwardValid_0),
    .io_forwardValid_1(data8_0_io_forwardValid_1),
    .io_forwardData_0(data8_0_io_forwardData_0),
    .io_forwardData_1(data8_0_io_forwardData_1)
  );
  SQData8Module data8_1 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_1_clock),
    .io_raddr_0(data8_1_io_raddr_0),
    .io_raddr_1(data8_1_io_raddr_1),
    .io_rdata_0_valid(data8_1_io_rdata_0_valid),
    .io_rdata_0_data(data8_1_io_rdata_0_data),
    .io_rdata_1_valid(data8_1_io_rdata_1_valid),
    .io_rdata_1_data(data8_1_io_rdata_1_data),
    .io_data_wen_0(data8_1_io_data_wen_0),
    .io_data_wen_1(data8_1_io_data_wen_1),
    .io_data_waddr_0(data8_1_io_data_waddr_0),
    .io_data_waddr_1(data8_1_io_data_waddr_1),
    .io_data_wdata_0(data8_1_io_data_wdata_0),
    .io_data_wdata_1(data8_1_io_data_wdata_1),
    .io_mask_wen_0(data8_1_io_mask_wen_0),
    .io_mask_wen_1(data8_1_io_mask_wen_1),
    .io_mask_waddr_0(data8_1_io_mask_waddr_0),
    .io_mask_waddr_1(data8_1_io_mask_waddr_1),
    .io_mask_wdata_0(data8_1_io_mask_wdata_0),
    .io_mask_wdata_1(data8_1_io_mask_wdata_1),
    .io_needForward_0_0(data8_1_io_needForward_0_0),
    .io_needForward_0_1(data8_1_io_needForward_0_1),
    .io_needForward_1_0(data8_1_io_needForward_1_0),
    .io_needForward_1_1(data8_1_io_needForward_1_1),
    .io_forwardValid_0(data8_1_io_forwardValid_0),
    .io_forwardValid_1(data8_1_io_forwardValid_1),
    .io_forwardData_0(data8_1_io_forwardData_0),
    .io_forwardData_1(data8_1_io_forwardData_1)
  );
  SQData8Module data8_2 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_2_clock),
    .io_raddr_0(data8_2_io_raddr_0),
    .io_raddr_1(data8_2_io_raddr_1),
    .io_rdata_0_valid(data8_2_io_rdata_0_valid),
    .io_rdata_0_data(data8_2_io_rdata_0_data),
    .io_rdata_1_valid(data8_2_io_rdata_1_valid),
    .io_rdata_1_data(data8_2_io_rdata_1_data),
    .io_data_wen_0(data8_2_io_data_wen_0),
    .io_data_wen_1(data8_2_io_data_wen_1),
    .io_data_waddr_0(data8_2_io_data_waddr_0),
    .io_data_waddr_1(data8_2_io_data_waddr_1),
    .io_data_wdata_0(data8_2_io_data_wdata_0),
    .io_data_wdata_1(data8_2_io_data_wdata_1),
    .io_mask_wen_0(data8_2_io_mask_wen_0),
    .io_mask_wen_1(data8_2_io_mask_wen_1),
    .io_mask_waddr_0(data8_2_io_mask_waddr_0),
    .io_mask_waddr_1(data8_2_io_mask_waddr_1),
    .io_mask_wdata_0(data8_2_io_mask_wdata_0),
    .io_mask_wdata_1(data8_2_io_mask_wdata_1),
    .io_needForward_0_0(data8_2_io_needForward_0_0),
    .io_needForward_0_1(data8_2_io_needForward_0_1),
    .io_needForward_1_0(data8_2_io_needForward_1_0),
    .io_needForward_1_1(data8_2_io_needForward_1_1),
    .io_forwardValid_0(data8_2_io_forwardValid_0),
    .io_forwardValid_1(data8_2_io_forwardValid_1),
    .io_forwardData_0(data8_2_io_forwardData_0),
    .io_forwardData_1(data8_2_io_forwardData_1)
  );
  SQData8Module data8_3 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_3_clock),
    .io_raddr_0(data8_3_io_raddr_0),
    .io_raddr_1(data8_3_io_raddr_1),
    .io_rdata_0_valid(data8_3_io_rdata_0_valid),
    .io_rdata_0_data(data8_3_io_rdata_0_data),
    .io_rdata_1_valid(data8_3_io_rdata_1_valid),
    .io_rdata_1_data(data8_3_io_rdata_1_data),
    .io_data_wen_0(data8_3_io_data_wen_0),
    .io_data_wen_1(data8_3_io_data_wen_1),
    .io_data_waddr_0(data8_3_io_data_waddr_0),
    .io_data_waddr_1(data8_3_io_data_waddr_1),
    .io_data_wdata_0(data8_3_io_data_wdata_0),
    .io_data_wdata_1(data8_3_io_data_wdata_1),
    .io_mask_wen_0(data8_3_io_mask_wen_0),
    .io_mask_wen_1(data8_3_io_mask_wen_1),
    .io_mask_waddr_0(data8_3_io_mask_waddr_0),
    .io_mask_waddr_1(data8_3_io_mask_waddr_1),
    .io_mask_wdata_0(data8_3_io_mask_wdata_0),
    .io_mask_wdata_1(data8_3_io_mask_wdata_1),
    .io_needForward_0_0(data8_3_io_needForward_0_0),
    .io_needForward_0_1(data8_3_io_needForward_0_1),
    .io_needForward_1_0(data8_3_io_needForward_1_0),
    .io_needForward_1_1(data8_3_io_needForward_1_1),
    .io_forwardValid_0(data8_3_io_forwardValid_0),
    .io_forwardValid_1(data8_3_io_forwardValid_1),
    .io_forwardData_0(data8_3_io_forwardData_0),
    .io_forwardData_1(data8_3_io_forwardData_1)
  );
  SQData8Module data8_4 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_4_clock),
    .io_raddr_0(data8_4_io_raddr_0),
    .io_raddr_1(data8_4_io_raddr_1),
    .io_rdata_0_valid(data8_4_io_rdata_0_valid),
    .io_rdata_0_data(data8_4_io_rdata_0_data),
    .io_rdata_1_valid(data8_4_io_rdata_1_valid),
    .io_rdata_1_data(data8_4_io_rdata_1_data),
    .io_data_wen_0(data8_4_io_data_wen_0),
    .io_data_wen_1(data8_4_io_data_wen_1),
    .io_data_waddr_0(data8_4_io_data_waddr_0),
    .io_data_waddr_1(data8_4_io_data_waddr_1),
    .io_data_wdata_0(data8_4_io_data_wdata_0),
    .io_data_wdata_1(data8_4_io_data_wdata_1),
    .io_mask_wen_0(data8_4_io_mask_wen_0),
    .io_mask_wen_1(data8_4_io_mask_wen_1),
    .io_mask_waddr_0(data8_4_io_mask_waddr_0),
    .io_mask_waddr_1(data8_4_io_mask_waddr_1),
    .io_mask_wdata_0(data8_4_io_mask_wdata_0),
    .io_mask_wdata_1(data8_4_io_mask_wdata_1),
    .io_needForward_0_0(data8_4_io_needForward_0_0),
    .io_needForward_0_1(data8_4_io_needForward_0_1),
    .io_needForward_1_0(data8_4_io_needForward_1_0),
    .io_needForward_1_1(data8_4_io_needForward_1_1),
    .io_forwardValid_0(data8_4_io_forwardValid_0),
    .io_forwardValid_1(data8_4_io_forwardValid_1),
    .io_forwardData_0(data8_4_io_forwardData_0),
    .io_forwardData_1(data8_4_io_forwardData_1)
  );
  SQData8Module data8_5 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_5_clock),
    .io_raddr_0(data8_5_io_raddr_0),
    .io_raddr_1(data8_5_io_raddr_1),
    .io_rdata_0_valid(data8_5_io_rdata_0_valid),
    .io_rdata_0_data(data8_5_io_rdata_0_data),
    .io_rdata_1_valid(data8_5_io_rdata_1_valid),
    .io_rdata_1_data(data8_5_io_rdata_1_data),
    .io_data_wen_0(data8_5_io_data_wen_0),
    .io_data_wen_1(data8_5_io_data_wen_1),
    .io_data_waddr_0(data8_5_io_data_waddr_0),
    .io_data_waddr_1(data8_5_io_data_waddr_1),
    .io_data_wdata_0(data8_5_io_data_wdata_0),
    .io_data_wdata_1(data8_5_io_data_wdata_1),
    .io_mask_wen_0(data8_5_io_mask_wen_0),
    .io_mask_wen_1(data8_5_io_mask_wen_1),
    .io_mask_waddr_0(data8_5_io_mask_waddr_0),
    .io_mask_waddr_1(data8_5_io_mask_waddr_1),
    .io_mask_wdata_0(data8_5_io_mask_wdata_0),
    .io_mask_wdata_1(data8_5_io_mask_wdata_1),
    .io_needForward_0_0(data8_5_io_needForward_0_0),
    .io_needForward_0_1(data8_5_io_needForward_0_1),
    .io_needForward_1_0(data8_5_io_needForward_1_0),
    .io_needForward_1_1(data8_5_io_needForward_1_1),
    .io_forwardValid_0(data8_5_io_forwardValid_0),
    .io_forwardValid_1(data8_5_io_forwardValid_1),
    .io_forwardData_0(data8_5_io_forwardData_0),
    .io_forwardData_1(data8_5_io_forwardData_1)
  );
  SQData8Module data8_6 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_6_clock),
    .io_raddr_0(data8_6_io_raddr_0),
    .io_raddr_1(data8_6_io_raddr_1),
    .io_rdata_0_valid(data8_6_io_rdata_0_valid),
    .io_rdata_0_data(data8_6_io_rdata_0_data),
    .io_rdata_1_valid(data8_6_io_rdata_1_valid),
    .io_rdata_1_data(data8_6_io_rdata_1_data),
    .io_data_wen_0(data8_6_io_data_wen_0),
    .io_data_wen_1(data8_6_io_data_wen_1),
    .io_data_waddr_0(data8_6_io_data_waddr_0),
    .io_data_waddr_1(data8_6_io_data_waddr_1),
    .io_data_wdata_0(data8_6_io_data_wdata_0),
    .io_data_wdata_1(data8_6_io_data_wdata_1),
    .io_mask_wen_0(data8_6_io_mask_wen_0),
    .io_mask_wen_1(data8_6_io_mask_wen_1),
    .io_mask_waddr_0(data8_6_io_mask_waddr_0),
    .io_mask_waddr_1(data8_6_io_mask_waddr_1),
    .io_mask_wdata_0(data8_6_io_mask_wdata_0),
    .io_mask_wdata_1(data8_6_io_mask_wdata_1),
    .io_needForward_0_0(data8_6_io_needForward_0_0),
    .io_needForward_0_1(data8_6_io_needForward_0_1),
    .io_needForward_1_0(data8_6_io_needForward_1_0),
    .io_needForward_1_1(data8_6_io_needForward_1_1),
    .io_forwardValid_0(data8_6_io_forwardValid_0),
    .io_forwardValid_1(data8_6_io_forwardValid_1),
    .io_forwardData_0(data8_6_io_forwardData_0),
    .io_forwardData_1(data8_6_io_forwardData_1)
  );
  SQData8Module data8_7 ( // @[StoreQueueData.scala 240:33]
    .clock(data8_7_clock),
    .io_raddr_0(data8_7_io_raddr_0),
    .io_raddr_1(data8_7_io_raddr_1),
    .io_rdata_0_valid(data8_7_io_rdata_0_valid),
    .io_rdata_0_data(data8_7_io_rdata_0_data),
    .io_rdata_1_valid(data8_7_io_rdata_1_valid),
    .io_rdata_1_data(data8_7_io_rdata_1_data),
    .io_data_wen_0(data8_7_io_data_wen_0),
    .io_data_wen_1(data8_7_io_data_wen_1),
    .io_data_waddr_0(data8_7_io_data_waddr_0),
    .io_data_waddr_1(data8_7_io_data_waddr_1),
    .io_data_wdata_0(data8_7_io_data_wdata_0),
    .io_data_wdata_1(data8_7_io_data_wdata_1),
    .io_mask_wen_0(data8_7_io_mask_wen_0),
    .io_mask_wen_1(data8_7_io_mask_wen_1),
    .io_mask_waddr_0(data8_7_io_mask_waddr_0),
    .io_mask_waddr_1(data8_7_io_mask_waddr_1),
    .io_mask_wdata_0(data8_7_io_mask_wdata_0),
    .io_mask_wdata_1(data8_7_io_mask_wdata_1),
    .io_needForward_0_0(data8_7_io_needForward_0_0),
    .io_needForward_0_1(data8_7_io_needForward_0_1),
    .io_needForward_1_0(data8_7_io_needForward_1_0),
    .io_needForward_1_1(data8_7_io_needForward_1_1),
    .io_forwardValid_0(data8_7_io_forwardValid_0),
    .io_forwardValid_1(data8_7_io_forwardValid_1),
    .io_forwardData_0(data8_7_io_forwardData_0),
    .io_forwardData_1(data8_7_io_forwardData_1)
  );
  assign io_rdata_0_mask = {io_rdata_0_mask_hi,io_rdata_0_mask_lo}; // @[StoreQueueData.scala 260:83]
  assign io_rdata_0_data = {io_rdata_0_data_hi,io_rdata_0_data_lo}; // @[StoreQueueData.scala 261:82]
  assign io_rdata_1_mask = {io_rdata_1_mask_hi,io_rdata_1_mask_lo}; // @[StoreQueueData.scala 260:83]
  assign io_rdata_1_data = {io_rdata_1_data_hi,io_rdata_1_data_lo}; // @[StoreQueueData.scala 261:82]
  assign io_forwardMask_0_0 = data8_0_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_1 = data8_1_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_2 = data8_2_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_3 = data8_3_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_4 = data8_4_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_5 = data8_5_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_6 = data8_6_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_0_7 = data8_7_io_forwardValid_0; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_0 = data8_0_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_1 = data8_1_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_2 = data8_2_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_3 = data8_3_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_4 = data8_4_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_5 = data8_5_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_6 = data8_6_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardMask_1_7 = data8_7_io_forwardValid_1; // @[StoreQueueData.scala 281:{35,35}]
  assign io_forwardData_0_0 = data8_0_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_1 = data8_1_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_2 = data8_2_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_3 = data8_3_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_4 = data8_4_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_5 = data8_5_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_6 = data8_6_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_0_7 = data8_7_io_forwardData_0; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_0 = data8_0_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_1 = data8_1_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_2 = data8_2_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_3 = data8_3_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_4 = data8_4_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_5 = data8_5_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_6 = data8_6_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign io_forwardData_1_7 = data8_7_io_forwardData_1; // @[StoreQueueData.scala 282:{35,35}]
  assign data8_0_clock = clock;
  assign data8_0_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_0_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_0_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_0_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_0_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_0_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_0_io_data_wdata_0 = io_data_wdata_0[7:0]; // @[StoreQueueData.scala 250:52]
  assign data8_0_io_data_wdata_1 = io_data_wdata_1[7:0]; // @[StoreQueueData.scala 250:52]
  assign data8_0_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_0_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_0_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_0_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_0_io_mask_wdata_0 = io_mask_wdata_0[0]; // @[StoreQueueData.scala 247:52]
  assign data8_0_io_mask_wdata_1 = io_mask_wdata_1[0]; // @[StoreQueueData.scala 247:52]
  assign data8_0_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_0_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_0_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_0_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_1_clock = clock;
  assign data8_1_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_1_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_1_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_1_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_1_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_1_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_1_io_data_wdata_0 = io_data_wdata_0[15:8]; // @[StoreQueueData.scala 250:52]
  assign data8_1_io_data_wdata_1 = io_data_wdata_1[15:8]; // @[StoreQueueData.scala 250:52]
  assign data8_1_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_1_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_1_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_1_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_1_io_mask_wdata_0 = io_mask_wdata_0[1]; // @[StoreQueueData.scala 247:52]
  assign data8_1_io_mask_wdata_1 = io_mask_wdata_1[1]; // @[StoreQueueData.scala 247:52]
  assign data8_1_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_1_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_1_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_1_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_2_clock = clock;
  assign data8_2_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_2_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_2_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_2_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_2_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_2_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_2_io_data_wdata_0 = io_data_wdata_0[23:16]; // @[StoreQueueData.scala 250:52]
  assign data8_2_io_data_wdata_1 = io_data_wdata_1[23:16]; // @[StoreQueueData.scala 250:52]
  assign data8_2_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_2_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_2_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_2_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_2_io_mask_wdata_0 = io_mask_wdata_0[2]; // @[StoreQueueData.scala 247:52]
  assign data8_2_io_mask_wdata_1 = io_mask_wdata_1[2]; // @[StoreQueueData.scala 247:52]
  assign data8_2_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_2_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_2_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_2_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_3_clock = clock;
  assign data8_3_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_3_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_3_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_3_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_3_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_3_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_3_io_data_wdata_0 = io_data_wdata_0[31:24]; // @[StoreQueueData.scala 250:52]
  assign data8_3_io_data_wdata_1 = io_data_wdata_1[31:24]; // @[StoreQueueData.scala 250:52]
  assign data8_3_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_3_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_3_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_3_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_3_io_mask_wdata_0 = io_mask_wdata_0[3]; // @[StoreQueueData.scala 247:52]
  assign data8_3_io_mask_wdata_1 = io_mask_wdata_1[3]; // @[StoreQueueData.scala 247:52]
  assign data8_3_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_3_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_3_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_3_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_4_clock = clock;
  assign data8_4_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_4_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_4_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_4_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_4_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_4_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_4_io_data_wdata_0 = io_data_wdata_0[39:32]; // @[StoreQueueData.scala 250:52]
  assign data8_4_io_data_wdata_1 = io_data_wdata_1[39:32]; // @[StoreQueueData.scala 250:52]
  assign data8_4_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_4_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_4_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_4_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_4_io_mask_wdata_0 = io_mask_wdata_0[4]; // @[StoreQueueData.scala 247:52]
  assign data8_4_io_mask_wdata_1 = io_mask_wdata_1[4]; // @[StoreQueueData.scala 247:52]
  assign data8_4_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_4_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_4_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_4_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_5_clock = clock;
  assign data8_5_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_5_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_5_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_5_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_5_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_5_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_5_io_data_wdata_0 = io_data_wdata_0[47:40]; // @[StoreQueueData.scala 250:52]
  assign data8_5_io_data_wdata_1 = io_data_wdata_1[47:40]; // @[StoreQueueData.scala 250:52]
  assign data8_5_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_5_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_5_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_5_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_5_io_mask_wdata_0 = io_mask_wdata_0[5]; // @[StoreQueueData.scala 247:52]
  assign data8_5_io_mask_wdata_1 = io_mask_wdata_1[5]; // @[StoreQueueData.scala 247:52]
  assign data8_5_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_5_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_5_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_5_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_6_clock = clock;
  assign data8_6_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_6_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_6_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_6_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_6_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_6_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_6_io_data_wdata_0 = io_data_wdata_0[55:48]; // @[StoreQueueData.scala 250:52]
  assign data8_6_io_data_wdata_1 = io_data_wdata_1[55:48]; // @[StoreQueueData.scala 250:52]
  assign data8_6_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_6_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_6_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_6_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_6_io_mask_wdata_0 = io_mask_wdata_0[6]; // @[StoreQueueData.scala 247:52]
  assign data8_6_io_mask_wdata_1 = io_mask_wdata_1[6]; // @[StoreQueueData.scala 247:52]
  assign data8_6_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_6_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_6_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_6_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
  assign data8_7_clock = clock;
  assign data8_7_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 258:28]
  assign data8_7_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 258:28]
  assign data8_7_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 251:33]
  assign data8_7_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 251:33]
  assign data8_7_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 249:33]
  assign data8_7_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 249:33]
  assign data8_7_io_data_wdata_0 = io_data_wdata_0[63:56]; // @[StoreQueueData.scala 250:52]
  assign data8_7_io_data_wdata_1 = io_data_wdata_1[63:56]; // @[StoreQueueData.scala 250:52]
  assign data8_7_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 248:33]
  assign data8_7_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 248:33]
  assign data8_7_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 246:33]
  assign data8_7_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 246:33]
  assign data8_7_io_mask_wdata_0 = io_mask_wdata_0[7]; // @[StoreQueueData.scala 247:52]
  assign data8_7_io_mask_wdata_1 = io_mask_wdata_1[7]; // @[StoreQueueData.scala 247:52]
  assign data8_7_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 279:34]
  assign data8_7_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 279:34]
  assign data8_7_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 279:34]
  assign data8_7_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 279:34]
endmodule
