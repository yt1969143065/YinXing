module SyncDataModuleTemplate_6(
  input        clock,
  input  [6:0] io_raddr_0,
  input  [6:0] io_raddr_1,
  input  [6:0] io_raddr_2,
  input  [6:0] io_raddr_3,
  output [4:0] io_rdata_0_ldest,
  output       io_rdata_0_rfWen,
  output       io_rdata_0_fpWen,
  output       io_rdata_0_wflags,
  output [2:0] io_rdata_0_commitType,
  output [6:0] io_rdata_0_pdest,
  output [6:0] io_rdata_0_old_pdest,
  output       io_rdata_0_ftqIdx_flag,
  output [5:0] io_rdata_0_ftqIdx_value,
  output [2:0] io_rdata_0_ftqOffset,
  output [4:0] io_rdata_1_ldest,
  output       io_rdata_1_rfWen,
  output       io_rdata_1_fpWen,
  output       io_rdata_1_wflags,
  output [2:0] io_rdata_1_commitType,
  output [6:0] io_rdata_1_pdest,
  output [6:0] io_rdata_1_old_pdest,
  output       io_rdata_1_ftqIdx_flag,
  output [5:0] io_rdata_1_ftqIdx_value,
  output [2:0] io_rdata_1_ftqOffset,
  output [4:0] io_rdata_2_ldest,
  output       io_rdata_2_rfWen,
  output       io_rdata_2_fpWen,
  output       io_rdata_2_wflags,
  output [2:0] io_rdata_2_commitType,
  output [6:0] io_rdata_2_pdest,
  output [6:0] io_rdata_2_old_pdest,
  output       io_rdata_2_ftqIdx_flag,
  output [5:0] io_rdata_2_ftqIdx_value,
  output [2:0] io_rdata_2_ftqOffset,
  output [4:0] io_rdata_3_ldest,
  output       io_rdata_3_rfWen,
  output       io_rdata_3_fpWen,
  output       io_rdata_3_wflags,
  output [2:0] io_rdata_3_commitType,
  output [6:0] io_rdata_3_pdest,
  output [6:0] io_rdata_3_old_pdest,
  output       io_rdata_3_ftqIdx_flag,
  output [5:0] io_rdata_3_ftqIdx_value,
  output [2:0] io_rdata_3_ftqOffset,
  input        io_wen_0,
  input        io_wen_1,
  input        io_wen_2,
  input        io_wen_3,
  input  [6:0] io_waddr_0,
  input  [6:0] io_waddr_1,
  input  [6:0] io_waddr_2,
  input  [6:0] io_waddr_3,
  input  [4:0] io_wdata_0_ldest,
  input        io_wdata_0_rfWen,
  input        io_wdata_0_fpWen,
  input        io_wdata_0_wflags,
  input  [2:0] io_wdata_0_commitType,
  input  [6:0] io_wdata_0_pdest,
  input  [6:0] io_wdata_0_old_pdest,
  input        io_wdata_0_ftqIdx_flag,
  input  [5:0] io_wdata_0_ftqIdx_value,
  input  [2:0] io_wdata_0_ftqOffset,
  input  [4:0] io_wdata_1_ldest,
  input        io_wdata_1_rfWen,
  input        io_wdata_1_fpWen,
  input        io_wdata_1_wflags,
  input  [2:0] io_wdata_1_commitType,
  input  [6:0] io_wdata_1_pdest,
  input  [6:0] io_wdata_1_old_pdest,
  input        io_wdata_1_ftqIdx_flag,
  input  [5:0] io_wdata_1_ftqIdx_value,
  input  [2:0] io_wdata_1_ftqOffset,
  input  [4:0] io_wdata_2_ldest,
  input        io_wdata_2_rfWen,
  input        io_wdata_2_fpWen,
  input        io_wdata_2_wflags,
  input  [2:0] io_wdata_2_commitType,
  input  [6:0] io_wdata_2_pdest,
  input  [6:0] io_wdata_2_old_pdest,
  input        io_wdata_2_ftqIdx_flag,
  input  [5:0] io_wdata_2_ftqIdx_value,
  input  [2:0] io_wdata_2_ftqOffset,
  input  [4:0] io_wdata_3_ldest,
  input        io_wdata_3_rfWen,
  input        io_wdata_3_fpWen,
  input        io_wdata_3_wflags,
  input  [2:0] io_wdata_3_commitType,
  input  [6:0] io_wdata_3_pdest,
  input  [6:0] io_wdata_3_old_pdest,
  input        io_wdata_3_ftqIdx_flag,
  input  [5:0] io_wdata_3_ftqIdx_value,
  input  [2:0] io_wdata_3_ftqOffset
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] data_ldest [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ldest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ldest_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ldest_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_rfWen [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_rfWen_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_rfWen_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_fpWen [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_fpWen_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_fpWen_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_wflags [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_wflags_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_wflags_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_commitType [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_commitType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_commitType_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_commitType_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_pdest [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_old_pdest [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_old_pdest_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_old_pdest_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ftqIdx_flag [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_flag_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_flag_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] data_ftqIdx_value [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqIdx_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqIdx_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_ftqOffset [0:127]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ftqOffset_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [6:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [6:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  reg [6:0] raddr_3; // @[DataModuleTemplate.scala 67:35]
  assign data_ldest_io_rdata_0_MPORT_en = 1'h1;
  assign data_ldest_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ldest_io_rdata_0_MPORT_data = data_ldest[data_ldest_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ldest_io_rdata_1_MPORT_en = 1'h1;
  assign data_ldest_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ldest_io_rdata_1_MPORT_data = data_ldest[data_ldest_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ldest_io_rdata_2_MPORT_en = 1'h1;
  assign data_ldest_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ldest_io_rdata_2_MPORT_data = data_ldest[data_ldest_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ldest_io_rdata_3_MPORT_en = 1'h1;
  assign data_ldest_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ldest_io_rdata_3_MPORT_data = data_ldest[data_ldest_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ldest_MPORT_data = io_wdata_0_ldest;
  assign data_ldest_MPORT_addr = io_waddr_0;
  assign data_ldest_MPORT_mask = 1'h1;
  assign data_ldest_MPORT_en = io_wen_0;
  assign data_ldest_MPORT_1_data = io_wdata_1_ldest;
  assign data_ldest_MPORT_1_addr = io_waddr_1;
  assign data_ldest_MPORT_1_mask = 1'h1;
  assign data_ldest_MPORT_1_en = io_wen_1;
  assign data_ldest_MPORT_2_data = io_wdata_2_ldest;
  assign data_ldest_MPORT_2_addr = io_waddr_2;
  assign data_ldest_MPORT_2_mask = 1'h1;
  assign data_ldest_MPORT_2_en = io_wen_2;
  assign data_ldest_MPORT_3_data = io_wdata_3_ldest;
  assign data_ldest_MPORT_3_addr = io_waddr_3;
  assign data_ldest_MPORT_3_mask = 1'h1;
  assign data_ldest_MPORT_3_en = io_wen_3;
  assign data_rfWen_io_rdata_0_MPORT_en = 1'h1;
  assign data_rfWen_io_rdata_0_MPORT_addr = raddr_0;
  assign data_rfWen_io_rdata_0_MPORT_data = data_rfWen[data_rfWen_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rfWen_io_rdata_1_MPORT_en = 1'h1;
  assign data_rfWen_io_rdata_1_MPORT_addr = raddr_1;
  assign data_rfWen_io_rdata_1_MPORT_data = data_rfWen[data_rfWen_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rfWen_io_rdata_2_MPORT_en = 1'h1;
  assign data_rfWen_io_rdata_2_MPORT_addr = raddr_2;
  assign data_rfWen_io_rdata_2_MPORT_data = data_rfWen[data_rfWen_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rfWen_io_rdata_3_MPORT_en = 1'h1;
  assign data_rfWen_io_rdata_3_MPORT_addr = raddr_3;
  assign data_rfWen_io_rdata_3_MPORT_data = data_rfWen[data_rfWen_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_rfWen_MPORT_data = io_wdata_0_rfWen;
  assign data_rfWen_MPORT_addr = io_waddr_0;
  assign data_rfWen_MPORT_mask = 1'h1;
  assign data_rfWen_MPORT_en = io_wen_0;
  assign data_rfWen_MPORT_1_data = io_wdata_1_rfWen;
  assign data_rfWen_MPORT_1_addr = io_waddr_1;
  assign data_rfWen_MPORT_1_mask = 1'h1;
  assign data_rfWen_MPORT_1_en = io_wen_1;
  assign data_rfWen_MPORT_2_data = io_wdata_2_rfWen;
  assign data_rfWen_MPORT_2_addr = io_waddr_2;
  assign data_rfWen_MPORT_2_mask = 1'h1;
  assign data_rfWen_MPORT_2_en = io_wen_2;
  assign data_rfWen_MPORT_3_data = io_wdata_3_rfWen;
  assign data_rfWen_MPORT_3_addr = io_waddr_3;
  assign data_rfWen_MPORT_3_mask = 1'h1;
  assign data_rfWen_MPORT_3_en = io_wen_3;
  assign data_fpWen_io_rdata_0_MPORT_en = 1'h1;
  assign data_fpWen_io_rdata_0_MPORT_addr = raddr_0;
  assign data_fpWen_io_rdata_0_MPORT_data = data_fpWen[data_fpWen_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fpWen_io_rdata_1_MPORT_en = 1'h1;
  assign data_fpWen_io_rdata_1_MPORT_addr = raddr_1;
  assign data_fpWen_io_rdata_1_MPORT_data = data_fpWen[data_fpWen_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fpWen_io_rdata_2_MPORT_en = 1'h1;
  assign data_fpWen_io_rdata_2_MPORT_addr = raddr_2;
  assign data_fpWen_io_rdata_2_MPORT_data = data_fpWen[data_fpWen_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fpWen_io_rdata_3_MPORT_en = 1'h1;
  assign data_fpWen_io_rdata_3_MPORT_addr = raddr_3;
  assign data_fpWen_io_rdata_3_MPORT_data = data_fpWen[data_fpWen_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_fpWen_MPORT_data = io_wdata_0_fpWen;
  assign data_fpWen_MPORT_addr = io_waddr_0;
  assign data_fpWen_MPORT_mask = 1'h1;
  assign data_fpWen_MPORT_en = io_wen_0;
  assign data_fpWen_MPORT_1_data = io_wdata_1_fpWen;
  assign data_fpWen_MPORT_1_addr = io_waddr_1;
  assign data_fpWen_MPORT_1_mask = 1'h1;
  assign data_fpWen_MPORT_1_en = io_wen_1;
  assign data_fpWen_MPORT_2_data = io_wdata_2_fpWen;
  assign data_fpWen_MPORT_2_addr = io_waddr_2;
  assign data_fpWen_MPORT_2_mask = 1'h1;
  assign data_fpWen_MPORT_2_en = io_wen_2;
  assign data_fpWen_MPORT_3_data = io_wdata_3_fpWen;
  assign data_fpWen_MPORT_3_addr = io_waddr_3;
  assign data_fpWen_MPORT_3_mask = 1'h1;
  assign data_fpWen_MPORT_3_en = io_wen_3;
  assign data_wflags_io_rdata_0_MPORT_en = 1'h1;
  assign data_wflags_io_rdata_0_MPORT_addr = raddr_0;
  assign data_wflags_io_rdata_0_MPORT_data = data_wflags[data_wflags_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_wflags_io_rdata_1_MPORT_en = 1'h1;
  assign data_wflags_io_rdata_1_MPORT_addr = raddr_1;
  assign data_wflags_io_rdata_1_MPORT_data = data_wflags[data_wflags_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_wflags_io_rdata_2_MPORT_en = 1'h1;
  assign data_wflags_io_rdata_2_MPORT_addr = raddr_2;
  assign data_wflags_io_rdata_2_MPORT_data = data_wflags[data_wflags_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_wflags_io_rdata_3_MPORT_en = 1'h1;
  assign data_wflags_io_rdata_3_MPORT_addr = raddr_3;
  assign data_wflags_io_rdata_3_MPORT_data = data_wflags[data_wflags_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_wflags_MPORT_data = io_wdata_0_wflags;
  assign data_wflags_MPORT_addr = io_waddr_0;
  assign data_wflags_MPORT_mask = 1'h1;
  assign data_wflags_MPORT_en = io_wen_0;
  assign data_wflags_MPORT_1_data = io_wdata_1_wflags;
  assign data_wflags_MPORT_1_addr = io_waddr_1;
  assign data_wflags_MPORT_1_mask = 1'h1;
  assign data_wflags_MPORT_1_en = io_wen_1;
  assign data_wflags_MPORT_2_data = io_wdata_2_wflags;
  assign data_wflags_MPORT_2_addr = io_waddr_2;
  assign data_wflags_MPORT_2_mask = 1'h1;
  assign data_wflags_MPORT_2_en = io_wen_2;
  assign data_wflags_MPORT_3_data = io_wdata_3_wflags;
  assign data_wflags_MPORT_3_addr = io_waddr_3;
  assign data_wflags_MPORT_3_mask = 1'h1;
  assign data_wflags_MPORT_3_en = io_wen_3;
  assign data_commitType_io_rdata_0_MPORT_en = 1'h1;
  assign data_commitType_io_rdata_0_MPORT_addr = raddr_0;
  assign data_commitType_io_rdata_0_MPORT_data = data_commitType[data_commitType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_commitType_io_rdata_1_MPORT_en = 1'h1;
  assign data_commitType_io_rdata_1_MPORT_addr = raddr_1;
  assign data_commitType_io_rdata_1_MPORT_data = data_commitType[data_commitType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_commitType_io_rdata_2_MPORT_en = 1'h1;
  assign data_commitType_io_rdata_2_MPORT_addr = raddr_2;
  assign data_commitType_io_rdata_2_MPORT_data = data_commitType[data_commitType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_commitType_io_rdata_3_MPORT_en = 1'h1;
  assign data_commitType_io_rdata_3_MPORT_addr = raddr_3;
  assign data_commitType_io_rdata_3_MPORT_data = data_commitType[data_commitType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_commitType_MPORT_data = io_wdata_0_commitType;
  assign data_commitType_MPORT_addr = io_waddr_0;
  assign data_commitType_MPORT_mask = 1'h1;
  assign data_commitType_MPORT_en = io_wen_0;
  assign data_commitType_MPORT_1_data = io_wdata_1_commitType;
  assign data_commitType_MPORT_1_addr = io_waddr_1;
  assign data_commitType_MPORT_1_mask = 1'h1;
  assign data_commitType_MPORT_1_en = io_wen_1;
  assign data_commitType_MPORT_2_data = io_wdata_2_commitType;
  assign data_commitType_MPORT_2_addr = io_waddr_2;
  assign data_commitType_MPORT_2_mask = 1'h1;
  assign data_commitType_MPORT_2_en = io_wen_2;
  assign data_commitType_MPORT_3_data = io_wdata_3_commitType;
  assign data_commitType_MPORT_3_addr = io_waddr_3;
  assign data_commitType_MPORT_3_mask = 1'h1;
  assign data_commitType_MPORT_3_en = io_wen_3;
  assign data_pdest_io_rdata_0_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_0_MPORT_addr = raddr_0;
  assign data_pdest_io_rdata_0_MPORT_data = data_pdest[data_pdest_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_1_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_1_MPORT_addr = raddr_1;
  assign data_pdest_io_rdata_1_MPORT_data = data_pdest[data_pdest_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_2_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_2_MPORT_addr = raddr_2;
  assign data_pdest_io_rdata_2_MPORT_data = data_pdest[data_pdest_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_3_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_3_MPORT_addr = raddr_3;
  assign data_pdest_io_rdata_3_MPORT_data = data_pdest[data_pdest_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_MPORT_data = io_wdata_0_pdest;
  assign data_pdest_MPORT_addr = io_waddr_0;
  assign data_pdest_MPORT_mask = 1'h1;
  assign data_pdest_MPORT_en = io_wen_0;
  assign data_pdest_MPORT_1_data = io_wdata_1_pdest;
  assign data_pdest_MPORT_1_addr = io_waddr_1;
  assign data_pdest_MPORT_1_mask = 1'h1;
  assign data_pdest_MPORT_1_en = io_wen_1;
  assign data_pdest_MPORT_2_data = io_wdata_2_pdest;
  assign data_pdest_MPORT_2_addr = io_waddr_2;
  assign data_pdest_MPORT_2_mask = 1'h1;
  assign data_pdest_MPORT_2_en = io_wen_2;
  assign data_pdest_MPORT_3_data = io_wdata_3_pdest;
  assign data_pdest_MPORT_3_addr = io_waddr_3;
  assign data_pdest_MPORT_3_mask = 1'h1;
  assign data_pdest_MPORT_3_en = io_wen_3;
  assign data_old_pdest_io_rdata_0_MPORT_en = 1'h1;
  assign data_old_pdest_io_rdata_0_MPORT_addr = raddr_0;
  assign data_old_pdest_io_rdata_0_MPORT_data = data_old_pdest[data_old_pdest_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_old_pdest_io_rdata_1_MPORT_en = 1'h1;
  assign data_old_pdest_io_rdata_1_MPORT_addr = raddr_1;
  assign data_old_pdest_io_rdata_1_MPORT_data = data_old_pdest[data_old_pdest_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_old_pdest_io_rdata_2_MPORT_en = 1'h1;
  assign data_old_pdest_io_rdata_2_MPORT_addr = raddr_2;
  assign data_old_pdest_io_rdata_2_MPORT_data = data_old_pdest[data_old_pdest_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_old_pdest_io_rdata_3_MPORT_en = 1'h1;
  assign data_old_pdest_io_rdata_3_MPORT_addr = raddr_3;
  assign data_old_pdest_io_rdata_3_MPORT_data = data_old_pdest[data_old_pdest_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_old_pdest_MPORT_data = io_wdata_0_old_pdest;
  assign data_old_pdest_MPORT_addr = io_waddr_0;
  assign data_old_pdest_MPORT_mask = 1'h1;
  assign data_old_pdest_MPORT_en = io_wen_0;
  assign data_old_pdest_MPORT_1_data = io_wdata_1_old_pdest;
  assign data_old_pdest_MPORT_1_addr = io_waddr_1;
  assign data_old_pdest_MPORT_1_mask = 1'h1;
  assign data_old_pdest_MPORT_1_en = io_wen_1;
  assign data_old_pdest_MPORT_2_data = io_wdata_2_old_pdest;
  assign data_old_pdest_MPORT_2_addr = io_waddr_2;
  assign data_old_pdest_MPORT_2_mask = 1'h1;
  assign data_old_pdest_MPORT_2_en = io_wen_2;
  assign data_old_pdest_MPORT_3_data = io_wdata_3_old_pdest;
  assign data_old_pdest_MPORT_3_addr = io_waddr_3;
  assign data_old_pdest_MPORT_3_mask = 1'h1;
  assign data_old_pdest_MPORT_3_en = io_wen_3;
  assign data_ftqIdx_flag_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqIdx_flag_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ftqIdx_flag_io_rdata_0_MPORT_data = data_ftqIdx_flag[data_ftqIdx_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_flag_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqIdx_flag_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ftqIdx_flag_io_rdata_1_MPORT_data = data_ftqIdx_flag[data_ftqIdx_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_flag_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqIdx_flag_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ftqIdx_flag_io_rdata_2_MPORT_data = data_ftqIdx_flag[data_ftqIdx_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_flag_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqIdx_flag_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ftqIdx_flag_io_rdata_3_MPORT_data = data_ftqIdx_flag[data_ftqIdx_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_flag_MPORT_data = io_wdata_0_ftqIdx_flag;
  assign data_ftqIdx_flag_MPORT_addr = io_waddr_0;
  assign data_ftqIdx_flag_MPORT_mask = 1'h1;
  assign data_ftqIdx_flag_MPORT_en = io_wen_0;
  assign data_ftqIdx_flag_MPORT_1_data = io_wdata_1_ftqIdx_flag;
  assign data_ftqIdx_flag_MPORT_1_addr = io_waddr_1;
  assign data_ftqIdx_flag_MPORT_1_mask = 1'h1;
  assign data_ftqIdx_flag_MPORT_1_en = io_wen_1;
  assign data_ftqIdx_flag_MPORT_2_data = io_wdata_2_ftqIdx_flag;
  assign data_ftqIdx_flag_MPORT_2_addr = io_waddr_2;
  assign data_ftqIdx_flag_MPORT_2_mask = 1'h1;
  assign data_ftqIdx_flag_MPORT_2_en = io_wen_2;
  assign data_ftqIdx_flag_MPORT_3_data = io_wdata_3_ftqIdx_flag;
  assign data_ftqIdx_flag_MPORT_3_addr = io_waddr_3;
  assign data_ftqIdx_flag_MPORT_3_mask = 1'h1;
  assign data_ftqIdx_flag_MPORT_3_en = io_wen_3;
  assign data_ftqIdx_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqIdx_value_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ftqIdx_value_io_rdata_0_MPORT_data = data_ftqIdx_value[data_ftqIdx_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqIdx_value_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ftqIdx_value_io_rdata_1_MPORT_data = data_ftqIdx_value[data_ftqIdx_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqIdx_value_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ftqIdx_value_io_rdata_2_MPORT_data = data_ftqIdx_value[data_ftqIdx_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqIdx_value_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ftqIdx_value_io_rdata_3_MPORT_data = data_ftqIdx_value[data_ftqIdx_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqIdx_value_MPORT_data = io_wdata_0_ftqIdx_value;
  assign data_ftqIdx_value_MPORT_addr = io_waddr_0;
  assign data_ftqIdx_value_MPORT_mask = 1'h1;
  assign data_ftqIdx_value_MPORT_en = io_wen_0;
  assign data_ftqIdx_value_MPORT_1_data = io_wdata_1_ftqIdx_value;
  assign data_ftqIdx_value_MPORT_1_addr = io_waddr_1;
  assign data_ftqIdx_value_MPORT_1_mask = 1'h1;
  assign data_ftqIdx_value_MPORT_1_en = io_wen_1;
  assign data_ftqIdx_value_MPORT_2_data = io_wdata_2_ftqIdx_value;
  assign data_ftqIdx_value_MPORT_2_addr = io_waddr_2;
  assign data_ftqIdx_value_MPORT_2_mask = 1'h1;
  assign data_ftqIdx_value_MPORT_2_en = io_wen_2;
  assign data_ftqIdx_value_MPORT_3_data = io_wdata_3_ftqIdx_value;
  assign data_ftqIdx_value_MPORT_3_addr = io_waddr_3;
  assign data_ftqIdx_value_MPORT_3_mask = 1'h1;
  assign data_ftqIdx_value_MPORT_3_en = io_wen_3;
  assign data_ftqOffset_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ftqOffset_io_rdata_0_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqOffset_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ftqOffset_io_rdata_1_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqOffset_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ftqOffset_io_rdata_2_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqOffset_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ftqOffset_io_rdata_3_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ftqOffset_MPORT_data = io_wdata_0_ftqOffset;
  assign data_ftqOffset_MPORT_addr = io_waddr_0;
  assign data_ftqOffset_MPORT_mask = 1'h1;
  assign data_ftqOffset_MPORT_en = io_wen_0;
  assign data_ftqOffset_MPORT_1_data = io_wdata_1_ftqOffset;
  assign data_ftqOffset_MPORT_1_addr = io_waddr_1;
  assign data_ftqOffset_MPORT_1_mask = 1'h1;
  assign data_ftqOffset_MPORT_1_en = io_wen_1;
  assign data_ftqOffset_MPORT_2_data = io_wdata_2_ftqOffset;
  assign data_ftqOffset_MPORT_2_addr = io_waddr_2;
  assign data_ftqOffset_MPORT_2_mask = 1'h1;
  assign data_ftqOffset_MPORT_2_en = io_wen_2;
  assign data_ftqOffset_MPORT_3_data = io_wdata_3_ftqOffset;
  assign data_ftqOffset_MPORT_3_addr = io_waddr_3;
  assign data_ftqOffset_MPORT_3_mask = 1'h1;
  assign data_ftqOffset_MPORT_3_en = io_wen_3;
  assign io_rdata_0_ldest = data_ldest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_rfWen = data_rfWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_fpWen = data_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_wflags = data_wflags_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_commitType = data_commitType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pdest = data_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_old_pdest = data_old_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqIdx_flag = data_ftqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqIdx_value = data_ftqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqOffset = data_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ldest = data_ldest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_rfWen = data_rfWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_fpWen = data_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_wflags = data_wflags_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_commitType = data_commitType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pdest = data_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_old_pdest = data_old_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqIdx_flag = data_ftqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqIdx_value = data_ftqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqOffset = data_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ldest = data_ldest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_rfWen = data_rfWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_fpWen = data_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_wflags = data_wflags_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_commitType = data_commitType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pdest = data_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_old_pdest = data_old_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqIdx_flag = data_ftqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqIdx_value = data_ftqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqOffset = data_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ldest = data_ldest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_rfWen = data_rfWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_fpWen = data_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_wflags = data_wflags_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_commitType = data_commitType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pdest = data_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_old_pdest = data_old_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqIdx_flag = data_ftqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqIdx_value = data_ftqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqOffset = data_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_ldest_MPORT_en & data_ldest_MPORT_mask) begin
      data_ldest[data_ldest_MPORT_addr] <= data_ldest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ldest_MPORT_1_en & data_ldest_MPORT_1_mask) begin
      data_ldest[data_ldest_MPORT_1_addr] <= data_ldest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ldest_MPORT_2_en & data_ldest_MPORT_2_mask) begin
      data_ldest[data_ldest_MPORT_2_addr] <= data_ldest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ldest_MPORT_3_en & data_ldest_MPORT_3_mask) begin
      data_ldest[data_ldest_MPORT_3_addr] <= data_ldest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rfWen_MPORT_en & data_rfWen_MPORT_mask) begin
      data_rfWen[data_rfWen_MPORT_addr] <= data_rfWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rfWen_MPORT_1_en & data_rfWen_MPORT_1_mask) begin
      data_rfWen[data_rfWen_MPORT_1_addr] <= data_rfWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rfWen_MPORT_2_en & data_rfWen_MPORT_2_mask) begin
      data_rfWen[data_rfWen_MPORT_2_addr] <= data_rfWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_rfWen_MPORT_3_en & data_rfWen_MPORT_3_mask) begin
      data_rfWen[data_rfWen_MPORT_3_addr] <= data_rfWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_fpWen_MPORT_en & data_fpWen_MPORT_mask) begin
      data_fpWen[data_fpWen_MPORT_addr] <= data_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_fpWen_MPORT_1_en & data_fpWen_MPORT_1_mask) begin
      data_fpWen[data_fpWen_MPORT_1_addr] <= data_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_fpWen_MPORT_2_en & data_fpWen_MPORT_2_mask) begin
      data_fpWen[data_fpWen_MPORT_2_addr] <= data_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_fpWen_MPORT_3_en & data_fpWen_MPORT_3_mask) begin
      data_fpWen[data_fpWen_MPORT_3_addr] <= data_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_wflags_MPORT_en & data_wflags_MPORT_mask) begin
      data_wflags[data_wflags_MPORT_addr] <= data_wflags_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_wflags_MPORT_1_en & data_wflags_MPORT_1_mask) begin
      data_wflags[data_wflags_MPORT_1_addr] <= data_wflags_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_wflags_MPORT_2_en & data_wflags_MPORT_2_mask) begin
      data_wflags[data_wflags_MPORT_2_addr] <= data_wflags_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_wflags_MPORT_3_en & data_wflags_MPORT_3_mask) begin
      data_wflags[data_wflags_MPORT_3_addr] <= data_wflags_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_commitType_MPORT_en & data_commitType_MPORT_mask) begin
      data_commitType[data_commitType_MPORT_addr] <= data_commitType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_commitType_MPORT_1_en & data_commitType_MPORT_1_mask) begin
      data_commitType[data_commitType_MPORT_1_addr] <= data_commitType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_commitType_MPORT_2_en & data_commitType_MPORT_2_mask) begin
      data_commitType[data_commitType_MPORT_2_addr] <= data_commitType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_commitType_MPORT_3_en & data_commitType_MPORT_3_mask) begin
      data_commitType[data_commitType_MPORT_3_addr] <= data_commitType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_en & data_pdest_MPORT_mask) begin
      data_pdest[data_pdest_MPORT_addr] <= data_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_1_en & data_pdest_MPORT_1_mask) begin
      data_pdest[data_pdest_MPORT_1_addr] <= data_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_2_en & data_pdest_MPORT_2_mask) begin
      data_pdest[data_pdest_MPORT_2_addr] <= data_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_3_en & data_pdest_MPORT_3_mask) begin
      data_pdest[data_pdest_MPORT_3_addr] <= data_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_old_pdest_MPORT_en & data_old_pdest_MPORT_mask) begin
      data_old_pdest[data_old_pdest_MPORT_addr] <= data_old_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_old_pdest_MPORT_1_en & data_old_pdest_MPORT_1_mask) begin
      data_old_pdest[data_old_pdest_MPORT_1_addr] <= data_old_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_old_pdest_MPORT_2_en & data_old_pdest_MPORT_2_mask) begin
      data_old_pdest[data_old_pdest_MPORT_2_addr] <= data_old_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_old_pdest_MPORT_3_en & data_old_pdest_MPORT_3_mask) begin
      data_old_pdest[data_old_pdest_MPORT_3_addr] <= data_old_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_flag_MPORT_en & data_ftqIdx_flag_MPORT_mask) begin
      data_ftqIdx_flag[data_ftqIdx_flag_MPORT_addr] <= data_ftqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_flag_MPORT_1_en & data_ftqIdx_flag_MPORT_1_mask) begin
      data_ftqIdx_flag[data_ftqIdx_flag_MPORT_1_addr] <= data_ftqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_flag_MPORT_2_en & data_ftqIdx_flag_MPORT_2_mask) begin
      data_ftqIdx_flag[data_ftqIdx_flag_MPORT_2_addr] <= data_ftqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_flag_MPORT_3_en & data_ftqIdx_flag_MPORT_3_mask) begin
      data_ftqIdx_flag[data_ftqIdx_flag_MPORT_3_addr] <= data_ftqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_value_MPORT_en & data_ftqIdx_value_MPORT_mask) begin
      data_ftqIdx_value[data_ftqIdx_value_MPORT_addr] <= data_ftqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_value_MPORT_1_en & data_ftqIdx_value_MPORT_1_mask) begin
      data_ftqIdx_value[data_ftqIdx_value_MPORT_1_addr] <= data_ftqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_value_MPORT_2_en & data_ftqIdx_value_MPORT_2_mask) begin
      data_ftqIdx_value[data_ftqIdx_value_MPORT_2_addr] <= data_ftqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqIdx_value_MPORT_3_en & data_ftqIdx_value_MPORT_3_mask) begin
      data_ftqIdx_value[data_ftqIdx_value_MPORT_3_addr] <= data_ftqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_en & data_ftqOffset_MPORT_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_addr] <= data_ftqOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_1_en & data_ftqOffset_MPORT_1_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_1_addr] <= data_ftqOffset_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_2_en & data_ftqOffset_MPORT_2_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_2_addr] <= data_ftqOffset_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_3_en & data_ftqOffset_MPORT_3_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_3_addr] <= data_ftqOffset_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
    raddr_1 <= io_raddr_1; // @[DataModuleTemplate.scala 67:35]
    raddr_2 <= io_raddr_2; // @[DataModuleTemplate.scala 67:35]
    raddr_3 <= io_raddr_3; // @[DataModuleTemplate.scala 67:35]
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
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_ldest[initvar] = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_rfWen[initvar] = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_fpWen[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_wflags[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_commitType[initvar] = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_pdest[initvar] = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_old_pdest[initvar] = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_ftqIdx_flag[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_ftqIdx_value[initvar] = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    data_ftqOffset[initvar] = _RAND_9[2:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  raddr_0 = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  raddr_1 = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  raddr_2 = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  raddr_3 = _RAND_13[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
