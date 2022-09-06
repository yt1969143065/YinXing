module FastArbiter_35(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [5:0]  io_in_0_bits_sourceId,
  input  [11:0] io_in_0_bits_set,
  input  [2:0]  io_in_0_bits_channel,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [2:0]  io_in_0_bits_size,
  input  [1:0]  io_in_0_bits_way,
  input  [5:0]  io_in_0_bits_off,
  input         io_in_0_bits_useBypass,
  input  [2:0]  io_in_0_bits_bufIdx,
  input         io_in_0_bits_denied,
  input  [3:0]  io_in_0_bits_sinkId,
  input         io_in_0_bits_bypassPut,
  input         io_in_0_bits_dirty,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [5:0]  io_in_1_bits_sourceId,
  input  [11:0] io_in_1_bits_set,
  input  [2:0]  io_in_1_bits_channel,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [2:0]  io_in_1_bits_size,
  input  [1:0]  io_in_1_bits_way,
  input  [5:0]  io_in_1_bits_off,
  input         io_in_1_bits_useBypass,
  input  [2:0]  io_in_1_bits_bufIdx,
  input         io_in_1_bits_denied,
  input  [3:0]  io_in_1_bits_sinkId,
  input         io_in_1_bits_bypassPut,
  input         io_in_1_bits_dirty,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [5:0]  io_in_2_bits_sourceId,
  input  [11:0] io_in_2_bits_set,
  input  [2:0]  io_in_2_bits_channel,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [2:0]  io_in_2_bits_size,
  input  [1:0]  io_in_2_bits_way,
  input  [5:0]  io_in_2_bits_off,
  input         io_in_2_bits_useBypass,
  input  [2:0]  io_in_2_bits_bufIdx,
  input         io_in_2_bits_denied,
  input  [3:0]  io_in_2_bits_sinkId,
  input         io_in_2_bits_bypassPut,
  input         io_in_2_bits_dirty,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [5:0]  io_in_3_bits_sourceId,
  input  [11:0] io_in_3_bits_set,
  input  [2:0]  io_in_3_bits_channel,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [2:0]  io_in_3_bits_size,
  input  [1:0]  io_in_3_bits_way,
  input  [5:0]  io_in_3_bits_off,
  input         io_in_3_bits_useBypass,
  input  [2:0]  io_in_3_bits_bufIdx,
  input         io_in_3_bits_denied,
  input  [3:0]  io_in_3_bits_sinkId,
  input         io_in_3_bits_bypassPut,
  input         io_in_3_bits_dirty,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [5:0]  io_in_4_bits_sourceId,
  input  [11:0] io_in_4_bits_set,
  input  [2:0]  io_in_4_bits_channel,
  input  [2:0]  io_in_4_bits_opcode,
  input  [2:0]  io_in_4_bits_param,
  input  [2:0]  io_in_4_bits_size,
  input  [1:0]  io_in_4_bits_way,
  input  [5:0]  io_in_4_bits_off,
  input         io_in_4_bits_useBypass,
  input  [2:0]  io_in_4_bits_bufIdx,
  input         io_in_4_bits_denied,
  input  [3:0]  io_in_4_bits_sinkId,
  input         io_in_4_bits_bypassPut,
  input         io_in_4_bits_dirty,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [5:0]  io_in_5_bits_sourceId,
  input  [11:0] io_in_5_bits_set,
  input  [2:0]  io_in_5_bits_channel,
  input  [2:0]  io_in_5_bits_opcode,
  input  [2:0]  io_in_5_bits_param,
  input  [2:0]  io_in_5_bits_size,
  input  [1:0]  io_in_5_bits_way,
  input  [5:0]  io_in_5_bits_off,
  input         io_in_5_bits_useBypass,
  input  [2:0]  io_in_5_bits_bufIdx,
  input         io_in_5_bits_denied,
  input  [3:0]  io_in_5_bits_sinkId,
  input         io_in_5_bits_bypassPut,
  input         io_in_5_bits_dirty,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [5:0]  io_in_6_bits_sourceId,
  input  [11:0] io_in_6_bits_set,
  input  [2:0]  io_in_6_bits_channel,
  input  [2:0]  io_in_6_bits_opcode,
  input  [2:0]  io_in_6_bits_param,
  input  [2:0]  io_in_6_bits_size,
  input  [1:0]  io_in_6_bits_way,
  input  [5:0]  io_in_6_bits_off,
  input         io_in_6_bits_useBypass,
  input  [2:0]  io_in_6_bits_bufIdx,
  input         io_in_6_bits_denied,
  input  [3:0]  io_in_6_bits_sinkId,
  input         io_in_6_bits_bypassPut,
  input         io_in_6_bits_dirty,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [5:0]  io_in_7_bits_sourceId,
  input  [11:0] io_in_7_bits_set,
  input  [2:0]  io_in_7_bits_channel,
  input  [2:0]  io_in_7_bits_opcode,
  input  [2:0]  io_in_7_bits_param,
  input  [2:0]  io_in_7_bits_size,
  input  [1:0]  io_in_7_bits_way,
  input  [5:0]  io_in_7_bits_off,
  input         io_in_7_bits_useBypass,
  input  [2:0]  io_in_7_bits_bufIdx,
  input         io_in_7_bits_denied,
  input  [3:0]  io_in_7_bits_sinkId,
  input         io_in_7_bits_bypassPut,
  input         io_in_7_bits_dirty,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [5:0]  io_in_8_bits_sourceId,
  input  [11:0] io_in_8_bits_set,
  input  [2:0]  io_in_8_bits_channel,
  input  [2:0]  io_in_8_bits_opcode,
  input  [2:0]  io_in_8_bits_param,
  input  [2:0]  io_in_8_bits_size,
  input  [1:0]  io_in_8_bits_way,
  input  [5:0]  io_in_8_bits_off,
  input         io_in_8_bits_useBypass,
  input  [2:0]  io_in_8_bits_bufIdx,
  input         io_in_8_bits_denied,
  input  [3:0]  io_in_8_bits_sinkId,
  input         io_in_8_bits_bypassPut,
  input         io_in_8_bits_dirty,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [5:0]  io_in_9_bits_sourceId,
  input  [11:0] io_in_9_bits_set,
  input  [2:0]  io_in_9_bits_channel,
  input  [2:0]  io_in_9_bits_opcode,
  input  [2:0]  io_in_9_bits_param,
  input  [2:0]  io_in_9_bits_size,
  input  [1:0]  io_in_9_bits_way,
  input  [5:0]  io_in_9_bits_off,
  input         io_in_9_bits_useBypass,
  input  [2:0]  io_in_9_bits_bufIdx,
  input         io_in_9_bits_denied,
  input  [3:0]  io_in_9_bits_sinkId,
  input         io_in_9_bits_bypassPut,
  input         io_in_9_bits_dirty,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [5:0]  io_in_10_bits_sourceId,
  input  [11:0] io_in_10_bits_set,
  input  [2:0]  io_in_10_bits_channel,
  input  [2:0]  io_in_10_bits_opcode,
  input  [2:0]  io_in_10_bits_param,
  input  [2:0]  io_in_10_bits_size,
  input  [1:0]  io_in_10_bits_way,
  input  [5:0]  io_in_10_bits_off,
  input         io_in_10_bits_useBypass,
  input  [2:0]  io_in_10_bits_bufIdx,
  input         io_in_10_bits_denied,
  input  [3:0]  io_in_10_bits_sinkId,
  input         io_in_10_bits_bypassPut,
  input         io_in_10_bits_dirty,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [5:0]  io_in_11_bits_sourceId,
  input  [11:0] io_in_11_bits_set,
  input  [2:0]  io_in_11_bits_channel,
  input  [2:0]  io_in_11_bits_opcode,
  input  [2:0]  io_in_11_bits_param,
  input  [2:0]  io_in_11_bits_size,
  input  [1:0]  io_in_11_bits_way,
  input  [5:0]  io_in_11_bits_off,
  input         io_in_11_bits_useBypass,
  input  [2:0]  io_in_11_bits_bufIdx,
  input         io_in_11_bits_denied,
  input  [3:0]  io_in_11_bits_sinkId,
  input         io_in_11_bits_bypassPut,
  input         io_in_11_bits_dirty,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [5:0]  io_in_12_bits_sourceId,
  input  [11:0] io_in_12_bits_set,
  input  [2:0]  io_in_12_bits_channel,
  input  [2:0]  io_in_12_bits_opcode,
  input  [2:0]  io_in_12_bits_param,
  input  [2:0]  io_in_12_bits_size,
  input  [1:0]  io_in_12_bits_way,
  input  [5:0]  io_in_12_bits_off,
  input         io_in_12_bits_useBypass,
  input  [2:0]  io_in_12_bits_bufIdx,
  input         io_in_12_bits_denied,
  input  [3:0]  io_in_12_bits_sinkId,
  input         io_in_12_bits_bypassPut,
  input         io_in_12_bits_dirty,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [5:0]  io_in_13_bits_sourceId,
  input  [11:0] io_in_13_bits_set,
  input  [2:0]  io_in_13_bits_channel,
  input  [2:0]  io_in_13_bits_opcode,
  input  [2:0]  io_in_13_bits_param,
  input  [2:0]  io_in_13_bits_size,
  input  [1:0]  io_in_13_bits_way,
  input  [5:0]  io_in_13_bits_off,
  input         io_in_13_bits_useBypass,
  input  [2:0]  io_in_13_bits_bufIdx,
  input         io_in_13_bits_denied,
  input  [3:0]  io_in_13_bits_sinkId,
  input         io_in_13_bits_bypassPut,
  input         io_in_13_bits_dirty,
  input         io_out_ready,
  output        io_out_valid,
  output [5:0]  io_out_bits_sourceId,
  output [11:0] io_out_bits_set,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [1:0]  io_out_bits_way,
  output [5:0]  io_out_bits_off,
  output        io_out_bits_useBypass,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_denied,
  output [3:0]  io_out_bits_sinkId,
  output        io_out_bits_bypassPut,
  output        io_out_bits_dirty
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
  wire [3:0] _io_out_bits_T_68 = chosenOH[0] ? io_in_0_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_69 = chosenOH[1] ? io_in_1_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_70 = chosenOH[2] ? io_in_2_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_71 = chosenOH[3] ? io_in_3_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_72 = chosenOH[4] ? io_in_4_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_73 = chosenOH[5] ? io_in_5_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_74 = chosenOH[6] ? io_in_6_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_75 = chosenOH[7] ? io_in_7_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_76 = chosenOH[8] ? io_in_8_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_77 = chosenOH[9] ? io_in_9_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_78 = chosenOH[10] ? io_in_10_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_79 = chosenOH[11] ? io_in_11_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_80 = chosenOH[12] ? io_in_12_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_81 = chosenOH[13] ? io_in_13_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_82 = _io_out_bits_T_68 | _io_out_bits_T_69; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_83 = _io_out_bits_T_82 | _io_out_bits_T_70; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_84 = _io_out_bits_T_83 | _io_out_bits_T_71; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_85 = _io_out_bits_T_84 | _io_out_bits_T_72; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_86 = _io_out_bits_T_85 | _io_out_bits_T_73; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_87 = _io_out_bits_T_86 | _io_out_bits_T_74; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_88 = _io_out_bits_T_87 | _io_out_bits_T_75; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_89 = _io_out_bits_T_88 | _io_out_bits_T_76; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_90 = _io_out_bits_T_89 | _io_out_bits_T_77; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_91 = _io_out_bits_T_90 | _io_out_bits_T_78; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_92 = _io_out_bits_T_91 | _io_out_bits_T_79; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_93 = _io_out_bits_T_92 | _io_out_bits_T_80; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_122 = chosenOH[0] ? io_in_0_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_123 = chosenOH[1] ? io_in_1_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_124 = chosenOH[2] ? io_in_2_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_125 = chosenOH[3] ? io_in_3_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_126 = chosenOH[4] ? io_in_4_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_127 = chosenOH[5] ? io_in_5_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_128 = chosenOH[6] ? io_in_6_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_129 = chosenOH[7] ? io_in_7_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_130 = chosenOH[8] ? io_in_8_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_131 = chosenOH[9] ? io_in_9_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_132 = chosenOH[10] ? io_in_10_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_133 = chosenOH[11] ? io_in_11_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_134 = chosenOH[12] ? io_in_12_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_135 = chosenOH[13] ? io_in_13_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_136 = _io_out_bits_T_122 | _io_out_bits_T_123; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_137 = _io_out_bits_T_136 | _io_out_bits_T_124; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_138 = _io_out_bits_T_137 | _io_out_bits_T_125; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_139 = _io_out_bits_T_138 | _io_out_bits_T_126; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_140 = _io_out_bits_T_139 | _io_out_bits_T_127; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_141 = _io_out_bits_T_140 | _io_out_bits_T_128; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_142 = _io_out_bits_T_141 | _io_out_bits_T_129; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_143 = _io_out_bits_T_142 | _io_out_bits_T_130; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_144 = _io_out_bits_T_143 | _io_out_bits_T_131; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_145 = _io_out_bits_T_144 | _io_out_bits_T_132; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_146 = _io_out_bits_T_145 | _io_out_bits_T_133; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_147 = _io_out_bits_T_146 | _io_out_bits_T_134; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_176 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_177 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_178 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_179 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_180 = chosenOH[4] ? io_in_4_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_181 = chosenOH[5] ? io_in_5_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_182 = chosenOH[6] ? io_in_6_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_183 = chosenOH[7] ? io_in_7_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_184 = chosenOH[8] ? io_in_8_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_185 = chosenOH[9] ? io_in_9_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_186 = chosenOH[10] ? io_in_10_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_187 = chosenOH[11] ? io_in_11_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_188 = chosenOH[12] ? io_in_12_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_189 = chosenOH[13] ? io_in_13_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_190 = _io_out_bits_T_176 | _io_out_bits_T_177; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_191 = _io_out_bits_T_190 | _io_out_bits_T_178; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_192 = _io_out_bits_T_191 | _io_out_bits_T_179; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_193 = _io_out_bits_T_192 | _io_out_bits_T_180; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_194 = _io_out_bits_T_193 | _io_out_bits_T_181; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_195 = _io_out_bits_T_194 | _io_out_bits_T_182; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_196 = _io_out_bits_T_195 | _io_out_bits_T_183; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_197 = _io_out_bits_T_196 | _io_out_bits_T_184; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_198 = _io_out_bits_T_197 | _io_out_bits_T_185; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_199 = _io_out_bits_T_198 | _io_out_bits_T_186; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_200 = _io_out_bits_T_199 | _io_out_bits_T_187; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_201 = _io_out_bits_T_200 | _io_out_bits_T_188; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_203 = chosenOH[0] ? io_in_0_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_204 = chosenOH[1] ? io_in_1_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_205 = chosenOH[2] ? io_in_2_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_206 = chosenOH[3] ? io_in_3_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_207 = chosenOH[4] ? io_in_4_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_208 = chosenOH[5] ? io_in_5_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_209 = chosenOH[6] ? io_in_6_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_210 = chosenOH[7] ? io_in_7_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_211 = chosenOH[8] ? io_in_8_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_212 = chosenOH[9] ? io_in_9_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_213 = chosenOH[10] ? io_in_10_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_214 = chosenOH[11] ? io_in_11_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_215 = chosenOH[12] ? io_in_12_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_216 = chosenOH[13] ? io_in_13_bits_way : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_217 = _io_out_bits_T_203 | _io_out_bits_T_204; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_218 = _io_out_bits_T_217 | _io_out_bits_T_205; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_219 = _io_out_bits_T_218 | _io_out_bits_T_206; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_220 = _io_out_bits_T_219 | _io_out_bits_T_207; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_221 = _io_out_bits_T_220 | _io_out_bits_T_208; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_222 = _io_out_bits_T_221 | _io_out_bits_T_209; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_223 = _io_out_bits_T_222 | _io_out_bits_T_210; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_224 = _io_out_bits_T_223 | _io_out_bits_T_211; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_225 = _io_out_bits_T_224 | _io_out_bits_T_212; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_226 = _io_out_bits_T_225 | _io_out_bits_T_213; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_227 = _io_out_bits_T_226 | _io_out_bits_T_214; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_228 = _io_out_bits_T_227 | _io_out_bits_T_215; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_230 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_231 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_232 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_233 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_234 = chosenOH[4] ? io_in_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_235 = chosenOH[5] ? io_in_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_236 = chosenOH[6] ? io_in_6_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_237 = chosenOH[7] ? io_in_7_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_238 = chosenOH[8] ? io_in_8_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_239 = chosenOH[9] ? io_in_9_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_240 = chosenOH[10] ? io_in_10_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_241 = chosenOH[11] ? io_in_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_242 = chosenOH[12] ? io_in_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_243 = chosenOH[13] ? io_in_13_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_244 = _io_out_bits_T_230 | _io_out_bits_T_231; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_245 = _io_out_bits_T_244 | _io_out_bits_T_232; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_246 = _io_out_bits_T_245 | _io_out_bits_T_233; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_247 = _io_out_bits_T_246 | _io_out_bits_T_234; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_248 = _io_out_bits_T_247 | _io_out_bits_T_235; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_249 = _io_out_bits_T_248 | _io_out_bits_T_236; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_250 = _io_out_bits_T_249 | _io_out_bits_T_237; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_251 = _io_out_bits_T_250 | _io_out_bits_T_238; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_252 = _io_out_bits_T_251 | _io_out_bits_T_239; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_253 = _io_out_bits_T_252 | _io_out_bits_T_240; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_254 = _io_out_bits_T_253 | _io_out_bits_T_241; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_255 = _io_out_bits_T_254 | _io_out_bits_T_242; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_257 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_258 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_259 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_260 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_261 = chosenOH[4] ? io_in_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_262 = chosenOH[5] ? io_in_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_263 = chosenOH[6] ? io_in_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_264 = chosenOH[7] ? io_in_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_265 = chosenOH[8] ? io_in_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_266 = chosenOH[9] ? io_in_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_267 = chosenOH[10] ? io_in_10_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_268 = chosenOH[11] ? io_in_11_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_269 = chosenOH[12] ? io_in_12_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_270 = chosenOH[13] ? io_in_13_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_271 = _io_out_bits_T_257 | _io_out_bits_T_258; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_272 = _io_out_bits_T_271 | _io_out_bits_T_259; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_273 = _io_out_bits_T_272 | _io_out_bits_T_260; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_274 = _io_out_bits_T_273 | _io_out_bits_T_261; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_275 = _io_out_bits_T_274 | _io_out_bits_T_262; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_276 = _io_out_bits_T_275 | _io_out_bits_T_263; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_277 = _io_out_bits_T_276 | _io_out_bits_T_264; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_278 = _io_out_bits_T_277 | _io_out_bits_T_265; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_279 = _io_out_bits_T_278 | _io_out_bits_T_266; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_280 = _io_out_bits_T_279 | _io_out_bits_T_267; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_281 = _io_out_bits_T_280 | _io_out_bits_T_268; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_282 = _io_out_bits_T_281 | _io_out_bits_T_269; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_284 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_285 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_286 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_287 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_288 = chosenOH[4] ? io_in_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_289 = chosenOH[5] ? io_in_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_290 = chosenOH[6] ? io_in_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_291 = chosenOH[7] ? io_in_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_292 = chosenOH[8] ? io_in_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_293 = chosenOH[9] ? io_in_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_294 = chosenOH[10] ? io_in_10_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_295 = chosenOH[11] ? io_in_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_296 = chosenOH[12] ? io_in_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_297 = chosenOH[13] ? io_in_13_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_298 = _io_out_bits_T_284 | _io_out_bits_T_285; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_299 = _io_out_bits_T_298 | _io_out_bits_T_286; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_300 = _io_out_bits_T_299 | _io_out_bits_T_287; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_301 = _io_out_bits_T_300 | _io_out_bits_T_288; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_302 = _io_out_bits_T_301 | _io_out_bits_T_289; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_303 = _io_out_bits_T_302 | _io_out_bits_T_290; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_304 = _io_out_bits_T_303 | _io_out_bits_T_291; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_305 = _io_out_bits_T_304 | _io_out_bits_T_292; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_306 = _io_out_bits_T_305 | _io_out_bits_T_293; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_307 = _io_out_bits_T_306 | _io_out_bits_T_294; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_308 = _io_out_bits_T_307 | _io_out_bits_T_295; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_309 = _io_out_bits_T_308 | _io_out_bits_T_296; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_311 = chosenOH[0] ? io_in_0_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_312 = chosenOH[1] ? io_in_1_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_313 = chosenOH[2] ? io_in_2_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_314 = chosenOH[3] ? io_in_3_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_315 = chosenOH[4] ? io_in_4_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_316 = chosenOH[5] ? io_in_5_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_317 = chosenOH[6] ? io_in_6_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_318 = chosenOH[7] ? io_in_7_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_319 = chosenOH[8] ? io_in_8_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_320 = chosenOH[9] ? io_in_9_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_321 = chosenOH[10] ? io_in_10_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_322 = chosenOH[11] ? io_in_11_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_323 = chosenOH[12] ? io_in_12_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_324 = chosenOH[13] ? io_in_13_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_325 = _io_out_bits_T_311 | _io_out_bits_T_312; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_326 = _io_out_bits_T_325 | _io_out_bits_T_313; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_327 = _io_out_bits_T_326 | _io_out_bits_T_314; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_328 = _io_out_bits_T_327 | _io_out_bits_T_315; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_329 = _io_out_bits_T_328 | _io_out_bits_T_316; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_330 = _io_out_bits_T_329 | _io_out_bits_T_317; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_331 = _io_out_bits_T_330 | _io_out_bits_T_318; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_332 = _io_out_bits_T_331 | _io_out_bits_T_319; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_333 = _io_out_bits_T_332 | _io_out_bits_T_320; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_334 = _io_out_bits_T_333 | _io_out_bits_T_321; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_335 = _io_out_bits_T_334 | _io_out_bits_T_322; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_336 = _io_out_bits_T_335 | _io_out_bits_T_323; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_365 = chosenOH[0] ? io_in_0_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_366 = chosenOH[1] ? io_in_1_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_367 = chosenOH[2] ? io_in_2_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_368 = chosenOH[3] ? io_in_3_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_369 = chosenOH[4] ? io_in_4_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_370 = chosenOH[5] ? io_in_5_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_371 = chosenOH[6] ? io_in_6_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_372 = chosenOH[7] ? io_in_7_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_373 = chosenOH[8] ? io_in_8_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_374 = chosenOH[9] ? io_in_9_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_375 = chosenOH[10] ? io_in_10_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_376 = chosenOH[11] ? io_in_11_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_377 = chosenOH[12] ? io_in_12_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_378 = chosenOH[13] ? io_in_13_bits_set : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_379 = _io_out_bits_T_365 | _io_out_bits_T_366; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_380 = _io_out_bits_T_379 | _io_out_bits_T_367; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_381 = _io_out_bits_T_380 | _io_out_bits_T_368; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_382 = _io_out_bits_T_381 | _io_out_bits_T_369; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_383 = _io_out_bits_T_382 | _io_out_bits_T_370; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_384 = _io_out_bits_T_383 | _io_out_bits_T_371; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_385 = _io_out_bits_T_384 | _io_out_bits_T_372; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_386 = _io_out_bits_T_385 | _io_out_bits_T_373; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_387 = _io_out_bits_T_386 | _io_out_bits_T_374; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_388 = _io_out_bits_T_387 | _io_out_bits_T_375; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_389 = _io_out_bits_T_388 | _io_out_bits_T_376; // @[Mux.scala 27:73]
  wire [11:0] _io_out_bits_T_390 = _io_out_bits_T_389 | _io_out_bits_T_377; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_392 = chosenOH[0] ? io_in_0_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_393 = chosenOH[1] ? io_in_1_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_394 = chosenOH[2] ? io_in_2_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_395 = chosenOH[3] ? io_in_3_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_396 = chosenOH[4] ? io_in_4_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_397 = chosenOH[5] ? io_in_5_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_398 = chosenOH[6] ? io_in_6_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_399 = chosenOH[7] ? io_in_7_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_400 = chosenOH[8] ? io_in_8_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_401 = chosenOH[9] ? io_in_9_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_402 = chosenOH[10] ? io_in_10_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_403 = chosenOH[11] ? io_in_11_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_404 = chosenOH[12] ? io_in_12_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_405 = chosenOH[13] ? io_in_13_bits_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_406 = _io_out_bits_T_392 | _io_out_bits_T_393; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_407 = _io_out_bits_T_406 | _io_out_bits_T_394; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_408 = _io_out_bits_T_407 | _io_out_bits_T_395; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_409 = _io_out_bits_T_408 | _io_out_bits_T_396; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_410 = _io_out_bits_T_409 | _io_out_bits_T_397; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_411 = _io_out_bits_T_410 | _io_out_bits_T_398; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_412 = _io_out_bits_T_411 | _io_out_bits_T_399; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_413 = _io_out_bits_T_412 | _io_out_bits_T_400; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_414 = _io_out_bits_T_413 | _io_out_bits_T_401; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_415 = _io_out_bits_T_414 | _io_out_bits_T_402; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_416 = _io_out_bits_T_415 | _io_out_bits_T_403; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_417 = _io_out_bits_T_416 | _io_out_bits_T_404; // @[Mux.scala 27:73]
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
  assign io_out_bits_sourceId = _io_out_bits_T_417 | _io_out_bits_T_405; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_390 | _io_out_bits_T_378; // @[Mux.scala 27:73]
  assign io_out_bits_channel = _io_out_bits_T_336 | _io_out_bits_T_324; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_309 | _io_out_bits_T_297; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_282 | _io_out_bits_T_270; // @[Mux.scala 27:73]
  assign io_out_bits_size = _io_out_bits_T_255 | _io_out_bits_T_243; // @[Mux.scala 27:73]
  assign io_out_bits_way = _io_out_bits_T_228 | _io_out_bits_T_216; // @[Mux.scala 27:73]
  assign io_out_bits_off = _io_out_bits_T_201 | _io_out_bits_T_189; // @[Mux.scala 27:73]
  assign io_out_bits_useBypass = chosenOH[0] & io_in_0_bits_useBypass | chosenOH[1] & io_in_1_bits_useBypass | chosenOH[
    2] & io_in_2_bits_useBypass | chosenOH[3] & io_in_3_bits_useBypass | chosenOH[4] & io_in_4_bits_useBypass | chosenOH
    [5] & io_in_5_bits_useBypass | chosenOH[6] & io_in_6_bits_useBypass | chosenOH[7] & io_in_7_bits_useBypass |
    chosenOH[8] & io_in_8_bits_useBypass | chosenOH[9] & io_in_9_bits_useBypass | chosenOH[10] & io_in_10_bits_useBypass
     | chosenOH[11] & io_in_11_bits_useBypass | chosenOH[12] & io_in_12_bits_useBypass | chosenOH[13] &
    io_in_13_bits_useBypass; // @[Mux.scala 27:73]
  assign io_out_bits_bufIdx = _io_out_bits_T_147 | _io_out_bits_T_135; // @[Mux.scala 27:73]
  assign io_out_bits_denied = chosenOH[0] & io_in_0_bits_denied | chosenOH[1] & io_in_1_bits_denied | chosenOH[2] &
    io_in_2_bits_denied | chosenOH[3] & io_in_3_bits_denied | chosenOH[4] & io_in_4_bits_denied | chosenOH[5] &
    io_in_5_bits_denied | chosenOH[6] & io_in_6_bits_denied | chosenOH[7] & io_in_7_bits_denied | chosenOH[8] &
    io_in_8_bits_denied | chosenOH[9] & io_in_9_bits_denied | chosenOH[10] & io_in_10_bits_denied | chosenOH[11] &
    io_in_11_bits_denied | chosenOH[12] & io_in_12_bits_denied | chosenOH[13] & io_in_13_bits_denied; // @[Mux.scala 27:73]
  assign io_out_bits_sinkId = _io_out_bits_T_93 | _io_out_bits_T_81; // @[Mux.scala 27:73]
  assign io_out_bits_bypassPut = chosenOH[0] & io_in_0_bits_bypassPut | chosenOH[1] & io_in_1_bits_bypassPut | chosenOH[
    2] & io_in_2_bits_bypassPut | chosenOH[3] & io_in_3_bits_bypassPut | chosenOH[4] & io_in_4_bits_bypassPut | chosenOH
    [5] & io_in_5_bits_bypassPut | chosenOH[6] & io_in_6_bits_bypassPut | chosenOH[7] & io_in_7_bits_bypassPut |
    chosenOH[8] & io_in_8_bits_bypassPut | chosenOH[9] & io_in_9_bits_bypassPut | chosenOH[10] & io_in_10_bits_bypassPut
     | chosenOH[11] & io_in_11_bits_bypassPut | chosenOH[12] & io_in_12_bits_bypassPut | chosenOH[13] &
    io_in_13_bits_bypassPut; // @[Mux.scala 27:73]
  assign io_out_bits_dirty = chosenOH[0] & io_in_0_bits_dirty | chosenOH[1] & io_in_1_bits_dirty | chosenOH[2] &
    io_in_2_bits_dirty | chosenOH[3] & io_in_3_bits_dirty | chosenOH[4] & io_in_4_bits_dirty | chosenOH[5] &
    io_in_5_bits_dirty | chosenOH[6] & io_in_6_bits_dirty | chosenOH[7] & io_in_7_bits_dirty | chosenOH[8] &
    io_in_8_bits_dirty | chosenOH[9] & io_in_9_bits_dirty | chosenOH[10] & io_in_10_bits_dirty | chosenOH[11] &
    io_in_11_bits_dirty | chosenOH[12] & io_in_12_bits_dirty | chosenOH[13] & io_in_13_bits_dirty; // @[Mux.scala 27:73]
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
