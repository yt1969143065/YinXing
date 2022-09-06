module FastArbiter_4(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [20:0] io_in_0_bits_tag,
  input  [7:0]  io_in_0_bits_set,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [3:0]  io_in_0_bits_source,
  input  [2:0]  io_in_0_bits_bufIdx,
  input  [2:0]  io_in_0_bits_size,
  input         io_in_0_bits_putData,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [20:0] io_in_1_bits_tag,
  input  [7:0]  io_in_1_bits_set,
  input  [5:0]  io_in_1_bits_off,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [3:0]  io_in_1_bits_source,
  input  [2:0]  io_in_1_bits_bufIdx,
  input  [2:0]  io_in_1_bits_size,
  input         io_in_1_bits_putData,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [20:0] io_in_2_bits_tag,
  input  [7:0]  io_in_2_bits_set,
  input  [5:0]  io_in_2_bits_off,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [3:0]  io_in_2_bits_source,
  input  [2:0]  io_in_2_bits_bufIdx,
  input  [2:0]  io_in_2_bits_size,
  input         io_in_2_bits_putData,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [20:0] io_in_3_bits_tag,
  input  [7:0]  io_in_3_bits_set,
  input  [5:0]  io_in_3_bits_off,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [3:0]  io_in_3_bits_source,
  input  [2:0]  io_in_3_bits_bufIdx,
  input  [2:0]  io_in_3_bits_size,
  input         io_in_3_bits_putData,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [20:0] io_in_4_bits_tag,
  input  [7:0]  io_in_4_bits_set,
  input  [5:0]  io_in_4_bits_off,
  input  [2:0]  io_in_4_bits_opcode,
  input  [2:0]  io_in_4_bits_param,
  input  [3:0]  io_in_4_bits_source,
  input  [2:0]  io_in_4_bits_bufIdx,
  input  [2:0]  io_in_4_bits_size,
  input         io_in_4_bits_putData,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [20:0] io_in_5_bits_tag,
  input  [7:0]  io_in_5_bits_set,
  input  [5:0]  io_in_5_bits_off,
  input  [2:0]  io_in_5_bits_opcode,
  input  [2:0]  io_in_5_bits_param,
  input  [3:0]  io_in_5_bits_source,
  input  [2:0]  io_in_5_bits_bufIdx,
  input  [2:0]  io_in_5_bits_size,
  input         io_in_5_bits_putData,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [20:0] io_in_6_bits_tag,
  input  [7:0]  io_in_6_bits_set,
  input  [5:0]  io_in_6_bits_off,
  input  [2:0]  io_in_6_bits_opcode,
  input  [2:0]  io_in_6_bits_param,
  input  [3:0]  io_in_6_bits_source,
  input  [2:0]  io_in_6_bits_bufIdx,
  input  [2:0]  io_in_6_bits_size,
  input         io_in_6_bits_putData,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [20:0] io_in_7_bits_tag,
  input  [7:0]  io_in_7_bits_set,
  input  [5:0]  io_in_7_bits_off,
  input  [2:0]  io_in_7_bits_opcode,
  input  [2:0]  io_in_7_bits_param,
  input  [3:0]  io_in_7_bits_source,
  input  [2:0]  io_in_7_bits_bufIdx,
  input  [2:0]  io_in_7_bits_size,
  input         io_in_7_bits_putData,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [20:0] io_in_8_bits_tag,
  input  [7:0]  io_in_8_bits_set,
  input  [5:0]  io_in_8_bits_off,
  input  [2:0]  io_in_8_bits_opcode,
  input  [2:0]  io_in_8_bits_param,
  input  [3:0]  io_in_8_bits_source,
  input  [2:0]  io_in_8_bits_bufIdx,
  input  [2:0]  io_in_8_bits_size,
  input         io_in_8_bits_putData,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [20:0] io_in_9_bits_tag,
  input  [7:0]  io_in_9_bits_set,
  input  [5:0]  io_in_9_bits_off,
  input  [2:0]  io_in_9_bits_opcode,
  input  [2:0]  io_in_9_bits_param,
  input  [3:0]  io_in_9_bits_source,
  input  [2:0]  io_in_9_bits_bufIdx,
  input  [2:0]  io_in_9_bits_size,
  input         io_in_9_bits_putData,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [20:0] io_in_10_bits_tag,
  input  [7:0]  io_in_10_bits_set,
  input  [5:0]  io_in_10_bits_off,
  input  [2:0]  io_in_10_bits_opcode,
  input  [2:0]  io_in_10_bits_param,
  input  [3:0]  io_in_10_bits_source,
  input  [2:0]  io_in_10_bits_bufIdx,
  input  [2:0]  io_in_10_bits_size,
  input         io_in_10_bits_putData,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [20:0] io_in_11_bits_tag,
  input  [7:0]  io_in_11_bits_set,
  input  [5:0]  io_in_11_bits_off,
  input  [2:0]  io_in_11_bits_opcode,
  input  [2:0]  io_in_11_bits_param,
  input  [3:0]  io_in_11_bits_source,
  input  [2:0]  io_in_11_bits_bufIdx,
  input  [2:0]  io_in_11_bits_size,
  input         io_in_11_bits_putData,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [20:0] io_in_12_bits_tag,
  input  [7:0]  io_in_12_bits_set,
  input  [5:0]  io_in_12_bits_off,
  input  [2:0]  io_in_12_bits_opcode,
  input  [2:0]  io_in_12_bits_param,
  input  [3:0]  io_in_12_bits_source,
  input  [2:0]  io_in_12_bits_bufIdx,
  input  [2:0]  io_in_12_bits_size,
  input         io_in_12_bits_putData,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [20:0] io_in_13_bits_tag,
  input  [7:0]  io_in_13_bits_set,
  input  [5:0]  io_in_13_bits_off,
  input  [2:0]  io_in_13_bits_opcode,
  input  [2:0]  io_in_13_bits_param,
  input  [3:0]  io_in_13_bits_source,
  input  [2:0]  io_in_13_bits_bufIdx,
  input  [2:0]  io_in_13_bits_size,
  input         io_in_13_bits_putData,
  input         io_out_ready,
  output        io_out_valid,
  output [20:0] io_out_bits_tag,
  output [7:0]  io_out_bits_set,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [3:0]  io_out_bits_source,
  output [2:0]  io_out_bits_bufIdx,
  output [2:0]  io_out_bits_size,
  output        io_out_bits_putData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] valids_lo = {io_in_6_valid,io_in_5_valid,io_in_4_valid,io_in_3_valid,io_in_2_valid,io_in_1_valid,
    io_in_0_valid}; // @[FastArbiter.scala 18:50]
  wire [13:0] valids = {io_in_13_valid,io_in_12_valid,io_in_11_valid,io_in_10_valid,io_in_9_valid,io_in_8_valid,
    io_in_7_valid,valids_lo}; // @[FastArbiter.scala 18:50]
  reg [13:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [13:0] pendingMask; // @[Reg.scala 28:20]
  wire [13:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 33:47]
  wire [1:0] rrSelOH_hi_hi_hi_4 = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [3:0] rrSelOH_hi_hi_8 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_hi_10 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_9 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12]}; // @[Cat.scala 31:58]
  wire [12:0] _rrSelOH_T_62 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_9}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_65 = _rrSelOH_T[13] & ~(|_rrSelOH_T_62); // @[FastArbiter.scala 13:24]
  wire [2:0] rrSelOH_hi_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_hi_9 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_8 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11]}; // @[Cat.scala 31:58]
  wire [11:0] _rrSelOH_T_58 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_8}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_61 = _rrSelOH_T[12] & ~(|_rrSelOH_T_58); // @[FastArbiter.scala 13:24]
  wire [4:0] rrSelOH_lo_7 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10]}; // @[Cat.scala 31:58]
  wire [10:0] _rrSelOH_T_54 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_7}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_57 = _rrSelOH_T[11] & ~(|_rrSelOH_T_54); // @[FastArbiter.scala 13:24]
  wire [4:0] rrSelOH_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4]}; // @[Cat.scala 31:58]
  wire [9:0] _rrSelOH_T_50 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_53 = _rrSelOH_T[10] & ~(|_rrSelOH_T_50); // @[FastArbiter.scala 13:24]
  wire [8:0] _rrSelOH_T_46 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_49 = _rrSelOH_T[9] & ~(|_rrSelOH_T_46); // @[FastArbiter.scala 13:24]
  wire [7:0] _rrSelOH_T_42 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_45 = _rrSelOH_T[8] & ~(|_rrSelOH_T_42); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_41 = _rrSelOH_T[7] & ~(|rrSelOH_hi_10); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_37 = _rrSelOH_T[6] & ~(|rrSelOH_hi_9); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_33 = _rrSelOH_T[5] & ~(|rrSelOH_hi_7); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_29 = _rrSelOH_T[4] & ~(|rrSelOH_hi_hi_8); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_25 = _rrSelOH_T[3] & ~(|rrSelOH_hi_hi_7); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_21 = _rrSelOH_T[2] & ~(|rrSelOH_hi_hi_hi_4); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_17 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 13:24]
  wire [6:0] rrSelOH_lo_10 = {_rrSelOH_T_37,_rrSelOH_T_33,_rrSelOH_T_29,_rrSelOH_T_25,_rrSelOH_T_21,_rrSelOH_T_17,
    _rrSelOH_T[0]}; // @[FastArbiter.scala 33:80]
  wire [13:0] rrSelOH = {_rrSelOH_T_65,_rrSelOH_T_61,_rrSelOH_T_57,_rrSelOH_T_53,_rrSelOH_T_49,_rrSelOH_T_45,
    _rrSelOH_T_41,rrSelOH_lo_10}; // @[FastArbiter.scala 33:80]
  wire [13:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 35:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 35:39]
  wire [1:0] firstOneOH_hi_hi_hi_4 = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [3:0] firstOneOH_hi_hi_8 = {valids[0],valids[1],valids[2],valids[3]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_hi_10 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_9 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12]}; // @[Cat.scala 31:58]
  wire [12:0] _firstOneOH_T_61 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_9}
    ; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_64 = valids[13] & ~(|_firstOneOH_T_61); // @[FastArbiter.scala 13:24]
  wire [2:0] firstOneOH_hi_hi_7 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_hi_9 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_8 = {valids[6],valids[7],valids[8],valids[9],valids[10],valids[11]}; // @[Cat.scala 31:58]
  wire [11:0] _firstOneOH_T_57 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_8}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_60 = valids[12] & ~(|_firstOneOH_T_57); // @[FastArbiter.scala 13:24]
  wire [4:0] firstOneOH_lo_7 = {valids[6],valids[7],valids[8],valids[9],valids[10]}; // @[Cat.scala 31:58]
  wire [10:0] _firstOneOH_T_53 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_7}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_56 = valids[11] & ~(|_firstOneOH_T_53); // @[FastArbiter.scala 13:24]
  wire [4:0] firstOneOH_hi_7 = {valids[0],valids[1],valids[2],valids[3],valids[4]}; // @[Cat.scala 31:58]
  wire [9:0] _firstOneOH_T_49 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8],valids[9]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_52 = valids[10] & ~(|_firstOneOH_T_49); // @[FastArbiter.scala 13:24]
  wire [8:0] _firstOneOH_T_45 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_48 = valids[9] & ~(|_firstOneOH_T_45); // @[FastArbiter.scala 13:24]
  wire [7:0] _firstOneOH_T_41 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_44 = valids[8] & ~(|_firstOneOH_T_41); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_40 = valids[7] & ~(|firstOneOH_hi_10); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_36 = valids[6] & ~(|firstOneOH_hi_9); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_32 = valids[5] & ~(|firstOneOH_hi_7); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_28 = valids[4] & ~(|firstOneOH_hi_hi_8); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_24 = valids[3] & ~(|firstOneOH_hi_hi_7); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_20 = valids[2] & ~(|firstOneOH_hi_hi_hi_4); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_16 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 13:24]
  wire [6:0] firstOneOH_lo_10 = {_firstOneOH_T_36,_firstOneOH_T_32,_firstOneOH_T_28,_firstOneOH_T_24,_firstOneOH_T_20,
    _firstOneOH_T_16,valids[0]}; // @[FastArbiter.scala 34:62]
  wire [13:0] firstOneOH = {_firstOneOH_T_64,_firstOneOH_T_60,_firstOneOH_T_56,_firstOneOH_T_52,_firstOneOH_T_48,
    _firstOneOH_T_44,_firstOneOH_T_40,firstOneOH_lo_10}; // @[FastArbiter.scala 34:62]
  wire [13:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 36:18]
  wire [13:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 21:15]
  wire [13:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 21:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_7 = |chosenOH[3:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_9 = |chosenOH[4:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_11 = |chosenOH[5:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_13 = |chosenOH[6:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_15 = |chosenOH[7:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_17 = |chosenOH[8:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_19 = |chosenOH[9:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_21 = |chosenOH[10:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_23 = |chosenOH[11:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_25 = |chosenOH[12:0]; // @[FastArbiter.scala 31:51]
  wire [6:0] rrGrantMask_lo = {_rrGrantMask_T_11,_rrGrantMask_T_9,_rrGrantMask_T_7,_rrGrantMask_T_5,_rrGrantMask_T_3,
    _rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 32:12]
  wire [13:0] _rrGrantMask_T_26 = {_rrGrantMask_T_25,_rrGrantMask_T_23,_rrGrantMask_T_21,_rrGrantMask_T_19,
    _rrGrantMask_T_17,_rrGrantMask_T_15,_rrGrantMask_T_13,rrGrantMask_lo}; // @[FastArbiter.scala 32:12]
  wire [2:0] _io_out_bits_T_68 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_69 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_70 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_71 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_72 = chosenOH[4] ? io_in_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_73 = chosenOH[5] ? io_in_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_74 = chosenOH[6] ? io_in_6_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_75 = chosenOH[7] ? io_in_7_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_76 = chosenOH[8] ? io_in_8_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_77 = chosenOH[9] ? io_in_9_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_78 = chosenOH[10] ? io_in_10_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_79 = chosenOH[11] ? io_in_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_80 = chosenOH[12] ? io_in_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_81 = chosenOH[13] ? io_in_13_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_82 = _io_out_bits_T_68 | _io_out_bits_T_69; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_83 = _io_out_bits_T_82 | _io_out_bits_T_70; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_84 = _io_out_bits_T_83 | _io_out_bits_T_71; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_85 = _io_out_bits_T_84 | _io_out_bits_T_72; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_86 = _io_out_bits_T_85 | _io_out_bits_T_73; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_87 = _io_out_bits_T_86 | _io_out_bits_T_74; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_88 = _io_out_bits_T_87 | _io_out_bits_T_75; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_89 = _io_out_bits_T_88 | _io_out_bits_T_76; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_90 = _io_out_bits_T_89 | _io_out_bits_T_77; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_91 = _io_out_bits_T_90 | _io_out_bits_T_78; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_92 = _io_out_bits_T_91 | _io_out_bits_T_79; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_93 = _io_out_bits_T_92 | _io_out_bits_T_80; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_95 = chosenOH[0] ? io_in_0_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_96 = chosenOH[1] ? io_in_1_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_97 = chosenOH[2] ? io_in_2_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_98 = chosenOH[3] ? io_in_3_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_99 = chosenOH[4] ? io_in_4_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_100 = chosenOH[5] ? io_in_5_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_101 = chosenOH[6] ? io_in_6_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_102 = chosenOH[7] ? io_in_7_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_103 = chosenOH[8] ? io_in_8_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_104 = chosenOH[9] ? io_in_9_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_105 = chosenOH[10] ? io_in_10_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_106 = chosenOH[11] ? io_in_11_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_107 = chosenOH[12] ? io_in_12_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_108 = chosenOH[13] ? io_in_13_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_109 = _io_out_bits_T_95 | _io_out_bits_T_96; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_110 = _io_out_bits_T_109 | _io_out_bits_T_97; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_111 = _io_out_bits_T_110 | _io_out_bits_T_98; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_112 = _io_out_bits_T_111 | _io_out_bits_T_99; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_113 = _io_out_bits_T_112 | _io_out_bits_T_100; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_114 = _io_out_bits_T_113 | _io_out_bits_T_101; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_115 = _io_out_bits_T_114 | _io_out_bits_T_102; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_116 = _io_out_bits_T_115 | _io_out_bits_T_103; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_117 = _io_out_bits_T_116 | _io_out_bits_T_104; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_118 = _io_out_bits_T_117 | _io_out_bits_T_105; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_119 = _io_out_bits_T_118 | _io_out_bits_T_106; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_120 = _io_out_bits_T_119 | _io_out_bits_T_107; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_122 = chosenOH[0] ? io_in_0_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_123 = chosenOH[1] ? io_in_1_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_124 = chosenOH[2] ? io_in_2_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_125 = chosenOH[3] ? io_in_3_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_126 = chosenOH[4] ? io_in_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_127 = chosenOH[5] ? io_in_5_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_128 = chosenOH[6] ? io_in_6_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_129 = chosenOH[7] ? io_in_7_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_130 = chosenOH[8] ? io_in_8_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_131 = chosenOH[9] ? io_in_9_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_132 = chosenOH[10] ? io_in_10_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_133 = chosenOH[11] ? io_in_11_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_134 = chosenOH[12] ? io_in_12_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_135 = chosenOH[13] ? io_in_13_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_136 = _io_out_bits_T_122 | _io_out_bits_T_123; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_137 = _io_out_bits_T_136 | _io_out_bits_T_124; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_138 = _io_out_bits_T_137 | _io_out_bits_T_125; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_139 = _io_out_bits_T_138 | _io_out_bits_T_126; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_140 = _io_out_bits_T_139 | _io_out_bits_T_127; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_141 = _io_out_bits_T_140 | _io_out_bits_T_128; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_142 = _io_out_bits_T_141 | _io_out_bits_T_129; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_143 = _io_out_bits_T_142 | _io_out_bits_T_130; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_144 = _io_out_bits_T_143 | _io_out_bits_T_131; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_145 = _io_out_bits_T_144 | _io_out_bits_T_132; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_146 = _io_out_bits_T_145 | _io_out_bits_T_133; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_147 = _io_out_bits_T_146 | _io_out_bits_T_134; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_149 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_150 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_151 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_152 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_153 = chosenOH[4] ? io_in_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_154 = chosenOH[5] ? io_in_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_155 = chosenOH[6] ? io_in_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_156 = chosenOH[7] ? io_in_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_157 = chosenOH[8] ? io_in_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_158 = chosenOH[9] ? io_in_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_159 = chosenOH[10] ? io_in_10_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_160 = chosenOH[11] ? io_in_11_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_161 = chosenOH[12] ? io_in_12_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_162 = chosenOH[13] ? io_in_13_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_163 = _io_out_bits_T_149 | _io_out_bits_T_150; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_164 = _io_out_bits_T_163 | _io_out_bits_T_151; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_165 = _io_out_bits_T_164 | _io_out_bits_T_152; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_166 = _io_out_bits_T_165 | _io_out_bits_T_153; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_167 = _io_out_bits_T_166 | _io_out_bits_T_154; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_168 = _io_out_bits_T_167 | _io_out_bits_T_155; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_169 = _io_out_bits_T_168 | _io_out_bits_T_156; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_170 = _io_out_bits_T_169 | _io_out_bits_T_157; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_171 = _io_out_bits_T_170 | _io_out_bits_T_158; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_172 = _io_out_bits_T_171 | _io_out_bits_T_159; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_173 = _io_out_bits_T_172 | _io_out_bits_T_160; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_174 = _io_out_bits_T_173 | _io_out_bits_T_161; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_176 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_177 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_178 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_179 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_180 = chosenOH[4] ? io_in_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_181 = chosenOH[5] ? io_in_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_182 = chosenOH[6] ? io_in_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_183 = chosenOH[7] ? io_in_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_184 = chosenOH[8] ? io_in_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_185 = chosenOH[9] ? io_in_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_186 = chosenOH[10] ? io_in_10_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_187 = chosenOH[11] ? io_in_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_188 = chosenOH[12] ? io_in_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_189 = chosenOH[13] ? io_in_13_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_190 = _io_out_bits_T_176 | _io_out_bits_T_177; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_191 = _io_out_bits_T_190 | _io_out_bits_T_178; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_192 = _io_out_bits_T_191 | _io_out_bits_T_179; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_193 = _io_out_bits_T_192 | _io_out_bits_T_180; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_194 = _io_out_bits_T_193 | _io_out_bits_T_181; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_195 = _io_out_bits_T_194 | _io_out_bits_T_182; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_196 = _io_out_bits_T_195 | _io_out_bits_T_183; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_197 = _io_out_bits_T_196 | _io_out_bits_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_198 = _io_out_bits_T_197 | _io_out_bits_T_185; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_199 = _io_out_bits_T_198 | _io_out_bits_T_186; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_200 = _io_out_bits_T_199 | _io_out_bits_T_187; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_201 = _io_out_bits_T_200 | _io_out_bits_T_188; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_203 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_204 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_205 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_206 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_207 = chosenOH[4] ? io_in_4_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_208 = chosenOH[5] ? io_in_5_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_209 = chosenOH[6] ? io_in_6_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_210 = chosenOH[7] ? io_in_7_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_211 = chosenOH[8] ? io_in_8_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_212 = chosenOH[9] ? io_in_9_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_213 = chosenOH[10] ? io_in_10_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_214 = chosenOH[11] ? io_in_11_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_215 = chosenOH[12] ? io_in_12_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_216 = chosenOH[13] ? io_in_13_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_217 = _io_out_bits_T_203 | _io_out_bits_T_204; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_218 = _io_out_bits_T_217 | _io_out_bits_T_205; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_219 = _io_out_bits_T_218 | _io_out_bits_T_206; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_220 = _io_out_bits_T_219 | _io_out_bits_T_207; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_221 = _io_out_bits_T_220 | _io_out_bits_T_208; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_222 = _io_out_bits_T_221 | _io_out_bits_T_209; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_223 = _io_out_bits_T_222 | _io_out_bits_T_210; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_224 = _io_out_bits_T_223 | _io_out_bits_T_211; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_225 = _io_out_bits_T_224 | _io_out_bits_T_212; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_226 = _io_out_bits_T_225 | _io_out_bits_T_213; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_227 = _io_out_bits_T_226 | _io_out_bits_T_214; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_228 = _io_out_bits_T_227 | _io_out_bits_T_215; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_230 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_231 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_232 = chosenOH[2] ? io_in_2_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_233 = chosenOH[3] ? io_in_3_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_234 = chosenOH[4] ? io_in_4_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_235 = chosenOH[5] ? io_in_5_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_236 = chosenOH[6] ? io_in_6_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_237 = chosenOH[7] ? io_in_7_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_238 = chosenOH[8] ? io_in_8_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_239 = chosenOH[9] ? io_in_9_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_240 = chosenOH[10] ? io_in_10_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_241 = chosenOH[11] ? io_in_11_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_242 = chosenOH[12] ? io_in_12_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_243 = chosenOH[13] ? io_in_13_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_244 = _io_out_bits_T_230 | _io_out_bits_T_231; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_245 = _io_out_bits_T_244 | _io_out_bits_T_232; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_246 = _io_out_bits_T_245 | _io_out_bits_T_233; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_247 = _io_out_bits_T_246 | _io_out_bits_T_234; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_248 = _io_out_bits_T_247 | _io_out_bits_T_235; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_249 = _io_out_bits_T_248 | _io_out_bits_T_236; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_250 = _io_out_bits_T_249 | _io_out_bits_T_237; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_251 = _io_out_bits_T_250 | _io_out_bits_T_238; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_252 = _io_out_bits_T_251 | _io_out_bits_T_239; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_253 = _io_out_bits_T_252 | _io_out_bits_T_240; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_254 = _io_out_bits_T_253 | _io_out_bits_T_241; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_255 = _io_out_bits_T_254 | _io_out_bits_T_242; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_257 = chosenOH[0] ? io_in_0_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_258 = chosenOH[1] ? io_in_1_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_259 = chosenOH[2] ? io_in_2_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_260 = chosenOH[3] ? io_in_3_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_261 = chosenOH[4] ? io_in_4_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_262 = chosenOH[5] ? io_in_5_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_263 = chosenOH[6] ? io_in_6_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_264 = chosenOH[7] ? io_in_7_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_265 = chosenOH[8] ? io_in_8_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_266 = chosenOH[9] ? io_in_9_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_267 = chosenOH[10] ? io_in_10_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_268 = chosenOH[11] ? io_in_11_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_269 = chosenOH[12] ? io_in_12_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_270 = chosenOH[13] ? io_in_13_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_271 = _io_out_bits_T_257 | _io_out_bits_T_258; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_272 = _io_out_bits_T_271 | _io_out_bits_T_259; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_273 = _io_out_bits_T_272 | _io_out_bits_T_260; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_274 = _io_out_bits_T_273 | _io_out_bits_T_261; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_275 = _io_out_bits_T_274 | _io_out_bits_T_262; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_276 = _io_out_bits_T_275 | _io_out_bits_T_263; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_277 = _io_out_bits_T_276 | _io_out_bits_T_264; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_278 = _io_out_bits_T_277 | _io_out_bits_T_265; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_279 = _io_out_bits_T_278 | _io_out_bits_T_266; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_280 = _io_out_bits_T_279 | _io_out_bits_T_267; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_281 = _io_out_bits_T_280 | _io_out_bits_T_268; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_282 = _io_out_bits_T_281 | _io_out_bits_T_269; // @[Mux.scala 27:73]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_2_ready = chosenOH[2] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_3_ready = chosenOH[3] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_4_ready = chosenOH[4] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_5_ready = chosenOH[5] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_6_ready = chosenOH[6] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_7_ready = chosenOH[7] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_8_ready = chosenOH[8] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_9_ready = chosenOH[9] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_10_ready = chosenOH[10] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_11_ready = chosenOH[11] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_12_ready = chosenOH[12] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_13_ready = chosenOH[13] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 38:29]
  assign io_out_bits_tag = _io_out_bits_T_282 | _io_out_bits_T_270; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_255 | _io_out_bits_T_243; // @[Mux.scala 27:73]
  assign io_out_bits_off = _io_out_bits_T_228 | _io_out_bits_T_216; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_201 | _io_out_bits_T_189; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_174 | _io_out_bits_T_162; // @[Mux.scala 27:73]
  assign io_out_bits_source = _io_out_bits_T_147 | _io_out_bits_T_135; // @[Mux.scala 27:73]
  assign io_out_bits_bufIdx = _io_out_bits_T_120 | _io_out_bits_T_108; // @[Mux.scala 27:73]
  assign io_out_bits_size = _io_out_bits_T_93 | _io_out_bits_T_81; // @[Mux.scala 27:73]
  assign io_out_bits_putData = chosenOH[0] & io_in_0_bits_putData | chosenOH[1] & io_in_1_bits_putData | chosenOH[2] &
    io_in_2_bits_putData | chosenOH[3] & io_in_3_bits_putData | chosenOH[4] & io_in_4_bits_putData | chosenOH[5] &
    io_in_5_bits_putData | chosenOH[6] & io_in_6_bits_putData | chosenOH[7] & io_in_7_bits_putData | chosenOH[8] &
    io_in_8_bits_putData | chosenOH[9] & io_in_9_bits_putData | chosenOH[10] & io_in_10_bits_putData | chosenOH[11] &
    io_in_11_bits_putData | chosenOH[12] & io_in_12_bits_putData | chosenOH[13] & io_in_13_bits_putData; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      rrGrantMask <= 14'h0; // @[Reg.scala 28:20]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 29:18]
      rrGrantMask <= _rrGrantMask_T_26; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      pendingMask <= 14'h0; // @[Reg.scala 28:20]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 29:18]
      pendingMask <= _pendingMask_T_1; // @[Reg.scala 29:22]
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
  rrGrantMask = _RAND_0[13:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[13:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
