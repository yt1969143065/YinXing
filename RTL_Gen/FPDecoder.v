module FPDecoder(
  input  [31:0] io_instr,
  output        io_fpCtrl_isAddSub,
  output        io_fpCtrl_typeTagIn,
  output        io_fpCtrl_typeTagOut,
  output        io_fpCtrl_fromInt,
  output        io_fpCtrl_wflags,
  output        io_fpCtrl_fpWen,
  output [1:0]  io_fpCtrl_fmaCmd,
  output        io_fpCtrl_div,
  output        io_fpCtrl_sqrt,
  output        io_fpCtrl_fcvt,
  output [1:0]  io_fpCtrl_typ,
  output [1:0]  io_fpCtrl_fmt,
  output        io_fpCtrl_ren3,
  output [2:0]  io_fpCtrl_rm
);
  wire [31:0] decoder_decoded_invInputs = ~io_instr; // @[pla.scala 78:21]
  wire  decoder_decoded_andMatrixInput_0 = io_instr[0]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_1 = io_instr[1]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_2 = decoder_decoded_invInputs[4]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_3 = decoder_decoded_invInputs[5]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_4 = io_instr[6]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_5 = decoder_decoded_invInputs[26]; // @[pla.scala 91:29]
  wire [5:0] _decoder_decoded_T = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2,decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,
    decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_1 = &_decoder_decoded_T; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_2_1 = decoder_decoded_invInputs[2]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_3_1 = decoder_decoded_invInputs[3]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_4_1 = io_instr[4]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_8 = decoder_decoded_invInputs[29]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_9 = decoder_decoded_invInputs[30]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_10 = decoder_decoded_invInputs[31]; // @[pla.scala 91:29]
  wire [4:0] decoder_decoded_lo_1 = {decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [10:0] _decoder_decoded_T_2 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_lo_1}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_3 = &_decoder_decoded_T_2; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_8_1 = decoder_decoded_invInputs[28]; // @[pla.scala 91:29]
  wire [5:0] decoder_decoded_lo_2 = {decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_9,
    decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [11:0] _decoder_decoded_T_4 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_lo_2}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_5 = &_decoder_decoded_T_4; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_5_3 = io_instr[25]; // @[pla.scala 90:45]
  wire [6:0] _decoder_decoded_T_6 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2,decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,
    decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_7 = &_decoder_decoded_T_6; // @[pla.scala 98:74]
  wire [5:0] decoder_decoded_lo_4 = {decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_5_3,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_9,
    decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [11:0] _decoder_decoded_T_8 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_lo_4}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_9 = &_decoder_decoded_T_8; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_8_3 = io_instr[27]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_9_3 = io_instr[28]; // @[pla.scala 90:45]
  wire [5:0] decoder_decoded_lo_5 = {decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8_3,
    decoder_decoded_andMatrixInput_9_3,decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_9,
    decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [12:0] _decoder_decoded_T_10 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_lo_5}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_11 = &_decoder_decoded_T_10; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_7_4 = decoder_decoded_invInputs[13]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_8_4 = decoder_decoded_invInputs[14]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_11_3 = io_instr[29]; // @[pla.scala 90:45]
  wire [6:0] decoder_decoded_lo_6 = {decoder_decoded_andMatrixInput_7_4,decoder_decoded_andMatrixInput_8_4,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [13:0] _decoder_decoded_T_12 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_lo_6}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_13 = &_decoder_decoded_T_12; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_7_5 = decoder_decoded_invInputs[12]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_10_5 = decoder_decoded_invInputs[27]; // @[pla.scala 91:29]
  wire [6:0] decoder_decoded_lo_7 = {decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_14 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_5,
    decoder_decoded_lo_7}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_15 = &_decoder_decoded_T_14; // @[pla.scala 98:74]
  wire [6:0] decoder_decoded_lo_8 = {decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_5_3,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,
    decoder_decoded_andMatrixInput_11_3,decoder_decoded_andMatrixInput_9}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_16 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_5,
    decoder_decoded_lo_8}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_17 = &_decoder_decoded_T_16; // @[pla.scala 98:74]
  wire [14:0] _decoder_decoded_T_18 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_lo_8}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_19 = &_decoder_decoded_T_18; // @[pla.scala 98:74]
  wire [6:0] decoder_decoded_lo_10 = {decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_5_3,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_20 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_lo_10}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_21 = &_decoder_decoded_T_20; // @[pla.scala 98:74]
  wire [6:0] decoder_decoded_lo_11 = {decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_8_3,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_22 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_lo_11}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_23 = &_decoder_decoded_T_22; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_7_10 = io_instr[20]; // @[pla.scala 90:45]
  wire  decoder_decoded_andMatrixInput_8_10 = decoder_decoded_invInputs[21]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_9_10 = decoder_decoded_invInputs[22]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_10_10 = decoder_decoded_invInputs[23]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_11_9 = decoder_decoded_invInputs[24]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_12_7 = decoder_decoded_invInputs[25]; // @[pla.scala 91:29]
  wire  decoder_decoded_andMatrixInput_17 = io_instr[30]; // @[pla.scala 90:45]
  wire [8:0] decoder_decoded_lo_12 = {decoder_decoded_andMatrixInput_9_10,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_12_7,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17}; // @[Cat.scala 31:58]
  wire [17:0] _decoder_decoded_T_24 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_10,
    decoder_decoded_andMatrixInput_8_10,decoder_decoded_lo_12}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_25 = &_decoder_decoded_T_24; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_hi_13 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_10,
    decoder_decoded_andMatrixInput_8_10,decoder_decoded_andMatrixInput_9_10}; // @[Cat.scala 31:58]
  wire [18:0] _decoder_decoded_T_26 = {decoder_decoded_hi_13,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_12_7,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_27 = &_decoder_decoded_T_26; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_7_12 = decoder_decoded_invInputs[20]; // @[pla.scala 91:29]
  wire [8:0] decoder_decoded_lo_14 = {decoder_decoded_andMatrixInput_9_10,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17}; // @[Cat.scala 31:58]
  wire [17:0] _decoder_decoded_T_28 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_12,
    decoder_decoded_andMatrixInput_8_10,decoder_decoded_lo_14}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_29 = &_decoder_decoded_T_28; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_hi_15 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_12,
    decoder_decoded_andMatrixInput_8_10,decoder_decoded_andMatrixInput_9_10}; // @[Cat.scala 31:58]
  wire [18:0] _decoder_decoded_T_30 = {decoder_decoded_hi_15,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_31 = &_decoder_decoded_T_30; // @[pla.scala 98:74]
  wire [8:0] decoder_decoded_lo_16 = {decoder_decoded_andMatrixInput_9_10,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8_3,
    decoder_decoded_andMatrixInput_9_3,decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_17,
    decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [17:0] _decoder_decoded_T_32 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_12,
    decoder_decoded_andMatrixInput_8_10,decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_33 = &_decoder_decoded_T_32; // @[pla.scala 98:74]
  wire [18:0] _decoder_decoded_T_34 = {decoder_decoded_hi_15,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_8_3,decoder_decoded_andMatrixInput_9_3,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_35 = &_decoder_decoded_T_34; // @[pla.scala 98:74]
  wire  decoder_decoded_andMatrixInput_14_11 = io_instr[31]; // @[pla.scala 90:45]
  wire [6:0] decoder_decoded_lo_18 = {decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_9,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_36 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_5,
    decoder_decoded_lo_18}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_37 = &_decoder_decoded_T_36; // @[pla.scala 98:74]
  wire [14:0] _decoder_decoded_T_38 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_lo_18}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_39 = &_decoder_decoded_T_38; // @[pla.scala 98:74]
  wire [6:0] decoder_decoded_lo_20 = {decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [14:0] _decoder_decoded_T_40 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_lo_20}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_41 = &_decoder_decoded_T_40; // @[pla.scala 98:74]
  wire [7:0] decoder_decoded_lo_21 = {decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,
    decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [15:0] _decoder_decoded_T_42 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_lo_21}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_43 = &_decoder_decoded_T_42; // @[pla.scala 98:74]
  wire [7:0] decoder_decoded_lo_22 = {decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,
    decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,
    decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [15:0] _decoder_decoded_T_44 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_lo_22}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_45 = &_decoder_decoded_T_44; // @[pla.scala 98:74]
  wire [7:0] decoder_decoded_lo_23 = {decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_9_3,
    decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [15:0] _decoder_decoded_T_46 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_lo_23}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_47 = &_decoder_decoded_T_46; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_lo_24 = {decoder_decoded_andMatrixInput_7_12,decoder_decoded_andMatrixInput_8_10,
    decoder_decoded_andMatrixInput_9_10,decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [9:0] decoder_decoded_hi_24 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_5,
    decoder_decoded_andMatrixInput_7_4,decoder_decoded_andMatrixInput_8_4}; // @[Cat.scala 31:58]
  wire [19:0] _decoder_decoded_T_48 = {decoder_decoded_hi_24,decoder_decoded_lo_24}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_49 = &_decoder_decoded_T_48; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_lo_25 = {decoder_decoded_andMatrixInput_8_10,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [9:0] decoder_decoded_hi_25 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_7_12}; // @[Cat.scala 31:58]
  wire [19:0] _decoder_decoded_T_50 = {decoder_decoded_hi_25,decoder_decoded_lo_25}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_51 = &_decoder_decoded_T_50; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_lo_26 = {decoder_decoded_andMatrixInput_8_10,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5_3,
    decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [4:0] decoder_decoded_hi_lo_25 = {decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_5,
    decoder_decoded_andMatrixInput_7_4,decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_7_12}; // @[Cat.scala 31:58]
  wire [20:0] _decoder_decoded_T_52 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_hi_lo_25,decoder_decoded_lo_26}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_53 = &_decoder_decoded_T_52; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_lo_27 = {decoder_decoded_andMatrixInput_9_10,decoder_decoded_andMatrixInput_10_10,
    decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5_3,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [4:0] decoder_decoded_hi_lo_26 = {decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_7_4,
    decoder_decoded_andMatrixInput_8_4,decoder_decoded_andMatrixInput_7_12,decoder_decoded_andMatrixInput_8_10}; // @[Cat.scala 31:58]
  wire [20:0] _decoder_decoded_T_54 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_hi_lo_26,decoder_decoded_lo_27}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_55 = &_decoder_decoded_T_54; // @[pla.scala 98:74]
  wire [9:0] decoder_decoded_lo_28 = {decoder_decoded_andMatrixInput_8_10,decoder_decoded_andMatrixInput_9_10,
    decoder_decoded_andMatrixInput_10_10,decoder_decoded_andMatrixInput_11_9,decoder_decoded_andMatrixInput_5,
    decoder_decoded_andMatrixInput_10_5,decoder_decoded_andMatrixInput_9_3,decoder_decoded_andMatrixInput_11_3,
    decoder_decoded_andMatrixInput_17,decoder_decoded_andMatrixInput_14_11}; // @[Cat.scala 31:58]
  wire [20:0] _decoder_decoded_T_56 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_hi_lo_25,decoder_decoded_lo_28}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_T_57 = &_decoder_decoded_T_56; // @[pla.scala 98:74]
  wire [2:0] _decoder_decoded_orMatrixOutputs_T = {_decoder_decoded_T_25,_decoder_decoded_T_29,_decoder_decoded_T_41}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_orMatrixOutputs_T_1 = |_decoder_decoded_orMatrixOutputs_T; // @[pla.scala 114:39]
  wire  _decoder_decoded_orMatrixOutputs_T_2 = |_decoder_decoded_T_33; // @[pla.scala 114:39]
  wire  _decoder_decoded_orMatrixOutputs_T_3 = |_decoder_decoded_T_11; // @[pla.scala 114:39]
  wire [1:0] decoder_decoded_orMatrixOutputs_lo_lo = {_decoder_decoded_T_47,_decoder_decoded_T_57}; // @[Cat.scala 31:58]
  wire [8:0] _decoder_decoded_orMatrixOutputs_T_4 = {_decoder_decoded_T_1,_decoder_decoded_T_3,_decoder_decoded_T_13,
    _decoder_decoded_T_15,_decoder_decoded_T_27,_decoder_decoded_T_31,_decoder_decoded_T_33,_decoder_decoded_T_47,
    _decoder_decoded_T_57}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_orMatrixOutputs_T_5 = |_decoder_decoded_orMatrixOutputs_T_4; // @[pla.scala 114:39]
  wire [8:0] _decoder_decoded_orMatrixOutputs_T_6 = {_decoder_decoded_T_1,_decoder_decoded_T_3,_decoder_decoded_T_23,
    _decoder_decoded_T_25,_decoder_decoded_T_29,_decoder_decoded_T_33,_decoder_decoded_T_37,_decoder_decoded_T_39,
    _decoder_decoded_T_41}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_orMatrixOutputs_T_7 = |_decoder_decoded_orMatrixOutputs_T_6; // @[pla.scala 114:39]
  wire  _decoder_decoded_orMatrixOutputs_T_9 = |decoder_decoded_orMatrixOutputs_lo_lo; // @[pla.scala 114:39]
  wire [5:0] decoder_decoded_orMatrixOutputs_lo_2 = {_decoder_decoded_T_37,_decoder_decoded_T_39,_decoder_decoded_T_43,
    _decoder_decoded_T_45,_decoder_decoded_T_51,_decoder_decoded_T_53}; // @[Cat.scala 31:58]
  wire [11:0] _decoder_decoded_orMatrixOutputs_T_10 = {_decoder_decoded_T_7,_decoder_decoded_T_9,_decoder_decoded_T_17,
    _decoder_decoded_T_21,_decoder_decoded_T_29,_decoder_decoded_T_35,decoder_decoded_orMatrixOutputs_lo_2}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_orMatrixOutputs_T_11 = |_decoder_decoded_orMatrixOutputs_T_10; // @[pla.scala 114:39]
  wire [4:0] decoder_decoded_orMatrixOutputs_lo_3 = {_decoder_decoded_T_35,_decoder_decoded_T_45,_decoder_decoded_T_47,
    _decoder_decoded_T_49,_decoder_decoded_T_55}; // @[Cat.scala 31:58]
  wire [10:0] _decoder_decoded_orMatrixOutputs_T_12 = {_decoder_decoded_T_7,_decoder_decoded_T_9,_decoder_decoded_T_17,
    _decoder_decoded_T_19,_decoder_decoded_T_21,_decoder_decoded_T_27,decoder_decoded_orMatrixOutputs_lo_3}; // @[Cat.scala 31:58]
  wire  _decoder_decoded_orMatrixOutputs_T_13 = |_decoder_decoded_orMatrixOutputs_T_12; // @[pla.scala 114:39]
  wire  _decoder_decoded_orMatrixOutputs_T_14 = |_decoder_decoded_T_5; // @[pla.scala 114:39]
  wire [8:0] decoder_decoded_orMatrixOutputs = {_decoder_decoded_orMatrixOutputs_T_14,
    _decoder_decoded_orMatrixOutputs_T_13,_decoder_decoded_orMatrixOutputs_T_11,_decoder_decoded_orMatrixOutputs_T_9,
    _decoder_decoded_orMatrixOutputs_T_7,_decoder_decoded_orMatrixOutputs_T_5,_decoder_decoded_orMatrixOutputs_T_3,
    _decoder_decoded_orMatrixOutputs_T_2,_decoder_decoded_orMatrixOutputs_T_1}; // @[Cat.scala 31:58]
  wire [8:0] decoder_decoded_invMatrixOutputs = {decoder_decoded_orMatrixOutputs[8],decoder_decoded_orMatrixOutputs[7],
    decoder_decoded_orMatrixOutputs[6],decoder_decoded_orMatrixOutputs[5],decoder_decoded_orMatrixOutputs[4],
    decoder_decoded_orMatrixOutputs[3],decoder_decoded_orMatrixOutputs[2],decoder_decoded_orMatrixOutputs[1],
    decoder_decoded_orMatrixOutputs[0]}; // @[Cat.scala 31:58]
  wire  decoded_andMatrixInput_2_1 = io_instr[2]; // @[pla.scala 90:45]
  wire [6:0] _decoded_T_2 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_2,decoder_decoded_andMatrixInput_3,
    decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _decoded_T_3 = &_decoded_T_2; // @[pla.scala 98:74]
  wire  decoded_andMatrixInput_2_2 = io_instr[3]; // @[pla.scala 90:45]
  wire [6:0] _decoded_T_4 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoded_andMatrixInput_2_2,decoder_decoded_andMatrixInput_2,decoder_decoded_andMatrixInput_3,
    decoder_decoded_andMatrixInput_4,decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _decoded_T_5 = &_decoded_T_4; // @[pla.scala 98:74]
  wire [5:0] decoded_lo_3 = {decoder_decoded_andMatrixInput_5,decoder_decoded_andMatrixInput_8_3,
    decoder_decoded_andMatrixInput_8_1,decoder_decoded_andMatrixInput_8,decoder_decoded_andMatrixInput_9,
    decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire [12:0] _decoded_T_6 = {decoder_decoded_andMatrixInput_0,decoder_decoded_andMatrixInput_1,
    decoder_decoded_andMatrixInput_2_1,decoder_decoded_andMatrixInput_3_1,decoder_decoded_andMatrixInput_4_1,
    decoder_decoded_andMatrixInput_3,decoder_decoded_andMatrixInput_4,decoded_lo_3}; // @[Cat.scala 31:58]
  wire  _decoded_T_7 = &_decoded_T_6; // @[pla.scala 98:74]
  wire  _decoded_orMatrixOutputs_T = |_decoder_decoded_T_1; // @[pla.scala 114:39]
  wire [1:0] _decoded_orMatrixOutputs_T_1 = {_decoded_T_3,_decoded_T_7}; // @[Cat.scala 31:58]
  wire  _decoded_orMatrixOutputs_T_2 = |_decoded_orMatrixOutputs_T_1; // @[pla.scala 114:39]
  wire  _decoded_orMatrixOutputs_T_3 = |_decoded_T_5; // @[pla.scala 114:39]
  wire [2:0] decoded_orMatrixOutputs = {_decoded_orMatrixOutputs_T_3,_decoded_orMatrixOutputs_T_2,
    _decoded_orMatrixOutputs_T}; // @[Cat.scala 31:58]
  wire [2:0] decoded_invMatrixOutputs = {decoded_orMatrixOutputs[2],decoded_orMatrixOutputs[1],decoded_orMatrixOutputs[0
    ]}; // @[Cat.scala 31:58]
  assign io_fpCtrl_isAddSub = decoder_decoded_invMatrixOutputs[8]; // @[Decode.scala 49:77]
  assign io_fpCtrl_typeTagIn = decoder_decoded_invMatrixOutputs[7]; // @[Decode.scala 49:77]
  assign io_fpCtrl_typeTagOut = decoder_decoded_invMatrixOutputs[6]; // @[Decode.scala 49:77]
  assign io_fpCtrl_fromInt = decoder_decoded_invMatrixOutputs[5]; // @[Decode.scala 49:77]
  assign io_fpCtrl_wflags = decoder_decoded_invMatrixOutputs[4]; // @[Decode.scala 49:77]
  assign io_fpCtrl_fpWen = decoder_decoded_invMatrixOutputs[3]; // @[Decode.scala 49:77]
  assign io_fpCtrl_fmaCmd = decoded_invMatrixOutputs[2:1]; // @[Decode.scala 49:77]
  assign io_fpCtrl_div = decoder_decoded_invMatrixOutputs[2]; // @[Decode.scala 49:77]
  assign io_fpCtrl_sqrt = decoder_decoded_invMatrixOutputs[1]; // @[Decode.scala 49:77]
  assign io_fpCtrl_fcvt = decoder_decoded_invMatrixOutputs[0]; // @[Decode.scala 49:77]
  assign io_fpCtrl_typ = io_instr[21:20]; // @[FPDecoder.scala 124:23]
  assign io_fpCtrl_fmt = io_instr[26:25]; // @[FPDecoder.scala 125:23]
  assign io_fpCtrl_ren3 = decoded_invMatrixOutputs[0]; // @[Decode.scala 49:77]
  assign io_fpCtrl_rm = io_instr[14:12]; // @[FPDecoder.scala 126:22]
endmodule
