module FastArbiter_2(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [2:0]  io_in_0_bits_channel,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [2:0]  io_in_0_bits_size,
  input  [5:0]  io_in_0_bits_source,
  input  [7:0]  io_in_0_bits_set,
  input  [20:0] io_in_0_bits_tag,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_bufIdx,
  input         io_in_0_bits_needHint,
  input         io_in_0_bits_isPrefetch,
  input  [1:0]  io_in_0_bits_alias,
  input         io_in_0_bits_preferCache,
  input         io_in_0_bits_dirty,
  input         io_in_0_bits_fromProbeHelper,
  input         io_in_0_bits_fromCmoHelper,
  input         io_in_0_bits_needProbeAckData,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [2:0]  io_in_1_bits_channel,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [2:0]  io_in_1_bits_size,
  input  [5:0]  io_in_1_bits_source,
  input  [7:0]  io_in_1_bits_set,
  input  [20:0] io_in_1_bits_tag,
  input  [5:0]  io_in_1_bits_off,
  input  [2:0]  io_in_1_bits_bufIdx,
  input         io_in_1_bits_needHint,
  input         io_in_1_bits_isPrefetch,
  input  [1:0]  io_in_1_bits_alias,
  input         io_in_1_bits_preferCache,
  input         io_in_1_bits_dirty,
  input         io_in_1_bits_fromProbeHelper,
  input         io_in_1_bits_fromCmoHelper,
  input         io_in_1_bits_needProbeAckData,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [2:0]  io_in_2_bits_channel,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [2:0]  io_in_2_bits_size,
  input  [5:0]  io_in_2_bits_source,
  input  [7:0]  io_in_2_bits_set,
  input  [20:0] io_in_2_bits_tag,
  input  [5:0]  io_in_2_bits_off,
  input  [2:0]  io_in_2_bits_bufIdx,
  input         io_in_2_bits_needHint,
  input         io_in_2_bits_isPrefetch,
  input  [1:0]  io_in_2_bits_alias,
  input         io_in_2_bits_preferCache,
  input         io_in_2_bits_dirty,
  input         io_in_2_bits_fromProbeHelper,
  input         io_in_2_bits_fromCmoHelper,
  input         io_in_2_bits_needProbeAckData,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [2:0]  io_in_3_bits_channel,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [2:0]  io_in_3_bits_size,
  input  [5:0]  io_in_3_bits_source,
  input  [7:0]  io_in_3_bits_set,
  input  [20:0] io_in_3_bits_tag,
  input  [5:0]  io_in_3_bits_off,
  input  [2:0]  io_in_3_bits_bufIdx,
  input         io_in_3_bits_needHint,
  input         io_in_3_bits_isPrefetch,
  input  [1:0]  io_in_3_bits_alias,
  input         io_in_3_bits_preferCache,
  input         io_in_3_bits_dirty,
  input         io_in_3_bits_fromProbeHelper,
  input         io_in_3_bits_fromCmoHelper,
  input         io_in_3_bits_needProbeAckData,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [5:0]  io_out_bits_source,
  output [7:0]  io_out_bits_set,
  output [20:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_needHint,
  output        io_out_bits_isPrefetch,
  output [1:0]  io_out_bits_alias,
  output        io_out_bits_preferCache,
  output        io_out_bits_dirty,
  output        io_out_bits_fromProbeHelper,
  output        io_out_bits_fromCmoHelper,
  output        io_out_bits_needProbeAckData,
  output [1:0]  io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] valids = {io_in_3_valid,io_in_2_valid,io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 18:50]
  reg [3:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [3:0] pendingMask; // @[Reg.scala 28:20]
  wire [3:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 33:47]
  wire [1:0] rrSelOH_hi = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [2:0] _rrSelOH_T_12 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_15 = _rrSelOH_T[3] & ~(|_rrSelOH_T_12); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_11 = _rrSelOH_T[2] & ~(|rrSelOH_hi); // @[FastArbiter.scala 13:24]
  wire  _rrSelOH_T_7 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 13:24]
  wire [3:0] rrSelOH = {_rrSelOH_T_15,_rrSelOH_T_11,_rrSelOH_T_7,_rrSelOH_T[0]}; // @[FastArbiter.scala 33:80]
  wire [3:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 35:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 35:39]
  wire [1:0] firstOneOH_hi = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [2:0] _firstOneOH_T_11 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_14 = valids[3] & ~(|_firstOneOH_T_11); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_10 = valids[2] & ~(|firstOneOH_hi); // @[FastArbiter.scala 13:24]
  wire  _firstOneOH_T_6 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 13:24]
  wire [3:0] firstOneOH = {_firstOneOH_T_14,_firstOneOH_T_10,_firstOneOH_T_6,valids[0]}; // @[FastArbiter.scala 34:62]
  wire [3:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 36:18]
  wire [3:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 21:15]
  wire [3:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 21:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 31:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 31:51]
  wire [3:0] _rrGrantMask_T_6 = {_rrGrantMask_T_5,_rrGrantMask_T_3,_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 32:12]
  wire [1:0] _io_out_bits_T_39 = chosenOH[0] ? io_in_0_bits_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_40 = chosenOH[1] ? io_in_1_bits_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_41 = chosenOH[2] ? io_in_2_bits_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_42 = chosenOH[3] ? io_in_3_bits_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_43 = _io_out_bits_T_39 | _io_out_bits_T_40; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_44 = _io_out_bits_T_43 | _io_out_bits_T_41; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_60 = chosenOH[0] ? io_in_0_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_61 = chosenOH[1] ? io_in_1_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_62 = chosenOH[2] ? io_in_2_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_63 = chosenOH[3] ? io_in_3_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_64 = _io_out_bits_T_60 | _io_out_bits_T_61; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_65 = _io_out_bits_T_64 | _io_out_bits_T_62; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_67 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_68 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_69 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_70 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_71 = _io_out_bits_T_67 | _io_out_bits_T_68; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_72 = _io_out_bits_T_71 | _io_out_bits_T_69; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_74 = chosenOH[0] ? io_in_0_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_75 = chosenOH[1] ? io_in_1_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_76 = chosenOH[2] ? io_in_2_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_77 = chosenOH[3] ? io_in_3_bits_tag : 21'h0; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_78 = _io_out_bits_T_74 | _io_out_bits_T_75; // @[Mux.scala 27:73]
  wire [20:0] _io_out_bits_T_79 = _io_out_bits_T_78 | _io_out_bits_T_76; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_81 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_82 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_83 = chosenOH[2] ? io_in_2_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_84 = chosenOH[3] ? io_in_3_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_85 = _io_out_bits_T_81 | _io_out_bits_T_82; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_86 = _io_out_bits_T_85 | _io_out_bits_T_83; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_88 = chosenOH[0] ? io_in_0_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_89 = chosenOH[1] ? io_in_1_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_90 = chosenOH[2] ? io_in_2_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_91 = chosenOH[3] ? io_in_3_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_92 = _io_out_bits_T_88 | _io_out_bits_T_89; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_93 = _io_out_bits_T_92 | _io_out_bits_T_90; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_95 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_96 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_97 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_98 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_99 = _io_out_bits_T_95 | _io_out_bits_T_96; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_100 = _io_out_bits_T_99 | _io_out_bits_T_97; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_102 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_103 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_104 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_105 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_106 = _io_out_bits_T_102 | _io_out_bits_T_103; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_107 = _io_out_bits_T_106 | _io_out_bits_T_104; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_109 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_110 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_111 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_112 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_113 = _io_out_bits_T_109 | _io_out_bits_T_110; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_114 = _io_out_bits_T_113 | _io_out_bits_T_111; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_116 = chosenOH[0] ? io_in_0_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_117 = chosenOH[1] ? io_in_1_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_118 = chosenOH[2] ? io_in_2_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_119 = chosenOH[3] ? io_in_3_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_120 = _io_out_bits_T_116 | _io_out_bits_T_117; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_121 = _io_out_bits_T_120 | _io_out_bits_T_118; // @[Mux.scala 27:73]
  wire [1:0] io_chosen_hi = chosenOH[3:2]; // @[OneHot.scala 30:18]
  wire  _io_chosen_T = |io_chosen_hi; // @[OneHot.scala 32:14]
  wire [1:0] _io_chosen_T_1 = io_chosen_hi | chosenOH[1:0]; // @[OneHot.scala 32:28]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_2_ready = chosenOH[2] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_in_3_ready = chosenOH[3] & io_out_ready; // @[FastArbiter.scala 42:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 38:29]
  assign io_out_bits_channel = _io_out_bits_T_121 | _io_out_bits_T_119; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_114 | _io_out_bits_T_112; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_107 | _io_out_bits_T_105; // @[Mux.scala 27:73]
  assign io_out_bits_size = _io_out_bits_T_100 | _io_out_bits_T_98; // @[Mux.scala 27:73]
  assign io_out_bits_source = _io_out_bits_T_93 | _io_out_bits_T_91; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_86 | _io_out_bits_T_84; // @[Mux.scala 27:73]
  assign io_out_bits_tag = _io_out_bits_T_79 | _io_out_bits_T_77; // @[Mux.scala 27:73]
  assign io_out_bits_off = _io_out_bits_T_72 | _io_out_bits_T_70; // @[Mux.scala 27:73]
  assign io_out_bits_bufIdx = _io_out_bits_T_65 | _io_out_bits_T_63; // @[Mux.scala 27:73]
  assign io_out_bits_needHint = chosenOH[0] & io_in_0_bits_needHint | chosenOH[1] & io_in_1_bits_needHint | chosenOH[2]
     & io_in_2_bits_needHint | chosenOH[3] & io_in_3_bits_needHint; // @[Mux.scala 27:73]
  assign io_out_bits_isPrefetch = chosenOH[0] & io_in_0_bits_isPrefetch | chosenOH[1] & io_in_1_bits_isPrefetch |
    chosenOH[2] & io_in_2_bits_isPrefetch | chosenOH[3] & io_in_3_bits_isPrefetch; // @[Mux.scala 27:73]
  assign io_out_bits_alias = _io_out_bits_T_44 | _io_out_bits_T_42; // @[Mux.scala 27:73]
  assign io_out_bits_preferCache = chosenOH[0] & io_in_0_bits_preferCache | chosenOH[1] & io_in_1_bits_preferCache |
    chosenOH[2] & io_in_2_bits_preferCache | chosenOH[3] & io_in_3_bits_preferCache; // @[Mux.scala 27:73]
  assign io_out_bits_dirty = chosenOH[0] & io_in_0_bits_dirty | chosenOH[1] & io_in_1_bits_dirty | chosenOH[2] &
    io_in_2_bits_dirty | chosenOH[3] & io_in_3_bits_dirty; // @[Mux.scala 27:73]
  assign io_out_bits_fromProbeHelper = chosenOH[0] & io_in_0_bits_fromProbeHelper | chosenOH[1] &
    io_in_1_bits_fromProbeHelper | chosenOH[2] & io_in_2_bits_fromProbeHelper | chosenOH[3] &
    io_in_3_bits_fromProbeHelper; // @[Mux.scala 27:73]
  assign io_out_bits_fromCmoHelper = chosenOH[0] & io_in_0_bits_fromCmoHelper | chosenOH[1] & io_in_1_bits_fromCmoHelper
     | chosenOH[2] & io_in_2_bits_fromCmoHelper | chosenOH[3] & io_in_3_bits_fromCmoHelper; // @[Mux.scala 27:73]
  assign io_out_bits_needProbeAckData = chosenOH[0] & io_in_0_bits_needProbeAckData | chosenOH[1] &
    io_in_1_bits_needProbeAckData | chosenOH[2] & io_in_2_bits_needProbeAckData | chosenOH[3] &
    io_in_3_bits_needProbeAckData; // @[Mux.scala 27:73]
  assign io_chosen = {_io_chosen_T,_io_chosen_T_1[1]}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      rrGrantMask <= 4'h0; // @[Reg.scala 28:20]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 29:18]
      rrGrantMask <= _rrGrantMask_T_6; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      pendingMask <= 4'h0; // @[Reg.scala 28:20]
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
  rrGrantMask = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
