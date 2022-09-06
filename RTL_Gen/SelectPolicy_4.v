module SelectPolicy_4(
  input         clock,
  input         reset,
  input  [23:0] io_validVec,
  output        io_allocate_0_valid,
  output [23:0] io_allocate_0_bits,
  output        io_allocate_1_valid,
  output [23:0] io_allocate_1_bits,
  input  [23:0] io_request,
  output        io_grant_0_valid,
  output [23:0] io_grant_0_bits,
  output        io_grant_1_valid,
  output [23:0] io_grant_1_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  emptyVec_0 = ~io_validVec[0]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_1 = ~io_validVec[1]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_2 = ~io_validVec[2]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_3 = ~io_validVec[3]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_4 = ~io_validVec[4]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_5 = ~io_validVec[5]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_6 = ~io_validVec[6]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_7 = ~io_validVec[7]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_8 = ~io_validVec[8]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_9 = ~io_validVec[9]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_10 = ~io_validVec[10]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_11 = ~io_validVec[11]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_12 = ~io_validVec[12]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_13 = ~io_validVec[13]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_14 = ~io_validVec[14]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_15 = ~io_validVec[15]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_16 = ~io_validVec[16]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_17 = ~io_validVec[17]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_18 = ~io_validVec[18]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_19 = ~io_validVec[19]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_20 = ~io_validVec[20]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_21 = ~io_validVec[21]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_22 = ~io_validVec[22]; // @[SelectPolicy.scala 38:55]
  wire  emptyVec_23 = ~io_validVec[23]; // @[SelectPolicy.scala 38:55]
  wire  matrix__1_0 = ~(|emptyVec_0); // @[BitUtils.scala 222:50]
  wire [1:0] _matrix_2_0_T = {emptyVec_0,emptyVec_1}; // @[Cat.scala 31:58]
  wire  matrix__2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 222:50]
  wire [2:0] _matrix_3_0_T = {emptyVec_0,emptyVec_1,emptyVec_2}; // @[Cat.scala 31:58]
  wire  matrix__3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 222:50]
  wire [3:0] _matrix_4_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3}; // @[Cat.scala 31:58]
  wire  matrix__4_0 = ~(|_matrix_4_0_T); // @[BitUtils.scala 222:50]
  wire [4:0] _matrix_5_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4}; // @[Cat.scala 31:58]
  wire  matrix__5_0 = ~(|_matrix_5_0_T); // @[BitUtils.scala 222:50]
  wire [5:0] _matrix_6_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5}; // @[Cat.scala 31:58]
  wire  matrix__6_0 = ~(|_matrix_6_0_T); // @[BitUtils.scala 222:50]
  wire [6:0] _matrix_7_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6}; // @[Cat.scala 31:58]
  wire  matrix__7_0 = ~(|_matrix_7_0_T); // @[BitUtils.scala 222:50]
  wire [7:0] _matrix_8_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7}; // @[Cat.scala 31:58]
  wire  matrix__8_0 = ~(|_matrix_8_0_T); // @[BitUtils.scala 222:50]
  wire [8:0] _matrix_9_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    emptyVec_8}; // @[Cat.scala 31:58]
  wire  matrix__9_0 = ~(|_matrix_9_0_T); // @[BitUtils.scala 222:50]
  wire [9:0] _matrix_10_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    emptyVec_8,emptyVec_9}; // @[Cat.scala 31:58]
  wire  matrix__10_0 = ~(|_matrix_10_0_T); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_11_0_lo = {emptyVec_6,emptyVec_7,emptyVec_8,emptyVec_9,emptyVec_10}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,matrix_11_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__11_0 = ~(|_matrix_11_0_T); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_12_0_lo = {emptyVec_6,emptyVec_7,emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,matrix_12_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__12_0 = ~(|_matrix_12_0_T); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_13_0_lo = {emptyVec_7,emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,
    matrix_13_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__13_0 = ~(|_matrix_13_0_T); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_14_0_lo = {emptyVec_7,emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,
    matrix_14_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__14_0 = ~(|_matrix_14_0_T); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_15_0_lo = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    matrix_15_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__15_0 = ~(|_matrix_15_0_T); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_16_0_lo = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    emptyVec_15}; // @[Cat.scala 31:58]
  wire [15:0] _matrix_16_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    matrix_16_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__16_0 = ~(|_matrix_16_0_T); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_17_0_lo = {emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,
    emptyVec_16}; // @[Cat.scala 31:58]
  wire [16:0] _matrix_17_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    emptyVec_8,matrix_17_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__17_0 = ~(|_matrix_17_0_T); // @[BitUtils.scala 222:50]
  wire [8:0] matrix_18_0_lo = {emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,
    emptyVec_16,emptyVec_17}; // @[Cat.scala 31:58]
  wire [17:0] _matrix_18_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6,emptyVec_7,
    emptyVec_8,matrix_18_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__18_0 = ~(|_matrix_18_0_T); // @[BitUtils.scala 222:50]
  wire [18:0] _matrix_19_0_T = {_matrix_10_0_T,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,
    emptyVec_16,emptyVec_17,emptyVec_18}; // @[Cat.scala 31:58]
  wire  matrix__19_0 = ~(|_matrix_19_0_T); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_20_0_lo = {emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,emptyVec_16,
    emptyVec_17,emptyVec_18,emptyVec_19}; // @[Cat.scala 31:58]
  wire [19:0] _matrix_20_0_T = {_matrix_10_0_T,matrix_20_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__20_0 = ~(|_matrix_20_0_T); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_21_0_lo = {emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,emptyVec_16,emptyVec_17,
    emptyVec_18,emptyVec_19,emptyVec_20}; // @[Cat.scala 31:58]
  wire [20:0] _matrix_21_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,matrix_11_0_lo,
    matrix_21_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__21_0 = ~(|_matrix_21_0_T); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_22_0_lo_lo = {emptyVec_17,emptyVec_18,emptyVec_19,emptyVec_20,emptyVec_21}; // @[Cat.scala 31:58]
  wire [10:0] matrix_22_0_lo = {emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,emptyVec_16,
    matrix_22_0_lo_lo}; // @[Cat.scala 31:58]
  wire [21:0] _matrix_22_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,matrix_11_0_lo,
    matrix_22_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__22_0 = ~(|_matrix_22_0_T); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_23_0_lo_lo = {emptyVec_18,emptyVec_19,emptyVec_20,emptyVec_21,emptyVec_22}; // @[Cat.scala 31:58]
  wire [10:0] matrix_23_0_lo = {emptyVec_12,emptyVec_13,emptyVec_14,emptyVec_15,emptyVec_16,emptyVec_17,
    matrix_23_0_lo_lo}; // @[Cat.scala 31:58]
  wire [22:0] _matrix_23_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,matrix_12_0_lo,
    matrix_23_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__23_0 = ~(|_matrix_23_0_T); // @[BitUtils.scala 222:50]
  wire  matrix_1_1_0 = ~(|emptyVec_23); // @[BitUtils.scala 222:50]
  wire [1:0] _matrix_2_0_T_3 = {emptyVec_23,emptyVec_22}; // @[Cat.scala 31:58]
  wire  matrix_1_2_0 = ~(|_matrix_2_0_T_3); // @[BitUtils.scala 222:50]
  wire [2:0] _matrix_3_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21}; // @[Cat.scala 31:58]
  wire  matrix_1_3_0 = ~(|_matrix_3_0_T_3); // @[BitUtils.scala 222:50]
  wire [3:0] _matrix_4_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20}; // @[Cat.scala 31:58]
  wire  matrix_1_4_0 = ~(|_matrix_4_0_T_3); // @[BitUtils.scala 222:50]
  wire [4:0] _matrix_5_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19}; // @[Cat.scala 31:58]
  wire  matrix_1_5_0 = ~(|_matrix_5_0_T_3); // @[BitUtils.scala 222:50]
  wire [5:0] _matrix_6_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18}; // @[Cat.scala 31:58]
  wire  matrix_1_6_0 = ~(|_matrix_6_0_T_3); // @[BitUtils.scala 222:50]
  wire [6:0] _matrix_7_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17}; // @[Cat.scala 31:58]
  wire  matrix_1_7_0 = ~(|_matrix_7_0_T_3); // @[BitUtils.scala 222:50]
  wire [7:0] _matrix_8_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16}; // @[Cat.scala 31:58]
  wire  matrix_1_8_0 = ~(|_matrix_8_0_T_3); // @[BitUtils.scala 222:50]
  wire [8:0] _matrix_9_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,emptyVec_15}; // @[Cat.scala 31:58]
  wire  matrix_1_9_0 = ~(|_matrix_9_0_T_3); // @[BitUtils.scala 222:50]
  wire [9:0] _matrix_10_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,emptyVec_15,emptyVec_14}; // @[Cat.scala 31:58]
  wire  matrix_1_10_0 = ~(|_matrix_10_0_T_3); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_11_0_lo_1 = {emptyVec_17,emptyVec_16,emptyVec_15,emptyVec_14,emptyVec_13}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,
    matrix_11_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_11_0 = ~(|_matrix_11_0_T_3); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_12_0_lo_1 = {emptyVec_17,emptyVec_16,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,
    matrix_12_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_12_0 = ~(|_matrix_12_0_T_3); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_13_0_lo_1 = {emptyVec_16,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    matrix_13_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_13_0 = ~(|_matrix_13_0_T_3); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_14_0_lo_1 = {emptyVec_16,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    matrix_14_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_14_0 = ~(|_matrix_14_0_T_3); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_15_0_lo_1 = {emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,matrix_15_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_15_0 = ~(|_matrix_15_0_T_3); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_16_0_lo_1 = {emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,
    emptyVec_8}; // @[Cat.scala 31:58]
  wire [15:0] _matrix_16_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,matrix_16_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_16_0 = ~(|_matrix_16_0_T_3); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_17_0_lo_1 = {emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,
    emptyVec_7}; // @[Cat.scala 31:58]
  wire [16:0] _matrix_17_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,emptyVec_15,matrix_17_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_17_0 = ~(|_matrix_17_0_T_3); // @[BitUtils.scala 222:50]
  wire [8:0] matrix_18_0_lo_1 = {emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,
    emptyVec_7,emptyVec_6}; // @[Cat.scala 31:58]
  wire [17:0] _matrix_18_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,emptyVec_17,
    emptyVec_16,emptyVec_15,matrix_18_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_18_0 = ~(|_matrix_18_0_T_3); // @[BitUtils.scala 222:50]
  wire [18:0] _matrix_19_0_T_3 = {_matrix_10_0_T_3,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8
    ,emptyVec_7,emptyVec_6,emptyVec_5}; // @[Cat.scala 31:58]
  wire  matrix_1_19_0 = ~(|_matrix_19_0_T_3); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_20_0_lo_1 = {emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,emptyVec_7,
    emptyVec_6,emptyVec_5,emptyVec_4}; // @[Cat.scala 31:58]
  wire [19:0] _matrix_20_0_T_3 = {_matrix_10_0_T_3,matrix_20_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_20_0 = ~(|_matrix_20_0_T_3); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_21_0_lo_1 = {emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,emptyVec_7,emptyVec_6,
    emptyVec_5,emptyVec_4,emptyVec_3}; // @[Cat.scala 31:58]
  wire [20:0] _matrix_21_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,
    matrix_11_0_lo_1,matrix_21_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_21_0 = ~(|_matrix_21_0_T_3); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_22_0_lo_lo_1 = {emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2}; // @[Cat.scala 31:58]
  wire [10:0] matrix_22_0_lo_1 = {emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,emptyVec_7,
    matrix_22_0_lo_lo_1}; // @[Cat.scala 31:58]
  wire [21:0] _matrix_22_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,
    matrix_11_0_lo_1,matrix_22_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_22_0 = ~(|_matrix_22_0_T_3); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_23_0_lo_lo_1 = {emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1}; // @[Cat.scala 31:58]
  wire [10:0] matrix_23_0_lo_1 = {emptyVec_11,emptyVec_10,emptyVec_9,emptyVec_8,emptyVec_7,emptyVec_6,
    matrix_23_0_lo_lo_1}; // @[Cat.scala 31:58]
  wire [22:0] _matrix_23_0_T_3 = {emptyVec_23,emptyVec_22,emptyVec_21,emptyVec_20,emptyVec_19,emptyVec_18,
    matrix_12_0_lo_1,matrix_23_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_23_0 = ~(|_matrix_23_0_T_3); // @[BitUtils.scala 222:50]
  wire  _moreThan_T_627 = emptyVec_17 & (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 |
    emptyVec_23))))) | (emptyVec_18 & (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))) | (
    emptyVec_19 & (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23))) | (emptyVec_20 & (emptyVec_21 | (
    emptyVec_22 | emptyVec_23)) | (emptyVec_21 & (emptyVec_22 | emptyVec_23) | emptyVec_22 & emptyVec_23)))); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_630 = emptyVec_14 & (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (
    emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))))))) | (emptyVec_15 & (emptyVec_16 | (emptyVec_17 | (
    emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23))))))) | (emptyVec_16 & (
    emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))))) |
    _moreThan_T_627)); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_632 = emptyVec_12 & (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (
    emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))))))))) | (emptyVec_13 & (
    emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21
     | (emptyVec_22 | emptyVec_23))))))))) | _moreThan_T_630); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_634 = emptyVec_10 & (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (
    emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)
    ))))))))))) | (emptyVec_11 & (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17
     | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23))))))))))) |
    _moreThan_T_632); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_635 = emptyVec_9 & (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (
    emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22
     | emptyVec_23))))))))))))) | _moreThan_T_634; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_636 = emptyVec_8 & (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (
    emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21
     | (emptyVec_22 | emptyVec_23)))))))))))))) | _moreThan_T_635; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_637 = emptyVec_7 & (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (
    emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20
     | (emptyVec_21 | (emptyVec_22 | emptyVec_23))))))))))))))) | _moreThan_T_636; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_638 = emptyVec_6 & (emptyVec_7 | (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (
    emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19
     | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))))))))))))))) | _moreThan_T_637; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_639 = emptyVec_5 & (emptyVec_6 | (emptyVec_7 | (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (
    emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18
     | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23))))))))))))))))) | _moreThan_T_638; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_640 = emptyVec_4 & (emptyVec_5 | (emptyVec_6 | (emptyVec_7 | (emptyVec_8 | (emptyVec_9 | (
    emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17
     | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)))))))))))))))))) |
    _moreThan_T_639; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_641 = emptyVec_3 & (emptyVec_4 | (emptyVec_5 | (emptyVec_6 | (emptyVec_7 | (emptyVec_8 | (emptyVec_9
     | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (
    emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23))))))))))))))))
    ))) | _moreThan_T_640; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_642 = emptyVec_2 & (emptyVec_3 | (emptyVec_4 | (emptyVec_5 | (emptyVec_6 | (emptyVec_7 | (emptyVec_8
     | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (emptyVec_15 | (
    emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22 | emptyVec_23)
    ))))))))))))))))))) | _moreThan_T_641; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_643 = emptyVec_1 & (emptyVec_2 | (emptyVec_3 | (emptyVec_4 | (emptyVec_5 | (emptyVec_6 | (emptyVec_7
     | (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (emptyVec_14 | (
    emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21 | (emptyVec_22
     | emptyVec_23))))))))))))))))))))) | _moreThan_T_642; // @[BitUtils.scala 199:49]
  wire  sel__1 = emptyVec_1 & matrix__1_0; // @[BitUtils.scala 239:62]
  wire  sel__2 = emptyVec_2 & matrix__2_0; // @[BitUtils.scala 239:62]
  wire  sel__3 = emptyVec_3 & matrix__3_0; // @[BitUtils.scala 239:62]
  wire  sel__4 = emptyVec_4 & matrix__4_0; // @[BitUtils.scala 239:62]
  wire  sel__5 = emptyVec_5 & matrix__5_0; // @[BitUtils.scala 239:62]
  wire  sel__6 = emptyVec_6 & matrix__6_0; // @[BitUtils.scala 239:62]
  wire  sel__7 = emptyVec_7 & matrix__7_0; // @[BitUtils.scala 239:62]
  wire  sel__8 = emptyVec_8 & matrix__8_0; // @[BitUtils.scala 239:62]
  wire  sel__9 = emptyVec_9 & matrix__9_0; // @[BitUtils.scala 239:62]
  wire  sel__10 = emptyVec_10 & matrix__10_0; // @[BitUtils.scala 239:62]
  wire  sel__11 = emptyVec_11 & matrix__11_0; // @[BitUtils.scala 239:62]
  wire  sel__12 = emptyVec_12 & matrix__12_0; // @[BitUtils.scala 239:62]
  wire  sel__13 = emptyVec_13 & matrix__13_0; // @[BitUtils.scala 239:62]
  wire  sel__14 = emptyVec_14 & matrix__14_0; // @[BitUtils.scala 239:62]
  wire  sel__15 = emptyVec_15 & matrix__15_0; // @[BitUtils.scala 239:62]
  wire  sel__16 = emptyVec_16 & matrix__16_0; // @[BitUtils.scala 239:62]
  wire  sel__17 = emptyVec_17 & matrix__17_0; // @[BitUtils.scala 239:62]
  wire  sel__18 = emptyVec_18 & matrix__18_0; // @[BitUtils.scala 239:62]
  wire  sel__19 = emptyVec_19 & matrix__19_0; // @[BitUtils.scala 239:62]
  wire  sel__20 = emptyVec_20 & matrix__20_0; // @[BitUtils.scala 239:62]
  wire  sel__21 = emptyVec_21 & matrix__21_0; // @[BitUtils.scala 239:62]
  wire  sel__22 = emptyVec_22 & matrix__22_0; // @[BitUtils.scala 239:62]
  wire  sel__23 = emptyVec_23 & matrix__23_0; // @[BitUtils.scala 239:62]
  wire [5:0] io_allocate_0_bits_lo_lo = {sel__5,sel__4,sel__3,sel__2,sel__1,emptyVec_0}; // @[SelectPolicy.scala 43:35]
  wire [11:0] io_allocate_0_bits_lo = {sel__11,sel__10,sel__9,sel__8,sel__7,sel__6,io_allocate_0_bits_lo_lo}; // @[SelectPolicy.scala 43:35]
  wire [5:0] io_allocate_0_bits_hi_lo = {sel__17,sel__16,sel__15,sel__14,sel__13,sel__12}; // @[SelectPolicy.scala 43:35]
  wire [11:0] io_allocate_0_bits_hi = {sel__23,sel__22,sel__21,sel__20,sel__19,sel__18,io_allocate_0_bits_hi_lo}; // @[SelectPolicy.scala 43:35]
  wire  sel_1_1 = emptyVec_22 & matrix_1_1_0; // @[BitUtils.scala 239:62]
  wire  sel_1_2 = emptyVec_21 & matrix_1_2_0; // @[BitUtils.scala 239:62]
  wire  sel_1_3 = emptyVec_20 & matrix_1_3_0; // @[BitUtils.scala 239:62]
  wire  sel_1_4 = emptyVec_19 & matrix_1_4_0; // @[BitUtils.scala 239:62]
  wire  sel_1_5 = emptyVec_18 & matrix_1_5_0; // @[BitUtils.scala 239:62]
  wire  sel_1_6 = emptyVec_17 & matrix_1_6_0; // @[BitUtils.scala 239:62]
  wire  sel_1_7 = emptyVec_16 & matrix_1_7_0; // @[BitUtils.scala 239:62]
  wire  sel_1_8 = emptyVec_15 & matrix_1_8_0; // @[BitUtils.scala 239:62]
  wire  sel_1_9 = emptyVec_14 & matrix_1_9_0; // @[BitUtils.scala 239:62]
  wire  sel_1_10 = emptyVec_13 & matrix_1_10_0; // @[BitUtils.scala 239:62]
  wire  sel_1_11 = emptyVec_12 & matrix_1_11_0; // @[BitUtils.scala 239:62]
  wire  sel_1_12 = emptyVec_11 & matrix_1_12_0; // @[BitUtils.scala 239:62]
  wire  sel_1_13 = emptyVec_10 & matrix_1_13_0; // @[BitUtils.scala 239:62]
  wire  sel_1_14 = emptyVec_9 & matrix_1_14_0; // @[BitUtils.scala 239:62]
  wire  sel_1_15 = emptyVec_8 & matrix_1_15_0; // @[BitUtils.scala 239:62]
  wire  sel_1_16 = emptyVec_7 & matrix_1_16_0; // @[BitUtils.scala 239:62]
  wire  sel_1_17 = emptyVec_6 & matrix_1_17_0; // @[BitUtils.scala 239:62]
  wire  sel_1_18 = emptyVec_5 & matrix_1_18_0; // @[BitUtils.scala 239:62]
  wire  sel_1_19 = emptyVec_4 & matrix_1_19_0; // @[BitUtils.scala 239:62]
  wire  sel_1_20 = emptyVec_3 & matrix_1_20_0; // @[BitUtils.scala 239:62]
  wire  sel_1_21 = emptyVec_2 & matrix_1_21_0; // @[BitUtils.scala 239:62]
  wire  sel_1_22 = emptyVec_1 & matrix_1_22_0; // @[BitUtils.scala 239:62]
  wire  sel_1_23 = emptyVec_0 & matrix_1_23_0; // @[BitUtils.scala 239:62]
  wire [5:0] io_allocate_1_bits_lo_lo = {sel_1_18,sel_1_19,sel_1_20,sel_1_21,sel_1_22,sel_1_23}; // @[SelectPolicy.scala 43:35]
  wire [11:0] io_allocate_1_bits_lo = {sel_1_12,sel_1_13,sel_1_14,sel_1_15,sel_1_16,sel_1_17,io_allocate_1_bits_lo_lo}; // @[SelectPolicy.scala 43:35]
  wire [5:0] io_allocate_1_bits_hi_lo = {sel_1_6,sel_1_7,sel_1_8,sel_1_9,sel_1_10,sel_1_11}; // @[SelectPolicy.scala 43:35]
  wire [11:0] io_allocate_1_bits_hi = {emptyVec_23,sel_1_1,sel_1_2,sel_1_3,sel_1_4,sel_1_5,io_allocate_1_bits_hi_lo}; // @[SelectPolicy.scala 43:35]
  wire  request_0 = io_request[0]; // @[SelectPolicy.scala 51:28]
  wire  request_1 = io_request[1]; // @[SelectPolicy.scala 51:28]
  wire  request_2 = io_request[2]; // @[SelectPolicy.scala 51:28]
  wire  request_3 = io_request[3]; // @[SelectPolicy.scala 51:28]
  wire  request_4 = io_request[4]; // @[SelectPolicy.scala 51:28]
  wire  request_5 = io_request[5]; // @[SelectPolicy.scala 51:28]
  wire  request_6 = io_request[6]; // @[SelectPolicy.scala 51:28]
  wire  request_7 = io_request[7]; // @[SelectPolicy.scala 51:28]
  wire  request_8 = io_request[8]; // @[SelectPolicy.scala 51:28]
  wire  request_9 = io_request[9]; // @[SelectPolicy.scala 51:28]
  wire  request_10 = io_request[10]; // @[SelectPolicy.scala 51:28]
  wire  request_11 = io_request[11]; // @[SelectPolicy.scala 51:28]
  wire  request_12 = io_request[12]; // @[SelectPolicy.scala 51:28]
  wire  request_13 = io_request[13]; // @[SelectPolicy.scala 51:28]
  wire  request_14 = io_request[14]; // @[SelectPolicy.scala 51:28]
  wire  request_15 = io_request[15]; // @[SelectPolicy.scala 51:28]
  wire  request_16 = io_request[16]; // @[SelectPolicy.scala 51:28]
  wire  request_17 = io_request[17]; // @[SelectPolicy.scala 51:28]
  wire  request_18 = io_request[18]; // @[SelectPolicy.scala 51:28]
  wire  request_19 = io_request[19]; // @[SelectPolicy.scala 51:28]
  wire  request_20 = io_request[20]; // @[SelectPolicy.scala 51:28]
  wire  request_21 = io_request[21]; // @[SelectPolicy.scala 51:28]
  wire  request_22 = io_request[22]; // @[SelectPolicy.scala 51:28]
  wire  request_23 = io_request[23]; // @[SelectPolicy.scala 51:28]
  reg  balance2_3; // @[BitUtils.scala 205:35]
  wire  matrix_2_1_0 = ~(|request_0); // @[BitUtils.scala 222:50]
  wire [1:0] _matrix_2_0_T_6 = {request_0,request_1}; // @[Cat.scala 31:58]
  wire  matrix_2_2_0 = ~(|_matrix_2_0_T_6); // @[BitUtils.scala 222:50]
  wire [2:0] _matrix_3_0_T_6 = {request_0,request_1,request_2}; // @[Cat.scala 31:58]
  wire  matrix_2_3_0 = ~(|_matrix_3_0_T_6); // @[BitUtils.scala 222:50]
  wire [3:0] _matrix_4_0_T_6 = {request_0,request_1,request_2,request_3}; // @[Cat.scala 31:58]
  wire  matrix_2_4_0 = ~(|_matrix_4_0_T_6); // @[BitUtils.scala 222:50]
  wire [4:0] _matrix_5_0_T_6 = {request_0,request_1,request_2,request_3,request_4}; // @[Cat.scala 31:58]
  wire  matrix_2_5_0 = ~(|_matrix_5_0_T_6); // @[BitUtils.scala 222:50]
  wire [5:0] _matrix_6_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5}; // @[Cat.scala 31:58]
  wire  matrix_2_6_0 = ~(|_matrix_6_0_T_6); // @[BitUtils.scala 222:50]
  wire [6:0] _matrix_7_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6}; // @[Cat.scala 31:58]
  wire  matrix_2_7_0 = ~(|_matrix_7_0_T_6); // @[BitUtils.scala 222:50]
  wire [7:0] _matrix_8_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7}; // @[Cat.scala 31:58]
  wire  matrix_2_8_0 = ~(|_matrix_8_0_T_6); // @[BitUtils.scala 222:50]
  wire [8:0] _matrix_9_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8}; // @[Cat.scala 31:58]
  wire  matrix_2_9_0 = ~(|_matrix_9_0_T_6); // @[BitUtils.scala 222:50]
  wire [9:0] _matrix_10_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8,request_9}; // @[Cat.scala 31:58]
  wire  matrix_2_10_0 = ~(|_matrix_10_0_T_6); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_11_0_lo_2 = {request_6,request_7,request_8,request_9,request_10}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_11_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_11_0 = ~(|_matrix_11_0_T_6); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_12_0_lo_2 = {request_6,request_7,request_8,request_9,request_10,request_11}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_12_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_12_0 = ~(|_matrix_12_0_T_6); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_13_0_lo_2 = {request_7,request_8,request_9,request_10,request_11,request_12}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,matrix_13_0_lo_2
    }; // @[Cat.scala 31:58]
  wire  matrix_2_13_0 = ~(|_matrix_13_0_T_6); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_14_0_lo_2 = {request_7,request_8,request_9,request_10,request_11,request_12,request_13}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,matrix_14_0_lo_2
    }; // @[Cat.scala 31:58]
  wire  matrix_2_14_0 = ~(|_matrix_14_0_T_6); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_15_0_lo_2 = {request_8,request_9,request_10,request_11,request_12,request_13,request_14}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    matrix_15_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_15_0 = ~(|_matrix_15_0_T_6); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_16_0_lo_2 = {request_8,request_9,request_10,request_11,request_12,request_13,request_14,request_15}; // @[Cat.scala 31:58]
  wire [15:0] _matrix_16_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    matrix_16_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_16_0 = ~(|_matrix_16_0_T_6); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_17_0_lo_2 = {request_9,request_10,request_11,request_12,request_13,request_14,request_15,request_16}
    ; // @[Cat.scala 31:58]
  wire [16:0] _matrix_17_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8,matrix_17_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_17_0 = ~(|_matrix_17_0_T_6); // @[BitUtils.scala 222:50]
  wire [8:0] matrix_18_0_lo_2 = {request_9,request_10,request_11,request_12,request_13,request_14,request_15,request_16,
    request_17}; // @[Cat.scala 31:58]
  wire [17:0] _matrix_18_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8,matrix_18_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_18_0 = ~(|_matrix_18_0_T_6); // @[BitUtils.scala 222:50]
  wire [18:0] _matrix_19_0_T_6 = {_matrix_10_0_T_6,request_10,request_11,request_12,request_13,request_14,request_15,
    request_16,request_17,request_18}; // @[Cat.scala 31:58]
  wire  matrix_2_19_0 = ~(|_matrix_19_0_T_6); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_20_0_lo_2 = {request_10,request_11,request_12,request_13,request_14,request_15,request_16,request_17
    ,request_18,request_19}; // @[Cat.scala 31:58]
  wire [19:0] _matrix_20_0_T_6 = {_matrix_10_0_T_6,matrix_20_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_20_0 = ~(|_matrix_20_0_T_6); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_21_0_lo_2 = {request_11,request_12,request_13,request_14,request_15,request_16,request_17,request_18
    ,request_19,request_20}; // @[Cat.scala 31:58]
  wire [20:0] _matrix_21_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_11_0_lo_2,
    matrix_21_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_21_0 = ~(|_matrix_21_0_T_6); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_22_0_lo_lo_2 = {request_17,request_18,request_19,request_20,request_21}; // @[Cat.scala 31:58]
  wire [10:0] matrix_22_0_lo_2 = {request_11,request_12,request_13,request_14,request_15,request_16,matrix_22_0_lo_lo_2}
    ; // @[Cat.scala 31:58]
  wire [21:0] _matrix_22_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_11_0_lo_2,
    matrix_22_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_22_0 = ~(|_matrix_22_0_T_6); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_23_0_lo_lo_2 = {request_18,request_19,request_20,request_21,request_22}; // @[Cat.scala 31:58]
  wire [10:0] matrix_23_0_lo_2 = {request_12,request_13,request_14,request_15,request_16,request_17,matrix_23_0_lo_lo_2}
    ; // @[Cat.scala 31:58]
  wire [22:0] _matrix_23_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_12_0_lo_2,
    matrix_23_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_23_0 = ~(|_matrix_23_0_T_6); // @[BitUtils.scala 222:50]
  wire  matrix_3_1_0 = ~(|request_23); // @[BitUtils.scala 222:50]
  wire [1:0] _matrix_2_0_T_9 = {request_23,request_22}; // @[Cat.scala 31:58]
  wire  matrix_3_2_0 = ~(|_matrix_2_0_T_9); // @[BitUtils.scala 222:50]
  wire [2:0] _matrix_3_0_T_9 = {request_23,request_22,request_21}; // @[Cat.scala 31:58]
  wire  matrix_3_3_0 = ~(|_matrix_3_0_T_9); // @[BitUtils.scala 222:50]
  wire [3:0] _matrix_4_0_T_9 = {request_23,request_22,request_21,request_20}; // @[Cat.scala 31:58]
  wire  matrix_3_4_0 = ~(|_matrix_4_0_T_9); // @[BitUtils.scala 222:50]
  wire [4:0] _matrix_5_0_T_9 = {request_23,request_22,request_21,request_20,request_19}; // @[Cat.scala 31:58]
  wire  matrix_3_5_0 = ~(|_matrix_5_0_T_9); // @[BitUtils.scala 222:50]
  wire [5:0] _matrix_6_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18}; // @[Cat.scala 31:58]
  wire  matrix_3_6_0 = ~(|_matrix_6_0_T_9); // @[BitUtils.scala 222:50]
  wire [6:0] _matrix_7_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17}; // @[Cat.scala 31:58]
  wire  matrix_3_7_0 = ~(|_matrix_7_0_T_9); // @[BitUtils.scala 222:50]
  wire [7:0] _matrix_8_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,request_16}
    ; // @[Cat.scala 31:58]
  wire  matrix_3_8_0 = ~(|_matrix_8_0_T_9); // @[BitUtils.scala 222:50]
  wire [8:0] _matrix_9_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,request_16,
    request_15}; // @[Cat.scala 31:58]
  wire  matrix_3_9_0 = ~(|_matrix_9_0_T_9); // @[BitUtils.scala 222:50]
  wire [9:0] _matrix_10_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,request_16
    ,request_15,request_14}; // @[Cat.scala 31:58]
  wire  matrix_3_10_0 = ~(|_matrix_10_0_T_9); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_11_0_lo_3 = {request_17,request_16,request_15,request_14,request_13}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,matrix_11_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_11_0 = ~(|_matrix_11_0_T_9); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_12_0_lo_3 = {request_17,request_16,request_15,request_14,request_13,request_12}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,matrix_12_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_12_0 = ~(|_matrix_12_0_T_9); // @[BitUtils.scala 222:50]
  wire [5:0] matrix_13_0_lo_3 = {request_16,request_15,request_14,request_13,request_12,request_11}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    matrix_13_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_13_0 = ~(|_matrix_13_0_T_9); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_14_0_lo_3 = {request_16,request_15,request_14,request_13,request_12,request_11,request_10}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    matrix_14_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_14_0 = ~(|_matrix_14_0_T_9); // @[BitUtils.scala 222:50]
  wire [6:0] matrix_15_0_lo_3 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    request_16,matrix_15_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_15_0 = ~(|_matrix_15_0_T_9); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_16_0_lo_3 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8}; // @[Cat.scala 31:58]
  wire [15:0] _matrix_16_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    request_16,matrix_16_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_16_0 = ~(|_matrix_16_0_T_9); // @[BitUtils.scala 222:50]
  wire [7:0] matrix_17_0_lo_3 = {request_14,request_13,request_12,request_11,request_10,request_9,request_8,request_7}; // @[Cat.scala 31:58]
  wire [16:0] _matrix_17_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    request_16,request_15,matrix_17_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_17_0 = ~(|_matrix_17_0_T_9); // @[BitUtils.scala 222:50]
  wire [8:0] matrix_18_0_lo_3 = {request_14,request_13,request_12,request_11,request_10,request_9,request_8,request_7,
    request_6}; // @[Cat.scala 31:58]
  wire [17:0] _matrix_18_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,request_17,
    request_16,request_15,matrix_18_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_18_0 = ~(|_matrix_18_0_T_9); // @[BitUtils.scala 222:50]
  wire [18:0] _matrix_19_0_T_9 = {_matrix_10_0_T_9,request_13,request_12,request_11,request_10,request_9,request_8,
    request_7,request_6,request_5}; // @[Cat.scala 31:58]
  wire  matrix_3_19_0 = ~(|_matrix_19_0_T_9); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_20_0_lo_3 = {request_13,request_12,request_11,request_10,request_9,request_8,request_7,request_6,
    request_5,request_4}; // @[Cat.scala 31:58]
  wire [19:0] _matrix_20_0_T_9 = {_matrix_10_0_T_9,matrix_20_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_20_0 = ~(|_matrix_20_0_T_9); // @[BitUtils.scala 222:50]
  wire [9:0] matrix_21_0_lo_3 = {request_12,request_11,request_10,request_9,request_8,request_7,request_6,request_5,
    request_4,request_3}; // @[Cat.scala 31:58]
  wire [20:0] _matrix_21_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,matrix_11_0_lo_3,
    matrix_21_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_21_0 = ~(|_matrix_21_0_T_9); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_22_0_lo_lo_3 = {request_6,request_5,request_4,request_3,request_2}; // @[Cat.scala 31:58]
  wire [10:0] matrix_22_0_lo_3 = {request_12,request_11,request_10,request_9,request_8,request_7,matrix_22_0_lo_lo_3}; // @[Cat.scala 31:58]
  wire [21:0] _matrix_22_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,matrix_11_0_lo_3,
    matrix_22_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_22_0 = ~(|_matrix_22_0_T_9); // @[BitUtils.scala 222:50]
  wire [4:0] matrix_23_0_lo_lo_3 = {request_5,request_4,request_3,request_2,request_1}; // @[Cat.scala 31:58]
  wire [10:0] matrix_23_0_lo_3 = {request_11,request_10,request_9,request_8,request_7,request_6,matrix_23_0_lo_lo_3}; // @[Cat.scala 31:58]
  wire [22:0] _matrix_23_0_T_9 = {request_23,request_22,request_21,request_20,request_19,request_18,matrix_12_0_lo_3,
    matrix_23_0_lo_3}; // @[Cat.scala 31:58]
  wire  matrix_3_23_0 = ~(|_matrix_23_0_T_9); // @[BitUtils.scala 222:50]
  wire  moreThan_0_1 = request_0 | (request_1 | (request_2 | (request_3 | (request_4 | (request_5 | (request_6 | (
    request_7 | (request_8 | (request_9 | (request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (
    request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 |
    request_23)))))))))))))))))))))); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1271 = request_17 & (request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23
    ))))) | (request_18 & (request_19 | (request_20 | (request_21 | (request_22 | request_23)))) | (request_19 & (
    request_20 | (request_21 | (request_22 | request_23))) | (request_20 & (request_21 | (request_22 | request_23)) | (
    request_21 & (request_22 | request_23) | request_22 & request_23)))); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1274 = request_14 & (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (
    request_20 | (request_21 | (request_22 | request_23)))))))) | (request_15 & (request_16 | (request_17 | (request_18
     | (request_19 | (request_20 | (request_21 | (request_22 | request_23))))))) | (request_16 & (request_17 | (
    request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))) | _moreThan_T_1271)); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1276 = request_12 & (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (
    request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))))))) | (request_13 & (
    request_14 | (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (
    request_22 | request_23))))))))) | _moreThan_T_1274); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1278 = request_10 & (request_11 | (request_12 | (request_13 | (request_14 | (request_15 | (
    request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))))))
    ))) | (request_11 & (request_12 | (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (request_18
     | (request_19 | (request_20 | (request_21 | (request_22 | request_23))))))))))) | _moreThan_T_1276); // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1279 = request_9 & (request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (request_15
     | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))
    )))))))) | _moreThan_T_1278; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1280 = request_8 & (request_9 | (request_10 | (request_11 | (request_12 | (request_13 | (request_14
     | (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 |
    request_23)))))))))))))) | _moreThan_T_1279; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1281 = request_7 & (request_8 | (request_9 | (request_10 | (request_11 | (request_12 | (request_13
     | (request_14 | (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (
    request_22 | request_23))))))))))))))) | _moreThan_T_1280; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1282 = request_6 & (request_7 | (request_8 | (request_9 | (request_10 | (request_11 | (request_12 |
    (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (
    request_21 | (request_22 | request_23)))))))))))))))) | _moreThan_T_1281; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1283 = request_5 & (request_6 | (request_7 | (request_8 | (request_9 | (request_10 | (request_11 | (
    request_12 | (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (
    request_20 | (request_21 | (request_22 | request_23))))))))))))))))) | _moreThan_T_1282; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1284 = request_4 & (request_5 | (request_6 | (request_7 | (request_8 | (request_9 | (request_10 | (
    request_11 | (request_12 | (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (request_18 | (
    request_19 | (request_20 | (request_21 | (request_22 | request_23)))))))))))))))))) | _moreThan_T_1283; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1285 = request_3 & (request_4 | (request_5 | (request_6 | (request_7 | (request_8 | (request_9 | (
    request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (request_15 | (request_16 | (request_17 | (
    request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23))))))))))))))))))) |
    _moreThan_T_1284; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1286 = request_2 & (request_3 | (request_4 | (request_5 | (request_6 | (request_7 | (request_8 | (
    request_9 | (request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (request_15 | (request_16 | (
    request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))))))))))))))))) |
    _moreThan_T_1285; // @[BitUtils.scala 199:49]
  wire  _moreThan_T_1287 = request_1 & (request_2 | (request_3 | (request_4 | (request_5 | (request_6 | (request_7 | (
    request_8 | (request_9 | (request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (request_15 | (
    request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 | request_23)))))))))
    )))))))))))) | _moreThan_T_1286; // @[BitUtils.scala 199:49]
  wire  moreThan_1_1 = request_0 & (request_1 | (request_2 | (request_3 | (request_4 | (request_5 | (request_6 | (
    request_7 | (request_8 | (request_9 | (request_10 | (request_11 | (request_12 | (request_13 | (request_14 | (
    request_15 | (request_16 | (request_17 | (request_18 | (request_19 | (request_20 | (request_21 | (request_22 |
    request_23)))))))))))))))))))))) | _moreThan_T_1287; // @[BitUtils.scala 199:49]
  wire  sel_2_1 = request_1 & matrix_2_1_0; // @[BitUtils.scala 239:62]
  wire  sel_2_2 = request_2 & matrix_2_2_0; // @[BitUtils.scala 239:62]
  wire  sel_2_3 = request_3 & matrix_2_3_0; // @[BitUtils.scala 239:62]
  wire  sel_2_4 = request_4 & matrix_2_4_0; // @[BitUtils.scala 239:62]
  wire  sel_2_5 = request_5 & matrix_2_5_0; // @[BitUtils.scala 239:62]
  wire  sel_2_6 = request_6 & matrix_2_6_0; // @[BitUtils.scala 239:62]
  wire  sel_2_7 = request_7 & matrix_2_7_0; // @[BitUtils.scala 239:62]
  wire  sel_2_8 = request_8 & matrix_2_8_0; // @[BitUtils.scala 239:62]
  wire  sel_2_9 = request_9 & matrix_2_9_0; // @[BitUtils.scala 239:62]
  wire  sel_2_10 = request_10 & matrix_2_10_0; // @[BitUtils.scala 239:62]
  wire  sel_2_11 = request_11 & matrix_2_11_0; // @[BitUtils.scala 239:62]
  wire  sel_2_12 = request_12 & matrix_2_12_0; // @[BitUtils.scala 239:62]
  wire  sel_2_13 = request_13 & matrix_2_13_0; // @[BitUtils.scala 239:62]
  wire  sel_2_14 = request_14 & matrix_2_14_0; // @[BitUtils.scala 239:62]
  wire  sel_2_15 = request_15 & matrix_2_15_0; // @[BitUtils.scala 239:62]
  wire  sel_2_16 = request_16 & matrix_2_16_0; // @[BitUtils.scala 239:62]
  wire  sel_2_17 = request_17 & matrix_2_17_0; // @[BitUtils.scala 239:62]
  wire  sel_2_18 = request_18 & matrix_2_18_0; // @[BitUtils.scala 239:62]
  wire  sel_2_19 = request_19 & matrix_2_19_0; // @[BitUtils.scala 239:62]
  wire  sel_2_20 = request_20 & matrix_2_20_0; // @[BitUtils.scala 239:62]
  wire  sel_2_21 = request_21 & matrix_2_21_0; // @[BitUtils.scala 239:62]
  wire  sel_2_22 = request_22 & matrix_2_22_0; // @[BitUtils.scala 239:62]
  wire  sel_2_23 = request_23 & matrix_2_23_0; // @[BitUtils.scala 239:62]
  wire [5:0] io_grant_0_bits_lo_lo = {sel_2_5,sel_2_4,sel_2_3,sel_2_2,sel_2_1,request_0}; // @[SelectPolicy.scala 56:32]
  wire [11:0] io_grant_0_bits_lo = {sel_2_11,sel_2_10,sel_2_9,sel_2_8,sel_2_7,sel_2_6,io_grant_0_bits_lo_lo}; // @[SelectPolicy.scala 56:32]
  wire [5:0] io_grant_0_bits_hi_lo = {sel_2_17,sel_2_16,sel_2_15,sel_2_14,sel_2_13,sel_2_12}; // @[SelectPolicy.scala 56:32]
  wire [11:0] io_grant_0_bits_hi = {sel_2_23,sel_2_22,sel_2_21,sel_2_20,sel_2_19,sel_2_18,io_grant_0_bits_hi_lo}; // @[SelectPolicy.scala 56:32]
  wire  sel_3_1 = request_22 & matrix_3_1_0; // @[BitUtils.scala 239:62]
  wire  sel_3_2 = request_21 & matrix_3_2_0; // @[BitUtils.scala 239:62]
  wire  sel_3_3 = request_20 & matrix_3_3_0; // @[BitUtils.scala 239:62]
  wire  sel_3_4 = request_19 & matrix_3_4_0; // @[BitUtils.scala 239:62]
  wire  sel_3_5 = request_18 & matrix_3_5_0; // @[BitUtils.scala 239:62]
  wire  sel_3_6 = request_17 & matrix_3_6_0; // @[BitUtils.scala 239:62]
  wire  sel_3_7 = request_16 & matrix_3_7_0; // @[BitUtils.scala 239:62]
  wire  sel_3_8 = request_15 & matrix_3_8_0; // @[BitUtils.scala 239:62]
  wire  sel_3_9 = request_14 & matrix_3_9_0; // @[BitUtils.scala 239:62]
  wire  sel_3_10 = request_13 & matrix_3_10_0; // @[BitUtils.scala 239:62]
  wire  sel_3_11 = request_12 & matrix_3_11_0; // @[BitUtils.scala 239:62]
  wire  sel_3_12 = request_11 & matrix_3_12_0; // @[BitUtils.scala 239:62]
  wire  sel_3_13 = request_10 & matrix_3_13_0; // @[BitUtils.scala 239:62]
  wire  sel_3_14 = request_9 & matrix_3_14_0; // @[BitUtils.scala 239:62]
  wire  sel_3_15 = request_8 & matrix_3_15_0; // @[BitUtils.scala 239:62]
  wire  sel_3_16 = request_7 & matrix_3_16_0; // @[BitUtils.scala 239:62]
  wire  sel_3_17 = request_6 & matrix_3_17_0; // @[BitUtils.scala 239:62]
  wire  sel_3_18 = request_5 & matrix_3_18_0; // @[BitUtils.scala 239:62]
  wire  sel_3_19 = request_4 & matrix_3_19_0; // @[BitUtils.scala 239:62]
  wire  sel_3_20 = request_3 & matrix_3_20_0; // @[BitUtils.scala 239:62]
  wire  sel_3_21 = request_2 & matrix_3_21_0; // @[BitUtils.scala 239:62]
  wire  sel_3_22 = request_1 & matrix_3_22_0; // @[BitUtils.scala 239:62]
  wire  sel_3_23 = request_0 & matrix_3_23_0; // @[BitUtils.scala 239:62]
  wire [5:0] io_grant_1_bits_lo_lo = {sel_3_18,sel_3_19,sel_3_20,sel_3_21,sel_3_22,sel_3_23}; // @[SelectPolicy.scala 56:32]
  wire [11:0] io_grant_1_bits_lo = {sel_3_12,sel_3_13,sel_3_14,sel_3_15,sel_3_16,sel_3_17,io_grant_1_bits_lo_lo}; // @[SelectPolicy.scala 56:32]
  wire [5:0] io_grant_1_bits_hi_lo = {sel_3_6,sel_3_7,sel_3_8,sel_3_9,sel_3_10,sel_3_11}; // @[SelectPolicy.scala 56:32]
  wire [11:0] io_grant_1_bits_hi = {request_23,sel_3_1,sel_3_2,sel_3_3,sel_3_4,sel_3_5,io_grant_1_bits_hi_lo}; // @[SelectPolicy.scala 56:32]
  assign io_allocate_0_valid = emptyVec_0 | (emptyVec_1 | (emptyVec_2 | (emptyVec_3 | (emptyVec_4 | (emptyVec_5 | (
    emptyVec_6 | (emptyVec_7 | (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (
    emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21
     | (emptyVec_22 | emptyVec_23)))))))))))))))))))))); // @[BitUtils.scala 199:49]
  assign io_allocate_0_bits = {io_allocate_0_bits_hi,io_allocate_0_bits_lo}; // @[SelectPolicy.scala 43:35]
  assign io_allocate_1_valid = emptyVec_0 & (emptyVec_1 | (emptyVec_2 | (emptyVec_3 | (emptyVec_4 | (emptyVec_5 | (
    emptyVec_6 | (emptyVec_7 | (emptyVec_8 | (emptyVec_9 | (emptyVec_10 | (emptyVec_11 | (emptyVec_12 | (emptyVec_13 | (
    emptyVec_14 | (emptyVec_15 | (emptyVec_16 | (emptyVec_17 | (emptyVec_18 | (emptyVec_19 | (emptyVec_20 | (emptyVec_21
     | (emptyVec_22 | emptyVec_23)))))))))))))))))))))) | _moreThan_T_643; // @[BitUtils.scala 199:49]
  assign io_allocate_1_bits = {io_allocate_1_bits_hi,io_allocate_1_bits_lo}; // @[SelectPolicy.scala 43:35]
  assign io_grant_0_valid = balance2_3 ? moreThan_1_1 : moreThan_0_1; // @[BitUtils.scala 260:12]
  assign io_grant_0_bits = {io_grant_0_bits_hi,io_grant_0_bits_lo}; // @[SelectPolicy.scala 56:32]
  assign io_grant_1_valid = balance2_3 ? moreThan_0_1 : moreThan_1_1; // @[BitUtils.scala 264:12]
  assign io_grant_1_bits = {io_grant_1_bits_hi,io_grant_1_bits_lo}; // @[SelectPolicy.scala 56:32]
  always @(posedge clock) begin
    if (reset) begin // @[BitUtils.scala 205:35]
      balance2_3 <= 1'h0; // @[BitUtils.scala 205:35]
    end else begin
      balance2_3 <= ~balance2_3; // @[BitUtils.scala 206:12]
    end
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  balance2_3 = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
