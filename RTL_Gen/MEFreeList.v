module MEFreeList(
  input        clock,
  input        reset,
  input        io_redirect,
  input        io_walk,
  input        io_allocateReq_0,
  input        io_allocateReq_1,
  input        io_allocateReq_2,
  input        io_allocateReq_3,
  output [6:0] io_allocatePhyReg_0,
  output [6:0] io_allocatePhyReg_1,
  output [6:0] io_allocatePhyReg_2,
  output [6:0] io_allocatePhyReg_3,
  output       io_canAllocate,
  input        io_doAllocate,
  input        io_freeReq_0,
  input        io_freeReq_1,
  input        io_freeReq_2,
  input        io_freeReq_3,
  input  [6:0] io_freePhyReg_0,
  input  [6:0] io_freePhyReg_1,
  input  [6:0] io_freePhyReg_2,
  input  [6:0] io_freePhyReg_3,
  output [5:0] io_perf_0_value,
  output [5:0] io_perf_1_value,
  output [5:0] io_perf_2_value,
  output [5:0] io_perf_3_value
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  reg [6:0] freeList [0:95]; // @[MEFreeList.scala 28:21]
  wire  freeList_phyRegCandidates_MPORT_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_addr; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_data; // @[MEFreeList.scala 28:21]
  wire  freeList_phyRegCandidates_MPORT_1_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_1_addr; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_1_data; // @[MEFreeList.scala 28:21]
  wire  freeList_phyRegCandidates_MPORT_2_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_2_addr; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_2_data; // @[MEFreeList.scala 28:21]
  wire  freeList_phyRegCandidates_MPORT_3_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_3_addr; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_phyRegCandidates_MPORT_3_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_1_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_1_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_1_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_1_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_2_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_2_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_2_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_2_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_3_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_3_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_3_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_3_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_4_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_4_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_4_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_4_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_5_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_5_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_5_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_5_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_6_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_6_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_6_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_6_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_7_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_7_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_7_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_7_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_8_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_8_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_8_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_8_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_9_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_9_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_9_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_9_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_10_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_10_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_10_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_10_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_11_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_11_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_11_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_11_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_12_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_12_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_12_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_12_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_13_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_13_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_13_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_13_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_14_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_14_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_14_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_14_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_15_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_15_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_15_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_15_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_16_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_16_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_16_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_16_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_17_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_17_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_17_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_17_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_18_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_18_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_18_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_18_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_19_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_19_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_19_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_19_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_20_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_20_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_20_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_20_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_21_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_21_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_21_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_21_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_22_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_22_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_22_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_22_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_23_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_23_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_23_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_23_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_24_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_24_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_24_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_24_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_25_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_25_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_25_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_25_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_26_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_26_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_26_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_26_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_27_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_27_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_27_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_27_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_28_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_28_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_28_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_28_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_29_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_29_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_29_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_29_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_30_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_30_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_30_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_30_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_31_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_31_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_31_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_31_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_32_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_32_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_32_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_32_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_33_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_33_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_33_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_33_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_34_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_34_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_34_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_34_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_35_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_35_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_35_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_35_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_36_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_36_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_36_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_36_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_37_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_37_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_37_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_37_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_38_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_38_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_38_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_38_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_39_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_39_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_39_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_39_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_40_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_40_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_40_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_40_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_41_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_41_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_41_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_41_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_42_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_42_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_42_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_42_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_43_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_43_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_43_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_43_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_44_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_44_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_44_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_44_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_45_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_45_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_45_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_45_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_46_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_46_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_46_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_46_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_47_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_47_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_47_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_47_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_48_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_48_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_48_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_48_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_49_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_49_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_49_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_49_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_50_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_50_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_50_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_50_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_51_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_51_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_51_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_51_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_52_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_52_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_52_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_52_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_53_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_53_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_53_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_53_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_54_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_54_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_54_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_54_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_55_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_55_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_55_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_55_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_56_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_56_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_56_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_56_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_57_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_57_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_57_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_57_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_58_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_58_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_58_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_58_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_59_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_59_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_59_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_59_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_60_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_60_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_60_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_60_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_61_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_61_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_61_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_61_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_62_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_62_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_62_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_62_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_63_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_63_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_63_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_63_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_64_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_64_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_64_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_64_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_65_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_65_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_65_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_65_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_66_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_66_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_66_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_66_en; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_67_data; // @[MEFreeList.scala 28:21]
  wire [6:0] freeList_MPORT_67_addr; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_67_mask; // @[MEFreeList.scala 28:21]
  wire  freeList_MPORT_67_en; // @[MEFreeList.scala 28:21]
  reg  headPtr_flag; // @[MEFreeList.scala 31:24]
  reg [6:0] headPtr_value; // @[MEFreeList.scala 31:24]
  reg  tailPtr_flag; // @[MEFreeList.scala 32:24]
  reg [6:0] tailPtr_value; // @[MEFreeList.scala 32:24]
  wire  doRename = io_canAllocate & io_doAllocate & ~io_redirect & ~io_walk; // @[MEFreeList.scala 34:66]
  wire [7:0] allocatePtr_new_value = {{1'd0}, headPtr_value}; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _allocatePtr_diff_T_1 = {1'h0,allocatePtr_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] allocatePtr_diff = $signed(_allocatePtr_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  allocatePtr_reverse_flag = $signed(allocatePtr_diff) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _allocatePtr_new_ptr_value_T = $signed(_allocatePtr_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _allocatePtr_new_ptr_value_T_1 = allocatePtr_reverse_flag ? _allocatePtr_new_ptr_value_T : {{1'd0},
    allocatePtr_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [7:0] allocatePtr_new_value_1 = headPtr_value + 7'h1; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _allocatePtr_diff_T_7 = {1'h0,allocatePtr_new_value_1}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] allocatePtr_diff_1 = $signed(_allocatePtr_diff_T_7) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  allocatePtr_reverse_flag_1 = $signed(allocatePtr_diff_1) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _allocatePtr_new_ptr_value_T_2 = $signed(_allocatePtr_diff_T_7) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _allocatePtr_new_ptr_value_T_3 = allocatePtr_reverse_flag_1 ? _allocatePtr_new_ptr_value_T_2 : {{1'd0},
    allocatePtr_new_value_1}; // @[CircularQueuePtr.scala 46:27]
  wire [7:0] allocatePtr_new_value_2 = headPtr_value + 7'h2; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _allocatePtr_diff_T_13 = {1'h0,allocatePtr_new_value_2}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] allocatePtr_diff_2 = $signed(_allocatePtr_diff_T_13) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  allocatePtr_reverse_flag_2 = $signed(allocatePtr_diff_2) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _allocatePtr_new_ptr_value_T_4 = $signed(_allocatePtr_diff_T_13) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _allocatePtr_new_ptr_value_T_5 = allocatePtr_reverse_flag_2 ? _allocatePtr_new_ptr_value_T_4 : {{1'd0},
    allocatePtr_new_value_2}; // @[CircularQueuePtr.scala 46:27]
  wire [7:0] allocatePtr_new_value_3 = headPtr_value + 7'h3; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _allocatePtr_diff_T_19 = {1'h0,allocatePtr_new_value_3}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] allocatePtr_diff_3 = $signed(_allocatePtr_diff_T_19) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  allocatePtr_reverse_flag_3 = $signed(allocatePtr_diff_3) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _allocatePtr_new_ptr_value_T_6 = $signed(_allocatePtr_diff_T_19) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _allocatePtr_new_ptr_value_T_7 = allocatePtr_reverse_flag_3 ? _allocatePtr_new_ptr_value_T_6 : {{1'd0},
    allocatePtr_new_value_3}; // @[CircularQueuePtr.scala 46:27]
  wire [6:0] phyRegCandidates_0 = freeList_phyRegCandidates_MPORT_data; // @[MEFreeList.scala 40:{33,33}]
  wire [6:0] phyRegCandidates_1 = freeList_phyRegCandidates_MPORT_1_data; // @[MEFreeList.scala 40:{33,33}]
  wire [6:0] _GEN_1 = io_allocateReq_0 ? phyRegCandidates_1 : phyRegCandidates_0; // @[MEFreeList.scala 43:{26,26}]
  wire [6:0] phyRegCandidates_2 = freeList_phyRegCandidates_MPORT_2_data; // @[MEFreeList.scala 40:{33,33}]
  wire [1:0] _GEN_130 = {{1'd0}, io_allocateReq_0}; // @[MEFreeList.scala 43:{26,26}]
  wire [6:0] _GEN_2 = 2'h2 == _GEN_130 ? phyRegCandidates_2 : _GEN_1; // @[MEFreeList.scala 43:{26,26}]
  wire [6:0] phyRegCandidates_3 = freeList_phyRegCandidates_MPORT_3_data; // @[MEFreeList.scala 40:{33,33}]
  wire [1:0] _io_allocatePhyReg_2_T = io_allocateReq_0 + io_allocateReq_1; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_5 = 2'h1 == _io_allocatePhyReg_2_T ? phyRegCandidates_1 : phyRegCandidates_0; // @[MEFreeList.scala 43:{26,26}]
  wire [6:0] _GEN_6 = 2'h2 == _io_allocatePhyReg_2_T ? phyRegCandidates_2 : _GEN_5; // @[MEFreeList.scala 43:{26,26}]
  wire [1:0] _io_allocatePhyReg_3_T = io_allocateReq_1 + io_allocateReq_2; // @[Bitwise.scala 48:55]
  wire [2:0] _io_allocatePhyReg_3_T_2 = _GEN_130 + _io_allocatePhyReg_3_T; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_9 = 2'h1 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_1 : phyRegCandidates_0; // @[MEFreeList.scala 43:{26,26}]
  wire [6:0] _GEN_10 = 2'h2 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_2 : _GEN_9; // @[MEFreeList.scala 43:{26,26}]
  wire [1:0] _headPtrNext_T_2 = io_allocateReq_2 + io_allocateReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _headPtrNext_T_4 = _io_allocatePhyReg_2_T + _headPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_133 = {{4'd0}, _headPtrNext_T_4}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] headPtrNext_new_value = headPtr_value + _GEN_133; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _headPtrNext_diff_T_1 = {1'h0,headPtrNext_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] headPtrNext_diff = $signed(_headPtrNext_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  headPtrNext_reverse_flag = $signed(headPtrNext_diff) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire  headPtrNext_flag = headPtrNext_reverse_flag ? ~headPtr_flag : headPtr_flag; // @[CircularQueuePtr.scala 45:26]
  wire [8:0] _headPtrNext_new_ptr_value_T = $signed(_headPtrNext_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _headPtrNext_new_ptr_value_T_1 = headPtrNext_reverse_flag ? _headPtrNext_new_ptr_value_T : {{1'd0},
    headPtrNext_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [6:0] headPtrNext_value = _headPtrNext_new_ptr_value_T_1[6:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [7:0] freePtr_new_value = {{1'd0}, tailPtr_value}; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _freePtr_diff_T_1 = {1'h0,freePtr_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] freePtr_diff = $signed(_freePtr_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  freePtr_reverse_flag = $signed(freePtr_diff) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _freePtr_new_ptr_value_T = $signed(_freePtr_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _freePtr_new_ptr_value_T_1 = freePtr_reverse_flag ? _freePtr_new_ptr_value_T : {{1'd0}, freePtr_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [6:0] _GEN_134 = {{6'd0}, io_freeReq_0}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] freePtr_new_value_1 = tailPtr_value + _GEN_134; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _freePtr_diff_T_7 = {1'h0,freePtr_new_value_1}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] freePtr_diff_1 = $signed(_freePtr_diff_T_7) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  freePtr_reverse_flag_1 = $signed(freePtr_diff_1) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _freePtr_new_ptr_value_T_2 = $signed(_freePtr_diff_T_7) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _freePtr_new_ptr_value_T_3 = freePtr_reverse_flag_1 ? _freePtr_new_ptr_value_T_2 : {{1'd0},
    freePtr_new_value_1}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] _freePtr_T = io_freeReq_0 + io_freeReq_1; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_135 = {{5'd0}, _freePtr_T}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] freePtr_new_value_2 = tailPtr_value + _GEN_135; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _freePtr_diff_T_13 = {1'h0,freePtr_new_value_2}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] freePtr_diff_2 = $signed(_freePtr_diff_T_13) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  freePtr_reverse_flag_2 = $signed(freePtr_diff_2) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _freePtr_new_ptr_value_T_4 = $signed(_freePtr_diff_T_13) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _freePtr_new_ptr_value_T_5 = freePtr_reverse_flag_2 ? _freePtr_new_ptr_value_T_4 : {{1'd0},
    freePtr_new_value_2}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] _freePtr_T_2 = io_freeReq_1 + io_freeReq_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_136 = {{1'd0}, io_freeReq_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _freePtr_T_4 = _GEN_136 + _freePtr_T_2; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_137 = {{5'd0}, _freePtr_T_4[1:0]}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] freePtr_new_value_3 = tailPtr_value + _GEN_137; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _freePtr_diff_T_19 = {1'h0,freePtr_new_value_3}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] freePtr_diff_3 = $signed(_freePtr_diff_T_19) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  freePtr_reverse_flag_3 = $signed(freePtr_diff_3) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [8:0] _freePtr_new_ptr_value_T_6 = $signed(_freePtr_diff_T_19) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _freePtr_new_ptr_value_T_7 = freePtr_reverse_flag_3 ? _freePtr_new_ptr_value_T_6 : {{1'd0},
    freePtr_new_value_3}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] _tailPtrNext_T_2 = io_freeReq_2 + io_freeReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _tailPtrNext_T_4 = _freePtr_T + _tailPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_138 = {{4'd0}, _tailPtrNext_T_4}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] tailPtrNext_new_value = tailPtr_value + _GEN_138; // @[CircularQueuePtr.scala 42:34]
  wire [8:0] _tailPtrNext_diff_T_1 = {1'h0,tailPtrNext_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [8:0] tailPtrNext_diff = $signed(_tailPtrNext_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 43:52]
  wire  tailPtrNext_reverse_flag = $signed(tailPtrNext_diff) >= 9'sh0; // @[CircularQueuePtr.scala 44:31]
  wire  tailPtrNext_flag = tailPtrNext_reverse_flag ? ~tailPtr_flag : tailPtr_flag; // @[CircularQueuePtr.scala 45:26]
  wire [8:0] _tailPtrNext_new_ptr_value_T = $signed(_tailPtrNext_diff_T_1) - 9'sh60; // @[CircularQueuePtr.scala 47:20]
  wire [8:0] _tailPtrNext_new_ptr_value_T_1 = tailPtrNext_reverse_flag ? _tailPtrNext_new_ptr_value_T : {{1'd0},
    tailPtrNext_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [6:0] tailPtrNext_value = _tailPtrNext_new_ptr_value_T_1[6:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [6:0] _freeRegCnt_T_2 = tailPtrNext_value - headPtrNext_value; // @[CircularQueuePtr.scala 80:21]
  wire [6:0] _freeRegCnt_T_4 = 7'h60 + tailPtrNext_value; // @[CircularQueuePtr.scala 81:25]
  wire [6:0] _freeRegCnt_T_6 = _freeRegCnt_T_4 - headPtrNext_value; // @[CircularQueuePtr.scala 81:41]
  wire [6:0] _freeRegCnt_T_7 = tailPtrNext_flag == headPtrNext_flag ? _freeRegCnt_T_2 : _freeRegCnt_T_6; // @[CircularQueuePtr.scala 79:8]
  wire [6:0] _freeRegCnt_T_10 = tailPtrNext_value - headPtr_value; // @[CircularQueuePtr.scala 80:21]
  wire [6:0] _freeRegCnt_T_14 = _freeRegCnt_T_4 - headPtr_value; // @[CircularQueuePtr.scala 81:41]
  wire [6:0] _freeRegCnt_T_15 = tailPtrNext_flag == headPtr_flag ? _freeRegCnt_T_10 : _freeRegCnt_T_14; // @[CircularQueuePtr.scala 79:8]
  wire [6:0] freeRegCnt = doRename ? _freeRegCnt_T_7 : _freeRegCnt_T_15; // @[MEFreeList.scala 69:23]
  reg [6:0] io_canAllocate_REG; // @[MEFreeList.scala 70:28]
  wire [6:0] _T_1 = 7'h40 / 3'h4; // @[MEFreeList.scala 73:62]
  wire [6:0] _T_5 = 7'h40 / 2'h2; // @[MEFreeList.scala 74:103]
  wire [8:0] _T_10 = 7'h40 * 2'h3; // @[MEFreeList.scala 75:103]
  wire [8:0] _T_11 = _T_10 / 3'h4; // @[MEFreeList.scala 75:107]
  wire [8:0] _GEN_139 = {{2'd0}, freeRegCnt}; // @[MEFreeList.scala 75:83]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign freeList_phyRegCandidates_MPORT_en = 1'h1;
  assign freeList_phyRegCandidates_MPORT_addr = _allocatePtr_new_ptr_value_T_1[6:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_data = freeList[freeList_phyRegCandidates_MPORT_addr]; // @[MEFreeList.scala 28:21]
  `else
  assign freeList_phyRegCandidates_MPORT_data = freeList_phyRegCandidates_MPORT_addr >= 7'h60 ? _RAND_1[6:0] :
    freeList[freeList_phyRegCandidates_MPORT_addr]; // @[MEFreeList.scala 28:21]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_1_en = 1'h1;
  assign freeList_phyRegCandidates_MPORT_1_addr = _allocatePtr_new_ptr_value_T_3[6:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_1_data = freeList[freeList_phyRegCandidates_MPORT_1_addr]; // @[MEFreeList.scala 28:21]
  `else
  assign freeList_phyRegCandidates_MPORT_1_data = freeList_phyRegCandidates_MPORT_1_addr >= 7'h60 ? _RAND_2[6:0] :
    freeList[freeList_phyRegCandidates_MPORT_1_addr]; // @[MEFreeList.scala 28:21]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_2_en = 1'h1;
  assign freeList_phyRegCandidates_MPORT_2_addr = _allocatePtr_new_ptr_value_T_5[6:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_2_data = freeList[freeList_phyRegCandidates_MPORT_2_addr]; // @[MEFreeList.scala 28:21]
  `else
  assign freeList_phyRegCandidates_MPORT_2_data = freeList_phyRegCandidates_MPORT_2_addr >= 7'h60 ? _RAND_3[6:0] :
    freeList[freeList_phyRegCandidates_MPORT_2_addr]; // @[MEFreeList.scala 28:21]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_3_en = 1'h1;
  assign freeList_phyRegCandidates_MPORT_3_addr = _allocatePtr_new_ptr_value_T_7[6:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_phyRegCandidates_MPORT_3_data = freeList[freeList_phyRegCandidates_MPORT_3_addr]; // @[MEFreeList.scala 28:21]
  `else
  assign freeList_phyRegCandidates_MPORT_3_data = freeList_phyRegCandidates_MPORT_3_addr >= 7'h60 ? _RAND_4[6:0] :
    freeList[freeList_phyRegCandidates_MPORT_3_addr]; // @[MEFreeList.scala 28:21]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign freeList_MPORT_data = io_freePhyReg_0;
  assign freeList_MPORT_addr = _freePtr_new_ptr_value_T_1[6:0];
  assign freeList_MPORT_mask = 1'h1;
  assign freeList_MPORT_en = io_freeReq_0;
  assign freeList_MPORT_1_data = io_freePhyReg_1;
  assign freeList_MPORT_1_addr = _freePtr_new_ptr_value_T_3[6:0];
  assign freeList_MPORT_1_mask = 1'h1;
  assign freeList_MPORT_1_en = io_freeReq_1;
  assign freeList_MPORT_2_data = io_freePhyReg_2;
  assign freeList_MPORT_2_addr = _freePtr_new_ptr_value_T_5[6:0];
  assign freeList_MPORT_2_mask = 1'h1;
  assign freeList_MPORT_2_en = io_freeReq_2;
  assign freeList_MPORT_3_data = io_freePhyReg_3;
  assign freeList_MPORT_3_addr = _freePtr_new_ptr_value_T_7[6:0];
  assign freeList_MPORT_3_mask = 1'h1;
  assign freeList_MPORT_3_en = io_freeReq_3;
  assign freeList_MPORT_4_data = 7'h20;
  assign freeList_MPORT_4_addr = 7'h0;
  assign freeList_MPORT_4_mask = 1'h1;
  assign freeList_MPORT_4_en = reset;
  assign freeList_MPORT_5_data = 7'h21;
  assign freeList_MPORT_5_addr = 7'h1;
  assign freeList_MPORT_5_mask = 1'h1;
  assign freeList_MPORT_5_en = reset;
  assign freeList_MPORT_6_data = 7'h22;
  assign freeList_MPORT_6_addr = 7'h2;
  assign freeList_MPORT_6_mask = 1'h1;
  assign freeList_MPORT_6_en = reset;
  assign freeList_MPORT_7_data = 7'h23;
  assign freeList_MPORT_7_addr = 7'h3;
  assign freeList_MPORT_7_mask = 1'h1;
  assign freeList_MPORT_7_en = reset;
  assign freeList_MPORT_8_data = 7'h24;
  assign freeList_MPORT_8_addr = 7'h4;
  assign freeList_MPORT_8_mask = 1'h1;
  assign freeList_MPORT_8_en = reset;
  assign freeList_MPORT_9_data = 7'h25;
  assign freeList_MPORT_9_addr = 7'h5;
  assign freeList_MPORT_9_mask = 1'h1;
  assign freeList_MPORT_9_en = reset;
  assign freeList_MPORT_10_data = 7'h26;
  assign freeList_MPORT_10_addr = 7'h6;
  assign freeList_MPORT_10_mask = 1'h1;
  assign freeList_MPORT_10_en = reset;
  assign freeList_MPORT_11_data = 7'h27;
  assign freeList_MPORT_11_addr = 7'h7;
  assign freeList_MPORT_11_mask = 1'h1;
  assign freeList_MPORT_11_en = reset;
  assign freeList_MPORT_12_data = 7'h28;
  assign freeList_MPORT_12_addr = 7'h8;
  assign freeList_MPORT_12_mask = 1'h1;
  assign freeList_MPORT_12_en = reset;
  assign freeList_MPORT_13_data = 7'h29;
  assign freeList_MPORT_13_addr = 7'h9;
  assign freeList_MPORT_13_mask = 1'h1;
  assign freeList_MPORT_13_en = reset;
  assign freeList_MPORT_14_data = 7'h2a;
  assign freeList_MPORT_14_addr = 7'ha;
  assign freeList_MPORT_14_mask = 1'h1;
  assign freeList_MPORT_14_en = reset;
  assign freeList_MPORT_15_data = 7'h2b;
  assign freeList_MPORT_15_addr = 7'hb;
  assign freeList_MPORT_15_mask = 1'h1;
  assign freeList_MPORT_15_en = reset;
  assign freeList_MPORT_16_data = 7'h2c;
  assign freeList_MPORT_16_addr = 7'hc;
  assign freeList_MPORT_16_mask = 1'h1;
  assign freeList_MPORT_16_en = reset;
  assign freeList_MPORT_17_data = 7'h2d;
  assign freeList_MPORT_17_addr = 7'hd;
  assign freeList_MPORT_17_mask = 1'h1;
  assign freeList_MPORT_17_en = reset;
  assign freeList_MPORT_18_data = 7'h2e;
  assign freeList_MPORT_18_addr = 7'he;
  assign freeList_MPORT_18_mask = 1'h1;
  assign freeList_MPORT_18_en = reset;
  assign freeList_MPORT_19_data = 7'h2f;
  assign freeList_MPORT_19_addr = 7'hf;
  assign freeList_MPORT_19_mask = 1'h1;
  assign freeList_MPORT_19_en = reset;
  assign freeList_MPORT_20_data = 7'h30;
  assign freeList_MPORT_20_addr = 7'h10;
  assign freeList_MPORT_20_mask = 1'h1;
  assign freeList_MPORT_20_en = reset;
  assign freeList_MPORT_21_data = 7'h31;
  assign freeList_MPORT_21_addr = 7'h11;
  assign freeList_MPORT_21_mask = 1'h1;
  assign freeList_MPORT_21_en = reset;
  assign freeList_MPORT_22_data = 7'h32;
  assign freeList_MPORT_22_addr = 7'h12;
  assign freeList_MPORT_22_mask = 1'h1;
  assign freeList_MPORT_22_en = reset;
  assign freeList_MPORT_23_data = 7'h33;
  assign freeList_MPORT_23_addr = 7'h13;
  assign freeList_MPORT_23_mask = 1'h1;
  assign freeList_MPORT_23_en = reset;
  assign freeList_MPORT_24_data = 7'h34;
  assign freeList_MPORT_24_addr = 7'h14;
  assign freeList_MPORT_24_mask = 1'h1;
  assign freeList_MPORT_24_en = reset;
  assign freeList_MPORT_25_data = 7'h35;
  assign freeList_MPORT_25_addr = 7'h15;
  assign freeList_MPORT_25_mask = 1'h1;
  assign freeList_MPORT_25_en = reset;
  assign freeList_MPORT_26_data = 7'h36;
  assign freeList_MPORT_26_addr = 7'h16;
  assign freeList_MPORT_26_mask = 1'h1;
  assign freeList_MPORT_26_en = reset;
  assign freeList_MPORT_27_data = 7'h37;
  assign freeList_MPORT_27_addr = 7'h17;
  assign freeList_MPORT_27_mask = 1'h1;
  assign freeList_MPORT_27_en = reset;
  assign freeList_MPORT_28_data = 7'h38;
  assign freeList_MPORT_28_addr = 7'h18;
  assign freeList_MPORT_28_mask = 1'h1;
  assign freeList_MPORT_28_en = reset;
  assign freeList_MPORT_29_data = 7'h39;
  assign freeList_MPORT_29_addr = 7'h19;
  assign freeList_MPORT_29_mask = 1'h1;
  assign freeList_MPORT_29_en = reset;
  assign freeList_MPORT_30_data = 7'h3a;
  assign freeList_MPORT_30_addr = 7'h1a;
  assign freeList_MPORT_30_mask = 1'h1;
  assign freeList_MPORT_30_en = reset;
  assign freeList_MPORT_31_data = 7'h3b;
  assign freeList_MPORT_31_addr = 7'h1b;
  assign freeList_MPORT_31_mask = 1'h1;
  assign freeList_MPORT_31_en = reset;
  assign freeList_MPORT_32_data = 7'h3c;
  assign freeList_MPORT_32_addr = 7'h1c;
  assign freeList_MPORT_32_mask = 1'h1;
  assign freeList_MPORT_32_en = reset;
  assign freeList_MPORT_33_data = 7'h3d;
  assign freeList_MPORT_33_addr = 7'h1d;
  assign freeList_MPORT_33_mask = 1'h1;
  assign freeList_MPORT_33_en = reset;
  assign freeList_MPORT_34_data = 7'h3e;
  assign freeList_MPORT_34_addr = 7'h1e;
  assign freeList_MPORT_34_mask = 1'h1;
  assign freeList_MPORT_34_en = reset;
  assign freeList_MPORT_35_data = 7'h3f;
  assign freeList_MPORT_35_addr = 7'h1f;
  assign freeList_MPORT_35_mask = 1'h1;
  assign freeList_MPORT_35_en = reset;
  assign freeList_MPORT_36_data = 7'h40;
  assign freeList_MPORT_36_addr = 7'h20;
  assign freeList_MPORT_36_mask = 1'h1;
  assign freeList_MPORT_36_en = reset;
  assign freeList_MPORT_37_data = 7'h41;
  assign freeList_MPORT_37_addr = 7'h21;
  assign freeList_MPORT_37_mask = 1'h1;
  assign freeList_MPORT_37_en = reset;
  assign freeList_MPORT_38_data = 7'h42;
  assign freeList_MPORT_38_addr = 7'h22;
  assign freeList_MPORT_38_mask = 1'h1;
  assign freeList_MPORT_38_en = reset;
  assign freeList_MPORT_39_data = 7'h43;
  assign freeList_MPORT_39_addr = 7'h23;
  assign freeList_MPORT_39_mask = 1'h1;
  assign freeList_MPORT_39_en = reset;
  assign freeList_MPORT_40_data = 7'h44;
  assign freeList_MPORT_40_addr = 7'h24;
  assign freeList_MPORT_40_mask = 1'h1;
  assign freeList_MPORT_40_en = reset;
  assign freeList_MPORT_41_data = 7'h45;
  assign freeList_MPORT_41_addr = 7'h25;
  assign freeList_MPORT_41_mask = 1'h1;
  assign freeList_MPORT_41_en = reset;
  assign freeList_MPORT_42_data = 7'h46;
  assign freeList_MPORT_42_addr = 7'h26;
  assign freeList_MPORT_42_mask = 1'h1;
  assign freeList_MPORT_42_en = reset;
  assign freeList_MPORT_43_data = 7'h47;
  assign freeList_MPORT_43_addr = 7'h27;
  assign freeList_MPORT_43_mask = 1'h1;
  assign freeList_MPORT_43_en = reset;
  assign freeList_MPORT_44_data = 7'h48;
  assign freeList_MPORT_44_addr = 7'h28;
  assign freeList_MPORT_44_mask = 1'h1;
  assign freeList_MPORT_44_en = reset;
  assign freeList_MPORT_45_data = 7'h49;
  assign freeList_MPORT_45_addr = 7'h29;
  assign freeList_MPORT_45_mask = 1'h1;
  assign freeList_MPORT_45_en = reset;
  assign freeList_MPORT_46_data = 7'h4a;
  assign freeList_MPORT_46_addr = 7'h2a;
  assign freeList_MPORT_46_mask = 1'h1;
  assign freeList_MPORT_46_en = reset;
  assign freeList_MPORT_47_data = 7'h4b;
  assign freeList_MPORT_47_addr = 7'h2b;
  assign freeList_MPORT_47_mask = 1'h1;
  assign freeList_MPORT_47_en = reset;
  assign freeList_MPORT_48_data = 7'h4c;
  assign freeList_MPORT_48_addr = 7'h2c;
  assign freeList_MPORT_48_mask = 1'h1;
  assign freeList_MPORT_48_en = reset;
  assign freeList_MPORT_49_data = 7'h4d;
  assign freeList_MPORT_49_addr = 7'h2d;
  assign freeList_MPORT_49_mask = 1'h1;
  assign freeList_MPORT_49_en = reset;
  assign freeList_MPORT_50_data = 7'h4e;
  assign freeList_MPORT_50_addr = 7'h2e;
  assign freeList_MPORT_50_mask = 1'h1;
  assign freeList_MPORT_50_en = reset;
  assign freeList_MPORT_51_data = 7'h4f;
  assign freeList_MPORT_51_addr = 7'h2f;
  assign freeList_MPORT_51_mask = 1'h1;
  assign freeList_MPORT_51_en = reset;
  assign freeList_MPORT_52_data = 7'h50;
  assign freeList_MPORT_52_addr = 7'h30;
  assign freeList_MPORT_52_mask = 1'h1;
  assign freeList_MPORT_52_en = reset;
  assign freeList_MPORT_53_data = 7'h51;
  assign freeList_MPORT_53_addr = 7'h31;
  assign freeList_MPORT_53_mask = 1'h1;
  assign freeList_MPORT_53_en = reset;
  assign freeList_MPORT_54_data = 7'h52;
  assign freeList_MPORT_54_addr = 7'h32;
  assign freeList_MPORT_54_mask = 1'h1;
  assign freeList_MPORT_54_en = reset;
  assign freeList_MPORT_55_data = 7'h53;
  assign freeList_MPORT_55_addr = 7'h33;
  assign freeList_MPORT_55_mask = 1'h1;
  assign freeList_MPORT_55_en = reset;
  assign freeList_MPORT_56_data = 7'h54;
  assign freeList_MPORT_56_addr = 7'h34;
  assign freeList_MPORT_56_mask = 1'h1;
  assign freeList_MPORT_56_en = reset;
  assign freeList_MPORT_57_data = 7'h55;
  assign freeList_MPORT_57_addr = 7'h35;
  assign freeList_MPORT_57_mask = 1'h1;
  assign freeList_MPORT_57_en = reset;
  assign freeList_MPORT_58_data = 7'h56;
  assign freeList_MPORT_58_addr = 7'h36;
  assign freeList_MPORT_58_mask = 1'h1;
  assign freeList_MPORT_58_en = reset;
  assign freeList_MPORT_59_data = 7'h57;
  assign freeList_MPORT_59_addr = 7'h37;
  assign freeList_MPORT_59_mask = 1'h1;
  assign freeList_MPORT_59_en = reset;
  assign freeList_MPORT_60_data = 7'h58;
  assign freeList_MPORT_60_addr = 7'h38;
  assign freeList_MPORT_60_mask = 1'h1;
  assign freeList_MPORT_60_en = reset;
  assign freeList_MPORT_61_data = 7'h59;
  assign freeList_MPORT_61_addr = 7'h39;
  assign freeList_MPORT_61_mask = 1'h1;
  assign freeList_MPORT_61_en = reset;
  assign freeList_MPORT_62_data = 7'h5a;
  assign freeList_MPORT_62_addr = 7'h3a;
  assign freeList_MPORT_62_mask = 1'h1;
  assign freeList_MPORT_62_en = reset;
  assign freeList_MPORT_63_data = 7'h5b;
  assign freeList_MPORT_63_addr = 7'h3b;
  assign freeList_MPORT_63_mask = 1'h1;
  assign freeList_MPORT_63_en = reset;
  assign freeList_MPORT_64_data = 7'h5c;
  assign freeList_MPORT_64_addr = 7'h3c;
  assign freeList_MPORT_64_mask = 1'h1;
  assign freeList_MPORT_64_en = reset;
  assign freeList_MPORT_65_data = 7'h5d;
  assign freeList_MPORT_65_addr = 7'h3d;
  assign freeList_MPORT_65_mask = 1'h1;
  assign freeList_MPORT_65_en = reset;
  assign freeList_MPORT_66_data = 7'h5e;
  assign freeList_MPORT_66_addr = 7'h3e;
  assign freeList_MPORT_66_mask = 1'h1;
  assign freeList_MPORT_66_en = reset;
  assign freeList_MPORT_67_data = 7'h5f;
  assign freeList_MPORT_67_addr = 7'h3f;
  assign freeList_MPORT_67_mask = 1'h1;
  assign freeList_MPORT_67_en = reset;
  assign io_allocatePhyReg_0 = freeList_phyRegCandidates_MPORT_data; // @[MEFreeList.scala 40:{33,33}]
  assign io_allocatePhyReg_1 = 2'h3 == _GEN_130 ? phyRegCandidates_3 : _GEN_2; // @[MEFreeList.scala 43:{26,26}]
  assign io_allocatePhyReg_2 = 2'h3 == _io_allocatePhyReg_2_T ? phyRegCandidates_3 : _GEN_6; // @[MEFreeList.scala 43:{26,26}]
  assign io_allocatePhyReg_3 = 2'h3 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_3 : _GEN_10; // @[MEFreeList.scala 43:{26,26}]
  assign io_canAllocate = io_canAllocate_REG >= 7'h4; // @[MEFreeList.scala 70:41]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (freeList_MPORT_en & freeList_MPORT_mask) begin
      freeList[freeList_MPORT_addr] <= freeList_MPORT_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_1_en & freeList_MPORT_1_mask) begin
      freeList[freeList_MPORT_1_addr] <= freeList_MPORT_1_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_2_en & freeList_MPORT_2_mask) begin
      freeList[freeList_MPORT_2_addr] <= freeList_MPORT_2_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_3_en & freeList_MPORT_3_mask) begin
      freeList[freeList_MPORT_3_addr] <= freeList_MPORT_3_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_4_en & freeList_MPORT_4_mask) begin
      freeList[freeList_MPORT_4_addr] <= freeList_MPORT_4_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_5_en & freeList_MPORT_5_mask) begin
      freeList[freeList_MPORT_5_addr] <= freeList_MPORT_5_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_6_en & freeList_MPORT_6_mask) begin
      freeList[freeList_MPORT_6_addr] <= freeList_MPORT_6_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_7_en & freeList_MPORT_7_mask) begin
      freeList[freeList_MPORT_7_addr] <= freeList_MPORT_7_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_8_en & freeList_MPORT_8_mask) begin
      freeList[freeList_MPORT_8_addr] <= freeList_MPORT_8_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_9_en & freeList_MPORT_9_mask) begin
      freeList[freeList_MPORT_9_addr] <= freeList_MPORT_9_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_10_en & freeList_MPORT_10_mask) begin
      freeList[freeList_MPORT_10_addr] <= freeList_MPORT_10_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_11_en & freeList_MPORT_11_mask) begin
      freeList[freeList_MPORT_11_addr] <= freeList_MPORT_11_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_12_en & freeList_MPORT_12_mask) begin
      freeList[freeList_MPORT_12_addr] <= freeList_MPORT_12_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_13_en & freeList_MPORT_13_mask) begin
      freeList[freeList_MPORT_13_addr] <= freeList_MPORT_13_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_14_en & freeList_MPORT_14_mask) begin
      freeList[freeList_MPORT_14_addr] <= freeList_MPORT_14_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_15_en & freeList_MPORT_15_mask) begin
      freeList[freeList_MPORT_15_addr] <= freeList_MPORT_15_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_16_en & freeList_MPORT_16_mask) begin
      freeList[freeList_MPORT_16_addr] <= freeList_MPORT_16_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_17_en & freeList_MPORT_17_mask) begin
      freeList[freeList_MPORT_17_addr] <= freeList_MPORT_17_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_18_en & freeList_MPORT_18_mask) begin
      freeList[freeList_MPORT_18_addr] <= freeList_MPORT_18_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_19_en & freeList_MPORT_19_mask) begin
      freeList[freeList_MPORT_19_addr] <= freeList_MPORT_19_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_20_en & freeList_MPORT_20_mask) begin
      freeList[freeList_MPORT_20_addr] <= freeList_MPORT_20_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_21_en & freeList_MPORT_21_mask) begin
      freeList[freeList_MPORT_21_addr] <= freeList_MPORT_21_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_22_en & freeList_MPORT_22_mask) begin
      freeList[freeList_MPORT_22_addr] <= freeList_MPORT_22_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_23_en & freeList_MPORT_23_mask) begin
      freeList[freeList_MPORT_23_addr] <= freeList_MPORT_23_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_24_en & freeList_MPORT_24_mask) begin
      freeList[freeList_MPORT_24_addr] <= freeList_MPORT_24_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_25_en & freeList_MPORT_25_mask) begin
      freeList[freeList_MPORT_25_addr] <= freeList_MPORT_25_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_26_en & freeList_MPORT_26_mask) begin
      freeList[freeList_MPORT_26_addr] <= freeList_MPORT_26_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_27_en & freeList_MPORT_27_mask) begin
      freeList[freeList_MPORT_27_addr] <= freeList_MPORT_27_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_28_en & freeList_MPORT_28_mask) begin
      freeList[freeList_MPORT_28_addr] <= freeList_MPORT_28_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_29_en & freeList_MPORT_29_mask) begin
      freeList[freeList_MPORT_29_addr] <= freeList_MPORT_29_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_30_en & freeList_MPORT_30_mask) begin
      freeList[freeList_MPORT_30_addr] <= freeList_MPORT_30_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_31_en & freeList_MPORT_31_mask) begin
      freeList[freeList_MPORT_31_addr] <= freeList_MPORT_31_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_32_en & freeList_MPORT_32_mask) begin
      freeList[freeList_MPORT_32_addr] <= freeList_MPORT_32_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_33_en & freeList_MPORT_33_mask) begin
      freeList[freeList_MPORT_33_addr] <= freeList_MPORT_33_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_34_en & freeList_MPORT_34_mask) begin
      freeList[freeList_MPORT_34_addr] <= freeList_MPORT_34_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_35_en & freeList_MPORT_35_mask) begin
      freeList[freeList_MPORT_35_addr] <= freeList_MPORT_35_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_36_en & freeList_MPORT_36_mask) begin
      freeList[freeList_MPORT_36_addr] <= freeList_MPORT_36_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_37_en & freeList_MPORT_37_mask) begin
      freeList[freeList_MPORT_37_addr] <= freeList_MPORT_37_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_38_en & freeList_MPORT_38_mask) begin
      freeList[freeList_MPORT_38_addr] <= freeList_MPORT_38_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_39_en & freeList_MPORT_39_mask) begin
      freeList[freeList_MPORT_39_addr] <= freeList_MPORT_39_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_40_en & freeList_MPORT_40_mask) begin
      freeList[freeList_MPORT_40_addr] <= freeList_MPORT_40_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_41_en & freeList_MPORT_41_mask) begin
      freeList[freeList_MPORT_41_addr] <= freeList_MPORT_41_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_42_en & freeList_MPORT_42_mask) begin
      freeList[freeList_MPORT_42_addr] <= freeList_MPORT_42_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_43_en & freeList_MPORT_43_mask) begin
      freeList[freeList_MPORT_43_addr] <= freeList_MPORT_43_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_44_en & freeList_MPORT_44_mask) begin
      freeList[freeList_MPORT_44_addr] <= freeList_MPORT_44_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_45_en & freeList_MPORT_45_mask) begin
      freeList[freeList_MPORT_45_addr] <= freeList_MPORT_45_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_46_en & freeList_MPORT_46_mask) begin
      freeList[freeList_MPORT_46_addr] <= freeList_MPORT_46_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_47_en & freeList_MPORT_47_mask) begin
      freeList[freeList_MPORT_47_addr] <= freeList_MPORT_47_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_48_en & freeList_MPORT_48_mask) begin
      freeList[freeList_MPORT_48_addr] <= freeList_MPORT_48_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_49_en & freeList_MPORT_49_mask) begin
      freeList[freeList_MPORT_49_addr] <= freeList_MPORT_49_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_50_en & freeList_MPORT_50_mask) begin
      freeList[freeList_MPORT_50_addr] <= freeList_MPORT_50_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_51_en & freeList_MPORT_51_mask) begin
      freeList[freeList_MPORT_51_addr] <= freeList_MPORT_51_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_52_en & freeList_MPORT_52_mask) begin
      freeList[freeList_MPORT_52_addr] <= freeList_MPORT_52_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_53_en & freeList_MPORT_53_mask) begin
      freeList[freeList_MPORT_53_addr] <= freeList_MPORT_53_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_54_en & freeList_MPORT_54_mask) begin
      freeList[freeList_MPORT_54_addr] <= freeList_MPORT_54_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_55_en & freeList_MPORT_55_mask) begin
      freeList[freeList_MPORT_55_addr] <= freeList_MPORT_55_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_56_en & freeList_MPORT_56_mask) begin
      freeList[freeList_MPORT_56_addr] <= freeList_MPORT_56_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_57_en & freeList_MPORT_57_mask) begin
      freeList[freeList_MPORT_57_addr] <= freeList_MPORT_57_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_58_en & freeList_MPORT_58_mask) begin
      freeList[freeList_MPORT_58_addr] <= freeList_MPORT_58_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_59_en & freeList_MPORT_59_mask) begin
      freeList[freeList_MPORT_59_addr] <= freeList_MPORT_59_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_60_en & freeList_MPORT_60_mask) begin
      freeList[freeList_MPORT_60_addr] <= freeList_MPORT_60_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_61_en & freeList_MPORT_61_mask) begin
      freeList[freeList_MPORT_61_addr] <= freeList_MPORT_61_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_62_en & freeList_MPORT_62_mask) begin
      freeList[freeList_MPORT_62_addr] <= freeList_MPORT_62_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_63_en & freeList_MPORT_63_mask) begin
      freeList[freeList_MPORT_63_addr] <= freeList_MPORT_63_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_64_en & freeList_MPORT_64_mask) begin
      freeList[freeList_MPORT_64_addr] <= freeList_MPORT_64_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_65_en & freeList_MPORT_65_mask) begin
      freeList[freeList_MPORT_65_addr] <= freeList_MPORT_65_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_66_en & freeList_MPORT_66_mask) begin
      freeList[freeList_MPORT_66_addr] <= freeList_MPORT_66_data; // @[MEFreeList.scala 28:21]
    end
    if (freeList_MPORT_67_en & freeList_MPORT_67_mask) begin
      freeList[freeList_MPORT_67_addr] <= freeList_MPORT_67_data; // @[MEFreeList.scala 28:21]
    end
    if (reset) begin // @[MEFreeList.scala 31:24]
      headPtr_flag <= 1'h0; // @[MEFreeList.scala 31:24]
    end else if (doRename) begin // @[MEFreeList.scala 47:17]
      if (headPtrNext_reverse_flag) begin // @[CircularQueuePtr.scala 45:26]
        headPtr_flag <= ~headPtr_flag;
      end
    end
    if (reset) begin // @[MEFreeList.scala 31:24]
      headPtr_value <= 7'h0; // @[MEFreeList.scala 31:24]
    end else if (doRename) begin // @[MEFreeList.scala 47:17]
      headPtr_value <= headPtrNext_value;
    end
    if (reset) begin // @[MEFreeList.scala 32:24]
      tailPtr_flag <= 1'h0; // @[MEFreeList.scala 32:24]
    end else if (tailPtrNext_reverse_flag) begin // @[CircularQueuePtr.scala 45:26]
      tailPtr_flag <= ~tailPtr_flag;
    end
    if (reset) begin // @[MEFreeList.scala 32:24]
      tailPtr_value <= 7'h40; // @[MEFreeList.scala 32:24]
    end else begin
      tailPtr_value <= tailPtrNext_value; // @[MEFreeList.scala 67:11]
    end
    if (doRename) begin // @[MEFreeList.scala 69:23]
      if (tailPtrNext_flag == headPtrNext_flag) begin // @[CircularQueuePtr.scala 79:8]
        io_canAllocate_REG <= _freeRegCnt_T_2;
      end else begin
        io_canAllocate_REG <= _freeRegCnt_T_6;
      end
    end else if (tailPtrNext_flag == headPtr_flag) begin // @[CircularQueuePtr.scala 79:8]
      io_canAllocate_REG <= _freeRegCnt_T_10;
    end else begin
      io_canAllocate_REG <= _freeRegCnt_T_14;
    end
    io_perf_0_value_REG <= freeRegCnt < _T_1; // @[MEFreeList.scala 73:43]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= freeRegCnt > _T_1 & freeRegCnt <= _T_5; // @[MEFreeList.scala 74:69]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= freeRegCnt > _T_5 & _GEN_139 <= _T_11; // @[MEFreeList.scala 75:69]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _GEN_139 > _T_11; // @[MEFreeList.scala 76:43]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
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
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 96; initvar = initvar+1)
    freeList[initvar] = _RAND_0[6:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  headPtr_flag = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  headPtr_value = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  tailPtr_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  tailPtr_value = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  io_canAllocate_REG = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
