module StatusArray_6(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [23:0] io_isValid,
  output [23:0] io_canIssue,
  input         io_update_0_enable,
  input  [23:0] io_update_0_addr,
  input         io_update_0_data_scheduled,
  input  [3:0]  io_update_0_data_credit,
  input         io_update_0_data_srcState_0,
  input  [6:0]  io_update_0_data_psrc_0,
  input  [1:0]  io_update_0_data_srcType_0,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [23:0] io_update_1_addr,
  input         io_update_1_data_scheduled,
  input  [3:0]  io_update_1_data_credit,
  input         io_update_1_data_srcState_0,
  input  [6:0]  io_update_1_data_psrc_0,
  input  [1:0]  io_update_1_data_srcType_0,
  input         io_update_1_data_robIdx_flag,
  input  [6:0]  io_update_1_data_robIdx_value,
  input         io_wakeup_0_valid,
  input         io_wakeup_0_bits_ctrl_rfWen,
  input         io_wakeup_0_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_0_bits_pdest,
  input         io_wakeup_1_valid,
  input         io_wakeup_1_bits_ctrl_rfWen,
  input         io_wakeup_1_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_1_bits_pdest,
  input         io_wakeup_2_valid,
  input         io_wakeup_2_bits_ctrl_rfWen,
  input         io_wakeup_2_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_2_bits_pdest,
  input         io_wakeup_3_valid,
  input         io_wakeup_3_bits_ctrl_rfWen,
  input         io_wakeup_3_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_3_bits_pdest,
  input         io_wakeup_4_valid,
  input         io_wakeup_4_bits_ctrl_rfWen,
  input         io_wakeup_4_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_4_bits_pdest,
  input         io_wakeup_5_valid,
  input         io_wakeup_5_bits_ctrl_rfWen,
  input         io_wakeup_5_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_5_bits_pdest,
  input         io_wakeup_6_valid,
  input         io_wakeup_6_bits_ctrl_rfWen,
  input         io_wakeup_6_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_6_bits_pdest,
  input         io_wakeup_7_valid,
  input         io_wakeup_7_bits_ctrl_rfWen,
  input         io_wakeup_7_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_7_bits_pdest,
  input         io_wakeup_8_valid,
  input         io_wakeup_8_bits_ctrl_rfWen,
  input         io_wakeup_8_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_8_bits_pdest,
  input         io_wakeup_9_valid,
  input         io_wakeup_9_bits_ctrl_rfWen,
  input         io_wakeup_9_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_9_bits_pdest,
  input         io_wakeup_10_valid,
  input         io_wakeup_10_bits_ctrl_rfWen,
  input         io_wakeup_10_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_10_bits_pdest,
  input         io_wakeup_11_valid,
  input         io_wakeup_11_bits_ctrl_rfWen,
  input         io_wakeup_11_bits_ctrl_fpWen,
  input  [6:0]  io_wakeup_11_bits_pdest,
  output [11:0] io_wakeupMatch_0_0,
  output [11:0] io_wakeupMatch_1_0,
  output [11:0] io_wakeupMatch_2_0,
  output [11:0] io_wakeupMatch_3_0,
  output [11:0] io_wakeupMatch_4_0,
  output [11:0] io_wakeupMatch_5_0,
  output [11:0] io_wakeupMatch_6_0,
  output [11:0] io_wakeupMatch_7_0,
  output [11:0] io_wakeupMatch_8_0,
  output [11:0] io_wakeupMatch_9_0,
  output [11:0] io_wakeupMatch_10_0,
  output [11:0] io_wakeupMatch_11_0,
  output [11:0] io_wakeupMatch_12_0,
  output [11:0] io_wakeupMatch_13_0,
  output [11:0] io_wakeupMatch_14_0,
  output [11:0] io_wakeupMatch_15_0,
  output [11:0] io_wakeupMatch_16_0,
  output [11:0] io_wakeupMatch_17_0,
  output [11:0] io_wakeupMatch_18_0,
  output [11:0] io_wakeupMatch_19_0,
  output [11:0] io_wakeupMatch_20_0,
  output [11:0] io_wakeupMatch_21_0,
  output [11:0] io_wakeupMatch_22_0,
  output [11:0] io_wakeupMatch_23_0,
  input         io_issueGranted_0_valid,
  input  [23:0] io_issueGranted_0_bits,
  input         io_issueGranted_1_valid,
  input  [23:0] io_issueGranted_1_bits,
  input         io_deqResp_0_valid,
  input  [23:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success,
  input         io_deqResp_1_valid,
  input  [23:0] io_deqResp_1_bits_rsMask,
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
`endif // RANDOMIZE_REG_INIT
  reg  statusArray_0_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_0_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_0_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_1_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_1_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_1_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_2_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_2_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_2_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_3_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_3_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_3_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_4_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_4_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_4_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_5_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_5_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_5_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_6_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_6_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_6_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_7_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_7_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_7_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_8_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_8_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_8_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_9_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_9_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_9_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_10_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_10_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_10_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_11_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_11_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_11_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_12_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_12_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_12_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_13_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_13_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_13_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_14_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_14_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_14_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_15_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_15_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_15_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_16_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_16_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_16_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_16_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_16_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_16_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_16_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_16_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_17_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_17_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_17_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_17_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_17_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_17_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_17_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_17_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_18_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_18_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_18_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_18_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_18_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_18_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_18_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_18_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_19_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_19_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_19_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_19_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_19_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_19_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_19_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_19_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_20_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_20_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_20_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_20_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_20_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_20_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_20_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_20_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_21_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_21_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_21_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_21_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_21_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_21_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_21_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_21_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_22_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_22_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_22_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_22_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_22_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_22_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_22_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_22_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_23_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_23_scheduled; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_23_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_23_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_23_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_23_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_23_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_23_robIdx_value; // @[StatusArray.scala 106:24]
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
  wire [1:0] _T_103 = {mask__1,mask__0}; // @[StatusArray.scala 154:11]
  wire  _T_104 = |_T_103; // @[StatusArray.scala 154:18]
  wire  _T_107 = mask__0 & io_deqResp_0_bits_success | mask__1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_0 = isFlushed | _T_104 & _T_107; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_123 = {mask_1_1,mask_1_0}; // @[StatusArray.scala 154:11]
  wire  _T_124 = |_T_123; // @[StatusArray.scala 154:18]
  wire  _T_127 = mask_1_0 & io_deqResp_0_bits_success | mask_1_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_1 = isFlushed_1 | _T_124 & _T_127; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_143 = {mask_2_1,mask_2_0}; // @[StatusArray.scala 154:11]
  wire  _T_144 = |_T_143; // @[StatusArray.scala 154:18]
  wire  _T_147 = mask_2_0 & io_deqResp_0_bits_success | mask_2_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_2 = isFlushed_2 | _T_144 & _T_147; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_163 = {mask_3_1,mask_3_0}; // @[StatusArray.scala 154:11]
  wire  _T_164 = |_T_163; // @[StatusArray.scala 154:18]
  wire  _T_167 = mask_3_0 & io_deqResp_0_bits_success | mask_3_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_3 = isFlushed_3 | _T_164 & _T_167; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_183 = {mask_4_1,mask_4_0}; // @[StatusArray.scala 154:11]
  wire  _T_184 = |_T_183; // @[StatusArray.scala 154:18]
  wire  _T_187 = mask_4_0 & io_deqResp_0_bits_success | mask_4_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_4 = isFlushed_4 | _T_184 & _T_187; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_203 = {mask_5_1,mask_5_0}; // @[StatusArray.scala 154:11]
  wire  _T_204 = |_T_203; // @[StatusArray.scala 154:18]
  wire  _T_207 = mask_5_0 & io_deqResp_0_bits_success | mask_5_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_5 = isFlushed_5 | _T_204 & _T_207; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_223 = {mask_6_1,mask_6_0}; // @[StatusArray.scala 154:11]
  wire  _T_224 = |_T_223; // @[StatusArray.scala 154:18]
  wire  _T_227 = mask_6_0 & io_deqResp_0_bits_success | mask_6_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_6 = isFlushed_6 | _T_224 & _T_227; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_243 = {mask_7_1,mask_7_0}; // @[StatusArray.scala 154:11]
  wire  _T_244 = |_T_243; // @[StatusArray.scala 154:18]
  wire  _T_247 = mask_7_0 & io_deqResp_0_bits_success | mask_7_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_7 = isFlushed_7 | _T_244 & _T_247; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_263 = {mask_8_1,mask_8_0}; // @[StatusArray.scala 154:11]
  wire  _T_264 = |_T_263; // @[StatusArray.scala 154:18]
  wire  _T_267 = mask_8_0 & io_deqResp_0_bits_success | mask_8_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_8 = isFlushed_8 | _T_264 & _T_267; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_283 = {mask_9_1,mask_9_0}; // @[StatusArray.scala 154:11]
  wire  _T_284 = |_T_283; // @[StatusArray.scala 154:18]
  wire  _T_287 = mask_9_0 & io_deqResp_0_bits_success | mask_9_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_9 = isFlushed_9 | _T_284 & _T_287; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_303 = {mask_10_1,mask_10_0}; // @[StatusArray.scala 154:11]
  wire  _T_304 = |_T_303; // @[StatusArray.scala 154:18]
  wire  _T_307 = mask_10_0 & io_deqResp_0_bits_success | mask_10_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_10 = isFlushed_10 | _T_304 & _T_307; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_323 = {mask_11_1,mask_11_0}; // @[StatusArray.scala 154:11]
  wire  _T_324 = |_T_323; // @[StatusArray.scala 154:18]
  wire  _T_327 = mask_11_0 & io_deqResp_0_bits_success | mask_11_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_11 = isFlushed_11 | _T_324 & _T_327; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_343 = {mask_12_1,mask_12_0}; // @[StatusArray.scala 154:11]
  wire  _T_344 = |_T_343; // @[StatusArray.scala 154:18]
  wire  _T_347 = mask_12_0 & io_deqResp_0_bits_success | mask_12_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_12 = isFlushed_12 | _T_344 & _T_347; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_363 = {mask_13_1,mask_13_0}; // @[StatusArray.scala 154:11]
  wire  _T_364 = |_T_363; // @[StatusArray.scala 154:18]
  wire  _T_367 = mask_13_0 & io_deqResp_0_bits_success | mask_13_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_13 = isFlushed_13 | _T_364 & _T_367; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_383 = {mask_14_1,mask_14_0}; // @[StatusArray.scala 154:11]
  wire  _T_384 = |_T_383; // @[StatusArray.scala 154:18]
  wire  _T_387 = mask_14_0 & io_deqResp_0_bits_success | mask_14_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_14 = isFlushed_14 | _T_384 & _T_387; // @[StatusArray.scala 175:32]
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
  wire [1:0] _T_403 = {mask_15_1,mask_15_0}; // @[StatusArray.scala 154:11]
  wire  _T_404 = |_T_403; // @[StatusArray.scala 154:18]
  wire  _T_407 = mask_15_0 & io_deqResp_0_bits_success | mask_15_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_15 = isFlushed_15 | _T_404 & _T_407; // @[StatusArray.scala 175:32]
  wire  updateVec_15_1 = io_update_1_enable & io_update_1_addr[15]; // @[StatusArray.scala 158:57]
  wire  updateVec_15_0 = io_update_0_enable & io_update_0_addr[15]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_64 = {updateVec_15_1,updateVec_15_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_15 = |_T_64; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_15 = updateValid_15 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_15_valid = ~flushedVec_15 & (realUpdateValid_15 | statusArray_15_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_65 = {statusArray_16_robIdx_flag,statusArray_16_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_67 = _isFlushed_flushItself_T_65 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_16 = io_redirect_bits_level & _isFlushed_flushItself_T_67; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_16 = statusArray_16_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_16 = statusArray_16_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_48 = isFlushed_differentFlag_16 ^ isFlushed_compare_16; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_50 = io_redirect_valid & (isFlushed_flushItself_16 | _isFlushed_T_48); // @[Rob.scala 36:20]
  wire  isFlushed_16 = statusArray_16_valid & _isFlushed_T_50; // @[StatusArray.scala 173:34]
  wire  mask_16_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire  mask_16_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_423 = {mask_16_1,mask_16_0}; // @[StatusArray.scala 154:11]
  wire  _T_424 = |_T_423; // @[StatusArray.scala 154:18]
  wire  _T_427 = mask_16_0 & io_deqResp_0_bits_success | mask_16_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_16 = isFlushed_16 | _T_424 & _T_427; // @[StatusArray.scala 175:32]
  wire  updateVec_16_1 = io_update_1_enable & io_update_1_addr[16]; // @[StatusArray.scala 158:57]
  wire  updateVec_16_0 = io_update_0_enable & io_update_0_addr[16]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_68 = {updateVec_16_1,updateVec_16_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_16 = |_T_68; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_16 = updateValid_16 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_16_valid = ~flushedVec_16 & (realUpdateValid_16 | statusArray_16_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_69 = {statusArray_17_robIdx_flag,statusArray_17_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_71 = _isFlushed_flushItself_T_69 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_17 = io_redirect_bits_level & _isFlushed_flushItself_T_71; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_17 = statusArray_17_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_17 = statusArray_17_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_51 = isFlushed_differentFlag_17 ^ isFlushed_compare_17; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_53 = io_redirect_valid & (isFlushed_flushItself_17 | _isFlushed_T_51); // @[Rob.scala 36:20]
  wire  isFlushed_17 = statusArray_17_valid & _isFlushed_T_53; // @[StatusArray.scala 173:34]
  wire  mask_17_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire  mask_17_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_443 = {mask_17_1,mask_17_0}; // @[StatusArray.scala 154:11]
  wire  _T_444 = |_T_443; // @[StatusArray.scala 154:18]
  wire  _T_447 = mask_17_0 & io_deqResp_0_bits_success | mask_17_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_17 = isFlushed_17 | _T_444 & _T_447; // @[StatusArray.scala 175:32]
  wire  updateVec_17_1 = io_update_1_enable & io_update_1_addr[17]; // @[StatusArray.scala 158:57]
  wire  updateVec_17_0 = io_update_0_enable & io_update_0_addr[17]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_72 = {updateVec_17_1,updateVec_17_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_17 = |_T_72; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_17 = updateValid_17 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_17_valid = ~flushedVec_17 & (realUpdateValid_17 | statusArray_17_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_73 = {statusArray_18_robIdx_flag,statusArray_18_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_75 = _isFlushed_flushItself_T_73 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_18 = io_redirect_bits_level & _isFlushed_flushItself_T_75; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_18 = statusArray_18_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_18 = statusArray_18_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_54 = isFlushed_differentFlag_18 ^ isFlushed_compare_18; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_56 = io_redirect_valid & (isFlushed_flushItself_18 | _isFlushed_T_54); // @[Rob.scala 36:20]
  wire  isFlushed_18 = statusArray_18_valid & _isFlushed_T_56; // @[StatusArray.scala 173:34]
  wire  mask_18_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire  mask_18_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_463 = {mask_18_1,mask_18_0}; // @[StatusArray.scala 154:11]
  wire  _T_464 = |_T_463; // @[StatusArray.scala 154:18]
  wire  _T_467 = mask_18_0 & io_deqResp_0_bits_success | mask_18_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_18 = isFlushed_18 | _T_464 & _T_467; // @[StatusArray.scala 175:32]
  wire  updateVec_18_1 = io_update_1_enable & io_update_1_addr[18]; // @[StatusArray.scala 158:57]
  wire  updateVec_18_0 = io_update_0_enable & io_update_0_addr[18]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_76 = {updateVec_18_1,updateVec_18_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_18 = |_T_76; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_18 = updateValid_18 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_18_valid = ~flushedVec_18 & (realUpdateValid_18 | statusArray_18_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_77 = {statusArray_19_robIdx_flag,statusArray_19_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_79 = _isFlushed_flushItself_T_77 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_19 = io_redirect_bits_level & _isFlushed_flushItself_T_79; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_19 = statusArray_19_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_19 = statusArray_19_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_57 = isFlushed_differentFlag_19 ^ isFlushed_compare_19; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_59 = io_redirect_valid & (isFlushed_flushItself_19 | _isFlushed_T_57); // @[Rob.scala 36:20]
  wire  isFlushed_19 = statusArray_19_valid & _isFlushed_T_59; // @[StatusArray.scala 173:34]
  wire  mask_19_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire  mask_19_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_483 = {mask_19_1,mask_19_0}; // @[StatusArray.scala 154:11]
  wire  _T_484 = |_T_483; // @[StatusArray.scala 154:18]
  wire  _T_487 = mask_19_0 & io_deqResp_0_bits_success | mask_19_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_19 = isFlushed_19 | _T_484 & _T_487; // @[StatusArray.scala 175:32]
  wire  updateVec_19_1 = io_update_1_enable & io_update_1_addr[19]; // @[StatusArray.scala 158:57]
  wire  updateVec_19_0 = io_update_0_enable & io_update_0_addr[19]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_80 = {updateVec_19_1,updateVec_19_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_19 = |_T_80; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_19 = updateValid_19 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_19_valid = ~flushedVec_19 & (realUpdateValid_19 | statusArray_19_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_81 = {statusArray_20_robIdx_flag,statusArray_20_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_83 = _isFlushed_flushItself_T_81 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_20 = io_redirect_bits_level & _isFlushed_flushItself_T_83; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_20 = statusArray_20_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_20 = statusArray_20_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_60 = isFlushed_differentFlag_20 ^ isFlushed_compare_20; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_62 = io_redirect_valid & (isFlushed_flushItself_20 | _isFlushed_T_60); // @[Rob.scala 36:20]
  wire  isFlushed_20 = statusArray_20_valid & _isFlushed_T_62; // @[StatusArray.scala 173:34]
  wire  mask_20_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire  mask_20_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_503 = {mask_20_1,mask_20_0}; // @[StatusArray.scala 154:11]
  wire  _T_504 = |_T_503; // @[StatusArray.scala 154:18]
  wire  _T_507 = mask_20_0 & io_deqResp_0_bits_success | mask_20_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_20 = isFlushed_20 | _T_504 & _T_507; // @[StatusArray.scala 175:32]
  wire  updateVec_20_1 = io_update_1_enable & io_update_1_addr[20]; // @[StatusArray.scala 158:57]
  wire  updateVec_20_0 = io_update_0_enable & io_update_0_addr[20]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_84 = {updateVec_20_1,updateVec_20_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_20 = |_T_84; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_20 = updateValid_20 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_20_valid = ~flushedVec_20 & (realUpdateValid_20 | statusArray_20_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_85 = {statusArray_21_robIdx_flag,statusArray_21_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_87 = _isFlushed_flushItself_T_85 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_21 = io_redirect_bits_level & _isFlushed_flushItself_T_87; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_21 = statusArray_21_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_21 = statusArray_21_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_63 = isFlushed_differentFlag_21 ^ isFlushed_compare_21; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_65 = io_redirect_valid & (isFlushed_flushItself_21 | _isFlushed_T_63); // @[Rob.scala 36:20]
  wire  isFlushed_21 = statusArray_21_valid & _isFlushed_T_65; // @[StatusArray.scala 173:34]
  wire  mask_21_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire  mask_21_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_523 = {mask_21_1,mask_21_0}; // @[StatusArray.scala 154:11]
  wire  _T_524 = |_T_523; // @[StatusArray.scala 154:18]
  wire  _T_527 = mask_21_0 & io_deqResp_0_bits_success | mask_21_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_21 = isFlushed_21 | _T_524 & _T_527; // @[StatusArray.scala 175:32]
  wire  updateVec_21_1 = io_update_1_enable & io_update_1_addr[21]; // @[StatusArray.scala 158:57]
  wire  updateVec_21_0 = io_update_0_enable & io_update_0_addr[21]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_88 = {updateVec_21_1,updateVec_21_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_21 = |_T_88; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_21 = updateValid_21 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_21_valid = ~flushedVec_21 & (realUpdateValid_21 | statusArray_21_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_89 = {statusArray_22_robIdx_flag,statusArray_22_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_91 = _isFlushed_flushItself_T_89 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_22 = io_redirect_bits_level & _isFlushed_flushItself_T_91; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_22 = statusArray_22_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_22 = statusArray_22_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_66 = isFlushed_differentFlag_22 ^ isFlushed_compare_22; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_68 = io_redirect_valid & (isFlushed_flushItself_22 | _isFlushed_T_66); // @[Rob.scala 36:20]
  wire  isFlushed_22 = statusArray_22_valid & _isFlushed_T_68; // @[StatusArray.scala 173:34]
  wire  mask_22_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire  mask_22_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_543 = {mask_22_1,mask_22_0}; // @[StatusArray.scala 154:11]
  wire  _T_544 = |_T_543; // @[StatusArray.scala 154:18]
  wire  _T_547 = mask_22_0 & io_deqResp_0_bits_success | mask_22_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_22 = isFlushed_22 | _T_544 & _T_547; // @[StatusArray.scala 175:32]
  wire  updateVec_22_1 = io_update_1_enable & io_update_1_addr[22]; // @[StatusArray.scala 158:57]
  wire  updateVec_22_0 = io_update_0_enable & io_update_0_addr[22]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_92 = {updateVec_22_1,updateVec_22_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_22 = |_T_92; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_22 = updateValid_22 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_22_valid = ~flushedVec_22 & (realUpdateValid_22 | statusArray_22_valid); // @[StatusArray.scala 177:40]
  wire [7:0] _isFlushed_flushItself_T_93 = {statusArray_23_robIdx_flag,statusArray_23_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_95 = _isFlushed_flushItself_T_93 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_23 = io_redirect_bits_level & _isFlushed_flushItself_T_95; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_23 = statusArray_23_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_23 = statusArray_23_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_69 = isFlushed_differentFlag_23 ^ isFlushed_compare_23; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_71 = io_redirect_valid & (isFlushed_flushItself_23 | _isFlushed_T_69); // @[Rob.scala 36:20]
  wire  isFlushed_23 = statusArray_23_valid & _isFlushed_T_71; // @[StatusArray.scala 173:34]
  wire  mask_23_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire  mask_23_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire [1:0] _T_563 = {mask_23_1,mask_23_0}; // @[StatusArray.scala 154:11]
  wire  _T_564 = |_T_563; // @[StatusArray.scala 154:18]
  wire  _T_567 = mask_23_0 & io_deqResp_0_bits_success | mask_23_1 & io_deqResp_1_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_23 = isFlushed_23 | _T_564 & _T_567; // @[StatusArray.scala 175:32]
  wire  updateVec_23_1 = io_update_1_enable & io_update_1_addr[23]; // @[StatusArray.scala 158:57]
  wire  updateVec_23_0 = io_update_0_enable & io_update_0_addr[23]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_96 = {updateVec_23_1,updateVec_23_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_23 = |_T_96; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_23 = updateValid_23 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_23_valid = ~flushedVec_23 & (realUpdateValid_23 | statusArray_23_valid); // @[StatusArray.scala 177:40]
  wire  updateVal_0_scheduled = updateVec__0 & io_update_0_data_scheduled | updateVec__1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_3 = io_issueGranted_1_valid & io_issueGranted_1_bits[0]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_1 = io_issueGranted_0_valid & io_issueGranted_0_bits[0]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_4 = {_hasIssued_T_3,_hasIssued_T_1}; // @[StatusArray.scala 183:83]
  wire  hasIssued = |_hasIssued_T_4; // @[StatusArray.scala 183:90]
  wire  deqNotGranted = _T_104 & ~_T_107; // @[StatusArray.scala 184:38]
  wire  noCredit = statusArray_0_valid & statusArray_0_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled = statusArray_0_scheduled & ~deqNotGranted & ~noCredit; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_0_scheduled = updateValid_0 ? updateVal_0_scheduled : hasIssued | keepScheduled; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond = ~statusArrayNext_0_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_36 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_37 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_36 | _updateStatus_T_37; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_750 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_33 = updateVec__0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_34 = updateVec__1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_0 = _updateStatus_T_33 | _updateStatus_T_34; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_757 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_758 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11 = _T_750 & _T_758; // @[StatusArray.scala 131:34]
  wire  _T_735 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_742 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_743 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10 = _T_735 & _T_743; // @[StatusArray.scala 131:34]
  wire  _T_720 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_727 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_728 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9 = _T_720 & _T_728; // @[StatusArray.scala 131:34]
  wire  _T_705 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_712 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_713 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8 = _T_705 & _T_713; // @[StatusArray.scala 131:34]
  wire  _T_690 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_697 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_698 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7 = _T_690 & _T_698; // @[StatusArray.scala 131:34]
  wire  _T_675 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_682 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_683 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6 = _T_675 & _T_683; // @[StatusArray.scala 131:34]
  wire  _T_660 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_667 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_668 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5 = _T_660 & _T_668; // @[StatusArray.scala 131:34]
  wire  _T_645 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_652 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_653 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4 = _T_645 & _T_653; // @[StatusArray.scala 131:34]
  wire  _T_630 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_637 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_638 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3 = _T_630 & _T_638; // @[StatusArray.scala 131:34]
  wire  _T_615 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_622 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_623 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2 = _T_615 & _T_623; // @[StatusArray.scala 131:34]
  wire  _T_600 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_607 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_608 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1 = _T_600 & _T_608; // @[StatusArray.scala 131:34]
  wire  _T_585 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_592 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_593 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_0_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0 = _T_585 & _T_593; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo = {stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,
    stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T = {stateMatchVec_11,stateMatchVec_10,stateMatchVec_9,stateMatchVec_8,stateMatchVec_7,
    stateMatchVec_6,stateMatch_lo}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_787 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_787; // @[StatusArray.scala 241:50]
  wire  readyVecNext_0 = &statusArrayNext_0_srcState_0 & readyVecNext_scheduledCond; // @[StatusArray.scala 65:43]
  wire  updateVal_1_scheduled = updateVec_1_0 & io_update_0_data_scheduled | updateVec_1_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_8 = io_issueGranted_1_valid & io_issueGranted_1_bits[1]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_6 = io_issueGranted_0_valid & io_issueGranted_0_bits[1]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_9 = {_hasIssued_T_8,_hasIssued_T_6}; // @[StatusArray.scala 183:83]
  wire  hasIssued_1 = |_hasIssued_T_9; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_1 = _T_124 & ~_T_127; // @[StatusArray.scala 184:38]
  wire  noCredit_1 = statusArray_1_valid & statusArray_1_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_1 = statusArray_1_scheduled & ~deqNotGranted_1 & ~noCredit_1; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_1_scheduled = updateValid_1 ? updateVal_1_scheduled : hasIssued_1 | keepScheduled_1; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_1 = ~statusArrayNext_1_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_93 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_94 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_93 | _updateStatus_T_94; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_964 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_90 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_91 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_90 | _updateStatus_T_91; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_971 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_972 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_1 = _T_964 & _T_972; // @[StatusArray.scala 131:34]
  wire  _T_949 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_956 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_957 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_1 = _T_949 & _T_957; // @[StatusArray.scala 131:34]
  wire  _T_934 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_941 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_942 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_1 = _T_934 & _T_942; // @[StatusArray.scala 131:34]
  wire  _T_919 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_926 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_927 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_1 = _T_919 & _T_927; // @[StatusArray.scala 131:34]
  wire  _T_904 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_911 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_912 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_1 = _T_904 & _T_912; // @[StatusArray.scala 131:34]
  wire  _T_889 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_896 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_897 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_1 = _T_889 & _T_897; // @[StatusArray.scala 131:34]
  wire  _T_874 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_881 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_882 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_1 = _T_874 & _T_882; // @[StatusArray.scala 131:34]
  wire  _T_859 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_866 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_867 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_1 = _T_859 & _T_867; // @[StatusArray.scala 131:34]
  wire  _T_844 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_851 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_852 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_1 = _T_844 & _T_852; // @[StatusArray.scala 131:34]
  wire  _T_829 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_836 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_837 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_1 = _T_829 & _T_837; // @[StatusArray.scala 131:34]
  wire  _T_814 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_821 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_822 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_1 = _T_814 & _T_822; // @[StatusArray.scala 131:34]
  wire  _T_799 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_806 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_807 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_1_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_1 = _T_799 & _T_807; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_1 = {stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,
    stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_1 = {stateMatchVec_11_1,stateMatchVec_10_1,stateMatchVec_9_1,stateMatchVec_8_1,
    stateMatchVec_7_1,stateMatchVec_6_1,stateMatch_lo_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1001 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1001; // @[StatusArray.scala 241:50]
  wire  readyVecNext_1 = &statusArrayNext_1_srcState_0 & readyVecNext_scheduledCond_1; // @[StatusArray.scala 65:43]
  wire  updateVal_2_scheduled = updateVec_2_0 & io_update_0_data_scheduled | updateVec_2_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_13 = io_issueGranted_1_valid & io_issueGranted_1_bits[2]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_11 = io_issueGranted_0_valid & io_issueGranted_0_bits[2]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_14 = {_hasIssued_T_13,_hasIssued_T_11}; // @[StatusArray.scala 183:83]
  wire  hasIssued_2 = |_hasIssued_T_14; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_2 = _T_144 & ~_T_147; // @[StatusArray.scala 184:38]
  wire  noCredit_2 = statusArray_2_valid & statusArray_2_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_2 = statusArray_2_scheduled & ~deqNotGranted_2 & ~noCredit_2; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_2_scheduled = updateValid_2 ? updateVal_2_scheduled : hasIssued_2 | keepScheduled_2; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_2 = ~statusArrayNext_2_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_150 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_151 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_150 | _updateStatus_T_151; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1178 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_147 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_148 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_147 | _updateStatus_T_148; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1185 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1186 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_2 = _T_1178 & _T_1186; // @[StatusArray.scala 131:34]
  wire  _T_1163 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1170 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1171 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_2 = _T_1163 & _T_1171; // @[StatusArray.scala 131:34]
  wire  _T_1148 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1155 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1156 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_2 = _T_1148 & _T_1156; // @[StatusArray.scala 131:34]
  wire  _T_1133 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1140 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1141 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_2 = _T_1133 & _T_1141; // @[StatusArray.scala 131:34]
  wire  _T_1118 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1125 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1126 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_2 = _T_1118 & _T_1126; // @[StatusArray.scala 131:34]
  wire  _T_1103 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1110 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1111 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_2 = _T_1103 & _T_1111; // @[StatusArray.scala 131:34]
  wire  _T_1088 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1095 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1096 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_2 = _T_1088 & _T_1096; // @[StatusArray.scala 131:34]
  wire  _T_1073 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1080 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1081 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_2 = _T_1073 & _T_1081; // @[StatusArray.scala 131:34]
  wire  _T_1058 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1065 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1066 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_2 = _T_1058 & _T_1066; // @[StatusArray.scala 131:34]
  wire  _T_1043 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1050 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1051 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_2 = _T_1043 & _T_1051; // @[StatusArray.scala 131:34]
  wire  _T_1028 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1035 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1036 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_2 = _T_1028 & _T_1036; // @[StatusArray.scala 131:34]
  wire  _T_1013 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1020 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1021 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_2_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_2 = _T_1013 & _T_1021; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_2 = {stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,
    stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_2 = {stateMatchVec_11_2,stateMatchVec_10_2,stateMatchVec_9_2,stateMatchVec_8_2,
    stateMatchVec_7_2,stateMatchVec_6_2,stateMatch_lo_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1215 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1215; // @[StatusArray.scala 241:50]
  wire  readyVecNext_2 = &statusArrayNext_2_srcState_0 & readyVecNext_scheduledCond_2; // @[StatusArray.scala 65:43]
  wire  updateVal_3_scheduled = updateVec_3_0 & io_update_0_data_scheduled | updateVec_3_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_18 = io_issueGranted_1_valid & io_issueGranted_1_bits[3]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_16 = io_issueGranted_0_valid & io_issueGranted_0_bits[3]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_19 = {_hasIssued_T_18,_hasIssued_T_16}; // @[StatusArray.scala 183:83]
  wire  hasIssued_3 = |_hasIssued_T_19; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_3 = _T_164 & ~_T_167; // @[StatusArray.scala 184:38]
  wire  noCredit_3 = statusArray_3_valid & statusArray_3_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_3 = statusArray_3_scheduled & ~deqNotGranted_3 & ~noCredit_3; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_3_scheduled = updateValid_3 ? updateVal_3_scheduled : hasIssued_3 | keepScheduled_3; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_3 = ~statusArrayNext_3_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_207 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_208 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_207 | _updateStatus_T_208; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1392 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_204 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_205 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_204 | _updateStatus_T_205; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1399 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1400 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_3 = _T_1392 & _T_1400; // @[StatusArray.scala 131:34]
  wire  _T_1377 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1384 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1385 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_3 = _T_1377 & _T_1385; // @[StatusArray.scala 131:34]
  wire  _T_1362 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1369 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1370 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_3 = _T_1362 & _T_1370; // @[StatusArray.scala 131:34]
  wire  _T_1347 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1354 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1355 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_3 = _T_1347 & _T_1355; // @[StatusArray.scala 131:34]
  wire  _T_1332 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1339 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1340 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_3 = _T_1332 & _T_1340; // @[StatusArray.scala 131:34]
  wire  _T_1317 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1324 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1325 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_3 = _T_1317 & _T_1325; // @[StatusArray.scala 131:34]
  wire  _T_1302 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1309 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1310 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_3 = _T_1302 & _T_1310; // @[StatusArray.scala 131:34]
  wire  _T_1287 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1294 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1295 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_3 = _T_1287 & _T_1295; // @[StatusArray.scala 131:34]
  wire  _T_1272 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1279 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1280 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_3 = _T_1272 & _T_1280; // @[StatusArray.scala 131:34]
  wire  _T_1257 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1264 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1265 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_3 = _T_1257 & _T_1265; // @[StatusArray.scala 131:34]
  wire  _T_1242 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1249 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1250 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_3 = _T_1242 & _T_1250; // @[StatusArray.scala 131:34]
  wire  _T_1227 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1234 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1235 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_3_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_3 = _T_1227 & _T_1235; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_3 = {stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,
    stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_3 = {stateMatchVec_11_3,stateMatchVec_10_3,stateMatchVec_9_3,stateMatchVec_8_3,
    stateMatchVec_7_3,stateMatchVec_6_3,stateMatch_lo_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1429 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1429; // @[StatusArray.scala 241:50]
  wire  readyVecNext_3 = &statusArrayNext_3_srcState_0 & readyVecNext_scheduledCond_3; // @[StatusArray.scala 65:43]
  wire  updateVal_4_scheduled = updateVec_4_0 & io_update_0_data_scheduled | updateVec_4_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_23 = io_issueGranted_1_valid & io_issueGranted_1_bits[4]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_21 = io_issueGranted_0_valid & io_issueGranted_0_bits[4]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_24 = {_hasIssued_T_23,_hasIssued_T_21}; // @[StatusArray.scala 183:83]
  wire  hasIssued_4 = |_hasIssued_T_24; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_4 = _T_184 & ~_T_187; // @[StatusArray.scala 184:38]
  wire  noCredit_4 = statusArray_4_valid & statusArray_4_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_4 = statusArray_4_scheduled & ~deqNotGranted_4 & ~noCredit_4; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_4_scheduled = updateValid_4 ? updateVal_4_scheduled : hasIssued_4 | keepScheduled_4; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_4 = ~statusArrayNext_4_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_264 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_265 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_264 | _updateStatus_T_265; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1606 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_261 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_262 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_261 | _updateStatus_T_262; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1613 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1614 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_4 = _T_1606 & _T_1614; // @[StatusArray.scala 131:34]
  wire  _T_1591 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1598 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1599 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_4 = _T_1591 & _T_1599; // @[StatusArray.scala 131:34]
  wire  _T_1576 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1583 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1584 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_4 = _T_1576 & _T_1584; // @[StatusArray.scala 131:34]
  wire  _T_1561 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1568 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1569 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_4 = _T_1561 & _T_1569; // @[StatusArray.scala 131:34]
  wire  _T_1546 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1553 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1554 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_4 = _T_1546 & _T_1554; // @[StatusArray.scala 131:34]
  wire  _T_1531 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1538 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1539 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_4 = _T_1531 & _T_1539; // @[StatusArray.scala 131:34]
  wire  _T_1516 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1523 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1524 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_4 = _T_1516 & _T_1524; // @[StatusArray.scala 131:34]
  wire  _T_1501 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1508 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1509 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_4 = _T_1501 & _T_1509; // @[StatusArray.scala 131:34]
  wire  _T_1486 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1493 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1494 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_4 = _T_1486 & _T_1494; // @[StatusArray.scala 131:34]
  wire  _T_1471 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1478 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1479 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_4 = _T_1471 & _T_1479; // @[StatusArray.scala 131:34]
  wire  _T_1456 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1463 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1464 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_4 = _T_1456 & _T_1464; // @[StatusArray.scala 131:34]
  wire  _T_1441 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1448 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1449 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_4_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_4 = _T_1441 & _T_1449; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_4 = {stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,
    stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_4 = {stateMatchVec_11_4,stateMatchVec_10_4,stateMatchVec_9_4,stateMatchVec_8_4,
    stateMatchVec_7_4,stateMatchVec_6_4,stateMatch_lo_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1643 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_1643; // @[StatusArray.scala 241:50]
  wire  readyVecNext_4 = &statusArrayNext_4_srcState_0 & readyVecNext_scheduledCond_4; // @[StatusArray.scala 65:43]
  wire  updateVal_5_scheduled = updateVec_5_0 & io_update_0_data_scheduled | updateVec_5_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_28 = io_issueGranted_1_valid & io_issueGranted_1_bits[5]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_26 = io_issueGranted_0_valid & io_issueGranted_0_bits[5]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_29 = {_hasIssued_T_28,_hasIssued_T_26}; // @[StatusArray.scala 183:83]
  wire  hasIssued_5 = |_hasIssued_T_29; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_5 = _T_204 & ~_T_207; // @[StatusArray.scala 184:38]
  wire  noCredit_5 = statusArray_5_valid & statusArray_5_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_5 = statusArray_5_scheduled & ~deqNotGranted_5 & ~noCredit_5; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_5_scheduled = updateValid_5 ? updateVal_5_scheduled : hasIssued_5 | keepScheduled_5; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_5 = ~statusArrayNext_5_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_321 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_322 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_321 | _updateStatus_T_322; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1820 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_318 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_319 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_318 | _updateStatus_T_319; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1827 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1828 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_5 = _T_1820 & _T_1828; // @[StatusArray.scala 131:34]
  wire  _T_1805 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1812 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1813 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_5 = _T_1805 & _T_1813; // @[StatusArray.scala 131:34]
  wire  _T_1790 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1797 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1798 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_5 = _T_1790 & _T_1798; // @[StatusArray.scala 131:34]
  wire  _T_1775 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1782 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1783 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_5 = _T_1775 & _T_1783; // @[StatusArray.scala 131:34]
  wire  _T_1760 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1767 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1768 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_5 = _T_1760 & _T_1768; // @[StatusArray.scala 131:34]
  wire  _T_1745 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1752 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1753 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_5 = _T_1745 & _T_1753; // @[StatusArray.scala 131:34]
  wire  _T_1730 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1737 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1738 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_5 = _T_1730 & _T_1738; // @[StatusArray.scala 131:34]
  wire  _T_1715 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1722 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1723 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_5 = _T_1715 & _T_1723; // @[StatusArray.scala 131:34]
  wire  _T_1700 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1707 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1708 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_5 = _T_1700 & _T_1708; // @[StatusArray.scala 131:34]
  wire  _T_1685 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1692 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1693 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_5 = _T_1685 & _T_1693; // @[StatusArray.scala 131:34]
  wire  _T_1670 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1677 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1678 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_5 = _T_1670 & _T_1678; // @[StatusArray.scala 131:34]
  wire  _T_1655 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1662 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1663 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_5_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_5 = _T_1655 & _T_1663; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_5 = {stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,
    stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_5 = {stateMatchVec_11_5,stateMatchVec_10_5,stateMatchVec_9_5,stateMatchVec_8_5,
    stateMatchVec_7_5,stateMatchVec_6_5,stateMatch_lo_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1857 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_1857; // @[StatusArray.scala 241:50]
  wire  readyVecNext_5 = &statusArrayNext_5_srcState_0 & readyVecNext_scheduledCond_5; // @[StatusArray.scala 65:43]
  wire  updateVal_6_scheduled = updateVec_6_0 & io_update_0_data_scheduled | updateVec_6_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_33 = io_issueGranted_1_valid & io_issueGranted_1_bits[6]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_31 = io_issueGranted_0_valid & io_issueGranted_0_bits[6]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_34 = {_hasIssued_T_33,_hasIssued_T_31}; // @[StatusArray.scala 183:83]
  wire  hasIssued_6 = |_hasIssued_T_34; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_6 = _T_224 & ~_T_227; // @[StatusArray.scala 184:38]
  wire  noCredit_6 = statusArray_6_valid & statusArray_6_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_6 = statusArray_6_scheduled & ~deqNotGranted_6 & ~noCredit_6; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_6_scheduled = updateValid_6 ? updateVal_6_scheduled : hasIssued_6 | keepScheduled_6; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_6 = ~statusArrayNext_6_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_378 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_379 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_378 | _updateStatus_T_379; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2034 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_375 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_376 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_375 | _updateStatus_T_376; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2041 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2042 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_6 = _T_2034 & _T_2042; // @[StatusArray.scala 131:34]
  wire  _T_2019 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2026 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2027 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_6 = _T_2019 & _T_2027; // @[StatusArray.scala 131:34]
  wire  _T_2004 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2011 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2012 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_6 = _T_2004 & _T_2012; // @[StatusArray.scala 131:34]
  wire  _T_1989 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1996 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1997 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_6 = _T_1989 & _T_1997; // @[StatusArray.scala 131:34]
  wire  _T_1974 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1981 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1982 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_6 = _T_1974 & _T_1982; // @[StatusArray.scala 131:34]
  wire  _T_1959 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1966 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1967 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_6 = _T_1959 & _T_1967; // @[StatusArray.scala 131:34]
  wire  _T_1944 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1951 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1952 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_6 = _T_1944 & _T_1952; // @[StatusArray.scala 131:34]
  wire  _T_1929 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1936 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1937 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_6 = _T_1929 & _T_1937; // @[StatusArray.scala 131:34]
  wire  _T_1914 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1921 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1922 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_6 = _T_1914 & _T_1922; // @[StatusArray.scala 131:34]
  wire  _T_1899 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1906 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1907 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_6 = _T_1899 & _T_1907; // @[StatusArray.scala 131:34]
  wire  _T_1884 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1891 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1892 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_6 = _T_1884 & _T_1892; // @[StatusArray.scala 131:34]
  wire  _T_1869 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_1876 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_1877 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_6_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_6 = _T_1869 & _T_1877; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_6 = {stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,
    stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_6 = {stateMatchVec_11_6,stateMatchVec_10_6,stateMatchVec_9_6,stateMatchVec_8_6,
    stateMatchVec_7_6,stateMatchVec_6_6,stateMatch_lo_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2071 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_2071; // @[StatusArray.scala 241:50]
  wire  readyVecNext_6 = &statusArrayNext_6_srcState_0 & readyVecNext_scheduledCond_6; // @[StatusArray.scala 65:43]
  wire  updateVal_7_scheduled = updateVec_7_0 & io_update_0_data_scheduled | updateVec_7_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_38 = io_issueGranted_1_valid & io_issueGranted_1_bits[7]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_36 = io_issueGranted_0_valid & io_issueGranted_0_bits[7]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_39 = {_hasIssued_T_38,_hasIssued_T_36}; // @[StatusArray.scala 183:83]
  wire  hasIssued_7 = |_hasIssued_T_39; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_7 = _T_244 & ~_T_247; // @[StatusArray.scala 184:38]
  wire  noCredit_7 = statusArray_7_valid & statusArray_7_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_7 = statusArray_7_scheduled & ~deqNotGranted_7 & ~noCredit_7; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_7_scheduled = updateValid_7 ? updateVal_7_scheduled : hasIssued_7 | keepScheduled_7; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_7 = ~statusArrayNext_7_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_435 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_436 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_435 | _updateStatus_T_436; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2248 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_432 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_433 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_432 | _updateStatus_T_433; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2255 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2256 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_7 = _T_2248 & _T_2256; // @[StatusArray.scala 131:34]
  wire  _T_2233 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2240 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2241 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_7 = _T_2233 & _T_2241; // @[StatusArray.scala 131:34]
  wire  _T_2218 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2225 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2226 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_7 = _T_2218 & _T_2226; // @[StatusArray.scala 131:34]
  wire  _T_2203 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2210 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2211 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_7 = _T_2203 & _T_2211; // @[StatusArray.scala 131:34]
  wire  _T_2188 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2195 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2196 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_7 = _T_2188 & _T_2196; // @[StatusArray.scala 131:34]
  wire  _T_2173 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2180 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2181 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_7 = _T_2173 & _T_2181; // @[StatusArray.scala 131:34]
  wire  _T_2158 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2165 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2166 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_7 = _T_2158 & _T_2166; // @[StatusArray.scala 131:34]
  wire  _T_2143 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2150 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2151 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_7 = _T_2143 & _T_2151; // @[StatusArray.scala 131:34]
  wire  _T_2128 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2135 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2136 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_7 = _T_2128 & _T_2136; // @[StatusArray.scala 131:34]
  wire  _T_2113 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2120 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2121 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_7 = _T_2113 & _T_2121; // @[StatusArray.scala 131:34]
  wire  _T_2098 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2105 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2106 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_7 = _T_2098 & _T_2106; // @[StatusArray.scala 131:34]
  wire  _T_2083 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2090 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2091 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_7_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_7 = _T_2083 & _T_2091; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_7 = {stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,
    stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_7 = {stateMatchVec_11_7,stateMatchVec_10_7,stateMatchVec_9_7,stateMatchVec_8_7,
    stateMatchVec_7_7,stateMatchVec_6_7,stateMatch_lo_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2285 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_2285; // @[StatusArray.scala 241:50]
  wire  readyVecNext_7 = &statusArrayNext_7_srcState_0 & readyVecNext_scheduledCond_7; // @[StatusArray.scala 65:43]
  wire  updateVal_8_scheduled = updateVec_8_0 & io_update_0_data_scheduled | updateVec_8_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_43 = io_issueGranted_1_valid & io_issueGranted_1_bits[8]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_41 = io_issueGranted_0_valid & io_issueGranted_0_bits[8]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_44 = {_hasIssued_T_43,_hasIssued_T_41}; // @[StatusArray.scala 183:83]
  wire  hasIssued_8 = |_hasIssued_T_44; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_8 = _T_264 & ~_T_267; // @[StatusArray.scala 184:38]
  wire  noCredit_8 = statusArray_8_valid & statusArray_8_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_8 = statusArray_8_scheduled & ~deqNotGranted_8 & ~noCredit_8; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_8_scheduled = updateValid_8 ? updateVal_8_scheduled : hasIssued_8 | keepScheduled_8; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_8 = ~statusArrayNext_8_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_492 = updateVec_8_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_493 = updateVec_8_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_0 = _updateStatus_T_492 | _updateStatus_T_493; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2462 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_489 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_490 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_489 | _updateStatus_T_490; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2469 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2470 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_8 = _T_2462 & _T_2470; // @[StatusArray.scala 131:34]
  wire  _T_2447 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2454 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2455 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_8 = _T_2447 & _T_2455; // @[StatusArray.scala 131:34]
  wire  _T_2432 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2439 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2440 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_8 = _T_2432 & _T_2440; // @[StatusArray.scala 131:34]
  wire  _T_2417 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2424 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2425 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_8 = _T_2417 & _T_2425; // @[StatusArray.scala 131:34]
  wire  _T_2402 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2409 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2410 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_8 = _T_2402 & _T_2410; // @[StatusArray.scala 131:34]
  wire  _T_2387 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2394 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2395 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_8 = _T_2387 & _T_2395; // @[StatusArray.scala 131:34]
  wire  _T_2372 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2379 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2380 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_8 = _T_2372 & _T_2380; // @[StatusArray.scala 131:34]
  wire  _T_2357 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2364 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2365 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_8 = _T_2357 & _T_2365; // @[StatusArray.scala 131:34]
  wire  _T_2342 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2349 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2350 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_8 = _T_2342 & _T_2350; // @[StatusArray.scala 131:34]
  wire  _T_2327 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2334 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2335 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_8 = _T_2327 & _T_2335; // @[StatusArray.scala 131:34]
  wire  _T_2312 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2319 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2320 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_8 = _T_2312 & _T_2320; // @[StatusArray.scala 131:34]
  wire  _T_2297 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2304 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2305 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_8_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_8_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_8 = _T_2297 & _T_2305; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_8 = {stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,
    stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_8 = {stateMatchVec_11_8,stateMatchVec_10_8,stateMatchVec_9_8,stateMatchVec_8_8,
    stateMatchVec_7_8,stateMatchVec_6_8,stateMatch_lo_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2499 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_2499; // @[StatusArray.scala 241:50]
  wire  readyVecNext_8 = &statusArrayNext_8_srcState_0 & readyVecNext_scheduledCond_8; // @[StatusArray.scala 65:43]
  wire  updateVal_9_scheduled = updateVec_9_0 & io_update_0_data_scheduled | updateVec_9_1 & io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_48 = io_issueGranted_1_valid & io_issueGranted_1_bits[9]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_46 = io_issueGranted_0_valid & io_issueGranted_0_bits[9]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_49 = {_hasIssued_T_48,_hasIssued_T_46}; // @[StatusArray.scala 183:83]
  wire  hasIssued_9 = |_hasIssued_T_49; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_9 = _T_284 & ~_T_287; // @[StatusArray.scala 184:38]
  wire  noCredit_9 = statusArray_9_valid & statusArray_9_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_9 = statusArray_9_scheduled & ~deqNotGranted_9 & ~noCredit_9; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_9_scheduled = updateValid_9 ? updateVal_9_scheduled : hasIssued_9 | keepScheduled_9; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_9 = ~statusArrayNext_9_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_549 = updateVec_9_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_550 = updateVec_9_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_0 = _updateStatus_T_549 | _updateStatus_T_550; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2676 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_546 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_547 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_546 | _updateStatus_T_547; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2683 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2684 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_9 = _T_2676 & _T_2684; // @[StatusArray.scala 131:34]
  wire  _T_2661 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2668 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2669 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_9 = _T_2661 & _T_2669; // @[StatusArray.scala 131:34]
  wire  _T_2646 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2653 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2654 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_9 = _T_2646 & _T_2654; // @[StatusArray.scala 131:34]
  wire  _T_2631 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2638 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2639 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_9 = _T_2631 & _T_2639; // @[StatusArray.scala 131:34]
  wire  _T_2616 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2623 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2624 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_9 = _T_2616 & _T_2624; // @[StatusArray.scala 131:34]
  wire  _T_2601 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2608 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2609 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_9 = _T_2601 & _T_2609; // @[StatusArray.scala 131:34]
  wire  _T_2586 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2593 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2594 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_9 = _T_2586 & _T_2594; // @[StatusArray.scala 131:34]
  wire  _T_2571 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2578 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2579 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_9 = _T_2571 & _T_2579; // @[StatusArray.scala 131:34]
  wire  _T_2556 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2563 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2564 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_9 = _T_2556 & _T_2564; // @[StatusArray.scala 131:34]
  wire  _T_2541 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2548 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2549 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_9 = _T_2541 & _T_2549; // @[StatusArray.scala 131:34]
  wire  _T_2526 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2533 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2534 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_9 = _T_2526 & _T_2534; // @[StatusArray.scala 131:34]
  wire  _T_2511 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2518 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2519 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_9_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_9_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_9 = _T_2511 & _T_2519; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_9 = {stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,
    stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_9 = {stateMatchVec_11_9,stateMatchVec_10_9,stateMatchVec_9_9,stateMatchVec_8_9,
    stateMatchVec_7_9,stateMatchVec_6_9,stateMatch_lo_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2713 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_2713; // @[StatusArray.scala 241:50]
  wire  readyVecNext_9 = &statusArrayNext_9_srcState_0 & readyVecNext_scheduledCond_9; // @[StatusArray.scala 65:43]
  wire  updateVal_10_scheduled = updateVec_10_0 & io_update_0_data_scheduled | updateVec_10_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_53 = io_issueGranted_1_valid & io_issueGranted_1_bits[10]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_51 = io_issueGranted_0_valid & io_issueGranted_0_bits[10]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_54 = {_hasIssued_T_53,_hasIssued_T_51}; // @[StatusArray.scala 183:83]
  wire  hasIssued_10 = |_hasIssued_T_54; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_10 = _T_304 & ~_T_307; // @[StatusArray.scala 184:38]
  wire  noCredit_10 = statusArray_10_valid & statusArray_10_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_10 = statusArray_10_scheduled & ~deqNotGranted_10 & ~noCredit_10; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_10_scheduled = updateValid_10 ? updateVal_10_scheduled : hasIssued_10 | keepScheduled_10; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_10 = ~statusArrayNext_10_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_606 = updateVec_10_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_607 = updateVec_10_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_0 = _updateStatus_T_606 | _updateStatus_T_607; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2890 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_603 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_604 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_603 | _updateStatus_T_604; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2897 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2898 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_10 = _T_2890 & _T_2898; // @[StatusArray.scala 131:34]
  wire  _T_2875 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2882 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2883 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_10 = _T_2875 & _T_2883; // @[StatusArray.scala 131:34]
  wire  _T_2860 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2867 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2868 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_10 = _T_2860 & _T_2868; // @[StatusArray.scala 131:34]
  wire  _T_2845 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2852 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2853 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_10 = _T_2845 & _T_2853; // @[StatusArray.scala 131:34]
  wire  _T_2830 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2837 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2838 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_10 = _T_2830 & _T_2838; // @[StatusArray.scala 131:34]
  wire  _T_2815 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2822 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2823 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_10 = _T_2815 & _T_2823; // @[StatusArray.scala 131:34]
  wire  _T_2800 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2807 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2808 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_10 = _T_2800 & _T_2808; // @[StatusArray.scala 131:34]
  wire  _T_2785 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2792 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2793 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_10 = _T_2785 & _T_2793; // @[StatusArray.scala 131:34]
  wire  _T_2770 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2777 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2778 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_10 = _T_2770 & _T_2778; // @[StatusArray.scala 131:34]
  wire  _T_2755 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2762 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2763 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_10 = _T_2755 & _T_2763; // @[StatusArray.scala 131:34]
  wire  _T_2740 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2747 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2748 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_10 = _T_2740 & _T_2748; // @[StatusArray.scala 131:34]
  wire  _T_2725 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2732 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2733 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_10_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_10_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_10 = _T_2725 & _T_2733; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_10 = {stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,
    stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_10 = {stateMatchVec_11_10,stateMatchVec_10_10,stateMatchVec_9_10,stateMatchVec_8_10,
    stateMatchVec_7_10,stateMatchVec_6_10,stateMatch_lo_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2927 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_2927; // @[StatusArray.scala 241:50]
  wire  readyVecNext_10 = &statusArrayNext_10_srcState_0 & readyVecNext_scheduledCond_10; // @[StatusArray.scala 65:43]
  wire  updateVal_11_scheduled = updateVec_11_0 & io_update_0_data_scheduled | updateVec_11_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_58 = io_issueGranted_1_valid & io_issueGranted_1_bits[11]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_56 = io_issueGranted_0_valid & io_issueGranted_0_bits[11]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_59 = {_hasIssued_T_58,_hasIssued_T_56}; // @[StatusArray.scala 183:83]
  wire  hasIssued_11 = |_hasIssued_T_59; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_11 = _T_324 & ~_T_327; // @[StatusArray.scala 184:38]
  wire  noCredit_11 = statusArray_11_valid & statusArray_11_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_11 = statusArray_11_scheduled & ~deqNotGranted_11 & ~noCredit_11; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_11_scheduled = updateValid_11 ? updateVal_11_scheduled : hasIssued_11 | keepScheduled_11; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_11 = ~statusArrayNext_11_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_663 = updateVec_11_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_664 = updateVec_11_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_0 = _updateStatus_T_663 | _updateStatus_T_664; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3104 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_660 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_661 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_660 | _updateStatus_T_661; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3111 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3112 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_11 = _T_3104 & _T_3112; // @[StatusArray.scala 131:34]
  wire  _T_3089 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3096 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3097 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_11 = _T_3089 & _T_3097; // @[StatusArray.scala 131:34]
  wire  _T_3074 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3081 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3082 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_11 = _T_3074 & _T_3082; // @[StatusArray.scala 131:34]
  wire  _T_3059 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3066 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3067 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_11 = _T_3059 & _T_3067; // @[StatusArray.scala 131:34]
  wire  _T_3044 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3051 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3052 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_11 = _T_3044 & _T_3052; // @[StatusArray.scala 131:34]
  wire  _T_3029 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3036 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3037 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_11 = _T_3029 & _T_3037; // @[StatusArray.scala 131:34]
  wire  _T_3014 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3021 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3022 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_11 = _T_3014 & _T_3022; // @[StatusArray.scala 131:34]
  wire  _T_2999 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3006 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3007 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_11 = _T_2999 & _T_3007; // @[StatusArray.scala 131:34]
  wire  _T_2984 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2991 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2992 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_11 = _T_2984 & _T_2992; // @[StatusArray.scala 131:34]
  wire  _T_2969 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2976 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2977 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_11 = _T_2969 & _T_2977; // @[StatusArray.scala 131:34]
  wire  _T_2954 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2961 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2962 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_11 = _T_2954 & _T_2962; // @[StatusArray.scala 131:34]
  wire  _T_2939 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_2946 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_2947 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_11_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_11_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_11 = _T_2939 & _T_2947; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_11 = {stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,
    stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_11 = {stateMatchVec_11_11,stateMatchVec_10_11,stateMatchVec_9_11,stateMatchVec_8_11,
    stateMatchVec_7_11,stateMatchVec_6_11,stateMatch_lo_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3141 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_3141; // @[StatusArray.scala 241:50]
  wire  readyVecNext_11 = &statusArrayNext_11_srcState_0 & readyVecNext_scheduledCond_11; // @[StatusArray.scala 65:43]
  wire  updateVal_12_scheduled = updateVec_12_0 & io_update_0_data_scheduled | updateVec_12_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_63 = io_issueGranted_1_valid & io_issueGranted_1_bits[12]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_61 = io_issueGranted_0_valid & io_issueGranted_0_bits[12]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_64 = {_hasIssued_T_63,_hasIssued_T_61}; // @[StatusArray.scala 183:83]
  wire  hasIssued_12 = |_hasIssued_T_64; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_12 = _T_344 & ~_T_347; // @[StatusArray.scala 184:38]
  wire  noCredit_12 = statusArray_12_valid & statusArray_12_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_12 = statusArray_12_scheduled & ~deqNotGranted_12 & ~noCredit_12; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_12_scheduled = updateValid_12 ? updateVal_12_scheduled : hasIssued_12 | keepScheduled_12; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_12 = ~statusArrayNext_12_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_720 = updateVec_12_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_721 = updateVec_12_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_0 = _updateStatus_T_720 | _updateStatus_T_721; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3318 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_717 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_718 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_717 | _updateStatus_T_718; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3325 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3326 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_12 = _T_3318 & _T_3326; // @[StatusArray.scala 131:34]
  wire  _T_3303 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3310 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3311 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_12 = _T_3303 & _T_3311; // @[StatusArray.scala 131:34]
  wire  _T_3288 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3295 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3296 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_12 = _T_3288 & _T_3296; // @[StatusArray.scala 131:34]
  wire  _T_3273 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3280 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3281 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_12 = _T_3273 & _T_3281; // @[StatusArray.scala 131:34]
  wire  _T_3258 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3265 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3266 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_12 = _T_3258 & _T_3266; // @[StatusArray.scala 131:34]
  wire  _T_3243 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3250 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3251 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_12 = _T_3243 & _T_3251; // @[StatusArray.scala 131:34]
  wire  _T_3228 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3235 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3236 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_12 = _T_3228 & _T_3236; // @[StatusArray.scala 131:34]
  wire  _T_3213 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3220 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3221 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_12 = _T_3213 & _T_3221; // @[StatusArray.scala 131:34]
  wire  _T_3198 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3205 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3206 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_12 = _T_3198 & _T_3206; // @[StatusArray.scala 131:34]
  wire  _T_3183 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3190 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3191 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_12 = _T_3183 & _T_3191; // @[StatusArray.scala 131:34]
  wire  _T_3168 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3175 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3176 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_12 = _T_3168 & _T_3176; // @[StatusArray.scala 131:34]
  wire  _T_3153 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3160 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3161 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_12_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_12_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_12 = _T_3153 & _T_3161; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_12 = {stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,
    stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_12 = {stateMatchVec_11_12,stateMatchVec_10_12,stateMatchVec_9_12,stateMatchVec_8_12,
    stateMatchVec_7_12,stateMatchVec_6_12,stateMatch_lo_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3355 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_3355; // @[StatusArray.scala 241:50]
  wire  readyVecNext_12 = &statusArrayNext_12_srcState_0 & readyVecNext_scheduledCond_12; // @[StatusArray.scala 65:43]
  wire  updateVal_13_scheduled = updateVec_13_0 & io_update_0_data_scheduled | updateVec_13_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_68 = io_issueGranted_1_valid & io_issueGranted_1_bits[13]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_66 = io_issueGranted_0_valid & io_issueGranted_0_bits[13]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_69 = {_hasIssued_T_68,_hasIssued_T_66}; // @[StatusArray.scala 183:83]
  wire  hasIssued_13 = |_hasIssued_T_69; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_13 = _T_364 & ~_T_367; // @[StatusArray.scala 184:38]
  wire  noCredit_13 = statusArray_13_valid & statusArray_13_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_13 = statusArray_13_scheduled & ~deqNotGranted_13 & ~noCredit_13; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_13_scheduled = updateValid_13 ? updateVal_13_scheduled : hasIssued_13 | keepScheduled_13; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_13 = ~statusArrayNext_13_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_777 = updateVec_13_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_778 = updateVec_13_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_0 = _updateStatus_T_777 | _updateStatus_T_778; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3532 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_774 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_775 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_774 | _updateStatus_T_775; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3539 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3540 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_13 = _T_3532 & _T_3540; // @[StatusArray.scala 131:34]
  wire  _T_3517 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3524 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3525 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_13 = _T_3517 & _T_3525; // @[StatusArray.scala 131:34]
  wire  _T_3502 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3509 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3510 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_13 = _T_3502 & _T_3510; // @[StatusArray.scala 131:34]
  wire  _T_3487 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3494 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3495 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_13 = _T_3487 & _T_3495; // @[StatusArray.scala 131:34]
  wire  _T_3472 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3479 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3480 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_13 = _T_3472 & _T_3480; // @[StatusArray.scala 131:34]
  wire  _T_3457 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3464 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3465 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_13 = _T_3457 & _T_3465; // @[StatusArray.scala 131:34]
  wire  _T_3442 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3449 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3450 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_13 = _T_3442 & _T_3450; // @[StatusArray.scala 131:34]
  wire  _T_3427 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3434 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3435 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_13 = _T_3427 & _T_3435; // @[StatusArray.scala 131:34]
  wire  _T_3412 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3419 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3420 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_13 = _T_3412 & _T_3420; // @[StatusArray.scala 131:34]
  wire  _T_3397 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3404 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3405 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_13 = _T_3397 & _T_3405; // @[StatusArray.scala 131:34]
  wire  _T_3382 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3389 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3390 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_13 = _T_3382 & _T_3390; // @[StatusArray.scala 131:34]
  wire  _T_3367 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3374 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3375 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_13_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_13_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_13 = _T_3367 & _T_3375; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_13 = {stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,
    stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_13 = {stateMatchVec_11_13,stateMatchVec_10_13,stateMatchVec_9_13,stateMatchVec_8_13,
    stateMatchVec_7_13,stateMatchVec_6_13,stateMatch_lo_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3569 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_3569; // @[StatusArray.scala 241:50]
  wire  readyVecNext_13 = &statusArrayNext_13_srcState_0 & readyVecNext_scheduledCond_13; // @[StatusArray.scala 65:43]
  wire  updateVal_14_scheduled = updateVec_14_0 & io_update_0_data_scheduled | updateVec_14_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_73 = io_issueGranted_1_valid & io_issueGranted_1_bits[14]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_71 = io_issueGranted_0_valid & io_issueGranted_0_bits[14]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_74 = {_hasIssued_T_73,_hasIssued_T_71}; // @[StatusArray.scala 183:83]
  wire  hasIssued_14 = |_hasIssued_T_74; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_14 = _T_384 & ~_T_387; // @[StatusArray.scala 184:38]
  wire  noCredit_14 = statusArray_14_valid & statusArray_14_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_14 = statusArray_14_scheduled & ~deqNotGranted_14 & ~noCredit_14; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_14_scheduled = updateValid_14 ? updateVal_14_scheduled : hasIssued_14 | keepScheduled_14; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_14 = ~statusArrayNext_14_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_834 = updateVec_14_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_835 = updateVec_14_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_0 = _updateStatus_T_834 | _updateStatus_T_835; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3746 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_831 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_832 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_831 | _updateStatus_T_832; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3753 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3754 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_14 = _T_3746 & _T_3754; // @[StatusArray.scala 131:34]
  wire  _T_3731 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3738 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3739 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_14 = _T_3731 & _T_3739; // @[StatusArray.scala 131:34]
  wire  _T_3716 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3723 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3724 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_14 = _T_3716 & _T_3724; // @[StatusArray.scala 131:34]
  wire  _T_3701 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3708 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3709 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_14 = _T_3701 & _T_3709; // @[StatusArray.scala 131:34]
  wire  _T_3686 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3693 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3694 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_14 = _T_3686 & _T_3694; // @[StatusArray.scala 131:34]
  wire  _T_3671 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3678 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3679 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_14 = _T_3671 & _T_3679; // @[StatusArray.scala 131:34]
  wire  _T_3656 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3663 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3664 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_14 = _T_3656 & _T_3664; // @[StatusArray.scala 131:34]
  wire  _T_3641 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3648 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3649 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_14 = _T_3641 & _T_3649; // @[StatusArray.scala 131:34]
  wire  _T_3626 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3633 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3634 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_14 = _T_3626 & _T_3634; // @[StatusArray.scala 131:34]
  wire  _T_3611 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3618 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3619 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_14 = _T_3611 & _T_3619; // @[StatusArray.scala 131:34]
  wire  _T_3596 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3603 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3604 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_14 = _T_3596 & _T_3604; // @[StatusArray.scala 131:34]
  wire  _T_3581 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3588 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3589 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_14_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_14_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_14 = _T_3581 & _T_3589; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_14 = {stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,
    stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_14 = {stateMatchVec_11_14,stateMatchVec_10_14,stateMatchVec_9_14,stateMatchVec_8_14,
    stateMatchVec_7_14,stateMatchVec_6_14,stateMatch_lo_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3783 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_3783; // @[StatusArray.scala 241:50]
  wire  readyVecNext_14 = &statusArrayNext_14_srcState_0 & readyVecNext_scheduledCond_14; // @[StatusArray.scala 65:43]
  wire  updateVal_15_scheduled = updateVec_15_0 & io_update_0_data_scheduled | updateVec_15_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_78 = io_issueGranted_1_valid & io_issueGranted_1_bits[15]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_76 = io_issueGranted_0_valid & io_issueGranted_0_bits[15]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_79 = {_hasIssued_T_78,_hasIssued_T_76}; // @[StatusArray.scala 183:83]
  wire  hasIssued_15 = |_hasIssued_T_79; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_15 = _T_404 & ~_T_407; // @[StatusArray.scala 184:38]
  wire  noCredit_15 = statusArray_15_valid & statusArray_15_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_15 = statusArray_15_scheduled & ~deqNotGranted_15 & ~noCredit_15; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_15_scheduled = updateValid_15 ? updateVal_15_scheduled : hasIssued_15 | keepScheduled_15; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_15 = ~statusArrayNext_15_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_891 = updateVec_15_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_892 = updateVec_15_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_0 = _updateStatus_T_891 | _updateStatus_T_892; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3960 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_888 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_889 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_888 | _updateStatus_T_889; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3967 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3968 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_15 = _T_3960 & _T_3968; // @[StatusArray.scala 131:34]
  wire  _T_3945 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3952 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3953 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_15 = _T_3945 & _T_3953; // @[StatusArray.scala 131:34]
  wire  _T_3930 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3937 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3938 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_15 = _T_3930 & _T_3938; // @[StatusArray.scala 131:34]
  wire  _T_3915 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3922 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3923 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_15 = _T_3915 & _T_3923; // @[StatusArray.scala 131:34]
  wire  _T_3900 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3907 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3908 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_15 = _T_3900 & _T_3908; // @[StatusArray.scala 131:34]
  wire  _T_3885 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3892 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3893 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_15 = _T_3885 & _T_3893; // @[StatusArray.scala 131:34]
  wire  _T_3870 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3877 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3878 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_15 = _T_3870 & _T_3878; // @[StatusArray.scala 131:34]
  wire  _T_3855 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3862 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3863 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_15 = _T_3855 & _T_3863; // @[StatusArray.scala 131:34]
  wire  _T_3840 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3847 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3848 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_15 = _T_3840 & _T_3848; // @[StatusArray.scala 131:34]
  wire  _T_3825 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3832 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3833 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_15 = _T_3825 & _T_3833; // @[StatusArray.scala 131:34]
  wire  _T_3810 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3817 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3818 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_15 = _T_3810 & _T_3818; // @[StatusArray.scala 131:34]
  wire  _T_3795 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_3802 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_3803 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_15_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_15_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_15 = _T_3795 & _T_3803; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_15 = {stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,
    stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_15 = {stateMatchVec_11_15,stateMatchVec_10_15,stateMatchVec_9_15,stateMatchVec_8_15,
    stateMatchVec_7_15,stateMatchVec_6_15,stateMatch_lo_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3997 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_3997; // @[StatusArray.scala 241:50]
  wire  readyVecNext_15 = &statusArrayNext_15_srcState_0 & readyVecNext_scheduledCond_15; // @[StatusArray.scala 65:43]
  wire  updateVal_16_scheduled = updateVec_16_0 & io_update_0_data_scheduled | updateVec_16_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_83 = io_issueGranted_1_valid & io_issueGranted_1_bits[16]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_81 = io_issueGranted_0_valid & io_issueGranted_0_bits[16]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_84 = {_hasIssued_T_83,_hasIssued_T_81}; // @[StatusArray.scala 183:83]
  wire  hasIssued_16 = |_hasIssued_T_84; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_16 = _T_424 & ~_T_427; // @[StatusArray.scala 184:38]
  wire  noCredit_16 = statusArray_16_valid & statusArray_16_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_16 = statusArray_16_scheduled & ~deqNotGranted_16 & ~noCredit_16; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_16_scheduled = updateValid_16 ? updateVal_16_scheduled : hasIssued_16 | keepScheduled_16; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_16 = ~statusArrayNext_16_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_948 = updateVec_16_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_949 = updateVec_16_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_16_psrc_0 = _updateStatus_T_948 | _updateStatus_T_949; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_16_psrc_0 = updateValid_16 ? updateVal_16_psrc_0 : statusArray_16_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4174 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_945 = updateVec_16_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_946 = updateVec_16_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_16_srcType_0 = _updateStatus_T_945 | _updateStatus_T_946; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_16_srcType_0 = updateValid_16 ? updateVal_16_srcType_0 : statusArray_16_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4181 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4182 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_16 = _T_4174 & _T_4182; // @[StatusArray.scala 131:34]
  wire  _T_4159 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4166 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4167 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_16 = _T_4159 & _T_4167; // @[StatusArray.scala 131:34]
  wire  _T_4144 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4151 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4152 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_16 = _T_4144 & _T_4152; // @[StatusArray.scala 131:34]
  wire  _T_4129 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4136 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4137 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_16 = _T_4129 & _T_4137; // @[StatusArray.scala 131:34]
  wire  _T_4114 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4121 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4122 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_16 = _T_4114 & _T_4122; // @[StatusArray.scala 131:34]
  wire  _T_4099 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4106 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4107 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_16 = _T_4099 & _T_4107; // @[StatusArray.scala 131:34]
  wire  _T_4084 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4091 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4092 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_16 = _T_4084 & _T_4092; // @[StatusArray.scala 131:34]
  wire  _T_4069 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4076 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4077 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_16 = _T_4069 & _T_4077; // @[StatusArray.scala 131:34]
  wire  _T_4054 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4061 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4062 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_16 = _T_4054 & _T_4062; // @[StatusArray.scala 131:34]
  wire  _T_4039 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4046 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4047 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_16 = _T_4039 & _T_4047; // @[StatusArray.scala 131:34]
  wire  _T_4024 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4031 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4032 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_16 = _T_4024 & _T_4032; // @[StatusArray.scala 131:34]
  wire  _T_4009 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4016 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4017 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_16_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_16_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_16 = _T_4009 & _T_4017; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_16 = {stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,stateMatchVec_2_16,
    stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_16 = {stateMatchVec_11_16,stateMatchVec_10_16,stateMatchVec_9_16,stateMatchVec_8_16,
    stateMatchVec_7_16,stateMatchVec_6_16,stateMatch_lo_16}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_16 = |_stateMatch_T_16; // @[StatusArray.scala 137:52]
  wire  updateVal_16_srcState_0 = updateVec_16_0 & io_update_0_data_srcState_0 | updateVec_16_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4211 = updateValid_16 ? updateVal_16_srcState_0 : statusArray_16_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_16_srcState_0 = stateWakeupEn_0_16 | _T_4211; // @[StatusArray.scala 241:50]
  wire  readyVecNext_16 = &statusArrayNext_16_srcState_0 & readyVecNext_scheduledCond_16; // @[StatusArray.scala 65:43]
  wire  updateVal_17_scheduled = updateVec_17_0 & io_update_0_data_scheduled | updateVec_17_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_88 = io_issueGranted_1_valid & io_issueGranted_1_bits[17]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_86 = io_issueGranted_0_valid & io_issueGranted_0_bits[17]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_89 = {_hasIssued_T_88,_hasIssued_T_86}; // @[StatusArray.scala 183:83]
  wire  hasIssued_17 = |_hasIssued_T_89; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_17 = _T_444 & ~_T_447; // @[StatusArray.scala 184:38]
  wire  noCredit_17 = statusArray_17_valid & statusArray_17_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_17 = statusArray_17_scheduled & ~deqNotGranted_17 & ~noCredit_17; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_17_scheduled = updateValid_17 ? updateVal_17_scheduled : hasIssued_17 | keepScheduled_17; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_17 = ~statusArrayNext_17_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1005 = updateVec_17_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1006 = updateVec_17_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_17_psrc_0 = _updateStatus_T_1005 | _updateStatus_T_1006; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_17_psrc_0 = updateValid_17 ? updateVal_17_psrc_0 : statusArray_17_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4388 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1002 = updateVec_17_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1003 = updateVec_17_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_17_srcType_0 = _updateStatus_T_1002 | _updateStatus_T_1003; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_17_srcType_0 = updateValid_17 ? updateVal_17_srcType_0 : statusArray_17_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4395 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4396 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_17 = _T_4388 & _T_4396; // @[StatusArray.scala 131:34]
  wire  _T_4373 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4380 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4381 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_17 = _T_4373 & _T_4381; // @[StatusArray.scala 131:34]
  wire  _T_4358 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4365 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4366 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_17 = _T_4358 & _T_4366; // @[StatusArray.scala 131:34]
  wire  _T_4343 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4350 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4351 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_17 = _T_4343 & _T_4351; // @[StatusArray.scala 131:34]
  wire  _T_4328 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4335 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4336 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_17 = _T_4328 & _T_4336; // @[StatusArray.scala 131:34]
  wire  _T_4313 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4320 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4321 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_17 = _T_4313 & _T_4321; // @[StatusArray.scala 131:34]
  wire  _T_4298 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4305 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4306 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_17 = _T_4298 & _T_4306; // @[StatusArray.scala 131:34]
  wire  _T_4283 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4290 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4291 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_17 = _T_4283 & _T_4291; // @[StatusArray.scala 131:34]
  wire  _T_4268 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4275 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4276 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_17 = _T_4268 & _T_4276; // @[StatusArray.scala 131:34]
  wire  _T_4253 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4260 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4261 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_17 = _T_4253 & _T_4261; // @[StatusArray.scala 131:34]
  wire  _T_4238 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4245 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4246 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_17 = _T_4238 & _T_4246; // @[StatusArray.scala 131:34]
  wire  _T_4223 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4230 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4231 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_17_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_17_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_17 = _T_4223 & _T_4231; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_17 = {stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,stateMatchVec_2_17,
    stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_17 = {stateMatchVec_11_17,stateMatchVec_10_17,stateMatchVec_9_17,stateMatchVec_8_17,
    stateMatchVec_7_17,stateMatchVec_6_17,stateMatch_lo_17}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_17 = |_stateMatch_T_17; // @[StatusArray.scala 137:52]
  wire  updateVal_17_srcState_0 = updateVec_17_0 & io_update_0_data_srcState_0 | updateVec_17_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4425 = updateValid_17 ? updateVal_17_srcState_0 : statusArray_17_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_17_srcState_0 = stateWakeupEn_0_17 | _T_4425; // @[StatusArray.scala 241:50]
  wire  readyVecNext_17 = &statusArrayNext_17_srcState_0 & readyVecNext_scheduledCond_17; // @[StatusArray.scala 65:43]
  wire  updateVal_18_scheduled = updateVec_18_0 & io_update_0_data_scheduled | updateVec_18_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_93 = io_issueGranted_1_valid & io_issueGranted_1_bits[18]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_91 = io_issueGranted_0_valid & io_issueGranted_0_bits[18]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_94 = {_hasIssued_T_93,_hasIssued_T_91}; // @[StatusArray.scala 183:83]
  wire  hasIssued_18 = |_hasIssued_T_94; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_18 = _T_464 & ~_T_467; // @[StatusArray.scala 184:38]
  wire  noCredit_18 = statusArray_18_valid & statusArray_18_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_18 = statusArray_18_scheduled & ~deqNotGranted_18 & ~noCredit_18; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_18_scheduled = updateValid_18 ? updateVal_18_scheduled : hasIssued_18 | keepScheduled_18; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_18 = ~statusArrayNext_18_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1062 = updateVec_18_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1063 = updateVec_18_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_18_psrc_0 = _updateStatus_T_1062 | _updateStatus_T_1063; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_18_psrc_0 = updateValid_18 ? updateVal_18_psrc_0 : statusArray_18_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4602 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1059 = updateVec_18_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1060 = updateVec_18_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_18_srcType_0 = _updateStatus_T_1059 | _updateStatus_T_1060; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_18_srcType_0 = updateValid_18 ? updateVal_18_srcType_0 : statusArray_18_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4609 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4610 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_18 = _T_4602 & _T_4610; // @[StatusArray.scala 131:34]
  wire  _T_4587 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4594 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4595 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_18 = _T_4587 & _T_4595; // @[StatusArray.scala 131:34]
  wire  _T_4572 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4579 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4580 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_18 = _T_4572 & _T_4580; // @[StatusArray.scala 131:34]
  wire  _T_4557 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4564 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4565 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_18 = _T_4557 & _T_4565; // @[StatusArray.scala 131:34]
  wire  _T_4542 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4549 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4550 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_18 = _T_4542 & _T_4550; // @[StatusArray.scala 131:34]
  wire  _T_4527 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4534 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4535 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_18 = _T_4527 & _T_4535; // @[StatusArray.scala 131:34]
  wire  _T_4512 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4519 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4520 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_18 = _T_4512 & _T_4520; // @[StatusArray.scala 131:34]
  wire  _T_4497 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4504 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4505 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_18 = _T_4497 & _T_4505; // @[StatusArray.scala 131:34]
  wire  _T_4482 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4489 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4490 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_18 = _T_4482 & _T_4490; // @[StatusArray.scala 131:34]
  wire  _T_4467 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4474 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4475 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_18 = _T_4467 & _T_4475; // @[StatusArray.scala 131:34]
  wire  _T_4452 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4459 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4460 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_18 = _T_4452 & _T_4460; // @[StatusArray.scala 131:34]
  wire  _T_4437 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4444 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4445 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_18_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_18_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_18 = _T_4437 & _T_4445; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_18 = {stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,stateMatchVec_2_18,
    stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_18 = {stateMatchVec_11_18,stateMatchVec_10_18,stateMatchVec_9_18,stateMatchVec_8_18,
    stateMatchVec_7_18,stateMatchVec_6_18,stateMatch_lo_18}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_18 = |_stateMatch_T_18; // @[StatusArray.scala 137:52]
  wire  updateVal_18_srcState_0 = updateVec_18_0 & io_update_0_data_srcState_0 | updateVec_18_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4639 = updateValid_18 ? updateVal_18_srcState_0 : statusArray_18_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_18_srcState_0 = stateWakeupEn_0_18 | _T_4639; // @[StatusArray.scala 241:50]
  wire  readyVecNext_18 = &statusArrayNext_18_srcState_0 & readyVecNext_scheduledCond_18; // @[StatusArray.scala 65:43]
  wire  updateVal_19_scheduled = updateVec_19_0 & io_update_0_data_scheduled | updateVec_19_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_98 = io_issueGranted_1_valid & io_issueGranted_1_bits[19]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_96 = io_issueGranted_0_valid & io_issueGranted_0_bits[19]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_99 = {_hasIssued_T_98,_hasIssued_T_96}; // @[StatusArray.scala 183:83]
  wire  hasIssued_19 = |_hasIssued_T_99; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_19 = _T_484 & ~_T_487; // @[StatusArray.scala 184:38]
  wire  noCredit_19 = statusArray_19_valid & statusArray_19_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_19 = statusArray_19_scheduled & ~deqNotGranted_19 & ~noCredit_19; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_19_scheduled = updateValid_19 ? updateVal_19_scheduled : hasIssued_19 | keepScheduled_19; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_19 = ~statusArrayNext_19_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1119 = updateVec_19_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1120 = updateVec_19_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_19_psrc_0 = _updateStatus_T_1119 | _updateStatus_T_1120; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_19_psrc_0 = updateValid_19 ? updateVal_19_psrc_0 : statusArray_19_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4816 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1116 = updateVec_19_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1117 = updateVec_19_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_19_srcType_0 = _updateStatus_T_1116 | _updateStatus_T_1117; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_19_srcType_0 = updateValid_19 ? updateVal_19_srcType_0 : statusArray_19_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4823 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4824 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_19 = _T_4816 & _T_4824; // @[StatusArray.scala 131:34]
  wire  _T_4801 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4808 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4809 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_19 = _T_4801 & _T_4809; // @[StatusArray.scala 131:34]
  wire  _T_4786 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4793 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4794 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_19 = _T_4786 & _T_4794; // @[StatusArray.scala 131:34]
  wire  _T_4771 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4778 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4779 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_19 = _T_4771 & _T_4779; // @[StatusArray.scala 131:34]
  wire  _T_4756 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4763 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4764 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_19 = _T_4756 & _T_4764; // @[StatusArray.scala 131:34]
  wire  _T_4741 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4748 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4749 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_19 = _T_4741 & _T_4749; // @[StatusArray.scala 131:34]
  wire  _T_4726 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4733 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4734 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_19 = _T_4726 & _T_4734; // @[StatusArray.scala 131:34]
  wire  _T_4711 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4718 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4719 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_19 = _T_4711 & _T_4719; // @[StatusArray.scala 131:34]
  wire  _T_4696 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4703 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4704 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_19 = _T_4696 & _T_4704; // @[StatusArray.scala 131:34]
  wire  _T_4681 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4688 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4689 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_19 = _T_4681 & _T_4689; // @[StatusArray.scala 131:34]
  wire  _T_4666 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4673 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4674 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_19 = _T_4666 & _T_4674; // @[StatusArray.scala 131:34]
  wire  _T_4651 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4658 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4659 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_19_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_19_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_19 = _T_4651 & _T_4659; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_19 = {stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,stateMatchVec_2_19,
    stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_19 = {stateMatchVec_11_19,stateMatchVec_10_19,stateMatchVec_9_19,stateMatchVec_8_19,
    stateMatchVec_7_19,stateMatchVec_6_19,stateMatch_lo_19}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_19 = |_stateMatch_T_19; // @[StatusArray.scala 137:52]
  wire  updateVal_19_srcState_0 = updateVec_19_0 & io_update_0_data_srcState_0 | updateVec_19_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4853 = updateValid_19 ? updateVal_19_srcState_0 : statusArray_19_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_19_srcState_0 = stateWakeupEn_0_19 | _T_4853; // @[StatusArray.scala 241:50]
  wire  readyVecNext_19 = &statusArrayNext_19_srcState_0 & readyVecNext_scheduledCond_19; // @[StatusArray.scala 65:43]
  wire  updateVal_20_scheduled = updateVec_20_0 & io_update_0_data_scheduled | updateVec_20_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_103 = io_issueGranted_1_valid & io_issueGranted_1_bits[20]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_101 = io_issueGranted_0_valid & io_issueGranted_0_bits[20]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_104 = {_hasIssued_T_103,_hasIssued_T_101}; // @[StatusArray.scala 183:83]
  wire  hasIssued_20 = |_hasIssued_T_104; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_20 = _T_504 & ~_T_507; // @[StatusArray.scala 184:38]
  wire  noCredit_20 = statusArray_20_valid & statusArray_20_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_20 = statusArray_20_scheduled & ~deqNotGranted_20 & ~noCredit_20; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_20_scheduled = updateValid_20 ? updateVal_20_scheduled : hasIssued_20 | keepScheduled_20; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_20 = ~statusArrayNext_20_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1176 = updateVec_20_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1177 = updateVec_20_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_20_psrc_0 = _updateStatus_T_1176 | _updateStatus_T_1177; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_20_psrc_0 = updateValid_20 ? updateVal_20_psrc_0 : statusArray_20_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5030 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1173 = updateVec_20_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1174 = updateVec_20_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_20_srcType_0 = _updateStatus_T_1173 | _updateStatus_T_1174; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_20_srcType_0 = updateValid_20 ? updateVal_20_srcType_0 : statusArray_20_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5037 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5038 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_20 = _T_5030 & _T_5038; // @[StatusArray.scala 131:34]
  wire  _T_5015 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5022 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5023 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_20 = _T_5015 & _T_5023; // @[StatusArray.scala 131:34]
  wire  _T_5000 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5007 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5008 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_20 = _T_5000 & _T_5008; // @[StatusArray.scala 131:34]
  wire  _T_4985 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4992 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4993 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_20 = _T_4985 & _T_4993; // @[StatusArray.scala 131:34]
  wire  _T_4970 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4977 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4978 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_20 = _T_4970 & _T_4978; // @[StatusArray.scala 131:34]
  wire  _T_4955 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4962 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4963 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_20 = _T_4955 & _T_4963; // @[StatusArray.scala 131:34]
  wire  _T_4940 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4947 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4948 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_20 = _T_4940 & _T_4948; // @[StatusArray.scala 131:34]
  wire  _T_4925 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4932 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4933 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_20 = _T_4925 & _T_4933; // @[StatusArray.scala 131:34]
  wire  _T_4910 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4917 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4918 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_20 = _T_4910 & _T_4918; // @[StatusArray.scala 131:34]
  wire  _T_4895 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4902 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4903 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_20 = _T_4895 & _T_4903; // @[StatusArray.scala 131:34]
  wire  _T_4880 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4887 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4888 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_20 = _T_4880 & _T_4888; // @[StatusArray.scala 131:34]
  wire  _T_4865 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_4872 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_4873 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_20_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_20_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_20 = _T_4865 & _T_4873; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_20 = {stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,stateMatchVec_2_20,
    stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_20 = {stateMatchVec_11_20,stateMatchVec_10_20,stateMatchVec_9_20,stateMatchVec_8_20,
    stateMatchVec_7_20,stateMatchVec_6_20,stateMatch_lo_20}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_20 = |_stateMatch_T_20; // @[StatusArray.scala 137:52]
  wire  updateVal_20_srcState_0 = updateVec_20_0 & io_update_0_data_srcState_0 | updateVec_20_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5067 = updateValid_20 ? updateVal_20_srcState_0 : statusArray_20_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_20_srcState_0 = stateWakeupEn_0_20 | _T_5067; // @[StatusArray.scala 241:50]
  wire  readyVecNext_20 = &statusArrayNext_20_srcState_0 & readyVecNext_scheduledCond_20; // @[StatusArray.scala 65:43]
  wire  updateVal_21_scheduled = updateVec_21_0 & io_update_0_data_scheduled | updateVec_21_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_108 = io_issueGranted_1_valid & io_issueGranted_1_bits[21]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_106 = io_issueGranted_0_valid & io_issueGranted_0_bits[21]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_109 = {_hasIssued_T_108,_hasIssued_T_106}; // @[StatusArray.scala 183:83]
  wire  hasIssued_21 = |_hasIssued_T_109; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_21 = _T_524 & ~_T_527; // @[StatusArray.scala 184:38]
  wire  noCredit_21 = statusArray_21_valid & statusArray_21_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_21 = statusArray_21_scheduled & ~deqNotGranted_21 & ~noCredit_21; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_21_scheduled = updateValid_21 ? updateVal_21_scheduled : hasIssued_21 | keepScheduled_21; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_21 = ~statusArrayNext_21_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1233 = updateVec_21_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1234 = updateVec_21_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_21_psrc_0 = _updateStatus_T_1233 | _updateStatus_T_1234; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_21_psrc_0 = updateValid_21 ? updateVal_21_psrc_0 : statusArray_21_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5244 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1230 = updateVec_21_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1231 = updateVec_21_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_21_srcType_0 = _updateStatus_T_1230 | _updateStatus_T_1231; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_21_srcType_0 = updateValid_21 ? updateVal_21_srcType_0 : statusArray_21_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5251 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5252 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_21 = _T_5244 & _T_5252; // @[StatusArray.scala 131:34]
  wire  _T_5229 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5236 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5237 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_21 = _T_5229 & _T_5237; // @[StatusArray.scala 131:34]
  wire  _T_5214 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5221 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5222 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_21 = _T_5214 & _T_5222; // @[StatusArray.scala 131:34]
  wire  _T_5199 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5206 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5207 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_21 = _T_5199 & _T_5207; // @[StatusArray.scala 131:34]
  wire  _T_5184 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5191 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5192 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_21 = _T_5184 & _T_5192; // @[StatusArray.scala 131:34]
  wire  _T_5169 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5176 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5177 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_21 = _T_5169 & _T_5177; // @[StatusArray.scala 131:34]
  wire  _T_5154 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5161 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5162 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_21 = _T_5154 & _T_5162; // @[StatusArray.scala 131:34]
  wire  _T_5139 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5146 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5147 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_21 = _T_5139 & _T_5147; // @[StatusArray.scala 131:34]
  wire  _T_5124 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5131 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5132 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_21 = _T_5124 & _T_5132; // @[StatusArray.scala 131:34]
  wire  _T_5109 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5116 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5117 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_21 = _T_5109 & _T_5117; // @[StatusArray.scala 131:34]
  wire  _T_5094 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5101 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5102 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_21 = _T_5094 & _T_5102; // @[StatusArray.scala 131:34]
  wire  _T_5079 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5086 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5087 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_21_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_21_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_21 = _T_5079 & _T_5087; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_21 = {stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,stateMatchVec_2_21,
    stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_21 = {stateMatchVec_11_21,stateMatchVec_10_21,stateMatchVec_9_21,stateMatchVec_8_21,
    stateMatchVec_7_21,stateMatchVec_6_21,stateMatch_lo_21}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_21 = |_stateMatch_T_21; // @[StatusArray.scala 137:52]
  wire  updateVal_21_srcState_0 = updateVec_21_0 & io_update_0_data_srcState_0 | updateVec_21_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5281 = updateValid_21 ? updateVal_21_srcState_0 : statusArray_21_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_21_srcState_0 = stateWakeupEn_0_21 | _T_5281; // @[StatusArray.scala 241:50]
  wire  readyVecNext_21 = &statusArrayNext_21_srcState_0 & readyVecNext_scheduledCond_21; // @[StatusArray.scala 65:43]
  wire  updateVal_22_scheduled = updateVec_22_0 & io_update_0_data_scheduled | updateVec_22_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_113 = io_issueGranted_1_valid & io_issueGranted_1_bits[22]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_111 = io_issueGranted_0_valid & io_issueGranted_0_bits[22]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_114 = {_hasIssued_T_113,_hasIssued_T_111}; // @[StatusArray.scala 183:83]
  wire  hasIssued_22 = |_hasIssued_T_114; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_22 = _T_544 & ~_T_547; // @[StatusArray.scala 184:38]
  wire  noCredit_22 = statusArray_22_valid & statusArray_22_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_22 = statusArray_22_scheduled & ~deqNotGranted_22 & ~noCredit_22; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_22_scheduled = updateValid_22 ? updateVal_22_scheduled : hasIssued_22 | keepScheduled_22; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_22 = ~statusArrayNext_22_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1290 = updateVec_22_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1291 = updateVec_22_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_22_psrc_0 = _updateStatus_T_1290 | _updateStatus_T_1291; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_22_psrc_0 = updateValid_22 ? updateVal_22_psrc_0 : statusArray_22_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5458 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1287 = updateVec_22_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1288 = updateVec_22_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_22_srcType_0 = _updateStatus_T_1287 | _updateStatus_T_1288; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_22_srcType_0 = updateValid_22 ? updateVal_22_srcType_0 : statusArray_22_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5465 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5466 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_22 = _T_5458 & _T_5466; // @[StatusArray.scala 131:34]
  wire  _T_5443 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5450 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5451 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_22 = _T_5443 & _T_5451; // @[StatusArray.scala 131:34]
  wire  _T_5428 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5435 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5436 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_22 = _T_5428 & _T_5436; // @[StatusArray.scala 131:34]
  wire  _T_5413 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5420 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5421 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_22 = _T_5413 & _T_5421; // @[StatusArray.scala 131:34]
  wire  _T_5398 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5405 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5406 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_22 = _T_5398 & _T_5406; // @[StatusArray.scala 131:34]
  wire  _T_5383 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5390 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5391 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_22 = _T_5383 & _T_5391; // @[StatusArray.scala 131:34]
  wire  _T_5368 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5375 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5376 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_22 = _T_5368 & _T_5376; // @[StatusArray.scala 131:34]
  wire  _T_5353 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5360 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5361 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_22 = _T_5353 & _T_5361; // @[StatusArray.scala 131:34]
  wire  _T_5338 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5345 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5346 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_22 = _T_5338 & _T_5346; // @[StatusArray.scala 131:34]
  wire  _T_5323 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5330 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5331 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_22 = _T_5323 & _T_5331; // @[StatusArray.scala 131:34]
  wire  _T_5308 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5315 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5316 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_22 = _T_5308 & _T_5316; // @[StatusArray.scala 131:34]
  wire  _T_5293 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5300 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5301 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_22_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_22_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_22 = _T_5293 & _T_5301; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_22 = {stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,stateMatchVec_2_22,
    stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_22 = {stateMatchVec_11_22,stateMatchVec_10_22,stateMatchVec_9_22,stateMatchVec_8_22,
    stateMatchVec_7_22,stateMatchVec_6_22,stateMatch_lo_22}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_22 = |_stateMatch_T_22; // @[StatusArray.scala 137:52]
  wire  updateVal_22_srcState_0 = updateVec_22_0 & io_update_0_data_srcState_0 | updateVec_22_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5495 = updateValid_22 ? updateVal_22_srcState_0 : statusArray_22_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_22_srcState_0 = stateWakeupEn_0_22 | _T_5495; // @[StatusArray.scala 241:50]
  wire  readyVecNext_22 = &statusArrayNext_22_srcState_0 & readyVecNext_scheduledCond_22; // @[StatusArray.scala 65:43]
  wire  updateVal_23_scheduled = updateVec_23_0 & io_update_0_data_scheduled | updateVec_23_1 &
    io_update_1_data_scheduled; // @[Mux.scala 27:73]
  wire  _hasIssued_T_118 = io_issueGranted_1_valid & io_issueGranted_1_bits[23]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_116 = io_issueGranted_0_valid & io_issueGranted_0_bits[23]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_119 = {_hasIssued_T_118,_hasIssued_T_116}; // @[StatusArray.scala 183:83]
  wire  hasIssued_23 = |_hasIssued_T_119; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_23 = _T_564 & ~_T_567; // @[StatusArray.scala 184:38]
  wire  noCredit_23 = statusArray_23_valid & statusArray_23_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_23 = statusArray_23_scheduled & ~deqNotGranted_23 & ~noCredit_23; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_23_scheduled = updateValid_23 ? updateVal_23_scheduled : hasIssued_23 | keepScheduled_23; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_23 = ~statusArrayNext_23_scheduled; // @[StatusArray.scala 61:54]
  wire [6:0] _updateStatus_T_1347 = updateVec_23_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1348 = updateVec_23_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_23_psrc_0 = _updateStatus_T_1347 | _updateStatus_T_1348; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_23_psrc_0 = updateValid_23 ? updateVal_23_psrc_0 : statusArray_23_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5672 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire [1:0] _updateStatus_T_1344 = updateVec_23_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1345 = updateVec_23_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_23_srcType_0 = _updateStatus_T_1344 | _updateStatus_T_1345; // @[Mux.scala 27:73]
  wire [1:0] statusArrayNext_23_srcType_0 = updateValid_23 ? updateVal_23_srcType_0 : statusArray_23_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5679 = io_wakeup_11_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5680 = io_wakeup_11_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_11_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_11_23 = _T_5672 & _T_5680; // @[StatusArray.scala 131:34]
  wire  _T_5657 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5664 = io_wakeup_10_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5665 = io_wakeup_10_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_10_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_10_23 = _T_5657 & _T_5665; // @[StatusArray.scala 131:34]
  wire  _T_5642 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5649 = io_wakeup_9_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5650 = io_wakeup_9_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_9_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_9_23 = _T_5642 & _T_5650; // @[StatusArray.scala 131:34]
  wire  _T_5627 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5634 = io_wakeup_8_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5635 = io_wakeup_8_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_8_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_8_23 = _T_5627 & _T_5635; // @[StatusArray.scala 131:34]
  wire  _T_5612 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5619 = io_wakeup_7_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5620 = io_wakeup_7_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_7_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_7_23 = _T_5612 & _T_5620; // @[StatusArray.scala 131:34]
  wire  _T_5597 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5604 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5605 = io_wakeup_6_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_6_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_6_23 = _T_5597 & _T_5605; // @[StatusArray.scala 131:34]
  wire  _T_5582 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5589 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5590 = io_wakeup_5_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_5_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_5_23 = _T_5582 & _T_5590; // @[StatusArray.scala 131:34]
  wire  _T_5567 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5574 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5575 = io_wakeup_4_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_4_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_4_23 = _T_5567 & _T_5575; // @[StatusArray.scala 131:34]
  wire  _T_5552 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5559 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5560 = io_wakeup_3_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_3_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_3_23 = _T_5552 & _T_5560; // @[StatusArray.scala 131:34]
  wire  _T_5537 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5544 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5545 = io_wakeup_2_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_2_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_2_23 = _T_5537 & _T_5545; // @[StatusArray.scala 131:34]
  wire  _T_5522 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5529 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5530 = io_wakeup_1_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_1_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_1_23 = _T_5522 & _T_5530; // @[StatusArray.scala 131:34]
  wire  _T_5507 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  _T_5514 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  _T_5515 = io_wakeup_0_bits_ctrl_rfWen & ~statusArrayNext_23_srcType_0[1] | io_wakeup_0_bits_ctrl_fpWen &
    statusArrayNext_23_srcType_0[1]; // @[StatusArray.scala 130:72]
  wire  stateMatchVec_0_23 = _T_5507 & _T_5515; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_23 = {stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,stateMatchVec_2_23,
    stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_23 = {stateMatchVec_11_23,stateMatchVec_10_23,stateMatchVec_9_23,stateMatchVec_8_23,
    stateMatchVec_7_23,stateMatchVec_6_23,stateMatch_lo_23}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_23 = |_stateMatch_T_23; // @[StatusArray.scala 137:52]
  wire  updateVal_23_srcState_0 = updateVec_23_0 & io_update_0_data_srcState_0 | updateVec_23_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5709 = updateValid_23 ? updateVal_23_srcState_0 : statusArray_23_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_23_srcState_0 = stateWakeupEn_0_23 | _T_5709; // @[StatusArray.scala 241:50]
  wire  readyVecNext_23 = &statusArrayNext_23_srcState_0 & readyVecNext_scheduledCond_23; // @[StatusArray.scala 65:43]
  wire [6:0] _updateStatus_T_27 = updateVec__0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_28 = updateVec__1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_robIdx_value = _updateStatus_T_27 | _updateStatus_T_28; // @[Mux.scala 27:73]
  wire  updateVal_0_robIdx_flag = updateVec__0 & io_update_0_data_robIdx_flag | updateVec__1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_45 = updateVec__0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_46 = updateVec__1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_0_credit = _updateStatus_T_45 | _updateStatus_T_46; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_84 = updateVec_1_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_85 = updateVec_1_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_robIdx_value = _updateStatus_T_84 | _updateStatus_T_85; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_102 = updateVec_1_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_103 = updateVec_1_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_1_credit = _updateStatus_T_102 | _updateStatus_T_103; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_141 = updateVec_2_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_142 = updateVec_2_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_robIdx_value = _updateStatus_T_141 | _updateStatus_T_142; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_159 = updateVec_2_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_160 = updateVec_2_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_2_credit = _updateStatus_T_159 | _updateStatus_T_160; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_198 = updateVec_3_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_199 = updateVec_3_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_robIdx_value = _updateStatus_T_198 | _updateStatus_T_199; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_216 = updateVec_3_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_217 = updateVec_3_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_3_credit = _updateStatus_T_216 | _updateStatus_T_217; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_255 = updateVec_4_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_256 = updateVec_4_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_robIdx_value = _updateStatus_T_255 | _updateStatus_T_256; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_273 = updateVec_4_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_274 = updateVec_4_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_4_credit = _updateStatus_T_273 | _updateStatus_T_274; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_312 = updateVec_5_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_313 = updateVec_5_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_robIdx_value = _updateStatus_T_312 | _updateStatus_T_313; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_330 = updateVec_5_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_331 = updateVec_5_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_5_credit = _updateStatus_T_330 | _updateStatus_T_331; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_369 = updateVec_6_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_370 = updateVec_6_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_robIdx_value = _updateStatus_T_369 | _updateStatus_T_370; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_387 = updateVec_6_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_388 = updateVec_6_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_6_credit = _updateStatus_T_387 | _updateStatus_T_388; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_426 = updateVec_7_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_427 = updateVec_7_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_robIdx_value = _updateStatus_T_426 | _updateStatus_T_427; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_444 = updateVec_7_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_445 = updateVec_7_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_7_credit = _updateStatus_T_444 | _updateStatus_T_445; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_483 = updateVec_8_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_484 = updateVec_8_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_robIdx_value = _updateStatus_T_483 | _updateStatus_T_484; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_501 = updateVec_8_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_502 = updateVec_8_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_8_credit = _updateStatus_T_501 | _updateStatus_T_502; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_540 = updateVec_9_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_541 = updateVec_9_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_robIdx_value = _updateStatus_T_540 | _updateStatus_T_541; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_558 = updateVec_9_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_559 = updateVec_9_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_9_credit = _updateStatus_T_558 | _updateStatus_T_559; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_597 = updateVec_10_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_598 = updateVec_10_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_robIdx_value = _updateStatus_T_597 | _updateStatus_T_598; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_615 = updateVec_10_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_616 = updateVec_10_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_10_credit = _updateStatus_T_615 | _updateStatus_T_616; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_654 = updateVec_11_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_655 = updateVec_11_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_robIdx_value = _updateStatus_T_654 | _updateStatus_T_655; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_672 = updateVec_11_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_673 = updateVec_11_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_11_credit = _updateStatus_T_672 | _updateStatus_T_673; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_711 = updateVec_12_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_712 = updateVec_12_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_robIdx_value = _updateStatus_T_711 | _updateStatus_T_712; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_729 = updateVec_12_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_730 = updateVec_12_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_12_credit = _updateStatus_T_729 | _updateStatus_T_730; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_768 = updateVec_13_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_769 = updateVec_13_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_robIdx_value = _updateStatus_T_768 | _updateStatus_T_769; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_786 = updateVec_13_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_787 = updateVec_13_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_13_credit = _updateStatus_T_786 | _updateStatus_T_787; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_825 = updateVec_14_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_826 = updateVec_14_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_robIdx_value = _updateStatus_T_825 | _updateStatus_T_826; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_843 = updateVec_14_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_844 = updateVec_14_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_14_credit = _updateStatus_T_843 | _updateStatus_T_844; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_882 = updateVec_15_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_883 = updateVec_15_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_robIdx_value = _updateStatus_T_882 | _updateStatus_T_883; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_900 = updateVec_15_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_901 = updateVec_15_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_15_credit = _updateStatus_T_900 | _updateStatus_T_901; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_939 = updateVec_16_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_940 = updateVec_16_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_16_robIdx_value = _updateStatus_T_939 | _updateStatus_T_940; // @[Mux.scala 27:73]
  wire  updateVal_16_robIdx_flag = updateVec_16_0 & io_update_0_data_robIdx_flag | updateVec_16_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_957 = updateVec_16_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_958 = updateVec_16_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_16_credit = _updateStatus_T_957 | _updateStatus_T_958; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_996 = updateVec_17_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_997 = updateVec_17_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_17_robIdx_value = _updateStatus_T_996 | _updateStatus_T_997; // @[Mux.scala 27:73]
  wire  updateVal_17_robIdx_flag = updateVec_17_0 & io_update_0_data_robIdx_flag | updateVec_17_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1014 = updateVec_17_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1015 = updateVec_17_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_17_credit = _updateStatus_T_1014 | _updateStatus_T_1015; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1053 = updateVec_18_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1054 = updateVec_18_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_18_robIdx_value = _updateStatus_T_1053 | _updateStatus_T_1054; // @[Mux.scala 27:73]
  wire  updateVal_18_robIdx_flag = updateVec_18_0 & io_update_0_data_robIdx_flag | updateVec_18_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1071 = updateVec_18_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1072 = updateVec_18_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_18_credit = _updateStatus_T_1071 | _updateStatus_T_1072; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1110 = updateVec_19_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1111 = updateVec_19_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_19_robIdx_value = _updateStatus_T_1110 | _updateStatus_T_1111; // @[Mux.scala 27:73]
  wire  updateVal_19_robIdx_flag = updateVec_19_0 & io_update_0_data_robIdx_flag | updateVec_19_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1128 = updateVec_19_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1129 = updateVec_19_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_19_credit = _updateStatus_T_1128 | _updateStatus_T_1129; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1167 = updateVec_20_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1168 = updateVec_20_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_20_robIdx_value = _updateStatus_T_1167 | _updateStatus_T_1168; // @[Mux.scala 27:73]
  wire  updateVal_20_robIdx_flag = updateVec_20_0 & io_update_0_data_robIdx_flag | updateVec_20_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1185 = updateVec_20_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1186 = updateVec_20_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_20_credit = _updateStatus_T_1185 | _updateStatus_T_1186; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1224 = updateVec_21_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1225 = updateVec_21_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_21_robIdx_value = _updateStatus_T_1224 | _updateStatus_T_1225; // @[Mux.scala 27:73]
  wire  updateVal_21_robIdx_flag = updateVec_21_0 & io_update_0_data_robIdx_flag | updateVec_21_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1242 = updateVec_21_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1243 = updateVec_21_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_21_credit = _updateStatus_T_1242 | _updateStatus_T_1243; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1281 = updateVec_22_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1282 = updateVec_22_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_22_robIdx_value = _updateStatus_T_1281 | _updateStatus_T_1282; // @[Mux.scala 27:73]
  wire  updateVal_22_robIdx_flag = updateVec_22_0 & io_update_0_data_robIdx_flag | updateVec_22_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1299 = updateVec_22_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1300 = updateVec_22_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_22_credit = _updateStatus_T_1299 | _updateStatus_T_1300; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1338 = updateVec_23_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1339 = updateVec_23_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_23_robIdx_value = _updateStatus_T_1338 | _updateStatus_T_1339; // @[Mux.scala 27:73]
  wire  updateVal_23_robIdx_flag = updateVec_23_0 & io_update_0_data_robIdx_flag | updateVec_23_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1356 = updateVec_23_0 ? io_update_0_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateStatus_T_1357 = updateVec_23_1 ? io_update_1_data_credit : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] updateVal_23_credit = _updateStatus_T_1356 | _updateStatus_T_1357; // @[Mux.scala 27:73]
  wire [3:0] _creditStep_T_2 = statusArray_0_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_587 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_594 = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_598 = _T_587 & _T_594 | _T_592; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0 = _T_585 & _T_598; // @[StatusArray.scala 134:33]
  wire  _T_602 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_613 = _T_602 & _T_594 | _T_607; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1 = _T_600 & _T_613; // @[StatusArray.scala 134:33]
  wire  _T_617 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_628 = _T_617 & _T_594 | _T_622; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2 = _T_615 & _T_628; // @[StatusArray.scala 134:33]
  wire  _T_632 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_643 = _T_632 & _T_594 | _T_637; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3 = _T_630 & _T_643; // @[StatusArray.scala 134:33]
  wire  _T_647 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_658 = _T_647 & _T_594 | _T_652; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4 = _T_645 & _T_658; // @[StatusArray.scala 134:33]
  wire  _T_662 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_673 = _T_662 & _T_594 | _T_667; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5 = _T_660 & _T_673; // @[StatusArray.scala 134:33]
  wire  _T_677 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_688 = _T_677 & _T_594 | _T_682; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6 = _T_675 & _T_688; // @[StatusArray.scala 134:33]
  wire  _T_692 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_703 = _T_692 & _T_594 | _T_697; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7 = _T_690 & _T_703; // @[StatusArray.scala 134:33]
  wire  _T_707 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_718 = _T_707 & _T_594 | _T_712; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8 = _T_705 & _T_718; // @[StatusArray.scala 134:33]
  wire  _T_722 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_733 = _T_722 & _T_594 | _T_727; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9 = _T_720 & _T_733; // @[StatusArray.scala 134:33]
  wire  _T_737 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_748 = _T_737 & _T_594 | _T_742; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10 = _T_735 & _T_748; // @[StatusArray.scala 134:33]
  wire  _T_752 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_763 = _T_752 & _T_594 | _T_757; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11 = _T_750 & _T_763; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo = {dataMatchVec_5,dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi = {dataMatchVec_11,dataMatchVec_10,dataMatchVec_9,dataMatchVec_8,dataMatchVec_7,dataMatchVec_6
    }; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_5 = statusArray_1_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_801 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_808 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_812 = _T_801 & _T_808 | _T_806; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_1 = _T_799 & _T_812; // @[StatusArray.scala 134:33]
  wire  _T_816 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_827 = _T_816 & _T_808 | _T_821; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_1 = _T_814 & _T_827; // @[StatusArray.scala 134:33]
  wire  _T_831 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_842 = _T_831 & _T_808 | _T_836; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_1 = _T_829 & _T_842; // @[StatusArray.scala 134:33]
  wire  _T_846 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_857 = _T_846 & _T_808 | _T_851; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_1 = _T_844 & _T_857; // @[StatusArray.scala 134:33]
  wire  _T_861 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_872 = _T_861 & _T_808 | _T_866; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_1 = _T_859 & _T_872; // @[StatusArray.scala 134:33]
  wire  _T_876 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_887 = _T_876 & _T_808 | _T_881; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_1 = _T_874 & _T_887; // @[StatusArray.scala 134:33]
  wire  _T_891 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_902 = _T_891 & _T_808 | _T_896; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_1 = _T_889 & _T_902; // @[StatusArray.scala 134:33]
  wire  _T_906 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_917 = _T_906 & _T_808 | _T_911; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_1 = _T_904 & _T_917; // @[StatusArray.scala 134:33]
  wire  _T_921 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_932 = _T_921 & _T_808 | _T_926; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_1 = _T_919 & _T_932; // @[StatusArray.scala 134:33]
  wire  _T_936 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_947 = _T_936 & _T_808 | _T_941; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_1 = _T_934 & _T_947; // @[StatusArray.scala 134:33]
  wire  _T_951 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_962 = _T_951 & _T_808 | _T_956; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_1 = _T_949 & _T_962; // @[StatusArray.scala 134:33]
  wire  _T_966 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_977 = _T_966 & _T_808 | _T_971; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_1 = _T_964 & _T_977; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_1 = {dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,
    dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_1 = {dataMatchVec_11_1,dataMatchVec_10_1,dataMatchVec_9_1,dataMatchVec_8_1,dataMatchVec_7_1,
    dataMatchVec_6_1}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_8 = statusArray_2_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1015 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1022 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1026 = _T_1015 & _T_1022 | _T_1020; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_2 = _T_1013 & _T_1026; // @[StatusArray.scala 134:33]
  wire  _T_1030 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1041 = _T_1030 & _T_1022 | _T_1035; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_2 = _T_1028 & _T_1041; // @[StatusArray.scala 134:33]
  wire  _T_1045 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1056 = _T_1045 & _T_1022 | _T_1050; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_2 = _T_1043 & _T_1056; // @[StatusArray.scala 134:33]
  wire  _T_1060 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1071 = _T_1060 & _T_1022 | _T_1065; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_2 = _T_1058 & _T_1071; // @[StatusArray.scala 134:33]
  wire  _T_1075 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1086 = _T_1075 & _T_1022 | _T_1080; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_2 = _T_1073 & _T_1086; // @[StatusArray.scala 134:33]
  wire  _T_1090 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1101 = _T_1090 & _T_1022 | _T_1095; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_2 = _T_1088 & _T_1101; // @[StatusArray.scala 134:33]
  wire  _T_1105 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1116 = _T_1105 & _T_1022 | _T_1110; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_2 = _T_1103 & _T_1116; // @[StatusArray.scala 134:33]
  wire  _T_1120 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1131 = _T_1120 & _T_1022 | _T_1125; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_2 = _T_1118 & _T_1131; // @[StatusArray.scala 134:33]
  wire  _T_1135 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1146 = _T_1135 & _T_1022 | _T_1140; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_2 = _T_1133 & _T_1146; // @[StatusArray.scala 134:33]
  wire  _T_1150 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1161 = _T_1150 & _T_1022 | _T_1155; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_2 = _T_1148 & _T_1161; // @[StatusArray.scala 134:33]
  wire  _T_1165 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1176 = _T_1165 & _T_1022 | _T_1170; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_2 = _T_1163 & _T_1176; // @[StatusArray.scala 134:33]
  wire  _T_1180 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1191 = _T_1180 & _T_1022 | _T_1185; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_2 = _T_1178 & _T_1191; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_2 = {dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,
    dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_2 = {dataMatchVec_11_2,dataMatchVec_10_2,dataMatchVec_9_2,dataMatchVec_8_2,dataMatchVec_7_2,
    dataMatchVec_6_2}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_11 = statusArray_3_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1229 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1236 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1240 = _T_1229 & _T_1236 | _T_1234; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_3 = _T_1227 & _T_1240; // @[StatusArray.scala 134:33]
  wire  _T_1244 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1255 = _T_1244 & _T_1236 | _T_1249; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_3 = _T_1242 & _T_1255; // @[StatusArray.scala 134:33]
  wire  _T_1259 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1270 = _T_1259 & _T_1236 | _T_1264; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_3 = _T_1257 & _T_1270; // @[StatusArray.scala 134:33]
  wire  _T_1274 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1285 = _T_1274 & _T_1236 | _T_1279; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_3 = _T_1272 & _T_1285; // @[StatusArray.scala 134:33]
  wire  _T_1289 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1300 = _T_1289 & _T_1236 | _T_1294; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_3 = _T_1287 & _T_1300; // @[StatusArray.scala 134:33]
  wire  _T_1304 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1315 = _T_1304 & _T_1236 | _T_1309; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_3 = _T_1302 & _T_1315; // @[StatusArray.scala 134:33]
  wire  _T_1319 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1330 = _T_1319 & _T_1236 | _T_1324; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_3 = _T_1317 & _T_1330; // @[StatusArray.scala 134:33]
  wire  _T_1334 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1345 = _T_1334 & _T_1236 | _T_1339; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_3 = _T_1332 & _T_1345; // @[StatusArray.scala 134:33]
  wire  _T_1349 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1360 = _T_1349 & _T_1236 | _T_1354; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_3 = _T_1347 & _T_1360; // @[StatusArray.scala 134:33]
  wire  _T_1364 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1375 = _T_1364 & _T_1236 | _T_1369; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_3 = _T_1362 & _T_1375; // @[StatusArray.scala 134:33]
  wire  _T_1379 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1390 = _T_1379 & _T_1236 | _T_1384; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_3 = _T_1377 & _T_1390; // @[StatusArray.scala 134:33]
  wire  _T_1394 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1405 = _T_1394 & _T_1236 | _T_1399; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_3 = _T_1392 & _T_1405; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_3 = {dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,
    dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_3 = {dataMatchVec_11_3,dataMatchVec_10_3,dataMatchVec_9_3,dataMatchVec_8_3,dataMatchVec_7_3,
    dataMatchVec_6_3}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_14 = statusArray_4_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1443 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1450 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1454 = _T_1443 & _T_1450 | _T_1448; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_4 = _T_1441 & _T_1454; // @[StatusArray.scala 134:33]
  wire  _T_1458 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1469 = _T_1458 & _T_1450 | _T_1463; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_4 = _T_1456 & _T_1469; // @[StatusArray.scala 134:33]
  wire  _T_1473 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1484 = _T_1473 & _T_1450 | _T_1478; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_4 = _T_1471 & _T_1484; // @[StatusArray.scala 134:33]
  wire  _T_1488 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1499 = _T_1488 & _T_1450 | _T_1493; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_4 = _T_1486 & _T_1499; // @[StatusArray.scala 134:33]
  wire  _T_1503 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1514 = _T_1503 & _T_1450 | _T_1508; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_4 = _T_1501 & _T_1514; // @[StatusArray.scala 134:33]
  wire  _T_1518 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1529 = _T_1518 & _T_1450 | _T_1523; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_4 = _T_1516 & _T_1529; // @[StatusArray.scala 134:33]
  wire  _T_1533 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1544 = _T_1533 & _T_1450 | _T_1538; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_4 = _T_1531 & _T_1544; // @[StatusArray.scala 134:33]
  wire  _T_1548 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1559 = _T_1548 & _T_1450 | _T_1553; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_4 = _T_1546 & _T_1559; // @[StatusArray.scala 134:33]
  wire  _T_1563 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1574 = _T_1563 & _T_1450 | _T_1568; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_4 = _T_1561 & _T_1574; // @[StatusArray.scala 134:33]
  wire  _T_1578 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1589 = _T_1578 & _T_1450 | _T_1583; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_4 = _T_1576 & _T_1589; // @[StatusArray.scala 134:33]
  wire  _T_1593 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1604 = _T_1593 & _T_1450 | _T_1598; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_4 = _T_1591 & _T_1604; // @[StatusArray.scala 134:33]
  wire  _T_1608 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1619 = _T_1608 & _T_1450 | _T_1613; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_4 = _T_1606 & _T_1619; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_4 = {dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,
    dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_4 = {dataMatchVec_11_4,dataMatchVec_10_4,dataMatchVec_9_4,dataMatchVec_8_4,dataMatchVec_7_4,
    dataMatchVec_6_4}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_17 = statusArray_5_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1657 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1664 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1668 = _T_1657 & _T_1664 | _T_1662; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_5 = _T_1655 & _T_1668; // @[StatusArray.scala 134:33]
  wire  _T_1672 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1683 = _T_1672 & _T_1664 | _T_1677; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_5 = _T_1670 & _T_1683; // @[StatusArray.scala 134:33]
  wire  _T_1687 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1698 = _T_1687 & _T_1664 | _T_1692; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_5 = _T_1685 & _T_1698; // @[StatusArray.scala 134:33]
  wire  _T_1702 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1713 = _T_1702 & _T_1664 | _T_1707; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_5 = _T_1700 & _T_1713; // @[StatusArray.scala 134:33]
  wire  _T_1717 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1728 = _T_1717 & _T_1664 | _T_1722; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_5 = _T_1715 & _T_1728; // @[StatusArray.scala 134:33]
  wire  _T_1732 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1743 = _T_1732 & _T_1664 | _T_1737; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_5 = _T_1730 & _T_1743; // @[StatusArray.scala 134:33]
  wire  _T_1747 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1758 = _T_1747 & _T_1664 | _T_1752; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_5 = _T_1745 & _T_1758; // @[StatusArray.scala 134:33]
  wire  _T_1762 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1773 = _T_1762 & _T_1664 | _T_1767; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_5 = _T_1760 & _T_1773; // @[StatusArray.scala 134:33]
  wire  _T_1777 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1788 = _T_1777 & _T_1664 | _T_1782; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_5 = _T_1775 & _T_1788; // @[StatusArray.scala 134:33]
  wire  _T_1792 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1803 = _T_1792 & _T_1664 | _T_1797; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_5 = _T_1790 & _T_1803; // @[StatusArray.scala 134:33]
  wire  _T_1807 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1818 = _T_1807 & _T_1664 | _T_1812; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_5 = _T_1805 & _T_1818; // @[StatusArray.scala 134:33]
  wire  _T_1822 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1833 = _T_1822 & _T_1664 | _T_1827; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_5 = _T_1820 & _T_1833; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_5 = {dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,
    dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_5 = {dataMatchVec_11_5,dataMatchVec_10_5,dataMatchVec_9_5,dataMatchVec_8_5,dataMatchVec_7_5,
    dataMatchVec_6_5}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_20 = statusArray_6_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1871 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1878 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1882 = _T_1871 & _T_1878 | _T_1876; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_6 = _T_1869 & _T_1882; // @[StatusArray.scala 134:33]
  wire  _T_1886 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1897 = _T_1886 & _T_1878 | _T_1891; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_6 = _T_1884 & _T_1897; // @[StatusArray.scala 134:33]
  wire  _T_1901 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1912 = _T_1901 & _T_1878 | _T_1906; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_6 = _T_1899 & _T_1912; // @[StatusArray.scala 134:33]
  wire  _T_1916 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1927 = _T_1916 & _T_1878 | _T_1921; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_6 = _T_1914 & _T_1927; // @[StatusArray.scala 134:33]
  wire  _T_1931 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1942 = _T_1931 & _T_1878 | _T_1936; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_6 = _T_1929 & _T_1942; // @[StatusArray.scala 134:33]
  wire  _T_1946 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1957 = _T_1946 & _T_1878 | _T_1951; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_6 = _T_1944 & _T_1957; // @[StatusArray.scala 134:33]
  wire  _T_1961 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1972 = _T_1961 & _T_1878 | _T_1966; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_6 = _T_1959 & _T_1972; // @[StatusArray.scala 134:33]
  wire  _T_1976 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1987 = _T_1976 & _T_1878 | _T_1981; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_6 = _T_1974 & _T_1987; // @[StatusArray.scala 134:33]
  wire  _T_1991 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2002 = _T_1991 & _T_1878 | _T_1996; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_6 = _T_1989 & _T_2002; // @[StatusArray.scala 134:33]
  wire  _T_2006 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2017 = _T_2006 & _T_1878 | _T_2011; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_6 = _T_2004 & _T_2017; // @[StatusArray.scala 134:33]
  wire  _T_2021 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2032 = _T_2021 & _T_1878 | _T_2026; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_6 = _T_2019 & _T_2032; // @[StatusArray.scala 134:33]
  wire  _T_2036 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2047 = _T_2036 & _T_1878 | _T_2041; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_6 = _T_2034 & _T_2047; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_6 = {dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,
    dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_6 = {dataMatchVec_11_6,dataMatchVec_10_6,dataMatchVec_9_6,dataMatchVec_8_6,dataMatchVec_7_6,
    dataMatchVec_6_6}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_23 = statusArray_7_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2085 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2092 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2096 = _T_2085 & _T_2092 | _T_2090; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_7 = _T_2083 & _T_2096; // @[StatusArray.scala 134:33]
  wire  _T_2100 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2111 = _T_2100 & _T_2092 | _T_2105; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_7 = _T_2098 & _T_2111; // @[StatusArray.scala 134:33]
  wire  _T_2115 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2126 = _T_2115 & _T_2092 | _T_2120; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_7 = _T_2113 & _T_2126; // @[StatusArray.scala 134:33]
  wire  _T_2130 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2141 = _T_2130 & _T_2092 | _T_2135; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_7 = _T_2128 & _T_2141; // @[StatusArray.scala 134:33]
  wire  _T_2145 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2156 = _T_2145 & _T_2092 | _T_2150; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_7 = _T_2143 & _T_2156; // @[StatusArray.scala 134:33]
  wire  _T_2160 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2171 = _T_2160 & _T_2092 | _T_2165; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_7 = _T_2158 & _T_2171; // @[StatusArray.scala 134:33]
  wire  _T_2175 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2186 = _T_2175 & _T_2092 | _T_2180; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_7 = _T_2173 & _T_2186; // @[StatusArray.scala 134:33]
  wire  _T_2190 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2201 = _T_2190 & _T_2092 | _T_2195; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_7 = _T_2188 & _T_2201; // @[StatusArray.scala 134:33]
  wire  _T_2205 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2216 = _T_2205 & _T_2092 | _T_2210; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_7 = _T_2203 & _T_2216; // @[StatusArray.scala 134:33]
  wire  _T_2220 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2231 = _T_2220 & _T_2092 | _T_2225; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_7 = _T_2218 & _T_2231; // @[StatusArray.scala 134:33]
  wire  _T_2235 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2246 = _T_2235 & _T_2092 | _T_2240; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_7 = _T_2233 & _T_2246; // @[StatusArray.scala 134:33]
  wire  _T_2250 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2261 = _T_2250 & _T_2092 | _T_2255; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_7 = _T_2248 & _T_2261; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_7 = {dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,
    dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_7 = {dataMatchVec_11_7,dataMatchVec_10_7,dataMatchVec_9_7,dataMatchVec_8_7,dataMatchVec_7_7,
    dataMatchVec_6_7}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_26 = statusArray_8_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2299 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2306 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2310 = _T_2299 & _T_2306 | _T_2304; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_8 = _T_2297 & _T_2310; // @[StatusArray.scala 134:33]
  wire  _T_2314 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2325 = _T_2314 & _T_2306 | _T_2319; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_8 = _T_2312 & _T_2325; // @[StatusArray.scala 134:33]
  wire  _T_2329 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2340 = _T_2329 & _T_2306 | _T_2334; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_8 = _T_2327 & _T_2340; // @[StatusArray.scala 134:33]
  wire  _T_2344 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2355 = _T_2344 & _T_2306 | _T_2349; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_8 = _T_2342 & _T_2355; // @[StatusArray.scala 134:33]
  wire  _T_2359 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2370 = _T_2359 & _T_2306 | _T_2364; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_8 = _T_2357 & _T_2370; // @[StatusArray.scala 134:33]
  wire  _T_2374 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2385 = _T_2374 & _T_2306 | _T_2379; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_8 = _T_2372 & _T_2385; // @[StatusArray.scala 134:33]
  wire  _T_2389 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2400 = _T_2389 & _T_2306 | _T_2394; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_8 = _T_2387 & _T_2400; // @[StatusArray.scala 134:33]
  wire  _T_2404 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2415 = _T_2404 & _T_2306 | _T_2409; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_8 = _T_2402 & _T_2415; // @[StatusArray.scala 134:33]
  wire  _T_2419 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2430 = _T_2419 & _T_2306 | _T_2424; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_8 = _T_2417 & _T_2430; // @[StatusArray.scala 134:33]
  wire  _T_2434 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2445 = _T_2434 & _T_2306 | _T_2439; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_8 = _T_2432 & _T_2445; // @[StatusArray.scala 134:33]
  wire  _T_2449 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2460 = _T_2449 & _T_2306 | _T_2454; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_8 = _T_2447 & _T_2460; // @[StatusArray.scala 134:33]
  wire  _T_2464 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2475 = _T_2464 & _T_2306 | _T_2469; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_8 = _T_2462 & _T_2475; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_8 = {dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,
    dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_8 = {dataMatchVec_11_8,dataMatchVec_10_8,dataMatchVec_9_8,dataMatchVec_8_8,dataMatchVec_7_8,
    dataMatchVec_6_8}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_29 = statusArray_9_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2513 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2520 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2524 = _T_2513 & _T_2520 | _T_2518; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_9 = _T_2511 & _T_2524; // @[StatusArray.scala 134:33]
  wire  _T_2528 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2539 = _T_2528 & _T_2520 | _T_2533; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_9 = _T_2526 & _T_2539; // @[StatusArray.scala 134:33]
  wire  _T_2543 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2554 = _T_2543 & _T_2520 | _T_2548; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_9 = _T_2541 & _T_2554; // @[StatusArray.scala 134:33]
  wire  _T_2558 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2569 = _T_2558 & _T_2520 | _T_2563; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_9 = _T_2556 & _T_2569; // @[StatusArray.scala 134:33]
  wire  _T_2573 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2584 = _T_2573 & _T_2520 | _T_2578; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_9 = _T_2571 & _T_2584; // @[StatusArray.scala 134:33]
  wire  _T_2588 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2599 = _T_2588 & _T_2520 | _T_2593; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_9 = _T_2586 & _T_2599; // @[StatusArray.scala 134:33]
  wire  _T_2603 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2614 = _T_2603 & _T_2520 | _T_2608; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_9 = _T_2601 & _T_2614; // @[StatusArray.scala 134:33]
  wire  _T_2618 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2629 = _T_2618 & _T_2520 | _T_2623; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_9 = _T_2616 & _T_2629; // @[StatusArray.scala 134:33]
  wire  _T_2633 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2644 = _T_2633 & _T_2520 | _T_2638; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_9 = _T_2631 & _T_2644; // @[StatusArray.scala 134:33]
  wire  _T_2648 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2659 = _T_2648 & _T_2520 | _T_2653; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_9 = _T_2646 & _T_2659; // @[StatusArray.scala 134:33]
  wire  _T_2663 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2674 = _T_2663 & _T_2520 | _T_2668; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_9 = _T_2661 & _T_2674; // @[StatusArray.scala 134:33]
  wire  _T_2678 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2689 = _T_2678 & _T_2520 | _T_2683; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_9 = _T_2676 & _T_2689; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_9 = {dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,
    dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_9 = {dataMatchVec_11_9,dataMatchVec_10_9,dataMatchVec_9_9,dataMatchVec_8_9,dataMatchVec_7_9,
    dataMatchVec_6_9}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_32 = statusArray_10_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2727 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2734 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2738 = _T_2727 & _T_2734 | _T_2732; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_10 = _T_2725 & _T_2738; // @[StatusArray.scala 134:33]
  wire  _T_2742 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2753 = _T_2742 & _T_2734 | _T_2747; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_10 = _T_2740 & _T_2753; // @[StatusArray.scala 134:33]
  wire  _T_2757 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2768 = _T_2757 & _T_2734 | _T_2762; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_10 = _T_2755 & _T_2768; // @[StatusArray.scala 134:33]
  wire  _T_2772 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2783 = _T_2772 & _T_2734 | _T_2777; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_10 = _T_2770 & _T_2783; // @[StatusArray.scala 134:33]
  wire  _T_2787 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2798 = _T_2787 & _T_2734 | _T_2792; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_10 = _T_2785 & _T_2798; // @[StatusArray.scala 134:33]
  wire  _T_2802 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2813 = _T_2802 & _T_2734 | _T_2807; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_10 = _T_2800 & _T_2813; // @[StatusArray.scala 134:33]
  wire  _T_2817 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2828 = _T_2817 & _T_2734 | _T_2822; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_10 = _T_2815 & _T_2828; // @[StatusArray.scala 134:33]
  wire  _T_2832 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2843 = _T_2832 & _T_2734 | _T_2837; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_10 = _T_2830 & _T_2843; // @[StatusArray.scala 134:33]
  wire  _T_2847 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2858 = _T_2847 & _T_2734 | _T_2852; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_10 = _T_2845 & _T_2858; // @[StatusArray.scala 134:33]
  wire  _T_2862 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2873 = _T_2862 & _T_2734 | _T_2867; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_10 = _T_2860 & _T_2873; // @[StatusArray.scala 134:33]
  wire  _T_2877 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2888 = _T_2877 & _T_2734 | _T_2882; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_10 = _T_2875 & _T_2888; // @[StatusArray.scala 134:33]
  wire  _T_2892 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2903 = _T_2892 & _T_2734 | _T_2897; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_10 = _T_2890 & _T_2903; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_10 = {dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,
    dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_10 = {dataMatchVec_11_10,dataMatchVec_10_10,dataMatchVec_9_10,dataMatchVec_8_10,
    dataMatchVec_7_10,dataMatchVec_6_10}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_35 = statusArray_11_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2941 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2948 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2952 = _T_2941 & _T_2948 | _T_2946; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_11 = _T_2939 & _T_2952; // @[StatusArray.scala 134:33]
  wire  _T_2956 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2967 = _T_2956 & _T_2948 | _T_2961; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_11 = _T_2954 & _T_2967; // @[StatusArray.scala 134:33]
  wire  _T_2971 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2982 = _T_2971 & _T_2948 | _T_2976; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_11 = _T_2969 & _T_2982; // @[StatusArray.scala 134:33]
  wire  _T_2986 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2997 = _T_2986 & _T_2948 | _T_2991; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_11 = _T_2984 & _T_2997; // @[StatusArray.scala 134:33]
  wire  _T_3001 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3012 = _T_3001 & _T_2948 | _T_3006; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_11 = _T_2999 & _T_3012; // @[StatusArray.scala 134:33]
  wire  _T_3016 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3027 = _T_3016 & _T_2948 | _T_3021; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_11 = _T_3014 & _T_3027; // @[StatusArray.scala 134:33]
  wire  _T_3031 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3042 = _T_3031 & _T_2948 | _T_3036; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_11 = _T_3029 & _T_3042; // @[StatusArray.scala 134:33]
  wire  _T_3046 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3057 = _T_3046 & _T_2948 | _T_3051; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_11 = _T_3044 & _T_3057; // @[StatusArray.scala 134:33]
  wire  _T_3061 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3072 = _T_3061 & _T_2948 | _T_3066; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_11 = _T_3059 & _T_3072; // @[StatusArray.scala 134:33]
  wire  _T_3076 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3087 = _T_3076 & _T_2948 | _T_3081; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_11 = _T_3074 & _T_3087; // @[StatusArray.scala 134:33]
  wire  _T_3091 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3102 = _T_3091 & _T_2948 | _T_3096; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_11 = _T_3089 & _T_3102; // @[StatusArray.scala 134:33]
  wire  _T_3106 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3117 = _T_3106 & _T_2948 | _T_3111; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_11 = _T_3104 & _T_3117; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_11 = {dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,
    dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_11 = {dataMatchVec_11_11,dataMatchVec_10_11,dataMatchVec_9_11,dataMatchVec_8_11,
    dataMatchVec_7_11,dataMatchVec_6_11}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_38 = statusArray_12_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3155 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3162 = statusArrayNext_12_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3166 = _T_3155 & _T_3162 | _T_3160; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_12 = _T_3153 & _T_3166; // @[StatusArray.scala 134:33]
  wire  _T_3170 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3181 = _T_3170 & _T_3162 | _T_3175; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_12 = _T_3168 & _T_3181; // @[StatusArray.scala 134:33]
  wire  _T_3185 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3196 = _T_3185 & _T_3162 | _T_3190; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_12 = _T_3183 & _T_3196; // @[StatusArray.scala 134:33]
  wire  _T_3200 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3211 = _T_3200 & _T_3162 | _T_3205; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_12 = _T_3198 & _T_3211; // @[StatusArray.scala 134:33]
  wire  _T_3215 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3226 = _T_3215 & _T_3162 | _T_3220; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_12 = _T_3213 & _T_3226; // @[StatusArray.scala 134:33]
  wire  _T_3230 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3241 = _T_3230 & _T_3162 | _T_3235; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_12 = _T_3228 & _T_3241; // @[StatusArray.scala 134:33]
  wire  _T_3245 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3256 = _T_3245 & _T_3162 | _T_3250; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_12 = _T_3243 & _T_3256; // @[StatusArray.scala 134:33]
  wire  _T_3260 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3271 = _T_3260 & _T_3162 | _T_3265; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_12 = _T_3258 & _T_3271; // @[StatusArray.scala 134:33]
  wire  _T_3275 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3286 = _T_3275 & _T_3162 | _T_3280; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_12 = _T_3273 & _T_3286; // @[StatusArray.scala 134:33]
  wire  _T_3290 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3301 = _T_3290 & _T_3162 | _T_3295; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_12 = _T_3288 & _T_3301; // @[StatusArray.scala 134:33]
  wire  _T_3305 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3316 = _T_3305 & _T_3162 | _T_3310; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_12 = _T_3303 & _T_3316; // @[StatusArray.scala 134:33]
  wire  _T_3320 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3331 = _T_3320 & _T_3162 | _T_3325; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_12 = _T_3318 & _T_3331; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_12 = {dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,
    dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_12 = {dataMatchVec_11_12,dataMatchVec_10_12,dataMatchVec_9_12,dataMatchVec_8_12,
    dataMatchVec_7_12,dataMatchVec_6_12}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_41 = statusArray_13_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3369 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3376 = statusArrayNext_13_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3380 = _T_3369 & _T_3376 | _T_3374; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_13 = _T_3367 & _T_3380; // @[StatusArray.scala 134:33]
  wire  _T_3384 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3395 = _T_3384 & _T_3376 | _T_3389; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_13 = _T_3382 & _T_3395; // @[StatusArray.scala 134:33]
  wire  _T_3399 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3410 = _T_3399 & _T_3376 | _T_3404; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_13 = _T_3397 & _T_3410; // @[StatusArray.scala 134:33]
  wire  _T_3414 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3425 = _T_3414 & _T_3376 | _T_3419; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_13 = _T_3412 & _T_3425; // @[StatusArray.scala 134:33]
  wire  _T_3429 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3440 = _T_3429 & _T_3376 | _T_3434; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_13 = _T_3427 & _T_3440; // @[StatusArray.scala 134:33]
  wire  _T_3444 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3455 = _T_3444 & _T_3376 | _T_3449; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_13 = _T_3442 & _T_3455; // @[StatusArray.scala 134:33]
  wire  _T_3459 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3470 = _T_3459 & _T_3376 | _T_3464; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_13 = _T_3457 & _T_3470; // @[StatusArray.scala 134:33]
  wire  _T_3474 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3485 = _T_3474 & _T_3376 | _T_3479; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_13 = _T_3472 & _T_3485; // @[StatusArray.scala 134:33]
  wire  _T_3489 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3500 = _T_3489 & _T_3376 | _T_3494; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_13 = _T_3487 & _T_3500; // @[StatusArray.scala 134:33]
  wire  _T_3504 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3515 = _T_3504 & _T_3376 | _T_3509; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_13 = _T_3502 & _T_3515; // @[StatusArray.scala 134:33]
  wire  _T_3519 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3530 = _T_3519 & _T_3376 | _T_3524; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_13 = _T_3517 & _T_3530; // @[StatusArray.scala 134:33]
  wire  _T_3534 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3545 = _T_3534 & _T_3376 | _T_3539; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_13 = _T_3532 & _T_3545; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_13 = {dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,
    dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_13 = {dataMatchVec_11_13,dataMatchVec_10_13,dataMatchVec_9_13,dataMatchVec_8_13,
    dataMatchVec_7_13,dataMatchVec_6_13}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_44 = statusArray_14_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3583 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3590 = statusArrayNext_14_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3594 = _T_3583 & _T_3590 | _T_3588; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_14 = _T_3581 & _T_3594; // @[StatusArray.scala 134:33]
  wire  _T_3598 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3609 = _T_3598 & _T_3590 | _T_3603; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_14 = _T_3596 & _T_3609; // @[StatusArray.scala 134:33]
  wire  _T_3613 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3624 = _T_3613 & _T_3590 | _T_3618; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_14 = _T_3611 & _T_3624; // @[StatusArray.scala 134:33]
  wire  _T_3628 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3639 = _T_3628 & _T_3590 | _T_3633; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_14 = _T_3626 & _T_3639; // @[StatusArray.scala 134:33]
  wire  _T_3643 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3654 = _T_3643 & _T_3590 | _T_3648; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_14 = _T_3641 & _T_3654; // @[StatusArray.scala 134:33]
  wire  _T_3658 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3669 = _T_3658 & _T_3590 | _T_3663; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_14 = _T_3656 & _T_3669; // @[StatusArray.scala 134:33]
  wire  _T_3673 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3684 = _T_3673 & _T_3590 | _T_3678; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_14 = _T_3671 & _T_3684; // @[StatusArray.scala 134:33]
  wire  _T_3688 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3699 = _T_3688 & _T_3590 | _T_3693; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_14 = _T_3686 & _T_3699; // @[StatusArray.scala 134:33]
  wire  _T_3703 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3714 = _T_3703 & _T_3590 | _T_3708; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_14 = _T_3701 & _T_3714; // @[StatusArray.scala 134:33]
  wire  _T_3718 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3729 = _T_3718 & _T_3590 | _T_3723; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_14 = _T_3716 & _T_3729; // @[StatusArray.scala 134:33]
  wire  _T_3733 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3744 = _T_3733 & _T_3590 | _T_3738; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_14 = _T_3731 & _T_3744; // @[StatusArray.scala 134:33]
  wire  _T_3748 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3759 = _T_3748 & _T_3590 | _T_3753; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_14 = _T_3746 & _T_3759; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_14 = {dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,
    dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_14 = {dataMatchVec_11_14,dataMatchVec_10_14,dataMatchVec_9_14,dataMatchVec_8_14,
    dataMatchVec_7_14,dataMatchVec_6_14}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_47 = statusArray_15_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3797 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3804 = statusArrayNext_15_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3808 = _T_3797 & _T_3804 | _T_3802; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_15 = _T_3795 & _T_3808; // @[StatusArray.scala 134:33]
  wire  _T_3812 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3823 = _T_3812 & _T_3804 | _T_3817; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_15 = _T_3810 & _T_3823; // @[StatusArray.scala 134:33]
  wire  _T_3827 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3838 = _T_3827 & _T_3804 | _T_3832; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_15 = _T_3825 & _T_3838; // @[StatusArray.scala 134:33]
  wire  _T_3842 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3853 = _T_3842 & _T_3804 | _T_3847; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_15 = _T_3840 & _T_3853; // @[StatusArray.scala 134:33]
  wire  _T_3857 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3868 = _T_3857 & _T_3804 | _T_3862; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_15 = _T_3855 & _T_3868; // @[StatusArray.scala 134:33]
  wire  _T_3872 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3883 = _T_3872 & _T_3804 | _T_3877; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_15 = _T_3870 & _T_3883; // @[StatusArray.scala 134:33]
  wire  _T_3887 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3898 = _T_3887 & _T_3804 | _T_3892; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_15 = _T_3885 & _T_3898; // @[StatusArray.scala 134:33]
  wire  _T_3902 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3913 = _T_3902 & _T_3804 | _T_3907; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_15 = _T_3900 & _T_3913; // @[StatusArray.scala 134:33]
  wire  _T_3917 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3928 = _T_3917 & _T_3804 | _T_3922; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_15 = _T_3915 & _T_3928; // @[StatusArray.scala 134:33]
  wire  _T_3932 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3943 = _T_3932 & _T_3804 | _T_3937; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_15 = _T_3930 & _T_3943; // @[StatusArray.scala 134:33]
  wire  _T_3947 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3958 = _T_3947 & _T_3804 | _T_3952; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_15 = _T_3945 & _T_3958; // @[StatusArray.scala 134:33]
  wire  _T_3962 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3973 = _T_3962 & _T_3804 | _T_3967; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_15 = _T_3960 & _T_3973; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_15 = {dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,
    dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_15 = {dataMatchVec_11_15,dataMatchVec_10_15,dataMatchVec_9_15,dataMatchVec_8_15,
    dataMatchVec_7_15,dataMatchVec_6_15}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_50 = statusArray_16_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4011 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4018 = statusArrayNext_16_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4022 = _T_4011 & _T_4018 | _T_4016; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_16 = _T_4009 & _T_4022; // @[StatusArray.scala 134:33]
  wire  _T_4026 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4037 = _T_4026 & _T_4018 | _T_4031; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_16 = _T_4024 & _T_4037; // @[StatusArray.scala 134:33]
  wire  _T_4041 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4052 = _T_4041 & _T_4018 | _T_4046; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_16 = _T_4039 & _T_4052; // @[StatusArray.scala 134:33]
  wire  _T_4056 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4067 = _T_4056 & _T_4018 | _T_4061; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_16 = _T_4054 & _T_4067; // @[StatusArray.scala 134:33]
  wire  _T_4071 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4082 = _T_4071 & _T_4018 | _T_4076; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_16 = _T_4069 & _T_4082; // @[StatusArray.scala 134:33]
  wire  _T_4086 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4097 = _T_4086 & _T_4018 | _T_4091; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_16 = _T_4084 & _T_4097; // @[StatusArray.scala 134:33]
  wire  _T_4101 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4112 = _T_4101 & _T_4018 | _T_4106; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_16 = _T_4099 & _T_4112; // @[StatusArray.scala 134:33]
  wire  _T_4116 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4127 = _T_4116 & _T_4018 | _T_4121; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_16 = _T_4114 & _T_4127; // @[StatusArray.scala 134:33]
  wire  _T_4131 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4142 = _T_4131 & _T_4018 | _T_4136; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_16 = _T_4129 & _T_4142; // @[StatusArray.scala 134:33]
  wire  _T_4146 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4157 = _T_4146 & _T_4018 | _T_4151; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_16 = _T_4144 & _T_4157; // @[StatusArray.scala 134:33]
  wire  _T_4161 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4172 = _T_4161 & _T_4018 | _T_4166; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_16 = _T_4159 & _T_4172; // @[StatusArray.scala 134:33]
  wire  _T_4176 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4187 = _T_4176 & _T_4018 | _T_4181; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_16 = _T_4174 & _T_4187; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_16 = {dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16,dataMatchVec_2_16,
    dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_16 = {dataMatchVec_11_16,dataMatchVec_10_16,dataMatchVec_9_16,dataMatchVec_8_16,
    dataMatchVec_7_16,dataMatchVec_6_16}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_53 = statusArray_17_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4225 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4232 = statusArrayNext_17_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4236 = _T_4225 & _T_4232 | _T_4230; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_17 = _T_4223 & _T_4236; // @[StatusArray.scala 134:33]
  wire  _T_4240 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4251 = _T_4240 & _T_4232 | _T_4245; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_17 = _T_4238 & _T_4251; // @[StatusArray.scala 134:33]
  wire  _T_4255 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4266 = _T_4255 & _T_4232 | _T_4260; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_17 = _T_4253 & _T_4266; // @[StatusArray.scala 134:33]
  wire  _T_4270 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4281 = _T_4270 & _T_4232 | _T_4275; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_17 = _T_4268 & _T_4281; // @[StatusArray.scala 134:33]
  wire  _T_4285 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4296 = _T_4285 & _T_4232 | _T_4290; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_17 = _T_4283 & _T_4296; // @[StatusArray.scala 134:33]
  wire  _T_4300 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4311 = _T_4300 & _T_4232 | _T_4305; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_17 = _T_4298 & _T_4311; // @[StatusArray.scala 134:33]
  wire  _T_4315 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4326 = _T_4315 & _T_4232 | _T_4320; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_17 = _T_4313 & _T_4326; // @[StatusArray.scala 134:33]
  wire  _T_4330 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4341 = _T_4330 & _T_4232 | _T_4335; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_17 = _T_4328 & _T_4341; // @[StatusArray.scala 134:33]
  wire  _T_4345 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4356 = _T_4345 & _T_4232 | _T_4350; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_17 = _T_4343 & _T_4356; // @[StatusArray.scala 134:33]
  wire  _T_4360 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4371 = _T_4360 & _T_4232 | _T_4365; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_17 = _T_4358 & _T_4371; // @[StatusArray.scala 134:33]
  wire  _T_4375 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4386 = _T_4375 & _T_4232 | _T_4380; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_17 = _T_4373 & _T_4386; // @[StatusArray.scala 134:33]
  wire  _T_4390 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4401 = _T_4390 & _T_4232 | _T_4395; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_17 = _T_4388 & _T_4401; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_17 = {dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17,dataMatchVec_2_17,
    dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_17 = {dataMatchVec_11_17,dataMatchVec_10_17,dataMatchVec_9_17,dataMatchVec_8_17,
    dataMatchVec_7_17,dataMatchVec_6_17}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_56 = statusArray_18_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4439 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4446 = statusArrayNext_18_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4450 = _T_4439 & _T_4446 | _T_4444; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_18 = _T_4437 & _T_4450; // @[StatusArray.scala 134:33]
  wire  _T_4454 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4465 = _T_4454 & _T_4446 | _T_4459; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_18 = _T_4452 & _T_4465; // @[StatusArray.scala 134:33]
  wire  _T_4469 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4480 = _T_4469 & _T_4446 | _T_4474; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_18 = _T_4467 & _T_4480; // @[StatusArray.scala 134:33]
  wire  _T_4484 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4495 = _T_4484 & _T_4446 | _T_4489; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_18 = _T_4482 & _T_4495; // @[StatusArray.scala 134:33]
  wire  _T_4499 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4510 = _T_4499 & _T_4446 | _T_4504; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_18 = _T_4497 & _T_4510; // @[StatusArray.scala 134:33]
  wire  _T_4514 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4525 = _T_4514 & _T_4446 | _T_4519; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_18 = _T_4512 & _T_4525; // @[StatusArray.scala 134:33]
  wire  _T_4529 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4540 = _T_4529 & _T_4446 | _T_4534; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_18 = _T_4527 & _T_4540; // @[StatusArray.scala 134:33]
  wire  _T_4544 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4555 = _T_4544 & _T_4446 | _T_4549; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_18 = _T_4542 & _T_4555; // @[StatusArray.scala 134:33]
  wire  _T_4559 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4570 = _T_4559 & _T_4446 | _T_4564; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_18 = _T_4557 & _T_4570; // @[StatusArray.scala 134:33]
  wire  _T_4574 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4585 = _T_4574 & _T_4446 | _T_4579; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_18 = _T_4572 & _T_4585; // @[StatusArray.scala 134:33]
  wire  _T_4589 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4600 = _T_4589 & _T_4446 | _T_4594; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_18 = _T_4587 & _T_4600; // @[StatusArray.scala 134:33]
  wire  _T_4604 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4615 = _T_4604 & _T_4446 | _T_4609; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_18 = _T_4602 & _T_4615; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_18 = {dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18,dataMatchVec_2_18,
    dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_18 = {dataMatchVec_11_18,dataMatchVec_10_18,dataMatchVec_9_18,dataMatchVec_8_18,
    dataMatchVec_7_18,dataMatchVec_6_18}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_59 = statusArray_19_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4653 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4660 = statusArrayNext_19_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4664 = _T_4653 & _T_4660 | _T_4658; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_19 = _T_4651 & _T_4664; // @[StatusArray.scala 134:33]
  wire  _T_4668 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4679 = _T_4668 & _T_4660 | _T_4673; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_19 = _T_4666 & _T_4679; // @[StatusArray.scala 134:33]
  wire  _T_4683 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4694 = _T_4683 & _T_4660 | _T_4688; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_19 = _T_4681 & _T_4694; // @[StatusArray.scala 134:33]
  wire  _T_4698 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4709 = _T_4698 & _T_4660 | _T_4703; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_19 = _T_4696 & _T_4709; // @[StatusArray.scala 134:33]
  wire  _T_4713 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4724 = _T_4713 & _T_4660 | _T_4718; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_19 = _T_4711 & _T_4724; // @[StatusArray.scala 134:33]
  wire  _T_4728 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4739 = _T_4728 & _T_4660 | _T_4733; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_19 = _T_4726 & _T_4739; // @[StatusArray.scala 134:33]
  wire  _T_4743 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4754 = _T_4743 & _T_4660 | _T_4748; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_19 = _T_4741 & _T_4754; // @[StatusArray.scala 134:33]
  wire  _T_4758 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4769 = _T_4758 & _T_4660 | _T_4763; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_19 = _T_4756 & _T_4769; // @[StatusArray.scala 134:33]
  wire  _T_4773 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4784 = _T_4773 & _T_4660 | _T_4778; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_19 = _T_4771 & _T_4784; // @[StatusArray.scala 134:33]
  wire  _T_4788 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4799 = _T_4788 & _T_4660 | _T_4793; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_19 = _T_4786 & _T_4799; // @[StatusArray.scala 134:33]
  wire  _T_4803 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4814 = _T_4803 & _T_4660 | _T_4808; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_19 = _T_4801 & _T_4814; // @[StatusArray.scala 134:33]
  wire  _T_4818 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4829 = _T_4818 & _T_4660 | _T_4823; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_19 = _T_4816 & _T_4829; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_19 = {dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19,dataMatchVec_2_19,
    dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_19 = {dataMatchVec_11_19,dataMatchVec_10_19,dataMatchVec_9_19,dataMatchVec_8_19,
    dataMatchVec_7_19,dataMatchVec_6_19}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_62 = statusArray_20_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4867 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4874 = statusArrayNext_20_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4878 = _T_4867 & _T_4874 | _T_4872; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_20 = _T_4865 & _T_4878; // @[StatusArray.scala 134:33]
  wire  _T_4882 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4893 = _T_4882 & _T_4874 | _T_4887; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_20 = _T_4880 & _T_4893; // @[StatusArray.scala 134:33]
  wire  _T_4897 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4908 = _T_4897 & _T_4874 | _T_4902; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_20 = _T_4895 & _T_4908; // @[StatusArray.scala 134:33]
  wire  _T_4912 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4923 = _T_4912 & _T_4874 | _T_4917; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_20 = _T_4910 & _T_4923; // @[StatusArray.scala 134:33]
  wire  _T_4927 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4938 = _T_4927 & _T_4874 | _T_4932; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_20 = _T_4925 & _T_4938; // @[StatusArray.scala 134:33]
  wire  _T_4942 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4953 = _T_4942 & _T_4874 | _T_4947; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_20 = _T_4940 & _T_4953; // @[StatusArray.scala 134:33]
  wire  _T_4957 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4968 = _T_4957 & _T_4874 | _T_4962; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_20 = _T_4955 & _T_4968; // @[StatusArray.scala 134:33]
  wire  _T_4972 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4983 = _T_4972 & _T_4874 | _T_4977; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_20 = _T_4970 & _T_4983; // @[StatusArray.scala 134:33]
  wire  _T_4987 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4998 = _T_4987 & _T_4874 | _T_4992; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_20 = _T_4985 & _T_4998; // @[StatusArray.scala 134:33]
  wire  _T_5002 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5013 = _T_5002 & _T_4874 | _T_5007; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_20 = _T_5000 & _T_5013; // @[StatusArray.scala 134:33]
  wire  _T_5017 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5028 = _T_5017 & _T_4874 | _T_5022; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_20 = _T_5015 & _T_5028; // @[StatusArray.scala 134:33]
  wire  _T_5032 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5043 = _T_5032 & _T_4874 | _T_5037; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_20 = _T_5030 & _T_5043; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_20 = {dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20,dataMatchVec_2_20,
    dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_20 = {dataMatchVec_11_20,dataMatchVec_10_20,dataMatchVec_9_20,dataMatchVec_8_20,
    dataMatchVec_7_20,dataMatchVec_6_20}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_65 = statusArray_21_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5081 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5088 = statusArrayNext_21_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5092 = _T_5081 & _T_5088 | _T_5086; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_21 = _T_5079 & _T_5092; // @[StatusArray.scala 134:33]
  wire  _T_5096 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5107 = _T_5096 & _T_5088 | _T_5101; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_21 = _T_5094 & _T_5107; // @[StatusArray.scala 134:33]
  wire  _T_5111 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5122 = _T_5111 & _T_5088 | _T_5116; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_21 = _T_5109 & _T_5122; // @[StatusArray.scala 134:33]
  wire  _T_5126 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5137 = _T_5126 & _T_5088 | _T_5131; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_21 = _T_5124 & _T_5137; // @[StatusArray.scala 134:33]
  wire  _T_5141 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5152 = _T_5141 & _T_5088 | _T_5146; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_21 = _T_5139 & _T_5152; // @[StatusArray.scala 134:33]
  wire  _T_5156 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5167 = _T_5156 & _T_5088 | _T_5161; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_21 = _T_5154 & _T_5167; // @[StatusArray.scala 134:33]
  wire  _T_5171 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5182 = _T_5171 & _T_5088 | _T_5176; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_21 = _T_5169 & _T_5182; // @[StatusArray.scala 134:33]
  wire  _T_5186 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5197 = _T_5186 & _T_5088 | _T_5191; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_21 = _T_5184 & _T_5197; // @[StatusArray.scala 134:33]
  wire  _T_5201 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5212 = _T_5201 & _T_5088 | _T_5206; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_21 = _T_5199 & _T_5212; // @[StatusArray.scala 134:33]
  wire  _T_5216 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5227 = _T_5216 & _T_5088 | _T_5221; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_21 = _T_5214 & _T_5227; // @[StatusArray.scala 134:33]
  wire  _T_5231 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5242 = _T_5231 & _T_5088 | _T_5236; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_21 = _T_5229 & _T_5242; // @[StatusArray.scala 134:33]
  wire  _T_5246 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5257 = _T_5246 & _T_5088 | _T_5251; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_21 = _T_5244 & _T_5257; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_21 = {dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21,dataMatchVec_2_21,
    dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_21 = {dataMatchVec_11_21,dataMatchVec_10_21,dataMatchVec_9_21,dataMatchVec_8_21,
    dataMatchVec_7_21,dataMatchVec_6_21}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_68 = statusArray_22_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5295 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5302 = statusArrayNext_22_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5306 = _T_5295 & _T_5302 | _T_5300; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_22 = _T_5293 & _T_5306; // @[StatusArray.scala 134:33]
  wire  _T_5310 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5321 = _T_5310 & _T_5302 | _T_5315; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_22 = _T_5308 & _T_5321; // @[StatusArray.scala 134:33]
  wire  _T_5325 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5336 = _T_5325 & _T_5302 | _T_5330; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_22 = _T_5323 & _T_5336; // @[StatusArray.scala 134:33]
  wire  _T_5340 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5351 = _T_5340 & _T_5302 | _T_5345; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_22 = _T_5338 & _T_5351; // @[StatusArray.scala 134:33]
  wire  _T_5355 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5366 = _T_5355 & _T_5302 | _T_5360; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_22 = _T_5353 & _T_5366; // @[StatusArray.scala 134:33]
  wire  _T_5370 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5381 = _T_5370 & _T_5302 | _T_5375; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_22 = _T_5368 & _T_5381; // @[StatusArray.scala 134:33]
  wire  _T_5385 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5396 = _T_5385 & _T_5302 | _T_5390; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_22 = _T_5383 & _T_5396; // @[StatusArray.scala 134:33]
  wire  _T_5400 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5411 = _T_5400 & _T_5302 | _T_5405; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_22 = _T_5398 & _T_5411; // @[StatusArray.scala 134:33]
  wire  _T_5415 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5426 = _T_5415 & _T_5302 | _T_5420; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_22 = _T_5413 & _T_5426; // @[StatusArray.scala 134:33]
  wire  _T_5430 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5441 = _T_5430 & _T_5302 | _T_5435; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_22 = _T_5428 & _T_5441; // @[StatusArray.scala 134:33]
  wire  _T_5445 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5456 = _T_5445 & _T_5302 | _T_5450; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_22 = _T_5443 & _T_5456; // @[StatusArray.scala 134:33]
  wire  _T_5460 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5471 = _T_5460 & _T_5302 | _T_5465; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_22 = _T_5458 & _T_5471; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_22 = {dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22,dataMatchVec_2_22,
    dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_22 = {dataMatchVec_11_22,dataMatchVec_10_22,dataMatchVec_9_22,dataMatchVec_8_22,
    dataMatchVec_7_22,dataMatchVec_6_22}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_71 = statusArray_23_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5509 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5516 = statusArrayNext_23_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5520 = _T_5509 & _T_5516 | _T_5514; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_0_23 = _T_5507 & _T_5520; // @[StatusArray.scala 134:33]
  wire  _T_5524 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5535 = _T_5524 & _T_5516 | _T_5529; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_1_23 = _T_5522 & _T_5535; // @[StatusArray.scala 134:33]
  wire  _T_5539 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5550 = _T_5539 & _T_5516 | _T_5544; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_2_23 = _T_5537 & _T_5550; // @[StatusArray.scala 134:33]
  wire  _T_5554 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5565 = _T_5554 & _T_5516 | _T_5559; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_3_23 = _T_5552 & _T_5565; // @[StatusArray.scala 134:33]
  wire  _T_5569 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5580 = _T_5569 & _T_5516 | _T_5574; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_4_23 = _T_5567 & _T_5580; // @[StatusArray.scala 134:33]
  wire  _T_5584 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5595 = _T_5584 & _T_5516 | _T_5589; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_5_23 = _T_5582 & _T_5595; // @[StatusArray.scala 134:33]
  wire  _T_5599 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5610 = _T_5599 & _T_5516 | _T_5604; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_6_23 = _T_5597 & _T_5610; // @[StatusArray.scala 134:33]
  wire  _T_5614 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5625 = _T_5614 & _T_5516 | _T_5619; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_7_23 = _T_5612 & _T_5625; // @[StatusArray.scala 134:33]
  wire  _T_5629 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5640 = _T_5629 & _T_5516 | _T_5634; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_8_23 = _T_5627 & _T_5640; // @[StatusArray.scala 134:33]
  wire  _T_5644 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5655 = _T_5644 & _T_5516 | _T_5649; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_9_23 = _T_5642 & _T_5655; // @[StatusArray.scala 134:33]
  wire  _T_5659 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5670 = _T_5659 & _T_5516 | _T_5664; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_10_23 = _T_5657 & _T_5670; // @[StatusArray.scala 134:33]
  wire  _T_5674 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5685 = _T_5674 & _T_5516 | _T_5679; // @[StatusArray.scala 133:67]
  wire  dataMatchVec_11_23 = _T_5672 & _T_5685; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_23 = {dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23,dataMatchVec_2_23,
    dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_23 = {dataMatchVec_11_23,dataMatchVec_10_23,dataMatchVec_9_23,dataMatchVec_8_23,
    dataMatchVec_7_23,dataMatchVec_6_23}; // @[StatusArray.scala 138:43]
  wire [5:0] io_isValid_lo_lo = {statusArray_5_valid,statusArray_4_valid,statusArray_3_valid,statusArray_2_valid,
    statusArray_1_valid,statusArray_0_valid}; // @[StatusArray.scala 260:51]
  wire [11:0] io_isValid_lo = {statusArray_11_valid,statusArray_10_valid,statusArray_9_valid,statusArray_8_valid,
    statusArray_7_valid,statusArray_6_valid,io_isValid_lo_lo}; // @[StatusArray.scala 260:51]
  wire [5:0] io_isValid_hi_lo = {statusArray_17_valid,statusArray_16_valid,statusArray_15_valid,statusArray_14_valid,
    statusArray_13_valid,statusArray_12_valid}; // @[StatusArray.scala 260:51]
  wire [11:0] io_isValid_hi = {statusArray_23_valid,statusArray_22_valid,statusArray_21_valid,statusArray_20_valid,
    statusArray_19_valid,statusArray_18_valid,io_isValid_hi_lo}; // @[StatusArray.scala 260:51]
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
  wire  _io_canIssue_T_16 = statusArrayNext_16_valid & readyVecNext_16; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_17 = statusArrayNext_17_valid & readyVecNext_17; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_18 = statusArrayNext_18_valid & readyVecNext_18; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_19 = statusArrayNext_19_valid & readyVecNext_19; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_20 = statusArrayNext_20_valid & readyVecNext_20; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_21 = statusArrayNext_21_valid & readyVecNext_21; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_22 = statusArrayNext_22_valid & readyVecNext_22; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_23 = statusArrayNext_23_valid & readyVecNext_23; // @[StatusArray.scala 261:95]
  wire [5:0] io_canIssue_lo_lo = {_io_canIssue_T_5,_io_canIssue_T_4,_io_canIssue_T_3,_io_canIssue_T_2,_io_canIssue_T_1,
    _io_canIssue_T}; // @[StatusArray.scala 261:102]
  wire [11:0] io_canIssue_lo = {_io_canIssue_T_11,_io_canIssue_T_10,_io_canIssue_T_9,_io_canIssue_T_8,_io_canIssue_T_7,
    _io_canIssue_T_6,io_canIssue_lo_lo}; // @[StatusArray.scala 261:102]
  wire [5:0] io_canIssue_hi_lo = {_io_canIssue_T_17,_io_canIssue_T_16,_io_canIssue_T_15,_io_canIssue_T_14,
    _io_canIssue_T_13,_io_canIssue_T_12}; // @[StatusArray.scala 261:102]
  wire [11:0] io_canIssue_hi = {_io_canIssue_T_23,_io_canIssue_T_22,_io_canIssue_T_21,_io_canIssue_T_20,
    _io_canIssue_T_19,_io_canIssue_T_18,io_canIssue_hi_lo}; // @[StatusArray.scala 261:102]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 260:51]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 261:102]
  assign io_wakeupMatch_0_0 = {dataMatch_hi,dataMatch_lo}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_0 = {dataMatch_hi_1,dataMatch_lo_1}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_0 = {dataMatch_hi_2,dataMatch_lo_2}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_0 = {dataMatch_hi_3,dataMatch_lo_3}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_0 = {dataMatch_hi_4,dataMatch_lo_4}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_0 = {dataMatch_hi_5,dataMatch_lo_5}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_0 = {dataMatch_hi_6,dataMatch_lo_6}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_0 = {dataMatch_hi_7,dataMatch_lo_7}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_0 = {dataMatch_hi_8,dataMatch_lo_8}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_0 = {dataMatch_hi_9,dataMatch_lo_9}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_0 = {dataMatch_hi_10,dataMatch_lo_10}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_0 = {dataMatch_hi_11,dataMatch_lo_11}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_0 = {dataMatch_hi_12,dataMatch_lo_12}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_0 = {dataMatch_hi_13,dataMatch_lo_13}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_0 = {dataMatch_hi_14,dataMatch_lo_14}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_0 = {dataMatch_hi_15,dataMatch_lo_15}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_16_0 = {dataMatch_hi_16,dataMatch_lo_16}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_17_0 = {dataMatch_hi_17,dataMatch_lo_17}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_18_0 = {dataMatch_hi_18,dataMatch_lo_18}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_19_0 = {dataMatch_hi_19,dataMatch_lo_19}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_20_0 = {dataMatch_hi_20,dataMatch_lo_20}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_21_0 = {dataMatch_hi_21,dataMatch_lo_21}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_22_0 = {dataMatch_hi_22,dataMatch_lo_22}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_23_0 = {dataMatch_hi_23,dataMatch_lo_23}; // @[StatusArray.scala 138:43]
  always @(posedge clock) begin
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_0_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_0_valid <= statusArrayNext_0_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_0) begin // @[StatusArray.scala 190:34]
      statusArray_0_scheduled <= updateVal_0_scheduled;
    end else begin
      statusArray_0_scheduled <= hasIssued | keepScheduled;
    end
    if (updateValid_0) begin // @[StatusArray.scala 228:29]
      statusArray_0_credit <= updateVal_0_credit;
    end else if (statusArray_0_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_0_credit <= _creditStep_T_2;
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_787; // @[StatusArray.scala 241:50]
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_0 <= updateVal_0_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_0 <= updateVal_0_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_flag <= updateVal_0_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_value <= updateVal_0_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_1_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_1_valid <= statusArrayNext_1_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_1) begin // @[StatusArray.scala 190:34]
      statusArray_1_scheduled <= updateVal_1_scheduled;
    end else begin
      statusArray_1_scheduled <= hasIssued_1 | keepScheduled_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 228:29]
      statusArray_1_credit <= updateVal_1_credit;
    end else if (statusArray_1_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_1_credit <= _creditStep_T_5;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1001; // @[StatusArray.scala 241:50]
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_0 <= updateVal_1_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_0 <= updateVal_1_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_flag <= updateVal_1_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_value <= updateVal_1_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_2_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_2_valid <= statusArrayNext_2_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_2) begin // @[StatusArray.scala 190:34]
      statusArray_2_scheduled <= updateVal_2_scheduled;
    end else begin
      statusArray_2_scheduled <= hasIssued_2 | keepScheduled_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 228:29]
      statusArray_2_credit <= updateVal_2_credit;
    end else if (statusArray_2_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_2_credit <= _creditStep_T_8;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1215; // @[StatusArray.scala 241:50]
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_0 <= updateVal_2_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_0 <= updateVal_2_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_flag <= updateVal_2_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_value <= updateVal_2_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_3_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_3_valid <= statusArrayNext_3_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_3) begin // @[StatusArray.scala 190:34]
      statusArray_3_scheduled <= updateVal_3_scheduled;
    end else begin
      statusArray_3_scheduled <= hasIssued_3 | keepScheduled_3;
    end
    if (updateValid_3) begin // @[StatusArray.scala 228:29]
      statusArray_3_credit <= updateVal_3_credit;
    end else if (statusArray_3_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_3_credit <= _creditStep_T_11;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1429; // @[StatusArray.scala 241:50]
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_0 <= updateVal_3_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_0 <= updateVal_3_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_flag <= updateVal_3_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_value <= updateVal_3_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_4_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_4_valid <= statusArrayNext_4_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_4) begin // @[StatusArray.scala 190:34]
      statusArray_4_scheduled <= updateVal_4_scheduled;
    end else begin
      statusArray_4_scheduled <= hasIssued_4 | keepScheduled_4;
    end
    if (updateValid_4) begin // @[StatusArray.scala 228:29]
      statusArray_4_credit <= updateVal_4_credit;
    end else if (statusArray_4_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_4_credit <= _creditStep_T_14;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_1643; // @[StatusArray.scala 241:50]
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_0 <= updateVal_4_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_0 <= updateVal_4_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_flag <= updateVal_4_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_value <= updateVal_4_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_5_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_5_valid <= statusArrayNext_5_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_5) begin // @[StatusArray.scala 190:34]
      statusArray_5_scheduled <= updateVal_5_scheduled;
    end else begin
      statusArray_5_scheduled <= hasIssued_5 | keepScheduled_5;
    end
    if (updateValid_5) begin // @[StatusArray.scala 228:29]
      statusArray_5_credit <= updateVal_5_credit;
    end else if (statusArray_5_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_5_credit <= _creditStep_T_17;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_1857; // @[StatusArray.scala 241:50]
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_0 <= updateVal_5_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_0 <= updateVal_5_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_flag <= updateVal_5_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_value <= updateVal_5_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_6_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_6_valid <= statusArrayNext_6_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_6) begin // @[StatusArray.scala 190:34]
      statusArray_6_scheduled <= updateVal_6_scheduled;
    end else begin
      statusArray_6_scheduled <= hasIssued_6 | keepScheduled_6;
    end
    if (updateValid_6) begin // @[StatusArray.scala 228:29]
      statusArray_6_credit <= updateVal_6_credit;
    end else if (statusArray_6_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_6_credit <= _creditStep_T_20;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_2071; // @[StatusArray.scala 241:50]
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_0 <= updateVal_6_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_0 <= updateVal_6_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_flag <= updateVal_6_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_value <= updateVal_6_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_7_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_7_valid <= statusArrayNext_7_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_7) begin // @[StatusArray.scala 190:34]
      statusArray_7_scheduled <= updateVal_7_scheduled;
    end else begin
      statusArray_7_scheduled <= hasIssued_7 | keepScheduled_7;
    end
    if (updateValid_7) begin // @[StatusArray.scala 228:29]
      statusArray_7_credit <= updateVal_7_credit;
    end else if (statusArray_7_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_7_credit <= _creditStep_T_23;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_2285; // @[StatusArray.scala 241:50]
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_0 <= updateVal_7_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_0 <= updateVal_7_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_flag <= updateVal_7_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_value <= updateVal_7_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_8_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_8_valid <= statusArrayNext_8_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_8) begin // @[StatusArray.scala 190:34]
      statusArray_8_scheduled <= updateVal_8_scheduled;
    end else begin
      statusArray_8_scheduled <= hasIssued_8 | keepScheduled_8;
    end
    if (updateValid_8) begin // @[StatusArray.scala 228:29]
      statusArray_8_credit <= updateVal_8_credit;
    end else if (statusArray_8_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_8_credit <= _creditStep_T_26;
    end
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_2499; // @[StatusArray.scala 241:50]
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_0 <= updateVal_8_psrc_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_0 <= updateVal_8_srcType_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 250:29]
      statusArray_8_robIdx_flag <= updateVal_8_robIdx_flag;
    end
    if (updateValid_8) begin // @[StatusArray.scala 250:29]
      statusArray_8_robIdx_value <= updateVal_8_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_9_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_9_valid <= statusArrayNext_9_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_9) begin // @[StatusArray.scala 190:34]
      statusArray_9_scheduled <= updateVal_9_scheduled;
    end else begin
      statusArray_9_scheduled <= hasIssued_9 | keepScheduled_9;
    end
    if (updateValid_9) begin // @[StatusArray.scala 228:29]
      statusArray_9_credit <= updateVal_9_credit;
    end else if (statusArray_9_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_9_credit <= _creditStep_T_29;
    end
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_2713; // @[StatusArray.scala 241:50]
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_0 <= updateVal_9_psrc_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_0 <= updateVal_9_srcType_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 250:29]
      statusArray_9_robIdx_flag <= updateVal_9_robIdx_flag;
    end
    if (updateValid_9) begin // @[StatusArray.scala 250:29]
      statusArray_9_robIdx_value <= updateVal_9_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_10_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_10_valid <= statusArrayNext_10_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_10) begin // @[StatusArray.scala 190:34]
      statusArray_10_scheduled <= updateVal_10_scheduled;
    end else begin
      statusArray_10_scheduled <= hasIssued_10 | keepScheduled_10;
    end
    if (updateValid_10) begin // @[StatusArray.scala 228:29]
      statusArray_10_credit <= updateVal_10_credit;
    end else if (statusArray_10_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_10_credit <= _creditStep_T_32;
    end
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_2927; // @[StatusArray.scala 241:50]
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_0 <= updateVal_10_psrc_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_0 <= updateVal_10_srcType_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 250:29]
      statusArray_10_robIdx_flag <= updateVal_10_robIdx_flag;
    end
    if (updateValid_10) begin // @[StatusArray.scala 250:29]
      statusArray_10_robIdx_value <= updateVal_10_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_11_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_11_valid <= statusArrayNext_11_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_11) begin // @[StatusArray.scala 190:34]
      statusArray_11_scheduled <= updateVal_11_scheduled;
    end else begin
      statusArray_11_scheduled <= hasIssued_11 | keepScheduled_11;
    end
    if (updateValid_11) begin // @[StatusArray.scala 228:29]
      statusArray_11_credit <= updateVal_11_credit;
    end else if (statusArray_11_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_11_credit <= _creditStep_T_35;
    end
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_3141; // @[StatusArray.scala 241:50]
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_0 <= updateVal_11_psrc_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_0 <= updateVal_11_srcType_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 250:29]
      statusArray_11_robIdx_flag <= updateVal_11_robIdx_flag;
    end
    if (updateValid_11) begin // @[StatusArray.scala 250:29]
      statusArray_11_robIdx_value <= updateVal_11_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_12_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_12_valid <= statusArrayNext_12_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_12) begin // @[StatusArray.scala 190:34]
      statusArray_12_scheduled <= updateVal_12_scheduled;
    end else begin
      statusArray_12_scheduled <= hasIssued_12 | keepScheduled_12;
    end
    if (updateValid_12) begin // @[StatusArray.scala 228:29]
      statusArray_12_credit <= updateVal_12_credit;
    end else if (statusArray_12_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_12_credit <= _creditStep_T_38;
    end
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_3355; // @[StatusArray.scala 241:50]
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_0 <= updateVal_12_psrc_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_0 <= updateVal_12_srcType_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 250:29]
      statusArray_12_robIdx_flag <= updateVal_12_robIdx_flag;
    end
    if (updateValid_12) begin // @[StatusArray.scala 250:29]
      statusArray_12_robIdx_value <= updateVal_12_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_13_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_13_valid <= statusArrayNext_13_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_13) begin // @[StatusArray.scala 190:34]
      statusArray_13_scheduled <= updateVal_13_scheduled;
    end else begin
      statusArray_13_scheduled <= hasIssued_13 | keepScheduled_13;
    end
    if (updateValid_13) begin // @[StatusArray.scala 228:29]
      statusArray_13_credit <= updateVal_13_credit;
    end else if (statusArray_13_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_13_credit <= _creditStep_T_41;
    end
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_3569; // @[StatusArray.scala 241:50]
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_0 <= updateVal_13_psrc_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_0 <= updateVal_13_srcType_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 250:29]
      statusArray_13_robIdx_flag <= updateVal_13_robIdx_flag;
    end
    if (updateValid_13) begin // @[StatusArray.scala 250:29]
      statusArray_13_robIdx_value <= updateVal_13_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_14_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_14_valid <= statusArrayNext_14_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_14) begin // @[StatusArray.scala 190:34]
      statusArray_14_scheduled <= updateVal_14_scheduled;
    end else begin
      statusArray_14_scheduled <= hasIssued_14 | keepScheduled_14;
    end
    if (updateValid_14) begin // @[StatusArray.scala 228:29]
      statusArray_14_credit <= updateVal_14_credit;
    end else if (statusArray_14_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_14_credit <= _creditStep_T_44;
    end
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_3783; // @[StatusArray.scala 241:50]
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_0 <= updateVal_14_psrc_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_0 <= updateVal_14_srcType_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 250:29]
      statusArray_14_robIdx_flag <= updateVal_14_robIdx_flag;
    end
    if (updateValid_14) begin // @[StatusArray.scala 250:29]
      statusArray_14_robIdx_value <= updateVal_14_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_15_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_15_valid <= statusArrayNext_15_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_15) begin // @[StatusArray.scala 190:34]
      statusArray_15_scheduled <= updateVal_15_scheduled;
    end else begin
      statusArray_15_scheduled <= hasIssued_15 | keepScheduled_15;
    end
    if (updateValid_15) begin // @[StatusArray.scala 228:29]
      statusArray_15_credit <= updateVal_15_credit;
    end else if (statusArray_15_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_15_credit <= _creditStep_T_47;
    end
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_3997; // @[StatusArray.scala 241:50]
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_0 <= updateVal_15_psrc_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_0 <= updateVal_15_srcType_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_flag <= updateVal_15_robIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_value <= updateVal_15_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_16_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_16_valid <= statusArrayNext_16_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_16) begin // @[StatusArray.scala 190:34]
      statusArray_16_scheduled <= updateVal_16_scheduled;
    end else begin
      statusArray_16_scheduled <= hasIssued_16 | keepScheduled_16;
    end
    if (updateValid_16) begin // @[StatusArray.scala 228:29]
      statusArray_16_credit <= updateVal_16_credit;
    end else if (statusArray_16_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_16_credit <= _creditStep_T_50;
    end
    statusArray_16_srcState_0 <= stateWakeupEn_0_16 | _T_4211; // @[StatusArray.scala 241:50]
    if (updateValid_16) begin // @[StatusArray.scala 248:27]
      statusArray_16_psrc_0 <= updateVal_16_psrc_0;
    end
    if (updateValid_16) begin // @[StatusArray.scala 249:30]
      statusArray_16_srcType_0 <= updateVal_16_srcType_0;
    end
    if (updateValid_16) begin // @[StatusArray.scala 250:29]
      statusArray_16_robIdx_flag <= updateVal_16_robIdx_flag;
    end
    if (updateValid_16) begin // @[StatusArray.scala 250:29]
      statusArray_16_robIdx_value <= updateVal_16_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_17_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_17_valid <= statusArrayNext_17_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_17) begin // @[StatusArray.scala 190:34]
      statusArray_17_scheduled <= updateVal_17_scheduled;
    end else begin
      statusArray_17_scheduled <= hasIssued_17 | keepScheduled_17;
    end
    if (updateValid_17) begin // @[StatusArray.scala 228:29]
      statusArray_17_credit <= updateVal_17_credit;
    end else if (statusArray_17_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_17_credit <= _creditStep_T_53;
    end
    statusArray_17_srcState_0 <= stateWakeupEn_0_17 | _T_4425; // @[StatusArray.scala 241:50]
    if (updateValid_17) begin // @[StatusArray.scala 248:27]
      statusArray_17_psrc_0 <= updateVal_17_psrc_0;
    end
    if (updateValid_17) begin // @[StatusArray.scala 249:30]
      statusArray_17_srcType_0 <= updateVal_17_srcType_0;
    end
    if (updateValid_17) begin // @[StatusArray.scala 250:29]
      statusArray_17_robIdx_flag <= updateVal_17_robIdx_flag;
    end
    if (updateValid_17) begin // @[StatusArray.scala 250:29]
      statusArray_17_robIdx_value <= updateVal_17_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_18_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_18_valid <= statusArrayNext_18_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_18) begin // @[StatusArray.scala 190:34]
      statusArray_18_scheduled <= updateVal_18_scheduled;
    end else begin
      statusArray_18_scheduled <= hasIssued_18 | keepScheduled_18;
    end
    if (updateValid_18) begin // @[StatusArray.scala 228:29]
      statusArray_18_credit <= updateVal_18_credit;
    end else if (statusArray_18_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_18_credit <= _creditStep_T_56;
    end
    statusArray_18_srcState_0 <= stateWakeupEn_0_18 | _T_4639; // @[StatusArray.scala 241:50]
    if (updateValid_18) begin // @[StatusArray.scala 248:27]
      statusArray_18_psrc_0 <= updateVal_18_psrc_0;
    end
    if (updateValid_18) begin // @[StatusArray.scala 249:30]
      statusArray_18_srcType_0 <= updateVal_18_srcType_0;
    end
    if (updateValid_18) begin // @[StatusArray.scala 250:29]
      statusArray_18_robIdx_flag <= updateVal_18_robIdx_flag;
    end
    if (updateValid_18) begin // @[StatusArray.scala 250:29]
      statusArray_18_robIdx_value <= updateVal_18_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_19_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_19_valid <= statusArrayNext_19_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_19) begin // @[StatusArray.scala 190:34]
      statusArray_19_scheduled <= updateVal_19_scheduled;
    end else begin
      statusArray_19_scheduled <= hasIssued_19 | keepScheduled_19;
    end
    if (updateValid_19) begin // @[StatusArray.scala 228:29]
      statusArray_19_credit <= updateVal_19_credit;
    end else if (statusArray_19_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_19_credit <= _creditStep_T_59;
    end
    statusArray_19_srcState_0 <= stateWakeupEn_0_19 | _T_4853; // @[StatusArray.scala 241:50]
    if (updateValid_19) begin // @[StatusArray.scala 248:27]
      statusArray_19_psrc_0 <= updateVal_19_psrc_0;
    end
    if (updateValid_19) begin // @[StatusArray.scala 249:30]
      statusArray_19_srcType_0 <= updateVal_19_srcType_0;
    end
    if (updateValid_19) begin // @[StatusArray.scala 250:29]
      statusArray_19_robIdx_flag <= updateVal_19_robIdx_flag;
    end
    if (updateValid_19) begin // @[StatusArray.scala 250:29]
      statusArray_19_robIdx_value <= updateVal_19_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_20_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_20_valid <= statusArrayNext_20_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_20) begin // @[StatusArray.scala 190:34]
      statusArray_20_scheduled <= updateVal_20_scheduled;
    end else begin
      statusArray_20_scheduled <= hasIssued_20 | keepScheduled_20;
    end
    if (updateValid_20) begin // @[StatusArray.scala 228:29]
      statusArray_20_credit <= updateVal_20_credit;
    end else if (statusArray_20_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_20_credit <= _creditStep_T_62;
    end
    statusArray_20_srcState_0 <= stateWakeupEn_0_20 | _T_5067; // @[StatusArray.scala 241:50]
    if (updateValid_20) begin // @[StatusArray.scala 248:27]
      statusArray_20_psrc_0 <= updateVal_20_psrc_0;
    end
    if (updateValid_20) begin // @[StatusArray.scala 249:30]
      statusArray_20_srcType_0 <= updateVal_20_srcType_0;
    end
    if (updateValid_20) begin // @[StatusArray.scala 250:29]
      statusArray_20_robIdx_flag <= updateVal_20_robIdx_flag;
    end
    if (updateValid_20) begin // @[StatusArray.scala 250:29]
      statusArray_20_robIdx_value <= updateVal_20_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_21_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_21_valid <= statusArrayNext_21_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_21) begin // @[StatusArray.scala 190:34]
      statusArray_21_scheduled <= updateVal_21_scheduled;
    end else begin
      statusArray_21_scheduled <= hasIssued_21 | keepScheduled_21;
    end
    if (updateValid_21) begin // @[StatusArray.scala 228:29]
      statusArray_21_credit <= updateVal_21_credit;
    end else if (statusArray_21_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_21_credit <= _creditStep_T_65;
    end
    statusArray_21_srcState_0 <= stateWakeupEn_0_21 | _T_5281; // @[StatusArray.scala 241:50]
    if (updateValid_21) begin // @[StatusArray.scala 248:27]
      statusArray_21_psrc_0 <= updateVal_21_psrc_0;
    end
    if (updateValid_21) begin // @[StatusArray.scala 249:30]
      statusArray_21_srcType_0 <= updateVal_21_srcType_0;
    end
    if (updateValid_21) begin // @[StatusArray.scala 250:29]
      statusArray_21_robIdx_flag <= updateVal_21_robIdx_flag;
    end
    if (updateValid_21) begin // @[StatusArray.scala 250:29]
      statusArray_21_robIdx_value <= updateVal_21_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_22_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_22_valid <= statusArrayNext_22_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_22) begin // @[StatusArray.scala 190:34]
      statusArray_22_scheduled <= updateVal_22_scheduled;
    end else begin
      statusArray_22_scheduled <= hasIssued_22 | keepScheduled_22;
    end
    if (updateValid_22) begin // @[StatusArray.scala 228:29]
      statusArray_22_credit <= updateVal_22_credit;
    end else if (statusArray_22_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_22_credit <= _creditStep_T_68;
    end
    statusArray_22_srcState_0 <= stateWakeupEn_0_22 | _T_5495; // @[StatusArray.scala 241:50]
    if (updateValid_22) begin // @[StatusArray.scala 248:27]
      statusArray_22_psrc_0 <= updateVal_22_psrc_0;
    end
    if (updateValid_22) begin // @[StatusArray.scala 249:30]
      statusArray_22_srcType_0 <= updateVal_22_srcType_0;
    end
    if (updateValid_22) begin // @[StatusArray.scala 250:29]
      statusArray_22_robIdx_flag <= updateVal_22_robIdx_flag;
    end
    if (updateValid_22) begin // @[StatusArray.scala 250:29]
      statusArray_22_robIdx_value <= updateVal_22_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_23_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_23_valid <= statusArrayNext_23_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_23) begin // @[StatusArray.scala 190:34]
      statusArray_23_scheduled <= updateVal_23_scheduled;
    end else begin
      statusArray_23_scheduled <= hasIssued_23 | keepScheduled_23;
    end
    if (updateValid_23) begin // @[StatusArray.scala 228:29]
      statusArray_23_credit <= updateVal_23_credit;
    end else if (statusArray_23_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_23_credit <= _creditStep_T_71;
    end
    statusArray_23_srcState_0 <= stateWakeupEn_0_23 | _T_5709; // @[StatusArray.scala 241:50]
    if (updateValid_23) begin // @[StatusArray.scala 248:27]
      statusArray_23_psrc_0 <= updateVal_23_psrc_0;
    end
    if (updateValid_23) begin // @[StatusArray.scala 249:30]
      statusArray_23_srcType_0 <= updateVal_23_srcType_0;
    end
    if (updateValid_23) begin // @[StatusArray.scala 250:29]
      statusArray_23_robIdx_flag <= updateVal_23_robIdx_flag;
    end
    if (updateValid_23) begin // @[StatusArray.scala 250:29]
      statusArray_23_robIdx_value <= updateVal_23_robIdx_value;
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
  statusArray_0_psrc_0 = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_1_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_1_scheduled = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_1_credit = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_2_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_2_scheduled = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_2_credit = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_3_valid = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_3_scheduled = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_3_credit = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_28[6:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_4_valid = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_4_scheduled = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_4_credit = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_36[6:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_5_valid = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_5_scheduled = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_5_credit = _RAND_42[3:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_6_valid = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_6_scheduled = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_6_credit = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_52[6:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_7_valid = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_7_scheduled = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_7_credit = _RAND_58[3:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_8_valid = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_8_scheduled = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_8_credit = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_9_valid = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_9_scheduled = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_9_credit = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_76[6:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_79[6:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_10_valid = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_10_scheduled = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_10_credit = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_84[6:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_11_valid = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_11_scheduled = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_11_credit = _RAND_90[3:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_92[6:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_95[6:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_12_valid = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_12_scheduled = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_12_credit = _RAND_98[3:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_100[6:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_103[6:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_13_valid = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_13_scheduled = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_13_credit = _RAND_106[3:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_108[6:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_111[6:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_14_valid = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_14_scheduled = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_14_credit = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_116[6:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_119[6:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_15_valid = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_15_scheduled = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_15_credit = _RAND_122[3:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_124[6:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_127[6:0];
  _RAND_128 = {1{`RANDOM}};
  statusArray_16_valid = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  statusArray_16_scheduled = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  statusArray_16_credit = _RAND_130[3:0];
  _RAND_131 = {1{`RANDOM}};
  statusArray_16_srcState_0 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  statusArray_16_psrc_0 = _RAND_132[6:0];
  _RAND_133 = {1{`RANDOM}};
  statusArray_16_srcType_0 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  statusArray_16_robIdx_flag = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  statusArray_16_robIdx_value = _RAND_135[6:0];
  _RAND_136 = {1{`RANDOM}};
  statusArray_17_valid = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  statusArray_17_scheduled = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  statusArray_17_credit = _RAND_138[3:0];
  _RAND_139 = {1{`RANDOM}};
  statusArray_17_srcState_0 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  statusArray_17_psrc_0 = _RAND_140[6:0];
  _RAND_141 = {1{`RANDOM}};
  statusArray_17_srcType_0 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  statusArray_17_robIdx_flag = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  statusArray_17_robIdx_value = _RAND_143[6:0];
  _RAND_144 = {1{`RANDOM}};
  statusArray_18_valid = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  statusArray_18_scheduled = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  statusArray_18_credit = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  statusArray_18_srcState_0 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  statusArray_18_psrc_0 = _RAND_148[6:0];
  _RAND_149 = {1{`RANDOM}};
  statusArray_18_srcType_0 = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  statusArray_18_robIdx_flag = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  statusArray_18_robIdx_value = _RAND_151[6:0];
  _RAND_152 = {1{`RANDOM}};
  statusArray_19_valid = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  statusArray_19_scheduled = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  statusArray_19_credit = _RAND_154[3:0];
  _RAND_155 = {1{`RANDOM}};
  statusArray_19_srcState_0 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  statusArray_19_psrc_0 = _RAND_156[6:0];
  _RAND_157 = {1{`RANDOM}};
  statusArray_19_srcType_0 = _RAND_157[1:0];
  _RAND_158 = {1{`RANDOM}};
  statusArray_19_robIdx_flag = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  statusArray_19_robIdx_value = _RAND_159[6:0];
  _RAND_160 = {1{`RANDOM}};
  statusArray_20_valid = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  statusArray_20_scheduled = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  statusArray_20_credit = _RAND_162[3:0];
  _RAND_163 = {1{`RANDOM}};
  statusArray_20_srcState_0 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  statusArray_20_psrc_0 = _RAND_164[6:0];
  _RAND_165 = {1{`RANDOM}};
  statusArray_20_srcType_0 = _RAND_165[1:0];
  _RAND_166 = {1{`RANDOM}};
  statusArray_20_robIdx_flag = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  statusArray_20_robIdx_value = _RAND_167[6:0];
  _RAND_168 = {1{`RANDOM}};
  statusArray_21_valid = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  statusArray_21_scheduled = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  statusArray_21_credit = _RAND_170[3:0];
  _RAND_171 = {1{`RANDOM}};
  statusArray_21_srcState_0 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  statusArray_21_psrc_0 = _RAND_172[6:0];
  _RAND_173 = {1{`RANDOM}};
  statusArray_21_srcType_0 = _RAND_173[1:0];
  _RAND_174 = {1{`RANDOM}};
  statusArray_21_robIdx_flag = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  statusArray_21_robIdx_value = _RAND_175[6:0];
  _RAND_176 = {1{`RANDOM}};
  statusArray_22_valid = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  statusArray_22_scheduled = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  statusArray_22_credit = _RAND_178[3:0];
  _RAND_179 = {1{`RANDOM}};
  statusArray_22_srcState_0 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  statusArray_22_psrc_0 = _RAND_180[6:0];
  _RAND_181 = {1{`RANDOM}};
  statusArray_22_srcType_0 = _RAND_181[1:0];
  _RAND_182 = {1{`RANDOM}};
  statusArray_22_robIdx_flag = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  statusArray_22_robIdx_value = _RAND_183[6:0];
  _RAND_184 = {1{`RANDOM}};
  statusArray_23_valid = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  statusArray_23_scheduled = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  statusArray_23_credit = _RAND_186[3:0];
  _RAND_187 = {1{`RANDOM}};
  statusArray_23_srcState_0 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  statusArray_23_psrc_0 = _RAND_188[6:0];
  _RAND_189 = {1{`RANDOM}};
  statusArray_23_srcType_0 = _RAND_189[1:0];
  _RAND_190 = {1{`RANDOM}};
  statusArray_23_robIdx_flag = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  statusArray_23_robIdx_value = _RAND_191[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
