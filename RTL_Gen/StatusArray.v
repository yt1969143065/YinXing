module StatusArray(
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
  input  [6:0]  io_update_0_data_psrc_0,
  input  [6:0]  io_update_0_data_psrc_1,
  input  [1:0]  io_update_0_data_srcType_0,
  input  [1:0]  io_update_0_data_srcType_1,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [15:0] io_update_1_addr,
  input         io_update_1_data_srcState_0,
  input         io_update_1_data_srcState_1,
  input  [6:0]  io_update_1_data_psrc_0,
  input  [6:0]  io_update_1_data_psrc_1,
  input  [1:0]  io_update_1_data_srcType_0,
  input  [1:0]  io_update_1_data_srcType_1,
  input         io_update_1_data_robIdx_flag,
  input  [6:0]  io_update_1_data_robIdx_value,
  input         io_wakeup_0_valid,
  input         io_wakeup_0_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_0_bits_pdest,
  input         io_wakeup_1_valid,
  input         io_wakeup_1_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_1_bits_pdest,
  input         io_wakeup_2_valid,
  input         io_wakeup_2_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_2_bits_pdest,
  input         io_wakeup_3_valid,
  input         io_wakeup_3_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_3_bits_pdest,
  input         io_wakeup_4_valid,
  input         io_wakeup_4_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_4_bits_pdest,
  input         io_wakeup_5_valid,
  input         io_wakeup_5_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_5_bits_pdest,
  input         io_wakeup_6_valid,
  input         io_wakeup_6_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_6_bits_pdest,
  input         io_wakeup_7_valid,
  input         io_wakeup_7_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_7_bits_pdest,
  input         io_wakeup_8_valid,
  input         io_wakeup_8_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_8_bits_pdest,
  input         io_wakeup_9_valid,
  input         io_wakeup_9_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_9_bits_pdest,
  input         io_wakeup_10_valid,
  input         io_wakeup_10_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_10_bits_pdest,
  input         io_wakeup_11_valid,
  input         io_wakeup_11_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_11_bits_pdest,
  input         io_wakeup_12_valid,
  input         io_wakeup_12_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_12_bits_pdest,
  input         io_wakeup_13_valid,
  input         io_wakeup_13_bits_ctrl_rfWen,
  input  [6:0]  io_wakeup_13_bits_pdest,
  output [13:0] io_wakeupMatch_0_0,
  output [13:0] io_wakeupMatch_0_1,
  output [13:0] io_wakeupMatch_1_0,
  output [13:0] io_wakeupMatch_1_1,
  output [13:0] io_wakeupMatch_2_0,
  output [13:0] io_wakeupMatch_2_1,
  output [13:0] io_wakeupMatch_3_0,
  output [13:0] io_wakeupMatch_3_1,
  output [13:0] io_wakeupMatch_4_0,
  output [13:0] io_wakeupMatch_4_1,
  output [13:0] io_wakeupMatch_5_0,
  output [13:0] io_wakeupMatch_5_1,
  output [13:0] io_wakeupMatch_6_0,
  output [13:0] io_wakeupMatch_6_1,
  output [13:0] io_wakeupMatch_7_0,
  output [13:0] io_wakeupMatch_7_1,
  output [13:0] io_wakeupMatch_8_0,
  output [13:0] io_wakeupMatch_8_1,
  output [13:0] io_wakeupMatch_9_0,
  output [13:0] io_wakeupMatch_9_1,
  output [13:0] io_wakeupMatch_10_0,
  output [13:0] io_wakeupMatch_10_1,
  output [13:0] io_wakeupMatch_11_0,
  output [13:0] io_wakeupMatch_11_1,
  output [13:0] io_wakeupMatch_12_0,
  output [13:0] io_wakeupMatch_12_1,
  output [13:0] io_wakeupMatch_13_0,
  output [13:0] io_wakeupMatch_13_1,
  output [13:0] io_wakeupMatch_14_0,
  output [13:0] io_wakeupMatch_14_1,
  output [13:0] io_wakeupMatch_15_0,
  output [13:0] io_wakeupMatch_15_1,
  input         io_deqResp_0_valid,
  input  [15:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_1_valid,
  input  [15:0] io_deqResp_1_bits_rsMask
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
`endif // RANDOMIZE_REG_INIT
  reg  statusArray_0_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_1_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_2_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_3_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_4_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_5_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_6_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_7_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_8_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_9_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_10_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_11_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_12_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_13_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_14_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_robIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_15_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_1; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_1; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_1; // @[StatusArray.scala 106:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_robIdx_value; // @[StatusArray.scala 106:24]
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
  wire  _T_75 = mask__0 | mask__1; // @[Mux.scala 27:73]
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
  wire  _T_95 = mask_1_0 | mask_1_1; // @[Mux.scala 27:73]
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
  wire  _T_115 = mask_2_0 | mask_2_1; // @[Mux.scala 27:73]
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
  wire  _T_135 = mask_3_0 | mask_3_1; // @[Mux.scala 27:73]
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
  wire  _T_155 = mask_4_0 | mask_4_1; // @[Mux.scala 27:73]
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
  wire  _T_175 = mask_5_0 | mask_5_1; // @[Mux.scala 27:73]
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
  wire  _T_195 = mask_6_0 | mask_6_1; // @[Mux.scala 27:73]
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
  wire  _T_215 = mask_7_0 | mask_7_1; // @[Mux.scala 27:73]
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
  wire  _T_235 = mask_8_0 | mask_8_1; // @[Mux.scala 27:73]
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
  wire  _T_255 = mask_9_0 | mask_9_1; // @[Mux.scala 27:73]
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
  wire  _T_275 = mask_10_0 | mask_10_1; // @[Mux.scala 27:73]
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
  wire  _T_295 = mask_11_0 | mask_11_1; // @[Mux.scala 27:73]
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
  wire  _T_315 = mask_12_0 | mask_12_1; // @[Mux.scala 27:73]
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
  wire  _T_335 = mask_13_0 | mask_13_1; // @[Mux.scala 27:73]
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
  wire  _T_355 = mask_14_0 | mask_14_1; // @[Mux.scala 27:73]
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
  wire  _T_375 = mask_15_0 | mask_15_1; // @[Mux.scala 27:73]
  wire  flushedVec_15 = isFlushed_15 | _T_372 & _T_375; // @[StatusArray.scala 175:32]
  wire  updateVec_15_1 = io_update_1_enable & io_update_1_addr[15]; // @[StatusArray.scala 158:57]
  wire  updateVec_15_0 = io_update_0_enable & io_update_0_addr[15]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_64 = {updateVec_15_1,updateVec_15_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_15 = |_T_64; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_15 = updateValid_15 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_15_valid = ~flushedVec_15 & (realUpdateValid_15 | statusArray_15_valid); // @[StatusArray.scala 177:40]
  wire [6:0] _updateStatus_T_42 = updateVec__0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_43 = updateVec__1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_1 = _updateStatus_T_42 | _updateStatus_T_43; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_1 = updateValid_0 ? updateVal_0_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_852 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_1 = _T_852 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_836 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_1 = _T_836 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_820 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_1 = _T_820 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_804 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_1 = _T_804 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_788 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_1 = _T_788 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_772 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_1 = _T_772 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_756 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_1 = _T_756 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_740 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_740 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_724 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_724 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_708 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_708 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_692 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_692 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_676 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_676 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_660 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_660 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_644 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_644 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_1 = {stateMatchVec_6_1,stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,
    stateMatchVec_2_1,stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_1 = {stateMatchVec_13_1,stateMatchVec_12_1,stateMatchVec_11_1,stateMatchVec_10_1,
    stateMatchVec_9_1,stateMatchVec_8_1,stateMatchVec_7_1,stateMatch_lo_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_1 = updateVec__0 & io_update_0_data_srcState_1 | updateVec__1 & io_update_1_data_srcState_1
    ; // @[Mux.scala 27:73]
  wire  _T_896 = updateValid_0 ? updateVal_0_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_896; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_39 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_40 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_39 | _updateStatus_T_40; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_601 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13 = _T_601 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_585 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12 = _T_585 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_569 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11 = _T_569 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_553 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10 = _T_553 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_537 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9 = _T_537 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_521 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8 = _T_521 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_505 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7 = _T_505 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_489 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_489 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_473 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_473 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_457 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_457 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_441 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_441 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_425 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_425 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_409 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_409 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_393 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_393 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo = {stateMatchVec_6,stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,
    stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T = {stateMatchVec_13,stateMatchVec_12,stateMatchVec_11,stateMatchVec_10,stateMatchVec_9,
    stateMatchVec_8,stateMatchVec_7,stateMatch_lo}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_894 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_894; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_108 = updateVec_1_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_109 = updateVec_1_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_1 = _updateStatus_T_108 | _updateStatus_T_109; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_1 = updateValid_1 ? updateVal_1_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1368 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_3 = _T_1368 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1352 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_3 = _T_1352 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1336 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_3 = _T_1336 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1320 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_3 = _T_1320 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1304 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_3 = _T_1304 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1288 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_3 = _T_1288 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1272 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_3 = _T_1272 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1256 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_1256 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1240 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_1240 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1224 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_1224 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1208 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_1208 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1192 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_1192 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1176 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_1176 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1160 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_1160 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_3 = {stateMatchVec_6_3,stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,
    stateMatchVec_2_3,stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_3 = {stateMatchVec_13_3,stateMatchVec_12_3,stateMatchVec_11_3,stateMatchVec_10_3,
    stateMatchVec_9_3,stateMatchVec_8_3,stateMatchVec_7_3,stateMatch_lo_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_1 = updateVec_1_0 & io_update_0_data_srcState_1 | updateVec_1_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1412 = updateValid_1 ? updateVal_1_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_1412; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_105 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_106 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_105 | _updateStatus_T_106; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1117 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_2 = _T_1117 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1101 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_2 = _T_1101 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1085 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_2 = _T_1085 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1069 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_2 = _T_1069 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1053 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_2 = _T_1053 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1037 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_2 = _T_1037 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1021 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_2 = _T_1021 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1005 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_1005 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_989 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_989 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_973 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_973 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_957 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_957 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_941 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_941 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_925 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_925 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_909 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_909 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_2 = {stateMatchVec_6_2,stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,
    stateMatchVec_2_2,stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_2 = {stateMatchVec_13_2,stateMatchVec_12_2,stateMatchVec_11_2,stateMatchVec_10_2,
    stateMatchVec_9_2,stateMatchVec_8_2,stateMatchVec_7_2,stateMatch_lo_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1410 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1410; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_174 = updateVec_2_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_175 = updateVec_2_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_1 = _updateStatus_T_174 | _updateStatus_T_175; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_1 = updateValid_2 ? updateVal_2_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1884 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_5 = _T_1884 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1868 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_5 = _T_1868 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1852 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_5 = _T_1852 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1836 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_5 = _T_1836 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1820 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_5 = _T_1820 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1804 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_5 = _T_1804 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1788 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_5 = _T_1788 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1772 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_1772 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1756 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_1756 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1740 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_1740 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1724 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_1724 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1708 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_1708 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1692 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_1692 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1676 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_1676 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_5 = {stateMatchVec_6_5,stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,
    stateMatchVec_2_5,stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_5 = {stateMatchVec_13_5,stateMatchVec_12_5,stateMatchVec_11_5,stateMatchVec_10_5,
    stateMatchVec_9_5,stateMatchVec_8_5,stateMatchVec_7_5,stateMatch_lo_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_1 = updateVec_2_0 & io_update_0_data_srcState_1 | updateVec_2_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1928 = updateValid_2 ? updateVal_2_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_1928; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_171 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_172 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_171 | _updateStatus_T_172; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1633 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_4 = _T_1633 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1617 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_4 = _T_1617 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1601 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_4 = _T_1601 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1585 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_4 = _T_1585 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1569 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_4 = _T_1569 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1553 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_4 = _T_1553 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1537 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_4 = _T_1537 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1521 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_1521 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1505 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_1505 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1489 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_1489 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1473 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_1473 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1457 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_1457 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1441 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_1441 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1425 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_1425 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_4 = {stateMatchVec_6_4,stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,
    stateMatchVec_2_4,stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_4 = {stateMatchVec_13_4,stateMatchVec_12_4,stateMatchVec_11_4,stateMatchVec_10_4,
    stateMatchVec_9_4,stateMatchVec_8_4,stateMatchVec_7_4,stateMatch_lo_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1926 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1926; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_240 = updateVec_3_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_241 = updateVec_3_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_1 = _updateStatus_T_240 | _updateStatus_T_241; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_1 = updateValid_3 ? updateVal_3_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2400 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_7 = _T_2400 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2384 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_7 = _T_2384 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2368 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_7 = _T_2368 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2352 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_7 = _T_2352 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2336 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_7 = _T_2336 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2320 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_7 = _T_2320 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2304 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_7 = _T_2304 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2288 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_2288 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2272 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_2272 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2256 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_2256 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2240 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_2240 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2224 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_2224 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2208 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_2208 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2192 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_2192 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_7 = {stateMatchVec_6_7,stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,
    stateMatchVec_2_7,stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_7 = {stateMatchVec_13_7,stateMatchVec_12_7,stateMatchVec_11_7,stateMatchVec_10_7,
    stateMatchVec_9_7,stateMatchVec_8_7,stateMatchVec_7_7,stateMatch_lo_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_1 = updateVec_3_0 & io_update_0_data_srcState_1 | updateVec_3_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2444 = updateValid_3 ? updateVal_3_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_2444; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_237 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_238 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_237 | _updateStatus_T_238; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2149 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_6 = _T_2149 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2133 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_6 = _T_2133 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2117 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_6 = _T_2117 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2101 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_6 = _T_2101 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2085 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_6 = _T_2085 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2069 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_6 = _T_2069 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2053 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_6 = _T_2053 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2037 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_2037 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2021 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_2021 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2005 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_2005 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1989 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_1989 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1973 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_1973 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1957 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_1957 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1941 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_1941 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_6 = {stateMatchVec_6_6,stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,
    stateMatchVec_2_6,stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_6 = {stateMatchVec_13_6,stateMatchVec_12_6,stateMatchVec_11_6,stateMatchVec_10_6,
    stateMatchVec_9_6,stateMatchVec_8_6,stateMatchVec_7_6,stateMatch_lo_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2442 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_2442; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_306 = updateVec_4_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_307 = updateVec_4_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_1 = _updateStatus_T_306 | _updateStatus_T_307; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_1 = updateValid_4 ? updateVal_4_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2916 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_9 = _T_2916 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2900 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_9 = _T_2900 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2884 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_9 = _T_2884 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2868 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_9 = _T_2868 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2852 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_9 = _T_2852 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2836 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_9 = _T_2836 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2820 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_9 = _T_2820 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2804 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_2804 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2788 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_2788 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2772 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_2772 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2756 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_2756 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2740 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_2740 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2724 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_2724 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2708 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_2708 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_9 = {stateMatchVec_6_9,stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,
    stateMatchVec_2_9,stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_9 = {stateMatchVec_13_9,stateMatchVec_12_9,stateMatchVec_11_9,stateMatchVec_10_9,
    stateMatchVec_9_9,stateMatchVec_8_9,stateMatchVec_7_9,stateMatch_lo_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_1 = updateVec_4_0 & io_update_0_data_srcState_1 | updateVec_4_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2960 = updateValid_4 ? updateVal_4_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_2960; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_303 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_304 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_303 | _updateStatus_T_304; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2665 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_8 = _T_2665 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2649 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_8 = _T_2649 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2633 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_8 = _T_2633 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2617 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_8 = _T_2617 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2601 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_8 = _T_2601 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2585 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_8 = _T_2585 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2569 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_8 = _T_2569 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2553 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_2553 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2537 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_2537 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2521 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_2521 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2505 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_2505 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2489 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_2489 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2473 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_2473 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2457 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_2457 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_8 = {stateMatchVec_6_8,stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,
    stateMatchVec_2_8,stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_8 = {stateMatchVec_13_8,stateMatchVec_12_8,stateMatchVec_11_8,stateMatchVec_10_8,
    stateMatchVec_9_8,stateMatchVec_8_8,stateMatchVec_7_8,stateMatch_lo_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2958 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_2958; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_372 = updateVec_5_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_373 = updateVec_5_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_1 = _updateStatus_T_372 | _updateStatus_T_373; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_1 = updateValid_5 ? updateVal_5_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3432 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_11 = _T_3432 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3416 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_11 = _T_3416 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3400 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_11 = _T_3400 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3384 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_11 = _T_3384 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3368 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_11 = _T_3368 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3352 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_11 = _T_3352 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3336 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_11 = _T_3336 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3320 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_3320 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3304 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_3304 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3288 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_3288 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3272 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_3272 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3256 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_3256 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3240 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_3240 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3224 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_3224 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_11 = {stateMatchVec_6_11,stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,
    stateMatchVec_2_11,stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_11 = {stateMatchVec_13_11,stateMatchVec_12_11,stateMatchVec_11_11,stateMatchVec_10_11,
    stateMatchVec_9_11,stateMatchVec_8_11,stateMatchVec_7_11,stateMatch_lo_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_1 = updateVec_5_0 & io_update_0_data_srcState_1 | updateVec_5_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3476 = updateValid_5 ? updateVal_5_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_3476; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_369 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_370 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_369 | _updateStatus_T_370; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3181 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_10 = _T_3181 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3165 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_10 = _T_3165 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3149 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_10 = _T_3149 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3133 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_10 = _T_3133 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3117 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_10 = _T_3117 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3101 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_10 = _T_3101 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3085 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_10 = _T_3085 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3069 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_3069 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3053 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_3053 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3037 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_3037 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3021 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_3021 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3005 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_3005 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2989 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_2989 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2973 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_2973 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_10 = {stateMatchVec_6_10,stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,
    stateMatchVec_2_10,stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_10 = {stateMatchVec_13_10,stateMatchVec_12_10,stateMatchVec_11_10,stateMatchVec_10_10,
    stateMatchVec_9_10,stateMatchVec_8_10,stateMatchVec_7_10,stateMatch_lo_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3474 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_3474; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_438 = updateVec_6_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_439 = updateVec_6_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_1 = _updateStatus_T_438 | _updateStatus_T_439; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_1 = updateValid_6 ? updateVal_6_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3948 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_13 = _T_3948 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3932 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_13 = _T_3932 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3916 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_13 = _T_3916 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3900 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_13 = _T_3900 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3884 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_13 = _T_3884 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3868 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_13 = _T_3868 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3852 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_13 = _T_3852 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3836 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_3836 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3820 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_3820 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3804 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_3804 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3788 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_3788 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3772 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_3772 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3756 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_3756 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3740 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_3740 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_13 = {stateMatchVec_6_13,stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,
    stateMatchVec_2_13,stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_13 = {stateMatchVec_13_13,stateMatchVec_12_13,stateMatchVec_11_13,stateMatchVec_10_13,
    stateMatchVec_9_13,stateMatchVec_8_13,stateMatchVec_7_13,stateMatch_lo_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_1 = updateVec_6_0 & io_update_0_data_srcState_1 | updateVec_6_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3992 = updateValid_6 ? updateVal_6_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_3992; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_435 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_436 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_435 | _updateStatus_T_436; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3697 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_12 = _T_3697 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3681 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_12 = _T_3681 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3665 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_12 = _T_3665 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3649 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_12 = _T_3649 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3633 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_12 = _T_3633 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3617 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_12 = _T_3617 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3601 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_12 = _T_3601 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3585 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_3585 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3569 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_3569 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3553 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_3553 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3537 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_3537 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3521 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_3521 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3505 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_3505 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3489 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_3489 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_12 = {stateMatchVec_6_12,stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,
    stateMatchVec_2_12,stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_12 = {stateMatchVec_13_12,stateMatchVec_12_12,stateMatchVec_11_12,stateMatchVec_10_12,
    stateMatchVec_9_12,stateMatchVec_8_12,stateMatchVec_7_12,stateMatch_lo_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3990 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_3990; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_504 = updateVec_7_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_505 = updateVec_7_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_1 = _updateStatus_T_504 | _updateStatus_T_505; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_1 = updateValid_7 ? updateVal_7_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4464 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_15 = _T_4464 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4448 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_15 = _T_4448 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4432 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_15 = _T_4432 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4416 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_15 = _T_4416 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4400 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_15 = _T_4400 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4384 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_15 = _T_4384 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4368 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_15 = _T_4368 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4352 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_4352 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4336 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_4336 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4320 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_4320 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4304 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_4304 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4288 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_4288 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4272 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_4272 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4256 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_4256 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_15 = {stateMatchVec_6_15,stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,
    stateMatchVec_2_15,stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_15 = {stateMatchVec_13_15,stateMatchVec_12_15,stateMatchVec_11_15,stateMatchVec_10_15,
    stateMatchVec_9_15,stateMatchVec_8_15,stateMatchVec_7_15,stateMatch_lo_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_1 = updateVec_7_0 & io_update_0_data_srcState_1 | updateVec_7_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4508 = updateValid_7 ? updateVal_7_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_4508; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_501 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_502 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_501 | _updateStatus_T_502; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4213 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_14 = _T_4213 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4197 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_14 = _T_4197 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4181 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_14 = _T_4181 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4165 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_14 = _T_4165 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4149 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_14 = _T_4149 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4133 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_14 = _T_4133 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4117 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_14 = _T_4117 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4101 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_4101 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4085 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_4085 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4069 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_4069 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4053 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_4053 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4037 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_4037 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4021 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_4021 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4005 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_4005 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_14 = {stateMatchVec_6_14,stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,
    stateMatchVec_2_14,stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_14 = {stateMatchVec_13_14,stateMatchVec_12_14,stateMatchVec_11_14,stateMatchVec_10_14,
    stateMatchVec_9_14,stateMatchVec_8_14,stateMatchVec_7_14,stateMatch_lo_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4506 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_4506; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_570 = updateVec_8_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_571 = updateVec_8_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_1 = _updateStatus_T_570 | _updateStatus_T_571; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_1 = updateValid_8 ? updateVal_8_psrc_1 : statusArray_8_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4980 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_17 = _T_4980 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4964 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_17 = _T_4964 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4948 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_17 = _T_4948 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4932 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_17 = _T_4932 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4916 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_17 = _T_4916 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4900 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_17 = _T_4900 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4884 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_17 = _T_4884 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4868 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_17 = _T_4868 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4852 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_17 = _T_4852 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4836 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_17 = _T_4836 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4820 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_17 = _T_4820 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4804 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_17 = _T_4804 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4788 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_17 = _T_4788 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4772 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_17 = _T_4772 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_17 = {stateMatchVec_6_17,stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,
    stateMatchVec_2_17,stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_17 = {stateMatchVec_13_17,stateMatchVec_12_17,stateMatchVec_11_17,stateMatchVec_10_17,
    stateMatchVec_9_17,stateMatchVec_8_17,stateMatchVec_7_17,stateMatch_lo_17}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_8 = |_stateMatch_T_17; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_1 = updateVec_8_0 & io_update_0_data_srcState_1 | updateVec_8_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5024 = updateValid_8 ? updateVal_8_srcState_1 : statusArray_8_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_1 = stateWakeupEn_1_8 | _T_5024; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_567 = updateVec_8_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_568 = updateVec_8_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_0 = _updateStatus_T_567 | _updateStatus_T_568; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4729 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_16 = _T_4729 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4713 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_16 = _T_4713 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4697 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_16 = _T_4697 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4681 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_16 = _T_4681 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4665 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_16 = _T_4665 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4649 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_16 = _T_4649 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4633 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_16 = _T_4633 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4617 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_16 = _T_4617 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4601 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_16 = _T_4601 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4585 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_16 = _T_4585 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4569 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_16 = _T_4569 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4553 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_16 = _T_4553 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4537 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_16 = _T_4537 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4521 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_16 = _T_4521 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_16 = {stateMatchVec_6_16,stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,
    stateMatchVec_2_16,stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_16 = {stateMatchVec_13_16,stateMatchVec_12_16,stateMatchVec_11_16,stateMatchVec_10_16,
    stateMatchVec_9_16,stateMatchVec_8_16,stateMatchVec_7_16,stateMatch_lo_16}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_16; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5022 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_5022; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_40 = {statusArrayNext_8_srcState_1,statusArrayNext_8_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_8 = &_readyVecNext_T_40; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_636 = updateVec_9_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_637 = updateVec_9_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_1 = _updateStatus_T_636 | _updateStatus_T_637; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_1 = updateValid_9 ? updateVal_9_psrc_1 : statusArray_9_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_5496 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_19 = _T_5496 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5480 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_19 = _T_5480 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5464 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_19 = _T_5464 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5448 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_19 = _T_5448 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5432 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_19 = _T_5432 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5416 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_19 = _T_5416 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5400 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_19 = _T_5400 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5384 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_19 = _T_5384 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5368 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_19 = _T_5368 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5352 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_19 = _T_5352 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5336 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_19 = _T_5336 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5320 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_19 = _T_5320 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5304 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_19 = _T_5304 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5288 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_19 = _T_5288 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_19 = {stateMatchVec_6_19,stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,
    stateMatchVec_2_19,stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_19 = {stateMatchVec_13_19,stateMatchVec_12_19,stateMatchVec_11_19,stateMatchVec_10_19,
    stateMatchVec_9_19,stateMatchVec_8_19,stateMatchVec_7_19,stateMatch_lo_19}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_9 = |_stateMatch_T_19; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_1 = updateVec_9_0 & io_update_0_data_srcState_1 | updateVec_9_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5540 = updateValid_9 ? updateVal_9_srcState_1 : statusArray_9_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_1 = stateWakeupEn_1_9 | _T_5540; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_633 = updateVec_9_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_634 = updateVec_9_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_0 = _updateStatus_T_633 | _updateStatus_T_634; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5245 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_18 = _T_5245 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5229 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_18 = _T_5229 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5213 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_18 = _T_5213 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5197 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_18 = _T_5197 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5181 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_18 = _T_5181 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5165 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_18 = _T_5165 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5149 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_18 = _T_5149 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5133 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_18 = _T_5133 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5117 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_18 = _T_5117 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5101 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_18 = _T_5101 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5085 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_18 = _T_5085 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5069 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_18 = _T_5069 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5053 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_18 = _T_5053 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5037 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_18 = _T_5037 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_18 = {stateMatchVec_6_18,stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,
    stateMatchVec_2_18,stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_18 = {stateMatchVec_13_18,stateMatchVec_12_18,stateMatchVec_11_18,stateMatchVec_10_18,
    stateMatchVec_9_18,stateMatchVec_8_18,stateMatchVec_7_18,stateMatch_lo_18}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_18; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5538 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_5538; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_45 = {statusArrayNext_9_srcState_1,statusArrayNext_9_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_9 = &_readyVecNext_T_45; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_702 = updateVec_10_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_703 = updateVec_10_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_1 = _updateStatus_T_702 | _updateStatus_T_703; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_1 = updateValid_10 ? updateVal_10_psrc_1 : statusArray_10_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_6012 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_21 = _T_6012 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5996 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_21 = _T_5996 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5980 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_21 = _T_5980 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5964 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_21 = _T_5964 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5948 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_21 = _T_5948 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5932 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_21 = _T_5932 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5916 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_21 = _T_5916 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5900 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_21 = _T_5900 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5884 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_21 = _T_5884 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5868 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_21 = _T_5868 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5852 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_21 = _T_5852 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5836 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_21 = _T_5836 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5820 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_21 = _T_5820 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5804 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_21 = _T_5804 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_21 = {stateMatchVec_6_21,stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,
    stateMatchVec_2_21,stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_21 = {stateMatchVec_13_21,stateMatchVec_12_21,stateMatchVec_11_21,stateMatchVec_10_21,
    stateMatchVec_9_21,stateMatchVec_8_21,stateMatchVec_7_21,stateMatch_lo_21}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_10 = |_stateMatch_T_21; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_1 = updateVec_10_0 & io_update_0_data_srcState_1 | updateVec_10_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_6056 = updateValid_10 ? updateVal_10_srcState_1 : statusArray_10_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_1 = stateWakeupEn_1_10 | _T_6056; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_699 = updateVec_10_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_700 = updateVec_10_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_0 = _updateStatus_T_699 | _updateStatus_T_700; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5761 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_20 = _T_5761 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5745 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_20 = _T_5745 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5729 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_20 = _T_5729 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5713 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_20 = _T_5713 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5697 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_20 = _T_5697 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5681 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_20 = _T_5681 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5665 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_20 = _T_5665 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5649 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_20 = _T_5649 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5633 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_20 = _T_5633 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5617 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_20 = _T_5617 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5601 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_20 = _T_5601 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5585 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_20 = _T_5585 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5569 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_20 = _T_5569 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5553 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_20 = _T_5553 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_20 = {stateMatchVec_6_20,stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,
    stateMatchVec_2_20,stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_20 = {stateMatchVec_13_20,stateMatchVec_12_20,stateMatchVec_11_20,stateMatchVec_10_20,
    stateMatchVec_9_20,stateMatchVec_8_20,stateMatchVec_7_20,stateMatch_lo_20}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_20; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6054 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_6054; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_50 = {statusArrayNext_10_srcState_1,statusArrayNext_10_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_10 = &_readyVecNext_T_50; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_768 = updateVec_11_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_769 = updateVec_11_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_1 = _updateStatus_T_768 | _updateStatus_T_769; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_1 = updateValid_11 ? updateVal_11_psrc_1 : statusArray_11_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_6528 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_23 = _T_6528 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6512 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_23 = _T_6512 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6496 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_23 = _T_6496 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6480 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_23 = _T_6480 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6464 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_23 = _T_6464 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6448 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_23 = _T_6448 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6432 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_23 = _T_6432 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6416 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_23 = _T_6416 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6400 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_23 = _T_6400 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6384 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_23 = _T_6384 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6368 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_23 = _T_6368 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6352 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_23 = _T_6352 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6336 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_23 = _T_6336 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6320 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_23 = _T_6320 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_23 = {stateMatchVec_6_23,stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,
    stateMatchVec_2_23,stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_23 = {stateMatchVec_13_23,stateMatchVec_12_23,stateMatchVec_11_23,stateMatchVec_10_23,
    stateMatchVec_9_23,stateMatchVec_8_23,stateMatchVec_7_23,stateMatch_lo_23}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_11 = |_stateMatch_T_23; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_1 = updateVec_11_0 & io_update_0_data_srcState_1 | updateVec_11_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_6572 = updateValid_11 ? updateVal_11_srcState_1 : statusArray_11_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_1 = stateWakeupEn_1_11 | _T_6572; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_765 = updateVec_11_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_766 = updateVec_11_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_0 = _updateStatus_T_765 | _updateStatus_T_766; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6277 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_22 = _T_6277 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6261 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_22 = _T_6261 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6245 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_22 = _T_6245 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6229 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_22 = _T_6229 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6213 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_22 = _T_6213 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6197 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_22 = _T_6197 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6181 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_22 = _T_6181 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6165 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_22 = _T_6165 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6149 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_22 = _T_6149 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6133 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_22 = _T_6133 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6117 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_22 = _T_6117 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6101 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_22 = _T_6101 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6085 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_22 = _T_6085 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6069 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_22 = _T_6069 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_22 = {stateMatchVec_6_22,stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,
    stateMatchVec_2_22,stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_22 = {stateMatchVec_13_22,stateMatchVec_12_22,stateMatchVec_11_22,stateMatchVec_10_22,
    stateMatchVec_9_22,stateMatchVec_8_22,stateMatchVec_7_22,stateMatch_lo_22}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_22; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6570 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_6570; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_55 = {statusArrayNext_11_srcState_1,statusArrayNext_11_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_11 = &_readyVecNext_T_55; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_834 = updateVec_12_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_835 = updateVec_12_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_1 = _updateStatus_T_834 | _updateStatus_T_835; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_1 = updateValid_12 ? updateVal_12_psrc_1 : statusArray_12_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_7044 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_25 = _T_7044 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7028 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_25 = _T_7028 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7012 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_25 = _T_7012 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6996 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_25 = _T_6996 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6980 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_25 = _T_6980 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6964 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_25 = _T_6964 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6948 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_25 = _T_6948 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6932 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_25 = _T_6932 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6916 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_25 = _T_6916 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6900 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_25 = _T_6900 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6884 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_25 = _T_6884 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6868 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_25 = _T_6868 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6852 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_25 = _T_6852 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6836 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_25 = _T_6836 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_25 = {stateMatchVec_6_25,stateMatchVec_5_25,stateMatchVec_4_25,stateMatchVec_3_25,
    stateMatchVec_2_25,stateMatchVec_1_25,stateMatchVec_0_25}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_25 = {stateMatchVec_13_25,stateMatchVec_12_25,stateMatchVec_11_25,stateMatchVec_10_25,
    stateMatchVec_9_25,stateMatchVec_8_25,stateMatchVec_7_25,stateMatch_lo_25}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_12 = |_stateMatch_T_25; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_1 = updateVec_12_0 & io_update_0_data_srcState_1 | updateVec_12_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_7088 = updateValid_12 ? updateVal_12_srcState_1 : statusArray_12_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_1 = stateWakeupEn_1_12 | _T_7088; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_831 = updateVec_12_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_832 = updateVec_12_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_0 = _updateStatus_T_831 | _updateStatus_T_832; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6793 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_24 = _T_6793 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6777 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_24 = _T_6777 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6761 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_24 = _T_6761 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6745 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_24 = _T_6745 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6729 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_24 = _T_6729 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6713 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_24 = _T_6713 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6697 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_24 = _T_6697 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6681 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_24 = _T_6681 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6665 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_24 = _T_6665 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6649 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_24 = _T_6649 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6633 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_24 = _T_6633 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6617 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_24 = _T_6617 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6601 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_24 = _T_6601 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6585 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_24 = _T_6585 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_24 = {stateMatchVec_6_24,stateMatchVec_5_24,stateMatchVec_4_24,stateMatchVec_3_24,
    stateMatchVec_2_24,stateMatchVec_1_24,stateMatchVec_0_24}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_24 = {stateMatchVec_13_24,stateMatchVec_12_24,stateMatchVec_11_24,stateMatchVec_10_24,
    stateMatchVec_9_24,stateMatchVec_8_24,stateMatchVec_7_24,stateMatch_lo_24}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_24; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_7086 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_7086; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_60 = {statusArrayNext_12_srcState_1,statusArrayNext_12_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_12 = &_readyVecNext_T_60; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_900 = updateVec_13_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_901 = updateVec_13_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_1 = _updateStatus_T_900 | _updateStatus_T_901; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_1 = updateValid_13 ? updateVal_13_psrc_1 : statusArray_13_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_7560 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_27 = _T_7560 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7544 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_27 = _T_7544 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7528 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_27 = _T_7528 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7512 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_27 = _T_7512 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7496 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_27 = _T_7496 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7480 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_27 = _T_7480 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7464 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_27 = _T_7464 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7448 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_27 = _T_7448 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7432 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_27 = _T_7432 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7416 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_27 = _T_7416 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7400 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_27 = _T_7400 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7384 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_27 = _T_7384 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7368 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_27 = _T_7368 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7352 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_27 = _T_7352 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_27 = {stateMatchVec_6_27,stateMatchVec_5_27,stateMatchVec_4_27,stateMatchVec_3_27,
    stateMatchVec_2_27,stateMatchVec_1_27,stateMatchVec_0_27}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_27 = {stateMatchVec_13_27,stateMatchVec_12_27,stateMatchVec_11_27,stateMatchVec_10_27,
    stateMatchVec_9_27,stateMatchVec_8_27,stateMatchVec_7_27,stateMatch_lo_27}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_13 = |_stateMatch_T_27; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_1 = updateVec_13_0 & io_update_0_data_srcState_1 | updateVec_13_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_7604 = updateValid_13 ? updateVal_13_srcState_1 : statusArray_13_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_1 = stateWakeupEn_1_13 | _T_7604; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_897 = updateVec_13_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_898 = updateVec_13_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_0 = _updateStatus_T_897 | _updateStatus_T_898; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_7309 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_26 = _T_7309 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7293 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_26 = _T_7293 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7277 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_26 = _T_7277 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7261 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_26 = _T_7261 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7245 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_26 = _T_7245 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7229 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_26 = _T_7229 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7213 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_26 = _T_7213 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7197 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_26 = _T_7197 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7181 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_26 = _T_7181 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7165 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_26 = _T_7165 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7149 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_26 = _T_7149 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7133 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_26 = _T_7133 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7117 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_26 = _T_7117 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7101 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_26 = _T_7101 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_26 = {stateMatchVec_6_26,stateMatchVec_5_26,stateMatchVec_4_26,stateMatchVec_3_26,
    stateMatchVec_2_26,stateMatchVec_1_26,stateMatchVec_0_26}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_26 = {stateMatchVec_13_26,stateMatchVec_12_26,stateMatchVec_11_26,stateMatchVec_10_26,
    stateMatchVec_9_26,stateMatchVec_8_26,stateMatchVec_7_26,stateMatch_lo_26}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_26; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_7602 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_7602; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_65 = {statusArrayNext_13_srcState_1,statusArrayNext_13_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_13 = &_readyVecNext_T_65; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_966 = updateVec_14_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_967 = updateVec_14_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_1 = _updateStatus_T_966 | _updateStatus_T_967; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_1 = updateValid_14 ? updateVal_14_psrc_1 : statusArray_14_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_8076 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_29 = _T_8076 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8060 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_29 = _T_8060 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8044 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_29 = _T_8044 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8028 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_29 = _T_8028 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8012 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_29 = _T_8012 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7996 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_29 = _T_7996 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7980 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_29 = _T_7980 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7964 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_29 = _T_7964 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7948 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_29 = _T_7948 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7932 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_29 = _T_7932 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7916 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_29 = _T_7916 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7900 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_29 = _T_7900 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7884 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_29 = _T_7884 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7868 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_29 = _T_7868 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_29 = {stateMatchVec_6_29,stateMatchVec_5_29,stateMatchVec_4_29,stateMatchVec_3_29,
    stateMatchVec_2_29,stateMatchVec_1_29,stateMatchVec_0_29}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_29 = {stateMatchVec_13_29,stateMatchVec_12_29,stateMatchVec_11_29,stateMatchVec_10_29,
    stateMatchVec_9_29,stateMatchVec_8_29,stateMatchVec_7_29,stateMatch_lo_29}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_14 = |_stateMatch_T_29; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_1 = updateVec_14_0 & io_update_0_data_srcState_1 | updateVec_14_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_8120 = updateValid_14 ? updateVal_14_srcState_1 : statusArray_14_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_1 = stateWakeupEn_1_14 | _T_8120; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_963 = updateVec_14_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_964 = updateVec_14_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_0 = _updateStatus_T_963 | _updateStatus_T_964; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_7825 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_28 = _T_7825 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7809 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_28 = _T_7809 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7793 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_28 = _T_7793 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7777 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_28 = _T_7777 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7761 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_28 = _T_7761 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7745 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_28 = _T_7745 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7729 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_28 = _T_7729 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7713 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_28 = _T_7713 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7697 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_28 = _T_7697 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7681 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_28 = _T_7681 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7665 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_28 = _T_7665 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7649 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_28 = _T_7649 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7633 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_28 = _T_7633 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7617 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_28 = _T_7617 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_28 = {stateMatchVec_6_28,stateMatchVec_5_28,stateMatchVec_4_28,stateMatchVec_3_28,
    stateMatchVec_2_28,stateMatchVec_1_28,stateMatchVec_0_28}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_28 = {stateMatchVec_13_28,stateMatchVec_12_28,stateMatchVec_11_28,stateMatchVec_10_28,
    stateMatchVec_9_28,stateMatchVec_8_28,stateMatchVec_7_28,stateMatch_lo_28}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_28; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_8118 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_8118; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_70 = {statusArrayNext_14_srcState_1,statusArrayNext_14_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_14 = &_readyVecNext_T_70; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_1032 = updateVec_15_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1033 = updateVec_15_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_1 = _updateStatus_T_1032 | _updateStatus_T_1033; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_1 = updateValid_15 ? updateVal_15_psrc_1 : statusArray_15_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_8592 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_31 = _T_8592 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8576 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_31 = _T_8576 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8560 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_31 = _T_8560 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8544 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_31 = _T_8544 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8528 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_31 = _T_8528 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8512 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_31 = _T_8512 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8496 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_31 = _T_8496 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8480 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_31 = _T_8480 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8464 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_31 = _T_8464 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8448 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_31 = _T_8448 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8432 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_31 = _T_8432 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8416 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_31 = _T_8416 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8400 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_31 = _T_8400 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8384 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_31 = _T_8384 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_31 = {stateMatchVec_6_31,stateMatchVec_5_31,stateMatchVec_4_31,stateMatchVec_3_31,
    stateMatchVec_2_31,stateMatchVec_1_31,stateMatchVec_0_31}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_31 = {stateMatchVec_13_31,stateMatchVec_12_31,stateMatchVec_11_31,stateMatchVec_10_31,
    stateMatchVec_9_31,stateMatchVec_8_31,stateMatchVec_7_31,stateMatch_lo_31}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_15 = |_stateMatch_T_31; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_1 = updateVec_15_0 & io_update_0_data_srcState_1 | updateVec_15_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_8636 = updateValid_15 ? updateVal_15_srcState_1 : statusArray_15_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_1 = stateWakeupEn_1_15 | _T_8636; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_1029 = updateVec_15_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1030 = updateVec_15_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_0 = _updateStatus_T_1029 | _updateStatus_T_1030; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_8341 = io_wakeup_13_valid & io_wakeup_13_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_13_30 = _T_8341 & io_wakeup_13_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8325 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_30 = _T_8325 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8309 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_30 = _T_8309 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8293 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_30 = _T_8293 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8277 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_30 = _T_8277 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8261 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_30 = _T_8261 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8245 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_30 = _T_8245 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8229 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_30 = _T_8229 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8213 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_30 = _T_8213 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8197 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_30 = _T_8197 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8181 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_30 = _T_8181 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8165 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_30 = _T_8165 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8149 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_30 = _T_8149 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_8133 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_30 = _T_8133 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [6:0] stateMatch_lo_30 = {stateMatchVec_6_30,stateMatchVec_5_30,stateMatchVec_4_30,stateMatchVec_3_30,
    stateMatchVec_2_30,stateMatchVec_1_30,stateMatchVec_0_30}; // @[StatusArray.scala 137:45]
  wire [13:0] _stateMatch_T_30 = {stateMatchVec_13_30,stateMatchVec_12_30,stateMatchVec_11_30,stateMatchVec_10_30,
    stateMatchVec_9_30,stateMatchVec_8_30,stateMatchVec_7_30,stateMatch_lo_30}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_30; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_8634 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_8634; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_75 = {statusArrayNext_15_srcState_1,statusArrayNext_15_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_15 = &_readyVecNext_T_75; // @[StatusArray.scala 65:38]
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
  wire [6:0] _updateStatus_T_93 = updateVec_1_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_94 = updateVec_1_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_robIdx_value = _updateStatus_T_93 | _updateStatus_T_94; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_99 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_100 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_99 | _updateStatus_T_100; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_102 = updateVec_1_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_103 = updateVec_1_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_1 = _updateStatus_T_102 | _updateStatus_T_103; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_159 = updateVec_2_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_160 = updateVec_2_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_robIdx_value = _updateStatus_T_159 | _updateStatus_T_160; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_165 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_166 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_165 | _updateStatus_T_166; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_168 = updateVec_2_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_169 = updateVec_2_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_1 = _updateStatus_T_168 | _updateStatus_T_169; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_225 = updateVec_3_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_226 = updateVec_3_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_robIdx_value = _updateStatus_T_225 | _updateStatus_T_226; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_231 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_232 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_231 | _updateStatus_T_232; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_234 = updateVec_3_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_235 = updateVec_3_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_1 = _updateStatus_T_234 | _updateStatus_T_235; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_291 = updateVec_4_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_292 = updateVec_4_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_robIdx_value = _updateStatus_T_291 | _updateStatus_T_292; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_297 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_298 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_297 | _updateStatus_T_298; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_300 = updateVec_4_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_301 = updateVec_4_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_1 = _updateStatus_T_300 | _updateStatus_T_301; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_357 = updateVec_5_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_358 = updateVec_5_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_robIdx_value = _updateStatus_T_357 | _updateStatus_T_358; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_363 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_364 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_363 | _updateStatus_T_364; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_366 = updateVec_5_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_367 = updateVec_5_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_1 = _updateStatus_T_366 | _updateStatus_T_367; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_423 = updateVec_6_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_424 = updateVec_6_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_robIdx_value = _updateStatus_T_423 | _updateStatus_T_424; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_429 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_430 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_429 | _updateStatus_T_430; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_432 = updateVec_6_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_433 = updateVec_6_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_1 = _updateStatus_T_432 | _updateStatus_T_433; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_489 = updateVec_7_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_490 = updateVec_7_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_robIdx_value = _updateStatus_T_489 | _updateStatus_T_490; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_495 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_496 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_495 | _updateStatus_T_496; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_498 = updateVec_7_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_499 = updateVec_7_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_1 = _updateStatus_T_498 | _updateStatus_T_499; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_555 = updateVec_8_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_556 = updateVec_8_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_robIdx_value = _updateStatus_T_555 | _updateStatus_T_556; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_561 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_562 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_561 | _updateStatus_T_562; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_564 = updateVec_8_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_565 = updateVec_8_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_1 = _updateStatus_T_564 | _updateStatus_T_565; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_621 = updateVec_9_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_622 = updateVec_9_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_robIdx_value = _updateStatus_T_621 | _updateStatus_T_622; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_627 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_628 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_627 | _updateStatus_T_628; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_630 = updateVec_9_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_631 = updateVec_9_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_1 = _updateStatus_T_630 | _updateStatus_T_631; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_687 = updateVec_10_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_688 = updateVec_10_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_robIdx_value = _updateStatus_T_687 | _updateStatus_T_688; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_693 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_694 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_693 | _updateStatus_T_694; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_696 = updateVec_10_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_697 = updateVec_10_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_1 = _updateStatus_T_696 | _updateStatus_T_697; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_753 = updateVec_11_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_754 = updateVec_11_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_robIdx_value = _updateStatus_T_753 | _updateStatus_T_754; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_759 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_760 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_759 | _updateStatus_T_760; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_762 = updateVec_11_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_763 = updateVec_11_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_1 = _updateStatus_T_762 | _updateStatus_T_763; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_819 = updateVec_12_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_820 = updateVec_12_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_robIdx_value = _updateStatus_T_819 | _updateStatus_T_820; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_825 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_826 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_825 | _updateStatus_T_826; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_828 = updateVec_12_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_829 = updateVec_12_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_1 = _updateStatus_T_828 | _updateStatus_T_829; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_885 = updateVec_13_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_886 = updateVec_13_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_robIdx_value = _updateStatus_T_885 | _updateStatus_T_886; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_891 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_892 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_891 | _updateStatus_T_892; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_894 = updateVec_13_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_895 = updateVec_13_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_1 = _updateStatus_T_894 | _updateStatus_T_895; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_951 = updateVec_14_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_952 = updateVec_14_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_robIdx_value = _updateStatus_T_951 | _updateStatus_T_952; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_957 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_958 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_957 | _updateStatus_T_958; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_960 = updateVec_14_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_961 = updateVec_14_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_1 = _updateStatus_T_960 | _updateStatus_T_961; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1017 = updateVec_15_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1018 = updateVec_15_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_robIdx_value = _updateStatus_T_1017 | _updateStatus_T_1018; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1023 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1024 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_1023 | _updateStatus_T_1024; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1026 = updateVec_15_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1027 = updateVec_15_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_1 = _updateStatus_T_1026 | _updateStatus_T_1027; // @[Mux.scala 27:73]
  wire  _T_395 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_403 = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_404 = _T_395 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0 = _T_393 & _T_404; // @[StatusArray.scala 134:33]
  wire  _T_411 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_420 = _T_411 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1 = _T_409 & _T_420; // @[StatusArray.scala 134:33]
  wire  _T_427 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_436 = _T_427 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2 = _T_425 & _T_436; // @[StatusArray.scala 134:33]
  wire  _T_443 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_452 = _T_443 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3 = _T_441 & _T_452; // @[StatusArray.scala 134:33]
  wire  _T_459 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_468 = _T_459 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4 = _T_457 & _T_468; // @[StatusArray.scala 134:33]
  wire  _T_475 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_484 = _T_475 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5 = _T_473 & _T_484; // @[StatusArray.scala 134:33]
  wire  _T_491 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_500 = _T_491 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6 = _T_489 & _T_500; // @[StatusArray.scala 134:33]
  wire  _T_507 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_516 = _T_507 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7 = _T_505 & _T_516; // @[StatusArray.scala 134:33]
  wire  _T_523 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_532 = _T_523 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8 = _T_521 & _T_532; // @[StatusArray.scala 134:33]
  wire  _T_539 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_548 = _T_539 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9 = _T_537 & _T_548; // @[StatusArray.scala 134:33]
  wire  _T_555 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_564 = _T_555 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10 = _T_553 & _T_564; // @[StatusArray.scala 134:33]
  wire  _T_571 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_580 = _T_571 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11 = _T_569 & _T_580; // @[StatusArray.scala 134:33]
  wire  _T_587 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_596 = _T_587 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12 = _T_585 & _T_596; // @[StatusArray.scala 134:33]
  wire  _T_603 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_612 = _T_603 & _T_403; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13 = _T_601 & _T_612; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo = {dataMatchVec_6,dataMatchVec_5,dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,
    dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi = {dataMatchVec_13,dataMatchVec_12,dataMatchVec_11,dataMatchVec_10,dataMatchVec_9,
    dataMatchVec_8,dataMatchVec_7}; // @[StatusArray.scala 138:43]
  wire  _T_646 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? updateVal_0_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_654 = statusArrayNext_0_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_655 = _T_646 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_1 = _T_644 & _T_655; // @[StatusArray.scala 134:33]
  wire  _T_662 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_671 = _T_662 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_1 = _T_660 & _T_671; // @[StatusArray.scala 134:33]
  wire  _T_678 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_687 = _T_678 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_1 = _T_676 & _T_687; // @[StatusArray.scala 134:33]
  wire  _T_694 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_703 = _T_694 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_1 = _T_692 & _T_703; // @[StatusArray.scala 134:33]
  wire  _T_710 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_719 = _T_710 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_1 = _T_708 & _T_719; // @[StatusArray.scala 134:33]
  wire  _T_726 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_735 = _T_726 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_1 = _T_724 & _T_735; // @[StatusArray.scala 134:33]
  wire  _T_742 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_751 = _T_742 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_1 = _T_740 & _T_751; // @[StatusArray.scala 134:33]
  wire  _T_758 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_767 = _T_758 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_1 = _T_756 & _T_767; // @[StatusArray.scala 134:33]
  wire  _T_774 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_783 = _T_774 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_1 = _T_772 & _T_783; // @[StatusArray.scala 134:33]
  wire  _T_790 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_799 = _T_790 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_1 = _T_788 & _T_799; // @[StatusArray.scala 134:33]
  wire  _T_806 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_815 = _T_806 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_1 = _T_804 & _T_815; // @[StatusArray.scala 134:33]
  wire  _T_822 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_831 = _T_822 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_1 = _T_820 & _T_831; // @[StatusArray.scala 134:33]
  wire  _T_838 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_847 = _T_838 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_1 = _T_836 & _T_847; // @[StatusArray.scala 134:33]
  wire  _T_854 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_863 = _T_854 & _T_654; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_1 = _T_852 & _T_863; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_1 = {dataMatchVec_6_1,dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,
    dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_1 = {dataMatchVec_13_1,dataMatchVec_12_1,dataMatchVec_11_1,dataMatchVec_10_1,dataMatchVec_9_1,
    dataMatchVec_8_1,dataMatchVec_7_1}; // @[StatusArray.scala 138:43]
  wire  _T_911 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_919 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_920 = _T_911 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_2 = _T_909 & _T_920; // @[StatusArray.scala 134:33]
  wire  _T_927 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_936 = _T_927 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_2 = _T_925 & _T_936; // @[StatusArray.scala 134:33]
  wire  _T_943 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_952 = _T_943 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_2 = _T_941 & _T_952; // @[StatusArray.scala 134:33]
  wire  _T_959 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_968 = _T_959 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_2 = _T_957 & _T_968; // @[StatusArray.scala 134:33]
  wire  _T_975 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_984 = _T_975 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_2 = _T_973 & _T_984; // @[StatusArray.scala 134:33]
  wire  _T_991 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1000 = _T_991 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_2 = _T_989 & _T_1000; // @[StatusArray.scala 134:33]
  wire  _T_1007 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1016 = _T_1007 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_2 = _T_1005 & _T_1016; // @[StatusArray.scala 134:33]
  wire  _T_1023 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1032 = _T_1023 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_2 = _T_1021 & _T_1032; // @[StatusArray.scala 134:33]
  wire  _T_1039 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1048 = _T_1039 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_2 = _T_1037 & _T_1048; // @[StatusArray.scala 134:33]
  wire  _T_1055 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1064 = _T_1055 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_2 = _T_1053 & _T_1064; // @[StatusArray.scala 134:33]
  wire  _T_1071 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1080 = _T_1071 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_2 = _T_1069 & _T_1080; // @[StatusArray.scala 134:33]
  wire  _T_1087 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1096 = _T_1087 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_2 = _T_1085 & _T_1096; // @[StatusArray.scala 134:33]
  wire  _T_1103 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1112 = _T_1103 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_2 = _T_1101 & _T_1112; // @[StatusArray.scala 134:33]
  wire  _T_1119 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1128 = _T_1119 & _T_919; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_2 = _T_1117 & _T_1128; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_2 = {dataMatchVec_6_2,dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,
    dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_2 = {dataMatchVec_13_2,dataMatchVec_12_2,dataMatchVec_11_2,dataMatchVec_10_2,dataMatchVec_9_2,
    dataMatchVec_8_2,dataMatchVec_7_2}; // @[StatusArray.scala 138:43]
  wire  _T_1162 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? updateVal_1_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1170 = statusArrayNext_1_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1171 = _T_1162 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_3 = _T_1160 & _T_1171; // @[StatusArray.scala 134:33]
  wire  _T_1178 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1187 = _T_1178 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_3 = _T_1176 & _T_1187; // @[StatusArray.scala 134:33]
  wire  _T_1194 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1203 = _T_1194 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_3 = _T_1192 & _T_1203; // @[StatusArray.scala 134:33]
  wire  _T_1210 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1219 = _T_1210 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_3 = _T_1208 & _T_1219; // @[StatusArray.scala 134:33]
  wire  _T_1226 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1235 = _T_1226 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_3 = _T_1224 & _T_1235; // @[StatusArray.scala 134:33]
  wire  _T_1242 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1251 = _T_1242 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_3 = _T_1240 & _T_1251; // @[StatusArray.scala 134:33]
  wire  _T_1258 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1267 = _T_1258 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_3 = _T_1256 & _T_1267; // @[StatusArray.scala 134:33]
  wire  _T_1274 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1283 = _T_1274 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_3 = _T_1272 & _T_1283; // @[StatusArray.scala 134:33]
  wire  _T_1290 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1299 = _T_1290 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_3 = _T_1288 & _T_1299; // @[StatusArray.scala 134:33]
  wire  _T_1306 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1315 = _T_1306 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_3 = _T_1304 & _T_1315; // @[StatusArray.scala 134:33]
  wire  _T_1322 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1331 = _T_1322 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_3 = _T_1320 & _T_1331; // @[StatusArray.scala 134:33]
  wire  _T_1338 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1347 = _T_1338 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_3 = _T_1336 & _T_1347; // @[StatusArray.scala 134:33]
  wire  _T_1354 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1363 = _T_1354 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_3 = _T_1352 & _T_1363; // @[StatusArray.scala 134:33]
  wire  _T_1370 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1379 = _T_1370 & _T_1170; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_3 = _T_1368 & _T_1379; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_3 = {dataMatchVec_6_3,dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,
    dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_3 = {dataMatchVec_13_3,dataMatchVec_12_3,dataMatchVec_11_3,dataMatchVec_10_3,dataMatchVec_9_3,
    dataMatchVec_8_3,dataMatchVec_7_3}; // @[StatusArray.scala 138:43]
  wire  _T_1427 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1435 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1436 = _T_1427 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_4 = _T_1425 & _T_1436; // @[StatusArray.scala 134:33]
  wire  _T_1443 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1452 = _T_1443 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_4 = _T_1441 & _T_1452; // @[StatusArray.scala 134:33]
  wire  _T_1459 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1468 = _T_1459 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_4 = _T_1457 & _T_1468; // @[StatusArray.scala 134:33]
  wire  _T_1475 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1484 = _T_1475 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_4 = _T_1473 & _T_1484; // @[StatusArray.scala 134:33]
  wire  _T_1491 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1500 = _T_1491 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_4 = _T_1489 & _T_1500; // @[StatusArray.scala 134:33]
  wire  _T_1507 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1516 = _T_1507 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_4 = _T_1505 & _T_1516; // @[StatusArray.scala 134:33]
  wire  _T_1523 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1532 = _T_1523 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_4 = _T_1521 & _T_1532; // @[StatusArray.scala 134:33]
  wire  _T_1539 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1548 = _T_1539 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_4 = _T_1537 & _T_1548; // @[StatusArray.scala 134:33]
  wire  _T_1555 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1564 = _T_1555 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_4 = _T_1553 & _T_1564; // @[StatusArray.scala 134:33]
  wire  _T_1571 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1580 = _T_1571 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_4 = _T_1569 & _T_1580; // @[StatusArray.scala 134:33]
  wire  _T_1587 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1596 = _T_1587 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_4 = _T_1585 & _T_1596; // @[StatusArray.scala 134:33]
  wire  _T_1603 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1612 = _T_1603 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_4 = _T_1601 & _T_1612; // @[StatusArray.scala 134:33]
  wire  _T_1619 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1628 = _T_1619 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_4 = _T_1617 & _T_1628; // @[StatusArray.scala 134:33]
  wire  _T_1635 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1644 = _T_1635 & _T_1435; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_4 = _T_1633 & _T_1644; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_4 = {dataMatchVec_6_4,dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,
    dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_4 = {dataMatchVec_13_4,dataMatchVec_12_4,dataMatchVec_11_4,dataMatchVec_10_4,dataMatchVec_9_4,
    dataMatchVec_8_4,dataMatchVec_7_4}; // @[StatusArray.scala 138:43]
  wire  _T_1678 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? updateVal_2_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1686 = statusArrayNext_2_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1687 = _T_1678 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_5 = _T_1676 & _T_1687; // @[StatusArray.scala 134:33]
  wire  _T_1694 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1703 = _T_1694 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_5 = _T_1692 & _T_1703; // @[StatusArray.scala 134:33]
  wire  _T_1710 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1719 = _T_1710 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_5 = _T_1708 & _T_1719; // @[StatusArray.scala 134:33]
  wire  _T_1726 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1735 = _T_1726 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_5 = _T_1724 & _T_1735; // @[StatusArray.scala 134:33]
  wire  _T_1742 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1751 = _T_1742 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_5 = _T_1740 & _T_1751; // @[StatusArray.scala 134:33]
  wire  _T_1758 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1767 = _T_1758 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_5 = _T_1756 & _T_1767; // @[StatusArray.scala 134:33]
  wire  _T_1774 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1783 = _T_1774 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_5 = _T_1772 & _T_1783; // @[StatusArray.scala 134:33]
  wire  _T_1790 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1799 = _T_1790 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_5 = _T_1788 & _T_1799; // @[StatusArray.scala 134:33]
  wire  _T_1806 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1815 = _T_1806 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_5 = _T_1804 & _T_1815; // @[StatusArray.scala 134:33]
  wire  _T_1822 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1831 = _T_1822 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_5 = _T_1820 & _T_1831; // @[StatusArray.scala 134:33]
  wire  _T_1838 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1847 = _T_1838 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_5 = _T_1836 & _T_1847; // @[StatusArray.scala 134:33]
  wire  _T_1854 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1863 = _T_1854 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_5 = _T_1852 & _T_1863; // @[StatusArray.scala 134:33]
  wire  _T_1870 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1879 = _T_1870 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_5 = _T_1868 & _T_1879; // @[StatusArray.scala 134:33]
  wire  _T_1886 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1895 = _T_1886 & _T_1686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_5 = _T_1884 & _T_1895; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_5 = {dataMatchVec_6_5,dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,
    dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_5 = {dataMatchVec_13_5,dataMatchVec_12_5,dataMatchVec_11_5,dataMatchVec_10_5,dataMatchVec_9_5,
    dataMatchVec_8_5,dataMatchVec_7_5}; // @[StatusArray.scala 138:43]
  wire  _T_1943 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1951 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1952 = _T_1943 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_6 = _T_1941 & _T_1952; // @[StatusArray.scala 134:33]
  wire  _T_1959 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1968 = _T_1959 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_6 = _T_1957 & _T_1968; // @[StatusArray.scala 134:33]
  wire  _T_1975 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1984 = _T_1975 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_6 = _T_1973 & _T_1984; // @[StatusArray.scala 134:33]
  wire  _T_1991 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2000 = _T_1991 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_6 = _T_1989 & _T_2000; // @[StatusArray.scala 134:33]
  wire  _T_2007 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2016 = _T_2007 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_6 = _T_2005 & _T_2016; // @[StatusArray.scala 134:33]
  wire  _T_2023 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2032 = _T_2023 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_6 = _T_2021 & _T_2032; // @[StatusArray.scala 134:33]
  wire  _T_2039 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2048 = _T_2039 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_6 = _T_2037 & _T_2048; // @[StatusArray.scala 134:33]
  wire  _T_2055 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2064 = _T_2055 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_6 = _T_2053 & _T_2064; // @[StatusArray.scala 134:33]
  wire  _T_2071 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2080 = _T_2071 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_6 = _T_2069 & _T_2080; // @[StatusArray.scala 134:33]
  wire  _T_2087 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2096 = _T_2087 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_6 = _T_2085 & _T_2096; // @[StatusArray.scala 134:33]
  wire  _T_2103 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2112 = _T_2103 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_6 = _T_2101 & _T_2112; // @[StatusArray.scala 134:33]
  wire  _T_2119 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2128 = _T_2119 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_6 = _T_2117 & _T_2128; // @[StatusArray.scala 134:33]
  wire  _T_2135 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2144 = _T_2135 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_6 = _T_2133 & _T_2144; // @[StatusArray.scala 134:33]
  wire  _T_2151 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2160 = _T_2151 & _T_1951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_6 = _T_2149 & _T_2160; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_6 = {dataMatchVec_6_6,dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,
    dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_6 = {dataMatchVec_13_6,dataMatchVec_12_6,dataMatchVec_11_6,dataMatchVec_10_6,dataMatchVec_9_6,
    dataMatchVec_8_6,dataMatchVec_7_6}; // @[StatusArray.scala 138:43]
  wire  _T_2194 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? updateVal_3_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2202 = statusArrayNext_3_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2203 = _T_2194 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_7 = _T_2192 & _T_2203; // @[StatusArray.scala 134:33]
  wire  _T_2210 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2219 = _T_2210 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_7 = _T_2208 & _T_2219; // @[StatusArray.scala 134:33]
  wire  _T_2226 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2235 = _T_2226 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_7 = _T_2224 & _T_2235; // @[StatusArray.scala 134:33]
  wire  _T_2242 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2251 = _T_2242 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_7 = _T_2240 & _T_2251; // @[StatusArray.scala 134:33]
  wire  _T_2258 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2267 = _T_2258 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_7 = _T_2256 & _T_2267; // @[StatusArray.scala 134:33]
  wire  _T_2274 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2283 = _T_2274 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_7 = _T_2272 & _T_2283; // @[StatusArray.scala 134:33]
  wire  _T_2290 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2299 = _T_2290 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_7 = _T_2288 & _T_2299; // @[StatusArray.scala 134:33]
  wire  _T_2306 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2315 = _T_2306 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_7 = _T_2304 & _T_2315; // @[StatusArray.scala 134:33]
  wire  _T_2322 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2331 = _T_2322 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_7 = _T_2320 & _T_2331; // @[StatusArray.scala 134:33]
  wire  _T_2338 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2347 = _T_2338 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_7 = _T_2336 & _T_2347; // @[StatusArray.scala 134:33]
  wire  _T_2354 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2363 = _T_2354 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_7 = _T_2352 & _T_2363; // @[StatusArray.scala 134:33]
  wire  _T_2370 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2379 = _T_2370 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_7 = _T_2368 & _T_2379; // @[StatusArray.scala 134:33]
  wire  _T_2386 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2395 = _T_2386 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_7 = _T_2384 & _T_2395; // @[StatusArray.scala 134:33]
  wire  _T_2402 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2411 = _T_2402 & _T_2202; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_7 = _T_2400 & _T_2411; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_7 = {dataMatchVec_6_7,dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,
    dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_7 = {dataMatchVec_13_7,dataMatchVec_12_7,dataMatchVec_11_7,dataMatchVec_10_7,dataMatchVec_9_7,
    dataMatchVec_8_7,dataMatchVec_7_7}; // @[StatusArray.scala 138:43]
  wire  _T_2459 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2467 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2468 = _T_2459 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_8 = _T_2457 & _T_2468; // @[StatusArray.scala 134:33]
  wire  _T_2475 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2484 = _T_2475 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_8 = _T_2473 & _T_2484; // @[StatusArray.scala 134:33]
  wire  _T_2491 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2500 = _T_2491 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_8 = _T_2489 & _T_2500; // @[StatusArray.scala 134:33]
  wire  _T_2507 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2516 = _T_2507 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_8 = _T_2505 & _T_2516; // @[StatusArray.scala 134:33]
  wire  _T_2523 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2532 = _T_2523 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_8 = _T_2521 & _T_2532; // @[StatusArray.scala 134:33]
  wire  _T_2539 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2548 = _T_2539 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_8 = _T_2537 & _T_2548; // @[StatusArray.scala 134:33]
  wire  _T_2555 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2564 = _T_2555 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_8 = _T_2553 & _T_2564; // @[StatusArray.scala 134:33]
  wire  _T_2571 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2580 = _T_2571 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_8 = _T_2569 & _T_2580; // @[StatusArray.scala 134:33]
  wire  _T_2587 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2596 = _T_2587 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_8 = _T_2585 & _T_2596; // @[StatusArray.scala 134:33]
  wire  _T_2603 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2612 = _T_2603 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_8 = _T_2601 & _T_2612; // @[StatusArray.scala 134:33]
  wire  _T_2619 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2628 = _T_2619 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_8 = _T_2617 & _T_2628; // @[StatusArray.scala 134:33]
  wire  _T_2635 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2644 = _T_2635 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_8 = _T_2633 & _T_2644; // @[StatusArray.scala 134:33]
  wire  _T_2651 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2660 = _T_2651 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_8 = _T_2649 & _T_2660; // @[StatusArray.scala 134:33]
  wire  _T_2667 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2676 = _T_2667 & _T_2467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_8 = _T_2665 & _T_2676; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_8 = {dataMatchVec_6_8,dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,
    dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_8 = {dataMatchVec_13_8,dataMatchVec_12_8,dataMatchVec_11_8,dataMatchVec_10_8,dataMatchVec_9_8,
    dataMatchVec_8_8,dataMatchVec_7_8}; // @[StatusArray.scala 138:43]
  wire  _T_2710 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? updateVal_4_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2718 = statusArrayNext_4_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2719 = _T_2710 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_9 = _T_2708 & _T_2719; // @[StatusArray.scala 134:33]
  wire  _T_2726 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2735 = _T_2726 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_9 = _T_2724 & _T_2735; // @[StatusArray.scala 134:33]
  wire  _T_2742 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2751 = _T_2742 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_9 = _T_2740 & _T_2751; // @[StatusArray.scala 134:33]
  wire  _T_2758 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2767 = _T_2758 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_9 = _T_2756 & _T_2767; // @[StatusArray.scala 134:33]
  wire  _T_2774 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2783 = _T_2774 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_9 = _T_2772 & _T_2783; // @[StatusArray.scala 134:33]
  wire  _T_2790 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2799 = _T_2790 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_9 = _T_2788 & _T_2799; // @[StatusArray.scala 134:33]
  wire  _T_2806 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2815 = _T_2806 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_9 = _T_2804 & _T_2815; // @[StatusArray.scala 134:33]
  wire  _T_2822 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2831 = _T_2822 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_9 = _T_2820 & _T_2831; // @[StatusArray.scala 134:33]
  wire  _T_2838 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2847 = _T_2838 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_9 = _T_2836 & _T_2847; // @[StatusArray.scala 134:33]
  wire  _T_2854 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2863 = _T_2854 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_9 = _T_2852 & _T_2863; // @[StatusArray.scala 134:33]
  wire  _T_2870 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2879 = _T_2870 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_9 = _T_2868 & _T_2879; // @[StatusArray.scala 134:33]
  wire  _T_2886 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2895 = _T_2886 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_9 = _T_2884 & _T_2895; // @[StatusArray.scala 134:33]
  wire  _T_2902 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2911 = _T_2902 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_9 = _T_2900 & _T_2911; // @[StatusArray.scala 134:33]
  wire  _T_2918 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2927 = _T_2918 & _T_2718; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_9 = _T_2916 & _T_2927; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_9 = {dataMatchVec_6_9,dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,
    dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_9 = {dataMatchVec_13_9,dataMatchVec_12_9,dataMatchVec_11_9,dataMatchVec_10_9,dataMatchVec_9_9,
    dataMatchVec_8_9,dataMatchVec_7_9}; // @[StatusArray.scala 138:43]
  wire  _T_2975 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2983 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2984 = _T_2975 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_10 = _T_2973 & _T_2984; // @[StatusArray.scala 134:33]
  wire  _T_2991 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3000 = _T_2991 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_10 = _T_2989 & _T_3000; // @[StatusArray.scala 134:33]
  wire  _T_3007 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3016 = _T_3007 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_10 = _T_3005 & _T_3016; // @[StatusArray.scala 134:33]
  wire  _T_3023 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3032 = _T_3023 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_10 = _T_3021 & _T_3032; // @[StatusArray.scala 134:33]
  wire  _T_3039 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3048 = _T_3039 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_10 = _T_3037 & _T_3048; // @[StatusArray.scala 134:33]
  wire  _T_3055 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3064 = _T_3055 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_10 = _T_3053 & _T_3064; // @[StatusArray.scala 134:33]
  wire  _T_3071 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3080 = _T_3071 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_10 = _T_3069 & _T_3080; // @[StatusArray.scala 134:33]
  wire  _T_3087 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3096 = _T_3087 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_10 = _T_3085 & _T_3096; // @[StatusArray.scala 134:33]
  wire  _T_3103 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3112 = _T_3103 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_10 = _T_3101 & _T_3112; // @[StatusArray.scala 134:33]
  wire  _T_3119 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3128 = _T_3119 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_10 = _T_3117 & _T_3128; // @[StatusArray.scala 134:33]
  wire  _T_3135 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3144 = _T_3135 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_10 = _T_3133 & _T_3144; // @[StatusArray.scala 134:33]
  wire  _T_3151 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3160 = _T_3151 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_10 = _T_3149 & _T_3160; // @[StatusArray.scala 134:33]
  wire  _T_3167 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3176 = _T_3167 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_10 = _T_3165 & _T_3176; // @[StatusArray.scala 134:33]
  wire  _T_3183 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3192 = _T_3183 & _T_2983; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_10 = _T_3181 & _T_3192; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_10 = {dataMatchVec_6_10,dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10,
    dataMatchVec_2_10,dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_10 = {dataMatchVec_13_10,dataMatchVec_12_10,dataMatchVec_11_10,dataMatchVec_10_10,
    dataMatchVec_9_10,dataMatchVec_8_10,dataMatchVec_7_10}; // @[StatusArray.scala 138:43]
  wire  _T_3226 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? updateVal_5_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3234 = statusArrayNext_5_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_3235 = _T_3226 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_11 = _T_3224 & _T_3235; // @[StatusArray.scala 134:33]
  wire  _T_3242 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3251 = _T_3242 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_11 = _T_3240 & _T_3251; // @[StatusArray.scala 134:33]
  wire  _T_3258 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3267 = _T_3258 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_11 = _T_3256 & _T_3267; // @[StatusArray.scala 134:33]
  wire  _T_3274 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3283 = _T_3274 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_11 = _T_3272 & _T_3283; // @[StatusArray.scala 134:33]
  wire  _T_3290 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3299 = _T_3290 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_11 = _T_3288 & _T_3299; // @[StatusArray.scala 134:33]
  wire  _T_3306 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3315 = _T_3306 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_11 = _T_3304 & _T_3315; // @[StatusArray.scala 134:33]
  wire  _T_3322 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3331 = _T_3322 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_11 = _T_3320 & _T_3331; // @[StatusArray.scala 134:33]
  wire  _T_3338 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3347 = _T_3338 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_11 = _T_3336 & _T_3347; // @[StatusArray.scala 134:33]
  wire  _T_3354 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3363 = _T_3354 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_11 = _T_3352 & _T_3363; // @[StatusArray.scala 134:33]
  wire  _T_3370 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3379 = _T_3370 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_11 = _T_3368 & _T_3379; // @[StatusArray.scala 134:33]
  wire  _T_3386 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3395 = _T_3386 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_11 = _T_3384 & _T_3395; // @[StatusArray.scala 134:33]
  wire  _T_3402 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3411 = _T_3402 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_11 = _T_3400 & _T_3411; // @[StatusArray.scala 134:33]
  wire  _T_3418 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3427 = _T_3418 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_11 = _T_3416 & _T_3427; // @[StatusArray.scala 134:33]
  wire  _T_3434 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3443 = _T_3434 & _T_3234; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_11 = _T_3432 & _T_3443; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_11 = {dataMatchVec_6_11,dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11,
    dataMatchVec_2_11,dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_11 = {dataMatchVec_13_11,dataMatchVec_12_11,dataMatchVec_11_11,dataMatchVec_10_11,
    dataMatchVec_9_11,dataMatchVec_8_11,dataMatchVec_7_11}; // @[StatusArray.scala 138:43]
  wire  _T_3491 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3499 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3500 = _T_3491 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_12 = _T_3489 & _T_3500; // @[StatusArray.scala 134:33]
  wire  _T_3507 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3516 = _T_3507 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_12 = _T_3505 & _T_3516; // @[StatusArray.scala 134:33]
  wire  _T_3523 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3532 = _T_3523 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_12 = _T_3521 & _T_3532; // @[StatusArray.scala 134:33]
  wire  _T_3539 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3548 = _T_3539 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_12 = _T_3537 & _T_3548; // @[StatusArray.scala 134:33]
  wire  _T_3555 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3564 = _T_3555 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_12 = _T_3553 & _T_3564; // @[StatusArray.scala 134:33]
  wire  _T_3571 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3580 = _T_3571 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_12 = _T_3569 & _T_3580; // @[StatusArray.scala 134:33]
  wire  _T_3587 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3596 = _T_3587 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_12 = _T_3585 & _T_3596; // @[StatusArray.scala 134:33]
  wire  _T_3603 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3612 = _T_3603 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_12 = _T_3601 & _T_3612; // @[StatusArray.scala 134:33]
  wire  _T_3619 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3628 = _T_3619 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_12 = _T_3617 & _T_3628; // @[StatusArray.scala 134:33]
  wire  _T_3635 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3644 = _T_3635 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_12 = _T_3633 & _T_3644; // @[StatusArray.scala 134:33]
  wire  _T_3651 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3660 = _T_3651 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_12 = _T_3649 & _T_3660; // @[StatusArray.scala 134:33]
  wire  _T_3667 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3676 = _T_3667 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_12 = _T_3665 & _T_3676; // @[StatusArray.scala 134:33]
  wire  _T_3683 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3692 = _T_3683 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_12 = _T_3681 & _T_3692; // @[StatusArray.scala 134:33]
  wire  _T_3699 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3708 = _T_3699 & _T_3499; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_12 = _T_3697 & _T_3708; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_12 = {dataMatchVec_6_12,dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12,
    dataMatchVec_2_12,dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_12 = {dataMatchVec_13_12,dataMatchVec_12_12,dataMatchVec_11_12,dataMatchVec_10_12,
    dataMatchVec_9_12,dataMatchVec_8_12,dataMatchVec_7_12}; // @[StatusArray.scala 138:43]
  wire  _T_3742 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? updateVal_6_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3750 = statusArrayNext_6_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_3751 = _T_3742 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_13 = _T_3740 & _T_3751; // @[StatusArray.scala 134:33]
  wire  _T_3758 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3767 = _T_3758 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_13 = _T_3756 & _T_3767; // @[StatusArray.scala 134:33]
  wire  _T_3774 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3783 = _T_3774 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_13 = _T_3772 & _T_3783; // @[StatusArray.scala 134:33]
  wire  _T_3790 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3799 = _T_3790 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_13 = _T_3788 & _T_3799; // @[StatusArray.scala 134:33]
  wire  _T_3806 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3815 = _T_3806 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_13 = _T_3804 & _T_3815; // @[StatusArray.scala 134:33]
  wire  _T_3822 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3831 = _T_3822 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_13 = _T_3820 & _T_3831; // @[StatusArray.scala 134:33]
  wire  _T_3838 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3847 = _T_3838 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_13 = _T_3836 & _T_3847; // @[StatusArray.scala 134:33]
  wire  _T_3854 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3863 = _T_3854 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_13 = _T_3852 & _T_3863; // @[StatusArray.scala 134:33]
  wire  _T_3870 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3879 = _T_3870 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_13 = _T_3868 & _T_3879; // @[StatusArray.scala 134:33]
  wire  _T_3886 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3895 = _T_3886 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_13 = _T_3884 & _T_3895; // @[StatusArray.scala 134:33]
  wire  _T_3902 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3911 = _T_3902 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_13 = _T_3900 & _T_3911; // @[StatusArray.scala 134:33]
  wire  _T_3918 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3927 = _T_3918 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_13 = _T_3916 & _T_3927; // @[StatusArray.scala 134:33]
  wire  _T_3934 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3943 = _T_3934 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_13 = _T_3932 & _T_3943; // @[StatusArray.scala 134:33]
  wire  _T_3950 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3959 = _T_3950 & _T_3750; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_13 = _T_3948 & _T_3959; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_13 = {dataMatchVec_6_13,dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13,
    dataMatchVec_2_13,dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_13 = {dataMatchVec_13_13,dataMatchVec_12_13,dataMatchVec_11_13,dataMatchVec_10_13,
    dataMatchVec_9_13,dataMatchVec_8_13,dataMatchVec_7_13}; // @[StatusArray.scala 138:43]
  wire  _T_4007 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4015 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4016 = _T_4007 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_14 = _T_4005 & _T_4016; // @[StatusArray.scala 134:33]
  wire  _T_4023 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4032 = _T_4023 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_14 = _T_4021 & _T_4032; // @[StatusArray.scala 134:33]
  wire  _T_4039 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4048 = _T_4039 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_14 = _T_4037 & _T_4048; // @[StatusArray.scala 134:33]
  wire  _T_4055 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4064 = _T_4055 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_14 = _T_4053 & _T_4064; // @[StatusArray.scala 134:33]
  wire  _T_4071 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4080 = _T_4071 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_14 = _T_4069 & _T_4080; // @[StatusArray.scala 134:33]
  wire  _T_4087 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4096 = _T_4087 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_14 = _T_4085 & _T_4096; // @[StatusArray.scala 134:33]
  wire  _T_4103 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4112 = _T_4103 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_14 = _T_4101 & _T_4112; // @[StatusArray.scala 134:33]
  wire  _T_4119 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4128 = _T_4119 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_14 = _T_4117 & _T_4128; // @[StatusArray.scala 134:33]
  wire  _T_4135 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4144 = _T_4135 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_14 = _T_4133 & _T_4144; // @[StatusArray.scala 134:33]
  wire  _T_4151 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4160 = _T_4151 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_14 = _T_4149 & _T_4160; // @[StatusArray.scala 134:33]
  wire  _T_4167 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4176 = _T_4167 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_14 = _T_4165 & _T_4176; // @[StatusArray.scala 134:33]
  wire  _T_4183 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4192 = _T_4183 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_14 = _T_4181 & _T_4192; // @[StatusArray.scala 134:33]
  wire  _T_4199 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4208 = _T_4199 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_14 = _T_4197 & _T_4208; // @[StatusArray.scala 134:33]
  wire  _T_4215 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4224 = _T_4215 & _T_4015; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_14 = _T_4213 & _T_4224; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_14 = {dataMatchVec_6_14,dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14,
    dataMatchVec_2_14,dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_14 = {dataMatchVec_13_14,dataMatchVec_12_14,dataMatchVec_11_14,dataMatchVec_10_14,
    dataMatchVec_9_14,dataMatchVec_8_14,dataMatchVec_7_14}; // @[StatusArray.scala 138:43]
  wire  _T_4258 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? updateVal_7_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4266 = statusArrayNext_7_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_4267 = _T_4258 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_15 = _T_4256 & _T_4267; // @[StatusArray.scala 134:33]
  wire  _T_4274 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4283 = _T_4274 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_15 = _T_4272 & _T_4283; // @[StatusArray.scala 134:33]
  wire  _T_4290 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4299 = _T_4290 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_15 = _T_4288 & _T_4299; // @[StatusArray.scala 134:33]
  wire  _T_4306 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4315 = _T_4306 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_15 = _T_4304 & _T_4315; // @[StatusArray.scala 134:33]
  wire  _T_4322 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4331 = _T_4322 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_15 = _T_4320 & _T_4331; // @[StatusArray.scala 134:33]
  wire  _T_4338 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4347 = _T_4338 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_15 = _T_4336 & _T_4347; // @[StatusArray.scala 134:33]
  wire  _T_4354 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4363 = _T_4354 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_15 = _T_4352 & _T_4363; // @[StatusArray.scala 134:33]
  wire  _T_4370 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4379 = _T_4370 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_15 = _T_4368 & _T_4379; // @[StatusArray.scala 134:33]
  wire  _T_4386 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4395 = _T_4386 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_15 = _T_4384 & _T_4395; // @[StatusArray.scala 134:33]
  wire  _T_4402 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4411 = _T_4402 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_15 = _T_4400 & _T_4411; // @[StatusArray.scala 134:33]
  wire  _T_4418 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4427 = _T_4418 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_15 = _T_4416 & _T_4427; // @[StatusArray.scala 134:33]
  wire  _T_4434 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4443 = _T_4434 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_15 = _T_4432 & _T_4443; // @[StatusArray.scala 134:33]
  wire  _T_4450 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4459 = _T_4450 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_15 = _T_4448 & _T_4459; // @[StatusArray.scala 134:33]
  wire  _T_4466 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4475 = _T_4466 & _T_4266; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_15 = _T_4464 & _T_4475; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_15 = {dataMatchVec_6_15,dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15,
    dataMatchVec_2_15,dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_15 = {dataMatchVec_13_15,dataMatchVec_12_15,dataMatchVec_11_15,dataMatchVec_10_15,
    dataMatchVec_9_15,dataMatchVec_8_15,dataMatchVec_7_15}; // @[StatusArray.scala 138:43]
  wire  _T_4523 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4531 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4532 = _T_4523 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_16 = _T_4521 & _T_4532; // @[StatusArray.scala 134:33]
  wire  _T_4539 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4548 = _T_4539 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_16 = _T_4537 & _T_4548; // @[StatusArray.scala 134:33]
  wire  _T_4555 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4564 = _T_4555 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_16 = _T_4553 & _T_4564; // @[StatusArray.scala 134:33]
  wire  _T_4571 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4580 = _T_4571 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_16 = _T_4569 & _T_4580; // @[StatusArray.scala 134:33]
  wire  _T_4587 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4596 = _T_4587 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_16 = _T_4585 & _T_4596; // @[StatusArray.scala 134:33]
  wire  _T_4603 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4612 = _T_4603 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_16 = _T_4601 & _T_4612; // @[StatusArray.scala 134:33]
  wire  _T_4619 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4628 = _T_4619 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_16 = _T_4617 & _T_4628; // @[StatusArray.scala 134:33]
  wire  _T_4635 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4644 = _T_4635 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_16 = _T_4633 & _T_4644; // @[StatusArray.scala 134:33]
  wire  _T_4651 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4660 = _T_4651 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_16 = _T_4649 & _T_4660; // @[StatusArray.scala 134:33]
  wire  _T_4667 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4676 = _T_4667 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_16 = _T_4665 & _T_4676; // @[StatusArray.scala 134:33]
  wire  _T_4683 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4692 = _T_4683 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_16 = _T_4681 & _T_4692; // @[StatusArray.scala 134:33]
  wire  _T_4699 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4708 = _T_4699 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_16 = _T_4697 & _T_4708; // @[StatusArray.scala 134:33]
  wire  _T_4715 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4724 = _T_4715 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_16 = _T_4713 & _T_4724; // @[StatusArray.scala 134:33]
  wire  _T_4731 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4740 = _T_4731 & _T_4531; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_16 = _T_4729 & _T_4740; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_16 = {dataMatchVec_6_16,dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16,
    dataMatchVec_2_16,dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_16 = {dataMatchVec_13_16,dataMatchVec_12_16,dataMatchVec_11_16,dataMatchVec_10_16,
    dataMatchVec_9_16,dataMatchVec_8_16,dataMatchVec_7_16}; // @[StatusArray.scala 138:43]
  wire  _T_4774 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_8_srcType_1 = updateValid_8 ? updateVal_8_srcType_1 : statusArray_8_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4782 = statusArrayNext_8_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_4783 = _T_4774 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_17 = _T_4772 & _T_4783; // @[StatusArray.scala 134:33]
  wire  _T_4790 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4799 = _T_4790 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_17 = _T_4788 & _T_4799; // @[StatusArray.scala 134:33]
  wire  _T_4806 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4815 = _T_4806 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_17 = _T_4804 & _T_4815; // @[StatusArray.scala 134:33]
  wire  _T_4822 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4831 = _T_4822 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_17 = _T_4820 & _T_4831; // @[StatusArray.scala 134:33]
  wire  _T_4838 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4847 = _T_4838 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_17 = _T_4836 & _T_4847; // @[StatusArray.scala 134:33]
  wire  _T_4854 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4863 = _T_4854 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_17 = _T_4852 & _T_4863; // @[StatusArray.scala 134:33]
  wire  _T_4870 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4879 = _T_4870 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_17 = _T_4868 & _T_4879; // @[StatusArray.scala 134:33]
  wire  _T_4886 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4895 = _T_4886 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_17 = _T_4884 & _T_4895; // @[StatusArray.scala 134:33]
  wire  _T_4902 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4911 = _T_4902 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_17 = _T_4900 & _T_4911; // @[StatusArray.scala 134:33]
  wire  _T_4918 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4927 = _T_4918 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_17 = _T_4916 & _T_4927; // @[StatusArray.scala 134:33]
  wire  _T_4934 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4943 = _T_4934 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_17 = _T_4932 & _T_4943; // @[StatusArray.scala 134:33]
  wire  _T_4950 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4959 = _T_4950 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_17 = _T_4948 & _T_4959; // @[StatusArray.scala 134:33]
  wire  _T_4966 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4975 = _T_4966 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_17 = _T_4964 & _T_4975; // @[StatusArray.scala 134:33]
  wire  _T_4982 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4991 = _T_4982 & _T_4782; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_17 = _T_4980 & _T_4991; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_17 = {dataMatchVec_6_17,dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17,
    dataMatchVec_2_17,dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_17 = {dataMatchVec_13_17,dataMatchVec_12_17,dataMatchVec_11_17,dataMatchVec_10_17,
    dataMatchVec_9_17,dataMatchVec_8_17,dataMatchVec_7_17}; // @[StatusArray.scala 138:43]
  wire  _T_5039 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5047 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5048 = _T_5039 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_18 = _T_5037 & _T_5048; // @[StatusArray.scala 134:33]
  wire  _T_5055 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5064 = _T_5055 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_18 = _T_5053 & _T_5064; // @[StatusArray.scala 134:33]
  wire  _T_5071 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5080 = _T_5071 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_18 = _T_5069 & _T_5080; // @[StatusArray.scala 134:33]
  wire  _T_5087 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5096 = _T_5087 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_18 = _T_5085 & _T_5096; // @[StatusArray.scala 134:33]
  wire  _T_5103 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5112 = _T_5103 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_18 = _T_5101 & _T_5112; // @[StatusArray.scala 134:33]
  wire  _T_5119 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5128 = _T_5119 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_18 = _T_5117 & _T_5128; // @[StatusArray.scala 134:33]
  wire  _T_5135 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5144 = _T_5135 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_18 = _T_5133 & _T_5144; // @[StatusArray.scala 134:33]
  wire  _T_5151 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5160 = _T_5151 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_18 = _T_5149 & _T_5160; // @[StatusArray.scala 134:33]
  wire  _T_5167 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5176 = _T_5167 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_18 = _T_5165 & _T_5176; // @[StatusArray.scala 134:33]
  wire  _T_5183 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5192 = _T_5183 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_18 = _T_5181 & _T_5192; // @[StatusArray.scala 134:33]
  wire  _T_5199 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5208 = _T_5199 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_18 = _T_5197 & _T_5208; // @[StatusArray.scala 134:33]
  wire  _T_5215 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5224 = _T_5215 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_18 = _T_5213 & _T_5224; // @[StatusArray.scala 134:33]
  wire  _T_5231 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5240 = _T_5231 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_18 = _T_5229 & _T_5240; // @[StatusArray.scala 134:33]
  wire  _T_5247 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5256 = _T_5247 & _T_5047; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_18 = _T_5245 & _T_5256; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_18 = {dataMatchVec_6_18,dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18,
    dataMatchVec_2_18,dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_18 = {dataMatchVec_13_18,dataMatchVec_12_18,dataMatchVec_11_18,dataMatchVec_10_18,
    dataMatchVec_9_18,dataMatchVec_8_18,dataMatchVec_7_18}; // @[StatusArray.scala 138:43]
  wire  _T_5290 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_9_srcType_1 = updateValid_9 ? updateVal_9_srcType_1 : statusArray_9_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5298 = statusArrayNext_9_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_5299 = _T_5290 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_19 = _T_5288 & _T_5299; // @[StatusArray.scala 134:33]
  wire  _T_5306 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5315 = _T_5306 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_19 = _T_5304 & _T_5315; // @[StatusArray.scala 134:33]
  wire  _T_5322 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5331 = _T_5322 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_19 = _T_5320 & _T_5331; // @[StatusArray.scala 134:33]
  wire  _T_5338 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5347 = _T_5338 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_19 = _T_5336 & _T_5347; // @[StatusArray.scala 134:33]
  wire  _T_5354 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5363 = _T_5354 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_19 = _T_5352 & _T_5363; // @[StatusArray.scala 134:33]
  wire  _T_5370 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5379 = _T_5370 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_19 = _T_5368 & _T_5379; // @[StatusArray.scala 134:33]
  wire  _T_5386 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5395 = _T_5386 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_19 = _T_5384 & _T_5395; // @[StatusArray.scala 134:33]
  wire  _T_5402 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5411 = _T_5402 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_19 = _T_5400 & _T_5411; // @[StatusArray.scala 134:33]
  wire  _T_5418 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5427 = _T_5418 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_19 = _T_5416 & _T_5427; // @[StatusArray.scala 134:33]
  wire  _T_5434 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5443 = _T_5434 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_19 = _T_5432 & _T_5443; // @[StatusArray.scala 134:33]
  wire  _T_5450 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5459 = _T_5450 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_19 = _T_5448 & _T_5459; // @[StatusArray.scala 134:33]
  wire  _T_5466 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5475 = _T_5466 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_19 = _T_5464 & _T_5475; // @[StatusArray.scala 134:33]
  wire  _T_5482 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5491 = _T_5482 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_19 = _T_5480 & _T_5491; // @[StatusArray.scala 134:33]
  wire  _T_5498 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5507 = _T_5498 & _T_5298; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_19 = _T_5496 & _T_5507; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_19 = {dataMatchVec_6_19,dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19,
    dataMatchVec_2_19,dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_19 = {dataMatchVec_13_19,dataMatchVec_12_19,dataMatchVec_11_19,dataMatchVec_10_19,
    dataMatchVec_9_19,dataMatchVec_8_19,dataMatchVec_7_19}; // @[StatusArray.scala 138:43]
  wire  _T_5555 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5563 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5564 = _T_5555 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_20 = _T_5553 & _T_5564; // @[StatusArray.scala 134:33]
  wire  _T_5571 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5580 = _T_5571 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_20 = _T_5569 & _T_5580; // @[StatusArray.scala 134:33]
  wire  _T_5587 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5596 = _T_5587 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_20 = _T_5585 & _T_5596; // @[StatusArray.scala 134:33]
  wire  _T_5603 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5612 = _T_5603 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_20 = _T_5601 & _T_5612; // @[StatusArray.scala 134:33]
  wire  _T_5619 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5628 = _T_5619 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_20 = _T_5617 & _T_5628; // @[StatusArray.scala 134:33]
  wire  _T_5635 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5644 = _T_5635 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_20 = _T_5633 & _T_5644; // @[StatusArray.scala 134:33]
  wire  _T_5651 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5660 = _T_5651 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_20 = _T_5649 & _T_5660; // @[StatusArray.scala 134:33]
  wire  _T_5667 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5676 = _T_5667 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_20 = _T_5665 & _T_5676; // @[StatusArray.scala 134:33]
  wire  _T_5683 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5692 = _T_5683 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_20 = _T_5681 & _T_5692; // @[StatusArray.scala 134:33]
  wire  _T_5699 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5708 = _T_5699 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_20 = _T_5697 & _T_5708; // @[StatusArray.scala 134:33]
  wire  _T_5715 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5724 = _T_5715 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_20 = _T_5713 & _T_5724; // @[StatusArray.scala 134:33]
  wire  _T_5731 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5740 = _T_5731 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_20 = _T_5729 & _T_5740; // @[StatusArray.scala 134:33]
  wire  _T_5747 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5756 = _T_5747 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_20 = _T_5745 & _T_5756; // @[StatusArray.scala 134:33]
  wire  _T_5763 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5772 = _T_5763 & _T_5563; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_20 = _T_5761 & _T_5772; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_20 = {dataMatchVec_6_20,dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20,
    dataMatchVec_2_20,dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_20 = {dataMatchVec_13_20,dataMatchVec_12_20,dataMatchVec_11_20,dataMatchVec_10_20,
    dataMatchVec_9_20,dataMatchVec_8_20,dataMatchVec_7_20}; // @[StatusArray.scala 138:43]
  wire  _T_5806 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_10_srcType_1 = updateValid_10 ? updateVal_10_srcType_1 : statusArray_10_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5814 = statusArrayNext_10_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_5815 = _T_5806 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_21 = _T_5804 & _T_5815; // @[StatusArray.scala 134:33]
  wire  _T_5822 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5831 = _T_5822 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_21 = _T_5820 & _T_5831; // @[StatusArray.scala 134:33]
  wire  _T_5838 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5847 = _T_5838 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_21 = _T_5836 & _T_5847; // @[StatusArray.scala 134:33]
  wire  _T_5854 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5863 = _T_5854 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_21 = _T_5852 & _T_5863; // @[StatusArray.scala 134:33]
  wire  _T_5870 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5879 = _T_5870 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_21 = _T_5868 & _T_5879; // @[StatusArray.scala 134:33]
  wire  _T_5886 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5895 = _T_5886 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_21 = _T_5884 & _T_5895; // @[StatusArray.scala 134:33]
  wire  _T_5902 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5911 = _T_5902 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_21 = _T_5900 & _T_5911; // @[StatusArray.scala 134:33]
  wire  _T_5918 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5927 = _T_5918 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_21 = _T_5916 & _T_5927; // @[StatusArray.scala 134:33]
  wire  _T_5934 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5943 = _T_5934 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_21 = _T_5932 & _T_5943; // @[StatusArray.scala 134:33]
  wire  _T_5950 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5959 = _T_5950 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_21 = _T_5948 & _T_5959; // @[StatusArray.scala 134:33]
  wire  _T_5966 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5975 = _T_5966 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_21 = _T_5964 & _T_5975; // @[StatusArray.scala 134:33]
  wire  _T_5982 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5991 = _T_5982 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_21 = _T_5980 & _T_5991; // @[StatusArray.scala 134:33]
  wire  _T_5998 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6007 = _T_5998 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_21 = _T_5996 & _T_6007; // @[StatusArray.scala 134:33]
  wire  _T_6014 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6023 = _T_6014 & _T_5814; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_21 = _T_6012 & _T_6023; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_21 = {dataMatchVec_6_21,dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21,
    dataMatchVec_2_21,dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_21 = {dataMatchVec_13_21,dataMatchVec_12_21,dataMatchVec_11_21,dataMatchVec_10_21,
    dataMatchVec_9_21,dataMatchVec_8_21,dataMatchVec_7_21}; // @[StatusArray.scala 138:43]
  wire  _T_6071 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6079 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6080 = _T_6071 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_22 = _T_6069 & _T_6080; // @[StatusArray.scala 134:33]
  wire  _T_6087 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6096 = _T_6087 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_22 = _T_6085 & _T_6096; // @[StatusArray.scala 134:33]
  wire  _T_6103 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6112 = _T_6103 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_22 = _T_6101 & _T_6112; // @[StatusArray.scala 134:33]
  wire  _T_6119 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6128 = _T_6119 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_22 = _T_6117 & _T_6128; // @[StatusArray.scala 134:33]
  wire  _T_6135 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6144 = _T_6135 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_22 = _T_6133 & _T_6144; // @[StatusArray.scala 134:33]
  wire  _T_6151 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6160 = _T_6151 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_22 = _T_6149 & _T_6160; // @[StatusArray.scala 134:33]
  wire  _T_6167 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6176 = _T_6167 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_22 = _T_6165 & _T_6176; // @[StatusArray.scala 134:33]
  wire  _T_6183 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6192 = _T_6183 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_22 = _T_6181 & _T_6192; // @[StatusArray.scala 134:33]
  wire  _T_6199 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6208 = _T_6199 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_22 = _T_6197 & _T_6208; // @[StatusArray.scala 134:33]
  wire  _T_6215 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6224 = _T_6215 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_22 = _T_6213 & _T_6224; // @[StatusArray.scala 134:33]
  wire  _T_6231 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6240 = _T_6231 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_22 = _T_6229 & _T_6240; // @[StatusArray.scala 134:33]
  wire  _T_6247 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6256 = _T_6247 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_22 = _T_6245 & _T_6256; // @[StatusArray.scala 134:33]
  wire  _T_6263 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6272 = _T_6263 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_22 = _T_6261 & _T_6272; // @[StatusArray.scala 134:33]
  wire  _T_6279 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6288 = _T_6279 & _T_6079; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_22 = _T_6277 & _T_6288; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_22 = {dataMatchVec_6_22,dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22,
    dataMatchVec_2_22,dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_22 = {dataMatchVec_13_22,dataMatchVec_12_22,dataMatchVec_11_22,dataMatchVec_10_22,
    dataMatchVec_9_22,dataMatchVec_8_22,dataMatchVec_7_22}; // @[StatusArray.scala 138:43]
  wire  _T_6322 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_11_srcType_1 = updateValid_11 ? updateVal_11_srcType_1 : statusArray_11_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_6330 = statusArrayNext_11_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_6331 = _T_6322 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_23 = _T_6320 & _T_6331; // @[StatusArray.scala 134:33]
  wire  _T_6338 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6347 = _T_6338 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_23 = _T_6336 & _T_6347; // @[StatusArray.scala 134:33]
  wire  _T_6354 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6363 = _T_6354 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_23 = _T_6352 & _T_6363; // @[StatusArray.scala 134:33]
  wire  _T_6370 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6379 = _T_6370 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_23 = _T_6368 & _T_6379; // @[StatusArray.scala 134:33]
  wire  _T_6386 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6395 = _T_6386 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_23 = _T_6384 & _T_6395; // @[StatusArray.scala 134:33]
  wire  _T_6402 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6411 = _T_6402 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_23 = _T_6400 & _T_6411; // @[StatusArray.scala 134:33]
  wire  _T_6418 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6427 = _T_6418 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_23 = _T_6416 & _T_6427; // @[StatusArray.scala 134:33]
  wire  _T_6434 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6443 = _T_6434 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_23 = _T_6432 & _T_6443; // @[StatusArray.scala 134:33]
  wire  _T_6450 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6459 = _T_6450 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_23 = _T_6448 & _T_6459; // @[StatusArray.scala 134:33]
  wire  _T_6466 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6475 = _T_6466 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_23 = _T_6464 & _T_6475; // @[StatusArray.scala 134:33]
  wire  _T_6482 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6491 = _T_6482 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_23 = _T_6480 & _T_6491; // @[StatusArray.scala 134:33]
  wire  _T_6498 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6507 = _T_6498 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_23 = _T_6496 & _T_6507; // @[StatusArray.scala 134:33]
  wire  _T_6514 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6523 = _T_6514 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_23 = _T_6512 & _T_6523; // @[StatusArray.scala 134:33]
  wire  _T_6530 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6539 = _T_6530 & _T_6330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_23 = _T_6528 & _T_6539; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_23 = {dataMatchVec_6_23,dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23,
    dataMatchVec_2_23,dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_23 = {dataMatchVec_13_23,dataMatchVec_12_23,dataMatchVec_11_23,dataMatchVec_10_23,
    dataMatchVec_9_23,dataMatchVec_8_23,dataMatchVec_7_23}; // @[StatusArray.scala 138:43]
  wire  _T_6587 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6595 = statusArrayNext_12_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6596 = _T_6587 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_24 = _T_6585 & _T_6596; // @[StatusArray.scala 134:33]
  wire  _T_6603 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6612 = _T_6603 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_24 = _T_6601 & _T_6612; // @[StatusArray.scala 134:33]
  wire  _T_6619 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6628 = _T_6619 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_24 = _T_6617 & _T_6628; // @[StatusArray.scala 134:33]
  wire  _T_6635 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6644 = _T_6635 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_24 = _T_6633 & _T_6644; // @[StatusArray.scala 134:33]
  wire  _T_6651 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6660 = _T_6651 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_24 = _T_6649 & _T_6660; // @[StatusArray.scala 134:33]
  wire  _T_6667 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6676 = _T_6667 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_24 = _T_6665 & _T_6676; // @[StatusArray.scala 134:33]
  wire  _T_6683 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6692 = _T_6683 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_24 = _T_6681 & _T_6692; // @[StatusArray.scala 134:33]
  wire  _T_6699 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6708 = _T_6699 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_24 = _T_6697 & _T_6708; // @[StatusArray.scala 134:33]
  wire  _T_6715 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6724 = _T_6715 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_24 = _T_6713 & _T_6724; // @[StatusArray.scala 134:33]
  wire  _T_6731 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6740 = _T_6731 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_24 = _T_6729 & _T_6740; // @[StatusArray.scala 134:33]
  wire  _T_6747 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6756 = _T_6747 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_24 = _T_6745 & _T_6756; // @[StatusArray.scala 134:33]
  wire  _T_6763 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6772 = _T_6763 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_24 = _T_6761 & _T_6772; // @[StatusArray.scala 134:33]
  wire  _T_6779 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6788 = _T_6779 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_24 = _T_6777 & _T_6788; // @[StatusArray.scala 134:33]
  wire  _T_6795 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6804 = _T_6795 & _T_6595; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_24 = _T_6793 & _T_6804; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_24 = {dataMatchVec_6_24,dataMatchVec_5_24,dataMatchVec_4_24,dataMatchVec_3_24,
    dataMatchVec_2_24,dataMatchVec_1_24,dataMatchVec_0_24}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_24 = {dataMatchVec_13_24,dataMatchVec_12_24,dataMatchVec_11_24,dataMatchVec_10_24,
    dataMatchVec_9_24,dataMatchVec_8_24,dataMatchVec_7_24}; // @[StatusArray.scala 138:43]
  wire  _T_6838 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_12_srcType_1 = updateValid_12 ? updateVal_12_srcType_1 : statusArray_12_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_6846 = statusArrayNext_12_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_6847 = _T_6838 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_25 = _T_6836 & _T_6847; // @[StatusArray.scala 134:33]
  wire  _T_6854 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6863 = _T_6854 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_25 = _T_6852 & _T_6863; // @[StatusArray.scala 134:33]
  wire  _T_6870 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6879 = _T_6870 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_25 = _T_6868 & _T_6879; // @[StatusArray.scala 134:33]
  wire  _T_6886 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6895 = _T_6886 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_25 = _T_6884 & _T_6895; // @[StatusArray.scala 134:33]
  wire  _T_6902 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6911 = _T_6902 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_25 = _T_6900 & _T_6911; // @[StatusArray.scala 134:33]
  wire  _T_6918 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6927 = _T_6918 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_25 = _T_6916 & _T_6927; // @[StatusArray.scala 134:33]
  wire  _T_6934 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6943 = _T_6934 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_25 = _T_6932 & _T_6943; // @[StatusArray.scala 134:33]
  wire  _T_6950 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6959 = _T_6950 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_25 = _T_6948 & _T_6959; // @[StatusArray.scala 134:33]
  wire  _T_6966 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6975 = _T_6966 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_25 = _T_6964 & _T_6975; // @[StatusArray.scala 134:33]
  wire  _T_6982 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6991 = _T_6982 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_25 = _T_6980 & _T_6991; // @[StatusArray.scala 134:33]
  wire  _T_6998 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7007 = _T_6998 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_25 = _T_6996 & _T_7007; // @[StatusArray.scala 134:33]
  wire  _T_7014 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7023 = _T_7014 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_25 = _T_7012 & _T_7023; // @[StatusArray.scala 134:33]
  wire  _T_7030 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7039 = _T_7030 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_25 = _T_7028 & _T_7039; // @[StatusArray.scala 134:33]
  wire  _T_7046 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7055 = _T_7046 & _T_6846; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_25 = _T_7044 & _T_7055; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_25 = {dataMatchVec_6_25,dataMatchVec_5_25,dataMatchVec_4_25,dataMatchVec_3_25,
    dataMatchVec_2_25,dataMatchVec_1_25,dataMatchVec_0_25}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_25 = {dataMatchVec_13_25,dataMatchVec_12_25,dataMatchVec_11_25,dataMatchVec_10_25,
    dataMatchVec_9_25,dataMatchVec_8_25,dataMatchVec_7_25}; // @[StatusArray.scala 138:43]
  wire  _T_7103 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_7111 = statusArrayNext_13_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_7112 = _T_7103 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_26 = _T_7101 & _T_7112; // @[StatusArray.scala 134:33]
  wire  _T_7119 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7128 = _T_7119 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_26 = _T_7117 & _T_7128; // @[StatusArray.scala 134:33]
  wire  _T_7135 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7144 = _T_7135 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_26 = _T_7133 & _T_7144; // @[StatusArray.scala 134:33]
  wire  _T_7151 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7160 = _T_7151 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_26 = _T_7149 & _T_7160; // @[StatusArray.scala 134:33]
  wire  _T_7167 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7176 = _T_7167 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_26 = _T_7165 & _T_7176; // @[StatusArray.scala 134:33]
  wire  _T_7183 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7192 = _T_7183 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_26 = _T_7181 & _T_7192; // @[StatusArray.scala 134:33]
  wire  _T_7199 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7208 = _T_7199 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_26 = _T_7197 & _T_7208; // @[StatusArray.scala 134:33]
  wire  _T_7215 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7224 = _T_7215 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_26 = _T_7213 & _T_7224; // @[StatusArray.scala 134:33]
  wire  _T_7231 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7240 = _T_7231 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_26 = _T_7229 & _T_7240; // @[StatusArray.scala 134:33]
  wire  _T_7247 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7256 = _T_7247 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_26 = _T_7245 & _T_7256; // @[StatusArray.scala 134:33]
  wire  _T_7263 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7272 = _T_7263 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_26 = _T_7261 & _T_7272; // @[StatusArray.scala 134:33]
  wire  _T_7279 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7288 = _T_7279 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_26 = _T_7277 & _T_7288; // @[StatusArray.scala 134:33]
  wire  _T_7295 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7304 = _T_7295 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_26 = _T_7293 & _T_7304; // @[StatusArray.scala 134:33]
  wire  _T_7311 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7320 = _T_7311 & _T_7111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_26 = _T_7309 & _T_7320; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_26 = {dataMatchVec_6_26,dataMatchVec_5_26,dataMatchVec_4_26,dataMatchVec_3_26,
    dataMatchVec_2_26,dataMatchVec_1_26,dataMatchVec_0_26}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_26 = {dataMatchVec_13_26,dataMatchVec_12_26,dataMatchVec_11_26,dataMatchVec_10_26,
    dataMatchVec_9_26,dataMatchVec_8_26,dataMatchVec_7_26}; // @[StatusArray.scala 138:43]
  wire  _T_7354 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_13_srcType_1 = updateValid_13 ? updateVal_13_srcType_1 : statusArray_13_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_7362 = statusArrayNext_13_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_7363 = _T_7354 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_27 = _T_7352 & _T_7363; // @[StatusArray.scala 134:33]
  wire  _T_7370 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7379 = _T_7370 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_27 = _T_7368 & _T_7379; // @[StatusArray.scala 134:33]
  wire  _T_7386 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7395 = _T_7386 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_27 = _T_7384 & _T_7395; // @[StatusArray.scala 134:33]
  wire  _T_7402 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7411 = _T_7402 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_27 = _T_7400 & _T_7411; // @[StatusArray.scala 134:33]
  wire  _T_7418 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7427 = _T_7418 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_27 = _T_7416 & _T_7427; // @[StatusArray.scala 134:33]
  wire  _T_7434 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7443 = _T_7434 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_27 = _T_7432 & _T_7443; // @[StatusArray.scala 134:33]
  wire  _T_7450 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7459 = _T_7450 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_27 = _T_7448 & _T_7459; // @[StatusArray.scala 134:33]
  wire  _T_7466 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7475 = _T_7466 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_27 = _T_7464 & _T_7475; // @[StatusArray.scala 134:33]
  wire  _T_7482 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7491 = _T_7482 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_27 = _T_7480 & _T_7491; // @[StatusArray.scala 134:33]
  wire  _T_7498 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7507 = _T_7498 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_27 = _T_7496 & _T_7507; // @[StatusArray.scala 134:33]
  wire  _T_7514 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7523 = _T_7514 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_27 = _T_7512 & _T_7523; // @[StatusArray.scala 134:33]
  wire  _T_7530 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7539 = _T_7530 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_27 = _T_7528 & _T_7539; // @[StatusArray.scala 134:33]
  wire  _T_7546 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7555 = _T_7546 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_27 = _T_7544 & _T_7555; // @[StatusArray.scala 134:33]
  wire  _T_7562 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7571 = _T_7562 & _T_7362; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_27 = _T_7560 & _T_7571; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_27 = {dataMatchVec_6_27,dataMatchVec_5_27,dataMatchVec_4_27,dataMatchVec_3_27,
    dataMatchVec_2_27,dataMatchVec_1_27,dataMatchVec_0_27}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_27 = {dataMatchVec_13_27,dataMatchVec_12_27,dataMatchVec_11_27,dataMatchVec_10_27,
    dataMatchVec_9_27,dataMatchVec_8_27,dataMatchVec_7_27}; // @[StatusArray.scala 138:43]
  wire  _T_7619 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_7627 = statusArrayNext_14_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_7628 = _T_7619 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_28 = _T_7617 & _T_7628; // @[StatusArray.scala 134:33]
  wire  _T_7635 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7644 = _T_7635 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_28 = _T_7633 & _T_7644; // @[StatusArray.scala 134:33]
  wire  _T_7651 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7660 = _T_7651 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_28 = _T_7649 & _T_7660; // @[StatusArray.scala 134:33]
  wire  _T_7667 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7676 = _T_7667 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_28 = _T_7665 & _T_7676; // @[StatusArray.scala 134:33]
  wire  _T_7683 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7692 = _T_7683 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_28 = _T_7681 & _T_7692; // @[StatusArray.scala 134:33]
  wire  _T_7699 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7708 = _T_7699 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_28 = _T_7697 & _T_7708; // @[StatusArray.scala 134:33]
  wire  _T_7715 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7724 = _T_7715 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_28 = _T_7713 & _T_7724; // @[StatusArray.scala 134:33]
  wire  _T_7731 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7740 = _T_7731 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_28 = _T_7729 & _T_7740; // @[StatusArray.scala 134:33]
  wire  _T_7747 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7756 = _T_7747 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_28 = _T_7745 & _T_7756; // @[StatusArray.scala 134:33]
  wire  _T_7763 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7772 = _T_7763 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_28 = _T_7761 & _T_7772; // @[StatusArray.scala 134:33]
  wire  _T_7779 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7788 = _T_7779 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_28 = _T_7777 & _T_7788; // @[StatusArray.scala 134:33]
  wire  _T_7795 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7804 = _T_7795 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_28 = _T_7793 & _T_7804; // @[StatusArray.scala 134:33]
  wire  _T_7811 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7820 = _T_7811 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_28 = _T_7809 & _T_7820; // @[StatusArray.scala 134:33]
  wire  _T_7827 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7836 = _T_7827 & _T_7627; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_28 = _T_7825 & _T_7836; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_28 = {dataMatchVec_6_28,dataMatchVec_5_28,dataMatchVec_4_28,dataMatchVec_3_28,
    dataMatchVec_2_28,dataMatchVec_1_28,dataMatchVec_0_28}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_28 = {dataMatchVec_13_28,dataMatchVec_12_28,dataMatchVec_11_28,dataMatchVec_10_28,
    dataMatchVec_9_28,dataMatchVec_8_28,dataMatchVec_7_28}; // @[StatusArray.scala 138:43]
  wire  _T_7870 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_14_srcType_1 = updateValid_14 ? updateVal_14_srcType_1 : statusArray_14_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_7878 = statusArrayNext_14_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_7879 = _T_7870 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_29 = _T_7868 & _T_7879; // @[StatusArray.scala 134:33]
  wire  _T_7886 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7895 = _T_7886 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_29 = _T_7884 & _T_7895; // @[StatusArray.scala 134:33]
  wire  _T_7902 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7911 = _T_7902 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_29 = _T_7900 & _T_7911; // @[StatusArray.scala 134:33]
  wire  _T_7918 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7927 = _T_7918 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_29 = _T_7916 & _T_7927; // @[StatusArray.scala 134:33]
  wire  _T_7934 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7943 = _T_7934 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_29 = _T_7932 & _T_7943; // @[StatusArray.scala 134:33]
  wire  _T_7950 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7959 = _T_7950 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_29 = _T_7948 & _T_7959; // @[StatusArray.scala 134:33]
  wire  _T_7966 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7975 = _T_7966 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_29 = _T_7964 & _T_7975; // @[StatusArray.scala 134:33]
  wire  _T_7982 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7991 = _T_7982 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_29 = _T_7980 & _T_7991; // @[StatusArray.scala 134:33]
  wire  _T_7998 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8007 = _T_7998 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_29 = _T_7996 & _T_8007; // @[StatusArray.scala 134:33]
  wire  _T_8014 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8023 = _T_8014 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_29 = _T_8012 & _T_8023; // @[StatusArray.scala 134:33]
  wire  _T_8030 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8039 = _T_8030 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_29 = _T_8028 & _T_8039; // @[StatusArray.scala 134:33]
  wire  _T_8046 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8055 = _T_8046 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_29 = _T_8044 & _T_8055; // @[StatusArray.scala 134:33]
  wire  _T_8062 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8071 = _T_8062 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_29 = _T_8060 & _T_8071; // @[StatusArray.scala 134:33]
  wire  _T_8078 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8087 = _T_8078 & _T_7878; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_29 = _T_8076 & _T_8087; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_29 = {dataMatchVec_6_29,dataMatchVec_5_29,dataMatchVec_4_29,dataMatchVec_3_29,
    dataMatchVec_2_29,dataMatchVec_1_29,dataMatchVec_0_29}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_29 = {dataMatchVec_13_29,dataMatchVec_12_29,dataMatchVec_11_29,dataMatchVec_10_29,
    dataMatchVec_9_29,dataMatchVec_8_29,dataMatchVec_7_29}; // @[StatusArray.scala 138:43]
  wire  _T_8135 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_8143 = statusArrayNext_15_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_8144 = _T_8135 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_30 = _T_8133 & _T_8144; // @[StatusArray.scala 134:33]
  wire  _T_8151 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8160 = _T_8151 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_30 = _T_8149 & _T_8160; // @[StatusArray.scala 134:33]
  wire  _T_8167 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8176 = _T_8167 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_30 = _T_8165 & _T_8176; // @[StatusArray.scala 134:33]
  wire  _T_8183 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8192 = _T_8183 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_30 = _T_8181 & _T_8192; // @[StatusArray.scala 134:33]
  wire  _T_8199 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8208 = _T_8199 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_30 = _T_8197 & _T_8208; // @[StatusArray.scala 134:33]
  wire  _T_8215 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8224 = _T_8215 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_30 = _T_8213 & _T_8224; // @[StatusArray.scala 134:33]
  wire  _T_8231 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8240 = _T_8231 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_30 = _T_8229 & _T_8240; // @[StatusArray.scala 134:33]
  wire  _T_8247 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8256 = _T_8247 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_30 = _T_8245 & _T_8256; // @[StatusArray.scala 134:33]
  wire  _T_8263 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8272 = _T_8263 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_30 = _T_8261 & _T_8272; // @[StatusArray.scala 134:33]
  wire  _T_8279 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8288 = _T_8279 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_30 = _T_8277 & _T_8288; // @[StatusArray.scala 134:33]
  wire  _T_8295 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8304 = _T_8295 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_30 = _T_8293 & _T_8304; // @[StatusArray.scala 134:33]
  wire  _T_8311 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8320 = _T_8311 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_30 = _T_8309 & _T_8320; // @[StatusArray.scala 134:33]
  wire  _T_8327 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8336 = _T_8327 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_30 = _T_8325 & _T_8336; // @[StatusArray.scala 134:33]
  wire  _T_8343 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8352 = _T_8343 & _T_8143; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_30 = _T_8341 & _T_8352; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_30 = {dataMatchVec_6_30,dataMatchVec_5_30,dataMatchVec_4_30,dataMatchVec_3_30,
    dataMatchVec_2_30,dataMatchVec_1_30,dataMatchVec_0_30}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_30 = {dataMatchVec_13_30,dataMatchVec_12_30,dataMatchVec_11_30,dataMatchVec_10_30,
    dataMatchVec_9_30,dataMatchVec_8_30,dataMatchVec_7_30}; // @[StatusArray.scala 138:43]
  wire  _T_8386 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_15_srcType_1 = updateValid_15 ? updateVal_15_srcType_1 : statusArray_15_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_8394 = statusArrayNext_15_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_8395 = _T_8386 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_31 = _T_8384 & _T_8395; // @[StatusArray.scala 134:33]
  wire  _T_8402 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8411 = _T_8402 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_31 = _T_8400 & _T_8411; // @[StatusArray.scala 134:33]
  wire  _T_8418 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8427 = _T_8418 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_31 = _T_8416 & _T_8427; // @[StatusArray.scala 134:33]
  wire  _T_8434 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8443 = _T_8434 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_31 = _T_8432 & _T_8443; // @[StatusArray.scala 134:33]
  wire  _T_8450 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8459 = _T_8450 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_31 = _T_8448 & _T_8459; // @[StatusArray.scala 134:33]
  wire  _T_8466 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8475 = _T_8466 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_31 = _T_8464 & _T_8475; // @[StatusArray.scala 134:33]
  wire  _T_8482 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8491 = _T_8482 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_31 = _T_8480 & _T_8491; // @[StatusArray.scala 134:33]
  wire  _T_8498 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8507 = _T_8498 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_31 = _T_8496 & _T_8507; // @[StatusArray.scala 134:33]
  wire  _T_8514 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8523 = _T_8514 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_31 = _T_8512 & _T_8523; // @[StatusArray.scala 134:33]
  wire  _T_8530 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8539 = _T_8530 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_31 = _T_8528 & _T_8539; // @[StatusArray.scala 134:33]
  wire  _T_8546 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8555 = _T_8546 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_31 = _T_8544 & _T_8555; // @[StatusArray.scala 134:33]
  wire  _T_8562 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8571 = _T_8562 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_31 = _T_8560 & _T_8571; // @[StatusArray.scala 134:33]
  wire  _T_8578 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8587 = _T_8578 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_31 = _T_8576 & _T_8587; // @[StatusArray.scala 134:33]
  wire  _T_8594 = io_wakeup_13_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_8603 = _T_8594 & _T_8394; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_13_31 = _T_8592 & _T_8603; // @[StatusArray.scala 134:33]
  wire [6:0] dataMatch_lo_31 = {dataMatchVec_6_31,dataMatchVec_5_31,dataMatchVec_4_31,dataMatchVec_3_31,
    dataMatchVec_2_31,dataMatchVec_1_31,dataMatchVec_0_31}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_31 = {dataMatchVec_13_31,dataMatchVec_12_31,dataMatchVec_11_31,dataMatchVec_10_31,
    dataMatchVec_9_31,dataMatchVec_8_31,dataMatchVec_7_31}; // @[StatusArray.scala 138:43]
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
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 260:51]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 261:102]
  assign io_wakeupMatch_0_0 = {dataMatch_hi,dataMatch_lo}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_0_1 = {dataMatch_hi_1,dataMatch_lo_1}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_0 = {dataMatch_hi_2,dataMatch_lo_2}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_1_1 = {dataMatch_hi_3,dataMatch_lo_3}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_0 = {dataMatch_hi_4,dataMatch_lo_4}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_2_1 = {dataMatch_hi_5,dataMatch_lo_5}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_0 = {dataMatch_hi_6,dataMatch_lo_6}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_3_1 = {dataMatch_hi_7,dataMatch_lo_7}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_0 = {dataMatch_hi_8,dataMatch_lo_8}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_4_1 = {dataMatch_hi_9,dataMatch_lo_9}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_0 = {dataMatch_hi_10,dataMatch_lo_10}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_5_1 = {dataMatch_hi_11,dataMatch_lo_11}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_0 = {dataMatch_hi_12,dataMatch_lo_12}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_6_1 = {dataMatch_hi_13,dataMatch_lo_13}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_0 = {dataMatch_hi_14,dataMatch_lo_14}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_7_1 = {dataMatch_hi_15,dataMatch_lo_15}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_0 = {dataMatch_hi_16,dataMatch_lo_16}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_8_1 = {dataMatch_hi_17,dataMatch_lo_17}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_0 = {dataMatch_hi_18,dataMatch_lo_18}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_9_1 = {dataMatch_hi_19,dataMatch_lo_19}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_0 = {dataMatch_hi_20,dataMatch_lo_20}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_10_1 = {dataMatch_hi_21,dataMatch_lo_21}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_0 = {dataMatch_hi_22,dataMatch_lo_22}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_11_1 = {dataMatch_hi_23,dataMatch_lo_23}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_0 = {dataMatch_hi_24,dataMatch_lo_24}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_12_1 = {dataMatch_hi_25,dataMatch_lo_25}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_0 = {dataMatch_hi_26,dataMatch_lo_26}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_13_1 = {dataMatch_hi_27,dataMatch_lo_27}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_0 = {dataMatch_hi_28,dataMatch_lo_28}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_14_1 = {dataMatch_hi_29,dataMatch_lo_29}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_0 = {dataMatch_hi_30,dataMatch_lo_30}; // @[StatusArray.scala 138:43]
  assign io_wakeupMatch_15_1 = {dataMatch_hi_31,dataMatch_lo_31}; // @[StatusArray.scala 138:43]
  always @(posedge clock) begin
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_0_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_0_valid <= statusArrayNext_0_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_894; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_896; // @[StatusArray.scala 241:50]
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_0 <= updateVal_0_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_1 <= updateVal_0_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_0 <= updateVal_0_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_1 <= updateVal_0_srcType_1;
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
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1410; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_1412; // @[StatusArray.scala 241:50]
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_0 <= updateVal_1_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_1 <= updateVal_1_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_0 <= updateVal_1_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_1 <= updateVal_1_srcType_1;
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
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1926; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_1928; // @[StatusArray.scala 241:50]
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_0 <= updateVal_2_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_1 <= updateVal_2_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_0 <= updateVal_2_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_1 <= updateVal_2_srcType_1;
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
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_2442; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_2444; // @[StatusArray.scala 241:50]
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_0 <= updateVal_3_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_1 <= updateVal_3_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_0 <= updateVal_3_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_1 <= updateVal_3_srcType_1;
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
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_2958; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_2960; // @[StatusArray.scala 241:50]
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_0 <= updateVal_4_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_1 <= updateVal_4_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_0 <= updateVal_4_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_1 <= updateVal_4_srcType_1;
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
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_3474; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_3476; // @[StatusArray.scala 241:50]
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_0 <= updateVal_5_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_1 <= updateVal_5_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_0 <= updateVal_5_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_1 <= updateVal_5_srcType_1;
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
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_3990; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_3992; // @[StatusArray.scala 241:50]
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_0 <= updateVal_6_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_1 <= updateVal_6_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_0 <= updateVal_6_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_1 <= updateVal_6_srcType_1;
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
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_4506; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_4508; // @[StatusArray.scala 241:50]
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_0 <= updateVal_7_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_1 <= updateVal_7_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_0 <= updateVal_7_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_1 <= updateVal_7_srcType_1;
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
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_5022; // @[StatusArray.scala 241:50]
    statusArray_8_srcState_1 <= stateWakeupEn_1_8 | _T_5024; // @[StatusArray.scala 241:50]
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_0 <= updateVal_8_psrc_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 248:27]
      statusArray_8_psrc_1 <= updateVal_8_psrc_1;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_0 <= updateVal_8_srcType_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 249:30]
      statusArray_8_srcType_1 <= updateVal_8_srcType_1;
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
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_5538; // @[StatusArray.scala 241:50]
    statusArray_9_srcState_1 <= stateWakeupEn_1_9 | _T_5540; // @[StatusArray.scala 241:50]
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_0 <= updateVal_9_psrc_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 248:27]
      statusArray_9_psrc_1 <= updateVal_9_psrc_1;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_0 <= updateVal_9_srcType_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 249:30]
      statusArray_9_srcType_1 <= updateVal_9_srcType_1;
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
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_6054; // @[StatusArray.scala 241:50]
    statusArray_10_srcState_1 <= stateWakeupEn_1_10 | _T_6056; // @[StatusArray.scala 241:50]
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_0 <= updateVal_10_psrc_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 248:27]
      statusArray_10_psrc_1 <= updateVal_10_psrc_1;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_0 <= updateVal_10_srcType_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 249:30]
      statusArray_10_srcType_1 <= updateVal_10_srcType_1;
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
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_6570; // @[StatusArray.scala 241:50]
    statusArray_11_srcState_1 <= stateWakeupEn_1_11 | _T_6572; // @[StatusArray.scala 241:50]
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_0 <= updateVal_11_psrc_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 248:27]
      statusArray_11_psrc_1 <= updateVal_11_psrc_1;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_0 <= updateVal_11_srcType_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 249:30]
      statusArray_11_srcType_1 <= updateVal_11_srcType_1;
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
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_7086; // @[StatusArray.scala 241:50]
    statusArray_12_srcState_1 <= stateWakeupEn_1_12 | _T_7088; // @[StatusArray.scala 241:50]
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_0 <= updateVal_12_psrc_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 248:27]
      statusArray_12_psrc_1 <= updateVal_12_psrc_1;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_0 <= updateVal_12_srcType_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 249:30]
      statusArray_12_srcType_1 <= updateVal_12_srcType_1;
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
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_7602; // @[StatusArray.scala 241:50]
    statusArray_13_srcState_1 <= stateWakeupEn_1_13 | _T_7604; // @[StatusArray.scala 241:50]
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_0 <= updateVal_13_psrc_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 248:27]
      statusArray_13_psrc_1 <= updateVal_13_psrc_1;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_0 <= updateVal_13_srcType_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 249:30]
      statusArray_13_srcType_1 <= updateVal_13_srcType_1;
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
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_8118; // @[StatusArray.scala 241:50]
    statusArray_14_srcState_1 <= stateWakeupEn_1_14 | _T_8120; // @[StatusArray.scala 241:50]
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_0 <= updateVal_14_psrc_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 248:27]
      statusArray_14_psrc_1 <= updateVal_14_psrc_1;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_0 <= updateVal_14_srcType_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 249:30]
      statusArray_14_srcType_1 <= updateVal_14_srcType_1;
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
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_8634; // @[StatusArray.scala 241:50]
    statusArray_15_srcState_1 <= stateWakeupEn_1_15 | _T_8636; // @[StatusArray.scala 241:50]
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_0 <= updateVal_15_psrc_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 248:27]
      statusArray_15_psrc_1 <= updateVal_15_psrc_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_0 <= updateVal_15_srcType_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 249:30]
      statusArray_15_srcType_1 <= updateVal_15_srcType_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_flag <= updateVal_15_robIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 250:29]
      statusArray_15_robIdx_value <= updateVal_15_robIdx_value;
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
  statusArray_0_srcState_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  statusArray_0_srcState_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  statusArray_0_psrc_1 = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  statusArray_0_srcType_1 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_1_valid = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_1_srcState_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_1_psrc_1 = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_1_srcType_1 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_2_valid = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_2_srcState_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_2_psrc_1 = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_2_srcType_1 = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_26[6:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_3_valid = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_3_srcState_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_3_psrc_1 = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_3_srcType_1 = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_4_valid = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_4_srcState_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_4_psrc_1 = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_4_srcType_1 = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_5_valid = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_5_srcState_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_48[6:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_5_psrc_1 = _RAND_49[6:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_50[1:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_5_srcType_1 = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_6_valid = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_6_srcState_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_6_psrc_1 = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_6_srcType_1 = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_7_valid = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_7_srcState_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_66[6:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_7_psrc_1 = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_7_srcType_1 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_8_valid = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_8_srcState_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_8_psrc_1 = _RAND_76[6:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_8_srcType_1 = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_9_valid = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_9_srcState_1 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_84[6:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_9_psrc_1 = _RAND_85[6:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_86[1:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_9_srcType_1 = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_89[6:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_10_valid = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_10_srcState_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_93[6:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_10_psrc_1 = _RAND_94[6:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_95[1:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_10_srcType_1 = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_98[6:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_11_valid = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_11_srcState_1 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_102[6:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_11_psrc_1 = _RAND_103[6:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_11_srcType_1 = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_107[6:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_12_valid = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_12_srcState_1 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_111[6:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_12_psrc_1 = _RAND_112[6:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_12_srcType_1 = _RAND_114[1:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_116[6:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_13_valid = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_13_srcState_1 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_120[6:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_13_psrc_1 = _RAND_121[6:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_13_srcType_1 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_125[6:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_14_valid = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  statusArray_14_srcState_1 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_129[6:0];
  _RAND_130 = {1{`RANDOM}};
  statusArray_14_psrc_1 = _RAND_130[6:0];
  _RAND_131 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  statusArray_14_srcType_1 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_134[6:0];
  _RAND_135 = {1{`RANDOM}};
  statusArray_15_valid = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  statusArray_15_srcState_1 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_138[6:0];
  _RAND_139 = {1{`RANDOM}};
  statusArray_15_psrc_1 = _RAND_139[6:0];
  _RAND_140 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  statusArray_15_srcType_1 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_143[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
