module RenameTableWrapper(
  input        clock,
  input        reset,
  input        io_robCommits_isWalk,
  input        io_robCommits_valid_0,
  input        io_robCommits_valid_1,
  input        io_robCommits_valid_2,
  input        io_robCommits_valid_3,
  input  [4:0] io_robCommits_info_0_ldest,
  input        io_robCommits_info_0_rfWen,
  input        io_robCommits_info_0_fpWen,
  input  [6:0] io_robCommits_info_0_pdest,
  input  [6:0] io_robCommits_info_0_old_pdest,
  input  [4:0] io_robCommits_info_1_ldest,
  input        io_robCommits_info_1_rfWen,
  input        io_robCommits_info_1_fpWen,
  input  [6:0] io_robCommits_info_1_pdest,
  input  [6:0] io_robCommits_info_1_old_pdest,
  input  [4:0] io_robCommits_info_2_ldest,
  input        io_robCommits_info_2_rfWen,
  input        io_robCommits_info_2_fpWen,
  input  [6:0] io_robCommits_info_2_pdest,
  input  [6:0] io_robCommits_info_2_old_pdest,
  input  [4:0] io_robCommits_info_3_ldest,
  input        io_robCommits_info_3_rfWen,
  input        io_robCommits_info_3_fpWen,
  input  [6:0] io_robCommits_info_3_pdest,
  input  [6:0] io_robCommits_info_3_old_pdest,
  input        io_intReadPorts_0_0_hold,
  input  [4:0] io_intReadPorts_0_0_addr,
  output [6:0] io_intReadPorts_0_0_data,
  input        io_intReadPorts_0_1_hold,
  input  [4:0] io_intReadPorts_0_1_addr,
  output [6:0] io_intReadPorts_0_1_data,
  input        io_intReadPorts_0_2_hold,
  input  [4:0] io_intReadPorts_0_2_addr,
  output [6:0] io_intReadPorts_0_2_data,
  input        io_intReadPorts_1_0_hold,
  input  [4:0] io_intReadPorts_1_0_addr,
  output [6:0] io_intReadPorts_1_0_data,
  input        io_intReadPorts_1_1_hold,
  input  [4:0] io_intReadPorts_1_1_addr,
  output [6:0] io_intReadPorts_1_1_data,
  input        io_intReadPorts_1_2_hold,
  input  [4:0] io_intReadPorts_1_2_addr,
  output [6:0] io_intReadPorts_1_2_data,
  input        io_intReadPorts_2_0_hold,
  input  [4:0] io_intReadPorts_2_0_addr,
  output [6:0] io_intReadPorts_2_0_data,
  input        io_intReadPorts_2_1_hold,
  input  [4:0] io_intReadPorts_2_1_addr,
  output [6:0] io_intReadPorts_2_1_data,
  input        io_intReadPorts_2_2_hold,
  input  [4:0] io_intReadPorts_2_2_addr,
  output [6:0] io_intReadPorts_2_2_data,
  input        io_intReadPorts_3_0_hold,
  input  [4:0] io_intReadPorts_3_0_addr,
  output [6:0] io_intReadPorts_3_0_data,
  input        io_intReadPorts_3_1_hold,
  input  [4:0] io_intReadPorts_3_1_addr,
  output [6:0] io_intReadPorts_3_1_data,
  input        io_intReadPorts_3_2_hold,
  input  [4:0] io_intReadPorts_3_2_addr,
  output [6:0] io_intReadPorts_3_2_data,
  input        io_intRenamePorts_0_wen,
  input  [4:0] io_intRenamePorts_0_addr,
  input  [6:0] io_intRenamePorts_0_data,
  input        io_intRenamePorts_1_wen,
  input  [4:0] io_intRenamePorts_1_addr,
  input  [6:0] io_intRenamePorts_1_data,
  input        io_intRenamePorts_2_wen,
  input  [4:0] io_intRenamePorts_2_addr,
  input  [6:0] io_intRenamePorts_2_data,
  input        io_intRenamePorts_3_wen,
  input  [4:0] io_intRenamePorts_3_addr,
  input  [6:0] io_intRenamePorts_3_data,
  input        io_fpReadPorts_0_0_hold,
  input  [4:0] io_fpReadPorts_0_0_addr,
  output [6:0] io_fpReadPorts_0_0_data,
  input        io_fpReadPorts_0_1_hold,
  input  [4:0] io_fpReadPorts_0_1_addr,
  output [6:0] io_fpReadPorts_0_1_data,
  input        io_fpReadPorts_0_2_hold,
  input  [4:0] io_fpReadPorts_0_2_addr,
  output [6:0] io_fpReadPorts_0_2_data,
  input        io_fpReadPorts_0_3_hold,
  input  [4:0] io_fpReadPorts_0_3_addr,
  output [6:0] io_fpReadPorts_0_3_data,
  input        io_fpReadPorts_1_0_hold,
  input  [4:0] io_fpReadPorts_1_0_addr,
  output [6:0] io_fpReadPorts_1_0_data,
  input        io_fpReadPorts_1_1_hold,
  input  [4:0] io_fpReadPorts_1_1_addr,
  output [6:0] io_fpReadPorts_1_1_data,
  input        io_fpReadPorts_1_2_hold,
  input  [4:0] io_fpReadPorts_1_2_addr,
  output [6:0] io_fpReadPorts_1_2_data,
  input        io_fpReadPorts_1_3_hold,
  input  [4:0] io_fpReadPorts_1_3_addr,
  output [6:0] io_fpReadPorts_1_3_data,
  input        io_fpReadPorts_2_0_hold,
  input  [4:0] io_fpReadPorts_2_0_addr,
  output [6:0] io_fpReadPorts_2_0_data,
  input        io_fpReadPorts_2_1_hold,
  input  [4:0] io_fpReadPorts_2_1_addr,
  output [6:0] io_fpReadPorts_2_1_data,
  input        io_fpReadPorts_2_2_hold,
  input  [4:0] io_fpReadPorts_2_2_addr,
  output [6:0] io_fpReadPorts_2_2_data,
  input        io_fpReadPorts_2_3_hold,
  input  [4:0] io_fpReadPorts_2_3_addr,
  output [6:0] io_fpReadPorts_2_3_data,
  input        io_fpReadPorts_3_0_hold,
  input  [4:0] io_fpReadPorts_3_0_addr,
  output [6:0] io_fpReadPorts_3_0_data,
  input        io_fpReadPorts_3_1_hold,
  input  [4:0] io_fpReadPorts_3_1_addr,
  output [6:0] io_fpReadPorts_3_1_data,
  input        io_fpReadPorts_3_2_hold,
  input  [4:0] io_fpReadPorts_3_2_addr,
  output [6:0] io_fpReadPorts_3_2_data,
  input        io_fpReadPorts_3_3_hold,
  input  [4:0] io_fpReadPorts_3_3_addr,
  output [6:0] io_fpReadPorts_3_3_data,
  input        io_fpRenamePorts_0_wen,
  input  [4:0] io_fpRenamePorts_0_addr,
  input  [6:0] io_fpRenamePorts_0_data,
  input        io_fpRenamePorts_1_wen,
  input  [4:0] io_fpRenamePorts_1_addr,
  input  [6:0] io_fpRenamePorts_1_data,
  input        io_fpRenamePorts_2_wen,
  input  [4:0] io_fpRenamePorts_2_addr,
  input  [6:0] io_fpRenamePorts_2_data,
  input        io_fpRenamePorts_3_wen,
  input  [4:0] io_fpRenamePorts_3_addr,
  input  [6:0] io_fpRenamePorts_3_data,
  output [6:0] io_debug_int_rat_0,
  output [6:0] io_debug_int_rat_1,
  output [6:0] io_debug_int_rat_2,
  output [6:0] io_debug_int_rat_3,
  output [6:0] io_debug_int_rat_4,
  output [6:0] io_debug_int_rat_5,
  output [6:0] io_debug_int_rat_6,
  output [6:0] io_debug_int_rat_7,
  output [6:0] io_debug_int_rat_8,
  output [6:0] io_debug_int_rat_9,
  output [6:0] io_debug_int_rat_10,
  output [6:0] io_debug_int_rat_11,
  output [6:0] io_debug_int_rat_12,
  output [6:0] io_debug_int_rat_13,
  output [6:0] io_debug_int_rat_14,
  output [6:0] io_debug_int_rat_15,
  output [6:0] io_debug_int_rat_16,
  output [6:0] io_debug_int_rat_17,
  output [6:0] io_debug_int_rat_18,
  output [6:0] io_debug_int_rat_19,
  output [6:0] io_debug_int_rat_20,
  output [6:0] io_debug_int_rat_21,
  output [6:0] io_debug_int_rat_22,
  output [6:0] io_debug_int_rat_23,
  output [6:0] io_debug_int_rat_24,
  output [6:0] io_debug_int_rat_25,
  output [6:0] io_debug_int_rat_26,
  output [6:0] io_debug_int_rat_27,
  output [6:0] io_debug_int_rat_28,
  output [6:0] io_debug_int_rat_29,
  output [6:0] io_debug_int_rat_30,
  output [6:0] io_debug_int_rat_31,
  output [6:0] io_debug_fp_rat_0,
  output [6:0] io_debug_fp_rat_1,
  output [6:0] io_debug_fp_rat_2,
  output [6:0] io_debug_fp_rat_3,
  output [6:0] io_debug_fp_rat_4,
  output [6:0] io_debug_fp_rat_5,
  output [6:0] io_debug_fp_rat_6,
  output [6:0] io_debug_fp_rat_7,
  output [6:0] io_debug_fp_rat_8,
  output [6:0] io_debug_fp_rat_9,
  output [6:0] io_debug_fp_rat_10,
  output [6:0] io_debug_fp_rat_11,
  output [6:0] io_debug_fp_rat_12,
  output [6:0] io_debug_fp_rat_13,
  output [6:0] io_debug_fp_rat_14,
  output [6:0] io_debug_fp_rat_15,
  output [6:0] io_debug_fp_rat_16,
  output [6:0] io_debug_fp_rat_17,
  output [6:0] io_debug_fp_rat_18,
  output [6:0] io_debug_fp_rat_19,
  output [6:0] io_debug_fp_rat_20,
  output [6:0] io_debug_fp_rat_21,
  output [6:0] io_debug_fp_rat_22,
  output [6:0] io_debug_fp_rat_23,
  output [6:0] io_debug_fp_rat_24,
  output [6:0] io_debug_fp_rat_25,
  output [6:0] io_debug_fp_rat_26,
  output [6:0] io_debug_fp_rat_27,
  output [6:0] io_debug_fp_rat_28,
  output [6:0] io_debug_fp_rat_29,
  output [6:0] io_debug_fp_rat_30,
  output [6:0] io_debug_fp_rat_31
);
  wire  intRat_clock; // @[RenameTable.scala 101:22]
  wire  intRat_reset; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_0_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_0_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_0_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_1_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_1_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_1_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_2_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_2_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_2_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_3_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_3_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_3_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_4_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_4_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_4_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_5_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_5_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_5_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_6_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_6_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_6_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_7_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_7_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_7_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_8_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_8_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_8_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_9_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_9_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_9_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_10_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_10_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_10_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_readPorts_11_hold; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_readPorts_11_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_readPorts_11_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_specWritePorts_0_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_specWritePorts_0_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_specWritePorts_0_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_specWritePorts_1_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_specWritePorts_1_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_specWritePorts_1_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_specWritePorts_2_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_specWritePorts_2_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_specWritePorts_2_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_specWritePorts_3_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_specWritePorts_3_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_specWritePorts_3_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_archWritePorts_0_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_archWritePorts_0_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_archWritePorts_0_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_archWritePorts_1_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_archWritePorts_1_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_archWritePorts_1_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_archWritePorts_2_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_archWritePorts_2_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_archWritePorts_2_data; // @[RenameTable.scala 101:22]
  wire  intRat_io_archWritePorts_3_wen; // @[RenameTable.scala 101:22]
  wire [4:0] intRat_io_archWritePorts_3_addr; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_archWritePorts_3_data; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_0; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_1; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_2; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_3; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_4; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_5; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_6; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_7; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_8; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_9; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_10; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_11; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_12; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_13; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_14; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_15; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_16; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_17; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_18; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_19; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_20; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_21; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_22; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_23; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_24; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_25; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_26; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_27; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_28; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_29; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_30; // @[RenameTable.scala 101:22]
  wire [6:0] intRat_io_debug_rdata_31; // @[RenameTable.scala 101:22]
  wire  fpRat_clock; // @[RenameTable.scala 102:21]
  wire  fpRat_reset; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_0_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_0_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_0_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_1_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_1_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_1_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_2_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_2_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_2_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_3_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_3_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_3_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_4_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_4_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_4_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_5_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_5_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_5_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_6_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_6_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_6_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_7_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_7_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_7_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_8_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_8_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_8_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_9_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_9_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_9_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_10_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_10_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_10_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_11_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_11_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_11_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_12_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_12_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_12_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_13_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_13_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_13_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_14_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_14_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_14_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_readPorts_15_hold; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_readPorts_15_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_readPorts_15_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_specWritePorts_0_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_specWritePorts_0_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_specWritePorts_0_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_specWritePorts_1_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_specWritePorts_1_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_specWritePorts_1_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_specWritePorts_2_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_specWritePorts_2_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_specWritePorts_2_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_specWritePorts_3_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_specWritePorts_3_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_specWritePorts_3_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_archWritePorts_0_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_archWritePorts_0_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_archWritePorts_0_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_archWritePorts_1_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_archWritePorts_1_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_archWritePorts_1_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_archWritePorts_2_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_archWritePorts_2_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_archWritePorts_2_data; // @[RenameTable.scala 102:21]
  wire  fpRat_io_archWritePorts_3_wen; // @[RenameTable.scala 102:21]
  wire [4:0] fpRat_io_archWritePorts_3_addr; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_archWritePorts_3_data; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_0; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_1; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_2; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_3; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_4; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_5; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_6; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_7; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_8; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_9; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_10; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_11; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_12; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_13; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_14; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_15; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_16; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_17; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_18; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_19; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_20; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_21; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_22; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_23; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_24; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_25; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_26; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_27; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_28; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_29; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_30; // @[RenameTable.scala 102:21]
  wire [6:0] fpRat_io_debug_rdata_31; // @[RenameTable.scala 102:21]
  wire  _intRat_io_archWritePorts_0_wen_T_1 = ~io_robCommits_isWalk & io_robCommits_valid_0; // @[RenameTable.scala 108:40]
  wire  _intRat_io_archWritePorts_1_wen_T_1 = ~io_robCommits_isWalk & io_robCommits_valid_1; // @[RenameTable.scala 108:40]
  wire  _intRat_io_archWritePorts_2_wen_T_1 = ~io_robCommits_isWalk & io_robCommits_valid_2; // @[RenameTable.scala 108:40]
  wire  _intRat_io_archWritePorts_3_wen_T_1 = ~io_robCommits_isWalk & io_robCommits_valid_3; // @[RenameTable.scala 108:40]
  wire  _intRat_io_specWritePorts_0_wen_T = io_robCommits_isWalk & io_robCommits_valid_0; // @[RenameTable.scala 114:39]
  wire  _intRat_io_specWritePorts_1_wen_T = io_robCommits_isWalk & io_robCommits_valid_1; // @[RenameTable.scala 114:39]
  wire  _intRat_io_specWritePorts_2_wen_T = io_robCommits_isWalk & io_robCommits_valid_2; // @[RenameTable.scala 114:39]
  wire  _intRat_io_specWritePorts_3_wen_T = io_robCommits_isWalk & io_robCommits_valid_3; // @[RenameTable.scala 114:39]
  RenameTable intRat ( // @[RenameTable.scala 101:22]
    .clock(intRat_clock),
    .reset(intRat_reset),
    .io_readPorts_0_hold(intRat_io_readPorts_0_hold),
    .io_readPorts_0_addr(intRat_io_readPorts_0_addr),
    .io_readPorts_0_data(intRat_io_readPorts_0_data),
    .io_readPorts_1_hold(intRat_io_readPorts_1_hold),
    .io_readPorts_1_addr(intRat_io_readPorts_1_addr),
    .io_readPorts_1_data(intRat_io_readPorts_1_data),
    .io_readPorts_2_hold(intRat_io_readPorts_2_hold),
    .io_readPorts_2_addr(intRat_io_readPorts_2_addr),
    .io_readPorts_2_data(intRat_io_readPorts_2_data),
    .io_readPorts_3_hold(intRat_io_readPorts_3_hold),
    .io_readPorts_3_addr(intRat_io_readPorts_3_addr),
    .io_readPorts_3_data(intRat_io_readPorts_3_data),
    .io_readPorts_4_hold(intRat_io_readPorts_4_hold),
    .io_readPorts_4_addr(intRat_io_readPorts_4_addr),
    .io_readPorts_4_data(intRat_io_readPorts_4_data),
    .io_readPorts_5_hold(intRat_io_readPorts_5_hold),
    .io_readPorts_5_addr(intRat_io_readPorts_5_addr),
    .io_readPorts_5_data(intRat_io_readPorts_5_data),
    .io_readPorts_6_hold(intRat_io_readPorts_6_hold),
    .io_readPorts_6_addr(intRat_io_readPorts_6_addr),
    .io_readPorts_6_data(intRat_io_readPorts_6_data),
    .io_readPorts_7_hold(intRat_io_readPorts_7_hold),
    .io_readPorts_7_addr(intRat_io_readPorts_7_addr),
    .io_readPorts_7_data(intRat_io_readPorts_7_data),
    .io_readPorts_8_hold(intRat_io_readPorts_8_hold),
    .io_readPorts_8_addr(intRat_io_readPorts_8_addr),
    .io_readPorts_8_data(intRat_io_readPorts_8_data),
    .io_readPorts_9_hold(intRat_io_readPorts_9_hold),
    .io_readPorts_9_addr(intRat_io_readPorts_9_addr),
    .io_readPorts_9_data(intRat_io_readPorts_9_data),
    .io_readPorts_10_hold(intRat_io_readPorts_10_hold),
    .io_readPorts_10_addr(intRat_io_readPorts_10_addr),
    .io_readPorts_10_data(intRat_io_readPorts_10_data),
    .io_readPorts_11_hold(intRat_io_readPorts_11_hold),
    .io_readPorts_11_addr(intRat_io_readPorts_11_addr),
    .io_readPorts_11_data(intRat_io_readPorts_11_data),
    .io_specWritePorts_0_wen(intRat_io_specWritePorts_0_wen),
    .io_specWritePorts_0_addr(intRat_io_specWritePorts_0_addr),
    .io_specWritePorts_0_data(intRat_io_specWritePorts_0_data),
    .io_specWritePorts_1_wen(intRat_io_specWritePorts_1_wen),
    .io_specWritePorts_1_addr(intRat_io_specWritePorts_1_addr),
    .io_specWritePorts_1_data(intRat_io_specWritePorts_1_data),
    .io_specWritePorts_2_wen(intRat_io_specWritePorts_2_wen),
    .io_specWritePorts_2_addr(intRat_io_specWritePorts_2_addr),
    .io_specWritePorts_2_data(intRat_io_specWritePorts_2_data),
    .io_specWritePorts_3_wen(intRat_io_specWritePorts_3_wen),
    .io_specWritePorts_3_addr(intRat_io_specWritePorts_3_addr),
    .io_specWritePorts_3_data(intRat_io_specWritePorts_3_data),
    .io_archWritePorts_0_wen(intRat_io_archWritePorts_0_wen),
    .io_archWritePorts_0_addr(intRat_io_archWritePorts_0_addr),
    .io_archWritePorts_0_data(intRat_io_archWritePorts_0_data),
    .io_archWritePorts_1_wen(intRat_io_archWritePorts_1_wen),
    .io_archWritePorts_1_addr(intRat_io_archWritePorts_1_addr),
    .io_archWritePorts_1_data(intRat_io_archWritePorts_1_data),
    .io_archWritePorts_2_wen(intRat_io_archWritePorts_2_wen),
    .io_archWritePorts_2_addr(intRat_io_archWritePorts_2_addr),
    .io_archWritePorts_2_data(intRat_io_archWritePorts_2_data),
    .io_archWritePorts_3_wen(intRat_io_archWritePorts_3_wen),
    .io_archWritePorts_3_addr(intRat_io_archWritePorts_3_addr),
    .io_archWritePorts_3_data(intRat_io_archWritePorts_3_data),
    .io_debug_rdata_0(intRat_io_debug_rdata_0),
    .io_debug_rdata_1(intRat_io_debug_rdata_1),
    .io_debug_rdata_2(intRat_io_debug_rdata_2),
    .io_debug_rdata_3(intRat_io_debug_rdata_3),
    .io_debug_rdata_4(intRat_io_debug_rdata_4),
    .io_debug_rdata_5(intRat_io_debug_rdata_5),
    .io_debug_rdata_6(intRat_io_debug_rdata_6),
    .io_debug_rdata_7(intRat_io_debug_rdata_7),
    .io_debug_rdata_8(intRat_io_debug_rdata_8),
    .io_debug_rdata_9(intRat_io_debug_rdata_9),
    .io_debug_rdata_10(intRat_io_debug_rdata_10),
    .io_debug_rdata_11(intRat_io_debug_rdata_11),
    .io_debug_rdata_12(intRat_io_debug_rdata_12),
    .io_debug_rdata_13(intRat_io_debug_rdata_13),
    .io_debug_rdata_14(intRat_io_debug_rdata_14),
    .io_debug_rdata_15(intRat_io_debug_rdata_15),
    .io_debug_rdata_16(intRat_io_debug_rdata_16),
    .io_debug_rdata_17(intRat_io_debug_rdata_17),
    .io_debug_rdata_18(intRat_io_debug_rdata_18),
    .io_debug_rdata_19(intRat_io_debug_rdata_19),
    .io_debug_rdata_20(intRat_io_debug_rdata_20),
    .io_debug_rdata_21(intRat_io_debug_rdata_21),
    .io_debug_rdata_22(intRat_io_debug_rdata_22),
    .io_debug_rdata_23(intRat_io_debug_rdata_23),
    .io_debug_rdata_24(intRat_io_debug_rdata_24),
    .io_debug_rdata_25(intRat_io_debug_rdata_25),
    .io_debug_rdata_26(intRat_io_debug_rdata_26),
    .io_debug_rdata_27(intRat_io_debug_rdata_27),
    .io_debug_rdata_28(intRat_io_debug_rdata_28),
    .io_debug_rdata_29(intRat_io_debug_rdata_29),
    .io_debug_rdata_30(intRat_io_debug_rdata_30),
    .io_debug_rdata_31(intRat_io_debug_rdata_31)
  );
  RenameTable_1 fpRat ( // @[RenameTable.scala 102:21]
    .clock(fpRat_clock),
    .reset(fpRat_reset),
    .io_readPorts_0_hold(fpRat_io_readPorts_0_hold),
    .io_readPorts_0_addr(fpRat_io_readPorts_0_addr),
    .io_readPorts_0_data(fpRat_io_readPorts_0_data),
    .io_readPorts_1_hold(fpRat_io_readPorts_1_hold),
    .io_readPorts_1_addr(fpRat_io_readPorts_1_addr),
    .io_readPorts_1_data(fpRat_io_readPorts_1_data),
    .io_readPorts_2_hold(fpRat_io_readPorts_2_hold),
    .io_readPorts_2_addr(fpRat_io_readPorts_2_addr),
    .io_readPorts_2_data(fpRat_io_readPorts_2_data),
    .io_readPorts_3_hold(fpRat_io_readPorts_3_hold),
    .io_readPorts_3_addr(fpRat_io_readPorts_3_addr),
    .io_readPorts_3_data(fpRat_io_readPorts_3_data),
    .io_readPorts_4_hold(fpRat_io_readPorts_4_hold),
    .io_readPorts_4_addr(fpRat_io_readPorts_4_addr),
    .io_readPorts_4_data(fpRat_io_readPorts_4_data),
    .io_readPorts_5_hold(fpRat_io_readPorts_5_hold),
    .io_readPorts_5_addr(fpRat_io_readPorts_5_addr),
    .io_readPorts_5_data(fpRat_io_readPorts_5_data),
    .io_readPorts_6_hold(fpRat_io_readPorts_6_hold),
    .io_readPorts_6_addr(fpRat_io_readPorts_6_addr),
    .io_readPorts_6_data(fpRat_io_readPorts_6_data),
    .io_readPorts_7_hold(fpRat_io_readPorts_7_hold),
    .io_readPorts_7_addr(fpRat_io_readPorts_7_addr),
    .io_readPorts_7_data(fpRat_io_readPorts_7_data),
    .io_readPorts_8_hold(fpRat_io_readPorts_8_hold),
    .io_readPorts_8_addr(fpRat_io_readPorts_8_addr),
    .io_readPorts_8_data(fpRat_io_readPorts_8_data),
    .io_readPorts_9_hold(fpRat_io_readPorts_9_hold),
    .io_readPorts_9_addr(fpRat_io_readPorts_9_addr),
    .io_readPorts_9_data(fpRat_io_readPorts_9_data),
    .io_readPorts_10_hold(fpRat_io_readPorts_10_hold),
    .io_readPorts_10_addr(fpRat_io_readPorts_10_addr),
    .io_readPorts_10_data(fpRat_io_readPorts_10_data),
    .io_readPorts_11_hold(fpRat_io_readPorts_11_hold),
    .io_readPorts_11_addr(fpRat_io_readPorts_11_addr),
    .io_readPorts_11_data(fpRat_io_readPorts_11_data),
    .io_readPorts_12_hold(fpRat_io_readPorts_12_hold),
    .io_readPorts_12_addr(fpRat_io_readPorts_12_addr),
    .io_readPorts_12_data(fpRat_io_readPorts_12_data),
    .io_readPorts_13_hold(fpRat_io_readPorts_13_hold),
    .io_readPorts_13_addr(fpRat_io_readPorts_13_addr),
    .io_readPorts_13_data(fpRat_io_readPorts_13_data),
    .io_readPorts_14_hold(fpRat_io_readPorts_14_hold),
    .io_readPorts_14_addr(fpRat_io_readPorts_14_addr),
    .io_readPorts_14_data(fpRat_io_readPorts_14_data),
    .io_readPorts_15_hold(fpRat_io_readPorts_15_hold),
    .io_readPorts_15_addr(fpRat_io_readPorts_15_addr),
    .io_readPorts_15_data(fpRat_io_readPorts_15_data),
    .io_specWritePorts_0_wen(fpRat_io_specWritePorts_0_wen),
    .io_specWritePorts_0_addr(fpRat_io_specWritePorts_0_addr),
    .io_specWritePorts_0_data(fpRat_io_specWritePorts_0_data),
    .io_specWritePorts_1_wen(fpRat_io_specWritePorts_1_wen),
    .io_specWritePorts_1_addr(fpRat_io_specWritePorts_1_addr),
    .io_specWritePorts_1_data(fpRat_io_specWritePorts_1_data),
    .io_specWritePorts_2_wen(fpRat_io_specWritePorts_2_wen),
    .io_specWritePorts_2_addr(fpRat_io_specWritePorts_2_addr),
    .io_specWritePorts_2_data(fpRat_io_specWritePorts_2_data),
    .io_specWritePorts_3_wen(fpRat_io_specWritePorts_3_wen),
    .io_specWritePorts_3_addr(fpRat_io_specWritePorts_3_addr),
    .io_specWritePorts_3_data(fpRat_io_specWritePorts_3_data),
    .io_archWritePorts_0_wen(fpRat_io_archWritePorts_0_wen),
    .io_archWritePorts_0_addr(fpRat_io_archWritePorts_0_addr),
    .io_archWritePorts_0_data(fpRat_io_archWritePorts_0_data),
    .io_archWritePorts_1_wen(fpRat_io_archWritePorts_1_wen),
    .io_archWritePorts_1_addr(fpRat_io_archWritePorts_1_addr),
    .io_archWritePorts_1_data(fpRat_io_archWritePorts_1_data),
    .io_archWritePorts_2_wen(fpRat_io_archWritePorts_2_wen),
    .io_archWritePorts_2_addr(fpRat_io_archWritePorts_2_addr),
    .io_archWritePorts_2_data(fpRat_io_archWritePorts_2_data),
    .io_archWritePorts_3_wen(fpRat_io_archWritePorts_3_wen),
    .io_archWritePorts_3_addr(fpRat_io_archWritePorts_3_addr),
    .io_archWritePorts_3_data(fpRat_io_archWritePorts_3_data),
    .io_debug_rdata_0(fpRat_io_debug_rdata_0),
    .io_debug_rdata_1(fpRat_io_debug_rdata_1),
    .io_debug_rdata_2(fpRat_io_debug_rdata_2),
    .io_debug_rdata_3(fpRat_io_debug_rdata_3),
    .io_debug_rdata_4(fpRat_io_debug_rdata_4),
    .io_debug_rdata_5(fpRat_io_debug_rdata_5),
    .io_debug_rdata_6(fpRat_io_debug_rdata_6),
    .io_debug_rdata_7(fpRat_io_debug_rdata_7),
    .io_debug_rdata_8(fpRat_io_debug_rdata_8),
    .io_debug_rdata_9(fpRat_io_debug_rdata_9),
    .io_debug_rdata_10(fpRat_io_debug_rdata_10),
    .io_debug_rdata_11(fpRat_io_debug_rdata_11),
    .io_debug_rdata_12(fpRat_io_debug_rdata_12),
    .io_debug_rdata_13(fpRat_io_debug_rdata_13),
    .io_debug_rdata_14(fpRat_io_debug_rdata_14),
    .io_debug_rdata_15(fpRat_io_debug_rdata_15),
    .io_debug_rdata_16(fpRat_io_debug_rdata_16),
    .io_debug_rdata_17(fpRat_io_debug_rdata_17),
    .io_debug_rdata_18(fpRat_io_debug_rdata_18),
    .io_debug_rdata_19(fpRat_io_debug_rdata_19),
    .io_debug_rdata_20(fpRat_io_debug_rdata_20),
    .io_debug_rdata_21(fpRat_io_debug_rdata_21),
    .io_debug_rdata_22(fpRat_io_debug_rdata_22),
    .io_debug_rdata_23(fpRat_io_debug_rdata_23),
    .io_debug_rdata_24(fpRat_io_debug_rdata_24),
    .io_debug_rdata_25(fpRat_io_debug_rdata_25),
    .io_debug_rdata_26(fpRat_io_debug_rdata_26),
    .io_debug_rdata_27(fpRat_io_debug_rdata_27),
    .io_debug_rdata_28(fpRat_io_debug_rdata_28),
    .io_debug_rdata_29(fpRat_io_debug_rdata_29),
    .io_debug_rdata_30(fpRat_io_debug_rdata_30),
    .io_debug_rdata_31(fpRat_io_debug_rdata_31)
  );
  assign io_intReadPorts_0_0_data = intRat_io_readPorts_0_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_0_1_data = intRat_io_readPorts_1_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_0_2_data = intRat_io_readPorts_2_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_1_0_data = intRat_io_readPorts_3_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_1_1_data = intRat_io_readPorts_4_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_1_2_data = intRat_io_readPorts_5_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_2_0_data = intRat_io_readPorts_6_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_2_1_data = intRat_io_readPorts_7_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_2_2_data = intRat_io_readPorts_8_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_3_0_data = intRat_io_readPorts_9_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_3_1_data = intRat_io_readPorts_10_data; // @[RenameTable.scala 105:23]
  assign io_intReadPorts_3_2_data = intRat_io_readPorts_11_data; // @[RenameTable.scala 105:23]
  assign io_fpReadPorts_0_0_data = fpRat_io_readPorts_0_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_0_1_data = fpRat_io_readPorts_1_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_0_2_data = fpRat_io_readPorts_2_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_0_3_data = fpRat_io_readPorts_3_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_1_0_data = fpRat_io_readPorts_4_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_1_1_data = fpRat_io_readPorts_5_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_1_2_data = fpRat_io_readPorts_6_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_1_3_data = fpRat_io_readPorts_7_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_2_0_data = fpRat_io_readPorts_8_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_2_1_data = fpRat_io_readPorts_9_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_2_2_data = fpRat_io_readPorts_10_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_2_3_data = fpRat_io_readPorts_11_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_3_0_data = fpRat_io_readPorts_12_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_3_1_data = fpRat_io_readPorts_13_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_3_2_data = fpRat_io_readPorts_14_data; // @[RenameTable.scala 129:22]
  assign io_fpReadPorts_3_3_data = fpRat_io_readPorts_15_data; // @[RenameTable.scala 129:22]
  assign io_debug_int_rat_0 = intRat_io_debug_rdata_0; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_1 = intRat_io_debug_rdata_1; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_2 = intRat_io_debug_rdata_2; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_3 = intRat_io_debug_rdata_3; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_4 = intRat_io_debug_rdata_4; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_5 = intRat_io_debug_rdata_5; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_6 = intRat_io_debug_rdata_6; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_7 = intRat_io_debug_rdata_7; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_8 = intRat_io_debug_rdata_8; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_9 = intRat_io_debug_rdata_9; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_10 = intRat_io_debug_rdata_10; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_11 = intRat_io_debug_rdata_11; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_12 = intRat_io_debug_rdata_12; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_13 = intRat_io_debug_rdata_13; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_14 = intRat_io_debug_rdata_14; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_15 = intRat_io_debug_rdata_15; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_16 = intRat_io_debug_rdata_16; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_17 = intRat_io_debug_rdata_17; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_18 = intRat_io_debug_rdata_18; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_19 = intRat_io_debug_rdata_19; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_20 = intRat_io_debug_rdata_20; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_21 = intRat_io_debug_rdata_21; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_22 = intRat_io_debug_rdata_22; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_23 = intRat_io_debug_rdata_23; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_24 = intRat_io_debug_rdata_24; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_25 = intRat_io_debug_rdata_25; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_26 = intRat_io_debug_rdata_26; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_27 = intRat_io_debug_rdata_27; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_28 = intRat_io_debug_rdata_28; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_29 = intRat_io_debug_rdata_29; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_30 = intRat_io_debug_rdata_30; // @[RenameTable.scala 104:25]
  assign io_debug_int_rat_31 = intRat_io_debug_rdata_31; // @[RenameTable.scala 104:25]
  assign io_debug_fp_rat_0 = fpRat_io_debug_rdata_0; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_1 = fpRat_io_debug_rdata_1; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_2 = fpRat_io_debug_rdata_2; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_3 = fpRat_io_debug_rdata_3; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_4 = fpRat_io_debug_rdata_4; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_5 = fpRat_io_debug_rdata_5; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_6 = fpRat_io_debug_rdata_6; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_7 = fpRat_io_debug_rdata_7; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_8 = fpRat_io_debug_rdata_8; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_9 = fpRat_io_debug_rdata_9; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_10 = fpRat_io_debug_rdata_10; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_11 = fpRat_io_debug_rdata_11; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_12 = fpRat_io_debug_rdata_12; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_13 = fpRat_io_debug_rdata_13; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_14 = fpRat_io_debug_rdata_14; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_15 = fpRat_io_debug_rdata_15; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_16 = fpRat_io_debug_rdata_16; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_17 = fpRat_io_debug_rdata_17; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_18 = fpRat_io_debug_rdata_18; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_19 = fpRat_io_debug_rdata_19; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_20 = fpRat_io_debug_rdata_20; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_21 = fpRat_io_debug_rdata_21; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_22 = fpRat_io_debug_rdata_22; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_23 = fpRat_io_debug_rdata_23; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_24 = fpRat_io_debug_rdata_24; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_25 = fpRat_io_debug_rdata_25; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_26 = fpRat_io_debug_rdata_26; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_27 = fpRat_io_debug_rdata_27; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_28 = fpRat_io_debug_rdata_28; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_29 = fpRat_io_debug_rdata_29; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_30 = fpRat_io_debug_rdata_30; // @[RenameTable.scala 128:24]
  assign io_debug_fp_rat_31 = fpRat_io_debug_rdata_31; // @[RenameTable.scala 128:24]
  assign intRat_clock = clock;
  assign intRat_reset = reset;
  assign intRat_io_readPorts_0_hold = io_intReadPorts_0_0_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_0_addr = io_intReadPorts_0_0_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_1_hold = io_intReadPorts_0_1_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_1_addr = io_intReadPorts_0_1_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_2_hold = io_intReadPorts_0_2_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_2_addr = io_intReadPorts_0_2_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_3_hold = io_intReadPorts_1_0_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_3_addr = io_intReadPorts_1_0_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_4_hold = io_intReadPorts_1_1_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_4_addr = io_intReadPorts_1_1_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_5_hold = io_intReadPorts_1_2_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_5_addr = io_intReadPorts_1_2_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_6_hold = io_intReadPorts_2_0_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_6_addr = io_intReadPorts_2_0_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_7_hold = io_intReadPorts_2_1_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_7_addr = io_intReadPorts_2_1_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_8_hold = io_intReadPorts_2_2_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_8_addr = io_intReadPorts_2_2_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_9_hold = io_intReadPorts_3_0_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_9_addr = io_intReadPorts_3_0_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_10_hold = io_intReadPorts_3_1_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_10_addr = io_intReadPorts_3_1_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_11_hold = io_intReadPorts_3_2_hold; // @[RenameTable.scala 105:23]
  assign intRat_io_readPorts_11_addr = io_intReadPorts_3_2_addr; // @[RenameTable.scala 105:23]
  assign intRat_io_specWritePorts_0_wen = io_intRenamePorts_0_wen | io_robCommits_isWalk & io_robCommits_valid_0 &
    io_robCommits_info_0_rfWen; // @[RenameTable.scala 114:15 120:23 121:17]
  assign intRat_io_specWritePorts_0_addr = io_intRenamePorts_0_wen ? io_intRenamePorts_0_addr :
    io_robCommits_info_0_ldest; // @[RenameTable.scala 115:15 120:23 122:17]
  assign intRat_io_specWritePorts_0_data = io_intRenamePorts_0_wen ? io_intRenamePorts_0_data :
    io_robCommits_info_0_old_pdest; // @[RenameTable.scala 116:15 120:23 123:17]
  assign intRat_io_specWritePorts_1_wen = io_intRenamePorts_1_wen | io_robCommits_isWalk & io_robCommits_valid_1 &
    io_robCommits_info_1_rfWen; // @[RenameTable.scala 114:15 120:23 121:17]
  assign intRat_io_specWritePorts_1_addr = io_intRenamePorts_1_wen ? io_intRenamePorts_1_addr :
    io_robCommits_info_1_ldest; // @[RenameTable.scala 115:15 120:23 122:17]
  assign intRat_io_specWritePorts_1_data = io_intRenamePorts_1_wen ? io_intRenamePorts_1_data :
    io_robCommits_info_1_old_pdest; // @[RenameTable.scala 116:15 120:23 123:17]
  assign intRat_io_specWritePorts_2_wen = io_intRenamePorts_2_wen | io_robCommits_isWalk & io_robCommits_valid_2 &
    io_robCommits_info_2_rfWen; // @[RenameTable.scala 114:15 120:23 121:17]
  assign intRat_io_specWritePorts_2_addr = io_intRenamePorts_2_wen ? io_intRenamePorts_2_addr :
    io_robCommits_info_2_ldest; // @[RenameTable.scala 115:15 120:23 122:17]
  assign intRat_io_specWritePorts_2_data = io_intRenamePorts_2_wen ? io_intRenamePorts_2_data :
    io_robCommits_info_2_old_pdest; // @[RenameTable.scala 116:15 120:23 123:17]
  assign intRat_io_specWritePorts_3_wen = io_intRenamePorts_3_wen | io_robCommits_isWalk & io_robCommits_valid_3 &
    io_robCommits_info_3_rfWen; // @[RenameTable.scala 114:15 120:23 121:17]
  assign intRat_io_specWritePorts_3_addr = io_intRenamePorts_3_wen ? io_intRenamePorts_3_addr :
    io_robCommits_info_3_ldest; // @[RenameTable.scala 115:15 120:23 122:17]
  assign intRat_io_specWritePorts_3_data = io_intRenamePorts_3_wen ? io_intRenamePorts_3_data :
    io_robCommits_info_3_old_pdest; // @[RenameTable.scala 116:15 120:23 123:17]
  assign intRat_io_archWritePorts_0_wen = ~io_robCommits_isWalk & io_robCommits_valid_0 & io_robCommits_info_0_rfWen; // @[RenameTable.scala 108:66]
  assign intRat_io_archWritePorts_0_addr = io_robCommits_info_0_ldest; // @[RenameTable.scala 109:15]
  assign intRat_io_archWritePorts_0_data = io_robCommits_info_0_pdest; // @[RenameTable.scala 110:15]
  assign intRat_io_archWritePorts_1_wen = ~io_robCommits_isWalk & io_robCommits_valid_1 & io_robCommits_info_1_rfWen; // @[RenameTable.scala 108:66]
  assign intRat_io_archWritePorts_1_addr = io_robCommits_info_1_ldest; // @[RenameTable.scala 109:15]
  assign intRat_io_archWritePorts_1_data = io_robCommits_info_1_pdest; // @[RenameTable.scala 110:15]
  assign intRat_io_archWritePorts_2_wen = ~io_robCommits_isWalk & io_robCommits_valid_2 & io_robCommits_info_2_rfWen; // @[RenameTable.scala 108:66]
  assign intRat_io_archWritePorts_2_addr = io_robCommits_info_2_ldest; // @[RenameTable.scala 109:15]
  assign intRat_io_archWritePorts_2_data = io_robCommits_info_2_pdest; // @[RenameTable.scala 110:15]
  assign intRat_io_archWritePorts_3_wen = ~io_robCommits_isWalk & io_robCommits_valid_3 & io_robCommits_info_3_rfWen; // @[RenameTable.scala 108:66]
  assign intRat_io_archWritePorts_3_addr = io_robCommits_info_3_ldest; // @[RenameTable.scala 109:15]
  assign intRat_io_archWritePorts_3_data = io_robCommits_info_3_pdest; // @[RenameTable.scala 110:15]
  assign fpRat_clock = clock;
  assign fpRat_reset = reset;
  assign fpRat_io_readPorts_0_hold = io_fpReadPorts_0_0_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_0_addr = io_fpReadPorts_0_0_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_1_hold = io_fpReadPorts_0_1_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_1_addr = io_fpReadPorts_0_1_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_2_hold = io_fpReadPorts_0_2_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_2_addr = io_fpReadPorts_0_2_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_3_hold = io_fpReadPorts_0_3_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_3_addr = io_fpReadPorts_0_3_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_4_hold = io_fpReadPorts_1_0_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_4_addr = io_fpReadPorts_1_0_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_5_hold = io_fpReadPorts_1_1_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_5_addr = io_fpReadPorts_1_1_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_6_hold = io_fpReadPorts_1_2_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_6_addr = io_fpReadPorts_1_2_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_7_hold = io_fpReadPorts_1_3_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_7_addr = io_fpReadPorts_1_3_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_8_hold = io_fpReadPorts_2_0_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_8_addr = io_fpReadPorts_2_0_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_9_hold = io_fpReadPorts_2_1_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_9_addr = io_fpReadPorts_2_1_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_10_hold = io_fpReadPorts_2_2_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_10_addr = io_fpReadPorts_2_2_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_11_hold = io_fpReadPorts_2_3_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_11_addr = io_fpReadPorts_2_3_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_12_hold = io_fpReadPorts_3_0_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_12_addr = io_fpReadPorts_3_0_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_13_hold = io_fpReadPorts_3_1_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_13_addr = io_fpReadPorts_3_1_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_14_hold = io_fpReadPorts_3_2_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_14_addr = io_fpReadPorts_3_2_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_15_hold = io_fpReadPorts_3_3_hold; // @[RenameTable.scala 129:22]
  assign fpRat_io_readPorts_15_addr = io_fpReadPorts_3_3_addr; // @[RenameTable.scala 129:22]
  assign fpRat_io_specWritePorts_0_wen = io_fpRenamePorts_0_wen | _intRat_io_specWritePorts_0_wen_T &
    io_robCommits_info_0_fpWen; // @[RenameTable.scala 136:15 141:23 142:17]
  assign fpRat_io_specWritePorts_0_addr = io_fpRenamePorts_0_wen ? io_fpRenamePorts_0_addr : io_robCommits_info_0_ldest; // @[RenameTable.scala 137:15 141:23 143:17]
  assign fpRat_io_specWritePorts_0_data = io_fpRenamePorts_0_wen ? io_fpRenamePorts_0_data :
    io_robCommits_info_0_old_pdest; // @[RenameTable.scala 138:15 141:23 144:17]
  assign fpRat_io_specWritePorts_1_wen = io_fpRenamePorts_1_wen | _intRat_io_specWritePorts_1_wen_T &
    io_robCommits_info_1_fpWen; // @[RenameTable.scala 136:15 141:23 142:17]
  assign fpRat_io_specWritePorts_1_addr = io_fpRenamePorts_1_wen ? io_fpRenamePorts_1_addr : io_robCommits_info_1_ldest; // @[RenameTable.scala 137:15 141:23 143:17]
  assign fpRat_io_specWritePorts_1_data = io_fpRenamePorts_1_wen ? io_fpRenamePorts_1_data :
    io_robCommits_info_1_old_pdest; // @[RenameTable.scala 138:15 141:23 144:17]
  assign fpRat_io_specWritePorts_2_wen = io_fpRenamePorts_2_wen | _intRat_io_specWritePorts_2_wen_T &
    io_robCommits_info_2_fpWen; // @[RenameTable.scala 136:15 141:23 142:17]
  assign fpRat_io_specWritePorts_2_addr = io_fpRenamePorts_2_wen ? io_fpRenamePorts_2_addr : io_robCommits_info_2_ldest; // @[RenameTable.scala 137:15 141:23 143:17]
  assign fpRat_io_specWritePorts_2_data = io_fpRenamePorts_2_wen ? io_fpRenamePorts_2_data :
    io_robCommits_info_2_old_pdest; // @[RenameTable.scala 138:15 141:23 144:17]
  assign fpRat_io_specWritePorts_3_wen = io_fpRenamePorts_3_wen | _intRat_io_specWritePorts_3_wen_T &
    io_robCommits_info_3_fpWen; // @[RenameTable.scala 136:15 141:23 142:17]
  assign fpRat_io_specWritePorts_3_addr = io_fpRenamePorts_3_wen ? io_fpRenamePorts_3_addr : io_robCommits_info_3_ldest; // @[RenameTable.scala 137:15 141:23 143:17]
  assign fpRat_io_specWritePorts_3_data = io_fpRenamePorts_3_wen ? io_fpRenamePorts_3_data :
    io_robCommits_info_3_old_pdest; // @[RenameTable.scala 138:15 141:23 144:17]
  assign fpRat_io_archWritePorts_0_wen = _intRat_io_archWritePorts_0_wen_T_1 & io_robCommits_info_0_fpWen; // @[RenameTable.scala 131:66]
  assign fpRat_io_archWritePorts_0_addr = io_robCommits_info_0_ldest; // @[RenameTable.scala 132:15]
  assign fpRat_io_archWritePorts_0_data = io_robCommits_info_0_pdest; // @[RenameTable.scala 133:15]
  assign fpRat_io_archWritePorts_1_wen = _intRat_io_archWritePorts_1_wen_T_1 & io_robCommits_info_1_fpWen; // @[RenameTable.scala 131:66]
  assign fpRat_io_archWritePorts_1_addr = io_robCommits_info_1_ldest; // @[RenameTable.scala 132:15]
  assign fpRat_io_archWritePorts_1_data = io_robCommits_info_1_pdest; // @[RenameTable.scala 133:15]
  assign fpRat_io_archWritePorts_2_wen = _intRat_io_archWritePorts_2_wen_T_1 & io_robCommits_info_2_fpWen; // @[RenameTable.scala 131:66]
  assign fpRat_io_archWritePorts_2_addr = io_robCommits_info_2_ldest; // @[RenameTable.scala 132:15]
  assign fpRat_io_archWritePorts_2_data = io_robCommits_info_2_pdest; // @[RenameTable.scala 133:15]
  assign fpRat_io_archWritePorts_3_wen = _intRat_io_archWritePorts_3_wen_T_1 & io_robCommits_info_3_fpWen; // @[RenameTable.scala 131:66]
  assign fpRat_io_archWritePorts_3_addr = io_robCommits_info_3_ldest; // @[RenameTable.scala 132:15]
  assign fpRat_io_archWritePorts_3_data = io_robCommits_info_3_pdest; // @[RenameTable.scala 133:15]
endmodule
