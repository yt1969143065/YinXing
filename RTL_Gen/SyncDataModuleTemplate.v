module SyncDataModuleTemplate(
  input         clock,
  input  [4:0]  io_raddr_0,
  input  [4:0]  io_raddr_1,
  input  [4:0]  io_raddr_2,
  input  [4:0]  io_raddr_3,
  output [31:0] io_rdata_0_inst,
  output [9:0]  io_rdata_0_foldpc,
  output        io_rdata_0_pd_isRVC,
  output [1:0]  io_rdata_0_pd_brType,
  output        io_rdata_0_pd_isCall,
  output        io_rdata_0_pd_isRet,
  output        io_rdata_0_pred_taken,
  output        io_rdata_0_ftqPtr_flag,
  output [5:0]  io_rdata_0_ftqPtr_value,
  output [2:0]  io_rdata_0_ftqOffset,
  output        io_rdata_0_ipf,
  output        io_rdata_0_acf,
  output        io_rdata_0_crossPageIPFFix,
  output        io_rdata_0_triggered_frontendHit_0,
  output        io_rdata_0_triggered_frontendHit_1,
  output        io_rdata_0_triggered_frontendHit_2,
  output        io_rdata_0_triggered_frontendHit_3,
  output        io_rdata_0_triggered_backendEn_0,
  output        io_rdata_0_triggered_backendEn_1,
  output        io_rdata_0_triggered_backendHit_0,
  output        io_rdata_0_triggered_backendHit_1,
  output        io_rdata_0_triggered_backendHit_2,
  output        io_rdata_0_triggered_backendHit_3,
  output        io_rdata_0_triggered_backendHit_4,
  output        io_rdata_0_triggered_backendHit_5,
  output [31:0] io_rdata_1_inst,
  output [9:0]  io_rdata_1_foldpc,
  output        io_rdata_1_pd_isRVC,
  output [1:0]  io_rdata_1_pd_brType,
  output        io_rdata_1_pd_isCall,
  output        io_rdata_1_pd_isRet,
  output        io_rdata_1_pred_taken,
  output        io_rdata_1_ftqPtr_flag,
  output [5:0]  io_rdata_1_ftqPtr_value,
  output [2:0]  io_rdata_1_ftqOffset,
  output        io_rdata_1_ipf,
  output        io_rdata_1_acf,
  output        io_rdata_1_crossPageIPFFix,
  output        io_rdata_1_triggered_frontendHit_0,
  output        io_rdata_1_triggered_frontendHit_1,
  output        io_rdata_1_triggered_frontendHit_2,
  output        io_rdata_1_triggered_frontendHit_3,
  output        io_rdata_1_triggered_backendEn_0,
  output        io_rdata_1_triggered_backendEn_1,
  output        io_rdata_1_triggered_backendHit_0,
  output        io_rdata_1_triggered_backendHit_1,
  output        io_rdata_1_triggered_backendHit_2,
  output        io_rdata_1_triggered_backendHit_3,
  output        io_rdata_1_triggered_backendHit_4,
  output        io_rdata_1_triggered_backendHit_5,
  output [31:0] io_rdata_2_inst,
  output [9:0]  io_rdata_2_foldpc,
  output        io_rdata_2_pd_isRVC,
  output [1:0]  io_rdata_2_pd_brType,
  output        io_rdata_2_pd_isCall,
  output        io_rdata_2_pd_isRet,
  output        io_rdata_2_pred_taken,
  output        io_rdata_2_ftqPtr_flag,
  output [5:0]  io_rdata_2_ftqPtr_value,
  output [2:0]  io_rdata_2_ftqOffset,
  output        io_rdata_2_ipf,
  output        io_rdata_2_acf,
  output        io_rdata_2_crossPageIPFFix,
  output        io_rdata_2_triggered_frontendHit_0,
  output        io_rdata_2_triggered_frontendHit_1,
  output        io_rdata_2_triggered_frontendHit_2,
  output        io_rdata_2_triggered_frontendHit_3,
  output        io_rdata_2_triggered_backendEn_0,
  output        io_rdata_2_triggered_backendEn_1,
  output        io_rdata_2_triggered_backendHit_0,
  output        io_rdata_2_triggered_backendHit_1,
  output        io_rdata_2_triggered_backendHit_2,
  output        io_rdata_2_triggered_backendHit_3,
  output        io_rdata_2_triggered_backendHit_4,
  output        io_rdata_2_triggered_backendHit_5,
  output [31:0] io_rdata_3_inst,
  output [9:0]  io_rdata_3_foldpc,
  output        io_rdata_3_pd_isRVC,
  output [1:0]  io_rdata_3_pd_brType,
  output        io_rdata_3_pd_isCall,
  output        io_rdata_3_pd_isRet,
  output        io_rdata_3_pred_taken,
  output        io_rdata_3_ftqPtr_flag,
  output [5:0]  io_rdata_3_ftqPtr_value,
  output [2:0]  io_rdata_3_ftqOffset,
  output        io_rdata_3_ipf,
  output        io_rdata_3_acf,
  output        io_rdata_3_crossPageIPFFix,
  output        io_rdata_3_triggered_frontendHit_0,
  output        io_rdata_3_triggered_frontendHit_1,
  output        io_rdata_3_triggered_frontendHit_2,
  output        io_rdata_3_triggered_frontendHit_3,
  output        io_rdata_3_triggered_backendEn_0,
  output        io_rdata_3_triggered_backendEn_1,
  output        io_rdata_3_triggered_backendHit_0,
  output        io_rdata_3_triggered_backendHit_1,
  output        io_rdata_3_triggered_backendHit_2,
  output        io_rdata_3_triggered_backendHit_3,
  output        io_rdata_3_triggered_backendHit_4,
  output        io_rdata_3_triggered_backendHit_5,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input         io_wen_6,
  input         io_wen_7,
  input  [4:0]  io_waddr_0,
  input  [4:0]  io_waddr_1,
  input  [4:0]  io_waddr_2,
  input  [4:0]  io_waddr_3,
  input  [4:0]  io_waddr_4,
  input  [4:0]  io_waddr_5,
  input  [4:0]  io_waddr_6,
  input  [4:0]  io_waddr_7,
  input  [31:0] io_wdata_0_inst,
  input  [9:0]  io_wdata_0_foldpc,
  input         io_wdata_0_pd_isRVC,
  input  [1:0]  io_wdata_0_pd_brType,
  input         io_wdata_0_pd_isCall,
  input         io_wdata_0_pd_isRet,
  input         io_wdata_0_pred_taken,
  input         io_wdata_0_ftqPtr_flag,
  input  [5:0]  io_wdata_0_ftqPtr_value,
  input  [2:0]  io_wdata_0_ftqOffset,
  input         io_wdata_0_ipf,
  input         io_wdata_0_acf,
  input         io_wdata_0_crossPageIPFFix,
  input         io_wdata_0_triggered_frontendHit_0,
  input         io_wdata_0_triggered_frontendHit_1,
  input         io_wdata_0_triggered_frontendHit_2,
  input         io_wdata_0_triggered_frontendHit_3,
  input         io_wdata_0_triggered_backendEn_0,
  input         io_wdata_0_triggered_backendEn_1,
  input  [31:0] io_wdata_1_inst,
  input  [9:0]  io_wdata_1_foldpc,
  input         io_wdata_1_pd_isRVC,
  input  [1:0]  io_wdata_1_pd_brType,
  input         io_wdata_1_pd_isCall,
  input         io_wdata_1_pd_isRet,
  input         io_wdata_1_pred_taken,
  input         io_wdata_1_ftqPtr_flag,
  input  [5:0]  io_wdata_1_ftqPtr_value,
  input  [2:0]  io_wdata_1_ftqOffset,
  input         io_wdata_1_ipf,
  input         io_wdata_1_acf,
  input         io_wdata_1_crossPageIPFFix,
  input         io_wdata_1_triggered_frontendHit_0,
  input         io_wdata_1_triggered_frontendHit_1,
  input         io_wdata_1_triggered_frontendHit_2,
  input         io_wdata_1_triggered_frontendHit_3,
  input         io_wdata_1_triggered_backendEn_0,
  input         io_wdata_1_triggered_backendEn_1,
  input  [31:0] io_wdata_2_inst,
  input  [9:0]  io_wdata_2_foldpc,
  input         io_wdata_2_pd_isRVC,
  input  [1:0]  io_wdata_2_pd_brType,
  input         io_wdata_2_pd_isCall,
  input         io_wdata_2_pd_isRet,
  input         io_wdata_2_pred_taken,
  input         io_wdata_2_ftqPtr_flag,
  input  [5:0]  io_wdata_2_ftqPtr_value,
  input  [2:0]  io_wdata_2_ftqOffset,
  input         io_wdata_2_ipf,
  input         io_wdata_2_acf,
  input         io_wdata_2_crossPageIPFFix,
  input         io_wdata_2_triggered_frontendHit_0,
  input         io_wdata_2_triggered_frontendHit_1,
  input         io_wdata_2_triggered_frontendHit_2,
  input         io_wdata_2_triggered_frontendHit_3,
  input         io_wdata_2_triggered_backendEn_0,
  input         io_wdata_2_triggered_backendEn_1,
  input  [31:0] io_wdata_3_inst,
  input  [9:0]  io_wdata_3_foldpc,
  input         io_wdata_3_pd_isRVC,
  input  [1:0]  io_wdata_3_pd_brType,
  input         io_wdata_3_pd_isCall,
  input         io_wdata_3_pd_isRet,
  input         io_wdata_3_pred_taken,
  input         io_wdata_3_ftqPtr_flag,
  input  [5:0]  io_wdata_3_ftqPtr_value,
  input  [2:0]  io_wdata_3_ftqOffset,
  input         io_wdata_3_ipf,
  input         io_wdata_3_acf,
  input         io_wdata_3_crossPageIPFFix,
  input         io_wdata_3_triggered_frontendHit_0,
  input         io_wdata_3_triggered_frontendHit_1,
  input         io_wdata_3_triggered_frontendHit_2,
  input         io_wdata_3_triggered_frontendHit_3,
  input         io_wdata_3_triggered_backendEn_0,
  input         io_wdata_3_triggered_backendEn_1,
  input  [31:0] io_wdata_4_inst,
  input  [9:0]  io_wdata_4_foldpc,
  input         io_wdata_4_pd_isRVC,
  input  [1:0]  io_wdata_4_pd_brType,
  input         io_wdata_4_pd_isCall,
  input         io_wdata_4_pd_isRet,
  input         io_wdata_4_pred_taken,
  input         io_wdata_4_ftqPtr_flag,
  input  [5:0]  io_wdata_4_ftqPtr_value,
  input  [2:0]  io_wdata_4_ftqOffset,
  input         io_wdata_4_ipf,
  input         io_wdata_4_acf,
  input         io_wdata_4_crossPageIPFFix,
  input         io_wdata_4_triggered_frontendHit_0,
  input         io_wdata_4_triggered_frontendHit_1,
  input         io_wdata_4_triggered_frontendHit_2,
  input         io_wdata_4_triggered_frontendHit_3,
  input         io_wdata_4_triggered_backendEn_0,
  input         io_wdata_4_triggered_backendEn_1,
  input  [31:0] io_wdata_5_inst,
  input  [9:0]  io_wdata_5_foldpc,
  input         io_wdata_5_pd_isRVC,
  input  [1:0]  io_wdata_5_pd_brType,
  input         io_wdata_5_pd_isCall,
  input         io_wdata_5_pd_isRet,
  input         io_wdata_5_pred_taken,
  input         io_wdata_5_ftqPtr_flag,
  input  [5:0]  io_wdata_5_ftqPtr_value,
  input  [2:0]  io_wdata_5_ftqOffset,
  input         io_wdata_5_ipf,
  input         io_wdata_5_acf,
  input         io_wdata_5_crossPageIPFFix,
  input         io_wdata_5_triggered_frontendHit_0,
  input         io_wdata_5_triggered_frontendHit_1,
  input         io_wdata_5_triggered_frontendHit_2,
  input         io_wdata_5_triggered_frontendHit_3,
  input         io_wdata_5_triggered_backendEn_0,
  input         io_wdata_5_triggered_backendEn_1,
  input  [31:0] io_wdata_6_inst,
  input  [9:0]  io_wdata_6_foldpc,
  input         io_wdata_6_pd_isRVC,
  input  [1:0]  io_wdata_6_pd_brType,
  input         io_wdata_6_pd_isCall,
  input         io_wdata_6_pd_isRet,
  input         io_wdata_6_pred_taken,
  input         io_wdata_6_ftqPtr_flag,
  input  [5:0]  io_wdata_6_ftqPtr_value,
  input  [2:0]  io_wdata_6_ftqOffset,
  input         io_wdata_6_ipf,
  input         io_wdata_6_acf,
  input         io_wdata_6_crossPageIPFFix,
  input         io_wdata_6_triggered_frontendHit_0,
  input         io_wdata_6_triggered_frontendHit_1,
  input         io_wdata_6_triggered_frontendHit_2,
  input         io_wdata_6_triggered_frontendHit_3,
  input         io_wdata_6_triggered_backendEn_0,
  input         io_wdata_6_triggered_backendEn_1,
  input  [31:0] io_wdata_7_inst,
  input  [9:0]  io_wdata_7_foldpc,
  input         io_wdata_7_pd_isRVC,
  input  [1:0]  io_wdata_7_pd_brType,
  input         io_wdata_7_pd_isCall,
  input         io_wdata_7_pd_isRet,
  input         io_wdata_7_pred_taken,
  input         io_wdata_7_ftqPtr_flag,
  input  [5:0]  io_wdata_7_ftqPtr_value,
  input  [2:0]  io_wdata_7_ftqOffset,
  input         io_wdata_7_ipf,
  input         io_wdata_7_acf,
  input         io_wdata_7_crossPageIPFFix,
  input         io_wdata_7_triggered_frontendHit_0,
  input         io_wdata_7_triggered_frontendHit_1,
  input         io_wdata_7_triggered_frontendHit_2,
  input         io_wdata_7_triggered_frontendHit_3,
  input         io_wdata_7_triggered_backendEn_0,
  input         io_wdata_7_triggered_backendEn_1
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_120;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] data_inst [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire [31:0] data_inst_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_inst_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_inst_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg [9:0] data_foldpc [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_foldpc_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_foldpc_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_foldpc_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_pd_isRVC [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRVC_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRVC_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_pd_brType [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_pd_brType_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_brType_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_brType_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_pd_isCall [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isCall_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isCall_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_pd_isRet [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pd_isRet_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pd_isRet_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_pred_taken [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_pred_taken_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pred_taken_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ftqPtr_flag [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_flag_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_flag_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] data_ftqPtr_value [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_ftqPtr_value_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqPtr_value_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqPtr_value_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_ftqOffset [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ftqOffset_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ftqOffset_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ftqOffset_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ipf [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_ipf_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ipf_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_acf [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_acf_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_acf_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_crossPageIPFFix [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_crossPageIPFFix_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_crossPageIPFFix_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_frontendHit_0 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_0_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_0_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_frontendHit_1 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_1_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_1_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_frontendHit_2 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_2_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_2_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_frontendHit_3 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_frontendHit_3_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_frontendHit_3_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendEn_0 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_0_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_0_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendEn_1 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendEn_1_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendEn_1_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_0 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_0_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_0_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_1 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_1_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_1_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_2 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_2_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_2_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_3 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_3_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_3_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_4 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_4_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_4_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_triggered_backendHit_5 [0:23]; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_4_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_4_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_4_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_5_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_5_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_5_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_6_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_6_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_6_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_triggered_backendHit_5_MPORT_7_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_7_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_triggered_backendHit_5_MPORT_7_en; // @[DataModuleTemplate.scala 64:17]
  reg [4:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [4:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [4:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  reg [4:0] raddr_3; // @[DataModuleTemplate.scala 67:35]
  assign data_inst_io_rdata_0_MPORT_en = 1'h1;
  assign data_inst_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_0_MPORT_data = data_inst[data_inst_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_inst_io_rdata_0_MPORT_data = data_inst_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_1[31:0] :
    data_inst[data_inst_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_1_MPORT_en = 1'h1;
  assign data_inst_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_1_MPORT_data = data_inst[data_inst_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_inst_io_rdata_1_MPORT_data = data_inst_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_2[31:0] :
    data_inst[data_inst_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_2_MPORT_en = 1'h1;
  assign data_inst_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_2_MPORT_data = data_inst[data_inst_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_inst_io_rdata_2_MPORT_data = data_inst_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_3[31:0] :
    data_inst[data_inst_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_3_MPORT_en = 1'h1;
  assign data_inst_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_io_rdata_3_MPORT_data = data_inst[data_inst_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_inst_io_rdata_3_MPORT_data = data_inst_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_4[31:0] :
    data_inst[data_inst_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_inst_MPORT_data = io_wdata_0_inst;
  assign data_inst_MPORT_addr = io_waddr_0;
  assign data_inst_MPORT_mask = 1'h1;
  assign data_inst_MPORT_en = io_wen_0;
  assign data_inst_MPORT_1_data = io_wdata_1_inst;
  assign data_inst_MPORT_1_addr = io_waddr_1;
  assign data_inst_MPORT_1_mask = 1'h1;
  assign data_inst_MPORT_1_en = io_wen_1;
  assign data_inst_MPORT_2_data = io_wdata_2_inst;
  assign data_inst_MPORT_2_addr = io_waddr_2;
  assign data_inst_MPORT_2_mask = 1'h1;
  assign data_inst_MPORT_2_en = io_wen_2;
  assign data_inst_MPORT_3_data = io_wdata_3_inst;
  assign data_inst_MPORT_3_addr = io_waddr_3;
  assign data_inst_MPORT_3_mask = 1'h1;
  assign data_inst_MPORT_3_en = io_wen_3;
  assign data_inst_MPORT_4_data = io_wdata_4_inst;
  assign data_inst_MPORT_4_addr = io_waddr_4;
  assign data_inst_MPORT_4_mask = 1'h1;
  assign data_inst_MPORT_4_en = io_wen_4;
  assign data_inst_MPORT_5_data = io_wdata_5_inst;
  assign data_inst_MPORT_5_addr = io_waddr_5;
  assign data_inst_MPORT_5_mask = 1'h1;
  assign data_inst_MPORT_5_en = io_wen_5;
  assign data_inst_MPORT_6_data = io_wdata_6_inst;
  assign data_inst_MPORT_6_addr = io_waddr_6;
  assign data_inst_MPORT_6_mask = 1'h1;
  assign data_inst_MPORT_6_en = io_wen_6;
  assign data_inst_MPORT_7_data = io_wdata_7_inst;
  assign data_inst_MPORT_7_addr = io_waddr_7;
  assign data_inst_MPORT_7_mask = 1'h1;
  assign data_inst_MPORT_7_en = io_wen_7;
  assign data_foldpc_io_rdata_0_MPORT_en = 1'h1;
  assign data_foldpc_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_0_MPORT_data = data_foldpc[data_foldpc_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_foldpc_io_rdata_0_MPORT_data = data_foldpc_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_6[9:0] :
    data_foldpc[data_foldpc_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_1_MPORT_en = 1'h1;
  assign data_foldpc_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_1_MPORT_data = data_foldpc[data_foldpc_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_foldpc_io_rdata_1_MPORT_data = data_foldpc_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_7[9:0] :
    data_foldpc[data_foldpc_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_2_MPORT_en = 1'h1;
  assign data_foldpc_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_2_MPORT_data = data_foldpc[data_foldpc_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_foldpc_io_rdata_2_MPORT_data = data_foldpc_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_8[9:0] :
    data_foldpc[data_foldpc_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_3_MPORT_en = 1'h1;
  assign data_foldpc_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_io_rdata_3_MPORT_data = data_foldpc[data_foldpc_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_foldpc_io_rdata_3_MPORT_data = data_foldpc_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_9[9:0] :
    data_foldpc[data_foldpc_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_foldpc_MPORT_data = io_wdata_0_foldpc;
  assign data_foldpc_MPORT_addr = io_waddr_0;
  assign data_foldpc_MPORT_mask = 1'h1;
  assign data_foldpc_MPORT_en = io_wen_0;
  assign data_foldpc_MPORT_1_data = io_wdata_1_foldpc;
  assign data_foldpc_MPORT_1_addr = io_waddr_1;
  assign data_foldpc_MPORT_1_mask = 1'h1;
  assign data_foldpc_MPORT_1_en = io_wen_1;
  assign data_foldpc_MPORT_2_data = io_wdata_2_foldpc;
  assign data_foldpc_MPORT_2_addr = io_waddr_2;
  assign data_foldpc_MPORT_2_mask = 1'h1;
  assign data_foldpc_MPORT_2_en = io_wen_2;
  assign data_foldpc_MPORT_3_data = io_wdata_3_foldpc;
  assign data_foldpc_MPORT_3_addr = io_waddr_3;
  assign data_foldpc_MPORT_3_mask = 1'h1;
  assign data_foldpc_MPORT_3_en = io_wen_3;
  assign data_foldpc_MPORT_4_data = io_wdata_4_foldpc;
  assign data_foldpc_MPORT_4_addr = io_waddr_4;
  assign data_foldpc_MPORT_4_mask = 1'h1;
  assign data_foldpc_MPORT_4_en = io_wen_4;
  assign data_foldpc_MPORT_5_data = io_wdata_5_foldpc;
  assign data_foldpc_MPORT_5_addr = io_waddr_5;
  assign data_foldpc_MPORT_5_mask = 1'h1;
  assign data_foldpc_MPORT_5_en = io_wen_5;
  assign data_foldpc_MPORT_6_data = io_wdata_6_foldpc;
  assign data_foldpc_MPORT_6_addr = io_waddr_6;
  assign data_foldpc_MPORT_6_mask = 1'h1;
  assign data_foldpc_MPORT_6_en = io_wen_6;
  assign data_foldpc_MPORT_7_data = io_wdata_7_foldpc;
  assign data_foldpc_MPORT_7_addr = io_waddr_7;
  assign data_foldpc_MPORT_7_mask = 1'h1;
  assign data_foldpc_MPORT_7_en = io_wen_7;
  assign data_pd_isRVC_io_rdata_0_MPORT_en = 1'h1;
  assign data_pd_isRVC_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_0_MPORT_data = data_pd_isRVC[data_pd_isRVC_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRVC_io_rdata_0_MPORT_data = data_pd_isRVC_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_11[0:0] :
    data_pd_isRVC[data_pd_isRVC_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_1_MPORT_en = 1'h1;
  assign data_pd_isRVC_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_1_MPORT_data = data_pd_isRVC[data_pd_isRVC_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRVC_io_rdata_1_MPORT_data = data_pd_isRVC_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_12[0:0] :
    data_pd_isRVC[data_pd_isRVC_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_2_MPORT_en = 1'h1;
  assign data_pd_isRVC_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_2_MPORT_data = data_pd_isRVC[data_pd_isRVC_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRVC_io_rdata_2_MPORT_data = data_pd_isRVC_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_13[0:0] :
    data_pd_isRVC[data_pd_isRVC_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_3_MPORT_en = 1'h1;
  assign data_pd_isRVC_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_io_rdata_3_MPORT_data = data_pd_isRVC[data_pd_isRVC_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRVC_io_rdata_3_MPORT_data = data_pd_isRVC_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_14[0:0] :
    data_pd_isRVC[data_pd_isRVC_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRVC_MPORT_data = io_wdata_0_pd_isRVC;
  assign data_pd_isRVC_MPORT_addr = io_waddr_0;
  assign data_pd_isRVC_MPORT_mask = 1'h1;
  assign data_pd_isRVC_MPORT_en = io_wen_0;
  assign data_pd_isRVC_MPORT_1_data = io_wdata_1_pd_isRVC;
  assign data_pd_isRVC_MPORT_1_addr = io_waddr_1;
  assign data_pd_isRVC_MPORT_1_mask = 1'h1;
  assign data_pd_isRVC_MPORT_1_en = io_wen_1;
  assign data_pd_isRVC_MPORT_2_data = io_wdata_2_pd_isRVC;
  assign data_pd_isRVC_MPORT_2_addr = io_waddr_2;
  assign data_pd_isRVC_MPORT_2_mask = 1'h1;
  assign data_pd_isRVC_MPORT_2_en = io_wen_2;
  assign data_pd_isRVC_MPORT_3_data = io_wdata_3_pd_isRVC;
  assign data_pd_isRVC_MPORT_3_addr = io_waddr_3;
  assign data_pd_isRVC_MPORT_3_mask = 1'h1;
  assign data_pd_isRVC_MPORT_3_en = io_wen_3;
  assign data_pd_isRVC_MPORT_4_data = io_wdata_4_pd_isRVC;
  assign data_pd_isRVC_MPORT_4_addr = io_waddr_4;
  assign data_pd_isRVC_MPORT_4_mask = 1'h1;
  assign data_pd_isRVC_MPORT_4_en = io_wen_4;
  assign data_pd_isRVC_MPORT_5_data = io_wdata_5_pd_isRVC;
  assign data_pd_isRVC_MPORT_5_addr = io_waddr_5;
  assign data_pd_isRVC_MPORT_5_mask = 1'h1;
  assign data_pd_isRVC_MPORT_5_en = io_wen_5;
  assign data_pd_isRVC_MPORT_6_data = io_wdata_6_pd_isRVC;
  assign data_pd_isRVC_MPORT_6_addr = io_waddr_6;
  assign data_pd_isRVC_MPORT_6_mask = 1'h1;
  assign data_pd_isRVC_MPORT_6_en = io_wen_6;
  assign data_pd_isRVC_MPORT_7_data = io_wdata_7_pd_isRVC;
  assign data_pd_isRVC_MPORT_7_addr = io_waddr_7;
  assign data_pd_isRVC_MPORT_7_mask = 1'h1;
  assign data_pd_isRVC_MPORT_7_en = io_wen_7;
  assign data_pd_brType_io_rdata_0_MPORT_en = 1'h1;
  assign data_pd_brType_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_0_MPORT_data = data_pd_brType[data_pd_brType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_brType_io_rdata_0_MPORT_data = data_pd_brType_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_16[1:0] :
    data_pd_brType[data_pd_brType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_1_MPORT_en = 1'h1;
  assign data_pd_brType_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_1_MPORT_data = data_pd_brType[data_pd_brType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_brType_io_rdata_1_MPORT_data = data_pd_brType_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_17[1:0] :
    data_pd_brType[data_pd_brType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_2_MPORT_en = 1'h1;
  assign data_pd_brType_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_2_MPORT_data = data_pd_brType[data_pd_brType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_brType_io_rdata_2_MPORT_data = data_pd_brType_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_18[1:0] :
    data_pd_brType[data_pd_brType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_3_MPORT_en = 1'h1;
  assign data_pd_brType_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_io_rdata_3_MPORT_data = data_pd_brType[data_pd_brType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_brType_io_rdata_3_MPORT_data = data_pd_brType_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_19[1:0] :
    data_pd_brType[data_pd_brType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_brType_MPORT_data = io_wdata_0_pd_brType;
  assign data_pd_brType_MPORT_addr = io_waddr_0;
  assign data_pd_brType_MPORT_mask = 1'h1;
  assign data_pd_brType_MPORT_en = io_wen_0;
  assign data_pd_brType_MPORT_1_data = io_wdata_1_pd_brType;
  assign data_pd_brType_MPORT_1_addr = io_waddr_1;
  assign data_pd_brType_MPORT_1_mask = 1'h1;
  assign data_pd_brType_MPORT_1_en = io_wen_1;
  assign data_pd_brType_MPORT_2_data = io_wdata_2_pd_brType;
  assign data_pd_brType_MPORT_2_addr = io_waddr_2;
  assign data_pd_brType_MPORT_2_mask = 1'h1;
  assign data_pd_brType_MPORT_2_en = io_wen_2;
  assign data_pd_brType_MPORT_3_data = io_wdata_3_pd_brType;
  assign data_pd_brType_MPORT_3_addr = io_waddr_3;
  assign data_pd_brType_MPORT_3_mask = 1'h1;
  assign data_pd_brType_MPORT_3_en = io_wen_3;
  assign data_pd_brType_MPORT_4_data = io_wdata_4_pd_brType;
  assign data_pd_brType_MPORT_4_addr = io_waddr_4;
  assign data_pd_brType_MPORT_4_mask = 1'h1;
  assign data_pd_brType_MPORT_4_en = io_wen_4;
  assign data_pd_brType_MPORT_5_data = io_wdata_5_pd_brType;
  assign data_pd_brType_MPORT_5_addr = io_waddr_5;
  assign data_pd_brType_MPORT_5_mask = 1'h1;
  assign data_pd_brType_MPORT_5_en = io_wen_5;
  assign data_pd_brType_MPORT_6_data = io_wdata_6_pd_brType;
  assign data_pd_brType_MPORT_6_addr = io_waddr_6;
  assign data_pd_brType_MPORT_6_mask = 1'h1;
  assign data_pd_brType_MPORT_6_en = io_wen_6;
  assign data_pd_brType_MPORT_7_data = io_wdata_7_pd_brType;
  assign data_pd_brType_MPORT_7_addr = io_waddr_7;
  assign data_pd_brType_MPORT_7_mask = 1'h1;
  assign data_pd_brType_MPORT_7_en = io_wen_7;
  assign data_pd_isCall_io_rdata_0_MPORT_en = 1'h1;
  assign data_pd_isCall_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_0_MPORT_data = data_pd_isCall[data_pd_isCall_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isCall_io_rdata_0_MPORT_data = data_pd_isCall_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_21[0:0] :
    data_pd_isCall[data_pd_isCall_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_1_MPORT_en = 1'h1;
  assign data_pd_isCall_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_1_MPORT_data = data_pd_isCall[data_pd_isCall_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isCall_io_rdata_1_MPORT_data = data_pd_isCall_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_22[0:0] :
    data_pd_isCall[data_pd_isCall_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_2_MPORT_en = 1'h1;
  assign data_pd_isCall_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_2_MPORT_data = data_pd_isCall[data_pd_isCall_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isCall_io_rdata_2_MPORT_data = data_pd_isCall_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_23[0:0] :
    data_pd_isCall[data_pd_isCall_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_3_MPORT_en = 1'h1;
  assign data_pd_isCall_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_io_rdata_3_MPORT_data = data_pd_isCall[data_pd_isCall_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isCall_io_rdata_3_MPORT_data = data_pd_isCall_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_24[0:0] :
    data_pd_isCall[data_pd_isCall_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isCall_MPORT_data = io_wdata_0_pd_isCall;
  assign data_pd_isCall_MPORT_addr = io_waddr_0;
  assign data_pd_isCall_MPORT_mask = 1'h1;
  assign data_pd_isCall_MPORT_en = io_wen_0;
  assign data_pd_isCall_MPORT_1_data = io_wdata_1_pd_isCall;
  assign data_pd_isCall_MPORT_1_addr = io_waddr_1;
  assign data_pd_isCall_MPORT_1_mask = 1'h1;
  assign data_pd_isCall_MPORT_1_en = io_wen_1;
  assign data_pd_isCall_MPORT_2_data = io_wdata_2_pd_isCall;
  assign data_pd_isCall_MPORT_2_addr = io_waddr_2;
  assign data_pd_isCall_MPORT_2_mask = 1'h1;
  assign data_pd_isCall_MPORT_2_en = io_wen_2;
  assign data_pd_isCall_MPORT_3_data = io_wdata_3_pd_isCall;
  assign data_pd_isCall_MPORT_3_addr = io_waddr_3;
  assign data_pd_isCall_MPORT_3_mask = 1'h1;
  assign data_pd_isCall_MPORT_3_en = io_wen_3;
  assign data_pd_isCall_MPORT_4_data = io_wdata_4_pd_isCall;
  assign data_pd_isCall_MPORT_4_addr = io_waddr_4;
  assign data_pd_isCall_MPORT_4_mask = 1'h1;
  assign data_pd_isCall_MPORT_4_en = io_wen_4;
  assign data_pd_isCall_MPORT_5_data = io_wdata_5_pd_isCall;
  assign data_pd_isCall_MPORT_5_addr = io_waddr_5;
  assign data_pd_isCall_MPORT_5_mask = 1'h1;
  assign data_pd_isCall_MPORT_5_en = io_wen_5;
  assign data_pd_isCall_MPORT_6_data = io_wdata_6_pd_isCall;
  assign data_pd_isCall_MPORT_6_addr = io_waddr_6;
  assign data_pd_isCall_MPORT_6_mask = 1'h1;
  assign data_pd_isCall_MPORT_6_en = io_wen_6;
  assign data_pd_isCall_MPORT_7_data = io_wdata_7_pd_isCall;
  assign data_pd_isCall_MPORT_7_addr = io_waddr_7;
  assign data_pd_isCall_MPORT_7_mask = 1'h1;
  assign data_pd_isCall_MPORT_7_en = io_wen_7;
  assign data_pd_isRet_io_rdata_0_MPORT_en = 1'h1;
  assign data_pd_isRet_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_0_MPORT_data = data_pd_isRet[data_pd_isRet_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRet_io_rdata_0_MPORT_data = data_pd_isRet_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_26[0:0] :
    data_pd_isRet[data_pd_isRet_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_1_MPORT_en = 1'h1;
  assign data_pd_isRet_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_1_MPORT_data = data_pd_isRet[data_pd_isRet_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRet_io_rdata_1_MPORT_data = data_pd_isRet_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_27[0:0] :
    data_pd_isRet[data_pd_isRet_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_2_MPORT_en = 1'h1;
  assign data_pd_isRet_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_2_MPORT_data = data_pd_isRet[data_pd_isRet_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRet_io_rdata_2_MPORT_data = data_pd_isRet_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_28[0:0] :
    data_pd_isRet[data_pd_isRet_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_3_MPORT_en = 1'h1;
  assign data_pd_isRet_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_io_rdata_3_MPORT_data = data_pd_isRet[data_pd_isRet_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pd_isRet_io_rdata_3_MPORT_data = data_pd_isRet_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_29[0:0] :
    data_pd_isRet[data_pd_isRet_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pd_isRet_MPORT_data = io_wdata_0_pd_isRet;
  assign data_pd_isRet_MPORT_addr = io_waddr_0;
  assign data_pd_isRet_MPORT_mask = 1'h1;
  assign data_pd_isRet_MPORT_en = io_wen_0;
  assign data_pd_isRet_MPORT_1_data = io_wdata_1_pd_isRet;
  assign data_pd_isRet_MPORT_1_addr = io_waddr_1;
  assign data_pd_isRet_MPORT_1_mask = 1'h1;
  assign data_pd_isRet_MPORT_1_en = io_wen_1;
  assign data_pd_isRet_MPORT_2_data = io_wdata_2_pd_isRet;
  assign data_pd_isRet_MPORT_2_addr = io_waddr_2;
  assign data_pd_isRet_MPORT_2_mask = 1'h1;
  assign data_pd_isRet_MPORT_2_en = io_wen_2;
  assign data_pd_isRet_MPORT_3_data = io_wdata_3_pd_isRet;
  assign data_pd_isRet_MPORT_3_addr = io_waddr_3;
  assign data_pd_isRet_MPORT_3_mask = 1'h1;
  assign data_pd_isRet_MPORT_3_en = io_wen_3;
  assign data_pd_isRet_MPORT_4_data = io_wdata_4_pd_isRet;
  assign data_pd_isRet_MPORT_4_addr = io_waddr_4;
  assign data_pd_isRet_MPORT_4_mask = 1'h1;
  assign data_pd_isRet_MPORT_4_en = io_wen_4;
  assign data_pd_isRet_MPORT_5_data = io_wdata_5_pd_isRet;
  assign data_pd_isRet_MPORT_5_addr = io_waddr_5;
  assign data_pd_isRet_MPORT_5_mask = 1'h1;
  assign data_pd_isRet_MPORT_5_en = io_wen_5;
  assign data_pd_isRet_MPORT_6_data = io_wdata_6_pd_isRet;
  assign data_pd_isRet_MPORT_6_addr = io_waddr_6;
  assign data_pd_isRet_MPORT_6_mask = 1'h1;
  assign data_pd_isRet_MPORT_6_en = io_wen_6;
  assign data_pd_isRet_MPORT_7_data = io_wdata_7_pd_isRet;
  assign data_pd_isRet_MPORT_7_addr = io_waddr_7;
  assign data_pd_isRet_MPORT_7_mask = 1'h1;
  assign data_pd_isRet_MPORT_7_en = io_wen_7;
  assign data_pred_taken_io_rdata_0_MPORT_en = 1'h1;
  assign data_pred_taken_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_0_MPORT_data = data_pred_taken[data_pred_taken_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pred_taken_io_rdata_0_MPORT_data = data_pred_taken_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_31[0:0] :
    data_pred_taken[data_pred_taken_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_1_MPORT_en = 1'h1;
  assign data_pred_taken_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_1_MPORT_data = data_pred_taken[data_pred_taken_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pred_taken_io_rdata_1_MPORT_data = data_pred_taken_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_32[0:0] :
    data_pred_taken[data_pred_taken_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_2_MPORT_en = 1'h1;
  assign data_pred_taken_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_2_MPORT_data = data_pred_taken[data_pred_taken_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pred_taken_io_rdata_2_MPORT_data = data_pred_taken_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_33[0:0] :
    data_pred_taken[data_pred_taken_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_3_MPORT_en = 1'h1;
  assign data_pred_taken_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_io_rdata_3_MPORT_data = data_pred_taken[data_pred_taken_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_pred_taken_io_rdata_3_MPORT_data = data_pred_taken_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_34[0:0] :
    data_pred_taken[data_pred_taken_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_pred_taken_MPORT_data = io_wdata_0_pred_taken;
  assign data_pred_taken_MPORT_addr = io_waddr_0;
  assign data_pred_taken_MPORT_mask = 1'h1;
  assign data_pred_taken_MPORT_en = io_wen_0;
  assign data_pred_taken_MPORT_1_data = io_wdata_1_pred_taken;
  assign data_pred_taken_MPORT_1_addr = io_waddr_1;
  assign data_pred_taken_MPORT_1_mask = 1'h1;
  assign data_pred_taken_MPORT_1_en = io_wen_1;
  assign data_pred_taken_MPORT_2_data = io_wdata_2_pred_taken;
  assign data_pred_taken_MPORT_2_addr = io_waddr_2;
  assign data_pred_taken_MPORT_2_mask = 1'h1;
  assign data_pred_taken_MPORT_2_en = io_wen_2;
  assign data_pred_taken_MPORT_3_data = io_wdata_3_pred_taken;
  assign data_pred_taken_MPORT_3_addr = io_waddr_3;
  assign data_pred_taken_MPORT_3_mask = 1'h1;
  assign data_pred_taken_MPORT_3_en = io_wen_3;
  assign data_pred_taken_MPORT_4_data = io_wdata_4_pred_taken;
  assign data_pred_taken_MPORT_4_addr = io_waddr_4;
  assign data_pred_taken_MPORT_4_mask = 1'h1;
  assign data_pred_taken_MPORT_4_en = io_wen_4;
  assign data_pred_taken_MPORT_5_data = io_wdata_5_pred_taken;
  assign data_pred_taken_MPORT_5_addr = io_waddr_5;
  assign data_pred_taken_MPORT_5_mask = 1'h1;
  assign data_pred_taken_MPORT_5_en = io_wen_5;
  assign data_pred_taken_MPORT_6_data = io_wdata_6_pred_taken;
  assign data_pred_taken_MPORT_6_addr = io_waddr_6;
  assign data_pred_taken_MPORT_6_mask = 1'h1;
  assign data_pred_taken_MPORT_6_en = io_wen_6;
  assign data_pred_taken_MPORT_7_data = io_wdata_7_pred_taken;
  assign data_pred_taken_MPORT_7_addr = io_waddr_7;
  assign data_pred_taken_MPORT_7_mask = 1'h1;
  assign data_pred_taken_MPORT_7_en = io_wen_7;
  assign data_ftqPtr_flag_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqPtr_flag_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_0_MPORT_data = data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_flag_io_rdata_0_MPORT_data = data_ftqPtr_flag_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_36[0:0] :
    data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqPtr_flag_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_1_MPORT_data = data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_flag_io_rdata_1_MPORT_data = data_ftqPtr_flag_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_37[0:0] :
    data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqPtr_flag_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_2_MPORT_data = data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_flag_io_rdata_2_MPORT_data = data_ftqPtr_flag_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_38[0:0] :
    data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqPtr_flag_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_io_rdata_3_MPORT_data = data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_flag_io_rdata_3_MPORT_data = data_ftqPtr_flag_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_39[0:0] :
    data_ftqPtr_flag[data_ftqPtr_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_flag_MPORT_data = io_wdata_0_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_addr = io_waddr_0;
  assign data_ftqPtr_flag_MPORT_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_en = io_wen_0;
  assign data_ftqPtr_flag_MPORT_1_data = io_wdata_1_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_1_addr = io_waddr_1;
  assign data_ftqPtr_flag_MPORT_1_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_1_en = io_wen_1;
  assign data_ftqPtr_flag_MPORT_2_data = io_wdata_2_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_2_addr = io_waddr_2;
  assign data_ftqPtr_flag_MPORT_2_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_2_en = io_wen_2;
  assign data_ftqPtr_flag_MPORT_3_data = io_wdata_3_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_3_addr = io_waddr_3;
  assign data_ftqPtr_flag_MPORT_3_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_3_en = io_wen_3;
  assign data_ftqPtr_flag_MPORT_4_data = io_wdata_4_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_4_addr = io_waddr_4;
  assign data_ftqPtr_flag_MPORT_4_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_4_en = io_wen_4;
  assign data_ftqPtr_flag_MPORT_5_data = io_wdata_5_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_5_addr = io_waddr_5;
  assign data_ftqPtr_flag_MPORT_5_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_5_en = io_wen_5;
  assign data_ftqPtr_flag_MPORT_6_data = io_wdata_6_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_6_addr = io_waddr_6;
  assign data_ftqPtr_flag_MPORT_6_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_6_en = io_wen_6;
  assign data_ftqPtr_flag_MPORT_7_data = io_wdata_7_ftqPtr_flag;
  assign data_ftqPtr_flag_MPORT_7_addr = io_waddr_7;
  assign data_ftqPtr_flag_MPORT_7_mask = 1'h1;
  assign data_ftqPtr_flag_MPORT_7_en = io_wen_7;
  assign data_ftqPtr_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqPtr_value_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_0_MPORT_data = data_ftqPtr_value[data_ftqPtr_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_value_io_rdata_0_MPORT_data = data_ftqPtr_value_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_41[5:0] :
    data_ftqPtr_value[data_ftqPtr_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqPtr_value_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_1_MPORT_data = data_ftqPtr_value[data_ftqPtr_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_value_io_rdata_1_MPORT_data = data_ftqPtr_value_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_42[5:0] :
    data_ftqPtr_value[data_ftqPtr_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqPtr_value_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_2_MPORT_data = data_ftqPtr_value[data_ftqPtr_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_value_io_rdata_2_MPORT_data = data_ftqPtr_value_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_43[5:0] :
    data_ftqPtr_value[data_ftqPtr_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqPtr_value_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_io_rdata_3_MPORT_data = data_ftqPtr_value[data_ftqPtr_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqPtr_value_io_rdata_3_MPORT_data = data_ftqPtr_value_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_44[5:0] :
    data_ftqPtr_value[data_ftqPtr_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqPtr_value_MPORT_data = io_wdata_0_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_addr = io_waddr_0;
  assign data_ftqPtr_value_MPORT_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_en = io_wen_0;
  assign data_ftqPtr_value_MPORT_1_data = io_wdata_1_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_1_addr = io_waddr_1;
  assign data_ftqPtr_value_MPORT_1_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_1_en = io_wen_1;
  assign data_ftqPtr_value_MPORT_2_data = io_wdata_2_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_2_addr = io_waddr_2;
  assign data_ftqPtr_value_MPORT_2_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_2_en = io_wen_2;
  assign data_ftqPtr_value_MPORT_3_data = io_wdata_3_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_3_addr = io_waddr_3;
  assign data_ftqPtr_value_MPORT_3_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_3_en = io_wen_3;
  assign data_ftqPtr_value_MPORT_4_data = io_wdata_4_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_4_addr = io_waddr_4;
  assign data_ftqPtr_value_MPORT_4_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_4_en = io_wen_4;
  assign data_ftqPtr_value_MPORT_5_data = io_wdata_5_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_5_addr = io_waddr_5;
  assign data_ftqPtr_value_MPORT_5_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_5_en = io_wen_5;
  assign data_ftqPtr_value_MPORT_6_data = io_wdata_6_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_6_addr = io_waddr_6;
  assign data_ftqPtr_value_MPORT_6_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_6_en = io_wen_6;
  assign data_ftqPtr_value_MPORT_7_data = io_wdata_7_ftqPtr_value;
  assign data_ftqPtr_value_MPORT_7_addr = io_waddr_7;
  assign data_ftqPtr_value_MPORT_7_mask = 1'h1;
  assign data_ftqPtr_value_MPORT_7_en = io_wen_7;
  assign data_ftqOffset_io_rdata_0_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_0_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqOffset_io_rdata_0_MPORT_data = data_ftqOffset_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_46[2:0] :
    data_ftqOffset[data_ftqOffset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_1_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_1_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqOffset_io_rdata_1_MPORT_data = data_ftqOffset_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_47[2:0] :
    data_ftqOffset[data_ftqOffset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_2_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_2_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqOffset_io_rdata_2_MPORT_data = data_ftqOffset_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_48[2:0] :
    data_ftqOffset[data_ftqOffset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_3_MPORT_en = 1'h1;
  assign data_ftqOffset_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ftqOffset_io_rdata_3_MPORT_data = data_ftqOffset[data_ftqOffset_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ftqOffset_io_rdata_3_MPORT_data = data_ftqOffset_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_49[2:0] :
    data_ftqOffset[data_ftqOffset_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
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
  assign data_ftqOffset_MPORT_4_data = io_wdata_4_ftqOffset;
  assign data_ftqOffset_MPORT_4_addr = io_waddr_4;
  assign data_ftqOffset_MPORT_4_mask = 1'h1;
  assign data_ftqOffset_MPORT_4_en = io_wen_4;
  assign data_ftqOffset_MPORT_5_data = io_wdata_5_ftqOffset;
  assign data_ftqOffset_MPORT_5_addr = io_waddr_5;
  assign data_ftqOffset_MPORT_5_mask = 1'h1;
  assign data_ftqOffset_MPORT_5_en = io_wen_5;
  assign data_ftqOffset_MPORT_6_data = io_wdata_6_ftqOffset;
  assign data_ftqOffset_MPORT_6_addr = io_waddr_6;
  assign data_ftqOffset_MPORT_6_mask = 1'h1;
  assign data_ftqOffset_MPORT_6_en = io_wen_6;
  assign data_ftqOffset_MPORT_7_data = io_wdata_7_ftqOffset;
  assign data_ftqOffset_MPORT_7_addr = io_waddr_7;
  assign data_ftqOffset_MPORT_7_mask = 1'h1;
  assign data_ftqOffset_MPORT_7_en = io_wen_7;
  assign data_ipf_io_rdata_0_MPORT_en = 1'h1;
  assign data_ipf_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_0_MPORT_data = data_ipf[data_ipf_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ipf_io_rdata_0_MPORT_data = data_ipf_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_51[0:0] :
    data_ipf[data_ipf_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_1_MPORT_en = 1'h1;
  assign data_ipf_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_1_MPORT_data = data_ipf[data_ipf_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ipf_io_rdata_1_MPORT_data = data_ipf_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_52[0:0] :
    data_ipf[data_ipf_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_2_MPORT_en = 1'h1;
  assign data_ipf_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_2_MPORT_data = data_ipf[data_ipf_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ipf_io_rdata_2_MPORT_data = data_ipf_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_53[0:0] :
    data_ipf[data_ipf_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_3_MPORT_en = 1'h1;
  assign data_ipf_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_io_rdata_3_MPORT_data = data_ipf[data_ipf_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_ipf_io_rdata_3_MPORT_data = data_ipf_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_54[0:0] :
    data_ipf[data_ipf_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_ipf_MPORT_data = io_wdata_0_ipf;
  assign data_ipf_MPORT_addr = io_waddr_0;
  assign data_ipf_MPORT_mask = 1'h1;
  assign data_ipf_MPORT_en = io_wen_0;
  assign data_ipf_MPORT_1_data = io_wdata_1_ipf;
  assign data_ipf_MPORT_1_addr = io_waddr_1;
  assign data_ipf_MPORT_1_mask = 1'h1;
  assign data_ipf_MPORT_1_en = io_wen_1;
  assign data_ipf_MPORT_2_data = io_wdata_2_ipf;
  assign data_ipf_MPORT_2_addr = io_waddr_2;
  assign data_ipf_MPORT_2_mask = 1'h1;
  assign data_ipf_MPORT_2_en = io_wen_2;
  assign data_ipf_MPORT_3_data = io_wdata_3_ipf;
  assign data_ipf_MPORT_3_addr = io_waddr_3;
  assign data_ipf_MPORT_3_mask = 1'h1;
  assign data_ipf_MPORT_3_en = io_wen_3;
  assign data_ipf_MPORT_4_data = io_wdata_4_ipf;
  assign data_ipf_MPORT_4_addr = io_waddr_4;
  assign data_ipf_MPORT_4_mask = 1'h1;
  assign data_ipf_MPORT_4_en = io_wen_4;
  assign data_ipf_MPORT_5_data = io_wdata_5_ipf;
  assign data_ipf_MPORT_5_addr = io_waddr_5;
  assign data_ipf_MPORT_5_mask = 1'h1;
  assign data_ipf_MPORT_5_en = io_wen_5;
  assign data_ipf_MPORT_6_data = io_wdata_6_ipf;
  assign data_ipf_MPORT_6_addr = io_waddr_6;
  assign data_ipf_MPORT_6_mask = 1'h1;
  assign data_ipf_MPORT_6_en = io_wen_6;
  assign data_ipf_MPORT_7_data = io_wdata_7_ipf;
  assign data_ipf_MPORT_7_addr = io_waddr_7;
  assign data_ipf_MPORT_7_mask = 1'h1;
  assign data_ipf_MPORT_7_en = io_wen_7;
  assign data_acf_io_rdata_0_MPORT_en = 1'h1;
  assign data_acf_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_0_MPORT_data = data_acf[data_acf_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_acf_io_rdata_0_MPORT_data = data_acf_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_56[0:0] :
    data_acf[data_acf_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_1_MPORT_en = 1'h1;
  assign data_acf_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_1_MPORT_data = data_acf[data_acf_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_acf_io_rdata_1_MPORT_data = data_acf_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_57[0:0] :
    data_acf[data_acf_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_2_MPORT_en = 1'h1;
  assign data_acf_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_2_MPORT_data = data_acf[data_acf_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_acf_io_rdata_2_MPORT_data = data_acf_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_58[0:0] :
    data_acf[data_acf_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_3_MPORT_en = 1'h1;
  assign data_acf_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_io_rdata_3_MPORT_data = data_acf[data_acf_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_acf_io_rdata_3_MPORT_data = data_acf_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_59[0:0] :
    data_acf[data_acf_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_acf_MPORT_data = io_wdata_0_acf;
  assign data_acf_MPORT_addr = io_waddr_0;
  assign data_acf_MPORT_mask = 1'h1;
  assign data_acf_MPORT_en = io_wen_0;
  assign data_acf_MPORT_1_data = io_wdata_1_acf;
  assign data_acf_MPORT_1_addr = io_waddr_1;
  assign data_acf_MPORT_1_mask = 1'h1;
  assign data_acf_MPORT_1_en = io_wen_1;
  assign data_acf_MPORT_2_data = io_wdata_2_acf;
  assign data_acf_MPORT_2_addr = io_waddr_2;
  assign data_acf_MPORT_2_mask = 1'h1;
  assign data_acf_MPORT_2_en = io_wen_2;
  assign data_acf_MPORT_3_data = io_wdata_3_acf;
  assign data_acf_MPORT_3_addr = io_waddr_3;
  assign data_acf_MPORT_3_mask = 1'h1;
  assign data_acf_MPORT_3_en = io_wen_3;
  assign data_acf_MPORT_4_data = io_wdata_4_acf;
  assign data_acf_MPORT_4_addr = io_waddr_4;
  assign data_acf_MPORT_4_mask = 1'h1;
  assign data_acf_MPORT_4_en = io_wen_4;
  assign data_acf_MPORT_5_data = io_wdata_5_acf;
  assign data_acf_MPORT_5_addr = io_waddr_5;
  assign data_acf_MPORT_5_mask = 1'h1;
  assign data_acf_MPORT_5_en = io_wen_5;
  assign data_acf_MPORT_6_data = io_wdata_6_acf;
  assign data_acf_MPORT_6_addr = io_waddr_6;
  assign data_acf_MPORT_6_mask = 1'h1;
  assign data_acf_MPORT_6_en = io_wen_6;
  assign data_acf_MPORT_7_data = io_wdata_7_acf;
  assign data_acf_MPORT_7_addr = io_waddr_7;
  assign data_acf_MPORT_7_mask = 1'h1;
  assign data_acf_MPORT_7_en = io_wen_7;
  assign data_crossPageIPFFix_io_rdata_0_MPORT_en = 1'h1;
  assign data_crossPageIPFFix_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_0_MPORT_data = data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_crossPageIPFFix_io_rdata_0_MPORT_data = data_crossPageIPFFix_io_rdata_0_MPORT_addr >= 5'h18 ? _RAND_61[0
    :0] : data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_1_MPORT_en = 1'h1;
  assign data_crossPageIPFFix_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_1_MPORT_data = data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_crossPageIPFFix_io_rdata_1_MPORT_data = data_crossPageIPFFix_io_rdata_1_MPORT_addr >= 5'h18 ? _RAND_62[0
    :0] : data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_2_MPORT_en = 1'h1;
  assign data_crossPageIPFFix_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_2_MPORT_data = data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_crossPageIPFFix_io_rdata_2_MPORT_data = data_crossPageIPFFix_io_rdata_2_MPORT_addr >= 5'h18 ? _RAND_63[0
    :0] : data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_3_MPORT_en = 1'h1;
  assign data_crossPageIPFFix_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_io_rdata_3_MPORT_data = data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_crossPageIPFFix_io_rdata_3_MPORT_data = data_crossPageIPFFix_io_rdata_3_MPORT_addr >= 5'h18 ? _RAND_64[0
    :0] : data_crossPageIPFFix[data_crossPageIPFFix_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_crossPageIPFFix_MPORT_data = io_wdata_0_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_addr = io_waddr_0;
  assign data_crossPageIPFFix_MPORT_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_en = io_wen_0;
  assign data_crossPageIPFFix_MPORT_1_data = io_wdata_1_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_1_addr = io_waddr_1;
  assign data_crossPageIPFFix_MPORT_1_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_1_en = io_wen_1;
  assign data_crossPageIPFFix_MPORT_2_data = io_wdata_2_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_2_addr = io_waddr_2;
  assign data_crossPageIPFFix_MPORT_2_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_2_en = io_wen_2;
  assign data_crossPageIPFFix_MPORT_3_data = io_wdata_3_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_3_addr = io_waddr_3;
  assign data_crossPageIPFFix_MPORT_3_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_3_en = io_wen_3;
  assign data_crossPageIPFFix_MPORT_4_data = io_wdata_4_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_4_addr = io_waddr_4;
  assign data_crossPageIPFFix_MPORT_4_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_4_en = io_wen_4;
  assign data_crossPageIPFFix_MPORT_5_data = io_wdata_5_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_5_addr = io_waddr_5;
  assign data_crossPageIPFFix_MPORT_5_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_5_en = io_wen_5;
  assign data_crossPageIPFFix_MPORT_6_data = io_wdata_6_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_6_addr = io_waddr_6;
  assign data_crossPageIPFFix_MPORT_6_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_6_en = io_wen_6;
  assign data_crossPageIPFFix_MPORT_7_data = io_wdata_7_crossPageIPFFix;
  assign data_crossPageIPFFix_MPORT_7_addr = io_waddr_7;
  assign data_crossPageIPFFix_MPORT_7_mask = 1'h1;
  assign data_crossPageIPFFix_MPORT_7_en = io_wen_7;
  assign data_triggered_frontendHit_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_0_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_0_MPORT_data =
    data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_0_io_rdata_0_MPORT_data = data_triggered_frontendHit_0_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_66[0:0] : data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_0_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_1_MPORT_data =
    data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_0_io_rdata_1_MPORT_data = data_triggered_frontendHit_0_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_67[0:0] : data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_0_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_2_MPORT_data =
    data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_0_io_rdata_2_MPORT_data = data_triggered_frontendHit_0_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_68[0:0] : data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_0_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_io_rdata_3_MPORT_data =
    data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_0_io_rdata_3_MPORT_data = data_triggered_frontendHit_0_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_69[0:0] : data_triggered_frontendHit_0[data_triggered_frontendHit_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_0_MPORT_data = io_wdata_0_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_addr = io_waddr_0;
  assign data_triggered_frontendHit_0_MPORT_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_en = io_wen_0;
  assign data_triggered_frontendHit_0_MPORT_1_data = io_wdata_1_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_1_addr = io_waddr_1;
  assign data_triggered_frontendHit_0_MPORT_1_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_1_en = io_wen_1;
  assign data_triggered_frontendHit_0_MPORT_2_data = io_wdata_2_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_2_addr = io_waddr_2;
  assign data_triggered_frontendHit_0_MPORT_2_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_2_en = io_wen_2;
  assign data_triggered_frontendHit_0_MPORT_3_data = io_wdata_3_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_3_addr = io_waddr_3;
  assign data_triggered_frontendHit_0_MPORT_3_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_3_en = io_wen_3;
  assign data_triggered_frontendHit_0_MPORT_4_data = io_wdata_4_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_4_addr = io_waddr_4;
  assign data_triggered_frontendHit_0_MPORT_4_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_4_en = io_wen_4;
  assign data_triggered_frontendHit_0_MPORT_5_data = io_wdata_5_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_5_addr = io_waddr_5;
  assign data_triggered_frontendHit_0_MPORT_5_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_5_en = io_wen_5;
  assign data_triggered_frontendHit_0_MPORT_6_data = io_wdata_6_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_6_addr = io_waddr_6;
  assign data_triggered_frontendHit_0_MPORT_6_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_6_en = io_wen_6;
  assign data_triggered_frontendHit_0_MPORT_7_data = io_wdata_7_triggered_frontendHit_0;
  assign data_triggered_frontendHit_0_MPORT_7_addr = io_waddr_7;
  assign data_triggered_frontendHit_0_MPORT_7_mask = 1'h1;
  assign data_triggered_frontendHit_0_MPORT_7_en = io_wen_7;
  assign data_triggered_frontendHit_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_1_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_0_MPORT_data =
    data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_1_io_rdata_0_MPORT_data = data_triggered_frontendHit_1_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_71[0:0] : data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_1_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_1_MPORT_data =
    data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_1_io_rdata_1_MPORT_data = data_triggered_frontendHit_1_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_72[0:0] : data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_1_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_2_MPORT_data =
    data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_1_io_rdata_2_MPORT_data = data_triggered_frontendHit_1_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_73[0:0] : data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_1_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_io_rdata_3_MPORT_data =
    data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_1_io_rdata_3_MPORT_data = data_triggered_frontendHit_1_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_74[0:0] : data_triggered_frontendHit_1[data_triggered_frontendHit_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_1_MPORT_data = io_wdata_0_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_addr = io_waddr_0;
  assign data_triggered_frontendHit_1_MPORT_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_en = io_wen_0;
  assign data_triggered_frontendHit_1_MPORT_1_data = io_wdata_1_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_1_addr = io_waddr_1;
  assign data_triggered_frontendHit_1_MPORT_1_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_1_en = io_wen_1;
  assign data_triggered_frontendHit_1_MPORT_2_data = io_wdata_2_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_2_addr = io_waddr_2;
  assign data_triggered_frontendHit_1_MPORT_2_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_2_en = io_wen_2;
  assign data_triggered_frontendHit_1_MPORT_3_data = io_wdata_3_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_3_addr = io_waddr_3;
  assign data_triggered_frontendHit_1_MPORT_3_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_3_en = io_wen_3;
  assign data_triggered_frontendHit_1_MPORT_4_data = io_wdata_4_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_4_addr = io_waddr_4;
  assign data_triggered_frontendHit_1_MPORT_4_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_4_en = io_wen_4;
  assign data_triggered_frontendHit_1_MPORT_5_data = io_wdata_5_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_5_addr = io_waddr_5;
  assign data_triggered_frontendHit_1_MPORT_5_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_5_en = io_wen_5;
  assign data_triggered_frontendHit_1_MPORT_6_data = io_wdata_6_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_6_addr = io_waddr_6;
  assign data_triggered_frontendHit_1_MPORT_6_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_6_en = io_wen_6;
  assign data_triggered_frontendHit_1_MPORT_7_data = io_wdata_7_triggered_frontendHit_1;
  assign data_triggered_frontendHit_1_MPORT_7_addr = io_waddr_7;
  assign data_triggered_frontendHit_1_MPORT_7_mask = 1'h1;
  assign data_triggered_frontendHit_1_MPORT_7_en = io_wen_7;
  assign data_triggered_frontendHit_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_2_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_0_MPORT_data =
    data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_2_io_rdata_0_MPORT_data = data_triggered_frontendHit_2_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_76[0:0] : data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_2_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_1_MPORT_data =
    data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_2_io_rdata_1_MPORT_data = data_triggered_frontendHit_2_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_77[0:0] : data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_2_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_2_MPORT_data =
    data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_2_io_rdata_2_MPORT_data = data_triggered_frontendHit_2_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_78[0:0] : data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_2_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_io_rdata_3_MPORT_data =
    data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_2_io_rdata_3_MPORT_data = data_triggered_frontendHit_2_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_79[0:0] : data_triggered_frontendHit_2[data_triggered_frontendHit_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_2_MPORT_data = io_wdata_0_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_addr = io_waddr_0;
  assign data_triggered_frontendHit_2_MPORT_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_en = io_wen_0;
  assign data_triggered_frontendHit_2_MPORT_1_data = io_wdata_1_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_1_addr = io_waddr_1;
  assign data_triggered_frontendHit_2_MPORT_1_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_1_en = io_wen_1;
  assign data_triggered_frontendHit_2_MPORT_2_data = io_wdata_2_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_2_addr = io_waddr_2;
  assign data_triggered_frontendHit_2_MPORT_2_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_2_en = io_wen_2;
  assign data_triggered_frontendHit_2_MPORT_3_data = io_wdata_3_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_3_addr = io_waddr_3;
  assign data_triggered_frontendHit_2_MPORT_3_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_3_en = io_wen_3;
  assign data_triggered_frontendHit_2_MPORT_4_data = io_wdata_4_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_4_addr = io_waddr_4;
  assign data_triggered_frontendHit_2_MPORT_4_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_4_en = io_wen_4;
  assign data_triggered_frontendHit_2_MPORT_5_data = io_wdata_5_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_5_addr = io_waddr_5;
  assign data_triggered_frontendHit_2_MPORT_5_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_5_en = io_wen_5;
  assign data_triggered_frontendHit_2_MPORT_6_data = io_wdata_6_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_6_addr = io_waddr_6;
  assign data_triggered_frontendHit_2_MPORT_6_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_6_en = io_wen_6;
  assign data_triggered_frontendHit_2_MPORT_7_data = io_wdata_7_triggered_frontendHit_2;
  assign data_triggered_frontendHit_2_MPORT_7_addr = io_waddr_7;
  assign data_triggered_frontendHit_2_MPORT_7_mask = 1'h1;
  assign data_triggered_frontendHit_2_MPORT_7_en = io_wen_7;
  assign data_triggered_frontendHit_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_3_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_0_MPORT_data =
    data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_3_io_rdata_0_MPORT_data = data_triggered_frontendHit_3_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_81[0:0] : data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_3_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_1_MPORT_data =
    data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_3_io_rdata_1_MPORT_data = data_triggered_frontendHit_3_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_82[0:0] : data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_3_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_2_MPORT_data =
    data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_3_io_rdata_2_MPORT_data = data_triggered_frontendHit_3_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_83[0:0] : data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_frontendHit_3_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_io_rdata_3_MPORT_data =
    data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_frontendHit_3_io_rdata_3_MPORT_data = data_triggered_frontendHit_3_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_84[0:0] : data_triggered_frontendHit_3[data_triggered_frontendHit_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_frontendHit_3_MPORT_data = io_wdata_0_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_addr = io_waddr_0;
  assign data_triggered_frontendHit_3_MPORT_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_en = io_wen_0;
  assign data_triggered_frontendHit_3_MPORT_1_data = io_wdata_1_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_1_addr = io_waddr_1;
  assign data_triggered_frontendHit_3_MPORT_1_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_1_en = io_wen_1;
  assign data_triggered_frontendHit_3_MPORT_2_data = io_wdata_2_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_2_addr = io_waddr_2;
  assign data_triggered_frontendHit_3_MPORT_2_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_2_en = io_wen_2;
  assign data_triggered_frontendHit_3_MPORT_3_data = io_wdata_3_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_3_addr = io_waddr_3;
  assign data_triggered_frontendHit_3_MPORT_3_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_3_en = io_wen_3;
  assign data_triggered_frontendHit_3_MPORT_4_data = io_wdata_4_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_4_addr = io_waddr_4;
  assign data_triggered_frontendHit_3_MPORT_4_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_4_en = io_wen_4;
  assign data_triggered_frontendHit_3_MPORT_5_data = io_wdata_5_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_5_addr = io_waddr_5;
  assign data_triggered_frontendHit_3_MPORT_5_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_5_en = io_wen_5;
  assign data_triggered_frontendHit_3_MPORT_6_data = io_wdata_6_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_6_addr = io_waddr_6;
  assign data_triggered_frontendHit_3_MPORT_6_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_6_en = io_wen_6;
  assign data_triggered_frontendHit_3_MPORT_7_data = io_wdata_7_triggered_frontendHit_3;
  assign data_triggered_frontendHit_3_MPORT_7_addr = io_waddr_7;
  assign data_triggered_frontendHit_3_MPORT_7_mask = 1'h1;
  assign data_triggered_frontendHit_3_MPORT_7_en = io_wen_7;
  assign data_triggered_backendEn_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendEn_0_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_0_MPORT_data =
    data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_0_io_rdata_0_MPORT_data = data_triggered_backendEn_0_io_rdata_0_MPORT_addr >= 5'h18 ?
    _RAND_86[0:0] : data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendEn_0_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_1_MPORT_data =
    data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_0_io_rdata_1_MPORT_data = data_triggered_backendEn_0_io_rdata_1_MPORT_addr >= 5'h18 ?
    _RAND_87[0:0] : data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendEn_0_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_2_MPORT_data =
    data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_0_io_rdata_2_MPORT_data = data_triggered_backendEn_0_io_rdata_2_MPORT_addr >= 5'h18 ?
    _RAND_88[0:0] : data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendEn_0_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_io_rdata_3_MPORT_data =
    data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_0_io_rdata_3_MPORT_data = data_triggered_backendEn_0_io_rdata_3_MPORT_addr >= 5'h18 ?
    _RAND_89[0:0] : data_triggered_backendEn_0[data_triggered_backendEn_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_0_MPORT_data = io_wdata_0_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_addr = io_waddr_0;
  assign data_triggered_backendEn_0_MPORT_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_en = io_wen_0;
  assign data_triggered_backendEn_0_MPORT_1_data = io_wdata_1_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendEn_0_MPORT_1_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_1_en = io_wen_1;
  assign data_triggered_backendEn_0_MPORT_2_data = io_wdata_2_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendEn_0_MPORT_2_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_2_en = io_wen_2;
  assign data_triggered_backendEn_0_MPORT_3_data = io_wdata_3_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendEn_0_MPORT_3_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_3_en = io_wen_3;
  assign data_triggered_backendEn_0_MPORT_4_data = io_wdata_4_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendEn_0_MPORT_4_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_4_en = io_wen_4;
  assign data_triggered_backendEn_0_MPORT_5_data = io_wdata_5_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendEn_0_MPORT_5_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_5_en = io_wen_5;
  assign data_triggered_backendEn_0_MPORT_6_data = io_wdata_6_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendEn_0_MPORT_6_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_6_en = io_wen_6;
  assign data_triggered_backendEn_0_MPORT_7_data = io_wdata_7_triggered_backendEn_0;
  assign data_triggered_backendEn_0_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendEn_0_MPORT_7_mask = 1'h1;
  assign data_triggered_backendEn_0_MPORT_7_en = io_wen_7;
  assign data_triggered_backendEn_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendEn_1_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_0_MPORT_data =
    data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_1_io_rdata_0_MPORT_data = data_triggered_backendEn_1_io_rdata_0_MPORT_addr >= 5'h18 ?
    _RAND_91[0:0] : data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendEn_1_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_1_MPORT_data =
    data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_1_io_rdata_1_MPORT_data = data_triggered_backendEn_1_io_rdata_1_MPORT_addr >= 5'h18 ?
    _RAND_92[0:0] : data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendEn_1_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_2_MPORT_data =
    data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_1_io_rdata_2_MPORT_data = data_triggered_backendEn_1_io_rdata_2_MPORT_addr >= 5'h18 ?
    _RAND_93[0:0] : data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendEn_1_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_io_rdata_3_MPORT_data =
    data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendEn_1_io_rdata_3_MPORT_data = data_triggered_backendEn_1_io_rdata_3_MPORT_addr >= 5'h18 ?
    _RAND_94[0:0] : data_triggered_backendEn_1[data_triggered_backendEn_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendEn_1_MPORT_data = io_wdata_0_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_addr = io_waddr_0;
  assign data_triggered_backendEn_1_MPORT_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_en = io_wen_0;
  assign data_triggered_backendEn_1_MPORT_1_data = io_wdata_1_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendEn_1_MPORT_1_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_1_en = io_wen_1;
  assign data_triggered_backendEn_1_MPORT_2_data = io_wdata_2_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendEn_1_MPORT_2_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_2_en = io_wen_2;
  assign data_triggered_backendEn_1_MPORT_3_data = io_wdata_3_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendEn_1_MPORT_3_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_3_en = io_wen_3;
  assign data_triggered_backendEn_1_MPORT_4_data = io_wdata_4_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendEn_1_MPORT_4_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_4_en = io_wen_4;
  assign data_triggered_backendEn_1_MPORT_5_data = io_wdata_5_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendEn_1_MPORT_5_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_5_en = io_wen_5;
  assign data_triggered_backendEn_1_MPORT_6_data = io_wdata_6_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendEn_1_MPORT_6_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_6_en = io_wen_6;
  assign data_triggered_backendEn_1_MPORT_7_data = io_wdata_7_triggered_backendEn_1;
  assign data_triggered_backendEn_1_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendEn_1_MPORT_7_mask = 1'h1;
  assign data_triggered_backendEn_1_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_0_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_0_MPORT_data =
    data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_0_io_rdata_0_MPORT_data = data_triggered_backendHit_0_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_96[0:0] : data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_0_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_1_MPORT_data =
    data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_0_io_rdata_1_MPORT_data = data_triggered_backendHit_0_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_97[0:0] : data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_0_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_2_MPORT_data =
    data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_0_io_rdata_2_MPORT_data = data_triggered_backendHit_0_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_98[0:0] : data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_0_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_io_rdata_3_MPORT_data =
    data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_0_io_rdata_3_MPORT_data = data_triggered_backendHit_0_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_99[0:0] : data_triggered_backendHit_0[data_triggered_backendHit_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_0_MPORT_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_0_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_0_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_0_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_0_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_0_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_0_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_0_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_0_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_0_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_0_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_0_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_0_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_0_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_0_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_0_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_0_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_0_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_1_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_0_MPORT_data =
    data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_1_io_rdata_0_MPORT_data = data_triggered_backendHit_1_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_101[0:0] : data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_1_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_1_MPORT_data =
    data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_1_io_rdata_1_MPORT_data = data_triggered_backendHit_1_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_102[0:0] : data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_1_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_2_MPORT_data =
    data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_1_io_rdata_2_MPORT_data = data_triggered_backendHit_1_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_103[0:0] : data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_1_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_io_rdata_3_MPORT_data =
    data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_1_io_rdata_3_MPORT_data = data_triggered_backendHit_1_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_104[0:0] : data_triggered_backendHit_1[data_triggered_backendHit_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_1_MPORT_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_1_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_1_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_1_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_1_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_1_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_1_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_1_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_1_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_1_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_1_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_1_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_1_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_1_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_1_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_1_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_1_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_1_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_2_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_0_MPORT_data =
    data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_2_io_rdata_0_MPORT_data = data_triggered_backendHit_2_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_106[0:0] : data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_2_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_1_MPORT_data =
    data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_2_io_rdata_1_MPORT_data = data_triggered_backendHit_2_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_107[0:0] : data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_2_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_2_MPORT_data =
    data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_2_io_rdata_2_MPORT_data = data_triggered_backendHit_2_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_108[0:0] : data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_2_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_io_rdata_3_MPORT_data =
    data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_2_io_rdata_3_MPORT_data = data_triggered_backendHit_2_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_109[0:0] : data_triggered_backendHit_2[data_triggered_backendHit_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_2_MPORT_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_2_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_2_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_2_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_2_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_2_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_2_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_2_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_2_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_2_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_2_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_2_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_2_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_2_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_2_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_2_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_2_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_2_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_3_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_0_MPORT_data =
    data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_3_io_rdata_0_MPORT_data = data_triggered_backendHit_3_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_111[0:0] : data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_3_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_1_MPORT_data =
    data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_3_io_rdata_1_MPORT_data = data_triggered_backendHit_3_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_112[0:0] : data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_3_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_2_MPORT_data =
    data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_3_io_rdata_2_MPORT_data = data_triggered_backendHit_3_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_113[0:0] : data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_3_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_io_rdata_3_MPORT_data =
    data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_3_io_rdata_3_MPORT_data = data_triggered_backendHit_3_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_114[0:0] : data_triggered_backendHit_3[data_triggered_backendHit_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_3_MPORT_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_3_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_3_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_3_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_3_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_3_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_3_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_3_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_3_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_3_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_3_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_3_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_3_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_3_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_3_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_3_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_3_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_3_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_4_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_0_MPORT_data =
    data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_4_io_rdata_0_MPORT_data = data_triggered_backendHit_4_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_116[0:0] : data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_4_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_1_MPORT_data =
    data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_4_io_rdata_1_MPORT_data = data_triggered_backendHit_4_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_117[0:0] : data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_4_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_2_MPORT_data =
    data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_4_io_rdata_2_MPORT_data = data_triggered_backendHit_4_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_118[0:0] : data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_4_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_io_rdata_3_MPORT_data =
    data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_4_io_rdata_3_MPORT_data = data_triggered_backendHit_4_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_119[0:0] : data_triggered_backendHit_4[data_triggered_backendHit_4_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_4_MPORT_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_4_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_4_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_4_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_4_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_4_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_4_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_4_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_4_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_4_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_4_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_4_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_4_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_4_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_4_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_4_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_4_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_4_MPORT_7_en = io_wen_7;
  assign data_triggered_backendHit_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_triggered_backendHit_5_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_0_MPORT_data =
    data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_5_io_rdata_0_MPORT_data = data_triggered_backendHit_5_io_rdata_0_MPORT_addr >= 5'h18
     ? _RAND_121[0:0] : data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_1_MPORT_en = 1'h1;
  assign data_triggered_backendHit_5_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_1_MPORT_data =
    data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_5_io_rdata_1_MPORT_data = data_triggered_backendHit_5_io_rdata_1_MPORT_addr >= 5'h18
     ? _RAND_122[0:0] : data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_2_MPORT_en = 1'h1;
  assign data_triggered_backendHit_5_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_2_MPORT_data =
    data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_5_io_rdata_2_MPORT_data = data_triggered_backendHit_5_io_rdata_2_MPORT_addr >= 5'h18
     ? _RAND_123[0:0] : data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_3_MPORT_en = 1'h1;
  assign data_triggered_backendHit_5_io_rdata_3_MPORT_addr = raddr_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_io_rdata_3_MPORT_data =
    data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_triggered_backendHit_5_io_rdata_3_MPORT_data = data_triggered_backendHit_5_io_rdata_3_MPORT_addr >= 5'h18
     ? _RAND_124[0:0] : data_triggered_backendHit_5[data_triggered_backendHit_5_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_triggered_backendHit_5_MPORT_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_addr = io_waddr_0;
  assign data_triggered_backendHit_5_MPORT_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_en = io_wen_0;
  assign data_triggered_backendHit_5_MPORT_1_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_1_addr = io_waddr_1;
  assign data_triggered_backendHit_5_MPORT_1_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_1_en = io_wen_1;
  assign data_triggered_backendHit_5_MPORT_2_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_2_addr = io_waddr_2;
  assign data_triggered_backendHit_5_MPORT_2_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_2_en = io_wen_2;
  assign data_triggered_backendHit_5_MPORT_3_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_3_addr = io_waddr_3;
  assign data_triggered_backendHit_5_MPORT_3_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_3_en = io_wen_3;
  assign data_triggered_backendHit_5_MPORT_4_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_4_addr = io_waddr_4;
  assign data_triggered_backendHit_5_MPORT_4_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_4_en = io_wen_4;
  assign data_triggered_backendHit_5_MPORT_5_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_5_addr = io_waddr_5;
  assign data_triggered_backendHit_5_MPORT_5_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_5_en = io_wen_5;
  assign data_triggered_backendHit_5_MPORT_6_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_6_addr = io_waddr_6;
  assign data_triggered_backendHit_5_MPORT_6_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_6_en = io_wen_6;
  assign data_triggered_backendHit_5_MPORT_7_data = 1'h0;
  assign data_triggered_backendHit_5_MPORT_7_addr = io_waddr_7;
  assign data_triggered_backendHit_5_MPORT_7_mask = 1'h1;
  assign data_triggered_backendHit_5_MPORT_7_en = io_wen_7;
  assign io_rdata_0_inst = data_inst_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_foldpc = data_foldpc_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pd_isRVC = data_pd_isRVC_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pd_brType = data_pd_brType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pd_isCall = data_pd_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pd_isRet = data_pd_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pred_taken = data_pred_taken_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqPtr_flag = data_ftqPtr_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqPtr_value = data_ftqPtr_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ftqOffset = data_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ipf = data_ipf_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_acf = data_acf_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_crossPageIPFFix = data_crossPageIPFFix_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_frontendHit_0 = data_triggered_frontendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_frontendHit_1 = data_triggered_frontendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_frontendHit_2 = data_triggered_frontendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_frontendHit_3 = data_triggered_frontendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendEn_0 = data_triggered_backendEn_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendEn_1 = data_triggered_backendEn_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_0 = data_triggered_backendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_1 = data_triggered_backendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_2 = data_triggered_backendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_3 = data_triggered_backendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_4 = data_triggered_backendHit_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_triggered_backendHit_5 = data_triggered_backendHit_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_inst = data_inst_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_foldpc = data_foldpc_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pd_isRVC = data_pd_isRVC_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pd_brType = data_pd_brType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pd_isCall = data_pd_isCall_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pd_isRet = data_pd_isRet_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pred_taken = data_pred_taken_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqPtr_flag = data_ftqPtr_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqPtr_value = data_ftqPtr_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ftqOffset = data_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ipf = data_ipf_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_acf = data_acf_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_crossPageIPFFix = data_crossPageIPFFix_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_frontendHit_0 = data_triggered_frontendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_frontendHit_1 = data_triggered_frontendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_frontendHit_2 = data_triggered_frontendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_frontendHit_3 = data_triggered_frontendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendEn_0 = data_triggered_backendEn_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendEn_1 = data_triggered_backendEn_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_0 = data_triggered_backendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_1 = data_triggered_backendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_2 = data_triggered_backendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_3 = data_triggered_backendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_4 = data_triggered_backendHit_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_triggered_backendHit_5 = data_triggered_backendHit_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_inst = data_inst_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_foldpc = data_foldpc_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pd_isRVC = data_pd_isRVC_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pd_brType = data_pd_brType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pd_isCall = data_pd_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pd_isRet = data_pd_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pred_taken = data_pred_taken_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqPtr_flag = data_ftqPtr_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqPtr_value = data_ftqPtr_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ftqOffset = data_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ipf = data_ipf_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_acf = data_acf_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_crossPageIPFFix = data_crossPageIPFFix_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_frontendHit_0 = data_triggered_frontendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_frontendHit_1 = data_triggered_frontendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_frontendHit_2 = data_triggered_frontendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_frontendHit_3 = data_triggered_frontendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendEn_0 = data_triggered_backendEn_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendEn_1 = data_triggered_backendEn_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_0 = data_triggered_backendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_1 = data_triggered_backendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_2 = data_triggered_backendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_3 = data_triggered_backendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_4 = data_triggered_backendHit_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_triggered_backendHit_5 = data_triggered_backendHit_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_inst = data_inst_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_foldpc = data_foldpc_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pd_isRVC = data_pd_isRVC_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pd_brType = data_pd_brType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pd_isCall = data_pd_isCall_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pd_isRet = data_pd_isRet_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pred_taken = data_pred_taken_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqPtr_flag = data_ftqPtr_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqPtr_value = data_ftqPtr_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ftqOffset = data_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ipf = data_ipf_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_acf = data_acf_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_crossPageIPFFix = data_crossPageIPFFix_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_frontendHit_0 = data_triggered_frontendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_frontendHit_1 = data_triggered_frontendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_frontendHit_2 = data_triggered_frontendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_frontendHit_3 = data_triggered_frontendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendEn_0 = data_triggered_backendEn_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendEn_1 = data_triggered_backendEn_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_0 = data_triggered_backendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_1 = data_triggered_backendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_2 = data_triggered_backendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_3 = data_triggered_backendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_4 = data_triggered_backendHit_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_triggered_backendHit_5 = data_triggered_backendHit_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_inst_MPORT_en & data_inst_MPORT_mask) begin
      data_inst[data_inst_MPORT_addr] <= data_inst_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_1_en & data_inst_MPORT_1_mask) begin
      data_inst[data_inst_MPORT_1_addr] <= data_inst_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_2_en & data_inst_MPORT_2_mask) begin
      data_inst[data_inst_MPORT_2_addr] <= data_inst_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_3_en & data_inst_MPORT_3_mask) begin
      data_inst[data_inst_MPORT_3_addr] <= data_inst_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_4_en & data_inst_MPORT_4_mask) begin
      data_inst[data_inst_MPORT_4_addr] <= data_inst_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_5_en & data_inst_MPORT_5_mask) begin
      data_inst[data_inst_MPORT_5_addr] <= data_inst_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_6_en & data_inst_MPORT_6_mask) begin
      data_inst[data_inst_MPORT_6_addr] <= data_inst_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_inst_MPORT_7_en & data_inst_MPORT_7_mask) begin
      data_inst[data_inst_MPORT_7_addr] <= data_inst_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_en & data_foldpc_MPORT_mask) begin
      data_foldpc[data_foldpc_MPORT_addr] <= data_foldpc_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_1_en & data_foldpc_MPORT_1_mask) begin
      data_foldpc[data_foldpc_MPORT_1_addr] <= data_foldpc_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_2_en & data_foldpc_MPORT_2_mask) begin
      data_foldpc[data_foldpc_MPORT_2_addr] <= data_foldpc_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_3_en & data_foldpc_MPORT_3_mask) begin
      data_foldpc[data_foldpc_MPORT_3_addr] <= data_foldpc_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_4_en & data_foldpc_MPORT_4_mask) begin
      data_foldpc[data_foldpc_MPORT_4_addr] <= data_foldpc_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_5_en & data_foldpc_MPORT_5_mask) begin
      data_foldpc[data_foldpc_MPORT_5_addr] <= data_foldpc_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_6_en & data_foldpc_MPORT_6_mask) begin
      data_foldpc[data_foldpc_MPORT_6_addr] <= data_foldpc_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_foldpc_MPORT_7_en & data_foldpc_MPORT_7_mask) begin
      data_foldpc[data_foldpc_MPORT_7_addr] <= data_foldpc_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_en & data_pd_isRVC_MPORT_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_addr] <= data_pd_isRVC_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_1_en & data_pd_isRVC_MPORT_1_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_1_addr] <= data_pd_isRVC_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_2_en & data_pd_isRVC_MPORT_2_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_2_addr] <= data_pd_isRVC_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_3_en & data_pd_isRVC_MPORT_3_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_3_addr] <= data_pd_isRVC_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_4_en & data_pd_isRVC_MPORT_4_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_4_addr] <= data_pd_isRVC_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_5_en & data_pd_isRVC_MPORT_5_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_5_addr] <= data_pd_isRVC_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_6_en & data_pd_isRVC_MPORT_6_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_6_addr] <= data_pd_isRVC_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRVC_MPORT_7_en & data_pd_isRVC_MPORT_7_mask) begin
      data_pd_isRVC[data_pd_isRVC_MPORT_7_addr] <= data_pd_isRVC_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_en & data_pd_brType_MPORT_mask) begin
      data_pd_brType[data_pd_brType_MPORT_addr] <= data_pd_brType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_1_en & data_pd_brType_MPORT_1_mask) begin
      data_pd_brType[data_pd_brType_MPORT_1_addr] <= data_pd_brType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_2_en & data_pd_brType_MPORT_2_mask) begin
      data_pd_brType[data_pd_brType_MPORT_2_addr] <= data_pd_brType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_3_en & data_pd_brType_MPORT_3_mask) begin
      data_pd_brType[data_pd_brType_MPORT_3_addr] <= data_pd_brType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_4_en & data_pd_brType_MPORT_4_mask) begin
      data_pd_brType[data_pd_brType_MPORT_4_addr] <= data_pd_brType_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_5_en & data_pd_brType_MPORT_5_mask) begin
      data_pd_brType[data_pd_brType_MPORT_5_addr] <= data_pd_brType_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_6_en & data_pd_brType_MPORT_6_mask) begin
      data_pd_brType[data_pd_brType_MPORT_6_addr] <= data_pd_brType_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_brType_MPORT_7_en & data_pd_brType_MPORT_7_mask) begin
      data_pd_brType[data_pd_brType_MPORT_7_addr] <= data_pd_brType_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_en & data_pd_isCall_MPORT_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_addr] <= data_pd_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_1_en & data_pd_isCall_MPORT_1_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_1_addr] <= data_pd_isCall_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_2_en & data_pd_isCall_MPORT_2_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_2_addr] <= data_pd_isCall_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_3_en & data_pd_isCall_MPORT_3_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_3_addr] <= data_pd_isCall_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_4_en & data_pd_isCall_MPORT_4_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_4_addr] <= data_pd_isCall_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_5_en & data_pd_isCall_MPORT_5_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_5_addr] <= data_pd_isCall_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_6_en & data_pd_isCall_MPORT_6_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_6_addr] <= data_pd_isCall_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isCall_MPORT_7_en & data_pd_isCall_MPORT_7_mask) begin
      data_pd_isCall[data_pd_isCall_MPORT_7_addr] <= data_pd_isCall_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_en & data_pd_isRet_MPORT_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_addr] <= data_pd_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_1_en & data_pd_isRet_MPORT_1_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_1_addr] <= data_pd_isRet_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_2_en & data_pd_isRet_MPORT_2_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_2_addr] <= data_pd_isRet_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_3_en & data_pd_isRet_MPORT_3_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_3_addr] <= data_pd_isRet_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_4_en & data_pd_isRet_MPORT_4_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_4_addr] <= data_pd_isRet_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_5_en & data_pd_isRet_MPORT_5_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_5_addr] <= data_pd_isRet_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_6_en & data_pd_isRet_MPORT_6_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_6_addr] <= data_pd_isRet_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pd_isRet_MPORT_7_en & data_pd_isRet_MPORT_7_mask) begin
      data_pd_isRet[data_pd_isRet_MPORT_7_addr] <= data_pd_isRet_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_en & data_pred_taken_MPORT_mask) begin
      data_pred_taken[data_pred_taken_MPORT_addr] <= data_pred_taken_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_1_en & data_pred_taken_MPORT_1_mask) begin
      data_pred_taken[data_pred_taken_MPORT_1_addr] <= data_pred_taken_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_2_en & data_pred_taken_MPORT_2_mask) begin
      data_pred_taken[data_pred_taken_MPORT_2_addr] <= data_pred_taken_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_3_en & data_pred_taken_MPORT_3_mask) begin
      data_pred_taken[data_pred_taken_MPORT_3_addr] <= data_pred_taken_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_4_en & data_pred_taken_MPORT_4_mask) begin
      data_pred_taken[data_pred_taken_MPORT_4_addr] <= data_pred_taken_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_5_en & data_pred_taken_MPORT_5_mask) begin
      data_pred_taken[data_pred_taken_MPORT_5_addr] <= data_pred_taken_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_6_en & data_pred_taken_MPORT_6_mask) begin
      data_pred_taken[data_pred_taken_MPORT_6_addr] <= data_pred_taken_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pred_taken_MPORT_7_en & data_pred_taken_MPORT_7_mask) begin
      data_pred_taken[data_pred_taken_MPORT_7_addr] <= data_pred_taken_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_en & data_ftqPtr_flag_MPORT_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_addr] <= data_ftqPtr_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_1_en & data_ftqPtr_flag_MPORT_1_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_1_addr] <= data_ftqPtr_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_2_en & data_ftqPtr_flag_MPORT_2_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_2_addr] <= data_ftqPtr_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_3_en & data_ftqPtr_flag_MPORT_3_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_3_addr] <= data_ftqPtr_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_4_en & data_ftqPtr_flag_MPORT_4_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_4_addr] <= data_ftqPtr_flag_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_5_en & data_ftqPtr_flag_MPORT_5_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_5_addr] <= data_ftqPtr_flag_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_6_en & data_ftqPtr_flag_MPORT_6_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_6_addr] <= data_ftqPtr_flag_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_flag_MPORT_7_en & data_ftqPtr_flag_MPORT_7_mask) begin
      data_ftqPtr_flag[data_ftqPtr_flag_MPORT_7_addr] <= data_ftqPtr_flag_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_en & data_ftqPtr_value_MPORT_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_addr] <= data_ftqPtr_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_1_en & data_ftqPtr_value_MPORT_1_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_1_addr] <= data_ftqPtr_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_2_en & data_ftqPtr_value_MPORT_2_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_2_addr] <= data_ftqPtr_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_3_en & data_ftqPtr_value_MPORT_3_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_3_addr] <= data_ftqPtr_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_4_en & data_ftqPtr_value_MPORT_4_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_4_addr] <= data_ftqPtr_value_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_5_en & data_ftqPtr_value_MPORT_5_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_5_addr] <= data_ftqPtr_value_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_6_en & data_ftqPtr_value_MPORT_6_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_6_addr] <= data_ftqPtr_value_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqPtr_value_MPORT_7_en & data_ftqPtr_value_MPORT_7_mask) begin
      data_ftqPtr_value[data_ftqPtr_value_MPORT_7_addr] <= data_ftqPtr_value_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
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
    if (data_ftqOffset_MPORT_4_en & data_ftqOffset_MPORT_4_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_4_addr] <= data_ftqOffset_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_5_en & data_ftqOffset_MPORT_5_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_5_addr] <= data_ftqOffset_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_6_en & data_ftqOffset_MPORT_6_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_6_addr] <= data_ftqOffset_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ftqOffset_MPORT_7_en & data_ftqOffset_MPORT_7_mask) begin
      data_ftqOffset[data_ftqOffset_MPORT_7_addr] <= data_ftqOffset_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_en & data_ipf_MPORT_mask) begin
      data_ipf[data_ipf_MPORT_addr] <= data_ipf_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_1_en & data_ipf_MPORT_1_mask) begin
      data_ipf[data_ipf_MPORT_1_addr] <= data_ipf_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_2_en & data_ipf_MPORT_2_mask) begin
      data_ipf[data_ipf_MPORT_2_addr] <= data_ipf_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_3_en & data_ipf_MPORT_3_mask) begin
      data_ipf[data_ipf_MPORT_3_addr] <= data_ipf_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_4_en & data_ipf_MPORT_4_mask) begin
      data_ipf[data_ipf_MPORT_4_addr] <= data_ipf_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_5_en & data_ipf_MPORT_5_mask) begin
      data_ipf[data_ipf_MPORT_5_addr] <= data_ipf_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_6_en & data_ipf_MPORT_6_mask) begin
      data_ipf[data_ipf_MPORT_6_addr] <= data_ipf_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ipf_MPORT_7_en & data_ipf_MPORT_7_mask) begin
      data_ipf[data_ipf_MPORT_7_addr] <= data_ipf_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_en & data_acf_MPORT_mask) begin
      data_acf[data_acf_MPORT_addr] <= data_acf_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_1_en & data_acf_MPORT_1_mask) begin
      data_acf[data_acf_MPORT_1_addr] <= data_acf_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_2_en & data_acf_MPORT_2_mask) begin
      data_acf[data_acf_MPORT_2_addr] <= data_acf_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_3_en & data_acf_MPORT_3_mask) begin
      data_acf[data_acf_MPORT_3_addr] <= data_acf_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_4_en & data_acf_MPORT_4_mask) begin
      data_acf[data_acf_MPORT_4_addr] <= data_acf_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_5_en & data_acf_MPORT_5_mask) begin
      data_acf[data_acf_MPORT_5_addr] <= data_acf_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_6_en & data_acf_MPORT_6_mask) begin
      data_acf[data_acf_MPORT_6_addr] <= data_acf_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_acf_MPORT_7_en & data_acf_MPORT_7_mask) begin
      data_acf[data_acf_MPORT_7_addr] <= data_acf_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_en & data_crossPageIPFFix_MPORT_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_addr] <= data_crossPageIPFFix_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_1_en & data_crossPageIPFFix_MPORT_1_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_1_addr] <= data_crossPageIPFFix_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_2_en & data_crossPageIPFFix_MPORT_2_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_2_addr] <= data_crossPageIPFFix_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_3_en & data_crossPageIPFFix_MPORT_3_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_3_addr] <= data_crossPageIPFFix_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_4_en & data_crossPageIPFFix_MPORT_4_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_4_addr] <= data_crossPageIPFFix_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_5_en & data_crossPageIPFFix_MPORT_5_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_5_addr] <= data_crossPageIPFFix_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_6_en & data_crossPageIPFFix_MPORT_6_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_6_addr] <= data_crossPageIPFFix_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_crossPageIPFFix_MPORT_7_en & data_crossPageIPFFix_MPORT_7_mask) begin
      data_crossPageIPFFix[data_crossPageIPFFix_MPORT_7_addr] <= data_crossPageIPFFix_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_en & data_triggered_frontendHit_0_MPORT_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_addr] <= data_triggered_frontendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_1_en & data_triggered_frontendHit_0_MPORT_1_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_1_addr] <=
        data_triggered_frontendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_2_en & data_triggered_frontendHit_0_MPORT_2_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_2_addr] <=
        data_triggered_frontendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_3_en & data_triggered_frontendHit_0_MPORT_3_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_3_addr] <=
        data_triggered_frontendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_4_en & data_triggered_frontendHit_0_MPORT_4_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_4_addr] <=
        data_triggered_frontendHit_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_5_en & data_triggered_frontendHit_0_MPORT_5_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_5_addr] <=
        data_triggered_frontendHit_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_6_en & data_triggered_frontendHit_0_MPORT_6_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_6_addr] <=
        data_triggered_frontendHit_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_0_MPORT_7_en & data_triggered_frontendHit_0_MPORT_7_mask) begin
      data_triggered_frontendHit_0[data_triggered_frontendHit_0_MPORT_7_addr] <=
        data_triggered_frontendHit_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_en & data_triggered_frontendHit_1_MPORT_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_addr] <= data_triggered_frontendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_1_en & data_triggered_frontendHit_1_MPORT_1_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_1_addr] <=
        data_triggered_frontendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_2_en & data_triggered_frontendHit_1_MPORT_2_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_2_addr] <=
        data_triggered_frontendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_3_en & data_triggered_frontendHit_1_MPORT_3_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_3_addr] <=
        data_triggered_frontendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_4_en & data_triggered_frontendHit_1_MPORT_4_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_4_addr] <=
        data_triggered_frontendHit_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_5_en & data_triggered_frontendHit_1_MPORT_5_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_5_addr] <=
        data_triggered_frontendHit_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_6_en & data_triggered_frontendHit_1_MPORT_6_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_6_addr] <=
        data_triggered_frontendHit_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_1_MPORT_7_en & data_triggered_frontendHit_1_MPORT_7_mask) begin
      data_triggered_frontendHit_1[data_triggered_frontendHit_1_MPORT_7_addr] <=
        data_triggered_frontendHit_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_en & data_triggered_frontendHit_2_MPORT_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_addr] <= data_triggered_frontendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_1_en & data_triggered_frontendHit_2_MPORT_1_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_1_addr] <=
        data_triggered_frontendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_2_en & data_triggered_frontendHit_2_MPORT_2_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_2_addr] <=
        data_triggered_frontendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_3_en & data_triggered_frontendHit_2_MPORT_3_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_3_addr] <=
        data_triggered_frontendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_4_en & data_triggered_frontendHit_2_MPORT_4_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_4_addr] <=
        data_triggered_frontendHit_2_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_5_en & data_triggered_frontendHit_2_MPORT_5_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_5_addr] <=
        data_triggered_frontendHit_2_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_6_en & data_triggered_frontendHit_2_MPORT_6_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_6_addr] <=
        data_triggered_frontendHit_2_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_2_MPORT_7_en & data_triggered_frontendHit_2_MPORT_7_mask) begin
      data_triggered_frontendHit_2[data_triggered_frontendHit_2_MPORT_7_addr] <=
        data_triggered_frontendHit_2_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_en & data_triggered_frontendHit_3_MPORT_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_addr] <= data_triggered_frontendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_1_en & data_triggered_frontendHit_3_MPORT_1_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_1_addr] <=
        data_triggered_frontendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_2_en & data_triggered_frontendHit_3_MPORT_2_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_2_addr] <=
        data_triggered_frontendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_3_en & data_triggered_frontendHit_3_MPORT_3_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_3_addr] <=
        data_triggered_frontendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_4_en & data_triggered_frontendHit_3_MPORT_4_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_4_addr] <=
        data_triggered_frontendHit_3_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_5_en & data_triggered_frontendHit_3_MPORT_5_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_5_addr] <=
        data_triggered_frontendHit_3_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_6_en & data_triggered_frontendHit_3_MPORT_6_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_6_addr] <=
        data_triggered_frontendHit_3_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_frontendHit_3_MPORT_7_en & data_triggered_frontendHit_3_MPORT_7_mask) begin
      data_triggered_frontendHit_3[data_triggered_frontendHit_3_MPORT_7_addr] <=
        data_triggered_frontendHit_3_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_en & data_triggered_backendEn_0_MPORT_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_addr] <= data_triggered_backendEn_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_1_en & data_triggered_backendEn_0_MPORT_1_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_1_addr] <= data_triggered_backendEn_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_2_en & data_triggered_backendEn_0_MPORT_2_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_2_addr] <= data_triggered_backendEn_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_3_en & data_triggered_backendEn_0_MPORT_3_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_3_addr] <= data_triggered_backendEn_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_4_en & data_triggered_backendEn_0_MPORT_4_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_4_addr] <= data_triggered_backendEn_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_5_en & data_triggered_backendEn_0_MPORT_5_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_5_addr] <= data_triggered_backendEn_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_6_en & data_triggered_backendEn_0_MPORT_6_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_6_addr] <= data_triggered_backendEn_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_0_MPORT_7_en & data_triggered_backendEn_0_MPORT_7_mask) begin
      data_triggered_backendEn_0[data_triggered_backendEn_0_MPORT_7_addr] <= data_triggered_backendEn_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_en & data_triggered_backendEn_1_MPORT_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_addr] <= data_triggered_backendEn_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_1_en & data_triggered_backendEn_1_MPORT_1_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_1_addr] <= data_triggered_backendEn_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_2_en & data_triggered_backendEn_1_MPORT_2_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_2_addr] <= data_triggered_backendEn_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_3_en & data_triggered_backendEn_1_MPORT_3_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_3_addr] <= data_triggered_backendEn_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_4_en & data_triggered_backendEn_1_MPORT_4_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_4_addr] <= data_triggered_backendEn_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_5_en & data_triggered_backendEn_1_MPORT_5_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_5_addr] <= data_triggered_backendEn_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_6_en & data_triggered_backendEn_1_MPORT_6_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_6_addr] <= data_triggered_backendEn_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendEn_1_MPORT_7_en & data_triggered_backendEn_1_MPORT_7_mask) begin
      data_triggered_backendEn_1[data_triggered_backendEn_1_MPORT_7_addr] <= data_triggered_backendEn_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_en & data_triggered_backendHit_0_MPORT_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_addr] <= data_triggered_backendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_1_en & data_triggered_backendHit_0_MPORT_1_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_1_addr] <= data_triggered_backendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_2_en & data_triggered_backendHit_0_MPORT_2_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_2_addr] <= data_triggered_backendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_3_en & data_triggered_backendHit_0_MPORT_3_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_3_addr] <= data_triggered_backendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_4_en & data_triggered_backendHit_0_MPORT_4_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_4_addr] <= data_triggered_backendHit_0_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_5_en & data_triggered_backendHit_0_MPORT_5_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_5_addr] <= data_triggered_backendHit_0_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_6_en & data_triggered_backendHit_0_MPORT_6_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_6_addr] <= data_triggered_backendHit_0_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_0_MPORT_7_en & data_triggered_backendHit_0_MPORT_7_mask) begin
      data_triggered_backendHit_0[data_triggered_backendHit_0_MPORT_7_addr] <= data_triggered_backendHit_0_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_en & data_triggered_backendHit_1_MPORT_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_addr] <= data_triggered_backendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_1_en & data_triggered_backendHit_1_MPORT_1_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_1_addr] <= data_triggered_backendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_2_en & data_triggered_backendHit_1_MPORT_2_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_2_addr] <= data_triggered_backendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_3_en & data_triggered_backendHit_1_MPORT_3_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_3_addr] <= data_triggered_backendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_4_en & data_triggered_backendHit_1_MPORT_4_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_4_addr] <= data_triggered_backendHit_1_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_5_en & data_triggered_backendHit_1_MPORT_5_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_5_addr] <= data_triggered_backendHit_1_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_6_en & data_triggered_backendHit_1_MPORT_6_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_6_addr] <= data_triggered_backendHit_1_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_1_MPORT_7_en & data_triggered_backendHit_1_MPORT_7_mask) begin
      data_triggered_backendHit_1[data_triggered_backendHit_1_MPORT_7_addr] <= data_triggered_backendHit_1_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_en & data_triggered_backendHit_2_MPORT_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_addr] <= data_triggered_backendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_1_en & data_triggered_backendHit_2_MPORT_1_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_1_addr] <= data_triggered_backendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_2_en & data_triggered_backendHit_2_MPORT_2_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_2_addr] <= data_triggered_backendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_3_en & data_triggered_backendHit_2_MPORT_3_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_3_addr] <= data_triggered_backendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_4_en & data_triggered_backendHit_2_MPORT_4_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_4_addr] <= data_triggered_backendHit_2_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_5_en & data_triggered_backendHit_2_MPORT_5_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_5_addr] <= data_triggered_backendHit_2_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_6_en & data_triggered_backendHit_2_MPORT_6_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_6_addr] <= data_triggered_backendHit_2_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_2_MPORT_7_en & data_triggered_backendHit_2_MPORT_7_mask) begin
      data_triggered_backendHit_2[data_triggered_backendHit_2_MPORT_7_addr] <= data_triggered_backendHit_2_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_en & data_triggered_backendHit_3_MPORT_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_addr] <= data_triggered_backendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_1_en & data_triggered_backendHit_3_MPORT_1_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_1_addr] <= data_triggered_backendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_2_en & data_triggered_backendHit_3_MPORT_2_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_2_addr] <= data_triggered_backendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_3_en & data_triggered_backendHit_3_MPORT_3_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_3_addr] <= data_triggered_backendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_4_en & data_triggered_backendHit_3_MPORT_4_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_4_addr] <= data_triggered_backendHit_3_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_5_en & data_triggered_backendHit_3_MPORT_5_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_5_addr] <= data_triggered_backendHit_3_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_6_en & data_triggered_backendHit_3_MPORT_6_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_6_addr] <= data_triggered_backendHit_3_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_3_MPORT_7_en & data_triggered_backendHit_3_MPORT_7_mask) begin
      data_triggered_backendHit_3[data_triggered_backendHit_3_MPORT_7_addr] <= data_triggered_backendHit_3_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_en & data_triggered_backendHit_4_MPORT_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_addr] <= data_triggered_backendHit_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_1_en & data_triggered_backendHit_4_MPORT_1_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_1_addr] <= data_triggered_backendHit_4_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_2_en & data_triggered_backendHit_4_MPORT_2_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_2_addr] <= data_triggered_backendHit_4_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_3_en & data_triggered_backendHit_4_MPORT_3_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_3_addr] <= data_triggered_backendHit_4_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_4_en & data_triggered_backendHit_4_MPORT_4_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_4_addr] <= data_triggered_backendHit_4_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_5_en & data_triggered_backendHit_4_MPORT_5_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_5_addr] <= data_triggered_backendHit_4_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_6_en & data_triggered_backendHit_4_MPORT_6_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_6_addr] <= data_triggered_backendHit_4_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_4_MPORT_7_en & data_triggered_backendHit_4_MPORT_7_mask) begin
      data_triggered_backendHit_4[data_triggered_backendHit_4_MPORT_7_addr] <= data_triggered_backendHit_4_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_en & data_triggered_backendHit_5_MPORT_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_addr] <= data_triggered_backendHit_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_1_en & data_triggered_backendHit_5_MPORT_1_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_1_addr] <= data_triggered_backendHit_5_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_2_en & data_triggered_backendHit_5_MPORT_2_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_2_addr] <= data_triggered_backendHit_5_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_3_en & data_triggered_backendHit_5_MPORT_3_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_3_addr] <= data_triggered_backendHit_5_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_4_en & data_triggered_backendHit_5_MPORT_4_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_4_addr] <= data_triggered_backendHit_5_MPORT_4_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_5_en & data_triggered_backendHit_5_MPORT_5_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_5_addr] <= data_triggered_backendHit_5_MPORT_5_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_6_en & data_triggered_backendHit_5_MPORT_6_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_6_addr] <= data_triggered_backendHit_5_MPORT_6_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_triggered_backendHit_5_MPORT_7_en & data_triggered_backendHit_5_MPORT_7_mask) begin
      data_triggered_backendHit_5[data_triggered_backendHit_5_MPORT_7_addr] <= data_triggered_backendHit_5_MPORT_7_data; // @[DataModuleTemplate.scala 64:17]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  _RAND_6 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  _RAND_8 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  _RAND_12 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_14 = {1{`RANDOM}};
  _RAND_16 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_18 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_22 = {1{`RANDOM}};
  _RAND_23 = {1{`RANDOM}};
  _RAND_24 = {1{`RANDOM}};
  _RAND_26 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  _RAND_28 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
  _RAND_31 = {1{`RANDOM}};
  _RAND_32 = {1{`RANDOM}};
  _RAND_33 = {1{`RANDOM}};
  _RAND_34 = {1{`RANDOM}};
  _RAND_36 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
  _RAND_38 = {1{`RANDOM}};
  _RAND_39 = {1{`RANDOM}};
  _RAND_41 = {1{`RANDOM}};
  _RAND_42 = {1{`RANDOM}};
  _RAND_43 = {1{`RANDOM}};
  _RAND_44 = {1{`RANDOM}};
  _RAND_46 = {1{`RANDOM}};
  _RAND_47 = {1{`RANDOM}};
  _RAND_48 = {1{`RANDOM}};
  _RAND_49 = {1{`RANDOM}};
  _RAND_51 = {1{`RANDOM}};
  _RAND_52 = {1{`RANDOM}};
  _RAND_53 = {1{`RANDOM}};
  _RAND_54 = {1{`RANDOM}};
  _RAND_56 = {1{`RANDOM}};
  _RAND_57 = {1{`RANDOM}};
  _RAND_58 = {1{`RANDOM}};
  _RAND_59 = {1{`RANDOM}};
  _RAND_61 = {1{`RANDOM}};
  _RAND_62 = {1{`RANDOM}};
  _RAND_63 = {1{`RANDOM}};
  _RAND_64 = {1{`RANDOM}};
  _RAND_66 = {1{`RANDOM}};
  _RAND_67 = {1{`RANDOM}};
  _RAND_68 = {1{`RANDOM}};
  _RAND_69 = {1{`RANDOM}};
  _RAND_71 = {1{`RANDOM}};
  _RAND_72 = {1{`RANDOM}};
  _RAND_73 = {1{`RANDOM}};
  _RAND_74 = {1{`RANDOM}};
  _RAND_76 = {1{`RANDOM}};
  _RAND_77 = {1{`RANDOM}};
  _RAND_78 = {1{`RANDOM}};
  _RAND_79 = {1{`RANDOM}};
  _RAND_81 = {1{`RANDOM}};
  _RAND_82 = {1{`RANDOM}};
  _RAND_83 = {1{`RANDOM}};
  _RAND_84 = {1{`RANDOM}};
  _RAND_86 = {1{`RANDOM}};
  _RAND_87 = {1{`RANDOM}};
  _RAND_88 = {1{`RANDOM}};
  _RAND_89 = {1{`RANDOM}};
  _RAND_91 = {1{`RANDOM}};
  _RAND_92 = {1{`RANDOM}};
  _RAND_93 = {1{`RANDOM}};
  _RAND_94 = {1{`RANDOM}};
  _RAND_96 = {1{`RANDOM}};
  _RAND_97 = {1{`RANDOM}};
  _RAND_98 = {1{`RANDOM}};
  _RAND_99 = {1{`RANDOM}};
  _RAND_101 = {1{`RANDOM}};
  _RAND_102 = {1{`RANDOM}};
  _RAND_103 = {1{`RANDOM}};
  _RAND_104 = {1{`RANDOM}};
  _RAND_106 = {1{`RANDOM}};
  _RAND_107 = {1{`RANDOM}};
  _RAND_108 = {1{`RANDOM}};
  _RAND_109 = {1{`RANDOM}};
  _RAND_111 = {1{`RANDOM}};
  _RAND_112 = {1{`RANDOM}};
  _RAND_113 = {1{`RANDOM}};
  _RAND_114 = {1{`RANDOM}};
  _RAND_116 = {1{`RANDOM}};
  _RAND_117 = {1{`RANDOM}};
  _RAND_118 = {1{`RANDOM}};
  _RAND_119 = {1{`RANDOM}};
  _RAND_121 = {1{`RANDOM}};
  _RAND_122 = {1{`RANDOM}};
  _RAND_123 = {1{`RANDOM}};
  _RAND_124 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_inst[initvar] = _RAND_0[31:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_foldpc[initvar] = _RAND_5[9:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_pd_isRVC[initvar] = _RAND_10[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_pd_brType[initvar] = _RAND_15[1:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_pd_isCall[initvar] = _RAND_20[0:0];
  _RAND_25 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_pd_isRet[initvar] = _RAND_25[0:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_pred_taken[initvar] = _RAND_30[0:0];
  _RAND_35 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_ftqPtr_flag[initvar] = _RAND_35[0:0];
  _RAND_40 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_ftqPtr_value[initvar] = _RAND_40[5:0];
  _RAND_45 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_ftqOffset[initvar] = _RAND_45[2:0];
  _RAND_50 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_ipf[initvar] = _RAND_50[0:0];
  _RAND_55 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_acf[initvar] = _RAND_55[0:0];
  _RAND_60 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_crossPageIPFFix[initvar] = _RAND_60[0:0];
  _RAND_65 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_frontendHit_0[initvar] = _RAND_65[0:0];
  _RAND_70 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_frontendHit_1[initvar] = _RAND_70[0:0];
  _RAND_75 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_frontendHit_2[initvar] = _RAND_75[0:0];
  _RAND_80 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_frontendHit_3[initvar] = _RAND_80[0:0];
  _RAND_85 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendEn_0[initvar] = _RAND_85[0:0];
  _RAND_90 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendEn_1[initvar] = _RAND_90[0:0];
  _RAND_95 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_0[initvar] = _RAND_95[0:0];
  _RAND_100 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_1[initvar] = _RAND_100[0:0];
  _RAND_105 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_2[initvar] = _RAND_105[0:0];
  _RAND_110 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_3[initvar] = _RAND_110[0:0];
  _RAND_115 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_4[initvar] = _RAND_115[0:0];
  _RAND_120 = {1{`RANDOM}};
  for (initvar = 0; initvar < 24; initvar = initvar+1)
    data_triggered_backendHit_5[initvar] = _RAND_120[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  raddr_0 = _RAND_125[4:0];
  _RAND_126 = {1{`RANDOM}};
  raddr_1 = _RAND_126[4:0];
  _RAND_127 = {1{`RANDOM}};
  raddr_2 = _RAND_127[4:0];
  _RAND_128 = {1{`RANDOM}};
  raddr_3 = _RAND_128[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
