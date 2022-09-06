module StatusArray_7(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [15:0] io_isValid,
  output [15:0] io_canIssue,
  input         io_update_0_enable,
  input  [15:0] io_update_0_addr,
  input         io_update_0_data_srcState_0,
  input         io_update_0_data_srcState_1,
  input         io_update_0_data_srcState_2,
  input  [6:0]  io_update_0_data_psrc_0,
  input  [6:0]  io_update_0_data_psrc_1,
  input  [6:0]  io_update_0_data_psrc_2,
  input  [1:0]  io_update_0_data_srcType_0,
  input  [1:0]  io_update_0_data_srcType_1,
  input  [1:0]  io_update_0_data_srcType_2,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [15:0] io_update_1_addr,
  input         io_update_1_data_srcState_0,
  input         io_update_1_data_srcState_1,
  input         io_update_1_data_srcState_2,
  input  [6:0]  io_update_1_data_psrc_0,
  input  [6:0]  io_update_1_data_psrc_1,
  input  [6:0]  io_update_1_data_psrc_2,
  input  [1:0]  io_update_1_data_srcType_0,
  input  [1:0]  io_update_1_data_srcType_1,
  input  [1:0]  io_update_1_data_srcType_2,
  input         io_update_1_data_robIdx_flag,
  input  [6:0]  io_update_1_data_robIdx_value,
  input         io_wakeup_0_valid,
  input         io_wakeup_0_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_0_bits_pdest,
  input         io_wakeup_1_valid,
  input         io_wakeup_1_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_1_bits_pdest,
  input         io_wakeup_2_valid,
  input         io_wakeup_2_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_2_bits_pdest,
  input         io_wakeup_3_valid,
  input         io_wakeup_3_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_3_bits_pdest,
  input         io_wakeup_4_valid,
  input         io_wakeup_4_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_4_bits_pdest,
  input         io_wakeup_5_valid,
  input         io_wakeup_5_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_5_bits_pdest,
  input         io_wakeup_6_valid,
  input         io_wakeup_6_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_6_bits_pdest,
  output [6:0]  io_wakeupMatch_0_0,
  output [6:0]  io_wakeupMatch_0_1,
  output [6:0]  io_wakeupMatch_0_2,
  output [6:0]  io_wakeupMatch_1_0,
  output [6:0]  io_wakeupMatch_1_1,
  output [6:0]  io_wakeupMatch_1_2,
  output [6:0]  io_wakeupMatch_2_0,
  output [6:0]  io_wakeupMatch_2_1,
  output [6:0]  io_wakeupMatch_2_2,
  output [6:0]  io_wakeupMatch_3_0,
  output [6:0]  io_wakeupMatch_3_1,
  output [6:0]  io_wakeupMatch_3_2,
  output [6:0]  io_wakeupMatch_4_0,
  output [6:0]  io_wakeupMatch_4_1,
  output [6:0]  io_wakeupMatch_4_2,
  output [6:0]  io_wakeupMatch_5_0,
  output [6:0]  io_wakeupMatch_5_1,
  output [6:0]  io_wakeupMatch_5_2,
  output [6:0]  io_wakeupMatch_6_0,
  output [6:0]  io_wakeupMatch_6_1,
  output [6:0]  io_wakeupMatch_6_2,
  output [6:0]  io_wakeupMatch_7_0,
  output [6:0]  io_wakeupMatch_7_1,
  output [6:0]  io_wakeupMatch_7_2,
  output [6:0]  io_wakeupMatch_8_0,
  output [6:0]  io_wakeupMatch_8_1,
  output [6:0]  io_wakeupMatch_8_2,
  output [6:0]  io_wakeupMatch_9_0,
  output [6:0]  io_wakeupMatch_9_1,
  output [6:0]  io_wakeupMatch_9_2,
  output [6:0]  io_wakeupMatch_10_0,
  output [6:0]  io_wakeupMatch_10_1,
  output [6:0]  io_wakeupMatch_10_2,
  output [6:0]  io_wakeupMatch_11_0,
  output [6:0]  io_wakeupMatch_11_1,
  output [6:0]  io_wakeupMatch_11_2,
  output [6:0]  io_wakeupMatch_12_0,
  output [6:0]  io_wakeupMatch_12_1,
  output [6:0]  io_wakeupMatch_12_2,
  output [6:0]  io_wakeupMatch_13_0,
  output [6:0]  io_wakeupMatch_13_1,
  output [6:0]  io_wakeupMatch_13_2,
  output [6:0]  io_wakeupMatch_14_0,
  output [6:0]  io_wakeupMatch_14_1,
  output [6:0]  io_wakeupMatch_14_2,
  output [6:0]  io_wakeupMatch_15_0,
  output [6:0]  io_wakeupMatch_15_1,
  output [6:0]  io_wakeupMatch_15_2,
  input         io_issueGranted_0_valid,
  input  [15:0] io_issueGranted_0_bits,
  input         io_issueGranted_1_valid,
  input  [15:0] io_issueGranted_1_bits,
  output        io_isFirstIssue_0,
  output        io_isFirstIssue_1,
  output        io_allSrcReady_0,
  output        io_allSrcReady_1,
  input  [15:0] io_updateMidState,
  input         io_deqResp_0_valid,
  input  [15:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success,
  input         io_deqResp_1_valid,
  input  [15:0] io_deqResp_1_bits_rsMask,
  input         io_deqResp_1_bits_success
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
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
`endif // RANDOMIZE_REG_INIT
  reg  statusArray_0_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_0_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_0_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_0_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_0_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_1_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_1_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_1_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_1_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_1_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_2_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_2_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_2_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_2_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_2_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_3_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_3_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_3_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_3_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_3_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_4_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_4_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_4_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_4_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_4_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_5_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_5_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_5_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_5_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_5_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_6_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_6_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_6_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_6_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_6_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_7_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_7_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_7_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_7_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_7_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_8_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_8_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_8_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_8_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_8_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_9_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_9_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_9_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_9_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_9_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_10_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_10_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_10_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_10_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_10_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_11_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_11_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_11_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_11_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_11_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_12_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_12_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_12_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_12_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_12_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_13_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_13_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_13_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_13_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_13_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_14_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_14_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_14_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_14_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_14_isFirstIssue; // @[StatusArray.scala 106:24]
  reg  statusArray_15_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_15_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_15_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_1; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_2; // @[StatusArray.scala 106:24]
  reg  statusArray_15_midState; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_2; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_2; // @[StatusArray.scala 106:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_15_isFirstIssue; // @[StatusArray.scala 106:24]
  wire [7:0] _isFlushed_flushItself_T_1 = {statusArray_0_robIdx_flag,statusArray_0_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag = statusArray_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare = statusArray_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_2 = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 36:20]
  wire  isFlushed = statusArray_0_valid & _isFlushed_T_2; // @[StatusArray.scala 173:34]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_71 = {mask__1,mask__0}; // @[StatusArray.scala 154:11]
  wire  _T_72 = |_T_71; // @[StatusArray.scala 154:18]
  wire  _T_75 = mask__0 & io_deqResp_0_bits_success | mask__1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_0 = isFlushed | _T_72 & _T_75; // @[StatusArray.scala 175:32]
  wire  updateVec__1 = io_update_1_enable & io_update_1_addr[0]; // @[StatusArray.scala 158:57]
  wire  updateVec__0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_4 = {updateVec__1,updateVec__0}; // @[StatusArray.scala 161:16]
  wire  updateValid_0 = |_T_4; // @[StatusArray.scala 161:23]
  wire  realUpdateValid = updateValid_0 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_0_valid = ~flushedVec_0 & (realUpdateValid | statusArray_0_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_5 = {statusArray_1_robIdx_flag,statusArray_1_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_1 = statusArray_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_1 = statusArray_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_3 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_5 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_3); // @[Rob.scala 36:20]
  wire  isFlushed_1 = statusArray_1_valid & _isFlushed_T_5; // @[StatusArray.scala 173:34]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_91 = {mask_1_1,mask_1_0}; // @[StatusArray.scala 154:11]
  wire  _T_92 = |_T_91; // @[StatusArray.scala 154:18]
  wire  _T_95 = mask_1_0 & io_deqResp_0_bits_success | mask_1_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_1 = isFlushed_1 | _T_92 & _T_95; // @[StatusArray.scala 175:32]
  wire  updateVec_1_1 = io_update_1_enable & io_update_1_addr[1]; // @[StatusArray.scala 158:57]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_8 = {updateVec_1_1,updateVec_1_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_1 = |_T_8; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_1 = updateValid_1 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_1_valid = ~flushedVec_1 & (realUpdateValid_1 | statusArray_1_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_9 = {statusArray_2_robIdx_flag,statusArray_2_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_2 = statusArray_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_2 = statusArray_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_8 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_6); // @[Rob.scala 36:20]
  wire  isFlushed_2 = statusArray_2_valid & _isFlushed_T_8; // @[StatusArray.scala 173:34]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_111 = {mask_2_1,mask_2_0}; // @[StatusArray.scala 154:11]
  wire  _T_112 = |_T_111; // @[StatusArray.scala 154:18]
  wire  _T_115 = mask_2_0 & io_deqResp_0_bits_success | mask_2_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_2 = isFlushed_2 | _T_112 & _T_115; // @[StatusArray.scala 175:32]
  wire  updateVec_2_1 = io_update_1_enable & io_update_1_addr[2]; // @[StatusArray.scala 158:57]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_12 = {updateVec_2_1,updateVec_2_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_2 = |_T_12; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_2 = updateValid_2 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_2_valid = ~flushedVec_2 & (realUpdateValid_2 | statusArray_2_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_13 = {statusArray_3_robIdx_flag,statusArray_3_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_3 = statusArray_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_3 = statusArray_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_9 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_11 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_9); // @[Rob.scala 36:20]
  wire  isFlushed_3 = statusArray_3_valid & _isFlushed_T_11; // @[StatusArray.scala 173:34]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_131 = {mask_3_1,mask_3_0}; // @[StatusArray.scala 154:11]
  wire  _T_132 = |_T_131; // @[StatusArray.scala 154:18]
  wire  _T_135 = mask_3_0 & io_deqResp_0_bits_success | mask_3_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_3 = isFlushed_3 | _T_132 & _T_135; // @[StatusArray.scala 175:32]
  wire  updateVec_3_1 = io_update_1_enable & io_update_1_addr[3]; // @[StatusArray.scala 158:57]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_16 = {updateVec_3_1,updateVec_3_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_3 = |_T_16; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_3 = updateValid_3 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_3_valid = ~flushedVec_3 & (realUpdateValid_3 | statusArray_3_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_17 = {statusArray_4_robIdx_flag,statusArray_4_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_19 = _isFlushed_flushItself_T_17 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_4 = io_redirect_bits_level & _isFlushed_flushItself_T_19; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_4 = statusArray_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_4 = statusArray_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_12 = isFlushed_differentFlag_4 ^ isFlushed_compare_4; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_14 = io_redirect_valid & (isFlushed_flushItself_4 | _isFlushed_T_12); // @[Rob.scala 36:20]
  wire  isFlushed_4 = statusArray_4_valid & _isFlushed_T_14; // @[StatusArray.scala 173:34]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_151 = {mask_4_1,mask_4_0}; // @[StatusArray.scala 154:11]
  wire  _T_152 = |_T_151; // @[StatusArray.scala 154:18]
  wire  _T_155 = mask_4_0 & io_deqResp_0_bits_success | mask_4_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_4 = isFlushed_4 | _T_152 & _T_155; // @[StatusArray.scala 175:32]
  wire  updateVec_4_1 = io_update_1_enable & io_update_1_addr[4]; // @[StatusArray.scala 158:57]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_20 = {updateVec_4_1,updateVec_4_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_4 = |_T_20; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_4 = updateValid_4 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_4_valid = ~flushedVec_4 & (realUpdateValid_4 | statusArray_4_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_21 = {statusArray_5_robIdx_flag,statusArray_5_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_23 = _isFlushed_flushItself_T_21 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_5 = io_redirect_bits_level & _isFlushed_flushItself_T_23; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_5 = statusArray_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_5 = statusArray_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_15 = isFlushed_differentFlag_5 ^ isFlushed_compare_5; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_17 = io_redirect_valid & (isFlushed_flushItself_5 | _isFlushed_T_15); // @[Rob.scala 36:20]
  wire  isFlushed_5 = statusArray_5_valid & _isFlushed_T_17; // @[StatusArray.scala 173:34]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_171 = {mask_5_1,mask_5_0}; // @[StatusArray.scala 154:11]
  wire  _T_172 = |_T_171; // @[StatusArray.scala 154:18]
  wire  _T_175 = mask_5_0 & io_deqResp_0_bits_success | mask_5_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_5 = isFlushed_5 | _T_172 & _T_175; // @[StatusArray.scala 175:32]
  wire  updateVec_5_1 = io_update_1_enable & io_update_1_addr[5]; // @[StatusArray.scala 158:57]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_24 = {updateVec_5_1,updateVec_5_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_5 = |_T_24; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_5 = updateValid_5 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_5_valid = ~flushedVec_5 & (realUpdateValid_5 | statusArray_5_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_25 = {statusArray_6_robIdx_flag,statusArray_6_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_27 = _isFlushed_flushItself_T_25 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_6 = io_redirect_bits_level & _isFlushed_flushItself_T_27; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_6 = statusArray_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_6 = statusArray_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_18 = isFlushed_differentFlag_6 ^ isFlushed_compare_6; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_20 = io_redirect_valid & (isFlushed_flushItself_6 | _isFlushed_T_18); // @[Rob.scala 36:20]
  wire  isFlushed_6 = statusArray_6_valid & _isFlushed_T_20; // @[StatusArray.scala 173:34]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_191 = {mask_6_1,mask_6_0}; // @[StatusArray.scala 154:11]
  wire  _T_192 = |_T_191; // @[StatusArray.scala 154:18]
  wire  _T_195 = mask_6_0 & io_deqResp_0_bits_success | mask_6_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_6 = isFlushed_6 | _T_192 & _T_195; // @[StatusArray.scala 175:32]
  wire  updateVec_6_1 = io_update_1_enable & io_update_1_addr[6]; // @[StatusArray.scala 158:57]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_28 = {updateVec_6_1,updateVec_6_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_6 = |_T_28; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_6 = updateValid_6 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_6_valid = ~flushedVec_6 & (realUpdateValid_6 | statusArray_6_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_29 = {statusArray_7_robIdx_flag,statusArray_7_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_31 = _isFlushed_flushItself_T_29 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_7 = io_redirect_bits_level & _isFlushed_flushItself_T_31; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_7 = statusArray_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_7 = statusArray_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_21 = isFlushed_differentFlag_7 ^ isFlushed_compare_7; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_23 = io_redirect_valid & (isFlushed_flushItself_7 | _isFlushed_T_21); // @[Rob.scala 36:20]
  wire  isFlushed_7 = statusArray_7_valid & _isFlushed_T_23; // @[StatusArray.scala 173:34]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_211 = {mask_7_1,mask_7_0}; // @[StatusArray.scala 154:11]
  wire  _T_212 = |_T_211; // @[StatusArray.scala 154:18]
  wire  _T_215 = mask_7_0 & io_deqResp_0_bits_success | mask_7_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_7 = isFlushed_7 | _T_212 & _T_215; // @[StatusArray.scala 175:32]
  wire  updateVec_7_1 = io_update_1_enable & io_update_1_addr[7]; // @[StatusArray.scala 158:57]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_32 = {updateVec_7_1,updateVec_7_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_7 = |_T_32; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_7 = updateValid_7 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_7_valid = ~flushedVec_7 & (realUpdateValid_7 | statusArray_7_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_33 = {statusArray_8_robIdx_flag,statusArray_8_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_35 = _isFlushed_flushItself_T_33 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_8 = io_redirect_bits_level & _isFlushed_flushItself_T_35; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_8 = statusArray_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_8 = statusArray_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_24 = isFlushed_differentFlag_8 ^ isFlushed_compare_8; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_26 = io_redirect_valid & (isFlushed_flushItself_8 | _isFlushed_T_24); // @[Rob.scala 36:20]
  wire  isFlushed_8 = statusArray_8_valid & _isFlushed_T_26; // @[StatusArray.scala 173:34]
  wire  mask_8_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire  mask_8_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_231 = {mask_8_1,mask_8_0}; // @[StatusArray.scala 154:11]
  wire  _T_232 = |_T_231; // @[StatusArray.scala 154:18]
  wire  _T_235 = mask_8_0 & io_deqResp_0_bits_success | mask_8_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_8 = isFlushed_8 | _T_232 & _T_235; // @[StatusArray.scala 175:32]
  wire  updateVec_8_1 = io_update_1_enable & io_update_1_addr[8]; // @[StatusArray.scala 158:57]
  wire  updateVec_8_0 = io_update_0_enable & io_update_0_addr[8]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_36 = {updateVec_8_1,updateVec_8_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_8 = |_T_36; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_8 = updateValid_8 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_8_valid = ~flushedVec_8 & (realUpdateValid_8 | statusArray_8_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_37 = {statusArray_9_robIdx_flag,statusArray_9_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_39 = _isFlushed_flushItself_T_37 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_9 = io_redirect_bits_level & _isFlushed_flushItself_T_39; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_9 = statusArray_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_9 = statusArray_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_27 = isFlushed_differentFlag_9 ^ isFlushed_compare_9; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_29 = io_redirect_valid & (isFlushed_flushItself_9 | _isFlushed_T_27); // @[Rob.scala 36:20]
  wire  isFlushed_9 = statusArray_9_valid & _isFlushed_T_29; // @[StatusArray.scala 173:34]
  wire  mask_9_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire  mask_9_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_251 = {mask_9_1,mask_9_0}; // @[StatusArray.scala 154:11]
  wire  _T_252 = |_T_251; // @[StatusArray.scala 154:18]
  wire  _T_255 = mask_9_0 & io_deqResp_0_bits_success | mask_9_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_9 = isFlushed_9 | _T_252 & _T_255; // @[StatusArray.scala 175:32]
  wire  updateVec_9_1 = io_update_1_enable & io_update_1_addr[9]; // @[StatusArray.scala 158:57]
  wire  updateVec_9_0 = io_update_0_enable & io_update_0_addr[9]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_40 = {updateVec_9_1,updateVec_9_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_9 = |_T_40; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_9 = updateValid_9 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_9_valid = ~flushedVec_9 & (realUpdateValid_9 | statusArray_9_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_41 = {statusArray_10_robIdx_flag,statusArray_10_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_43 = _isFlushed_flushItself_T_41 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_10 = io_redirect_bits_level & _isFlushed_flushItself_T_43; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_10 = statusArray_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_10 = statusArray_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_30 = isFlushed_differentFlag_10 ^ isFlushed_compare_10; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_32 = io_redirect_valid & (isFlushed_flushItself_10 | _isFlushed_T_30); // @[Rob.scala 36:20]
  wire  isFlushed_10 = statusArray_10_valid & _isFlushed_T_32; // @[StatusArray.scala 173:34]
  wire  mask_10_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire  mask_10_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_271 = {mask_10_1,mask_10_0}; // @[StatusArray.scala 154:11]
  wire  _T_272 = |_T_271; // @[StatusArray.scala 154:18]
  wire  _T_275 = mask_10_0 & io_deqResp_0_bits_success | mask_10_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_10 = isFlushed_10 | _T_272 & _T_275; // @[StatusArray.scala 175:32]
  wire  updateVec_10_1 = io_update_1_enable & io_update_1_addr[10]; // @[StatusArray.scala 158:57]
  wire  updateVec_10_0 = io_update_0_enable & io_update_0_addr[10]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_44 = {updateVec_10_1,updateVec_10_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_10 = |_T_44; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_10 = updateValid_10 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_10_valid = ~flushedVec_10 & (realUpdateValid_10 | statusArray_10_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_45 = {statusArray_11_robIdx_flag,statusArray_11_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_47 = _isFlushed_flushItself_T_45 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_11 = io_redirect_bits_level & _isFlushed_flushItself_T_47; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_11 = statusArray_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_11 = statusArray_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_33 = isFlushed_differentFlag_11 ^ isFlushed_compare_11; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_35 = io_redirect_valid & (isFlushed_flushItself_11 | _isFlushed_T_33); // @[Rob.scala 36:20]
  wire  isFlushed_11 = statusArray_11_valid & _isFlushed_T_35; // @[StatusArray.scala 173:34]
  wire  mask_11_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire  mask_11_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_291 = {mask_11_1,mask_11_0}; // @[StatusArray.scala 154:11]
  wire  _T_292 = |_T_291; // @[StatusArray.scala 154:18]
  wire  _T_295 = mask_11_0 & io_deqResp_0_bits_success | mask_11_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_11 = isFlushed_11 | _T_292 & _T_295; // @[StatusArray.scala 175:32]
  wire  updateVec_11_1 = io_update_1_enable & io_update_1_addr[11]; // @[StatusArray.scala 158:57]
  wire  updateVec_11_0 = io_update_0_enable & io_update_0_addr[11]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_48 = {updateVec_11_1,updateVec_11_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_11 = |_T_48; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_11 = updateValid_11 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_11_valid = ~flushedVec_11 & (realUpdateValid_11 | statusArray_11_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_49 = {statusArray_12_robIdx_flag,statusArray_12_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_51 = _isFlushed_flushItself_T_49 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_12 = io_redirect_bits_level & _isFlushed_flushItself_T_51; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_12 = statusArray_12_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_12 = statusArray_12_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_36 = isFlushed_differentFlag_12 ^ isFlushed_compare_12; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_38 = io_redirect_valid & (isFlushed_flushItself_12 | _isFlushed_T_36); // @[Rob.scala 36:20]
  wire  isFlushed_12 = statusArray_12_valid & _isFlushed_T_38; // @[StatusArray.scala 173:34]
  wire  mask_12_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire  mask_12_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_311 = {mask_12_1,mask_12_0}; // @[StatusArray.scala 154:11]
  wire  _T_312 = |_T_311; // @[StatusArray.scala 154:18]
  wire  _T_315 = mask_12_0 & io_deqResp_0_bits_success | mask_12_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_12 = isFlushed_12 | _T_312 & _T_315; // @[StatusArray.scala 175:32]
  wire  updateVec_12_1 = io_update_1_enable & io_update_1_addr[12]; // @[StatusArray.scala 158:57]
  wire  updateVec_12_0 = io_update_0_enable & io_update_0_addr[12]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_52 = {updateVec_12_1,updateVec_12_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_12 = |_T_52; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_12 = updateValid_12 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_12_valid = ~flushedVec_12 & (realUpdateValid_12 | statusArray_12_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_53 = {statusArray_13_robIdx_flag,statusArray_13_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_55 = _isFlushed_flushItself_T_53 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_13 = io_redirect_bits_level & _isFlushed_flushItself_T_55; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_13 = statusArray_13_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_13 = statusArray_13_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_39 = isFlushed_differentFlag_13 ^ isFlushed_compare_13; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_41 = io_redirect_valid & (isFlushed_flushItself_13 | _isFlushed_T_39); // @[Rob.scala 36:20]
  wire  isFlushed_13 = statusArray_13_valid & _isFlushed_T_41; // @[StatusArray.scala 173:34]
  wire  mask_13_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire  mask_13_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_331 = {mask_13_1,mask_13_0}; // @[StatusArray.scala 154:11]
  wire  _T_332 = |_T_331; // @[StatusArray.scala 154:18]
  wire  _T_335 = mask_13_0 & io_deqResp_0_bits_success | mask_13_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_13 = isFlushed_13 | _T_332 & _T_335; // @[StatusArray.scala 175:32]
  wire  updateVec_13_1 = io_update_1_enable & io_update_1_addr[13]; // @[StatusArray.scala 158:57]
  wire  updateVec_13_0 = io_update_0_enable & io_update_0_addr[13]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_56 = {updateVec_13_1,updateVec_13_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_13 = |_T_56; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_13 = updateValid_13 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_13_valid = ~flushedVec_13 & (realUpdateValid_13 | statusArray_13_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_57 = {statusArray_14_robIdx_flag,statusArray_14_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_59 = _isFlushed_flushItself_T_57 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_14 = io_redirect_bits_level & _isFlushed_flushItself_T_59; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_14 = statusArray_14_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_14 = statusArray_14_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_42 = isFlushed_differentFlag_14 ^ isFlushed_compare_14; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_44 = io_redirect_valid & (isFlushed_flushItself_14 | _isFlushed_T_42); // @[Rob.scala 36:20]
  wire  isFlushed_14 = statusArray_14_valid & _isFlushed_T_44; // @[StatusArray.scala 173:34]
  wire  mask_14_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire  mask_14_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_351 = {mask_14_1,mask_14_0}; // @[StatusArray.scala 154:11]
  wire  _T_352 = |_T_351; // @[StatusArray.scala 154:18]
  wire  _T_355 = mask_14_0 & io_deqResp_0_bits_success | mask_14_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_14 = isFlushed_14 | _T_352 & _T_355; // @[StatusArray.scala 175:32]
  wire  updateVec_14_1 = io_update_1_enable & io_update_1_addr[14]; // @[StatusArray.scala 158:57]
  wire  updateVec_14_0 = io_update_0_enable & io_update_0_addr[14]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_60 = {updateVec_14_1,updateVec_14_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_14 = |_T_60; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_14 = updateValid_14 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_14_valid = ~flushedVec_14 & (realUpdateValid_14 | statusArray_14_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_61 = {statusArray_15_robIdx_flag,statusArray_15_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_63 = _isFlushed_flushItself_T_61 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_15 = io_redirect_bits_level & _isFlushed_flushItself_T_63; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_15 = statusArray_15_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_15 = statusArray_15_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_45 = isFlushed_differentFlag_15 ^ isFlushed_compare_15; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_47 = io_redirect_valid & (isFlushed_flushItself_15 | _isFlushed_T_45); // @[Rob.scala 36:20]
  wire  isFlushed_15 = statusArray_15_valid & _isFlushed_T_47; // @[StatusArray.scala 173:34]
  wire  mask_15_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire  mask_15_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_371 = {mask_15_1,mask_15_0}; // @[StatusArray.scala 154:11]
  wire  _T_372 = |_T_371; // @[StatusArray.scala 154:18]
  wire  _T_375 = mask_15_0 & io_deqResp_0_bits_success | mask_15_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_15 = isFlushed_15 | _T_372 & _T_375; // @[StatusArray.scala 175:32]
  wire  updateVec_15_1 = io_update_1_enable & io_update_1_addr[15]; // @[StatusArray.scala 158:57]
  wire  updateVec_15_0 = io_update_0_enable & io_update_0_addr[15]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_64 = {updateVec_15_1,updateVec_15_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_15 = |_T_64; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_15 = updateValid_15 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_15_valid = ~flushedVec_15 & (realUpdateValid_15 | statusArray_15_valid); // @[StatusArray.scala 177:40]
  wire  readyVec_midStateReady = statusArray_0_srcState_2 & statusArray_0_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_1 = statusArray_1_srcState_2 & statusArray_1_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_2 = statusArray_2_srcState_2 & statusArray_2_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_3 = statusArray_3_srcState_2 & statusArray_3_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_4 = statusArray_4_srcState_2 & statusArray_4_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_5 = statusArray_5_srcState_2 & statusArray_5_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_6 = statusArray_6_srcState_2 & statusArray_6_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_7 = statusArray_7_srcState_2 & statusArray_7_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_8 = statusArray_8_srcState_2 & statusArray_8_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_9 = statusArray_9_srcState_2 & statusArray_9_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_10 = statusArray_10_srcState_2 & statusArray_10_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_11 = statusArray_11_srcState_2 & statusArray_11_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_12 = statusArray_12_srcState_2 & statusArray_12_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_13 = statusArray_13_srcState_2 & statusArray_13_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_14 = statusArray_14_srcState_2 & statusArray_14_midState; // @[StatusArray.scala 64:63]
  wire  readyVec_midStateReady_15 = statusArray_15_srcState_2 & statusArray_15_midState; // @[StatusArray.scala 64:63]
  wire  _hasIssued_T_3 = io_issueGranted_1_valid & io_issueGranted_1_bits[0]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_1 = io_issueGranted_0_valid & io_issueGranted_0_bits[0]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_4 = {_hasIssued_T_3,_hasIssued_T_1}; // @[StatusArray.scala 183:83]
  wire  hasIssued = |_hasIssued_T_4; // @[StatusArray.scala 183:90]
  wire  deqNotGranted = _T_72 & ~_T_75; // @[StatusArray.scala 184:38]
  wire  noCredit = statusArray_0_valid & statusArray_0_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled = statusArray_0_scheduled & ~deqNotGranted & ~noCredit; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_0_scheduled = updateValid_0 ? 1'h0 : hasIssued | keepScheduled; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond = ~statusArrayNext_0_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_48 = updateVec__0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_49 = updateVec__1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_2 = _updateStatus_T_48 | _updateStatus_T_49; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_2 = updateValid_0 ? updateVal_0_psrc_2 : statusArray_0_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_699 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_699 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_685 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_685 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_671 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_671 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_657 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_657 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_643 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_643 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_629 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_629 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_615 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_615 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_2 = {stateMatchVec_6_2,stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,
    stateMatchVec_2_2,stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_2 = updateVec__0 & io_update_0_data_srcState_2 | updateVec__1 & io_update_1_data_srcState_2
    ; // @[Mux.scala 27:73]
  wire  _T_729 = updateValid_0 ? updateVal_0_srcState_2 : statusArray_0_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_2 = stateWakeupEn_2 | _T_729; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_0_midState = ~updateValid_0 & (io_updateMidState[0] | statusArray_0_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady = statusArrayNext_0_srcState_2 & statusArrayNext_0_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_45 = updateVec__0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_46 = updateVec__1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_1 = _updateStatus_T_45 | _updateStatus_T_46; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_1 = updateValid_0 ? updateVal_0_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_588 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_588 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_574 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_574 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_560 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_560 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_546 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_546 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_532 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_532 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_518 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_518 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_504 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_504 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_1 = {stateMatchVec_6_1,stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,
    stateMatchVec_2_1,stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_1 = updateVec__0 & io_update_0_data_srcState_1 | updateVec__1 & io_update_1_data_srcState_1
    ; // @[Mux.scala 27:73]
  wire  _T_727 = updateValid_0 ? updateVal_0_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_727; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_42 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_43 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_42 | _updateStatus_T_43; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_477 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_477 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_463 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_463 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_449 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_449 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_435 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_435 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_421 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_421 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_407 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_407 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_393 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_393 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T = {stateMatchVec_6,stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,
    stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_725 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_725; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_0 = &_readyVecNext_T & readyVecNext_scheduledCond | readyVecNext_midStateReady; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_8 = io_issueGranted_1_valid & io_issueGranted_1_bits[1]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_6 = io_issueGranted_0_valid & io_issueGranted_0_bits[1]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_9 = {_hasIssued_T_8,_hasIssued_T_6}; // @[StatusArray.scala 183:83]
  wire  hasIssued_1 = |_hasIssued_T_9; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_1 = _T_92 & ~_T_95; // @[StatusArray.scala 184:38]
  wire  noCredit_1 = statusArray_1_valid & statusArray_1_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_1 = statusArray_1_scheduled & ~deqNotGranted_1 & ~noCredit_1; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_1_scheduled = updateValid_1 ? 1'h0 : hasIssued_1 | keepScheduled_1; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_1 = ~statusArrayNext_1_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_123 = updateVec_1_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_124 = updateVec_1_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_2 = _updateStatus_T_123 | _updateStatus_T_124; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_2 = updateValid_1 ? updateVal_1_psrc_2 : statusArray_1_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_1048 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_1048 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1034 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_1034 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1020 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_1020 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1006 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_1006 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_992 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_992 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_978 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_978 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_964 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_964 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_5 = {stateMatchVec_6_5,stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,
    stateMatchVec_2_5,stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_1 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_2 = updateVec_1_0 & io_update_0_data_srcState_2 | updateVec_1_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_1078 = updateValid_1 ? updateVal_1_srcState_2 : statusArray_1_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_2 = stateWakeupEn_2_1 | _T_1078; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_1_midState = ~updateValid_1 & (io_updateMidState[1] | statusArray_1_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_1 = statusArrayNext_1_srcState_2 & statusArrayNext_1_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_120 = updateVec_1_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_121 = updateVec_1_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_1 = _updateStatus_T_120 | _updateStatus_T_121; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_1 = updateValid_1 ? updateVal_1_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_937 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_937 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_923 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_923 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_909 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_909 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_895 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_895 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_881 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_881 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_867 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_867 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_853 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_853 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_4 = {stateMatchVec_6_4,stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,
    stateMatchVec_2_4,stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_1 = updateVec_1_0 & io_update_0_data_srcState_1 | updateVec_1_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1076 = updateValid_1 ? updateVal_1_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_1076; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_117 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_118 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_117 | _updateStatus_T_118; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_826 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_826 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_812 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_812 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_798 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_798 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_784 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_784 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_770 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_770 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_756 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_756 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_742 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_742 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_3 = {stateMatchVec_6_3,stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,
    stateMatchVec_2_3,stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1074 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1074; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5 & readyVecNext_scheduledCond_1 | readyVecNext_midStateReady_1; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_13 = io_issueGranted_1_valid & io_issueGranted_1_bits[2]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_11 = io_issueGranted_0_valid & io_issueGranted_0_bits[2]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_14 = {_hasIssued_T_13,_hasIssued_T_11}; // @[StatusArray.scala 183:83]
  wire  hasIssued_2 = |_hasIssued_T_14; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_2 = _T_112 & ~_T_115; // @[StatusArray.scala 184:38]
  wire  noCredit_2 = statusArray_2_valid & statusArray_2_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_2 = statusArray_2_scheduled & ~deqNotGranted_2 & ~noCredit_2; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_2_scheduled = updateValid_2 ? 1'h0 : hasIssued_2 | keepScheduled_2; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_2 = ~statusArrayNext_2_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_198 = updateVec_2_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_199 = updateVec_2_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_2 = _updateStatus_T_198 | _updateStatus_T_199; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_2 = updateValid_2 ? updateVal_2_psrc_2 : statusArray_2_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_1397 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_1397 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1383 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_1383 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1369 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_1369 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1355 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_1355 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1341 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_1341 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1327 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_1327 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1313 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_1313 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_8 = {stateMatchVec_6_8,stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,
    stateMatchVec_2_8,stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_2 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_2 = updateVec_2_0 & io_update_0_data_srcState_2 | updateVec_2_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_1427 = updateValid_2 ? updateVal_2_srcState_2 : statusArray_2_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_2 = stateWakeupEn_2_2 | _T_1427; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_2_midState = ~updateValid_2 & (io_updateMidState[2] | statusArray_2_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_2 = statusArrayNext_2_srcState_2 & statusArrayNext_2_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_195 = updateVec_2_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_196 = updateVec_2_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_1 = _updateStatus_T_195 | _updateStatus_T_196; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_1 = updateValid_2 ? updateVal_2_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1286 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_1286 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1272 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_1272 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1258 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_1258 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1244 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_1244 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1230 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_1230 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1216 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_1216 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1202 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_1202 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_7 = {stateMatchVec_6_7,stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,
    stateMatchVec_2_7,stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_1 = updateVec_2_0 & io_update_0_data_srcState_1 | updateVec_2_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1425 = updateValid_2 ? updateVal_2_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_1425; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_192 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_193 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_192 | _updateStatus_T_193; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1175 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_1175 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1161 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_1161 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1147 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_1147 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1133 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_1133 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1119 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_1119 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1105 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_1105 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1091 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_1091 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_6 = {stateMatchVec_6_6,stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,
    stateMatchVec_2_6,stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1423 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1423; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10 & readyVecNext_scheduledCond_2 | readyVecNext_midStateReady_2; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_18 = io_issueGranted_1_valid & io_issueGranted_1_bits[3]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_16 = io_issueGranted_0_valid & io_issueGranted_0_bits[3]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_19 = {_hasIssued_T_18,_hasIssued_T_16}; // @[StatusArray.scala 183:83]
  wire  hasIssued_3 = |_hasIssued_T_19; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_3 = _T_132 & ~_T_135; // @[StatusArray.scala 184:38]
  wire  noCredit_3 = statusArray_3_valid & statusArray_3_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_3 = statusArray_3_scheduled & ~deqNotGranted_3 & ~noCredit_3; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_3_scheduled = updateValid_3 ? 1'h0 : hasIssued_3 | keepScheduled_3; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_3 = ~statusArrayNext_3_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_273 = updateVec_3_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_274 = updateVec_3_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_2 = _updateStatus_T_273 | _updateStatus_T_274; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_2 = updateValid_3 ? updateVal_3_psrc_2 : statusArray_3_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_1746 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_1746 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1732 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_1732 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1718 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_1718 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1704 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_1704 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1690 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_1690 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1676 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_1676 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1662 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_1662 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_11 = {stateMatchVec_6_11,stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,
    stateMatchVec_2_11,stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_3 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_2 = updateVec_3_0 & io_update_0_data_srcState_2 | updateVec_3_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_1776 = updateValid_3 ? updateVal_3_srcState_2 : statusArray_3_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_2 = stateWakeupEn_2_3 | _T_1776; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_3_midState = ~updateValid_3 & (io_updateMidState[3] | statusArray_3_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_3 = statusArrayNext_3_srcState_2 & statusArrayNext_3_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_270 = updateVec_3_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_271 = updateVec_3_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_1 = _updateStatus_T_270 | _updateStatus_T_271; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_1 = updateValid_3 ? updateVal_3_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1635 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_1635 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1621 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_1621 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1607 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_1607 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1593 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_1593 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1579 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_1579 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1565 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_1565 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1551 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_1551 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_10 = {stateMatchVec_6_10,stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,
    stateMatchVec_2_10,stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_1 = updateVec_3_0 & io_update_0_data_srcState_1 | updateVec_3_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1774 = updateValid_3 ? updateVal_3_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_1774; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_267 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_268 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_267 | _updateStatus_T_268; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1524 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_1524 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1510 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_1510 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1496 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_1496 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1482 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_1482 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1468 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_1468 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1454 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_1454 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1440 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_1440 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_9 = {stateMatchVec_6_9,stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,
    stateMatchVec_2_9,stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1772 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1772; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15 & readyVecNext_scheduledCond_3 | readyVecNext_midStateReady_3; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_23 = io_issueGranted_1_valid & io_issueGranted_1_bits[4]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_21 = io_issueGranted_0_valid & io_issueGranted_0_bits[4]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_24 = {_hasIssued_T_23,_hasIssued_T_21}; // @[StatusArray.scala 183:83]
  wire  hasIssued_4 = |_hasIssued_T_24; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_4 = _T_152 & ~_T_155; // @[StatusArray.scala 184:38]
  wire  noCredit_4 = statusArray_4_valid & statusArray_4_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_4 = statusArray_4_scheduled & ~deqNotGranted_4 & ~noCredit_4; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_4_scheduled = updateValid_4 ? 1'h0 : hasIssued_4 | keepScheduled_4; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_4 = ~statusArrayNext_4_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_348 = updateVec_4_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_349 = updateVec_4_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_2 = _updateStatus_T_348 | _updateStatus_T_349; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_2 = updateValid_4 ? updateVal_4_psrc_2 : statusArray_4_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_2095 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_2095 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2081 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_2081 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2067 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_2067 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2053 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_2053 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2039 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_2039 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2025 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_2025 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2011 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_2011 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_14 = {stateMatchVec_6_14,stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,
    stateMatchVec_2_14,stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_4 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_2 = updateVec_4_0 & io_update_0_data_srcState_2 | updateVec_4_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_2125 = updateValid_4 ? updateVal_4_srcState_2 : statusArray_4_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_2 = stateWakeupEn_2_4 | _T_2125; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_4_midState = ~updateValid_4 & (io_updateMidState[4] | statusArray_4_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_4 = statusArrayNext_4_srcState_2 & statusArrayNext_4_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_345 = updateVec_4_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_346 = updateVec_4_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_1 = _updateStatus_T_345 | _updateStatus_T_346; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_1 = updateValid_4 ? updateVal_4_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1984 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_1984 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1970 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_1970 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1956 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_1956 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1942 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_1942 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1928 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_1928 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1914 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_1914 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1900 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_1900 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_13 = {stateMatchVec_6_13,stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,
    stateMatchVec_2_13,stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_1 = updateVec_4_0 & io_update_0_data_srcState_1 | updateVec_4_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2123 = updateValid_4 ? updateVal_4_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_2123; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_342 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_343 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_342 | _updateStatus_T_343; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1873 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_1873 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1859 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_1859 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1845 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_1845 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1831 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_1831 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1817 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_1817 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1803 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_1803 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1789 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_1789 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_12 = {stateMatchVec_6_12,stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,
    stateMatchVec_2_12,stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2121 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_2121; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20 & readyVecNext_scheduledCond_4 | readyVecNext_midStateReady_4; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_28 = io_issueGranted_1_valid & io_issueGranted_1_bits[5]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_26 = io_issueGranted_0_valid & io_issueGranted_0_bits[5]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_29 = {_hasIssued_T_28,_hasIssued_T_26}; // @[StatusArray.scala 183:83]
  wire  hasIssued_5 = |_hasIssued_T_29; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_5 = _T_172 & ~_T_175; // @[StatusArray.scala 184:38]
  wire  noCredit_5 = statusArray_5_valid & statusArray_5_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_5 = statusArray_5_scheduled & ~deqNotGranted_5 & ~noCredit_5; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_5_scheduled = updateValid_5 ? 1'h0 : hasIssued_5 | keepScheduled_5; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_5 = ~statusArrayNext_5_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_423 = updateVec_5_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_424 = updateVec_5_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_2 = _updateStatus_T_423 | _updateStatus_T_424; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_2 = updateValid_5 ? updateVal_5_psrc_2 : statusArray_5_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_2444 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_17 = _T_2444 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2430 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_17 = _T_2430 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2416 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_17 = _T_2416 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2402 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_17 = _T_2402 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2388 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_17 = _T_2388 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2374 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_17 = _T_2374 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2360 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_17 = _T_2360 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_17 = {stateMatchVec_6_17,stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,
    stateMatchVec_2_17,stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_5 = |_stateMatch_T_17; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_2 = updateVec_5_0 & io_update_0_data_srcState_2 | updateVec_5_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_2474 = updateValid_5 ? updateVal_5_srcState_2 : statusArray_5_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_2 = stateWakeupEn_2_5 | _T_2474; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_5_midState = ~updateValid_5 & (io_updateMidState[5] | statusArray_5_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_5 = statusArrayNext_5_srcState_2 & statusArrayNext_5_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_420 = updateVec_5_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_421 = updateVec_5_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_1 = _updateStatus_T_420 | _updateStatus_T_421; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_1 = updateValid_5 ? updateVal_5_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2333 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_16 = _T_2333 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2319 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_16 = _T_2319 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2305 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_16 = _T_2305 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2291 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_16 = _T_2291 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2277 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_16 = _T_2277 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2263 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_16 = _T_2263 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2249 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_16 = _T_2249 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_16 = {stateMatchVec_6_16,stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,
    stateMatchVec_2_16,stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_16; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_1 = updateVec_5_0 & io_update_0_data_srcState_1 | updateVec_5_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2472 = updateValid_5 ? updateVal_5_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_2472; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_417 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_418 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_417 | _updateStatus_T_418; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2222 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_2222 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2208 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_2208 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2194 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_2194 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2180 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_2180 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2166 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_2166 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2152 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_2152 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2138 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_2138 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_15 = {stateMatchVec_6_15,stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,
    stateMatchVec_2_15,stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2470 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_2470; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25 & readyVecNext_scheduledCond_5 | readyVecNext_midStateReady_5; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_33 = io_issueGranted_1_valid & io_issueGranted_1_bits[6]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_31 = io_issueGranted_0_valid & io_issueGranted_0_bits[6]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_34 = {_hasIssued_T_33,_hasIssued_T_31}; // @[StatusArray.scala 183:83]
  wire  hasIssued_6 = |_hasIssued_T_34; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_6 = _T_192 & ~_T_195; // @[StatusArray.scala 184:38]
  wire  noCredit_6 = statusArray_6_valid & statusArray_6_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_6 = statusArray_6_scheduled & ~deqNotGranted_6 & ~noCredit_6; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_6_scheduled = updateValid_6 ? 1'h0 : hasIssued_6 | keepScheduled_6; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_6 = ~statusArrayNext_6_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_498 = updateVec_6_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_499 = updateVec_6_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_2 = _updateStatus_T_498 | _updateStatus_T_499; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_2 = updateValid_6 ? updateVal_6_psrc_2 : statusArray_6_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_2793 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_20 = _T_2793 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2779 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_20 = _T_2779 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2765 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_20 = _T_2765 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2751 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_20 = _T_2751 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2737 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_20 = _T_2737 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2723 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_20 = _T_2723 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2709 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_20 = _T_2709 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_20 = {stateMatchVec_6_20,stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,
    stateMatchVec_2_20,stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_6 = |_stateMatch_T_20; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_2 = updateVec_6_0 & io_update_0_data_srcState_2 | updateVec_6_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_2823 = updateValid_6 ? updateVal_6_srcState_2 : statusArray_6_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_2 = stateWakeupEn_2_6 | _T_2823; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_6_midState = ~updateValid_6 & (io_updateMidState[6] | statusArray_6_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_6 = statusArrayNext_6_srcState_2 & statusArrayNext_6_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_495 = updateVec_6_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_496 = updateVec_6_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_1 = _updateStatus_T_495 | _updateStatus_T_496; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_1 = updateValid_6 ? updateVal_6_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2682 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_19 = _T_2682 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2668 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_19 = _T_2668 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2654 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_19 = _T_2654 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2640 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_19 = _T_2640 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2626 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_19 = _T_2626 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2612 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_19 = _T_2612 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2598 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_19 = _T_2598 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_19 = {stateMatchVec_6_19,stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,
    stateMatchVec_2_19,stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_19; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_1 = updateVec_6_0 & io_update_0_data_srcState_1 | updateVec_6_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2821 = updateValid_6 ? updateVal_6_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_2821; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_492 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_493 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_492 | _updateStatus_T_493; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2571 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_18 = _T_2571 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2557 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_18 = _T_2557 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2543 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_18 = _T_2543 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2529 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_18 = _T_2529 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2515 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_18 = _T_2515 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2501 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_18 = _T_2501 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2487 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_18 = _T_2487 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_18 = {stateMatchVec_6_18,stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,
    stateMatchVec_2_18,stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_18; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2819 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_2819; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30 & readyVecNext_scheduledCond_6 | readyVecNext_midStateReady_6; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_38 = io_issueGranted_1_valid & io_issueGranted_1_bits[7]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_36 = io_issueGranted_0_valid & io_issueGranted_0_bits[7]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_39 = {_hasIssued_T_38,_hasIssued_T_36}; // @[StatusArray.scala 183:83]
  wire  hasIssued_7 = |_hasIssued_T_39; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_7 = _T_212 & ~_T_215; // @[StatusArray.scala 184:38]
  wire  noCredit_7 = statusArray_7_valid & statusArray_7_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_7 = statusArray_7_scheduled & ~deqNotGranted_7 & ~noCredit_7; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_7_scheduled = updateValid_7 ? 1'h0 : hasIssued_7 | keepScheduled_7; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_7 = ~statusArrayNext_7_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_573 = updateVec_7_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_574 = updateVec_7_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_2 = _updateStatus_T_573 | _updateStatus_T_574; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_2 = updateValid_7 ? updateVal_7_psrc_2 : statusArray_7_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_3142 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_23 = _T_3142 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3128 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_23 = _T_3128 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3114 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_23 = _T_3114 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3100 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_23 = _T_3100 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3086 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_23 = _T_3086 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3072 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_23 = _T_3072 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3058 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_23 = _T_3058 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_23 = {stateMatchVec_6_23,stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,
    stateMatchVec_2_23,stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_7 = |_stateMatch_T_23; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_2 = updateVec_7_0 & io_update_0_data_srcState_2 | updateVec_7_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_3172 = updateValid_7 ? updateVal_7_srcState_2 : statusArray_7_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_2 = stateWakeupEn_2_7 | _T_3172; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_7_midState = ~updateValid_7 & (io_updateMidState[7] | statusArray_7_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_7 = statusArrayNext_7_srcState_2 & statusArrayNext_7_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_570 = updateVec_7_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_571 = updateVec_7_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_1 = _updateStatus_T_570 | _updateStatus_T_571; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_1 = updateValid_7 ? updateVal_7_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3031 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_22 = _T_3031 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3017 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_22 = _T_3017 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3003 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_22 = _T_3003 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2989 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_22 = _T_2989 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2975 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_22 = _T_2975 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2961 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_22 = _T_2961 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2947 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_22 = _T_2947 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_22 = {stateMatchVec_6_22,stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,
    stateMatchVec_2_22,stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_22; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_1 = updateVec_7_0 & io_update_0_data_srcState_1 | updateVec_7_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3170 = updateValid_7 ? updateVal_7_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_3170; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_567 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_568 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_567 | _updateStatus_T_568; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2920 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_21 = _T_2920 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2906 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_21 = _T_2906 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2892 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_21 = _T_2892 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2878 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_21 = _T_2878 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2864 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_21 = _T_2864 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2850 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_21 = _T_2850 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_2836 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_21 = _T_2836 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_21 = {stateMatchVec_6_21,stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,
    stateMatchVec_2_21,stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_21; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3168 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_3168; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35 & readyVecNext_scheduledCond_7 | readyVecNext_midStateReady_7; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_43 = io_issueGranted_1_valid & io_issueGranted_1_bits[8]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_41 = io_issueGranted_0_valid & io_issueGranted_0_bits[8]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_44 = {_hasIssued_T_43,_hasIssued_T_41}; // @[StatusArray.scala 183:83]
  wire  hasIssued_8 = |_hasIssued_T_44; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_8 = _T_232 & ~_T_235; // @[StatusArray.scala 184:38]
  wire  noCredit_8 = statusArray_8_valid & statusArray_8_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_8 = statusArray_8_scheduled & ~deqNotGranted_8 & ~noCredit_8; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_8_scheduled = updateValid_8 ? 1'h0 : hasIssued_8 | keepScheduled_8; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_8 = ~statusArrayNext_8_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_648 = updateVec_8_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_649 = updateVec_8_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_2 = _updateStatus_T_648 | _updateStatus_T_649; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_2 = updateValid_8 ? updateVal_8_psrc_2 : statusArray_8_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_3491 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_26 = _T_3491 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3477 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_26 = _T_3477 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3463 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_26 = _T_3463 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3449 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_26 = _T_3449 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3435 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_26 = _T_3435 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3421 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_26 = _T_3421 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3407 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_26 = _T_3407 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_26 = {stateMatchVec_6_26,stateMatchVec_5_26,stateMatchVec_4_26,stateMatchVec_3_26,
    stateMatchVec_2_26,stateMatchVec_1_26,stateMatchVec_0_26}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_8 = |_stateMatch_T_26; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_2 = updateVec_8_0 & io_update_0_data_srcState_2 | updateVec_8_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_3521 = updateValid_8 ? updateVal_8_srcState_2 : statusArray_8_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_2 = stateWakeupEn_2_8 | _T_3521; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_8_midState = ~updateValid_8 & (io_updateMidState[8] | statusArray_8_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_8 = statusArrayNext_8_srcState_2 & statusArrayNext_8_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_645 = updateVec_8_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_646 = updateVec_8_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_1 = _updateStatus_T_645 | _updateStatus_T_646; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_1 = updateValid_8 ? updateVal_8_psrc_1 : statusArray_8_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3380 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_25 = _T_3380 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3366 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_25 = _T_3366 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3352 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_25 = _T_3352 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3338 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_25 = _T_3338 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3324 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_25 = _T_3324 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3310 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_25 = _T_3310 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3296 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_25 = _T_3296 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_25 = {stateMatchVec_6_25,stateMatchVec_5_25,stateMatchVec_4_25,stateMatchVec_3_25,
    stateMatchVec_2_25,stateMatchVec_1_25,stateMatchVec_0_25}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_8 = |_stateMatch_T_25; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_1 = updateVec_8_0 & io_update_0_data_srcState_1 | updateVec_8_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3519 = updateValid_8 ? updateVal_8_srcState_1 : statusArray_8_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_1 = stateWakeupEn_1_8 | _T_3519; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_642 = updateVec_8_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_643 = updateVec_8_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_0 = _updateStatus_T_642 | _updateStatus_T_643; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3269 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_24 = _T_3269 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3255 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_24 = _T_3255 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3241 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_24 = _T_3241 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3227 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_24 = _T_3227 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3213 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_24 = _T_3213 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3199 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_24 = _T_3199 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3185 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_24 = _T_3185 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_24 = {stateMatchVec_6_24,stateMatchVec_5_24,stateMatchVec_4_24,stateMatchVec_3_24,
    stateMatchVec_2_24,stateMatchVec_1_24,stateMatchVec_0_24}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_24; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3517 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_3517; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_40 = {statusArrayNext_8_srcState_1,statusArrayNext_8_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_8 = &_readyVecNext_T_40 & readyVecNext_scheduledCond_8 | readyVecNext_midStateReady_8; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_48 = io_issueGranted_1_valid & io_issueGranted_1_bits[9]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_46 = io_issueGranted_0_valid & io_issueGranted_0_bits[9]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_49 = {_hasIssued_T_48,_hasIssued_T_46}; // @[StatusArray.scala 183:83]
  wire  hasIssued_9 = |_hasIssued_T_49; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_9 = _T_252 & ~_T_255; // @[StatusArray.scala 184:38]
  wire  noCredit_9 = statusArray_9_valid & statusArray_9_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_9 = statusArray_9_scheduled & ~deqNotGranted_9 & ~noCredit_9; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_9_scheduled = updateValid_9 ? 1'h0 : hasIssued_9 | keepScheduled_9; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_9 = ~statusArrayNext_9_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_723 = updateVec_9_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_724 = updateVec_9_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_2 = _updateStatus_T_723 | _updateStatus_T_724; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_2 = updateValid_9 ? updateVal_9_psrc_2 : statusArray_9_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_3840 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_29 = _T_3840 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3826 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_29 = _T_3826 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3812 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_29 = _T_3812 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3798 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_29 = _T_3798 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3784 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_29 = _T_3784 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3770 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_29 = _T_3770 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3756 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_29 = _T_3756 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_29 = {stateMatchVec_6_29,stateMatchVec_5_29,stateMatchVec_4_29,stateMatchVec_3_29,
    stateMatchVec_2_29,stateMatchVec_1_29,stateMatchVec_0_29}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_9 = |_stateMatch_T_29; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_2 = updateVec_9_0 & io_update_0_data_srcState_2 | updateVec_9_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_3870 = updateValid_9 ? updateVal_9_srcState_2 : statusArray_9_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_2 = stateWakeupEn_2_9 | _T_3870; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_9_midState = ~updateValid_9 & (io_updateMidState[9] | statusArray_9_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_9 = statusArrayNext_9_srcState_2 & statusArrayNext_9_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_720 = updateVec_9_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_721 = updateVec_9_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_1 = _updateStatus_T_720 | _updateStatus_T_721; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_1 = updateValid_9 ? updateVal_9_psrc_1 : statusArray_9_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3729 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_28 = _T_3729 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3715 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_28 = _T_3715 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3701 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_28 = _T_3701 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3687 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_28 = _T_3687 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3673 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_28 = _T_3673 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3659 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_28 = _T_3659 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3645 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_28 = _T_3645 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_28 = {stateMatchVec_6_28,stateMatchVec_5_28,stateMatchVec_4_28,stateMatchVec_3_28,
    stateMatchVec_2_28,stateMatchVec_1_28,stateMatchVec_0_28}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_9 = |_stateMatch_T_28; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_1 = updateVec_9_0 & io_update_0_data_srcState_1 | updateVec_9_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3868 = updateValid_9 ? updateVal_9_srcState_1 : statusArray_9_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_1 = stateWakeupEn_1_9 | _T_3868; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_717 = updateVec_9_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_718 = updateVec_9_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_0 = _updateStatus_T_717 | _updateStatus_T_718; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3618 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_27 = _T_3618 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3604 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_27 = _T_3604 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3590 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_27 = _T_3590 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3576 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_27 = _T_3576 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3562 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_27 = _T_3562 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3548 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_27 = _T_3548 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3534 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_27 = _T_3534 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_27 = {stateMatchVec_6_27,stateMatchVec_5_27,stateMatchVec_4_27,stateMatchVec_3_27,
    stateMatchVec_2_27,stateMatchVec_1_27,stateMatchVec_0_27}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_27; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3866 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_3866; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_45 = {statusArrayNext_9_srcState_1,statusArrayNext_9_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_9 = &_readyVecNext_T_45 & readyVecNext_scheduledCond_9 | readyVecNext_midStateReady_9; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_53 = io_issueGranted_1_valid & io_issueGranted_1_bits[10]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_51 = io_issueGranted_0_valid & io_issueGranted_0_bits[10]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_54 = {_hasIssued_T_53,_hasIssued_T_51}; // @[StatusArray.scala 183:83]
  wire  hasIssued_10 = |_hasIssued_T_54; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_10 = _T_272 & ~_T_275; // @[StatusArray.scala 184:38]
  wire  noCredit_10 = statusArray_10_valid & statusArray_10_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_10 = statusArray_10_scheduled & ~deqNotGranted_10 & ~noCredit_10; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_10_scheduled = updateValid_10 ? 1'h0 : hasIssued_10 | keepScheduled_10; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_10 = ~statusArrayNext_10_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_798 = updateVec_10_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_799 = updateVec_10_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_2 = _updateStatus_T_798 | _updateStatus_T_799; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_2 = updateValid_10 ? updateVal_10_psrc_2 : statusArray_10_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_4189 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_32 = _T_4189 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4175 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_32 = _T_4175 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4161 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_32 = _T_4161 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4147 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_32 = _T_4147 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4133 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_32 = _T_4133 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4119 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_32 = _T_4119 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4105 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_32 = _T_4105 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_32 = {stateMatchVec_6_32,stateMatchVec_5_32,stateMatchVec_4_32,stateMatchVec_3_32,
    stateMatchVec_2_32,stateMatchVec_1_32,stateMatchVec_0_32}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_10 = |_stateMatch_T_32; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_2 = updateVec_10_0 & io_update_0_data_srcState_2 | updateVec_10_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_4219 = updateValid_10 ? updateVal_10_srcState_2 : statusArray_10_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_2 = stateWakeupEn_2_10 | _T_4219; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_10_midState = ~updateValid_10 & (io_updateMidState[10] | statusArray_10_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_10 = statusArrayNext_10_srcState_2 & statusArrayNext_10_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_795 = updateVec_10_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_796 = updateVec_10_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_1 = _updateStatus_T_795 | _updateStatus_T_796; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_1 = updateValid_10 ? updateVal_10_psrc_1 : statusArray_10_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4078 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_31 = _T_4078 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4064 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_31 = _T_4064 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4050 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_31 = _T_4050 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4036 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_31 = _T_4036 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4022 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_31 = _T_4022 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4008 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_31 = _T_4008 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3994 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_31 = _T_3994 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_31 = {stateMatchVec_6_31,stateMatchVec_5_31,stateMatchVec_4_31,stateMatchVec_3_31,
    stateMatchVec_2_31,stateMatchVec_1_31,stateMatchVec_0_31}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_10 = |_stateMatch_T_31; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_1 = updateVec_10_0 & io_update_0_data_srcState_1 | updateVec_10_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4217 = updateValid_10 ? updateVal_10_srcState_1 : statusArray_10_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_1 = stateWakeupEn_1_10 | _T_4217; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_792 = updateVec_10_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_793 = updateVec_10_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_0 = _updateStatus_T_792 | _updateStatus_T_793; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3967 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_30 = _T_3967 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3953 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_30 = _T_3953 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3939 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_30 = _T_3939 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3925 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_30 = _T_3925 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3911 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_30 = _T_3911 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3897 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_30 = _T_3897 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_3883 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_30 = _T_3883 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_30 = {stateMatchVec_6_30,stateMatchVec_5_30,stateMatchVec_4_30,stateMatchVec_3_30,
    stateMatchVec_2_30,stateMatchVec_1_30,stateMatchVec_0_30}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_30; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4215 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_4215; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_50 = {statusArrayNext_10_srcState_1,statusArrayNext_10_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_10 = &_readyVecNext_T_50 & readyVecNext_scheduledCond_10 | readyVecNext_midStateReady_10; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_58 = io_issueGranted_1_valid & io_issueGranted_1_bits[11]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_56 = io_issueGranted_0_valid & io_issueGranted_0_bits[11]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_59 = {_hasIssued_T_58,_hasIssued_T_56}; // @[StatusArray.scala 183:83]
  wire  hasIssued_11 = |_hasIssued_T_59; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_11 = _T_292 & ~_T_295; // @[StatusArray.scala 184:38]
  wire  noCredit_11 = statusArray_11_valid & statusArray_11_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_11 = statusArray_11_scheduled & ~deqNotGranted_11 & ~noCredit_11; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_11_scheduled = updateValid_11 ? 1'h0 : hasIssued_11 | keepScheduled_11; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_11 = ~statusArrayNext_11_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_873 = updateVec_11_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_874 = updateVec_11_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_2 = _updateStatus_T_873 | _updateStatus_T_874; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_2 = updateValid_11 ? updateVal_11_psrc_2 : statusArray_11_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_4538 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_35 = _T_4538 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4524 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_35 = _T_4524 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4510 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_35 = _T_4510 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4496 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_35 = _T_4496 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4482 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_35 = _T_4482 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4468 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_35 = _T_4468 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4454 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_35 = _T_4454 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_35 = {stateMatchVec_6_35,stateMatchVec_5_35,stateMatchVec_4_35,stateMatchVec_3_35,
    stateMatchVec_2_35,stateMatchVec_1_35,stateMatchVec_0_35}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_11 = |_stateMatch_T_35; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_2 = updateVec_11_0 & io_update_0_data_srcState_2 | updateVec_11_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_4568 = updateValid_11 ? updateVal_11_srcState_2 : statusArray_11_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_2 = stateWakeupEn_2_11 | _T_4568; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_11_midState = ~updateValid_11 & (io_updateMidState[11] | statusArray_11_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_11 = statusArrayNext_11_srcState_2 & statusArrayNext_11_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_870 = updateVec_11_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_871 = updateVec_11_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_1 = _updateStatus_T_870 | _updateStatus_T_871; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_1 = updateValid_11 ? updateVal_11_psrc_1 : statusArray_11_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4427 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_34 = _T_4427 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4413 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_34 = _T_4413 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4399 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_34 = _T_4399 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4385 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_34 = _T_4385 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4371 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_34 = _T_4371 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4357 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_34 = _T_4357 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4343 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_34 = _T_4343 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_34 = {stateMatchVec_6_34,stateMatchVec_5_34,stateMatchVec_4_34,stateMatchVec_3_34,
    stateMatchVec_2_34,stateMatchVec_1_34,stateMatchVec_0_34}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_11 = |_stateMatch_T_34; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_1 = updateVec_11_0 & io_update_0_data_srcState_1 | updateVec_11_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4566 = updateValid_11 ? updateVal_11_srcState_1 : statusArray_11_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_1 = stateWakeupEn_1_11 | _T_4566; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_867 = updateVec_11_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_868 = updateVec_11_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_0 = _updateStatus_T_867 | _updateStatus_T_868; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4316 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_33 = _T_4316 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4302 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_33 = _T_4302 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4288 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_33 = _T_4288 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4274 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_33 = _T_4274 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4260 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_33 = _T_4260 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4246 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_33 = _T_4246 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4232 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_33 = _T_4232 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_33 = {stateMatchVec_6_33,stateMatchVec_5_33,stateMatchVec_4_33,stateMatchVec_3_33,
    stateMatchVec_2_33,stateMatchVec_1_33,stateMatchVec_0_33}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_33; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4564 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_4564; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_55 = {statusArrayNext_11_srcState_1,statusArrayNext_11_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_11 = &_readyVecNext_T_55 & readyVecNext_scheduledCond_11 | readyVecNext_midStateReady_11; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_63 = io_issueGranted_1_valid & io_issueGranted_1_bits[12]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_61 = io_issueGranted_0_valid & io_issueGranted_0_bits[12]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_64 = {_hasIssued_T_63,_hasIssued_T_61}; // @[StatusArray.scala 183:83]
  wire  hasIssued_12 = |_hasIssued_T_64; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_12 = _T_312 & ~_T_315; // @[StatusArray.scala 184:38]
  wire  noCredit_12 = statusArray_12_valid & statusArray_12_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_12 = statusArray_12_scheduled & ~deqNotGranted_12 & ~noCredit_12; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_12_scheduled = updateValid_12 ? 1'h0 : hasIssued_12 | keepScheduled_12; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_12 = ~statusArrayNext_12_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_948 = updateVec_12_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_949 = updateVec_12_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_2 = _updateStatus_T_948 | _updateStatus_T_949; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_2 = updateValid_12 ? updateVal_12_psrc_2 : statusArray_12_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_4887 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_38 = _T_4887 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4873 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_38 = _T_4873 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4859 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_38 = _T_4859 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4845 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_38 = _T_4845 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4831 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_38 = _T_4831 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4817 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_38 = _T_4817 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4803 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_38 = _T_4803 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_38 = {stateMatchVec_6_38,stateMatchVec_5_38,stateMatchVec_4_38,stateMatchVec_3_38,
    stateMatchVec_2_38,stateMatchVec_1_38,stateMatchVec_0_38}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_12 = |_stateMatch_T_38; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_2 = updateVec_12_0 & io_update_0_data_srcState_2 | updateVec_12_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_4917 = updateValid_12 ? updateVal_12_srcState_2 : statusArray_12_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_2 = stateWakeupEn_2_12 | _T_4917; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_12_midState = ~updateValid_12 & (io_updateMidState[12] | statusArray_12_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_12 = statusArrayNext_12_srcState_2 & statusArrayNext_12_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_945 = updateVec_12_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_946 = updateVec_12_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_1 = _updateStatus_T_945 | _updateStatus_T_946; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_1 = updateValid_12 ? updateVal_12_psrc_1 : statusArray_12_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4776 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_37 = _T_4776 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4762 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_37 = _T_4762 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4748 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_37 = _T_4748 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4734 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_37 = _T_4734 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4720 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_37 = _T_4720 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4706 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_37 = _T_4706 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4692 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_37 = _T_4692 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_37 = {stateMatchVec_6_37,stateMatchVec_5_37,stateMatchVec_4_37,stateMatchVec_3_37,
    stateMatchVec_2_37,stateMatchVec_1_37,stateMatchVec_0_37}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_12 = |_stateMatch_T_37; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_1 = updateVec_12_0 & io_update_0_data_srcState_1 | updateVec_12_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4915 = updateValid_12 ? updateVal_12_srcState_1 : statusArray_12_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_1 = stateWakeupEn_1_12 | _T_4915; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_942 = updateVec_12_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_943 = updateVec_12_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_0 = _updateStatus_T_942 | _updateStatus_T_943; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4665 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_36 = _T_4665 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4651 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_36 = _T_4651 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4637 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_36 = _T_4637 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4623 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_36 = _T_4623 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4609 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_36 = _T_4609 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4595 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_36 = _T_4595 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4581 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_36 = _T_4581 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_36 = {stateMatchVec_6_36,stateMatchVec_5_36,stateMatchVec_4_36,stateMatchVec_3_36,
    stateMatchVec_2_36,stateMatchVec_1_36,stateMatchVec_0_36}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_36; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4913 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_4913; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_60 = {statusArrayNext_12_srcState_1,statusArrayNext_12_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_12 = &_readyVecNext_T_60 & readyVecNext_scheduledCond_12 | readyVecNext_midStateReady_12; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_68 = io_issueGranted_1_valid & io_issueGranted_1_bits[13]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_66 = io_issueGranted_0_valid & io_issueGranted_0_bits[13]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_69 = {_hasIssued_T_68,_hasIssued_T_66}; // @[StatusArray.scala 183:83]
  wire  hasIssued_13 = |_hasIssued_T_69; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_13 = _T_332 & ~_T_335; // @[StatusArray.scala 184:38]
  wire  noCredit_13 = statusArray_13_valid & statusArray_13_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_13 = statusArray_13_scheduled & ~deqNotGranted_13 & ~noCredit_13; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_13_scheduled = updateValid_13 ? 1'h0 : hasIssued_13 | keepScheduled_13; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_13 = ~statusArrayNext_13_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1023 = updateVec_13_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1024 = updateVec_13_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_2 = _updateStatus_T_1023 | _updateStatus_T_1024; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_2 = updateValid_13 ? updateVal_13_psrc_2 : statusArray_13_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_5236 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_41 = _T_5236 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5222 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_41 = _T_5222 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5208 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_41 = _T_5208 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5194 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_41 = _T_5194 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5180 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_41 = _T_5180 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5166 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_41 = _T_5166 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5152 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_41 = _T_5152 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_41 = {stateMatchVec_6_41,stateMatchVec_5_41,stateMatchVec_4_41,stateMatchVec_3_41,
    stateMatchVec_2_41,stateMatchVec_1_41,stateMatchVec_0_41}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_13 = |_stateMatch_T_41; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_2 = updateVec_13_0 & io_update_0_data_srcState_2 | updateVec_13_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_5266 = updateValid_13 ? updateVal_13_srcState_2 : statusArray_13_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_2 = stateWakeupEn_2_13 | _T_5266; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_13_midState = ~updateValid_13 & (io_updateMidState[13] | statusArray_13_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_13 = statusArrayNext_13_srcState_2 & statusArrayNext_13_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_1020 = updateVec_13_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1021 = updateVec_13_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_1 = _updateStatus_T_1020 | _updateStatus_T_1021; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_1 = updateValid_13 ? updateVal_13_psrc_1 : statusArray_13_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_5125 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_40 = _T_5125 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5111 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_40 = _T_5111 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5097 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_40 = _T_5097 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5083 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_40 = _T_5083 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5069 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_40 = _T_5069 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5055 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_40 = _T_5055 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5041 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_40 = _T_5041 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_40 = {stateMatchVec_6_40,stateMatchVec_5_40,stateMatchVec_4_40,stateMatchVec_3_40,
    stateMatchVec_2_40,stateMatchVec_1_40,stateMatchVec_0_40}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_13 = |_stateMatch_T_40; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_1 = updateVec_13_0 & io_update_0_data_srcState_1 | updateVec_13_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5264 = updateValid_13 ? updateVal_13_srcState_1 : statusArray_13_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_1 = stateWakeupEn_1_13 | _T_5264; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_1017 = updateVec_13_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1018 = updateVec_13_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_0 = _updateStatus_T_1017 | _updateStatus_T_1018; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5014 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_39 = _T_5014 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5000 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_39 = _T_5000 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4986 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_39 = _T_4986 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4972 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_39 = _T_4972 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4958 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_39 = _T_4958 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4944 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_39 = _T_4944 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_4930 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_39 = _T_4930 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_39 = {stateMatchVec_6_39,stateMatchVec_5_39,stateMatchVec_4_39,stateMatchVec_3_39,
    stateMatchVec_2_39,stateMatchVec_1_39,stateMatchVec_0_39}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_39; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5262 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_5262; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_65 = {statusArrayNext_13_srcState_1,statusArrayNext_13_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_13 = &_readyVecNext_T_65 & readyVecNext_scheduledCond_13 | readyVecNext_midStateReady_13; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_73 = io_issueGranted_1_valid & io_issueGranted_1_bits[14]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_71 = io_issueGranted_0_valid & io_issueGranted_0_bits[14]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_74 = {_hasIssued_T_73,_hasIssued_T_71}; // @[StatusArray.scala 183:83]
  wire  hasIssued_14 = |_hasIssued_T_74; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_14 = _T_352 & ~_T_355; // @[StatusArray.scala 184:38]
  wire  noCredit_14 = statusArray_14_valid & statusArray_14_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_14 = statusArray_14_scheduled & ~deqNotGranted_14 & ~noCredit_14; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_14_scheduled = updateValid_14 ? 1'h0 : hasIssued_14 | keepScheduled_14; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_14 = ~statusArrayNext_14_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1098 = updateVec_14_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1099 = updateVec_14_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_2 = _updateStatus_T_1098 | _updateStatus_T_1099; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_2 = updateValid_14 ? updateVal_14_psrc_2 : statusArray_14_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_5585 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_44 = _T_5585 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5571 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_44 = _T_5571 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5557 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_44 = _T_5557 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5543 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_44 = _T_5543 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5529 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_44 = _T_5529 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5515 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_44 = _T_5515 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5501 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_44 = _T_5501 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_44 = {stateMatchVec_6_44,stateMatchVec_5_44,stateMatchVec_4_44,stateMatchVec_3_44,
    stateMatchVec_2_44,stateMatchVec_1_44,stateMatchVec_0_44}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_14 = |_stateMatch_T_44; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_2 = updateVec_14_0 & io_update_0_data_srcState_2 | updateVec_14_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_5615 = updateValid_14 ? updateVal_14_srcState_2 : statusArray_14_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_2 = stateWakeupEn_2_14 | _T_5615; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_14_midState = ~updateValid_14 & (io_updateMidState[14] | statusArray_14_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_14 = statusArrayNext_14_srcState_2 & statusArrayNext_14_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_1095 = updateVec_14_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1096 = updateVec_14_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_1 = _updateStatus_T_1095 | _updateStatus_T_1096; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_1 = updateValid_14 ? updateVal_14_psrc_1 : statusArray_14_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_5474 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_43 = _T_5474 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5460 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_43 = _T_5460 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5446 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_43 = _T_5446 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5432 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_43 = _T_5432 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5418 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_43 = _T_5418 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5404 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_43 = _T_5404 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5390 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_43 = _T_5390 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_43 = {stateMatchVec_6_43,stateMatchVec_5_43,stateMatchVec_4_43,stateMatchVec_3_43,
    stateMatchVec_2_43,stateMatchVec_1_43,stateMatchVec_0_43}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_14 = |_stateMatch_T_43; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_1 = updateVec_14_0 & io_update_0_data_srcState_1 | updateVec_14_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5613 = updateValid_14 ? updateVal_14_srcState_1 : statusArray_14_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_1 = stateWakeupEn_1_14 | _T_5613; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_1092 = updateVec_14_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1093 = updateVec_14_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_0 = _updateStatus_T_1092 | _updateStatus_T_1093; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5363 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_42 = _T_5363 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5349 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_42 = _T_5349 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5335 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_42 = _T_5335 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5321 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_42 = _T_5321 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5307 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_42 = _T_5307 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5293 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_42 = _T_5293 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5279 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_42 = _T_5279 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_42 = {stateMatchVec_6_42,stateMatchVec_5_42,stateMatchVec_4_42,stateMatchVec_3_42,
    stateMatchVec_2_42,stateMatchVec_1_42,stateMatchVec_0_42}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_42; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5611 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_5611; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_70 = {statusArrayNext_14_srcState_1,statusArrayNext_14_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_14 = &_readyVecNext_T_70 & readyVecNext_scheduledCond_14 | readyVecNext_midStateReady_14; // @[StatusArray.scala 65:60]
  wire  _hasIssued_T_78 = io_issueGranted_1_valid & io_issueGranted_1_bits[15]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_76 = io_issueGranted_0_valid & io_issueGranted_0_bits[15]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_79 = {_hasIssued_T_78,_hasIssued_T_76}; // @[StatusArray.scala 183:83]
  wire  hasIssued_15 = |_hasIssued_T_79; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_15 = _T_372 & ~_T_375; // @[StatusArray.scala 184:38]
  wire  noCredit_15 = statusArray_15_valid & statusArray_15_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_15 = statusArray_15_scheduled & ~deqNotGranted_15 & ~noCredit_15; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_15_scheduled = updateValid_15 ? 1'h0 : hasIssued_15 | keepScheduled_15; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_15 = ~statusArrayNext_15_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1173 = updateVec_15_0 ? io_update_0_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1174 = updateVec_15_1 ? io_update_1_data_psrc_2 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_2 = _updateStatus_T_1173 | _updateStatus_T_1174; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_2 = updateValid_15 ? updateVal_15_psrc_2 : statusArray_15_psrc_2; // @[StatusArray.scala 248:27]
  wire  _T_5934 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_47 = _T_5934 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5920 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_47 = _T_5920 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5906 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_47 = _T_5906 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5892 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_47 = _T_5892 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5878 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_47 = _T_5878 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5864 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_47 = _T_5864 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5850 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_2; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_47 = _T_5850 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_47 = {stateMatchVec_6_47,stateMatchVec_5_47,stateMatchVec_4_47,stateMatchVec_3_47,
    stateMatchVec_2_47,stateMatchVec_1_47,stateMatchVec_0_47}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_2_15 = |_stateMatch_T_47; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_2 = updateVec_15_0 & io_update_0_data_srcState_2 | updateVec_15_1 &
    io_update_1_data_srcState_2; // @[Mux.scala 27:73]
  wire  _T_5964 = updateValid_15 ? updateVal_15_srcState_2 : statusArray_15_srcState_2; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_2 = stateWakeupEn_2_15 | _T_5964; // @[StatusArray.scala 241:50]
  wire  statusArrayNext_15_midState = ~updateValid_15 & (io_updateMidState[15] | statusArray_15_midState); // @[StatusArray.scala 245:44]
  wire  readyVecNext_midStateReady_15 = statusArrayNext_15_srcState_2 & statusArrayNext_15_midState; // @[StatusArray.scala 64:63]
  wire [6:0] _updateStatus_T_1170 = updateVec_15_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1171 = updateVec_15_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_1 = _updateStatus_T_1170 | _updateStatus_T_1171; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_1 = updateValid_15 ? updateVal_15_psrc_1 : statusArray_15_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_5823 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_46 = _T_5823 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5809 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_46 = _T_5809 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5795 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_46 = _T_5795 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5781 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_46 = _T_5781 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5767 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_46 = _T_5767 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5753 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_46 = _T_5753 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5739 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_46 = _T_5739 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_46 = {stateMatchVec_6_46,stateMatchVec_5_46,stateMatchVec_4_46,stateMatchVec_3_46,
    stateMatchVec_2_46,stateMatchVec_1_46,stateMatchVec_0_46}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_15 = |_stateMatch_T_46; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_1 = updateVec_15_0 & io_update_0_data_srcState_1 | updateVec_15_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5962 = updateValid_15 ? updateVal_15_srcState_1 : statusArray_15_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_1 = stateWakeupEn_1_15 | _T_5962; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_1167 = updateVec_15_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1168 = updateVec_15_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_0 = _updateStatus_T_1167 | _updateStatus_T_1168; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5712 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_45 = _T_5712 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5698 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_45 = _T_5698 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5684 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_45 = _T_5684 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5670 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_45 = _T_5670 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5656 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_45 = _T_5656 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5642 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_45 = _T_5642 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_5628 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_45 = _T_5628 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_45 = {stateMatchVec_6_45,stateMatchVec_5_45,stateMatchVec_4_45,stateMatchVec_3_45,
    stateMatchVec_2_45,stateMatchVec_1_45,stateMatchVec_0_45}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_45; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5960 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_5960; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_75 = {statusArrayNext_15_srcState_1,statusArrayNext_15_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_15 = &_readyVecNext_T_75 & readyVecNext_scheduledCond_15 | readyVecNext_midStateReady_15; // @[StatusArray.scala 65:60]
  wire [6:0] _updateStatus_T_27 = updateVec__0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_28 = updateVec__1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_robIdx_value = _updateStatus_T_27 | _updateStatus_T_28; // @[Mux.scala 27:73]
  wire  updateVal_0_robIdx_flag = updateVec__0 & io_update_0_data_robIdx_flag | updateVec__1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_33 = updateVec__0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_34 = updateVec__1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_0 = _updateStatus_T_33 | _updateStatus_T_34; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_36 = updateVec__0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_37 = updateVec__1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_1 = _updateStatus_T_36 | _updateStatus_T_37; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_39 = updateVec__0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_40 = updateVec__1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_2 = _updateStatus_T_39 | _updateStatus_T_40; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_102 = updateVec_1_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_103 = updateVec_1_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_robIdx_value = _updateStatus_T_102 | _updateStatus_T_103; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_108 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_109 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_108 | _updateStatus_T_109; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_111 = updateVec_1_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_112 = updateVec_1_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_1 = _updateStatus_T_111 | _updateStatus_T_112; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_114 = updateVec_1_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_115 = updateVec_1_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_2 = _updateStatus_T_114 | _updateStatus_T_115; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_177 = updateVec_2_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_178 = updateVec_2_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_robIdx_value = _updateStatus_T_177 | _updateStatus_T_178; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_183 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_184 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_183 | _updateStatus_T_184; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_186 = updateVec_2_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_187 = updateVec_2_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_1 = _updateStatus_T_186 | _updateStatus_T_187; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_189 = updateVec_2_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_190 = updateVec_2_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_2 = _updateStatus_T_189 | _updateStatus_T_190; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_252 = updateVec_3_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_253 = updateVec_3_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_robIdx_value = _updateStatus_T_252 | _updateStatus_T_253; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_258 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_259 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_258 | _updateStatus_T_259; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_261 = updateVec_3_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_262 = updateVec_3_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_1 = _updateStatus_T_261 | _updateStatus_T_262; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_264 = updateVec_3_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_265 = updateVec_3_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_2 = _updateStatus_T_264 | _updateStatus_T_265; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_327 = updateVec_4_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_328 = updateVec_4_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_robIdx_value = _updateStatus_T_327 | _updateStatus_T_328; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_333 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_334 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_333 | _updateStatus_T_334; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_336 = updateVec_4_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_337 = updateVec_4_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_1 = _updateStatus_T_336 | _updateStatus_T_337; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_339 = updateVec_4_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_340 = updateVec_4_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_2 = _updateStatus_T_339 | _updateStatus_T_340; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_402 = updateVec_5_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_403 = updateVec_5_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_robIdx_value = _updateStatus_T_402 | _updateStatus_T_403; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_408 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_409 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_408 | _updateStatus_T_409; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_411 = updateVec_5_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_412 = updateVec_5_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_1 = _updateStatus_T_411 | _updateStatus_T_412; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_414 = updateVec_5_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_415 = updateVec_5_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_2 = _updateStatus_T_414 | _updateStatus_T_415; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_477 = updateVec_6_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_478 = updateVec_6_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_robIdx_value = _updateStatus_T_477 | _updateStatus_T_478; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_483 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_484 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_483 | _updateStatus_T_484; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_486 = updateVec_6_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_487 = updateVec_6_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_1 = _updateStatus_T_486 | _updateStatus_T_487; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_489 = updateVec_6_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_490 = updateVec_6_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_2 = _updateStatus_T_489 | _updateStatus_T_490; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_552 = updateVec_7_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_553 = updateVec_7_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_robIdx_value = _updateStatus_T_552 | _updateStatus_T_553; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_558 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_559 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_558 | _updateStatus_T_559; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_561 = updateVec_7_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_562 = updateVec_7_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_1 = _updateStatus_T_561 | _updateStatus_T_562; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_564 = updateVec_7_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_565 = updateVec_7_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_2 = _updateStatus_T_564 | _updateStatus_T_565; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_627 = updateVec_8_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_628 = updateVec_8_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_robIdx_value = _updateStatus_T_627 | _updateStatus_T_628; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_633 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_634 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_633 | _updateStatus_T_634; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_636 = updateVec_8_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_637 = updateVec_8_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_1 = _updateStatus_T_636 | _updateStatus_T_637; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_639 = updateVec_8_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_640 = updateVec_8_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_2 = _updateStatus_T_639 | _updateStatus_T_640; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_702 = updateVec_9_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_703 = updateVec_9_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_robIdx_value = _updateStatus_T_702 | _updateStatus_T_703; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_708 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_709 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_708 | _updateStatus_T_709; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_711 = updateVec_9_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_712 = updateVec_9_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_1 = _updateStatus_T_711 | _updateStatus_T_712; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_714 = updateVec_9_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_715 = updateVec_9_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_2 = _updateStatus_T_714 | _updateStatus_T_715; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_777 = updateVec_10_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_778 = updateVec_10_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_robIdx_value = _updateStatus_T_777 | _updateStatus_T_778; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_783 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_784 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_783 | _updateStatus_T_784; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_786 = updateVec_10_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_787 = updateVec_10_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_1 = _updateStatus_T_786 | _updateStatus_T_787; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_789 = updateVec_10_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_790 = updateVec_10_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_2 = _updateStatus_T_789 | _updateStatus_T_790; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_852 = updateVec_11_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_853 = updateVec_11_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_robIdx_value = _updateStatus_T_852 | _updateStatus_T_853; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_858 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_859 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_858 | _updateStatus_T_859; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_861 = updateVec_11_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_862 = updateVec_11_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_1 = _updateStatus_T_861 | _updateStatus_T_862; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_864 = updateVec_11_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_865 = updateVec_11_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_2 = _updateStatus_T_864 | _updateStatus_T_865; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_927 = updateVec_12_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_928 = updateVec_12_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_robIdx_value = _updateStatus_T_927 | _updateStatus_T_928; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_933 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_934 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_933 | _updateStatus_T_934; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_936 = updateVec_12_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_937 = updateVec_12_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_1 = _updateStatus_T_936 | _updateStatus_T_937; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_939 = updateVec_12_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_940 = updateVec_12_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_2 = _updateStatus_T_939 | _updateStatus_T_940; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1002 = updateVec_13_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1003 = updateVec_13_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_robIdx_value = _updateStatus_T_1002 | _updateStatus_T_1003; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1008 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1009 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_1008 | _updateStatus_T_1009; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1011 = updateVec_13_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1012 = updateVec_13_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_1 = _updateStatus_T_1011 | _updateStatus_T_1012; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1014 = updateVec_13_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1015 = updateVec_13_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_2 = _updateStatus_T_1014 | _updateStatus_T_1015; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1077 = updateVec_14_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1078 = updateVec_14_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_robIdx_value = _updateStatus_T_1077 | _updateStatus_T_1078; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1083 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1084 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_1083 | _updateStatus_T_1084; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1086 = updateVec_14_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1087 = updateVec_14_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_1 = _updateStatus_T_1086 | _updateStatus_T_1087; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1089 = updateVec_14_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1090 = updateVec_14_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_2 = _updateStatus_T_1089 | _updateStatus_T_1090; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1152 = updateVec_15_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1153 = updateVec_15_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_robIdx_value = _updateStatus_T_1152 | _updateStatus_T_1153; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1158 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1159 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_1158 | _updateStatus_T_1159; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1161 = updateVec_15_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1162 = updateVec_15_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_1 = _updateStatus_T_1161 | _updateStatus_T_1162; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1164 = updateVec_15_0 ? io_update_0_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1165 = updateVec_15_1 ? io_update_1_data_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_2 = _updateStatus_T_1164 | _updateStatus_T_1165; // @[Mux.scala 27:73]
  wire [3:0] _creditStep_T_2 = statusArray_0_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_398 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0 = _T_393 & _T_398; // @[StatusArray.scala 134:33]
  wire  _T_412 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1 = _T_407 & _T_412; // @[StatusArray.scala 134:33]
  wire  _T_426 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2 = _T_421 & _T_426; // @[StatusArray.scala 134:33]
  wire  _T_440 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3 = _T_435 & _T_440; // @[StatusArray.scala 134:33]
  wire  _T_454 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4 = _T_449 & _T_454; // @[StatusArray.scala 134:33]
  wire  _T_468 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5 = _T_463 & _T_468; // @[StatusArray.scala 134:33]
  wire  _T_482 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6 = _T_477 & _T_482; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo = {dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi = {dataMatchVec_6,dataMatchVec_5,dataMatchVec_4,dataMatchVec_3}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? updateVal_0_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_509 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_1 = _T_504 & _T_509; // @[StatusArray.scala 134:33]
  wire  _T_523 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_1 = _T_518 & _T_523; // @[StatusArray.scala 134:33]
  wire  _T_537 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_1 = _T_532 & _T_537; // @[StatusArray.scala 134:33]
  wire  _T_551 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_1 = _T_546 & _T_551; // @[StatusArray.scala 134:33]
  wire  _T_565 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_1 = _T_560 & _T_565; // @[StatusArray.scala 134:33]
  wire  _T_579 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_1 = _T_574 & _T_579; // @[StatusArray.scala 134:33]
  wire  _T_593 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_1 = _T_588 & _T_593; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_1 = {dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_1 = {dataMatchVec_6_1,dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_0_srcType_2 = updateValid_0 ? updateVal_0_srcType_2 : statusArray_0_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_620 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_2 = _T_615 & _T_620; // @[StatusArray.scala 134:33]
  wire  _T_634 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_2 = _T_629 & _T_634; // @[StatusArray.scala 134:33]
  wire  _T_648 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_2 = _T_643 & _T_648; // @[StatusArray.scala 134:33]
  wire  _T_662 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_2 = _T_657 & _T_662; // @[StatusArray.scala 134:33]
  wire  _T_676 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_2 = _T_671 & _T_676; // @[StatusArray.scala 134:33]
  wire  _T_690 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_2 = _T_685 & _T_690; // @[StatusArray.scala 134:33]
  wire  _T_704 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_2 = _T_699 & _T_704; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_2 = {dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_2 = {dataMatchVec_6_2,dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_733 = {statusArray_0_srcState_2,statusArray_0_srcState_1,statusArray_0_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_5 = statusArray_1_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_747 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_3 = _T_742 & _T_747; // @[StatusArray.scala 134:33]
  wire  _T_761 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_3 = _T_756 & _T_761; // @[StatusArray.scala 134:33]
  wire  _T_775 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_3 = _T_770 & _T_775; // @[StatusArray.scala 134:33]
  wire  _T_789 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_3 = _T_784 & _T_789; // @[StatusArray.scala 134:33]
  wire  _T_803 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_3 = _T_798 & _T_803; // @[StatusArray.scala 134:33]
  wire  _T_817 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_3 = _T_812 & _T_817; // @[StatusArray.scala 134:33]
  wire  _T_831 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_3 = _T_826 & _T_831; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_3 = {dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_3 = {dataMatchVec_6_3,dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? updateVal_1_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_858 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_4 = _T_853 & _T_858; // @[StatusArray.scala 134:33]
  wire  _T_872 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_4 = _T_867 & _T_872; // @[StatusArray.scala 134:33]
  wire  _T_886 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_4 = _T_881 & _T_886; // @[StatusArray.scala 134:33]
  wire  _T_900 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_4 = _T_895 & _T_900; // @[StatusArray.scala 134:33]
  wire  _T_914 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_4 = _T_909 & _T_914; // @[StatusArray.scala 134:33]
  wire  _T_928 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_4 = _T_923 & _T_928; // @[StatusArray.scala 134:33]
  wire  _T_942 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_4 = _T_937 & _T_942; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_4 = {dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_4 = {dataMatchVec_6_4,dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_1_srcType_2 = updateValid_1 ? updateVal_1_srcType_2 : statusArray_1_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_969 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_5 = _T_964 & _T_969; // @[StatusArray.scala 134:33]
  wire  _T_983 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_5 = _T_978 & _T_983; // @[StatusArray.scala 134:33]
  wire  _T_997 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_5 = _T_992 & _T_997; // @[StatusArray.scala 134:33]
  wire  _T_1011 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_5 = _T_1006 & _T_1011; // @[StatusArray.scala 134:33]
  wire  _T_1025 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_5 = _T_1020 & _T_1025; // @[StatusArray.scala 134:33]
  wire  _T_1039 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_5 = _T_1034 & _T_1039; // @[StatusArray.scala 134:33]
  wire  _T_1053 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_5 = _T_1048 & _T_1053; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_5 = {dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_5 = {dataMatchVec_6_5,dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_1082 = {statusArray_1_srcState_2,statusArray_1_srcState_1,statusArray_1_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_8 = statusArray_2_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1096 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_6 = _T_1091 & _T_1096; // @[StatusArray.scala 134:33]
  wire  _T_1110 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_6 = _T_1105 & _T_1110; // @[StatusArray.scala 134:33]
  wire  _T_1124 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_6 = _T_1119 & _T_1124; // @[StatusArray.scala 134:33]
  wire  _T_1138 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_6 = _T_1133 & _T_1138; // @[StatusArray.scala 134:33]
  wire  _T_1152 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_6 = _T_1147 & _T_1152; // @[StatusArray.scala 134:33]
  wire  _T_1166 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_6 = _T_1161 & _T_1166; // @[StatusArray.scala 134:33]
  wire  _T_1180 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_6 = _T_1175 & _T_1180; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_6 = {dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_6 = {dataMatchVec_6_6,dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? updateVal_2_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1207 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_7 = _T_1202 & _T_1207; // @[StatusArray.scala 134:33]
  wire  _T_1221 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_7 = _T_1216 & _T_1221; // @[StatusArray.scala 134:33]
  wire  _T_1235 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_7 = _T_1230 & _T_1235; // @[StatusArray.scala 134:33]
  wire  _T_1249 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_7 = _T_1244 & _T_1249; // @[StatusArray.scala 134:33]
  wire  _T_1263 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_7 = _T_1258 & _T_1263; // @[StatusArray.scala 134:33]
  wire  _T_1277 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_7 = _T_1272 & _T_1277; // @[StatusArray.scala 134:33]
  wire  _T_1291 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_7 = _T_1286 & _T_1291; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_7 = {dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_7 = {dataMatchVec_6_7,dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_2_srcType_2 = updateValid_2 ? updateVal_2_srcType_2 : statusArray_2_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_1318 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_8 = _T_1313 & _T_1318; // @[StatusArray.scala 134:33]
  wire  _T_1332 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_8 = _T_1327 & _T_1332; // @[StatusArray.scala 134:33]
  wire  _T_1346 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_8 = _T_1341 & _T_1346; // @[StatusArray.scala 134:33]
  wire  _T_1360 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_8 = _T_1355 & _T_1360; // @[StatusArray.scala 134:33]
  wire  _T_1374 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_8 = _T_1369 & _T_1374; // @[StatusArray.scala 134:33]
  wire  _T_1388 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_8 = _T_1383 & _T_1388; // @[StatusArray.scala 134:33]
  wire  _T_1402 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_8 = _T_1397 & _T_1402; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_8 = {dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_8 = {dataMatchVec_6_8,dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_1431 = {statusArray_2_srcState_2,statusArray_2_srcState_1,statusArray_2_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_11 = statusArray_3_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1445 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_9 = _T_1440 & _T_1445; // @[StatusArray.scala 134:33]
  wire  _T_1459 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_9 = _T_1454 & _T_1459; // @[StatusArray.scala 134:33]
  wire  _T_1473 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_9 = _T_1468 & _T_1473; // @[StatusArray.scala 134:33]
  wire  _T_1487 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_9 = _T_1482 & _T_1487; // @[StatusArray.scala 134:33]
  wire  _T_1501 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_9 = _T_1496 & _T_1501; // @[StatusArray.scala 134:33]
  wire  _T_1515 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_9 = _T_1510 & _T_1515; // @[StatusArray.scala 134:33]
  wire  _T_1529 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_9 = _T_1524 & _T_1529; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_9 = {dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_9 = {dataMatchVec_6_9,dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? updateVal_3_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1556 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_10 = _T_1551 & _T_1556; // @[StatusArray.scala 134:33]
  wire  _T_1570 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_10 = _T_1565 & _T_1570; // @[StatusArray.scala 134:33]
  wire  _T_1584 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_10 = _T_1579 & _T_1584; // @[StatusArray.scala 134:33]
  wire  _T_1598 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_10 = _T_1593 & _T_1598; // @[StatusArray.scala 134:33]
  wire  _T_1612 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_10 = _T_1607 & _T_1612; // @[StatusArray.scala 134:33]
  wire  _T_1626 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_10 = _T_1621 & _T_1626; // @[StatusArray.scala 134:33]
  wire  _T_1640 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_10 = _T_1635 & _T_1640; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_10 = {dataMatchVec_2_10,dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_10 = {dataMatchVec_6_10,dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_3_srcType_2 = updateValid_3 ? updateVal_3_srcType_2 : statusArray_3_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_1667 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_11 = _T_1662 & _T_1667; // @[StatusArray.scala 134:33]
  wire  _T_1681 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_11 = _T_1676 & _T_1681; // @[StatusArray.scala 134:33]
  wire  _T_1695 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_11 = _T_1690 & _T_1695; // @[StatusArray.scala 134:33]
  wire  _T_1709 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_11 = _T_1704 & _T_1709; // @[StatusArray.scala 134:33]
  wire  _T_1723 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_11 = _T_1718 & _T_1723; // @[StatusArray.scala 134:33]
  wire  _T_1737 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_11 = _T_1732 & _T_1737; // @[StatusArray.scala 134:33]
  wire  _T_1751 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_11 = _T_1746 & _T_1751; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_11 = {dataMatchVec_2_11,dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_11 = {dataMatchVec_6_11,dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_1780 = {statusArray_3_srcState_2,statusArray_3_srcState_1,statusArray_3_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_14 = statusArray_4_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1794 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_12 = _T_1789 & _T_1794; // @[StatusArray.scala 134:33]
  wire  _T_1808 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_12 = _T_1803 & _T_1808; // @[StatusArray.scala 134:33]
  wire  _T_1822 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_12 = _T_1817 & _T_1822; // @[StatusArray.scala 134:33]
  wire  _T_1836 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_12 = _T_1831 & _T_1836; // @[StatusArray.scala 134:33]
  wire  _T_1850 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_12 = _T_1845 & _T_1850; // @[StatusArray.scala 134:33]
  wire  _T_1864 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_12 = _T_1859 & _T_1864; // @[StatusArray.scala 134:33]
  wire  _T_1878 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_12 = _T_1873 & _T_1878; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_12 = {dataMatchVec_2_12,dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_12 = {dataMatchVec_6_12,dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? updateVal_4_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1905 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_13 = _T_1900 & _T_1905; // @[StatusArray.scala 134:33]
  wire  _T_1919 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_13 = _T_1914 & _T_1919; // @[StatusArray.scala 134:33]
  wire  _T_1933 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_13 = _T_1928 & _T_1933; // @[StatusArray.scala 134:33]
  wire  _T_1947 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_13 = _T_1942 & _T_1947; // @[StatusArray.scala 134:33]
  wire  _T_1961 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_13 = _T_1956 & _T_1961; // @[StatusArray.scala 134:33]
  wire  _T_1975 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_13 = _T_1970 & _T_1975; // @[StatusArray.scala 134:33]
  wire  _T_1989 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_13 = _T_1984 & _T_1989; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_13 = {dataMatchVec_2_13,dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_13 = {dataMatchVec_6_13,dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_4_srcType_2 = updateValid_4 ? updateVal_4_srcType_2 : statusArray_4_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_2016 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_14 = _T_2011 & _T_2016; // @[StatusArray.scala 134:33]
  wire  _T_2030 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_14 = _T_2025 & _T_2030; // @[StatusArray.scala 134:33]
  wire  _T_2044 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_14 = _T_2039 & _T_2044; // @[StatusArray.scala 134:33]
  wire  _T_2058 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_14 = _T_2053 & _T_2058; // @[StatusArray.scala 134:33]
  wire  _T_2072 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_14 = _T_2067 & _T_2072; // @[StatusArray.scala 134:33]
  wire  _T_2086 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_14 = _T_2081 & _T_2086; // @[StatusArray.scala 134:33]
  wire  _T_2100 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_14 = _T_2095 & _T_2100; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_14 = {dataMatchVec_2_14,dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_14 = {dataMatchVec_6_14,dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_2129 = {statusArray_4_srcState_2,statusArray_4_srcState_1,statusArray_4_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_17 = statusArray_5_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2143 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_15 = _T_2138 & _T_2143; // @[StatusArray.scala 134:33]
  wire  _T_2157 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_15 = _T_2152 & _T_2157; // @[StatusArray.scala 134:33]
  wire  _T_2171 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_15 = _T_2166 & _T_2171; // @[StatusArray.scala 134:33]
  wire  _T_2185 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_15 = _T_2180 & _T_2185; // @[StatusArray.scala 134:33]
  wire  _T_2199 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_15 = _T_2194 & _T_2199; // @[StatusArray.scala 134:33]
  wire  _T_2213 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_15 = _T_2208 & _T_2213; // @[StatusArray.scala 134:33]
  wire  _T_2227 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_15 = _T_2222 & _T_2227; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_15 = {dataMatchVec_2_15,dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_15 = {dataMatchVec_6_15,dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? updateVal_5_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2254 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_16 = _T_2249 & _T_2254; // @[StatusArray.scala 134:33]
  wire  _T_2268 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_16 = _T_2263 & _T_2268; // @[StatusArray.scala 134:33]
  wire  _T_2282 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_16 = _T_2277 & _T_2282; // @[StatusArray.scala 134:33]
  wire  _T_2296 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_16 = _T_2291 & _T_2296; // @[StatusArray.scala 134:33]
  wire  _T_2310 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_16 = _T_2305 & _T_2310; // @[StatusArray.scala 134:33]
  wire  _T_2324 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_16 = _T_2319 & _T_2324; // @[StatusArray.scala 134:33]
  wire  _T_2338 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_16 = _T_2333 & _T_2338; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_16 = {dataMatchVec_2_16,dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_16 = {dataMatchVec_6_16,dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_5_srcType_2 = updateValid_5 ? updateVal_5_srcType_2 : statusArray_5_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_2365 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_17 = _T_2360 & _T_2365; // @[StatusArray.scala 134:33]
  wire  _T_2379 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_17 = _T_2374 & _T_2379; // @[StatusArray.scala 134:33]
  wire  _T_2393 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_17 = _T_2388 & _T_2393; // @[StatusArray.scala 134:33]
  wire  _T_2407 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_17 = _T_2402 & _T_2407; // @[StatusArray.scala 134:33]
  wire  _T_2421 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_17 = _T_2416 & _T_2421; // @[StatusArray.scala 134:33]
  wire  _T_2435 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_17 = _T_2430 & _T_2435; // @[StatusArray.scala 134:33]
  wire  _T_2449 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_17 = _T_2444 & _T_2449; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_17 = {dataMatchVec_2_17,dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_17 = {dataMatchVec_6_17,dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_2478 = {statusArray_5_srcState_2,statusArray_5_srcState_1,statusArray_5_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_20 = statusArray_6_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2492 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_18 = _T_2487 & _T_2492; // @[StatusArray.scala 134:33]
  wire  _T_2506 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_18 = _T_2501 & _T_2506; // @[StatusArray.scala 134:33]
  wire  _T_2520 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_18 = _T_2515 & _T_2520; // @[StatusArray.scala 134:33]
  wire  _T_2534 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_18 = _T_2529 & _T_2534; // @[StatusArray.scala 134:33]
  wire  _T_2548 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_18 = _T_2543 & _T_2548; // @[StatusArray.scala 134:33]
  wire  _T_2562 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_18 = _T_2557 & _T_2562; // @[StatusArray.scala 134:33]
  wire  _T_2576 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_18 = _T_2571 & _T_2576; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_18 = {dataMatchVec_2_18,dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_18 = {dataMatchVec_6_18,dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? updateVal_6_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2603 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_19 = _T_2598 & _T_2603; // @[StatusArray.scala 134:33]
  wire  _T_2617 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_19 = _T_2612 & _T_2617; // @[StatusArray.scala 134:33]
  wire  _T_2631 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_19 = _T_2626 & _T_2631; // @[StatusArray.scala 134:33]
  wire  _T_2645 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_19 = _T_2640 & _T_2645; // @[StatusArray.scala 134:33]
  wire  _T_2659 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_19 = _T_2654 & _T_2659; // @[StatusArray.scala 134:33]
  wire  _T_2673 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_19 = _T_2668 & _T_2673; // @[StatusArray.scala 134:33]
  wire  _T_2687 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_19 = _T_2682 & _T_2687; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_19 = {dataMatchVec_2_19,dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_19 = {dataMatchVec_6_19,dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_6_srcType_2 = updateValid_6 ? updateVal_6_srcType_2 : statusArray_6_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_2714 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_20 = _T_2709 & _T_2714; // @[StatusArray.scala 134:33]
  wire  _T_2728 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_20 = _T_2723 & _T_2728; // @[StatusArray.scala 134:33]
  wire  _T_2742 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_20 = _T_2737 & _T_2742; // @[StatusArray.scala 134:33]
  wire  _T_2756 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_20 = _T_2751 & _T_2756; // @[StatusArray.scala 134:33]
  wire  _T_2770 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_20 = _T_2765 & _T_2770; // @[StatusArray.scala 134:33]
  wire  _T_2784 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_20 = _T_2779 & _T_2784; // @[StatusArray.scala 134:33]
  wire  _T_2798 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_20 = _T_2793 & _T_2798; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_20 = {dataMatchVec_2_20,dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_20 = {dataMatchVec_6_20,dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_2827 = {statusArray_6_srcState_2,statusArray_6_srcState_1,statusArray_6_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_23 = statusArray_7_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2841 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_21 = _T_2836 & _T_2841; // @[StatusArray.scala 134:33]
  wire  _T_2855 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_21 = _T_2850 & _T_2855; // @[StatusArray.scala 134:33]
  wire  _T_2869 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_21 = _T_2864 & _T_2869; // @[StatusArray.scala 134:33]
  wire  _T_2883 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_21 = _T_2878 & _T_2883; // @[StatusArray.scala 134:33]
  wire  _T_2897 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_21 = _T_2892 & _T_2897; // @[StatusArray.scala 134:33]
  wire  _T_2911 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_21 = _T_2906 & _T_2911; // @[StatusArray.scala 134:33]
  wire  _T_2925 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_21 = _T_2920 & _T_2925; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_21 = {dataMatchVec_2_21,dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_21 = {dataMatchVec_6_21,dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? updateVal_7_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2952 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_22 = _T_2947 & _T_2952; // @[StatusArray.scala 134:33]
  wire  _T_2966 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_22 = _T_2961 & _T_2966; // @[StatusArray.scala 134:33]
  wire  _T_2980 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_22 = _T_2975 & _T_2980; // @[StatusArray.scala 134:33]
  wire  _T_2994 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_22 = _T_2989 & _T_2994; // @[StatusArray.scala 134:33]
  wire  _T_3008 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_22 = _T_3003 & _T_3008; // @[StatusArray.scala 134:33]
  wire  _T_3022 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_22 = _T_3017 & _T_3022; // @[StatusArray.scala 134:33]
  wire  _T_3036 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_22 = _T_3031 & _T_3036; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_22 = {dataMatchVec_2_22,dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_22 = {dataMatchVec_6_22,dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_7_srcType_2 = updateValid_7 ? updateVal_7_srcType_2 : statusArray_7_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_3063 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_23 = _T_3058 & _T_3063; // @[StatusArray.scala 134:33]
  wire  _T_3077 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_23 = _T_3072 & _T_3077; // @[StatusArray.scala 134:33]
  wire  _T_3091 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_23 = _T_3086 & _T_3091; // @[StatusArray.scala 134:33]
  wire  _T_3105 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_23 = _T_3100 & _T_3105; // @[StatusArray.scala 134:33]
  wire  _T_3119 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_23 = _T_3114 & _T_3119; // @[StatusArray.scala 134:33]
  wire  _T_3133 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_23 = _T_3128 & _T_3133; // @[StatusArray.scala 134:33]
  wire  _T_3147 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_23 = _T_3142 & _T_3147; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_23 = {dataMatchVec_2_23,dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_23 = {dataMatchVec_6_23,dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_3176 = {statusArray_7_srcState_2,statusArray_7_srcState_1,statusArray_7_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_26 = statusArray_8_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3190 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_24 = _T_3185 & _T_3190; // @[StatusArray.scala 134:33]
  wire  _T_3204 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_24 = _T_3199 & _T_3204; // @[StatusArray.scala 134:33]
  wire  _T_3218 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_24 = _T_3213 & _T_3218; // @[StatusArray.scala 134:33]
  wire  _T_3232 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_24 = _T_3227 & _T_3232; // @[StatusArray.scala 134:33]
  wire  _T_3246 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_24 = _T_3241 & _T_3246; // @[StatusArray.scala 134:33]
  wire  _T_3260 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_24 = _T_3255 & _T_3260; // @[StatusArray.scala 134:33]
  wire  _T_3274 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_24 = _T_3269 & _T_3274; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_24 = {dataMatchVec_2_24,dataMatchVec_1_24,dataMatchVec_0_24}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_24 = {dataMatchVec_6_24,dataMatchVec_5_24,dataMatchVec_4_24,dataMatchVec_3_24}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_8_srcType_1 = updateValid_8 ? updateVal_8_srcType_1 : statusArray_8_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3301 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_25 = _T_3296 & _T_3301; // @[StatusArray.scala 134:33]
  wire  _T_3315 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_25 = _T_3310 & _T_3315; // @[StatusArray.scala 134:33]
  wire  _T_3329 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_25 = _T_3324 & _T_3329; // @[StatusArray.scala 134:33]
  wire  _T_3343 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_25 = _T_3338 & _T_3343; // @[StatusArray.scala 134:33]
  wire  _T_3357 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_25 = _T_3352 & _T_3357; // @[StatusArray.scala 134:33]
  wire  _T_3371 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_25 = _T_3366 & _T_3371; // @[StatusArray.scala 134:33]
  wire  _T_3385 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_8_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_25 = _T_3380 & _T_3385; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_25 = {dataMatchVec_2_25,dataMatchVec_1_25,dataMatchVec_0_25}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_25 = {dataMatchVec_6_25,dataMatchVec_5_25,dataMatchVec_4_25,dataMatchVec_3_25}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_8_srcType_2 = updateValid_8 ? updateVal_8_srcType_2 : statusArray_8_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_3412 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_26 = _T_3407 & _T_3412; // @[StatusArray.scala 134:33]
  wire  _T_3426 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_26 = _T_3421 & _T_3426; // @[StatusArray.scala 134:33]
  wire  _T_3440 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_26 = _T_3435 & _T_3440; // @[StatusArray.scala 134:33]
  wire  _T_3454 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_26 = _T_3449 & _T_3454; // @[StatusArray.scala 134:33]
  wire  _T_3468 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_26 = _T_3463 & _T_3468; // @[StatusArray.scala 134:33]
  wire  _T_3482 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_26 = _T_3477 & _T_3482; // @[StatusArray.scala 134:33]
  wire  _T_3496 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_8_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_26 = _T_3491 & _T_3496; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_26 = {dataMatchVec_2_26,dataMatchVec_1_26,dataMatchVec_0_26}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_26 = {dataMatchVec_6_26,dataMatchVec_5_26,dataMatchVec_4_26,dataMatchVec_3_26}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_3525 = {statusArray_8_srcState_2,statusArray_8_srcState_1,statusArray_8_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_29 = statusArray_9_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3539 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_27 = _T_3534 & _T_3539; // @[StatusArray.scala 134:33]
  wire  _T_3553 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_27 = _T_3548 & _T_3553; // @[StatusArray.scala 134:33]
  wire  _T_3567 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_27 = _T_3562 & _T_3567; // @[StatusArray.scala 134:33]
  wire  _T_3581 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_27 = _T_3576 & _T_3581; // @[StatusArray.scala 134:33]
  wire  _T_3595 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_27 = _T_3590 & _T_3595; // @[StatusArray.scala 134:33]
  wire  _T_3609 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_27 = _T_3604 & _T_3609; // @[StatusArray.scala 134:33]
  wire  _T_3623 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_27 = _T_3618 & _T_3623; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_27 = {dataMatchVec_2_27,dataMatchVec_1_27,dataMatchVec_0_27}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_27 = {dataMatchVec_6_27,dataMatchVec_5_27,dataMatchVec_4_27,dataMatchVec_3_27}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_9_srcType_1 = updateValid_9 ? updateVal_9_srcType_1 : statusArray_9_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3650 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_28 = _T_3645 & _T_3650; // @[StatusArray.scala 134:33]
  wire  _T_3664 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_28 = _T_3659 & _T_3664; // @[StatusArray.scala 134:33]
  wire  _T_3678 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_28 = _T_3673 & _T_3678; // @[StatusArray.scala 134:33]
  wire  _T_3692 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_28 = _T_3687 & _T_3692; // @[StatusArray.scala 134:33]
  wire  _T_3706 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_28 = _T_3701 & _T_3706; // @[StatusArray.scala 134:33]
  wire  _T_3720 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_28 = _T_3715 & _T_3720; // @[StatusArray.scala 134:33]
  wire  _T_3734 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_9_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_28 = _T_3729 & _T_3734; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_28 = {dataMatchVec_2_28,dataMatchVec_1_28,dataMatchVec_0_28}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_28 = {dataMatchVec_6_28,dataMatchVec_5_28,dataMatchVec_4_28,dataMatchVec_3_28}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_9_srcType_2 = updateValid_9 ? updateVal_9_srcType_2 : statusArray_9_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_3761 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_29 = _T_3756 & _T_3761; // @[StatusArray.scala 134:33]
  wire  _T_3775 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_29 = _T_3770 & _T_3775; // @[StatusArray.scala 134:33]
  wire  _T_3789 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_29 = _T_3784 & _T_3789; // @[StatusArray.scala 134:33]
  wire  _T_3803 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_29 = _T_3798 & _T_3803; // @[StatusArray.scala 134:33]
  wire  _T_3817 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_29 = _T_3812 & _T_3817; // @[StatusArray.scala 134:33]
  wire  _T_3831 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_29 = _T_3826 & _T_3831; // @[StatusArray.scala 134:33]
  wire  _T_3845 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_9_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_29 = _T_3840 & _T_3845; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_29 = {dataMatchVec_2_29,dataMatchVec_1_29,dataMatchVec_0_29}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_29 = {dataMatchVec_6_29,dataMatchVec_5_29,dataMatchVec_4_29,dataMatchVec_3_29}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_3874 = {statusArray_9_srcState_2,statusArray_9_srcState_1,statusArray_9_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_32 = statusArray_10_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3888 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_30 = _T_3883 & _T_3888; // @[StatusArray.scala 134:33]
  wire  _T_3902 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_30 = _T_3897 & _T_3902; // @[StatusArray.scala 134:33]
  wire  _T_3916 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_30 = _T_3911 & _T_3916; // @[StatusArray.scala 134:33]
  wire  _T_3930 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_30 = _T_3925 & _T_3930; // @[StatusArray.scala 134:33]
  wire  _T_3944 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_30 = _T_3939 & _T_3944; // @[StatusArray.scala 134:33]
  wire  _T_3958 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_30 = _T_3953 & _T_3958; // @[StatusArray.scala 134:33]
  wire  _T_3972 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_30 = _T_3967 & _T_3972; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_30 = {dataMatchVec_2_30,dataMatchVec_1_30,dataMatchVec_0_30}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_30 = {dataMatchVec_6_30,dataMatchVec_5_30,dataMatchVec_4_30,dataMatchVec_3_30}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_10_srcType_1 = updateValid_10 ? updateVal_10_srcType_1 : statusArray_10_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3999 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_31 = _T_3994 & _T_3999; // @[StatusArray.scala 134:33]
  wire  _T_4013 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_31 = _T_4008 & _T_4013; // @[StatusArray.scala 134:33]
  wire  _T_4027 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_31 = _T_4022 & _T_4027; // @[StatusArray.scala 134:33]
  wire  _T_4041 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_31 = _T_4036 & _T_4041; // @[StatusArray.scala 134:33]
  wire  _T_4055 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_31 = _T_4050 & _T_4055; // @[StatusArray.scala 134:33]
  wire  _T_4069 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_31 = _T_4064 & _T_4069; // @[StatusArray.scala 134:33]
  wire  _T_4083 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_10_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_31 = _T_4078 & _T_4083; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_31 = {dataMatchVec_2_31,dataMatchVec_1_31,dataMatchVec_0_31}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_31 = {dataMatchVec_6_31,dataMatchVec_5_31,dataMatchVec_4_31,dataMatchVec_3_31}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_10_srcType_2 = updateValid_10 ? updateVal_10_srcType_2 : statusArray_10_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_4110 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_32 = _T_4105 & _T_4110; // @[StatusArray.scala 134:33]
  wire  _T_4124 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_32 = _T_4119 & _T_4124; // @[StatusArray.scala 134:33]
  wire  _T_4138 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_32 = _T_4133 & _T_4138; // @[StatusArray.scala 134:33]
  wire  _T_4152 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_32 = _T_4147 & _T_4152; // @[StatusArray.scala 134:33]
  wire  _T_4166 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_32 = _T_4161 & _T_4166; // @[StatusArray.scala 134:33]
  wire  _T_4180 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_32 = _T_4175 & _T_4180; // @[StatusArray.scala 134:33]
  wire  _T_4194 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_10_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_32 = _T_4189 & _T_4194; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_32 = {dataMatchVec_2_32,dataMatchVec_1_32,dataMatchVec_0_32}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_32 = {dataMatchVec_6_32,dataMatchVec_5_32,dataMatchVec_4_32,dataMatchVec_3_32}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_4223 = {statusArray_10_srcState_2,statusArray_10_srcState_1,statusArray_10_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_35 = statusArray_11_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4237 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_33 = _T_4232 & _T_4237; // @[StatusArray.scala 134:33]
  wire  _T_4251 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_33 = _T_4246 & _T_4251; // @[StatusArray.scala 134:33]
  wire  _T_4265 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_33 = _T_4260 & _T_4265; // @[StatusArray.scala 134:33]
  wire  _T_4279 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_33 = _T_4274 & _T_4279; // @[StatusArray.scala 134:33]
  wire  _T_4293 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_33 = _T_4288 & _T_4293; // @[StatusArray.scala 134:33]
  wire  _T_4307 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_33 = _T_4302 & _T_4307; // @[StatusArray.scala 134:33]
  wire  _T_4321 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_33 = _T_4316 & _T_4321; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_33 = {dataMatchVec_2_33,dataMatchVec_1_33,dataMatchVec_0_33}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_33 = {dataMatchVec_6_33,dataMatchVec_5_33,dataMatchVec_4_33,dataMatchVec_3_33}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_11_srcType_1 = updateValid_11 ? updateVal_11_srcType_1 : statusArray_11_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4348 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_34 = _T_4343 & _T_4348; // @[StatusArray.scala 134:33]
  wire  _T_4362 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_34 = _T_4357 & _T_4362; // @[StatusArray.scala 134:33]
  wire  _T_4376 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_34 = _T_4371 & _T_4376; // @[StatusArray.scala 134:33]
  wire  _T_4390 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_34 = _T_4385 & _T_4390; // @[StatusArray.scala 134:33]
  wire  _T_4404 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_34 = _T_4399 & _T_4404; // @[StatusArray.scala 134:33]
  wire  _T_4418 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_34 = _T_4413 & _T_4418; // @[StatusArray.scala 134:33]
  wire  _T_4432 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_11_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_34 = _T_4427 & _T_4432; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_34 = {dataMatchVec_2_34,dataMatchVec_1_34,dataMatchVec_0_34}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_34 = {dataMatchVec_6_34,dataMatchVec_5_34,dataMatchVec_4_34,dataMatchVec_3_34}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_11_srcType_2 = updateValid_11 ? updateVal_11_srcType_2 : statusArray_11_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_4459 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_35 = _T_4454 & _T_4459; // @[StatusArray.scala 134:33]
  wire  _T_4473 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_35 = _T_4468 & _T_4473; // @[StatusArray.scala 134:33]
  wire  _T_4487 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_35 = _T_4482 & _T_4487; // @[StatusArray.scala 134:33]
  wire  _T_4501 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_35 = _T_4496 & _T_4501; // @[StatusArray.scala 134:33]
  wire  _T_4515 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_35 = _T_4510 & _T_4515; // @[StatusArray.scala 134:33]
  wire  _T_4529 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_35 = _T_4524 & _T_4529; // @[StatusArray.scala 134:33]
  wire  _T_4543 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_11_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_35 = _T_4538 & _T_4543; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_35 = {dataMatchVec_2_35,dataMatchVec_1_35,dataMatchVec_0_35}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_35 = {dataMatchVec_6_35,dataMatchVec_5_35,dataMatchVec_4_35,dataMatchVec_3_35}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_4572 = {statusArray_11_srcState_2,statusArray_11_srcState_1,statusArray_11_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_38 = statusArray_12_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4586 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_36 = _T_4581 & _T_4586; // @[StatusArray.scala 134:33]
  wire  _T_4600 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_36 = _T_4595 & _T_4600; // @[StatusArray.scala 134:33]
  wire  _T_4614 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_36 = _T_4609 & _T_4614; // @[StatusArray.scala 134:33]
  wire  _T_4628 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_36 = _T_4623 & _T_4628; // @[StatusArray.scala 134:33]
  wire  _T_4642 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_36 = _T_4637 & _T_4642; // @[StatusArray.scala 134:33]
  wire  _T_4656 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_36 = _T_4651 & _T_4656; // @[StatusArray.scala 134:33]
  wire  _T_4670 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_36 = _T_4665 & _T_4670; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_36 = {dataMatchVec_2_36,dataMatchVec_1_36,dataMatchVec_0_36}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_36 = {dataMatchVec_6_36,dataMatchVec_5_36,dataMatchVec_4_36,dataMatchVec_3_36}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_12_srcType_1 = updateValid_12 ? updateVal_12_srcType_1 : statusArray_12_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4697 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_37 = _T_4692 & _T_4697; // @[StatusArray.scala 134:33]
  wire  _T_4711 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_37 = _T_4706 & _T_4711; // @[StatusArray.scala 134:33]
  wire  _T_4725 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_37 = _T_4720 & _T_4725; // @[StatusArray.scala 134:33]
  wire  _T_4739 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_37 = _T_4734 & _T_4739; // @[StatusArray.scala 134:33]
  wire  _T_4753 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_37 = _T_4748 & _T_4753; // @[StatusArray.scala 134:33]
  wire  _T_4767 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_37 = _T_4762 & _T_4767; // @[StatusArray.scala 134:33]
  wire  _T_4781 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_12_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_37 = _T_4776 & _T_4781; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_37 = {dataMatchVec_2_37,dataMatchVec_1_37,dataMatchVec_0_37}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_37 = {dataMatchVec_6_37,dataMatchVec_5_37,dataMatchVec_4_37,dataMatchVec_3_37}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_12_srcType_2 = updateValid_12 ? updateVal_12_srcType_2 : statusArray_12_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_4808 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_38 = _T_4803 & _T_4808; // @[StatusArray.scala 134:33]
  wire  _T_4822 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_38 = _T_4817 & _T_4822; // @[StatusArray.scala 134:33]
  wire  _T_4836 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_38 = _T_4831 & _T_4836; // @[StatusArray.scala 134:33]
  wire  _T_4850 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_38 = _T_4845 & _T_4850; // @[StatusArray.scala 134:33]
  wire  _T_4864 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_38 = _T_4859 & _T_4864; // @[StatusArray.scala 134:33]
  wire  _T_4878 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_38 = _T_4873 & _T_4878; // @[StatusArray.scala 134:33]
  wire  _T_4892 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_12_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_38 = _T_4887 & _T_4892; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_38 = {dataMatchVec_2_38,dataMatchVec_1_38,dataMatchVec_0_38}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_38 = {dataMatchVec_6_38,dataMatchVec_5_38,dataMatchVec_4_38,dataMatchVec_3_38}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_4921 = {statusArray_12_srcState_2,statusArray_12_srcState_1,statusArray_12_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_41 = statusArray_13_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4935 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_39 = _T_4930 & _T_4935; // @[StatusArray.scala 134:33]
  wire  _T_4949 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_39 = _T_4944 & _T_4949; // @[StatusArray.scala 134:33]
  wire  _T_4963 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_39 = _T_4958 & _T_4963; // @[StatusArray.scala 134:33]
  wire  _T_4977 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_39 = _T_4972 & _T_4977; // @[StatusArray.scala 134:33]
  wire  _T_4991 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_39 = _T_4986 & _T_4991; // @[StatusArray.scala 134:33]
  wire  _T_5005 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_39 = _T_5000 & _T_5005; // @[StatusArray.scala 134:33]
  wire  _T_5019 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_39 = _T_5014 & _T_5019; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_39 = {dataMatchVec_2_39,dataMatchVec_1_39,dataMatchVec_0_39}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_39 = {dataMatchVec_6_39,dataMatchVec_5_39,dataMatchVec_4_39,dataMatchVec_3_39}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_13_srcType_1 = updateValid_13 ? updateVal_13_srcType_1 : statusArray_13_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5046 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_40 = _T_5041 & _T_5046; // @[StatusArray.scala 134:33]
  wire  _T_5060 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_40 = _T_5055 & _T_5060; // @[StatusArray.scala 134:33]
  wire  _T_5074 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_40 = _T_5069 & _T_5074; // @[StatusArray.scala 134:33]
  wire  _T_5088 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_40 = _T_5083 & _T_5088; // @[StatusArray.scala 134:33]
  wire  _T_5102 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_40 = _T_5097 & _T_5102; // @[StatusArray.scala 134:33]
  wire  _T_5116 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_40 = _T_5111 & _T_5116; // @[StatusArray.scala 134:33]
  wire  _T_5130 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_13_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_40 = _T_5125 & _T_5130; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_40 = {dataMatchVec_2_40,dataMatchVec_1_40,dataMatchVec_0_40}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_40 = {dataMatchVec_6_40,dataMatchVec_5_40,dataMatchVec_4_40,dataMatchVec_3_40}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_13_srcType_2 = updateValid_13 ? updateVal_13_srcType_2 : statusArray_13_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_5157 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_41 = _T_5152 & _T_5157; // @[StatusArray.scala 134:33]
  wire  _T_5171 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_41 = _T_5166 & _T_5171; // @[StatusArray.scala 134:33]
  wire  _T_5185 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_41 = _T_5180 & _T_5185; // @[StatusArray.scala 134:33]
  wire  _T_5199 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_41 = _T_5194 & _T_5199; // @[StatusArray.scala 134:33]
  wire  _T_5213 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_41 = _T_5208 & _T_5213; // @[StatusArray.scala 134:33]
  wire  _T_5227 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_41 = _T_5222 & _T_5227; // @[StatusArray.scala 134:33]
  wire  _T_5241 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_13_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_41 = _T_5236 & _T_5241; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_41 = {dataMatchVec_2_41,dataMatchVec_1_41,dataMatchVec_0_41}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_41 = {dataMatchVec_6_41,dataMatchVec_5_41,dataMatchVec_4_41,dataMatchVec_3_41}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_5270 = {statusArray_13_srcState_2,statusArray_13_srcState_1,statusArray_13_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_44 = statusArray_14_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5284 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_42 = _T_5279 & _T_5284; // @[StatusArray.scala 134:33]
  wire  _T_5298 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_42 = _T_5293 & _T_5298; // @[StatusArray.scala 134:33]
  wire  _T_5312 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_42 = _T_5307 & _T_5312; // @[StatusArray.scala 134:33]
  wire  _T_5326 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_42 = _T_5321 & _T_5326; // @[StatusArray.scala 134:33]
  wire  _T_5340 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_42 = _T_5335 & _T_5340; // @[StatusArray.scala 134:33]
  wire  _T_5354 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_42 = _T_5349 & _T_5354; // @[StatusArray.scala 134:33]
  wire  _T_5368 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_42 = _T_5363 & _T_5368; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_42 = {dataMatchVec_2_42,dataMatchVec_1_42,dataMatchVec_0_42}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_42 = {dataMatchVec_6_42,dataMatchVec_5_42,dataMatchVec_4_42,dataMatchVec_3_42}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_14_srcType_1 = updateValid_14 ? updateVal_14_srcType_1 : statusArray_14_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5395 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_43 = _T_5390 & _T_5395; // @[StatusArray.scala 134:33]
  wire  _T_5409 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_43 = _T_5404 & _T_5409; // @[StatusArray.scala 134:33]
  wire  _T_5423 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_43 = _T_5418 & _T_5423; // @[StatusArray.scala 134:33]
  wire  _T_5437 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_43 = _T_5432 & _T_5437; // @[StatusArray.scala 134:33]
  wire  _T_5451 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_43 = _T_5446 & _T_5451; // @[StatusArray.scala 134:33]
  wire  _T_5465 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_43 = _T_5460 & _T_5465; // @[StatusArray.scala 134:33]
  wire  _T_5479 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_14_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_43 = _T_5474 & _T_5479; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_43 = {dataMatchVec_2_43,dataMatchVec_1_43,dataMatchVec_0_43}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_43 = {dataMatchVec_6_43,dataMatchVec_5_43,dataMatchVec_4_43,dataMatchVec_3_43}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_14_srcType_2 = updateValid_14 ? updateVal_14_srcType_2 : statusArray_14_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_5506 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_44 = _T_5501 & _T_5506; // @[StatusArray.scala 134:33]
  wire  _T_5520 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_44 = _T_5515 & _T_5520; // @[StatusArray.scala 134:33]
  wire  _T_5534 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_44 = _T_5529 & _T_5534; // @[StatusArray.scala 134:33]
  wire  _T_5548 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_44 = _T_5543 & _T_5548; // @[StatusArray.scala 134:33]
  wire  _T_5562 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_44 = _T_5557 & _T_5562; // @[StatusArray.scala 134:33]
  wire  _T_5576 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_44 = _T_5571 & _T_5576; // @[StatusArray.scala 134:33]
  wire  _T_5590 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_14_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_44 = _T_5585 & _T_5590; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_44 = {dataMatchVec_2_44,dataMatchVec_1_44,dataMatchVec_0_44}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_44 = {dataMatchVec_6_44,dataMatchVec_5_44,dataMatchVec_4_44,dataMatchVec_3_44}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_5619 = {statusArray_14_srcState_2,statusArray_14_srcState_1,statusArray_14_srcState_0}; // @[StatusArray.scala 74:45]
  wire [3:0] _creditStep_T_47 = statusArray_15_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5633 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_45 = _T_5628 & _T_5633; // @[StatusArray.scala 134:33]
  wire  _T_5647 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_45 = _T_5642 & _T_5647; // @[StatusArray.scala 134:33]
  wire  _T_5661 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_45 = _T_5656 & _T_5661; // @[StatusArray.scala 134:33]
  wire  _T_5675 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_45 = _T_5670 & _T_5675; // @[StatusArray.scala 134:33]
  wire  _T_5689 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_45 = _T_5684 & _T_5689; // @[StatusArray.scala 134:33]
  wire  _T_5703 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_45 = _T_5698 & _T_5703; // @[StatusArray.scala 134:33]
  wire  _T_5717 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_45 = _T_5712 & _T_5717; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_45 = {dataMatchVec_2_45,dataMatchVec_1_45,dataMatchVec_0_45}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_45 = {dataMatchVec_6_45,dataMatchVec_5_45,dataMatchVec_4_45,dataMatchVec_3_45}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_15_srcType_1 = updateValid_15 ? updateVal_15_srcType_1 : statusArray_15_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5744 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_46 = _T_5739 & _T_5744; // @[StatusArray.scala 134:33]
  wire  _T_5758 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_46 = _T_5753 & _T_5758; // @[StatusArray.scala 134:33]
  wire  _T_5772 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_46 = _T_5767 & _T_5772; // @[StatusArray.scala 134:33]
  wire  _T_5786 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_46 = _T_5781 & _T_5786; // @[StatusArray.scala 134:33]
  wire  _T_5800 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_46 = _T_5795 & _T_5800; // @[StatusArray.scala 134:33]
  wire  _T_5814 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_46 = _T_5809 & _T_5814; // @[StatusArray.scala 134:33]
  wire  _T_5828 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_15_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_46 = _T_5823 & _T_5828; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_46 = {dataMatchVec_2_46,dataMatchVec_1_46,dataMatchVec_0_46}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_46 = {dataMatchVec_6_46,dataMatchVec_5_46,dataMatchVec_4_46,dataMatchVec_3_46}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_15_srcType_2 = updateValid_15 ? updateVal_15_srcType_2 : statusArray_15_srcType_2; // @[StatusArray.scala 249:30]
  wire  _T_5855 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_47 = _T_5850 & _T_5855; // @[StatusArray.scala 134:33]
  wire  _T_5869 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_47 = _T_5864 & _T_5869; // @[StatusArray.scala 134:33]
  wire  _T_5883 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_47 = _T_5878 & _T_5883; // @[StatusArray.scala 134:33]
  wire  _T_5897 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_47 = _T_5892 & _T_5897; // @[StatusArray.scala 134:33]
  wire  _T_5911 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_47 = _T_5906 & _T_5911; // @[StatusArray.scala 134:33]
  wire  _T_5925 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_47 = _T_5920 & _T_5925; // @[StatusArray.scala 134:33]
  wire  _T_5939 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_15_srcType_2[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_47 = _T_5934 & _T_5939; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_47 = {dataMatchVec_2_47,dataMatchVec_1_47,dataMatchVec_0_47}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_47 = {dataMatchVec_6_47,dataMatchVec_5_47,dataMatchVec_4_47,dataMatchVec_3_47}; // @[StatusArray.scala 138:43]
  wire [2:0] _T_5968 = {statusArray_15_srcState_2,statusArray_15_srcState_1,statusArray_15_srcState_0}; // @[StatusArray.scala 74:45]
  wire [7:0] io_isValid_lo = {statusArray_7_valid,statusArray_6_valid,statusArray_5_valid,statusArray_4_valid,
    statusArray_3_valid,statusArray_2_valid,statusArray_1_valid,statusArray_0_valid}; // @[StatusArray.scala 260:51]
  wire [7:0] io_isValid_hi = {statusArray_15_valid,statusArray_14_valid,statusArray_13_valid,statusArray_12_valid,
    statusArray_11_valid,statusArray_10_valid,statusArray_9_valid,statusArray_8_valid}; // @[StatusArray.scala 260:51]
  wire  _io_canIssue_T = statusArrayNext_0_valid & readyVecNext_0; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_1 = statusArrayNext_1_valid & readyVecNext_1; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_2 = statusArrayNext_2_valid & readyVecNext_2; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_3 = statusArrayNext_3_valid & readyVecNext_3; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_4 = statusArrayNext_4_valid & readyVecNext_4; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_5 = statusArrayNext_5_valid & readyVecNext_5; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_6 = statusArrayNext_6_valid & readyVecNext_6; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_7 = statusArrayNext_7_valid & readyVecNext_7; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_8 = statusArrayNext_8_valid & readyVecNext_8; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_9 = statusArrayNext_9_valid & readyVecNext_9; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_10 = statusArrayNext_10_valid & readyVecNext_10; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_11 = statusArrayNext_11_valid & readyVecNext_11; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_12 = statusArrayNext_12_valid & readyVecNext_12; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_13 = statusArrayNext_13_valid & readyVecNext_13; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_14 = statusArrayNext_14_valid & readyVecNext_14; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_15 = statusArrayNext_15_valid & readyVecNext_15; // @[StatusArray.scala 261:95]
  wire [7:0] io_canIssue_lo = {_io_canIssue_T_7,_io_canIssue_T_6,_io_canIssue_T_5,_io_canIssue_T_4,_io_canIssue_T_3,
    _io_canIssue_T_2,_io_canIssue_T_1,_io_canIssue_T}; // @[StatusArray.scala 261:102]
  wire [7:0] io_canIssue_hi = {_io_canIssue_T_15,_io_canIssue_T_14,_io_canIssue_T_13,_io_canIssue_T_12,_io_canIssue_T_11
    ,_io_canIssue_T_10,_io_canIssue_T_9,_io_canIssue_T_8}; // @[StatusArray.scala 261:102]
  wire  _T_6000 = io_issueGranted_0_bits[15] & statusArray_15_isFirstIssue; // @[Mux.scala 27:73]
  wire  _T_6047 = io_issueGranted_1_bits[15] & statusArray_15_isFirstIssue; // @[Mux.scala 27:73]
  wire  _T_6065 = &_T_733 | readyVec_midStateReady; // @[StatusArray.scala 70:26]
  wire  _T_6068 = &_T_1082 | readyVec_midStateReady_1; // @[StatusArray.scala 70:26]
  wire  _T_6071 = &_T_1431 | readyVec_midStateReady_2; // @[StatusArray.scala 70:26]
  wire  _T_6074 = &_T_1780 | readyVec_midStateReady_3; // @[StatusArray.scala 70:26]
  wire  _T_6077 = &_T_2129 | readyVec_midStateReady_4; // @[StatusArray.scala 70:26]
  wire  _T_6080 = &_T_2478 | readyVec_midStateReady_5; // @[StatusArray.scala 70:26]
  wire  _T_6083 = &_T_2827 | readyVec_midStateReady_6; // @[StatusArray.scala 70:26]
  wire  _T_6086 = &_T_3176 | readyVec_midStateReady_7; // @[StatusArray.scala 70:26]
  wire  _T_6089 = &_T_3525 | readyVec_midStateReady_8; // @[StatusArray.scala 70:26]
  wire  _T_6092 = &_T_3874 | readyVec_midStateReady_9; // @[StatusArray.scala 70:26]
  wire  _T_6095 = &_T_4223 | readyVec_midStateReady_10; // @[StatusArray.scala 70:26]
  wire  _T_6098 = &_T_4572 | readyVec_midStateReady_11; // @[StatusArray.scala 70:26]
  wire  _T_6101 = &_T_4921 | readyVec_midStateReady_12; // @[StatusArray.scala 70:26]
  wire  _T_6104 = &_T_5270 | readyVec_midStateReady_13; // @[StatusArray.scala 70:26]
  wire  _T_6107 = &_T_5619 | readyVec_midStateReady_14; // @[StatusArray.scala 70:26]
  wire  _T_6110 = &_T_5968 | readyVec_midStateReady_15; // @[StatusArray.scala 70:26]
  wire  _T_6142 = io_issueGranted_0_bits[15] & _T_6110; // @[Mux.scala 27:73]
  wire  _T_6237 = io_issueGranted_1_bits[15] & _T_6110; // @[Mux.scala 27:73]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 260:51]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 261:102]
  assign io_wakeupMatch_0_0 = {dataMatch_hi,dataMatch_lo}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_0_1 = {dataMatch_hi_1,dataMatch_lo_1}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_0_2 = {dataMatch_hi_2,dataMatch_lo_2}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_0 = {dataMatch_hi_3,dataMatch_lo_3}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_1 = {dataMatch_hi_4,dataMatch_lo_4}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_2 = {dataMatch_hi_5,dataMatch_lo_5}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_0 = {dataMatch_hi_6,dataMatch_lo_6}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_1 = {dataMatch_hi_7,dataMatch_lo_7}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_2 = {dataMatch_hi_8,dataMatch_lo_8}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_0 = {dataMatch_hi_9,dataMatch_lo_9}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_1 = {dataMatch_hi_10,dataMatch_lo_10}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_2 = {dataMatch_hi_11,dataMatch_lo_11}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_0 = {dataMatch_hi_12,dataMatch_lo_12}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_1 = {dataMatch_hi_13,dataMatch_lo_13}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_2 = {dataMatch_hi_14,dataMatch_lo_14}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_0 = {dataMatch_hi_15,dataMatch_lo_15}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_1 = {dataMatch_hi_16,dataMatch_lo_16}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_2 = {dataMatch_hi_17,dataMatch_lo_17}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_0 = {dataMatch_hi_18,dataMatch_lo_18}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_1 = {dataMatch_hi_19,dataMatch_lo_19}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_2 = {dataMatch_hi_20,dataMatch_lo_20}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_0 = {dataMatch_hi_21,dataMatch_lo_21}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_1 = {dataMatch_hi_22,dataMatch_lo_22}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_2 = {dataMatch_hi_23,dataMatch_lo_23}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_0 = {dataMatch_hi_24,dataMatch_lo_24}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_1 = {dataMatch_hi_25,dataMatch_lo_25}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_2 = {dataMatch_hi_26,dataMatch_lo_26}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_0 = {dataMatch_hi_27,dataMatch_lo_27}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_1 = {dataMatch_hi_28,dataMatch_lo_28}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_2 = {dataMatch_hi_29,dataMatch_lo_29}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_0 = {dataMatch_hi_30,dataMatch_lo_30}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_1 = {dataMatch_hi_31,dataMatch_lo_31}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_2 = {dataMatch_hi_32,dataMatch_lo_32}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_0 = {dataMatch_hi_33,dataMatch_lo_33}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_1 = {dataMatch_hi_34,dataMatch_lo_34}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_2 = {dataMatch_hi_35,dataMatch_lo_35}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_0 = {dataMatch_hi_36,dataMatch_lo_36}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_1 = {dataMatch_hi_37,dataMatch_lo_37}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_2 = {dataMatch_hi_38,dataMatch_lo_38}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_0 = {dataMatch_hi_39,dataMatch_lo_39}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_1 = {dataMatch_hi_40,dataMatch_lo_40}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_2 = {dataMatch_hi_41,dataMatch_lo_41}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_0 = {dataMatch_hi_42,dataMatch_lo_42}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_1 = {dataMatch_hi_43,dataMatch_lo_43}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_2 = {dataMatch_hi_44,dataMatch_lo_44}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_0 = {dataMatch_hi_45,dataMatch_lo_45}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_1 = {dataMatch_hi_46,dataMatch_lo_46}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_2 = {dataMatch_hi_47,dataMatch_lo_47}; // @[StatusArray.scala 138:43]
  assign io_isFirstIssue_0 = io_issueGranted_0_bits[0] & statusArray_0_isFirstIssue | io_issueGranted_0_bits[1] &
    statusArray_1_isFirstIssue | io_issueGranted_0_bits[2] & statusArray_2_isFirstIssue | io_issueGranted_0_bits[3] &
    statusArray_3_isFirstIssue | io_issueGranted_0_bits[4] & statusArray_4_isFirstIssue | io_issueGranted_0_bits[5] &
    statusArray_5_isFirstIssue | io_issueGranted_0_bits[6] & statusArray_6_isFirstIssue | io_issueGranted_0_bits[7] &
    statusArray_7_isFirstIssue | io_issueGranted_0_bits[8] & statusArray_8_isFirstIssue | io_issueGranted_0_bits[9] &
    statusArray_9_isFirstIssue | io_issueGranted_0_bits[10] & statusArray_10_isFirstIssue | io_issueGranted_0_bits[11]
     & statusArray_11_isFirstIssue | io_issueGranted_0_bits[12] & statusArray_12_isFirstIssue | io_issueGranted_0_bits[
    13] & statusArray_13_isFirstIssue | io_issueGranted_0_bits[14] & statusArray_14_isFirstIssue | _T_6000; // @[Mux.scala 27:73]
  assign io_isFirstIssue_1 = io_issueGranted_1_bits[0] & statusArray_0_isFirstIssue | io_issueGranted_1_bits[1] &
    statusArray_1_isFirstIssue | io_issueGranted_1_bits[2] & statusArray_2_isFirstIssue | io_issueGranted_1_bits[3] &
    statusArray_3_isFirstIssue | io_issueGranted_1_bits[4] & statusArray_4_isFirstIssue | io_issueGranted_1_bits[5] &
    statusArray_5_isFirstIssue | io_issueGranted_1_bits[6] & statusArray_6_isFirstIssue | io_issueGranted_1_bits[7] &
    statusArray_7_isFirstIssue | io_issueGranted_1_bits[8] & statusArray_8_isFirstIssue | io_issueGranted_1_bits[9] &
    statusArray_9_isFirstIssue | io_issueGranted_1_bits[10] & statusArray_10_isFirstIssue | io_issueGranted_1_bits[11]
     & statusArray_11_isFirstIssue | io_issueGranted_1_bits[12] & statusArray_12_isFirstIssue | io_issueGranted_1_bits[
    13] & statusArray_13_isFirstIssue | io_issueGranted_1_bits[14] & statusArray_14_isFirstIssue | _T_6047; // @[Mux.scala 27:73]
  assign io_allSrcReady_0 = io_issueGranted_0_bits[0] & _T_6065 | io_issueGranted_0_bits[1] & _T_6068 |
    io_issueGranted_0_bits[2] & _T_6071 | io_issueGranted_0_bits[3] & _T_6074 | io_issueGranted_0_bits[4] & _T_6077 |
    io_issueGranted_0_bits[5] & _T_6080 | io_issueGranted_0_bits[6] & _T_6083 | io_issueGranted_0_bits[7] & _T_6086 |
    io_issueGranted_0_bits[8] & _T_6089 | io_issueGranted_0_bits[9] & _T_6092 | io_issueGranted_0_bits[10] & _T_6095 |
    io_issueGranted_0_bits[11] & _T_6098 | io_issueGranted_0_bits[12] & _T_6101 | io_issueGranted_0_bits[13] & _T_6104
     | io_issueGranted_0_bits[14] & _T_6107 | _T_6142; // @[Mux.scala 27:73]
  assign io_allSrcReady_1 = io_issueGranted_1_bits[0] & _T_6065 | io_issueGranted_1_bits[1] & _T_6068 |
    io_issueGranted_1_bits[2] & _T_6071 | io_issueGranted_1_bits[3] & _T_6074 | io_issueGranted_1_bits[4] & _T_6077 |
    io_issueGranted_1_bits[5] & _T_6080 | io_issueGranted_1_bits[6] & _T_6083 | io_issueGranted_1_bits[7] & _T_6086 |
    io_issueGranted_1_bits[8] & _T_6089 | io_issueGranted_1_bits[9] & _T_6092 | io_issueGranted_1_bits[10] & _T_6095 |
    io_issueGranted_1_bits[11] & _T_6098 | io_issueGranted_1_bits[12] & _T_6101 | io_issueGranted_1_bits[13] & _T_6104
     | io_issueGranted_1_bits[14] & _T_6107 | _T_6237; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_0_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_0_valid <= statusArrayNext_0_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_0) begin // @[StatusArray.scala 190:34]
      statusArray_0_scheduled <= 1'h0;
    end else begin
      statusArray_0_scheduled <= hasIssued | keepScheduled;
    end
    if (updateValid_0) begin // @[StatusArray.scala 228:29]
      statusArray_0_credit <= 4'h0;
    end else if (statusArray_0_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_0_credit <= _creditStep_T_2;
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_725; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_727; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_2 <= stateWakeupEn_2 | _T_729; // @[StatusArray.scala 241:50]
    statusArray_0_midState <= ~updateValid_0 & (io_updateMidState[0] | statusArray_0_midState); // @[StatusArray.scala 245:44]
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_0 <= updateVal_0_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_1 <= updateVal_0_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_2 <= updateVal_0_psrc_2;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_0 <= updateVal_0_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_1 <= updateVal_0_srcType_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_2 <= updateVal_0_srcType_2;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_flag <= updateVal_0_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_value <= updateVal_0_robIdx_value;
    end
    if (hasIssued) begin // @[StatusArray.scala 255:35]
      statusArray_0_isFirstIssue <= 1'h0;
    end else begin
      statusArray_0_isFirstIssue <= updateValid_0 | statusArray_0_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_1_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_1_valid <= statusArrayNext_1_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_1) begin // @[StatusArray.scala 190:34]
      statusArray_1_scheduled <= 1'h0;
    end else begin
      statusArray_1_scheduled <= hasIssued_1 | keepScheduled_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 228:29]
      statusArray_1_credit <= 4'h0;
    end else if (statusArray_1_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_1_credit <= _creditStep_T_5;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1074; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_1076; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_2 <= stateWakeupEn_2_1 | _T_1078; // @[StatusArray.scala 241:50]
    statusArray_1_midState <= ~updateValid_1 & (io_updateMidState[1] | statusArray_1_midState); // @[StatusArray.scala 245:44]
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_0 <= updateVal_1_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_1 <= updateVal_1_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_2 <= updateVal_1_psrc_2;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_0 <= updateVal_1_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_1 <= updateVal_1_srcType_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_2 <= updateVal_1_srcType_2;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_flag <= updateVal_1_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_value <= updateVal_1_robIdx_value;
    end
    if (hasIssued_1) begin // @[StatusArray.scala 255:35]
      statusArray_1_isFirstIssue <= 1'h0;
    end else begin
      statusArray_1_isFirstIssue <= updateValid_1 | statusArray_1_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_2_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_2_valid <= statusArrayNext_2_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_2) begin // @[StatusArray.scala 190:34]
      statusArray_2_scheduled <= 1'h0;
    end else begin
      statusArray_2_scheduled <= hasIssued_2 | keepScheduled_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 228:29]
      statusArray_2_credit <= 4'h0;
    end else if (statusArray_2_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_2_credit <= _creditStep_T_8;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1423; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_1425; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_2 <= stateWakeupEn_2_2 | _T_1427; // @[StatusArray.scala 241:50]
    statusArray_2_midState <= ~updateValid_2 & (io_updateMidState[2] | statusArray_2_midState); // @[StatusArray.scala 245:44]
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_0 <= updateVal_2_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_1 <= updateVal_2_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_2 <= updateVal_2_psrc_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_0 <= updateVal_2_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_1 <= updateVal_2_srcType_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_2 <= updateVal_2_srcType_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_flag <= updateVal_2_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_value <= updateVal_2_robIdx_value;
    end
    if (hasIssued_2) begin // @[StatusArray.scala 255:35]
      statusArray_2_isFirstIssue <= 1'h0;
    end else begin
      statusArray_2_isFirstIssue <= updateValid_2 | statusArray_2_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_3_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_3_valid <= statusArrayNext_3_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_3) begin // @[StatusArray.scala 190:34]
      statusArray_3_scheduled <= 1'h0;
    end else begin
      statusArray_3_scheduled <= hasIssued_3 | keepScheduled_3;
    end
    if (updateValid_3) begin // @[StatusArray.scala 228:29]
      statusArray_3_credit <= 4'h0;
    end else if (statusArray_3_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_3_credit <= _creditStep_T_11;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1772; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_1774; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_2 <= stateWakeupEn_2_3 | _T_1776; // @[StatusArray.scala 241:50]
    statusArray_3_midState <= ~updateValid_3 & (io_updateMidState[3] | statusArray_3_midState); // @[StatusArray.scala 245:44]
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_0 <= updateVal_3_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_1 <= updateVal_3_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_2 <= updateVal_3_psrc_2;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_0 <= updateVal_3_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_1 <= updateVal_3_srcType_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_2 <= updateVal_3_srcType_2;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_flag <= updateVal_3_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_value <= updateVal_3_robIdx_value;
    end
    if (hasIssued_3) begin // @[StatusArray.scala 255:35]
      statusArray_3_isFirstIssue <= 1'h0;
    end else begin
      statusArray_3_isFirstIssue <= updateValid_3 | statusArray_3_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_4_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_4_valid <= statusArrayNext_4_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_4) begin // @[StatusArray.scala 190:34]
      statusArray_4_scheduled <= 1'h0;
    end else begin
      statusArray_4_scheduled <= hasIssued_4 | keepScheduled_4;
    end
    if (updateValid_4) begin // @[StatusArray.scala 228:29]
      statusArray_4_credit <= 4'h0;
    end else if (statusArray_4_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_4_credit <= _creditStep_T_14;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_2121; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_2123; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_2 <= stateWakeupEn_2_4 | _T_2125; // @[StatusArray.scala 241:50]
    statusArray_4_midState <= ~updateValid_4 & (io_updateMidState[4] | statusArray_4_midState); // @[StatusArray.scala 245:44]
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_0 <= updateVal_4_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_1 <= updateVal_4_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_2 <= updateVal_4_psrc_2;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_0 <= updateVal_4_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_1 <= updateVal_4_srcType_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_2 <= updateVal_4_srcType_2;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_flag <= updateVal_4_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_value <= updateVal_4_robIdx_value;
    end
    if (hasIssued_4) begin // @[StatusArray.scala 255:35]
      statusArray_4_isFirstIssue <= 1'h0;
    end else begin
      statusArray_4_isFirstIssue <= updateValid_4 | statusArray_4_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_5_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_5_valid <= statusArrayNext_5_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_5) begin // @[StatusArray.scala 190:34]
      statusArray_5_scheduled <= 1'h0;
    end else begin
      statusArray_5_scheduled <= hasIssued_5 | keepScheduled_5;
    end
    if (updateValid_5) begin // @[StatusArray.scala 228:29]
      statusArray_5_credit <= 4'h0;
    end else if (statusArray_5_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_5_credit <= _creditStep_T_17;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_2470; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_2472; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_2 <= stateWakeupEn_2_5 | _T_2474; // @[StatusArray.scala 241:50]
    statusArray_5_midState <= ~updateValid_5 & (io_updateMidState[5] | statusArray_5_midState); // @[StatusArray.scala 245:44]
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_0 <= updateVal_5_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_1 <= updateVal_5_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_2 <= updateVal_5_psrc_2;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_0 <= updateVal_5_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_1 <= updateVal_5_srcType_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_2 <= updateVal_5_srcType_2;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_flag <= updateVal_5_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_value <= updateVal_5_robIdx_value;
    end
    if (hasIssued_5) begin // @[StatusArray.scala 255:35]
      statusArray_5_isFirstIssue <= 1'h0;
    end else begin
      statusArray_5_isFirstIssue <= updateValid_5 | statusArray_5_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_6_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_6_valid <= statusArrayNext_6_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_6) begin // @[StatusArray.scala 190:34]
      statusArray_6_scheduled <= 1'h0;
    end else begin
      statusArray_6_scheduled <= hasIssued_6 | keepScheduled_6;
    end
    if (updateValid_6) begin // @[StatusArray.scala 228:29]
      statusArray_6_credit <= 4'h0;
    end else if (statusArray_6_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_6_credit <= _creditStep_T_20;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_2819; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_2821; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_2 <= stateWakeupEn_2_6 | _T_2823; // @[StatusArray.scala 241:50]
    statusArray_6_midState <= ~updateValid_6 & (io_updateMidState[6] | statusArray_6_midState); // @[StatusArray.scala 245:44]
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_0 <= updateVal_6_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_1 <= updateVal_6_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_2 <= updateVal_6_psrc_2;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_0 <= updateVal_6_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_1 <= updateVal_6_srcType_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_2 <= updateVal_6_srcType_2;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_flag <= updateVal_6_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_value <= updateVal_6_robIdx_value;
    end
    if (hasIssued_6) begin // @[StatusArray.scala 255:35]
      statusArray_6_isFirstIssue <= 1'h0;
    end else begin
      statusArray_6_isFirstIssue <= updateValid_6 | statusArray_6_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_7_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_7_valid <= statusArrayNext_7_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_7) begin // @[StatusArray.scala 190:34]
      statusArray_7_scheduled <= 1'h0;
    end else begin
      statusArray_7_scheduled <= hasIssued_7 | keepScheduled_7;
    end
    if (updateValid_7) begin // @[StatusArray.scala 228:29]
      statusArray_7_credit <= 4'h0;
    end else if (statusArray_7_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_7_credit <= _creditStep_T_23;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_3168; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_3170; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_2 <= stateWakeupEn_2_7 | _T_3172; // @[StatusArray.scala 241:50]
    statusArray_7_midState <= ~updateValid_7 & (io_updateMidState[7] | statusArray_7_midState); // @[StatusArray.scala 245:44]
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_0 <= updateVal_7_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_1 <= updateVal_7_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_2 <= updateVal_7_psrc_2;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_0 <= updateVal_7_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_1 <= updateVal_7_srcType_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_2 <= updateVal_7_srcType_2;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_flag <= updateVal_7_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_value <= updateVal_7_robIdx_value;
    end
    if (hasIssued_7) begin // @[StatusArray.scala 255:35]
      statusArray_7_isFirstIssue <= 1'h0;
    end else begin
      statusArray_7_isFirstIssue <= updateValid_7 | statusArray_7_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_8_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_8_valid <= statusArrayNext_8_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_8) begin // @[StatusArray.scala 190:34]
      statusArray_8_scheduled <= 1'h0;
    end else begin
      statusArray_8_scheduled <= hasIssued_8 | keepScheduled_8;
    end
    if (updateValid_8) begin // @[StatusArray.scala 228:29]
      statusArray_8_credit <= 4'h0;
    end else if (statusArray_8_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_8_credit <= _creditStep_T_26;
    end
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_3517; // @[StatusArray.scala 241:50]
    statusArray_8_srcState_1 <= stateWakeupEn_1_8 | _T_3519; // @[StatusArray.scala 241:50]
    statusArray_8_srcState_2 <= stateWakeupEn_2_8 | _T_3521; // @[StatusArray.scala 241:50]
    statusArray_8_midState <= ~updateValid_8 & (io_updateMidState[8] | statusArray_8_midState); // @[StatusArray.scala 245:44]
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_0 <= updateVal_8_psrc_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_1 <= updateVal_8_psrc_1;
    end
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_2 <= updateVal_8_psrc_2;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_0 <= updateVal_8_srcType_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_1 <= updateVal_8_srcType_1;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_2 <= updateVal_8_srcType_2;
    end
    if (updateValid_8) begin // @[StatusArray.scala 250:29]
      statusArray_8_robIdx_flag <= updateVal_8_robIdx_flag;
    end
    if (updateValid_8) begin // @[StatusArray.scala 250:29]
      statusArray_8_robIdx_value <= updateVal_8_robIdx_value;
    end
    if (hasIssued_8) begin // @[StatusArray.scala 255:35]
      statusArray_8_isFirstIssue <= 1'h0;
    end else begin
      statusArray_8_isFirstIssue <= updateValid_8 | statusArray_8_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_9_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_9_valid <= statusArrayNext_9_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_9) begin // @[StatusArray.scala 190:34]
      statusArray_9_scheduled <= 1'h0;
    end else begin
      statusArray_9_scheduled <= hasIssued_9 | keepScheduled_9;
    end
    if (updateValid_9) begin // @[StatusArray.scala 228:29]
      statusArray_9_credit <= 4'h0;
    end else if (statusArray_9_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_9_credit <= _creditStep_T_29;
    end
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_3866; // @[StatusArray.scala 241:50]
    statusArray_9_srcState_1 <= stateWakeupEn_1_9 | _T_3868; // @[StatusArray.scala 241:50]
    statusArray_9_srcState_2 <= stateWakeupEn_2_9 | _T_3870; // @[StatusArray.scala 241:50]
    statusArray_9_midState <= ~updateValid_9 & (io_updateMidState[9] | statusArray_9_midState); // @[StatusArray.scala 245:44]
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_0 <= updateVal_9_psrc_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_1 <= updateVal_9_psrc_1;
    end
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_2 <= updateVal_9_psrc_2;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_0 <= updateVal_9_srcType_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_1 <= updateVal_9_srcType_1;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_2 <= updateVal_9_srcType_2;
    end
    if (updateValid_9) begin // @[StatusArray.scala 250:29]
      statusArray_9_robIdx_flag <= updateVal_9_robIdx_flag;
    end
    if (updateValid_9) begin // @[StatusArray.scala 250:29]
      statusArray_9_robIdx_value <= updateVal_9_robIdx_value;
    end
    if (hasIssued_9) begin // @[StatusArray.scala 255:35]
      statusArray_9_isFirstIssue <= 1'h0;
    end else begin
      statusArray_9_isFirstIssue <= updateValid_9 | statusArray_9_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_10_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_10_valid <= statusArrayNext_10_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_10) begin // @[StatusArray.scala 190:34]
      statusArray_10_scheduled <= 1'h0;
    end else begin
      statusArray_10_scheduled <= hasIssued_10 | keepScheduled_10;
    end
    if (updateValid_10) begin // @[StatusArray.scala 228:29]
      statusArray_10_credit <= 4'h0;
    end else if (statusArray_10_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_10_credit <= _creditStep_T_32;
    end
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_4215; // @[StatusArray.scala 241:50]
    statusArray_10_srcState_1 <= stateWakeupEn_1_10 | _T_4217; // @[StatusArray.scala 241:50]
    statusArray_10_srcState_2 <= stateWakeupEn_2_10 | _T_4219; // @[StatusArray.scala 241:50]
    statusArray_10_midState <= ~updateValid_10 & (io_updateMidState[10] | statusArray_10_midState); // @[StatusArray.scala 245:44]
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_0 <= updateVal_10_psrc_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_1 <= updateVal_10_psrc_1;
    end
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_2 <= updateVal_10_psrc_2;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_0 <= updateVal_10_srcType_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_1 <= updateVal_10_srcType_1;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_2 <= updateVal_10_srcType_2;
    end
    if (updateValid_10) begin // @[StatusArray.scala 250:29]
      statusArray_10_robIdx_flag <= updateVal_10_robIdx_flag;
    end
    if (updateValid_10) begin // @[StatusArray.scala 250:29]
      statusArray_10_robIdx_value <= updateVal_10_robIdx_value;
    end
    if (hasIssued_10) begin // @[StatusArray.scala 255:35]
      statusArray_10_isFirstIssue <= 1'h0;
    end else begin
      statusArray_10_isFirstIssue <= updateValid_10 | statusArray_10_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_11_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_11_valid <= statusArrayNext_11_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_11) begin // @[StatusArray.scala 190:34]
      statusArray_11_scheduled <= 1'h0;
    end else begin
      statusArray_11_scheduled <= hasIssued_11 | keepScheduled_11;
    end
    if (updateValid_11) begin // @[StatusArray.scala 228:29]
      statusArray_11_credit <= 4'h0;
    end else if (statusArray_11_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_11_credit <= _creditStep_T_35;
    end
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_4564; // @[StatusArray.scala 241:50]
    statusArray_11_srcState_1 <= stateWakeupEn_1_11 | _T_4566; // @[StatusArray.scala 241:50]
    statusArray_11_srcState_2 <= stateWakeupEn_2_11 | _T_4568; // @[StatusArray.scala 241:50]
    statusArray_11_midState <= ~updateValid_11 & (io_updateMidState[11] | statusArray_11_midState); // @[StatusArray.scala 245:44]
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_0 <= updateVal_11_psrc_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_1 <= updateVal_11_psrc_1;
    end
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_2 <= updateVal_11_psrc_2;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_0 <= updateVal_11_srcType_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_1 <= updateVal_11_srcType_1;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_2 <= updateVal_11_srcType_2;
    end
    if (updateValid_11) begin // @[StatusArray.scala 250:29]
      statusArray_11_robIdx_flag <= updateVal_11_robIdx_flag;
    end
    if (updateValid_11) begin // @[StatusArray.scala 250:29]
      statusArray_11_robIdx_value <= updateVal_11_robIdx_value;
    end
    if (hasIssued_11) begin // @[StatusArray.scala 255:35]
      statusArray_11_isFirstIssue <= 1'h0;
    end else begin
      statusArray_11_isFirstIssue <= updateValid_11 | statusArray_11_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_12_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_12_valid <= statusArrayNext_12_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_12) begin // @[StatusArray.scala 190:34]
      statusArray_12_scheduled <= 1'h0;
    end else begin
      statusArray_12_scheduled <= hasIssued_12 | keepScheduled_12;
    end
    if (updateValid_12) begin // @[StatusArray.scala 228:29]
      statusArray_12_credit <= 4'h0;
    end else if (statusArray_12_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_12_credit <= _creditStep_T_38;
    end
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_4913; // @[StatusArray.scala 241:50]
    statusArray_12_srcState_1 <= stateWakeupEn_1_12 | _T_4915; // @[StatusArray.scala 241:50]
    statusArray_12_srcState_2 <= stateWakeupEn_2_12 | _T_4917; // @[StatusArray.scala 241:50]
    statusArray_12_midState <= ~updateValid_12 & (io_updateMidState[12] | statusArray_12_midState); // @[StatusArray.scala 245:44]
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_0 <= updateVal_12_psrc_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_1 <= updateVal_12_psrc_1;
    end
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_2 <= updateVal_12_psrc_2;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_0 <= updateVal_12_srcType_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_1 <= updateVal_12_srcType_1;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_2 <= updateVal_12_srcType_2;
    end
    if (updateValid_12) begin // @[StatusArray.scala 250:29]
      statusArray_12_robIdx_flag <= updateVal_12_robIdx_flag;
    end
    if (updateValid_12) begin // @[StatusArray.scala 250:29]
      statusArray_12_robIdx_value <= updateVal_12_robIdx_value;
    end
    if (hasIssued_12) begin // @[StatusArray.scala 255:35]
      statusArray_12_isFirstIssue <= 1'h0;
    end else begin
      statusArray_12_isFirstIssue <= updateValid_12 | statusArray_12_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_13_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_13_valid <= statusArrayNext_13_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_13) begin // @[StatusArray.scala 190:34]
      statusArray_13_scheduled <= 1'h0;
    end else begin
      statusArray_13_scheduled <= hasIssued_13 | keepScheduled_13;
    end
    if (updateValid_13) begin // @[StatusArray.scala 228:29]
      statusArray_13_credit <= 4'h0;
    end else if (statusArray_13_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_13_credit <= _creditStep_T_41;
    end
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_5262; // @[StatusArray.scala 241:50]
    statusArray_13_srcState_1 <= stateWakeupEn_1_13 | _T_5264; // @[StatusArray.scala 241:50]
    statusArray_13_srcState_2 <= stateWakeupEn_2_13 | _T_5266; // @[StatusArray.scala 241:50]
    statusArray_13_midState <= ~updateValid_13 & (io_updateMidState[13] | statusArray_13_midState); // @[StatusArray.scala 245:44]
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_0 <= updateVal_13_psrc_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_1 <= updateVal_13_psrc_1;
    end
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_2 <= updateVal_13_psrc_2;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_0 <= updateVal_13_srcType_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_1 <= updateVal_13_srcType_1;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_2 <= updateVal_13_srcType_2;
    end
    if (updateValid_13) begin // @[StatusArray.scala 250:29]
      statusArray_13_robIdx_flag <= updateVal_13_robIdx_flag;
    end
    if (updateValid_13) begin // @[StatusArray.scala 250:29]
      statusArray_13_robIdx_value <= updateVal_13_robIdx_value;
    end
    if (hasIssued_13) begin // @[StatusArray.scala 255:35]
      statusArray_13_isFirstIssue <= 1'h0;
    end else begin
      statusArray_13_isFirstIssue <= updateValid_13 | statusArray_13_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_14_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_14_valid <= statusArrayNext_14_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_14) begin // @[StatusArray.scala 190:34]
      statusArray_14_scheduled <= 1'h0;
    end else begin
      statusArray_14_scheduled <= hasIssued_14 | keepScheduled_14;
    end
    if (updateValid_14) begin // @[StatusArray.scala 228:29]
      statusArray_14_credit <= 4'h0;
    end else if (statusArray_14_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_14_credit <= _creditStep_T_44;
    end
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_5611; // @[StatusArray.scala 241:50]
    statusArray_14_srcState_1 <= stateWakeupEn_1_14 | _T_5613; // @[StatusArray.scala 241:50]
    statusArray_14_srcState_2 <= stateWakeupEn_2_14 | _T_5615; // @[StatusArray.scala 241:50]
    statusArray_14_midState <= ~updateValid_14 & (io_updateMidState[14] | statusArray_14_midState); // @[StatusArray.scala 245:44]
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_0 <= updateVal_14_psrc_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_1 <= updateVal_14_psrc_1;
    end
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_2 <= updateVal_14_psrc_2;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_0 <= updateVal_14_srcType_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_1 <= updateVal_14_srcType_1;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_2 <= updateVal_14_srcType_2;
    end
    if (updateValid_14) begin // @[StatusArray.scala 250:29]
      statusArray_14_robIdx_flag <= updateVal_14_robIdx_flag;
    end
    if (updateValid_14) begin // @[StatusArray.scala 250:29]
      statusArray_14_robIdx_value <= updateVal_14_robIdx_value;
    end
    if (hasIssued_14) begin // @[StatusArray.scala 255:35]
      statusArray_14_isFirstIssue <= 1'h0;
    end else begin
      statusArray_14_isFirstIssue <= updateValid_14 | statusArray_14_isFirstIssue;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_15_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_15_valid <= statusArrayNext_15_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_15) begin // @[StatusArray.scala 190:34]
      statusArray_15_scheduled <= 1'h0;
    end else begin
      statusArray_15_scheduled <= hasIssued_15 | keepScheduled_15;
    end
    if (updateValid_15) begin // @[StatusArray.scala 228:29]
      statusArray_15_credit <= 4'h0;
    end else if (statusArray_15_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_15_credit <= _creditStep_T_47;
    end
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_5960; // @[StatusArray.scala 241:50]
    statusArray_15_srcState_1 <= stateWakeupEn_1_15 | _T_5962; // @[StatusArray.scala 241:50]
    statusArray_15_srcState_2 <= stateWakeupEn_2_15 | _T_5964; // @[StatusArray.scala 241:50]
    statusArray_15_midState <= ~updateValid_15 & (io_updateMidState[15] | statusArray_15_midState); // @[StatusArray.scala 245:44]
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_0 <= updateVal_15_psrc_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_1 <= updateVal_15_psrc_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_2 <= updateVal_15_psrc_2;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_0 <= updateVal_15_srcType_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_1 <= updateVal_15_srcType_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_2 <= updateVal_15_srcType_2;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_flag <= updateVal_15_robIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_value <= updateVal_15_robIdx_value;
    end
    if (hasIssued_15) begin // @[StatusArray.scala 255:35]
      statusArray_15_isFirstIssue <= 1'h0;
    end else begin
      statusArray_15_isFirstIssue <= updateValid_15 | statusArray_15_isFirstIssue;
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
  statusArray_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  statusArray_0_scheduled = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  statusArray_0_credit = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  statusArray_0_srcState_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  statusArray_0_srcState_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  statusArray_0_midState = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_0_psrc_1 = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_0_psrc_2 = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_0_srcType_1 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_0_srcType_2 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_0_isFirstIssue = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_1_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_1_scheduled = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_1_credit = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_1_srcState_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_1_srcState_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_1_midState = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_1_psrc_1 = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_1_psrc_2 = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_1_srcType_1 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_1_srcType_2 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_1_isFirstIssue = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_2_valid = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_2_scheduled = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_2_credit = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_2_srcState_1 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_2_srcState_2 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_2_midState = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_2_psrc_1 = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_2_psrc_2 = _RAND_41[6:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_2_srcType_1 = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_2_srcType_2 = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_46[6:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_2_isFirstIssue = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_3_valid = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_3_scheduled = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_3_credit = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_3_srcState_1 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_3_srcState_2 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_3_midState = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_3_psrc_1 = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_3_psrc_2 = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_3_srcType_1 = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_3_srcType_2 = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_3_isFirstIssue = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_4_valid = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_4_scheduled = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_4_credit = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_4_srcState_1 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_4_srcState_2 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_4_midState = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_4_psrc_1 = _RAND_72[6:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_4_psrc_2 = _RAND_73[6:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_4_srcType_1 = _RAND_75[1:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_4_srcType_2 = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_78[6:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_4_isFirstIssue = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_5_valid = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_5_scheduled = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_5_credit = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_5_srcState_1 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_5_srcState_2 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_5_midState = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_5_psrc_1 = _RAND_88[6:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_5_psrc_2 = _RAND_89[6:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_90[1:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_5_srcType_1 = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_5_srcType_2 = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_94[6:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_5_isFirstIssue = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_6_valid = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_6_scheduled = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_6_credit = _RAND_98[3:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_6_srcState_1 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_6_srcState_2 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_6_midState = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_103[6:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_6_psrc_1 = _RAND_104[6:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_6_psrc_2 = _RAND_105[6:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_106[1:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_6_srcType_1 = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_6_srcType_2 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_110[6:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_6_isFirstIssue = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_7_valid = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_7_scheduled = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_7_credit = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_7_srcState_1 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_7_srcState_2 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_7_midState = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_119[6:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_7_psrc_1 = _RAND_120[6:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_7_psrc_2 = _RAND_121[6:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_7_srcType_1 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_7_srcType_2 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_126[6:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_7_isFirstIssue = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  statusArray_8_valid = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  statusArray_8_scheduled = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  statusArray_8_credit = _RAND_130[3:0];
  _RAND_131 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  statusArray_8_srcState_1 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  statusArray_8_srcState_2 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  statusArray_8_midState = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_135[6:0];
  _RAND_136 = {1{`RANDOM}};
  statusArray_8_psrc_1 = _RAND_136[6:0];
  _RAND_137 = {1{`RANDOM}};
  statusArray_8_psrc_2 = _RAND_137[6:0];
  _RAND_138 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  statusArray_8_srcType_1 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  statusArray_8_srcType_2 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_142[6:0];
  _RAND_143 = {1{`RANDOM}};
  statusArray_8_isFirstIssue = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  statusArray_9_valid = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  statusArray_9_scheduled = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  statusArray_9_credit = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  statusArray_9_srcState_1 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  statusArray_9_srcState_2 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  statusArray_9_midState = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_151[6:0];
  _RAND_152 = {1{`RANDOM}};
  statusArray_9_psrc_1 = _RAND_152[6:0];
  _RAND_153 = {1{`RANDOM}};
  statusArray_9_psrc_2 = _RAND_153[6:0];
  _RAND_154 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  statusArray_9_srcType_1 = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  statusArray_9_srcType_2 = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_158[6:0];
  _RAND_159 = {1{`RANDOM}};
  statusArray_9_isFirstIssue = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  statusArray_10_valid = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  statusArray_10_scheduled = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  statusArray_10_credit = _RAND_162[3:0];
  _RAND_163 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  statusArray_10_srcState_1 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  statusArray_10_srcState_2 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  statusArray_10_midState = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_167[6:0];
  _RAND_168 = {1{`RANDOM}};
  statusArray_10_psrc_1 = _RAND_168[6:0];
  _RAND_169 = {1{`RANDOM}};
  statusArray_10_psrc_2 = _RAND_169[6:0];
  _RAND_170 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_170[1:0];
  _RAND_171 = {1{`RANDOM}};
  statusArray_10_srcType_1 = _RAND_171[1:0];
  _RAND_172 = {1{`RANDOM}};
  statusArray_10_srcType_2 = _RAND_172[1:0];
  _RAND_173 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_174[6:0];
  _RAND_175 = {1{`RANDOM}};
  statusArray_10_isFirstIssue = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  statusArray_11_valid = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  statusArray_11_scheduled = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  statusArray_11_credit = _RAND_178[3:0];
  _RAND_179 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  statusArray_11_srcState_1 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  statusArray_11_srcState_2 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  statusArray_11_midState = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_183[6:0];
  _RAND_184 = {1{`RANDOM}};
  statusArray_11_psrc_1 = _RAND_184[6:0];
  _RAND_185 = {1{`RANDOM}};
  statusArray_11_psrc_2 = _RAND_185[6:0];
  _RAND_186 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_186[1:0];
  _RAND_187 = {1{`RANDOM}};
  statusArray_11_srcType_1 = _RAND_187[1:0];
  _RAND_188 = {1{`RANDOM}};
  statusArray_11_srcType_2 = _RAND_188[1:0];
  _RAND_189 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_190[6:0];
  _RAND_191 = {1{`RANDOM}};
  statusArray_11_isFirstIssue = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  statusArray_12_valid = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  statusArray_12_scheduled = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  statusArray_12_credit = _RAND_194[3:0];
  _RAND_195 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  statusArray_12_srcState_1 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  statusArray_12_srcState_2 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  statusArray_12_midState = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_199[6:0];
  _RAND_200 = {1{`RANDOM}};
  statusArray_12_psrc_1 = _RAND_200[6:0];
  _RAND_201 = {1{`RANDOM}};
  statusArray_12_psrc_2 = _RAND_201[6:0];
  _RAND_202 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_202[1:0];
  _RAND_203 = {1{`RANDOM}};
  statusArray_12_srcType_1 = _RAND_203[1:0];
  _RAND_204 = {1{`RANDOM}};
  statusArray_12_srcType_2 = _RAND_204[1:0];
  _RAND_205 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_206[6:0];
  _RAND_207 = {1{`RANDOM}};
  statusArray_12_isFirstIssue = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  statusArray_13_valid = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  statusArray_13_scheduled = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  statusArray_13_credit = _RAND_210[3:0];
  _RAND_211 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  statusArray_13_srcState_1 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  statusArray_13_srcState_2 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  statusArray_13_midState = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_215[6:0];
  _RAND_216 = {1{`RANDOM}};
  statusArray_13_psrc_1 = _RAND_216[6:0];
  _RAND_217 = {1{`RANDOM}};
  statusArray_13_psrc_2 = _RAND_217[6:0];
  _RAND_218 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_218[1:0];
  _RAND_219 = {1{`RANDOM}};
  statusArray_13_srcType_1 = _RAND_219[1:0];
  _RAND_220 = {1{`RANDOM}};
  statusArray_13_srcType_2 = _RAND_220[1:0];
  _RAND_221 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_222[6:0];
  _RAND_223 = {1{`RANDOM}};
  statusArray_13_isFirstIssue = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  statusArray_14_valid = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  statusArray_14_scheduled = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  statusArray_14_credit = _RAND_226[3:0];
  _RAND_227 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  statusArray_14_srcState_1 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  statusArray_14_srcState_2 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  statusArray_14_midState = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_231[6:0];
  _RAND_232 = {1{`RANDOM}};
  statusArray_14_psrc_1 = _RAND_232[6:0];
  _RAND_233 = {1{`RANDOM}};
  statusArray_14_psrc_2 = _RAND_233[6:0];
  _RAND_234 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_234[1:0];
  _RAND_235 = {1{`RANDOM}};
  statusArray_14_srcType_1 = _RAND_235[1:0];
  _RAND_236 = {1{`RANDOM}};
  statusArray_14_srcType_2 = _RAND_236[1:0];
  _RAND_237 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_238[6:0];
  _RAND_239 = {1{`RANDOM}};
  statusArray_14_isFirstIssue = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  statusArray_15_valid = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  statusArray_15_scheduled = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  statusArray_15_credit = _RAND_242[3:0];
  _RAND_243 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  statusArray_15_srcState_1 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  statusArray_15_srcState_2 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  statusArray_15_midState = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_247[6:0];
  _RAND_248 = {1{`RANDOM}};
  statusArray_15_psrc_1 = _RAND_248[6:0];
  _RAND_249 = {1{`RANDOM}};
  statusArray_15_psrc_2 = _RAND_249[6:0];
  _RAND_250 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_250[1:0];
  _RAND_251 = {1{`RANDOM}};
  statusArray_15_srcType_1 = _RAND_251[1:0];
  _RAND_252 = {1{`RANDOM}};
  statusArray_15_srcType_2 = _RAND_252[1:0];
  _RAND_253 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_254[6:0];
  _RAND_255 = {1{`RANDOM}};
  statusArray_15_isFirstIssue = _RAND_255[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
