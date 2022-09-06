module RASStack(
  input         clock,
  input         reset,
  input         io_push_valid,
  input         io_pop_valid,
  input  [38:0] io_spec_new_addr,
  input  [4:0]  io_recover_sp,
  input  [38:0] io_recover_top_retAddr,
  input  [7:0]  io_recover_top_ctr,
  input         io_recover_valid,
  input         io_recover_push,
  input         io_recover_pop,
  input  [38:0] io_recover_new_addr,
  output [4:0]  io_sp,
  output [38:0] io_top_retAddr,
  output [7:0]  io_top_ctr
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] stack_retAddr [0:31]; // @[RAS.scala 71:20]
  wire  stack_retAddr_top_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_top_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_top_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_0_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_0_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_0_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_1_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_1_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_1_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_2_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_2_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_2_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_3_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_3_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_3_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_4_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_4_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_4_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_5_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_5_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_5_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_6_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_6_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_6_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_7_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_7_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_7_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_8_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_8_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_8_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_9_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_9_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_9_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_10_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_10_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_10_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_11_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_11_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_11_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_12_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_12_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_12_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_13_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_13_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_13_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_14_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_14_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_14_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_15_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_15_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_15_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_16_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_16_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_16_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_17_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_17_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_17_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_18_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_18_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_18_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_19_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_19_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_19_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_20_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_20_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_20_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_21_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_21_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_21_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_22_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_22_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_22_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_23_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_23_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_23_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_24_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_24_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_24_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_25_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_25_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_25_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_26_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_26_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_26_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_27_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_27_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_27_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_28_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_28_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_28_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_29_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_29_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_29_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_30_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_30_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_30_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_retAddr_debugIO_out_mem_31_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_31_MPORT_addr; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_31_MPORT_data; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_MPORT_data; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_MPORT_addr; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_mask; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_en; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_MPORT_1_data; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_MPORT_1_addr; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_1_mask; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_1_en; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_MPORT_2_data; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_MPORT_2_addr; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_2_mask; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_2_en; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_MPORT_3_data; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_MPORT_3_addr; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_3_mask; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_3_en; // @[RAS.scala 71:20]
  wire [38:0] stack_retAddr_MPORT_4_data; // @[RAS.scala 71:20]
  wire [4:0] stack_retAddr_MPORT_4_addr; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_4_mask; // @[RAS.scala 71:20]
  wire  stack_retAddr_MPORT_4_en; // @[RAS.scala 71:20]
  reg [7:0] stack_ctr [0:31]; // @[RAS.scala 71:20]
  wire  stack_ctr_top_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_top_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_top_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_0_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_0_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_0_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_1_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_1_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_1_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_2_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_2_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_2_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_3_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_3_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_3_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_4_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_4_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_4_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_5_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_5_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_5_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_6_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_6_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_6_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_7_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_7_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_7_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_8_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_8_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_8_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_9_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_9_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_9_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_10_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_10_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_10_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_11_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_11_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_11_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_12_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_12_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_12_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_13_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_13_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_13_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_14_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_14_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_14_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_15_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_15_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_15_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_16_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_16_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_16_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_17_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_17_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_17_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_18_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_18_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_18_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_19_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_19_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_19_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_20_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_20_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_20_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_21_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_21_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_21_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_22_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_22_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_22_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_23_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_23_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_23_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_24_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_24_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_24_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_25_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_25_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_25_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_26_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_26_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_26_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_27_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_27_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_27_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_28_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_28_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_28_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_29_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_29_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_29_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_30_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_30_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_30_MPORT_data; // @[RAS.scala 71:20]
  wire  stack_ctr_debugIO_out_mem_31_MPORT_en; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_debugIO_out_mem_31_MPORT_addr; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_debugIO_out_mem_31_MPORT_data; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_MPORT_data; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_MPORT_addr; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_mask; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_en; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_MPORT_1_data; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_MPORT_1_addr; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_1_mask; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_1_en; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_MPORT_2_data; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_MPORT_2_addr; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_2_mask; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_2_en; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_MPORT_3_data; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_MPORT_3_addr; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_3_mask; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_3_en; // @[RAS.scala 71:20]
  wire [7:0] stack_ctr_MPORT_4_data; // @[RAS.scala 71:20]
  wire [4:0] stack_ctr_MPORT_4_addr; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_4_mask; // @[RAS.scala 71:20]
  wire  stack_ctr_MPORT_4_en; // @[RAS.scala 71:20]
  reg [4:0] sp; // @[RAS.scala 72:21]
  reg [38:0] top_retAddr; // @[RAS.scala 73:22]
  reg [7:0] top_ctr; // @[RAS.scala 73:22]
  reg [4:0] topPtr; // @[RAS.scala 74:25]
  wire  spec_alloc_new = io_spec_new_addr != top_retAddr | &top_ctr; // @[RAS.scala 79:59]
  wire  recover_alloc_new = io_recover_new_addr != io_recover_top_retAddr | &io_recover_top_ctr; // @[RAS.scala 80:76]
  wire  _T = io_recover_valid ? io_recover_push : io_push_valid; // @[RAS.scala 128:10]
  wire  _T_1 = io_recover_valid ? io_recover_pop : io_pop_valid; // @[RAS.scala 129:10]
  wire  _T_2 = io_recover_valid ? recover_alloc_new : spec_alloc_new; // @[RAS.scala 130:10]
  wire [4:0] _T_3 = io_recover_valid ? io_recover_sp : sp; // @[RAS.scala 131:10]
  wire [4:0] _T_5 = io_recover_sp - 5'h1; // @[RAS.scala 132:43]
  wire [4:0] _T_6 = io_recover_valid ? _T_5 : topPtr; // @[RAS.scala 132:10]
  wire [38:0] e_2_retAddr = io_recover_valid ? io_recover_top_retAddr : top_retAddr; // @[RAS.scala 134:10]
  wire [7:0] _T_8_ctr = io_recover_valid ? io_recover_top_ctr : top_ctr; // @[RAS.scala 134:10]
  wire [4:0] _sp_T_2 = _T_3 + 5'h1; // @[RAS.scala 76:65]
  wire [4:0] _GEN_0 = io_recover_valid ? _T_3 : sp; // @[RAS.scala 94:26 95:16 72:21]
  wire [4:0] _GEN_1 = io_recover_valid ? _T_6 : topPtr; // @[RAS.scala 94:26 96:20 74:25]
  wire [38:0] _GEN_2 = io_recover_valid ? e_2_retAddr : top_retAddr; // @[RAS.scala 73:22 94:26 97:25]
  wire [7:0] _top_ctr_T_1 = _T_8_ctr + 8'h1; // @[RAS.scala 99:33]
  wire  _GEN_15 = _T_2 ? 1'h0 : 1'h1; // @[RAS.scala 71:20 87:29]
  wire  _T_11 = _T_8_ctr == 8'h0; // @[RAS.scala 103:26]
  wire [4:0] _sp_T_6 = _T_3 - 5'h1; // @[RAS.scala 77:65]
  wire [4:0] _sp_T_7 = _T_3 == 5'h0 ? 5'h1f : _sp_T_6; // @[RAS.scala 77:32]
  wire  _topPtr_T = _T_6 == 5'h0; // @[RAS.scala 77:37]
  wire [4:0] _topPtr_T_2 = _T_6 - 5'h1; // @[RAS.scala 77:65]
  wire [4:0] _topPtr_T_3 = _T_6 == 5'h0 ? 5'h1f : _topPtr_T_2; // @[RAS.scala 77:32]
  wire [7:0] _top_ctr_T_3 = _T_8_ctr - 8'h1; // @[RAS.scala 113:33]
  wire  _GEN_28 = _T_8_ctr == 8'h0 ? 1'h0 : 1'h1; // @[RAS.scala 103:35 71:20]
  wire  _GEN_43 = _T_1 & _T_11; // @[RAS.scala 102:27 71:20]
  wire  _GEN_48 = _T_1 & _GEN_28; // @[RAS.scala 102:27 71:20]
  wire  _GEN_54 = _T_1 ? 1'h0 : io_recover_valid; // @[RAS.scala 102:27 71:20]
  reg [4:0] resetIdx; // @[RAS.scala 139:27]
  reg  do_reset; // @[RAS.scala 140:27]
  wire [4:0] _GEN_96 = {{4'd0}, do_reset}; // @[RAS.scala 144:26]
  wire [4:0] _resetIdx_T_1 = resetIdx + _GEN_96; // @[RAS.scala 144:26]
  wire  _GEN_95 = resetIdx == 5'h1f ? 1'h0 : do_reset; // @[RAS.scala 145:39 146:16 140:27]
  assign stack_retAddr_top_MPORT_en = _T ? 1'h0 : _GEN_43;
  assign stack_retAddr_top_MPORT_addr = _topPtr_T ? 5'h1f : _topPtr_T_2;
  assign stack_retAddr_top_MPORT_data = stack_retAddr[stack_retAddr_top_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_0_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_0_MPORT_addr = 5'h0;
  assign stack_retAddr_debugIO_out_mem_0_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_0_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_1_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_1_MPORT_addr = 5'h1;
  assign stack_retAddr_debugIO_out_mem_1_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_1_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_2_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_2_MPORT_addr = 5'h2;
  assign stack_retAddr_debugIO_out_mem_2_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_2_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_3_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_3_MPORT_addr = 5'h3;
  assign stack_retAddr_debugIO_out_mem_3_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_3_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_4_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_4_MPORT_addr = 5'h4;
  assign stack_retAddr_debugIO_out_mem_4_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_4_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_5_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_5_MPORT_addr = 5'h5;
  assign stack_retAddr_debugIO_out_mem_5_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_5_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_6_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_6_MPORT_addr = 5'h6;
  assign stack_retAddr_debugIO_out_mem_6_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_6_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_7_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_7_MPORT_addr = 5'h7;
  assign stack_retAddr_debugIO_out_mem_7_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_7_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_8_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_8_MPORT_addr = 5'h8;
  assign stack_retAddr_debugIO_out_mem_8_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_8_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_9_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_9_MPORT_addr = 5'h9;
  assign stack_retAddr_debugIO_out_mem_9_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_9_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_10_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_10_MPORT_addr = 5'ha;
  assign stack_retAddr_debugIO_out_mem_10_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_10_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_11_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_11_MPORT_addr = 5'hb;
  assign stack_retAddr_debugIO_out_mem_11_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_11_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_12_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_12_MPORT_addr = 5'hc;
  assign stack_retAddr_debugIO_out_mem_12_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_12_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_13_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_13_MPORT_addr = 5'hd;
  assign stack_retAddr_debugIO_out_mem_13_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_13_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_14_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_14_MPORT_addr = 5'he;
  assign stack_retAddr_debugIO_out_mem_14_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_14_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_15_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_15_MPORT_addr = 5'hf;
  assign stack_retAddr_debugIO_out_mem_15_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_15_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_16_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_16_MPORT_addr = 5'h10;
  assign stack_retAddr_debugIO_out_mem_16_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_16_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_17_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_17_MPORT_addr = 5'h11;
  assign stack_retAddr_debugIO_out_mem_17_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_17_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_18_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_18_MPORT_addr = 5'h12;
  assign stack_retAddr_debugIO_out_mem_18_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_18_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_19_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_19_MPORT_addr = 5'h13;
  assign stack_retAddr_debugIO_out_mem_19_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_19_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_20_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_20_MPORT_addr = 5'h14;
  assign stack_retAddr_debugIO_out_mem_20_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_20_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_21_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_21_MPORT_addr = 5'h15;
  assign stack_retAddr_debugIO_out_mem_21_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_21_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_22_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_22_MPORT_addr = 5'h16;
  assign stack_retAddr_debugIO_out_mem_22_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_22_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_23_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_23_MPORT_addr = 5'h17;
  assign stack_retAddr_debugIO_out_mem_23_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_23_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_24_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_24_MPORT_addr = 5'h18;
  assign stack_retAddr_debugIO_out_mem_24_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_24_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_25_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_25_MPORT_addr = 5'h19;
  assign stack_retAddr_debugIO_out_mem_25_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_25_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_26_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_26_MPORT_addr = 5'h1a;
  assign stack_retAddr_debugIO_out_mem_26_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_26_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_27_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_27_MPORT_addr = 5'h1b;
  assign stack_retAddr_debugIO_out_mem_27_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_27_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_28_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_28_MPORT_addr = 5'h1c;
  assign stack_retAddr_debugIO_out_mem_28_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_28_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_29_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_29_MPORT_addr = 5'h1d;
  assign stack_retAddr_debugIO_out_mem_29_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_29_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_30_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_30_MPORT_addr = 5'h1e;
  assign stack_retAddr_debugIO_out_mem_30_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_30_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_debugIO_out_mem_31_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_31_MPORT_addr = 5'h1f;
  assign stack_retAddr_debugIO_out_mem_31_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_31_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_retAddr_MPORT_data = io_recover_valid ? io_recover_new_addr : io_spec_new_addr;
  assign stack_retAddr_MPORT_addr = io_recover_valid ? io_recover_sp : sp;
  assign stack_retAddr_MPORT_mask = 1'h1;
  assign stack_retAddr_MPORT_en = _T & _T_2;
  assign stack_retAddr_MPORT_1_data = io_recover_valid ? io_recover_new_addr : io_spec_new_addr;
  assign stack_retAddr_MPORT_1_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_retAddr_MPORT_1_mask = 1'h1;
  assign stack_retAddr_MPORT_1_en = _T & _GEN_15;
  assign stack_retAddr_MPORT_2_data = io_recover_valid ? io_recover_top_retAddr : top_retAddr;
  assign stack_retAddr_MPORT_2_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_retAddr_MPORT_2_mask = 1'h1;
  assign stack_retAddr_MPORT_2_en = _T ? 1'h0 : _GEN_48;
  assign stack_retAddr_MPORT_3_data = io_recover_valid ? io_recover_top_retAddr : top_retAddr;
  assign stack_retAddr_MPORT_3_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_retAddr_MPORT_3_mask = 1'h1;
  assign stack_retAddr_MPORT_3_en = _T ? 1'h0 : _GEN_54;
  assign stack_retAddr_MPORT_4_data = 39'h80000000;
  assign stack_retAddr_MPORT_4_addr = resetIdx;
  assign stack_retAddr_MPORT_4_mask = 1'h1;
  assign stack_retAddr_MPORT_4_en = do_reset;
  assign stack_ctr_top_MPORT_en = _T ? 1'h0 : _GEN_43;
  assign stack_ctr_top_MPORT_addr = _topPtr_T ? 5'h1f : _topPtr_T_2;
  assign stack_ctr_top_MPORT_data = stack_ctr[stack_ctr_top_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_0_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_0_MPORT_addr = 5'h0;
  assign stack_ctr_debugIO_out_mem_0_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_0_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_1_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_1_MPORT_addr = 5'h1;
  assign stack_ctr_debugIO_out_mem_1_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_1_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_2_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_2_MPORT_addr = 5'h2;
  assign stack_ctr_debugIO_out_mem_2_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_2_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_3_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_3_MPORT_addr = 5'h3;
  assign stack_ctr_debugIO_out_mem_3_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_3_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_4_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_4_MPORT_addr = 5'h4;
  assign stack_ctr_debugIO_out_mem_4_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_4_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_5_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_5_MPORT_addr = 5'h5;
  assign stack_ctr_debugIO_out_mem_5_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_5_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_6_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_6_MPORT_addr = 5'h6;
  assign stack_ctr_debugIO_out_mem_6_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_6_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_7_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_7_MPORT_addr = 5'h7;
  assign stack_ctr_debugIO_out_mem_7_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_7_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_8_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_8_MPORT_addr = 5'h8;
  assign stack_ctr_debugIO_out_mem_8_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_8_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_9_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_9_MPORT_addr = 5'h9;
  assign stack_ctr_debugIO_out_mem_9_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_9_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_10_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_10_MPORT_addr = 5'ha;
  assign stack_ctr_debugIO_out_mem_10_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_10_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_11_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_11_MPORT_addr = 5'hb;
  assign stack_ctr_debugIO_out_mem_11_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_11_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_12_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_12_MPORT_addr = 5'hc;
  assign stack_ctr_debugIO_out_mem_12_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_12_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_13_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_13_MPORT_addr = 5'hd;
  assign stack_ctr_debugIO_out_mem_13_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_13_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_14_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_14_MPORT_addr = 5'he;
  assign stack_ctr_debugIO_out_mem_14_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_14_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_15_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_15_MPORT_addr = 5'hf;
  assign stack_ctr_debugIO_out_mem_15_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_15_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_16_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_16_MPORT_addr = 5'h10;
  assign stack_ctr_debugIO_out_mem_16_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_16_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_17_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_17_MPORT_addr = 5'h11;
  assign stack_ctr_debugIO_out_mem_17_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_17_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_18_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_18_MPORT_addr = 5'h12;
  assign stack_ctr_debugIO_out_mem_18_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_18_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_19_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_19_MPORT_addr = 5'h13;
  assign stack_ctr_debugIO_out_mem_19_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_19_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_20_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_20_MPORT_addr = 5'h14;
  assign stack_ctr_debugIO_out_mem_20_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_20_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_21_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_21_MPORT_addr = 5'h15;
  assign stack_ctr_debugIO_out_mem_21_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_21_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_22_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_22_MPORT_addr = 5'h16;
  assign stack_ctr_debugIO_out_mem_22_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_22_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_23_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_23_MPORT_addr = 5'h17;
  assign stack_ctr_debugIO_out_mem_23_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_23_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_24_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_24_MPORT_addr = 5'h18;
  assign stack_ctr_debugIO_out_mem_24_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_24_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_25_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_25_MPORT_addr = 5'h19;
  assign stack_ctr_debugIO_out_mem_25_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_25_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_26_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_26_MPORT_addr = 5'h1a;
  assign stack_ctr_debugIO_out_mem_26_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_26_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_27_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_27_MPORT_addr = 5'h1b;
  assign stack_ctr_debugIO_out_mem_27_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_27_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_28_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_28_MPORT_addr = 5'h1c;
  assign stack_ctr_debugIO_out_mem_28_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_28_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_29_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_29_MPORT_addr = 5'h1d;
  assign stack_ctr_debugIO_out_mem_29_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_29_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_30_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_30_MPORT_addr = 5'h1e;
  assign stack_ctr_debugIO_out_mem_30_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_30_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_debugIO_out_mem_31_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_31_MPORT_addr = 5'h1f;
  assign stack_ctr_debugIO_out_mem_31_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_31_MPORT_addr]; // @[RAS.scala 71:20]
  assign stack_ctr_MPORT_data = 8'h0;
  assign stack_ctr_MPORT_addr = io_recover_valid ? io_recover_sp : sp;
  assign stack_ctr_MPORT_mask = 1'h1;
  assign stack_ctr_MPORT_en = _T & _T_2;
  assign stack_ctr_MPORT_1_data = _T_8_ctr + 8'h1;
  assign stack_ctr_MPORT_1_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_ctr_MPORT_1_mask = 1'h1;
  assign stack_ctr_MPORT_1_en = _T & _GEN_15;
  assign stack_ctr_MPORT_2_data = _T_8_ctr - 8'h1;
  assign stack_ctr_MPORT_2_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_ctr_MPORT_2_mask = 1'h1;
  assign stack_ctr_MPORT_2_en = _T ? 1'h0 : _GEN_48;
  assign stack_ctr_MPORT_3_data = io_recover_valid ? io_recover_top_ctr : top_ctr;
  assign stack_ctr_MPORT_3_addr = io_recover_valid ? _T_5 : topPtr;
  assign stack_ctr_MPORT_3_mask = 1'h1;
  assign stack_ctr_MPORT_3_en = _T ? 1'h0 : _GEN_54;
  assign stack_ctr_MPORT_4_data = 8'h0;
  assign stack_ctr_MPORT_4_addr = resetIdx;
  assign stack_ctr_MPORT_4_mask = 1'h1;
  assign stack_ctr_MPORT_4_en = do_reset;
  assign io_sp = sp; // @[RAS.scala 136:11]
  assign io_top_retAddr = top_retAddr; // @[RAS.scala 137:12]
  assign io_top_ctr = top_ctr; // @[RAS.scala 137:12]
  always @(posedge clock) begin
    if (stack_retAddr_MPORT_en & stack_retAddr_MPORT_mask) begin
      stack_retAddr[stack_retAddr_MPORT_addr] <= stack_retAddr_MPORT_data; // @[RAS.scala 71:20]
    end
    if (stack_retAddr_MPORT_1_en & stack_retAddr_MPORT_1_mask) begin
      stack_retAddr[stack_retAddr_MPORT_1_addr] <= stack_retAddr_MPORT_1_data; // @[RAS.scala 71:20]
    end
    if (stack_retAddr_MPORT_2_en & stack_retAddr_MPORT_2_mask) begin
      stack_retAddr[stack_retAddr_MPORT_2_addr] <= stack_retAddr_MPORT_2_data; // @[RAS.scala 71:20]
    end
    if (stack_retAddr_MPORT_3_en & stack_retAddr_MPORT_3_mask) begin
      stack_retAddr[stack_retAddr_MPORT_3_addr] <= stack_retAddr_MPORT_3_data; // @[RAS.scala 71:20]
    end
    if (stack_retAddr_MPORT_4_en & stack_retAddr_MPORT_4_mask) begin
      stack_retAddr[stack_retAddr_MPORT_4_addr] <= stack_retAddr_MPORT_4_data; // @[RAS.scala 71:20]
    end
    if (stack_ctr_MPORT_en & stack_ctr_MPORT_mask) begin
      stack_ctr[stack_ctr_MPORT_addr] <= stack_ctr_MPORT_data; // @[RAS.scala 71:20]
    end
    if (stack_ctr_MPORT_1_en & stack_ctr_MPORT_1_mask) begin
      stack_ctr[stack_ctr_MPORT_1_addr] <= stack_ctr_MPORT_1_data; // @[RAS.scala 71:20]
    end
    if (stack_ctr_MPORT_2_en & stack_ctr_MPORT_2_mask) begin
      stack_ctr[stack_ctr_MPORT_2_addr] <= stack_ctr_MPORT_2_data; // @[RAS.scala 71:20]
    end
    if (stack_ctr_MPORT_3_en & stack_ctr_MPORT_3_mask) begin
      stack_ctr[stack_ctr_MPORT_3_addr] <= stack_ctr_MPORT_3_data; // @[RAS.scala 71:20]
    end
    if (stack_ctr_MPORT_4_en & stack_ctr_MPORT_4_mask) begin
      stack_ctr[stack_ctr_MPORT_4_addr] <= stack_ctr_MPORT_4_data; // @[RAS.scala 71:20]
    end
    if (reset) begin // @[RAS.scala 72:21]
      sp <= 5'h0; // @[RAS.scala 72:21]
    end else if (_T) begin // @[RAS.scala 86:22]
      if (_T_2) begin // @[RAS.scala 87:29]
        if (_T_3 == 5'h1f) begin // @[RAS.scala 76:32]
          sp <= 5'h0;
        end else begin
          sp <= _sp_T_2;
        end
      end else begin
        sp <= _GEN_0;
      end
    end else if (_T_1) begin // @[RAS.scala 102:27]
      if (_T_8_ctr == 8'h0) begin // @[RAS.scala 103:35]
        sp <= _sp_T_7; // @[RAS.scala 104:18]
      end else begin
        sp <= _GEN_0;
      end
    end else begin
      sp <= _GEN_0;
    end
    if (reset) begin // @[RAS.scala 73:22]
      top_retAddr <= 39'h80000000; // @[RAS.scala 73:22]
    end else if (_T) begin // @[RAS.scala 86:22]
      if (_T_2) begin // @[RAS.scala 87:29]
        if (io_recover_valid) begin // @[RAS.scala 133:10]
          top_retAddr <= io_recover_new_addr;
        end else begin
          top_retAddr <= io_spec_new_addr;
        end
      end else begin
        top_retAddr <= _GEN_2;
      end
    end else if (_T_1) begin // @[RAS.scala 102:27]
      if (_T_8_ctr == 8'h0) begin // @[RAS.scala 103:35]
        top_retAddr <= stack_retAddr_top_MPORT_data; // @[RAS.scala 106:15]
      end else begin
        top_retAddr <= _GEN_2;
      end
    end else begin
      top_retAddr <= _GEN_2;
    end
    if (reset) begin // @[RAS.scala 73:22]
      top_ctr <= 8'h0; // @[RAS.scala 73:22]
    end else if (_T) begin // @[RAS.scala 86:22]
      if (_T_2) begin // @[RAS.scala 87:29]
        top_ctr <= 8'h0; // @[RAS.scala 91:19]
      end else begin
        top_ctr <= _top_ctr_T_1; // @[RAS.scala 99:19]
      end
    end else if (_T_1) begin // @[RAS.scala 102:27]
      if (_T_8_ctr == 8'h0) begin // @[RAS.scala 103:35]
        top_ctr <= stack_ctr_top_MPORT_data; // @[RAS.scala 106:15]
      end else begin
        top_ctr <= _top_ctr_T_3; // @[RAS.scala 113:19]
      end
    end else if (io_recover_valid) begin // @[RAS.scala 117:24]
      top_ctr <= _T_8_ctr; // @[RAS.scala 120:15]
    end
    if (reset) begin // @[RAS.scala 74:25]
      topPtr <= 5'h0; // @[RAS.scala 74:25]
    end else if (_T) begin // @[RAS.scala 86:22]
      if (_T_2) begin // @[RAS.scala 87:29]
        if (io_recover_valid) begin // @[RAS.scala 131:10]
          topPtr <= io_recover_sp;
        end else begin
          topPtr <= sp;
        end
      end else begin
        topPtr <= _GEN_1;
      end
    end else if (_T_1) begin // @[RAS.scala 102:27]
      if (_T_8_ctr == 8'h0) begin // @[RAS.scala 103:35]
        topPtr <= _topPtr_T_3; // @[RAS.scala 105:18]
      end else begin
        topPtr <= _GEN_1;
      end
    end else begin
      topPtr <= _GEN_1;
    end
    if (reset) begin // @[RAS.scala 139:27]
      resetIdx <= 5'h0; // @[RAS.scala 139:27]
    end else begin
      resetIdx <= _resetIdx_T_1; // @[RAS.scala 144:14]
    end
    do_reset <= reset | _GEN_95; // @[RAS.scala 140:{27,27}]
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
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    stack_retAddr[initvar] = _RAND_0[38:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    stack_ctr[initvar] = _RAND_1[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sp = _RAND_2[4:0];
  _RAND_3 = {2{`RANDOM}};
  top_retAddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  top_ctr = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  topPtr = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  resetIdx = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  do_reset = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
