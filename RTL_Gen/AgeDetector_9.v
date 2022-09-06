module AgeDetector_9(
  input        clock,
  input        reset,
  input  [7:0] io_enq_0,
  input  [7:0] io_deq,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
`endif // RANDOMIZE_REG_INIT
  reg  age_0_0; // @[SelectPolicy.scala 105:62]
  reg  age_0_1; // @[SelectPolicy.scala 105:62]
  reg  age_0_2; // @[SelectPolicy.scala 105:62]
  reg  age_0_3; // @[SelectPolicy.scala 105:62]
  reg  age_0_4; // @[SelectPolicy.scala 105:62]
  reg  age_0_5; // @[SelectPolicy.scala 105:62]
  reg  age_0_6; // @[SelectPolicy.scala 105:62]
  reg  age_0_7; // @[SelectPolicy.scala 105:62]
  reg  age_1_1; // @[SelectPolicy.scala 105:62]
  reg  age_1_2; // @[SelectPolicy.scala 105:62]
  reg  age_1_3; // @[SelectPolicy.scala 105:62]
  reg  age_1_4; // @[SelectPolicy.scala 105:62]
  reg  age_1_5; // @[SelectPolicy.scala 105:62]
  reg  age_1_6; // @[SelectPolicy.scala 105:62]
  reg  age_1_7; // @[SelectPolicy.scala 105:62]
  reg  age_2_2; // @[SelectPolicy.scala 105:62]
  reg  age_2_3; // @[SelectPolicy.scala 105:62]
  reg  age_2_4; // @[SelectPolicy.scala 105:62]
  reg  age_2_5; // @[SelectPolicy.scala 105:62]
  reg  age_2_6; // @[SelectPolicy.scala 105:62]
  reg  age_2_7; // @[SelectPolicy.scala 105:62]
  reg  age_3_3; // @[SelectPolicy.scala 105:62]
  reg  age_3_4; // @[SelectPolicy.scala 105:62]
  reg  age_3_5; // @[SelectPolicy.scala 105:62]
  reg  age_3_6; // @[SelectPolicy.scala 105:62]
  reg  age_3_7; // @[SelectPolicy.scala 105:62]
  reg  age_4_4; // @[SelectPolicy.scala 105:62]
  reg  age_4_5; // @[SelectPolicy.scala 105:62]
  reg  age_4_6; // @[SelectPolicy.scala 105:62]
  reg  age_4_7; // @[SelectPolicy.scala 105:62]
  reg  age_5_5; // @[SelectPolicy.scala 105:62]
  reg  age_5_6; // @[SelectPolicy.scala 105:62]
  reg  age_5_7; // @[SelectPolicy.scala 105:62]
  reg  age_6_6; // @[SelectPolicy.scala 105:62]
  reg  age_6_7; // @[SelectPolicy.scala 105:62]
  reg  age_7_7; // @[SelectPolicy.scala 105:62]
  wire  thisFlushed = io_deq[0]; // @[SelectPolicy.scala 114:29]
  wire  thisEnqueue = |io_enq_0[0]; // @[SelectPolicy.scala 115:56]
  wire  thisValid = age_0_0 | thisEnqueue; // @[SelectPolicy.scala 116:35]
  wire  _GEN_0 = io_enq_0[0] ? ~age_0_0 : age_0_0; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_1 = thisFlushed ? thisValid : _GEN_0; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_0 = thisFlushed ? 1'h0 : _GEN_1; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_1 = io_deq[1]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_3 = io_enq_0[0] ? ~age_1_1 : age_0_1; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_4 = otherFlushed_1 ? thisValid : _GEN_3; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_1 = thisFlushed ? 1'h0 : _GEN_4; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_2 = io_deq[2]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_6 = io_enq_0[0] ? ~age_2_2 : age_0_2; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_7 = otherFlushed_2 ? thisValid : _GEN_6; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_2 = thisFlushed ? 1'h0 : _GEN_7; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_3 = io_deq[3]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_9 = io_enq_0[0] ? ~age_3_3 : age_0_3; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_10 = otherFlushed_3 ? thisValid : _GEN_9; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_3 = thisFlushed ? 1'h0 : _GEN_10; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_4 = io_deq[4]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_12 = io_enq_0[0] ? ~age_4_4 : age_0_4; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_13 = otherFlushed_4 ? thisValid : _GEN_12; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_4 = thisFlushed ? 1'h0 : _GEN_13; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_5 = io_deq[5]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_15 = io_enq_0[0] ? ~age_5_5 : age_0_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_16 = otherFlushed_5 ? thisValid : _GEN_15; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_5 = thisFlushed ? 1'h0 : _GEN_16; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_6 = io_deq[6]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_18 = io_enq_0[0] ? ~age_6_6 : age_0_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_19 = otherFlushed_6 ? thisValid : _GEN_18; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_6 = thisFlushed ? 1'h0 : _GEN_19; // @[SelectPolicy.scala 120:26 121:14]
  wire  otherFlushed_7 = io_deq[7]; // @[SelectPolicy.scala 119:32]
  wire  _GEN_21 = io_enq_0[0] ? ~age_7_7 : age_0_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_22 = otherFlushed_7 ? thisValid : _GEN_21; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_0_7 = thisFlushed ? 1'h0 : _GEN_22; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_1 = |io_enq_0[1]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_1 = age_1_1 | thisEnqueue_1; // @[SelectPolicy.scala 116:35]
  wire  _GEN_27 = io_enq_0[1] ? ~age_1_1 : age_1_1; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_28 = otherFlushed_1 ? thisValid_1 : _GEN_27; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_1 = otherFlushed_1 ? 1'h0 : _GEN_28; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_30 = io_enq_0[1] ? ~age_2_2 : age_1_2; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_31 = otherFlushed_2 ? thisValid_1 : _GEN_30; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_2 = otherFlushed_1 ? 1'h0 : _GEN_31; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_33 = io_enq_0[1] ? ~age_3_3 : age_1_3; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_34 = otherFlushed_3 ? thisValid_1 : _GEN_33; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_3 = otherFlushed_1 ? 1'h0 : _GEN_34; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_36 = io_enq_0[1] ? ~age_4_4 : age_1_4; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_37 = otherFlushed_4 ? thisValid_1 : _GEN_36; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_4 = otherFlushed_1 ? 1'h0 : _GEN_37; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_39 = io_enq_0[1] ? ~age_5_5 : age_1_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_40 = otherFlushed_5 ? thisValid_1 : _GEN_39; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_5 = otherFlushed_1 ? 1'h0 : _GEN_40; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_42 = io_enq_0[1] ? ~age_6_6 : age_1_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_43 = otherFlushed_6 ? thisValid_1 : _GEN_42; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_6 = otherFlushed_1 ? 1'h0 : _GEN_43; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_45 = io_enq_0[1] ? ~age_7_7 : age_1_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_46 = otherFlushed_7 ? thisValid_1 : _GEN_45; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_1_7 = otherFlushed_1 ? 1'h0 : _GEN_46; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_2 = |io_enq_0[2]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_2 = age_2_2 | thisEnqueue_2; // @[SelectPolicy.scala 116:35]
  wire  _GEN_54 = io_enq_0[2] ? ~age_2_2 : age_2_2; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_55 = otherFlushed_2 ? thisValid_2 : _GEN_54; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_2 = otherFlushed_2 ? 1'h0 : _GEN_55; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_57 = io_enq_0[2] ? ~age_3_3 : age_2_3; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_58 = otherFlushed_3 ? thisValid_2 : _GEN_57; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_3 = otherFlushed_2 ? 1'h0 : _GEN_58; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_60 = io_enq_0[2] ? ~age_4_4 : age_2_4; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_61 = otherFlushed_4 ? thisValid_2 : _GEN_60; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_4 = otherFlushed_2 ? 1'h0 : _GEN_61; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_63 = io_enq_0[2] ? ~age_5_5 : age_2_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_64 = otherFlushed_5 ? thisValid_2 : _GEN_63; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_5 = otherFlushed_2 ? 1'h0 : _GEN_64; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_66 = io_enq_0[2] ? ~age_6_6 : age_2_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_67 = otherFlushed_6 ? thisValid_2 : _GEN_66; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_6 = otherFlushed_2 ? 1'h0 : _GEN_67; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_69 = io_enq_0[2] ? ~age_7_7 : age_2_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_70 = otherFlushed_7 ? thisValid_2 : _GEN_69; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_2_7 = otherFlushed_2 ? 1'h0 : _GEN_70; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_3 = |io_enq_0[3]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_3 = age_3_3 | thisEnqueue_3; // @[SelectPolicy.scala 116:35]
  wire  _GEN_81 = io_enq_0[3] ? ~age_3_3 : age_3_3; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_82 = otherFlushed_3 ? thisValid_3 : _GEN_81; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_3_3 = otherFlushed_3 ? 1'h0 : _GEN_82; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_84 = io_enq_0[3] ? ~age_4_4 : age_3_4; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_85 = otherFlushed_4 ? thisValid_3 : _GEN_84; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_3_4 = otherFlushed_3 ? 1'h0 : _GEN_85; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_87 = io_enq_0[3] ? ~age_5_5 : age_3_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_88 = otherFlushed_5 ? thisValid_3 : _GEN_87; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_3_5 = otherFlushed_3 ? 1'h0 : _GEN_88; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_90 = io_enq_0[3] ? ~age_6_6 : age_3_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_91 = otherFlushed_6 ? thisValid_3 : _GEN_90; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_3_6 = otherFlushed_3 ? 1'h0 : _GEN_91; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_93 = io_enq_0[3] ? ~age_7_7 : age_3_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_94 = otherFlushed_7 ? thisValid_3 : _GEN_93; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_3_7 = otherFlushed_3 ? 1'h0 : _GEN_94; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_4 = |io_enq_0[4]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_4 = age_4_4 | thisEnqueue_4; // @[SelectPolicy.scala 116:35]
  wire  _GEN_108 = io_enq_0[4] ? ~age_4_4 : age_4_4; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_109 = otherFlushed_4 ? thisValid_4 : _GEN_108; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_4_4 = otherFlushed_4 ? 1'h0 : _GEN_109; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_111 = io_enq_0[4] ? ~age_5_5 : age_4_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_112 = otherFlushed_5 ? thisValid_4 : _GEN_111; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_4_5 = otherFlushed_4 ? 1'h0 : _GEN_112; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_114 = io_enq_0[4] ? ~age_6_6 : age_4_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_115 = otherFlushed_6 ? thisValid_4 : _GEN_114; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_4_6 = otherFlushed_4 ? 1'h0 : _GEN_115; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_117 = io_enq_0[4] ? ~age_7_7 : age_4_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_118 = otherFlushed_7 ? thisValid_4 : _GEN_117; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_4_7 = otherFlushed_4 ? 1'h0 : _GEN_118; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_5 = |io_enq_0[5]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_5 = age_5_5 | thisEnqueue_5; // @[SelectPolicy.scala 116:35]
  wire  _GEN_135 = io_enq_0[5] ? ~age_5_5 : age_5_5; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_136 = otherFlushed_5 ? thisValid_5 : _GEN_135; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_5_5 = otherFlushed_5 ? 1'h0 : _GEN_136; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_138 = io_enq_0[5] ? ~age_6_6 : age_5_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_139 = otherFlushed_6 ? thisValid_5 : _GEN_138; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_5_6 = otherFlushed_5 ? 1'h0 : _GEN_139; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_141 = io_enq_0[5] ? ~age_7_7 : age_5_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_142 = otherFlushed_7 ? thisValid_5 : _GEN_141; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_5_7 = otherFlushed_5 ? 1'h0 : _GEN_142; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_6 = |io_enq_0[6]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_6 = age_6_6 | thisEnqueue_6; // @[SelectPolicy.scala 116:35]
  wire  _GEN_162 = io_enq_0[6] ? ~age_6_6 : age_6_6; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_163 = otherFlushed_6 ? thisValid_6 : _GEN_162; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_6_6 = otherFlushed_6 ? 1'h0 : _GEN_163; // @[SelectPolicy.scala 120:26 121:14]
  wire  _GEN_165 = io_enq_0[6] ? ~age_7_7 : age_6_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_166 = otherFlushed_7 ? thisValid_6 : _GEN_165; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_6_7 = otherFlushed_6 ? 1'h0 : _GEN_166; // @[SelectPolicy.scala 120:26 121:14]
  wire  thisEnqueue_7 = |io_enq_0[7]; // @[SelectPolicy.scala 115:56]
  wire  thisValid_7 = age_7_7 | thisEnqueue_7; // @[SelectPolicy.scala 116:35]
  wire  _GEN_189 = io_enq_0[7] ? ~age_7_7 : age_7_7; // @[SelectPolicy.scala 125:14 127:31 129:18]
  wire  _GEN_190 = otherFlushed_7 ? thisValid_7 : _GEN_189; // @[SelectPolicy.scala 122:33 123:14]
  wire  nextAge_7_7 = otherFlushed_7 ? 1'h0 : _GEN_190; // @[SelectPolicy.scala 120:26 121:14]
  wire [7:0] _nextBest_T = {nextAge_0_7,nextAge_0_6,nextAge_0_5,nextAge_0_4,nextAge_0_3,nextAge_0_2,nextAge_0_1,
    nextAge_0_0}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_1 = &_nextBest_T; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_2 = ~nextAge_0_1; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_3 = {nextAge_1_7,nextAge_1_6,nextAge_1_5,nextAge_1_4,nextAge_1_3,nextAge_1_2,nextAge_1_1,
    _nextBest_T_2}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_4 = &_nextBest_T_3; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_5 = ~nextAge_0_2; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_6 = ~nextAge_1_2; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_7 = {nextAge_2_7,nextAge_2_6,nextAge_2_5,nextAge_2_4,nextAge_2_3,nextAge_2_2,_nextBest_T_6,
    _nextBest_T_5}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_8 = &_nextBest_T_7; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_9 = ~nextAge_0_3; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_10 = ~nextAge_1_3; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_11 = ~nextAge_2_3; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_12 = {nextAge_3_7,nextAge_3_6,nextAge_3_5,nextAge_3_4,nextAge_3_3,_nextBest_T_11,_nextBest_T_10
    ,_nextBest_T_9}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_13 = &_nextBest_T_12; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_14 = ~nextAge_0_4; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_15 = ~nextAge_1_4; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_16 = ~nextAge_2_4; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_17 = ~nextAge_3_4; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_18 = {nextAge_4_7,nextAge_4_6,nextAge_4_5,nextAge_4_4,_nextBest_T_17,_nextBest_T_16,
    _nextBest_T_15,_nextBest_T_14}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_19 = &_nextBest_T_18; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_20 = ~nextAge_0_5; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_21 = ~nextAge_1_5; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_22 = ~nextAge_2_5; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_23 = ~nextAge_3_5; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_24 = ~nextAge_4_5; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_25 = {nextAge_5_7,nextAge_5_6,nextAge_5_5,_nextBest_T_24,_nextBest_T_23,_nextBest_T_22,
    _nextBest_T_21,_nextBest_T_20}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_26 = &_nextBest_T_25; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_27 = ~nextAge_0_6; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_28 = ~nextAge_1_6; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_29 = ~nextAge_2_6; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_30 = ~nextAge_3_6; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_31 = ~nextAge_4_6; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_32 = ~nextAge_5_6; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_33 = {nextAge_6_7,nextAge_6_6,_nextBest_T_32,_nextBest_T_31,_nextBest_T_30,_nextBest_T_29,
    _nextBest_T_28,_nextBest_T_27}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_34 = &_nextBest_T_33; // @[SelectPolicy.scala 138:71]
  wire  _nextBest_T_35 = ~nextAge_0_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_36 = ~nextAge_1_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_37 = ~nextAge_2_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_38 = ~nextAge_3_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_39 = ~nextAge_4_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_40 = ~nextAge_5_7; // @[SelectPolicy.scala 110:81]
  wire  _nextBest_T_41 = ~nextAge_6_7; // @[SelectPolicy.scala 110:81]
  wire [7:0] _nextBest_T_42 = {nextAge_7_7,_nextBest_T_41,_nextBest_T_40,_nextBest_T_39,_nextBest_T_38,_nextBest_T_37,
    _nextBest_T_36,_nextBest_T_35}; // @[SelectPolicy.scala 138:64]
  wire  _nextBest_T_43 = &_nextBest_T_42; // @[SelectPolicy.scala 138:71]
  wire [3:0] nextBest_lo_8 = {_nextBest_T_13,_nextBest_T_8,_nextBest_T_4,_nextBest_T_1}; // @[SelectPolicy.scala 139:7]
  wire [3:0] nextBest_hi_8 = {_nextBest_T_43,_nextBest_T_34,_nextBest_T_26,_nextBest_T_19}; // @[SelectPolicy.scala 139:7]
  reg [7:0] io_out_REG; // @[SelectPolicy.scala 141:33]
  assign io_out = io_out_REG; // @[SelectPolicy.scala 141:10]
  always @(posedge clock) begin
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_0 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_0 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 122:33]
      age_0_0 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_0 <= ~age_0_0; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_1 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_1 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 122:33]
      age_0_1 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_1 <= ~age_1_1; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_2 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_2 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 122:33]
      age_0_2 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_2 <= ~age_2_2; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_3 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_3 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 122:33]
      age_0_3 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_3 <= ~age_3_3; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_4 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_4 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 122:33]
      age_0_4 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_4 <= ~age_4_4; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_0_5 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_0_6 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_0_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (thisFlushed) begin // @[SelectPolicy.scala 120:26]
      age_0_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_0_7 <= thisValid; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[0]) begin // @[SelectPolicy.scala 127:31]
      age_0_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_1 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_1 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 122:33]
      age_1_1 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_1 <= ~age_1_1; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_2 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_2 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 122:33]
      age_1_2 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_2 <= ~age_2_2; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_3 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_3 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 122:33]
      age_1_3 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_3 <= ~age_3_3; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_4 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_4 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 122:33]
      age_1_4 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_4 <= ~age_4_4; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_1_5 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_1_6 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_1_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_1) begin // @[SelectPolicy.scala 120:26]
      age_1_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_1_7 <= thisValid_1; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[1]) begin // @[SelectPolicy.scala 127:31]
      age_1_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_2 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_2 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 122:33]
      age_2_2 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_2 <= ~age_2_2; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_3 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_3 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 122:33]
      age_2_3 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_3 <= ~age_3_3; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_4 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_4 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 122:33]
      age_2_4 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_4 <= ~age_4_4; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_2_5 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_2_6 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_2_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_2) begin // @[SelectPolicy.scala 120:26]
      age_2_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_2_7 <= thisValid_2; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[2]) begin // @[SelectPolicy.scala 127:31]
      age_2_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_3_3 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 120:26]
      age_3_3 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 122:33]
      age_3_3 <= thisValid_3; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[3]) begin // @[SelectPolicy.scala 127:31]
      age_3_3 <= ~age_3_3; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_3_4 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 120:26]
      age_3_4 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 122:33]
      age_3_4 <= thisValid_3; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[3]) begin // @[SelectPolicy.scala 127:31]
      age_3_4 <= ~age_4_4; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_3_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 120:26]
      age_3_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_3_5 <= thisValid_3; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[3]) begin // @[SelectPolicy.scala 127:31]
      age_3_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_3_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 120:26]
      age_3_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_3_6 <= thisValid_3; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[3]) begin // @[SelectPolicy.scala 127:31]
      age_3_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_3_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_3) begin // @[SelectPolicy.scala 120:26]
      age_3_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_3_7 <= thisValid_3; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[3]) begin // @[SelectPolicy.scala 127:31]
      age_3_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_4_4 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 120:26]
      age_4_4 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 122:33]
      age_4_4 <= thisValid_4; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[4]) begin // @[SelectPolicy.scala 127:31]
      age_4_4 <= ~age_4_4; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_4_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 120:26]
      age_4_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_4_5 <= thisValid_4; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[4]) begin // @[SelectPolicy.scala 127:31]
      age_4_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_4_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 120:26]
      age_4_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_4_6 <= thisValid_4; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[4]) begin // @[SelectPolicy.scala 127:31]
      age_4_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_4_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_4) begin // @[SelectPolicy.scala 120:26]
      age_4_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_4_7 <= thisValid_4; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[4]) begin // @[SelectPolicy.scala 127:31]
      age_4_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_5_5 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 120:26]
      age_5_5 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 122:33]
      age_5_5 <= thisValid_5; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[5]) begin // @[SelectPolicy.scala 127:31]
      age_5_5 <= ~age_5_5; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_5_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 120:26]
      age_5_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_5_6 <= thisValid_5; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[5]) begin // @[SelectPolicy.scala 127:31]
      age_5_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_5_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_5) begin // @[SelectPolicy.scala 120:26]
      age_5_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_5_7 <= thisValid_5; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[5]) begin // @[SelectPolicy.scala 127:31]
      age_5_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_6_6 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 120:26]
      age_6_6 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 122:33]
      age_6_6 <= thisValid_6; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[6]) begin // @[SelectPolicy.scala 127:31]
      age_6_6 <= ~age_6_6; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_6_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_6) begin // @[SelectPolicy.scala 120:26]
      age_6_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_6_7 <= thisValid_6; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[6]) begin // @[SelectPolicy.scala 127:31]
      age_6_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    if (reset) begin // @[SelectPolicy.scala 105:62]
      age_7_7 <= 1'h0; // @[SelectPolicy.scala 105:62]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 120:26]
      age_7_7 <= 1'h0; // @[SelectPolicy.scala 121:14]
    end else if (otherFlushed_7) begin // @[SelectPolicy.scala 122:33]
      age_7_7 <= thisValid_7; // @[SelectPolicy.scala 123:14]
    end else if (io_enq_0[7]) begin // @[SelectPolicy.scala 127:31]
      age_7_7 <= ~age_7_7; // @[SelectPolicy.scala 129:18]
    end
    io_out_REG <= {nextBest_hi_8,nextBest_lo_8}; // @[SelectPolicy.scala 139:7]
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
  age_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  age_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  age_0_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  age_0_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  age_0_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  age_0_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  age_0_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  age_0_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  age_1_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  age_1_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  age_1_3 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  age_1_4 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  age_1_5 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  age_1_6 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  age_1_7 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  age_2_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  age_2_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  age_2_4 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  age_2_5 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  age_2_6 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  age_2_7 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  age_3_3 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  age_3_4 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  age_3_5 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  age_3_6 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  age_3_7 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  age_4_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  age_4_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  age_4_6 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  age_4_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  age_5_5 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  age_5_6 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  age_5_7 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  age_6_6 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  age_6_7 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  age_7_7 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_out_REG = _RAND_36[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
