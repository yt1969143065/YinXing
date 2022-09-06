module SyncDataModuleTemplate_2(
  input         clock,
  input  [5:0]  io_raddr_0,
  input  [5:0]  io_raddr_1,
  input  [5:0]  io_raddr_2,
  output [2:0]  io_rdata_0_brSlots_0_offset,
  output        io_rdata_0_brSlots_0_valid,
  output [2:0]  io_rdata_0_tailSlot_offset,
  output        io_rdata_0_tailSlot_sharing,
  output        io_rdata_0_tailSlot_valid,
  output        io_rdata_0_isCall,
  output        io_rdata_0_isRet,
  output        io_rdata_0_isJalr,
  output [2:0]  io_rdata_1_brSlots_0_offset,
  output        io_rdata_1_brSlots_0_valid,
  output [2:0]  io_rdata_1_tailSlot_offset,
  output        io_rdata_1_tailSlot_sharing,
  output        io_rdata_1_tailSlot_valid,
  output        io_rdata_2_valid,
  output [2:0]  io_rdata_2_brSlots_0_offset,
  output [11:0] io_rdata_2_brSlots_0_lower,
  output [1:0]  io_rdata_2_brSlots_0_tarStat,
  output        io_rdata_2_brSlots_0_sharing,
  output        io_rdata_2_brSlots_0_valid,
  output [2:0]  io_rdata_2_tailSlot_offset,
  output [19:0] io_rdata_2_tailSlot_lower,
  output [1:0]  io_rdata_2_tailSlot_tarStat,
  output        io_rdata_2_tailSlot_sharing,
  output        io_rdata_2_tailSlot_valid,
  output [2:0]  io_rdata_2_pftAddr,
  output        io_rdata_2_carry,
  output        io_rdata_2_isCall,
  output        io_rdata_2_isRet,
  output        io_rdata_2_isJalr,
  output        io_rdata_2_last_may_be_rvi_call,
  output        io_rdata_2_always_taken_0,
  output        io_rdata_2_always_taken_1,
  input         io_wen_0,
  input  [5:0]  io_waddr_0,
  input         io_wdata_0_valid,
  input  [2:0]  io_wdata_0_brSlots_0_offset,
  input  [11:0] io_wdata_0_brSlots_0_lower,
  input  [1:0]  io_wdata_0_brSlots_0_tarStat,
  input         io_wdata_0_brSlots_0_sharing,
  input         io_wdata_0_brSlots_0_valid,
  input  [2:0]  io_wdata_0_tailSlot_offset,
  input  [19:0] io_wdata_0_tailSlot_lower,
  input  [1:0]  io_wdata_0_tailSlot_tarStat,
  input         io_wdata_0_tailSlot_sharing,
  input         io_wdata_0_tailSlot_valid,
  input  [2:0]  io_wdata_0_pftAddr,
  input         io_wdata_0_carry,
  input         io_wdata_0_isCall,
  input         io_wdata_0_isRet,
  input         io_wdata_0_isJalr,
  input         io_wdata_0_last_may_be_rvi_call,
  input         io_wdata_0_always_taken_0,
  input         io_wdata_0_always_taken_1
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
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_REG_INIT
  reg  data_valid [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_valid_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_valid_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_valid_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_valid_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_valid_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_brSlots_0_offset [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_offset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_offset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_brSlots_0_offset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_offset_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_offset_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_brSlots_0_offset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_offset_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_offset_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_brSlots_0_offset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_brSlots_0_offset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_offset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_offset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_offset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [11:0] data_brSlots_0_lower [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_lower_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_lower_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [11:0] data_brSlots_0_lower_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_lower_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_lower_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [11:0] data_brSlots_0_lower_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_lower_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_lower_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [11:0] data_brSlots_0_lower_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [11:0] data_brSlots_0_lower_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_lower_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_lower_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_lower_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_brSlots_0_tarStat [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_tarStat_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_tarStat_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_brSlots_0_tarStat_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_tarStat_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_tarStat_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_brSlots_0_tarStat_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_tarStat_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_tarStat_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_brSlots_0_tarStat_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_brSlots_0_tarStat_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_tarStat_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_tarStat_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_tarStat_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brSlots_0_sharing [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_sharing_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_sharing_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_sharing_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_sharing_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_sharing_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_brSlots_0_valid [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_valid_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_valid_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_valid_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_brSlots_0_valid_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_brSlots_0_valid_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_tailSlot_offset [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_offset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_offset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_tailSlot_offset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_offset_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_offset_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_tailSlot_offset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_offset_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_offset_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_tailSlot_offset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_tailSlot_offset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_offset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_offset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_offset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [19:0] data_tailSlot_lower [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_lower_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_lower_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_tailSlot_lower_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_lower_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_lower_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_tailSlot_lower_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_lower_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_lower_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_tailSlot_lower_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_tailSlot_lower_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_lower_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_lower_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_lower_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_tailSlot_tarStat [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_tarStat_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_tarStat_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_tailSlot_tarStat_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_tarStat_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_tarStat_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_tailSlot_tarStat_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_tarStat_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_tarStat_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_tailSlot_tarStat_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_tailSlot_tarStat_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_tarStat_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_tarStat_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_tarStat_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_tailSlot_sharing [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_sharing_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_sharing_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_sharing_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_sharing_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_sharing_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_tailSlot_valid [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_valid_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_valid_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_valid_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_tailSlot_valid_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_tailSlot_valid_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_pftAddr [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pftAddr_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_pftAddr_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_pftAddr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pftAddr_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_pftAddr_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_pftAddr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pftAddr_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_pftAddr_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_pftAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_pftAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_pftAddr_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pftAddr_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pftAddr_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_carry [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_carry_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_carry_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_carry_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_carry_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_carry_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isCall [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isCall_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isCall_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isCall_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isCall_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isCall_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isRet [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isRet_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isRet_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isRet_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isRet_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isRet_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_isJalr [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isJalr_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isJalr_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isJalr_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_isJalr_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_isJalr_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_last_may_be_rvi_call [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_last_may_be_rvi_call_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_last_may_be_rvi_call_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_last_may_be_rvi_call_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_last_may_be_rvi_call_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_last_may_be_rvi_call_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_always_taken_0 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_always_taken_1 [0:63]; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_always_taken_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_always_taken_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  assign data_valid_io_rdata_0_MPORT_en = 1'h1;
  assign data_valid_io_rdata_0_MPORT_addr = raddr_0;
  assign data_valid_io_rdata_0_MPORT_data = data_valid[data_valid_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_valid_io_rdata_1_MPORT_en = 1'h1;
  assign data_valid_io_rdata_1_MPORT_addr = raddr_1;
  assign data_valid_io_rdata_1_MPORT_data = data_valid[data_valid_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_valid_io_rdata_2_MPORT_en = 1'h1;
  assign data_valid_io_rdata_2_MPORT_addr = raddr_2;
  assign data_valid_io_rdata_2_MPORT_data = data_valid[data_valid_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_valid_MPORT_data = io_wdata_0_valid;
  assign data_valid_MPORT_addr = io_waddr_0;
  assign data_valid_MPORT_mask = 1'h1;
  assign data_valid_MPORT_en = io_wen_0;
  assign data_brSlots_0_offset_io_rdata_0_MPORT_en = 1'h1;
  assign data_brSlots_0_offset_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brSlots_0_offset_io_rdata_0_MPORT_data =
    data_brSlots_0_offset[data_brSlots_0_offset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_offset_io_rdata_1_MPORT_en = 1'h1;
  assign data_brSlots_0_offset_io_rdata_1_MPORT_addr = raddr_1;
  assign data_brSlots_0_offset_io_rdata_1_MPORT_data =
    data_brSlots_0_offset[data_brSlots_0_offset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_offset_io_rdata_2_MPORT_en = 1'h1;
  assign data_brSlots_0_offset_io_rdata_2_MPORT_addr = raddr_2;
  assign data_brSlots_0_offset_io_rdata_2_MPORT_data =
    data_brSlots_0_offset[data_brSlots_0_offset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_offset_MPORT_data = io_wdata_0_brSlots_0_offset;
  assign data_brSlots_0_offset_MPORT_addr = io_waddr_0;
  assign data_brSlots_0_offset_MPORT_mask = 1'h1;
  assign data_brSlots_0_offset_MPORT_en = io_wen_0;
  assign data_brSlots_0_lower_io_rdata_0_MPORT_en = 1'h1;
  assign data_brSlots_0_lower_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brSlots_0_lower_io_rdata_0_MPORT_data = data_brSlots_0_lower[data_brSlots_0_lower_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_lower_io_rdata_1_MPORT_en = 1'h1;
  assign data_brSlots_0_lower_io_rdata_1_MPORT_addr = raddr_1;
  assign data_brSlots_0_lower_io_rdata_1_MPORT_data = data_brSlots_0_lower[data_brSlots_0_lower_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_lower_io_rdata_2_MPORT_en = 1'h1;
  assign data_brSlots_0_lower_io_rdata_2_MPORT_addr = raddr_2;
  assign data_brSlots_0_lower_io_rdata_2_MPORT_data = data_brSlots_0_lower[data_brSlots_0_lower_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_lower_MPORT_data = io_wdata_0_brSlots_0_lower;
  assign data_brSlots_0_lower_MPORT_addr = io_waddr_0;
  assign data_brSlots_0_lower_MPORT_mask = 1'h1;
  assign data_brSlots_0_lower_MPORT_en = io_wen_0;
  assign data_brSlots_0_tarStat_io_rdata_0_MPORT_en = 1'h1;
  assign data_brSlots_0_tarStat_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brSlots_0_tarStat_io_rdata_0_MPORT_data =
    data_brSlots_0_tarStat[data_brSlots_0_tarStat_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_tarStat_io_rdata_1_MPORT_en = 1'h1;
  assign data_brSlots_0_tarStat_io_rdata_1_MPORT_addr = raddr_1;
  assign data_brSlots_0_tarStat_io_rdata_1_MPORT_data =
    data_brSlots_0_tarStat[data_brSlots_0_tarStat_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_tarStat_io_rdata_2_MPORT_en = 1'h1;
  assign data_brSlots_0_tarStat_io_rdata_2_MPORT_addr = raddr_2;
  assign data_brSlots_0_tarStat_io_rdata_2_MPORT_data =
    data_brSlots_0_tarStat[data_brSlots_0_tarStat_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_tarStat_MPORT_data = io_wdata_0_brSlots_0_tarStat;
  assign data_brSlots_0_tarStat_MPORT_addr = io_waddr_0;
  assign data_brSlots_0_tarStat_MPORT_mask = 1'h1;
  assign data_brSlots_0_tarStat_MPORT_en = io_wen_0;
  assign data_brSlots_0_sharing_io_rdata_0_MPORT_en = 1'h1;
  assign data_brSlots_0_sharing_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brSlots_0_sharing_io_rdata_0_MPORT_data =
    data_brSlots_0_sharing[data_brSlots_0_sharing_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_sharing_io_rdata_1_MPORT_en = 1'h1;
  assign data_brSlots_0_sharing_io_rdata_1_MPORT_addr = raddr_1;
  assign data_brSlots_0_sharing_io_rdata_1_MPORT_data =
    data_brSlots_0_sharing[data_brSlots_0_sharing_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_sharing_io_rdata_2_MPORT_en = 1'h1;
  assign data_brSlots_0_sharing_io_rdata_2_MPORT_addr = raddr_2;
  assign data_brSlots_0_sharing_io_rdata_2_MPORT_data =
    data_brSlots_0_sharing[data_brSlots_0_sharing_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_sharing_MPORT_data = io_wdata_0_brSlots_0_sharing;
  assign data_brSlots_0_sharing_MPORT_addr = io_waddr_0;
  assign data_brSlots_0_sharing_MPORT_mask = 1'h1;
  assign data_brSlots_0_sharing_MPORT_en = io_wen_0;
  assign data_brSlots_0_valid_io_rdata_0_MPORT_en = 1'h1;
  assign data_brSlots_0_valid_io_rdata_0_MPORT_addr = raddr_0;
  assign data_brSlots_0_valid_io_rdata_0_MPORT_data = data_brSlots_0_valid[data_brSlots_0_valid_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_valid_io_rdata_1_MPORT_en = 1'h1;
  assign data_brSlots_0_valid_io_rdata_1_MPORT_addr = raddr_1;
  assign data_brSlots_0_valid_io_rdata_1_MPORT_data = data_brSlots_0_valid[data_brSlots_0_valid_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_valid_io_rdata_2_MPORT_en = 1'h1;
  assign data_brSlots_0_valid_io_rdata_2_MPORT_addr = raddr_2;
  assign data_brSlots_0_valid_io_rdata_2_MPORT_data = data_brSlots_0_valid[data_brSlots_0_valid_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_brSlots_0_valid_MPORT_data = io_wdata_0_brSlots_0_valid;
  assign data_brSlots_0_valid_MPORT_addr = io_waddr_0;
  assign data_brSlots_0_valid_MPORT_mask = 1'h1;
  assign data_brSlots_0_valid_MPORT_en = io_wen_0;
  assign data_tailSlot_offset_io_rdata_0_MPORT_en = 1'h1;
  assign data_tailSlot_offset_io_rdata_0_MPORT_addr = raddr_0;
  assign data_tailSlot_offset_io_rdata_0_MPORT_data = data_tailSlot_offset[data_tailSlot_offset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_offset_io_rdata_1_MPORT_en = 1'h1;
  assign data_tailSlot_offset_io_rdata_1_MPORT_addr = raddr_1;
  assign data_tailSlot_offset_io_rdata_1_MPORT_data = data_tailSlot_offset[data_tailSlot_offset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_offset_io_rdata_2_MPORT_en = 1'h1;
  assign data_tailSlot_offset_io_rdata_2_MPORT_addr = raddr_2;
  assign data_tailSlot_offset_io_rdata_2_MPORT_data = data_tailSlot_offset[data_tailSlot_offset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_offset_MPORT_data = io_wdata_0_tailSlot_offset;
  assign data_tailSlot_offset_MPORT_addr = io_waddr_0;
  assign data_tailSlot_offset_MPORT_mask = 1'h1;
  assign data_tailSlot_offset_MPORT_en = io_wen_0;
  assign data_tailSlot_lower_io_rdata_0_MPORT_en = 1'h1;
  assign data_tailSlot_lower_io_rdata_0_MPORT_addr = raddr_0;
  assign data_tailSlot_lower_io_rdata_0_MPORT_data = data_tailSlot_lower[data_tailSlot_lower_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_lower_io_rdata_1_MPORT_en = 1'h1;
  assign data_tailSlot_lower_io_rdata_1_MPORT_addr = raddr_1;
  assign data_tailSlot_lower_io_rdata_1_MPORT_data = data_tailSlot_lower[data_tailSlot_lower_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_lower_io_rdata_2_MPORT_en = 1'h1;
  assign data_tailSlot_lower_io_rdata_2_MPORT_addr = raddr_2;
  assign data_tailSlot_lower_io_rdata_2_MPORT_data = data_tailSlot_lower[data_tailSlot_lower_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_lower_MPORT_data = io_wdata_0_tailSlot_lower;
  assign data_tailSlot_lower_MPORT_addr = io_waddr_0;
  assign data_tailSlot_lower_MPORT_mask = 1'h1;
  assign data_tailSlot_lower_MPORT_en = io_wen_0;
  assign data_tailSlot_tarStat_io_rdata_0_MPORT_en = 1'h1;
  assign data_tailSlot_tarStat_io_rdata_0_MPORT_addr = raddr_0;
  assign data_tailSlot_tarStat_io_rdata_0_MPORT_data =
    data_tailSlot_tarStat[data_tailSlot_tarStat_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_tarStat_io_rdata_1_MPORT_en = 1'h1;
  assign data_tailSlot_tarStat_io_rdata_1_MPORT_addr = raddr_1;
  assign data_tailSlot_tarStat_io_rdata_1_MPORT_data =
    data_tailSlot_tarStat[data_tailSlot_tarStat_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_tarStat_io_rdata_2_MPORT_en = 1'h1;
  assign data_tailSlot_tarStat_io_rdata_2_MPORT_addr = raddr_2;
  assign data_tailSlot_tarStat_io_rdata_2_MPORT_data =
    data_tailSlot_tarStat[data_tailSlot_tarStat_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_tarStat_MPORT_data = io_wdata_0_tailSlot_tarStat;
  assign data_tailSlot_tarStat_MPORT_addr = io_waddr_0;
  assign data_tailSlot_tarStat_MPORT_mask = 1'h1;
  assign data_tailSlot_tarStat_MPORT_en = io_wen_0;
  assign data_tailSlot_sharing_io_rdata_0_MPORT_en = 1'h1;
  assign data_tailSlot_sharing_io_rdata_0_MPORT_addr = raddr_0;
  assign data_tailSlot_sharing_io_rdata_0_MPORT_data =
    data_tailSlot_sharing[data_tailSlot_sharing_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_sharing_io_rdata_1_MPORT_en = 1'h1;
  assign data_tailSlot_sharing_io_rdata_1_MPORT_addr = raddr_1;
  assign data_tailSlot_sharing_io_rdata_1_MPORT_data =
    data_tailSlot_sharing[data_tailSlot_sharing_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_sharing_io_rdata_2_MPORT_en = 1'h1;
  assign data_tailSlot_sharing_io_rdata_2_MPORT_addr = raddr_2;
  assign data_tailSlot_sharing_io_rdata_2_MPORT_data =
    data_tailSlot_sharing[data_tailSlot_sharing_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_sharing_MPORT_data = io_wdata_0_tailSlot_sharing;
  assign data_tailSlot_sharing_MPORT_addr = io_waddr_0;
  assign data_tailSlot_sharing_MPORT_mask = 1'h1;
  assign data_tailSlot_sharing_MPORT_en = io_wen_0;
  assign data_tailSlot_valid_io_rdata_0_MPORT_en = 1'h1;
  assign data_tailSlot_valid_io_rdata_0_MPORT_addr = raddr_0;
  assign data_tailSlot_valid_io_rdata_0_MPORT_data = data_tailSlot_valid[data_tailSlot_valid_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_valid_io_rdata_1_MPORT_en = 1'h1;
  assign data_tailSlot_valid_io_rdata_1_MPORT_addr = raddr_1;
  assign data_tailSlot_valid_io_rdata_1_MPORT_data = data_tailSlot_valid[data_tailSlot_valid_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_valid_io_rdata_2_MPORT_en = 1'h1;
  assign data_tailSlot_valid_io_rdata_2_MPORT_addr = raddr_2;
  assign data_tailSlot_valid_io_rdata_2_MPORT_data = data_tailSlot_valid[data_tailSlot_valid_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_tailSlot_valid_MPORT_data = io_wdata_0_tailSlot_valid;
  assign data_tailSlot_valid_MPORT_addr = io_waddr_0;
  assign data_tailSlot_valid_MPORT_mask = 1'h1;
  assign data_tailSlot_valid_MPORT_en = io_wen_0;
  assign data_pftAddr_io_rdata_0_MPORT_en = 1'h1;
  assign data_pftAddr_io_rdata_0_MPORT_addr = raddr_0;
  assign data_pftAddr_io_rdata_0_MPORT_data = data_pftAddr[data_pftAddr_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pftAddr_io_rdata_1_MPORT_en = 1'h1;
  assign data_pftAddr_io_rdata_1_MPORT_addr = raddr_1;
  assign data_pftAddr_io_rdata_1_MPORT_data = data_pftAddr[data_pftAddr_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pftAddr_io_rdata_2_MPORT_en = 1'h1;
  assign data_pftAddr_io_rdata_2_MPORT_addr = raddr_2;
  assign data_pftAddr_io_rdata_2_MPORT_data = data_pftAddr[data_pftAddr_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pftAddr_MPORT_data = io_wdata_0_pftAddr;
  assign data_pftAddr_MPORT_addr = io_waddr_0;
  assign data_pftAddr_MPORT_mask = 1'h1;
  assign data_pftAddr_MPORT_en = io_wen_0;
  assign data_carry_io_rdata_0_MPORT_en = 1'h1;
  assign data_carry_io_rdata_0_MPORT_addr = raddr_0;
  assign data_carry_io_rdata_0_MPORT_data = data_carry[data_carry_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_carry_io_rdata_1_MPORT_en = 1'h1;
  assign data_carry_io_rdata_1_MPORT_addr = raddr_1;
  assign data_carry_io_rdata_1_MPORT_data = data_carry[data_carry_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_carry_io_rdata_2_MPORT_en = 1'h1;
  assign data_carry_io_rdata_2_MPORT_addr = raddr_2;
  assign data_carry_io_rdata_2_MPORT_data = data_carry[data_carry_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_carry_MPORT_data = io_wdata_0_carry;
  assign data_carry_MPORT_addr = io_waddr_0;
  assign data_carry_MPORT_mask = 1'h1;
  assign data_carry_MPORT_en = io_wen_0;
  assign data_isCall_io_rdata_0_MPORT_en = 1'h1;
  assign data_isCall_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isCall_io_rdata_0_MPORT_data = data_isCall[data_isCall_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isCall_io_rdata_1_MPORT_en = 1'h1;
  assign data_isCall_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isCall_io_rdata_1_MPORT_data = data_isCall[data_isCall_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isCall_io_rdata_2_MPORT_en = 1'h1;
  assign data_isCall_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isCall_io_rdata_2_MPORT_data = data_isCall[data_isCall_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isCall_MPORT_data = io_wdata_0_isCall;
  assign data_isCall_MPORT_addr = io_waddr_0;
  assign data_isCall_MPORT_mask = 1'h1;
  assign data_isCall_MPORT_en = io_wen_0;
  assign data_isRet_io_rdata_0_MPORT_en = 1'h1;
  assign data_isRet_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isRet_io_rdata_0_MPORT_data = data_isRet[data_isRet_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isRet_io_rdata_1_MPORT_en = 1'h1;
  assign data_isRet_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isRet_io_rdata_1_MPORT_data = data_isRet[data_isRet_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isRet_io_rdata_2_MPORT_en = 1'h1;
  assign data_isRet_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isRet_io_rdata_2_MPORT_data = data_isRet[data_isRet_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isRet_MPORT_data = io_wdata_0_isRet;
  assign data_isRet_MPORT_addr = io_waddr_0;
  assign data_isRet_MPORT_mask = 1'h1;
  assign data_isRet_MPORT_en = io_wen_0;
  assign data_isJalr_io_rdata_0_MPORT_en = 1'h1;
  assign data_isJalr_io_rdata_0_MPORT_addr = raddr_0;
  assign data_isJalr_io_rdata_0_MPORT_data = data_isJalr[data_isJalr_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isJalr_io_rdata_1_MPORT_en = 1'h1;
  assign data_isJalr_io_rdata_1_MPORT_addr = raddr_1;
  assign data_isJalr_io_rdata_1_MPORT_data = data_isJalr[data_isJalr_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isJalr_io_rdata_2_MPORT_en = 1'h1;
  assign data_isJalr_io_rdata_2_MPORT_addr = raddr_2;
  assign data_isJalr_io_rdata_2_MPORT_data = data_isJalr[data_isJalr_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_isJalr_MPORT_data = io_wdata_0_isJalr;
  assign data_isJalr_MPORT_addr = io_waddr_0;
  assign data_isJalr_MPORT_mask = 1'h1;
  assign data_isJalr_MPORT_en = io_wen_0;
  assign data_last_may_be_rvi_call_io_rdata_0_MPORT_en = 1'h1;
  assign data_last_may_be_rvi_call_io_rdata_0_MPORT_addr = raddr_0;
  assign data_last_may_be_rvi_call_io_rdata_0_MPORT_data =
    data_last_may_be_rvi_call[data_last_may_be_rvi_call_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_last_may_be_rvi_call_io_rdata_1_MPORT_en = 1'h1;
  assign data_last_may_be_rvi_call_io_rdata_1_MPORT_addr = raddr_1;
  assign data_last_may_be_rvi_call_io_rdata_1_MPORT_data =
    data_last_may_be_rvi_call[data_last_may_be_rvi_call_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_last_may_be_rvi_call_io_rdata_2_MPORT_en = 1'h1;
  assign data_last_may_be_rvi_call_io_rdata_2_MPORT_addr = raddr_2;
  assign data_last_may_be_rvi_call_io_rdata_2_MPORT_data =
    data_last_may_be_rvi_call[data_last_may_be_rvi_call_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_last_may_be_rvi_call_MPORT_data = io_wdata_0_last_may_be_rvi_call;
  assign data_last_may_be_rvi_call_MPORT_addr = io_waddr_0;
  assign data_last_may_be_rvi_call_MPORT_mask = 1'h1;
  assign data_last_may_be_rvi_call_MPORT_en = io_wen_0;
  assign data_always_taken_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_always_taken_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_always_taken_0_io_rdata_0_MPORT_data = data_always_taken_0[data_always_taken_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_always_taken_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_always_taken_0_io_rdata_1_MPORT_data = data_always_taken_0[data_always_taken_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_always_taken_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_always_taken_0_io_rdata_2_MPORT_data = data_always_taken_0[data_always_taken_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_0_MPORT_data = io_wdata_0_always_taken_0;
  assign data_always_taken_0_MPORT_addr = io_waddr_0;
  assign data_always_taken_0_MPORT_mask = 1'h1;
  assign data_always_taken_0_MPORT_en = io_wen_0;
  assign data_always_taken_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_always_taken_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_always_taken_1_io_rdata_0_MPORT_data = data_always_taken_1[data_always_taken_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_always_taken_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_always_taken_1_io_rdata_1_MPORT_data = data_always_taken_1[data_always_taken_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_always_taken_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_always_taken_1_io_rdata_2_MPORT_data = data_always_taken_1[data_always_taken_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_always_taken_1_MPORT_data = io_wdata_0_always_taken_1;
  assign data_always_taken_1_MPORT_addr = io_waddr_0;
  assign data_always_taken_1_MPORT_mask = 1'h1;
  assign data_always_taken_1_MPORT_en = io_wen_0;
  assign io_rdata_0_brSlots_0_offset = data_brSlots_0_offset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_brSlots_0_valid = data_brSlots_0_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_tailSlot_offset = data_tailSlot_offset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_tailSlot_sharing = data_tailSlot_sharing_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_tailSlot_valid = data_tailSlot_valid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isCall = data_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isRet = data_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_isJalr = data_isJalr_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_brSlots_0_offset = data_brSlots_0_offset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_brSlots_0_valid = data_brSlots_0_valid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_tailSlot_offset = data_tailSlot_offset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_tailSlot_sharing = data_tailSlot_sharing_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_tailSlot_valid = data_tailSlot_valid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_valid = data_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_brSlots_0_offset = data_brSlots_0_offset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_brSlots_0_lower = data_brSlots_0_lower_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_brSlots_0_tarStat = data_brSlots_0_tarStat_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_brSlots_0_sharing = data_brSlots_0_sharing_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_brSlots_0_valid = data_brSlots_0_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_tailSlot_offset = data_tailSlot_offset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_tailSlot_lower = data_tailSlot_lower_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_tailSlot_tarStat = data_tailSlot_tarStat_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_tailSlot_sharing = data_tailSlot_sharing_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_tailSlot_valid = data_tailSlot_valid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pftAddr = data_pftAddr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_carry = data_carry_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isCall = data_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isRet = data_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_isJalr = data_isJalr_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_last_may_be_rvi_call = data_last_may_be_rvi_call_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_always_taken_0 = data_always_taken_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_always_taken_1 = data_always_taken_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_valid_MPORT_en & data_valid_MPORT_mask) begin
      data_valid[data_valid_MPORT_addr] <= data_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brSlots_0_offset_MPORT_en & data_brSlots_0_offset_MPORT_mask) begin
      data_brSlots_0_offset[data_brSlots_0_offset_MPORT_addr] <= data_brSlots_0_offset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brSlots_0_lower_MPORT_en & data_brSlots_0_lower_MPORT_mask) begin
      data_brSlots_0_lower[data_brSlots_0_lower_MPORT_addr] <= data_brSlots_0_lower_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brSlots_0_tarStat_MPORT_en & data_brSlots_0_tarStat_MPORT_mask) begin
      data_brSlots_0_tarStat[data_brSlots_0_tarStat_MPORT_addr] <= data_brSlots_0_tarStat_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brSlots_0_sharing_MPORT_en & data_brSlots_0_sharing_MPORT_mask) begin
      data_brSlots_0_sharing[data_brSlots_0_sharing_MPORT_addr] <= data_brSlots_0_sharing_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_brSlots_0_valid_MPORT_en & data_brSlots_0_valid_MPORT_mask) begin
      data_brSlots_0_valid[data_brSlots_0_valid_MPORT_addr] <= data_brSlots_0_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_tailSlot_offset_MPORT_en & data_tailSlot_offset_MPORT_mask) begin
      data_tailSlot_offset[data_tailSlot_offset_MPORT_addr] <= data_tailSlot_offset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_tailSlot_lower_MPORT_en & data_tailSlot_lower_MPORT_mask) begin
      data_tailSlot_lower[data_tailSlot_lower_MPORT_addr] <= data_tailSlot_lower_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_tailSlot_tarStat_MPORT_en & data_tailSlot_tarStat_MPORT_mask) begin
      data_tailSlot_tarStat[data_tailSlot_tarStat_MPORT_addr] <= data_tailSlot_tarStat_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_tailSlot_sharing_MPORT_en & data_tailSlot_sharing_MPORT_mask) begin
      data_tailSlot_sharing[data_tailSlot_sharing_MPORT_addr] <= data_tailSlot_sharing_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_tailSlot_valid_MPORT_en & data_tailSlot_valid_MPORT_mask) begin
      data_tailSlot_valid[data_tailSlot_valid_MPORT_addr] <= data_tailSlot_valid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pftAddr_MPORT_en & data_pftAddr_MPORT_mask) begin
      data_pftAddr[data_pftAddr_MPORT_addr] <= data_pftAddr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_carry_MPORT_en & data_carry_MPORT_mask) begin
      data_carry[data_carry_MPORT_addr] <= data_carry_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isCall_MPORT_en & data_isCall_MPORT_mask) begin
      data_isCall[data_isCall_MPORT_addr] <= data_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isRet_MPORT_en & data_isRet_MPORT_mask) begin
      data_isRet[data_isRet_MPORT_addr] <= data_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_isJalr_MPORT_en & data_isJalr_MPORT_mask) begin
      data_isJalr[data_isJalr_MPORT_addr] <= data_isJalr_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_last_may_be_rvi_call_MPORT_en & data_last_may_be_rvi_call_MPORT_mask) begin
      data_last_may_be_rvi_call[data_last_may_be_rvi_call_MPORT_addr] <= data_last_may_be_rvi_call_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_always_taken_0_MPORT_en & data_always_taken_0_MPORT_mask) begin
      data_always_taken_0[data_always_taken_0_MPORT_addr] <= data_always_taken_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_always_taken_1_MPORT_en & data_always_taken_1_MPORT_mask) begin
      data_always_taken_1[data_always_taken_1_MPORT_addr] <= data_always_taken_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
    raddr_1 <= io_raddr_1; // @[DataModuleTemplate.scala 67:35]
    raddr_2 <= io_raddr_2; // @[DataModuleTemplate.scala 67:35]
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
    data_valid[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brSlots_0_offset[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brSlots_0_lower[initvar] = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brSlots_0_tarStat[initvar] = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brSlots_0_sharing[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_brSlots_0_valid[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_tailSlot_offset[initvar] = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_tailSlot_lower[initvar] = _RAND_7[19:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_tailSlot_tarStat[initvar] = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_tailSlot_sharing[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_tailSlot_valid[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_pftAddr[initvar] = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_carry[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isCall[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isRet[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_isJalr[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_last_may_be_rvi_call[initvar] = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_always_taken_0[initvar] = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_always_taken_1[initvar] = _RAND_18[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  raddr_0 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  raddr_1 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  raddr_2 = _RAND_21[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
