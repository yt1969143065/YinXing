module StatusArray_2(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [11:0] io_isValid,
  output [11:0] io_canIssue,
  input         io_update_0_enable,
  input  [11:0] io_update_0_addr,
  input         io_update_0_data_srcState_0,
  input         io_update_0_data_srcState_1,
  input  [6:0]  io_update_0_data_psrc_0,
  input  [6:0]  io_update_0_data_psrc_1,
  input  [1:0]  io_update_0_data_srcType_0,
  input  [1:0]  io_update_0_data_srcType_1,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [11:0] io_update_1_addr,
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
  output [11:0] io_wakeupMatch_0_0,
  output [11:0] io_wakeupMatch_0_1,
  output [11:0] io_wakeupMatch_1_0,
  output [11:0] io_wakeupMatch_1_1,
  output [11:0] io_wakeupMatch_2_0,
  output [11:0] io_wakeupMatch_2_1,
  output [11:0] io_wakeupMatch_3_0,
  output [11:0] io_wakeupMatch_3_1,
  output [11:0] io_wakeupMatch_4_0,
  output [11:0] io_wakeupMatch_4_1,
  output [11:0] io_wakeupMatch_5_0,
  output [11:0] io_wakeupMatch_5_1,
  output [11:0] io_wakeupMatch_6_0,
  output [11:0] io_wakeupMatch_6_1,
  output [11:0] io_wakeupMatch_7_0,
  output [11:0] io_wakeupMatch_7_1,
  output [11:0] io_wakeupMatch_8_0,
  output [11:0] io_wakeupMatch_8_1,
  output [11:0] io_wakeupMatch_9_0,
  output [11:0] io_wakeupMatch_9_1,
  output [11:0] io_wakeupMatch_10_0,
  output [11:0] io_wakeupMatch_10_1,
  output [11:0] io_wakeupMatch_11_0,
  output [11:0] io_wakeupMatch_11_1,
  input         io_deqResp_0_valid,
  input  [11:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success
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
  wire [7:0] _isFlushed_flushItself_T_1 = {statusArray_0_robIdx_flag,statusArray_0_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag = statusArray_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare = statusArray_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_2 = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 36:20]
  wire  isFlushed = statusArray_0_valid & _isFlushed_T_2; // @[StatusArray.scala 173:34]
  wire  mask_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire  _T_52 = |mask_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_0 = isFlushed | _T_52 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire  _T_56 = |mask_1_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_1 = isFlushed_1 | _T_56 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire  _T_60 = |mask_2_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_2 = isFlushed_2 | _T_60 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire  _T_64 = |mask_3_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_3 = isFlushed_3 | _T_64 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire  _T_68 = |mask_4_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_4 = isFlushed_4 | _T_68 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire  _T_72 = |mask_5_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_5 = isFlushed_5 | _T_72 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire  _T_76 = |mask_6_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_6 = isFlushed_6 | _T_76 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire  _T_80 = |mask_7_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_7 = isFlushed_7 | _T_80 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_8_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire  _T_84 = |mask_8_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_8 = isFlushed_8 | _T_84 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_9_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire  _T_88 = |mask_9_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_9 = isFlushed_9 | _T_88 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_10_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire  _T_92 = |mask_10_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_10 = isFlushed_10 | _T_92 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  mask_11_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire  _T_96 = |mask_11_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_11 = isFlushed_11 | _T_96 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_11_1 = io_update_1_enable & io_update_1_addr[11]; // @[StatusArray.scala 158:57]
  wire  updateVec_11_0 = io_update_0_enable & io_update_0_addr[11]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_48 = {updateVec_11_1,updateVec_11_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_11 = |_T_48; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_11 = updateValid_11 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_11_valid = ~flushedVec_11 & (realUpdateValid_11 | statusArray_11_valid); // @[StatusArray.scala 177:40]
  wire [6:0] _updateStatus_T_42 = updateVec__0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_43 = updateVec__1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_1 = _updateStatus_T_42 | _updateStatus_T_43; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_1 = updateValid_0 ? updateVal_0_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_496 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_1 = _T_496 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_480 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_1 = _T_480 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_464 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_1 = _T_464 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_448 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_1 = _T_448 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_432 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_1 = _T_432 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_416 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_416 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_400 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_400 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_384 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_384 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_368 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_368 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_352 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_352 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_336 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_336 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_320 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_320 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_1 = {stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,
    stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_1 = {stateMatchVec_11_1,stateMatchVec_10_1,stateMatchVec_9_1,stateMatchVec_8_1,
    stateMatchVec_7_1,stateMatchVec_6_1,stateMatch_lo_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_1 = updateVec__0 & io_update_0_data_srcState_1 | updateVec__1 & io_update_1_data_srcState_1
    ; // @[Mux.scala 27:73]
  wire  _T_536 = updateValid_0 ? updateVal_0_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_536; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_39 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_40 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_39 | _updateStatus_T_40; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_281 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11 = _T_281 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_265 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10 = _T_265 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_249 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9 = _T_249 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_233 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8 = _T_233 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_217 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7 = _T_217 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_201 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_201 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_185 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_185 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_169 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_169 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_153 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_153 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_137 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_137 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_121 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_121 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_105 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_105 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo = {stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,
    stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T = {stateMatchVec_11,stateMatchVec_10,stateMatchVec_9,stateMatchVec_8,stateMatchVec_7,
    stateMatchVec_6,stateMatch_lo}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_534 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_534; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_108 = updateVec_1_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_109 = updateVec_1_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_1 = _updateStatus_T_108 | _updateStatus_T_109; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_1 = updateValid_1 ? updateVal_1_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_940 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_3 = _T_940 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_924 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_3 = _T_924 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_908 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_3 = _T_908 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_892 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_3 = _T_892 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_876 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_3 = _T_876 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_860 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_860 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_844 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_844 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_828 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_828 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_812 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_812 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_796 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_796 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_780 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_780 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_764 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_764 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_3 = {stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,
    stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_3 = {stateMatchVec_11_3,stateMatchVec_10_3,stateMatchVec_9_3,stateMatchVec_8_3,
    stateMatchVec_7_3,stateMatchVec_6_3,stateMatch_lo_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_1 = updateVec_1_0 & io_update_0_data_srcState_1 | updateVec_1_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_980 = updateValid_1 ? updateVal_1_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_980; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_105 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_106 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_105 | _updateStatus_T_106; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_725 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_2 = _T_725 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_709 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_2 = _T_709 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_693 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_2 = _T_693 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_677 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_2 = _T_677 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_661 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_2 = _T_661 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_645 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_645 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_629 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_629 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_613 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_613 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_597 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_597 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_581 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_581 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_565 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_565 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_549 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_549 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_2 = {stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,
    stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_2 = {stateMatchVec_11_2,stateMatchVec_10_2,stateMatchVec_9_2,stateMatchVec_8_2,
    stateMatchVec_7_2,stateMatchVec_6_2,stateMatch_lo_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_978 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_978; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_174 = updateVec_2_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_175 = updateVec_2_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_1 = _updateStatus_T_174 | _updateStatus_T_175; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_1 = updateValid_2 ? updateVal_2_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1384 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_5 = _T_1384 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1368 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_5 = _T_1368 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1352 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_5 = _T_1352 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1336 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_5 = _T_1336 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1320 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_5 = _T_1320 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1304 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_1304 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1288 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_1288 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1272 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_1272 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1256 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_1256 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1240 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_1240 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1224 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_1224 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1208 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_1208 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_5 = {stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,
    stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_5 = {stateMatchVec_11_5,stateMatchVec_10_5,stateMatchVec_9_5,stateMatchVec_8_5,
    stateMatchVec_7_5,stateMatchVec_6_5,stateMatch_lo_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_1 = updateVec_2_0 & io_update_0_data_srcState_1 | updateVec_2_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1424 = updateValid_2 ? updateVal_2_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_1424; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_171 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_172 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_171 | _updateStatus_T_172; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1169 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_4 = _T_1169 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1153 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_4 = _T_1153 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1137 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_4 = _T_1137 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1121 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_4 = _T_1121 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1105 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_4 = _T_1105 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1089 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_1089 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1073 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_1073 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1057 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_1057 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1041 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_1041 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1025 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_1025 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1009 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_1009 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_993 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_993 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_4 = {stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,
    stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_4 = {stateMatchVec_11_4,stateMatchVec_10_4,stateMatchVec_9_4,stateMatchVec_8_4,
    stateMatchVec_7_4,stateMatchVec_6_4,stateMatch_lo_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1422 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1422; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_240 = updateVec_3_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_241 = updateVec_3_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_1 = _updateStatus_T_240 | _updateStatus_T_241; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_1 = updateValid_3 ? updateVal_3_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1828 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_7 = _T_1828 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1812 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_7 = _T_1812 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1796 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_7 = _T_1796 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1780 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_7 = _T_1780 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1764 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_7 = _T_1764 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1748 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_1748 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1732 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_1732 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1716 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_1716 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1700 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_1700 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1684 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_1684 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1668 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_1668 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1652 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_1652 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_7 = {stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,
    stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_7 = {stateMatchVec_11_7,stateMatchVec_10_7,stateMatchVec_9_7,stateMatchVec_8_7,
    stateMatchVec_7_7,stateMatchVec_6_7,stateMatch_lo_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_1 = updateVec_3_0 & io_update_0_data_srcState_1 | updateVec_3_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1868 = updateValid_3 ? updateVal_3_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_1868; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_237 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_238 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_237 | _updateStatus_T_238; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1613 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_6 = _T_1613 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1597 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_6 = _T_1597 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1581 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_6 = _T_1581 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1565 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_6 = _T_1565 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1549 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_6 = _T_1549 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1533 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_1533 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1517 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_1517 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1501 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_1501 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1485 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_1485 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1469 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_1469 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1453 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_1453 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1437 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_1437 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_6 = {stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,
    stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_6 = {stateMatchVec_11_6,stateMatchVec_10_6,stateMatchVec_9_6,stateMatchVec_8_6,
    stateMatchVec_7_6,stateMatchVec_6_6,stateMatch_lo_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1866 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1866; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_306 = updateVec_4_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_307 = updateVec_4_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_1 = _updateStatus_T_306 | _updateStatus_T_307; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_1 = updateValid_4 ? updateVal_4_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2272 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_9 = _T_2272 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2256 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_9 = _T_2256 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2240 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_9 = _T_2240 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2224 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_9 = _T_2224 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2208 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_9 = _T_2208 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2192 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_2192 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2176 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_2176 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2160 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_2160 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2144 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_2144 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2128 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_2128 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2112 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_2112 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2096 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_2096 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_9 = {stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,
    stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_9 = {stateMatchVec_11_9,stateMatchVec_10_9,stateMatchVec_9_9,stateMatchVec_8_9,
    stateMatchVec_7_9,stateMatchVec_6_9,stateMatch_lo_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_1 = updateVec_4_0 & io_update_0_data_srcState_1 | updateVec_4_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2312 = updateValid_4 ? updateVal_4_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_2312; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_303 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_304 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_303 | _updateStatus_T_304; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2057 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_8 = _T_2057 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2041 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_8 = _T_2041 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2025 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_8 = _T_2025 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2009 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_8 = _T_2009 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1993 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_8 = _T_1993 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1977 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_1977 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1961 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_1961 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1945 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_1945 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1929 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_1929 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1913 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_1913 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1897 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_1897 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1881 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_1881 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_8 = {stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,
    stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_8 = {stateMatchVec_11_8,stateMatchVec_10_8,stateMatchVec_9_8,stateMatchVec_8_8,
    stateMatchVec_7_8,stateMatchVec_6_8,stateMatch_lo_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2310 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_2310; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_372 = updateVec_5_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_373 = updateVec_5_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_1 = _updateStatus_T_372 | _updateStatus_T_373; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_1 = updateValid_5 ? updateVal_5_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2716 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_11 = _T_2716 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2700 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_11 = _T_2700 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2684 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_11 = _T_2684 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2668 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_11 = _T_2668 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2652 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_11 = _T_2652 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2636 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_2636 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2620 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_2620 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2604 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_2604 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2588 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_2588 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2572 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_2572 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2556 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_2556 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2540 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_2540 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_11 = {stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,
    stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_11 = {stateMatchVec_11_11,stateMatchVec_10_11,stateMatchVec_9_11,stateMatchVec_8_11,
    stateMatchVec_7_11,stateMatchVec_6_11,stateMatch_lo_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_1 = updateVec_5_0 & io_update_0_data_srcState_1 | updateVec_5_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2756 = updateValid_5 ? updateVal_5_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_2756; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_369 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_370 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_369 | _updateStatus_T_370; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2501 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_10 = _T_2501 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2485 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_10 = _T_2485 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2469 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_10 = _T_2469 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2453 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_10 = _T_2453 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2437 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_10 = _T_2437 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2421 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_2421 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2405 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_2405 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2389 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_2389 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2373 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_2373 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2357 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_2357 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2341 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_2341 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2325 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_2325 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_10 = {stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,
    stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_10 = {stateMatchVec_11_10,stateMatchVec_10_10,stateMatchVec_9_10,stateMatchVec_8_10,
    stateMatchVec_7_10,stateMatchVec_6_10,stateMatch_lo_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2754 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_2754; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_438 = updateVec_6_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_439 = updateVec_6_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_1 = _updateStatus_T_438 | _updateStatus_T_439; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_1 = updateValid_6 ? updateVal_6_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3160 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_13 = _T_3160 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3144 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_13 = _T_3144 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3128 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_13 = _T_3128 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3112 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_13 = _T_3112 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3096 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_13 = _T_3096 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3080 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_3080 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3064 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_3064 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3048 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_3048 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3032 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_3032 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3016 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_3016 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3000 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_3000 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2984 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_2984 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_13 = {stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,
    stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_13 = {stateMatchVec_11_13,stateMatchVec_10_13,stateMatchVec_9_13,stateMatchVec_8_13,
    stateMatchVec_7_13,stateMatchVec_6_13,stateMatch_lo_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_1 = updateVec_6_0 & io_update_0_data_srcState_1 | updateVec_6_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3200 = updateValid_6 ? updateVal_6_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_3200; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_435 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_436 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_435 | _updateStatus_T_436; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2945 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_12 = _T_2945 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2929 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_12 = _T_2929 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2913 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_12 = _T_2913 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2897 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_12 = _T_2897 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2881 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_12 = _T_2881 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2865 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_2865 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2849 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_2849 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2833 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_2833 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2817 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_2817 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2801 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_2801 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2785 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_2785 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2769 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_2769 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_12 = {stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,
    stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_12 = {stateMatchVec_11_12,stateMatchVec_10_12,stateMatchVec_9_12,stateMatchVec_8_12,
    stateMatchVec_7_12,stateMatchVec_6_12,stateMatch_lo_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3198 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_3198; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_504 = updateVec_7_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_505 = updateVec_7_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_1 = _updateStatus_T_504 | _updateStatus_T_505; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_1 = updateValid_7 ? updateVal_7_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3604 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_15 = _T_3604 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3588 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_15 = _T_3588 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3572 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_15 = _T_3572 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3556 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_15 = _T_3556 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3540 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_15 = _T_3540 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3524 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_3524 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3508 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_3508 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3492 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_3492 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3476 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_3476 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3460 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_3460 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3444 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_3444 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3428 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_3428 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_15 = {stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,
    stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_15 = {stateMatchVec_11_15,stateMatchVec_10_15,stateMatchVec_9_15,stateMatchVec_8_15,
    stateMatchVec_7_15,stateMatchVec_6_15,stateMatch_lo_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_1 = updateVec_7_0 & io_update_0_data_srcState_1 | updateVec_7_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_3644 = updateValid_7 ? updateVal_7_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_3644; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_501 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_502 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_501 | _updateStatus_T_502; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3389 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_14 = _T_3389 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3373 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_14 = _T_3373 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3357 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_14 = _T_3357 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3341 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_14 = _T_3341 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3325 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_14 = _T_3325 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3309 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_3309 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3293 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_3293 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3277 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_3277 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3261 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_3261 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3245 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_3245 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3229 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_3229 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3213 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_3213 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_14 = {stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,
    stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_14 = {stateMatchVec_11_14,stateMatchVec_10_14,stateMatchVec_9_14,stateMatchVec_8_14,
    stateMatchVec_7_14,stateMatchVec_6_14,stateMatch_lo_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3642 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_3642; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_570 = updateVec_8_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_571 = updateVec_8_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_1 = _updateStatus_T_570 | _updateStatus_T_571; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_1 = updateValid_8 ? updateVal_8_psrc_1 : statusArray_8_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4048 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_17 = _T_4048 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4032 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_17 = _T_4032 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4016 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_17 = _T_4016 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4000 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_17 = _T_4000 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3984 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_17 = _T_3984 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3968 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_17 = _T_3968 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3952 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_17 = _T_3952 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3936 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_17 = _T_3936 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3920 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_17 = _T_3920 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3904 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_17 = _T_3904 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3888 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_17 = _T_3888 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3872 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_17 = _T_3872 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_17 = {stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,stateMatchVec_2_17,
    stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_17 = {stateMatchVec_11_17,stateMatchVec_10_17,stateMatchVec_9_17,stateMatchVec_8_17,
    stateMatchVec_7_17,stateMatchVec_6_17,stateMatch_lo_17}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_8 = |_stateMatch_T_17; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_1 = updateVec_8_0 & io_update_0_data_srcState_1 | updateVec_8_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4088 = updateValid_8 ? updateVal_8_srcState_1 : statusArray_8_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_1 = stateWakeupEn_1_8 | _T_4088; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_567 = updateVec_8_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_568 = updateVec_8_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_0 = _updateStatus_T_567 | _updateStatus_T_568; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3833 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_16 = _T_3833 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3817 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_16 = _T_3817 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3801 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_16 = _T_3801 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3785 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_16 = _T_3785 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3769 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_16 = _T_3769 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3753 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_16 = _T_3753 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3737 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_16 = _T_3737 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3721 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_16 = _T_3721 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3705 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_16 = _T_3705 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3689 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_16 = _T_3689 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3673 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_16 = _T_3673 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3657 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_16 = _T_3657 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_16 = {stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,stateMatchVec_2_16,
    stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_16 = {stateMatchVec_11_16,stateMatchVec_10_16,stateMatchVec_9_16,stateMatchVec_8_16,
    stateMatchVec_7_16,stateMatchVec_6_16,stateMatch_lo_16}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_16; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4086 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_4086; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_40 = {statusArrayNext_8_srcState_1,statusArrayNext_8_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_8 = &_readyVecNext_T_40; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_636 = updateVec_9_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_637 = updateVec_9_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_1 = _updateStatus_T_636 | _updateStatus_T_637; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_1 = updateValid_9 ? updateVal_9_psrc_1 : statusArray_9_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4492 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_19 = _T_4492 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4476 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_19 = _T_4476 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4460 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_19 = _T_4460 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4444 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_19 = _T_4444 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4428 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_19 = _T_4428 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4412 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_19 = _T_4412 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4396 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_19 = _T_4396 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4380 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_19 = _T_4380 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4364 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_19 = _T_4364 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4348 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_19 = _T_4348 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4332 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_19 = _T_4332 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4316 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_19 = _T_4316 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_19 = {stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,stateMatchVec_2_19,
    stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_19 = {stateMatchVec_11_19,stateMatchVec_10_19,stateMatchVec_9_19,stateMatchVec_8_19,
    stateMatchVec_7_19,stateMatchVec_6_19,stateMatch_lo_19}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_9 = |_stateMatch_T_19; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_1 = updateVec_9_0 & io_update_0_data_srcState_1 | updateVec_9_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4532 = updateValid_9 ? updateVal_9_srcState_1 : statusArray_9_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_1 = stateWakeupEn_1_9 | _T_4532; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_633 = updateVec_9_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_634 = updateVec_9_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_0 = _updateStatus_T_633 | _updateStatus_T_634; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4277 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_18 = _T_4277 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4261 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_18 = _T_4261 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4245 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_18 = _T_4245 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4229 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_18 = _T_4229 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4213 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_18 = _T_4213 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4197 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_18 = _T_4197 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4181 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_18 = _T_4181 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4165 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_18 = _T_4165 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4149 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_18 = _T_4149 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4133 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_18 = _T_4133 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4117 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_18 = _T_4117 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4101 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_18 = _T_4101 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_18 = {stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,stateMatchVec_2_18,
    stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_18 = {stateMatchVec_11_18,stateMatchVec_10_18,stateMatchVec_9_18,stateMatchVec_8_18,
    stateMatchVec_7_18,stateMatchVec_6_18,stateMatch_lo_18}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_18; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4530 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_4530; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_45 = {statusArrayNext_9_srcState_1,statusArrayNext_9_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_9 = &_readyVecNext_T_45; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_702 = updateVec_10_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_703 = updateVec_10_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_1 = _updateStatus_T_702 | _updateStatus_T_703; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_1 = updateValid_10 ? updateVal_10_psrc_1 : statusArray_10_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_4936 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_21 = _T_4936 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4920 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_21 = _T_4920 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4904 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_21 = _T_4904 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4888 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_21 = _T_4888 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4872 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_21 = _T_4872 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4856 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_21 = _T_4856 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4840 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_21 = _T_4840 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4824 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_21 = _T_4824 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4808 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_21 = _T_4808 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4792 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_21 = _T_4792 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4776 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_21 = _T_4776 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4760 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_21 = _T_4760 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_21 = {stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,stateMatchVec_2_21,
    stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_21 = {stateMatchVec_11_21,stateMatchVec_10_21,stateMatchVec_9_21,stateMatchVec_8_21,
    stateMatchVec_7_21,stateMatchVec_6_21,stateMatch_lo_21}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_10 = |_stateMatch_T_21; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_1 = updateVec_10_0 & io_update_0_data_srcState_1 | updateVec_10_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_4976 = updateValid_10 ? updateVal_10_srcState_1 : statusArray_10_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_1 = stateWakeupEn_1_10 | _T_4976; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_699 = updateVec_10_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_700 = updateVec_10_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_0 = _updateStatus_T_699 | _updateStatus_T_700; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4721 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_20 = _T_4721 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4705 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_20 = _T_4705 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4689 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_20 = _T_4689 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4673 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_20 = _T_4673 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4657 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_20 = _T_4657 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4641 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_20 = _T_4641 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4625 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_20 = _T_4625 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4609 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_20 = _T_4609 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4593 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_20 = _T_4593 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4577 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_20 = _T_4577 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4561 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_20 = _T_4561 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4545 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_20 = _T_4545 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_20 = {stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,stateMatchVec_2_20,
    stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_20 = {stateMatchVec_11_20,stateMatchVec_10_20,stateMatchVec_9_20,stateMatchVec_8_20,
    stateMatchVec_7_20,stateMatchVec_6_20,stateMatch_lo_20}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_20; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4974 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_4974; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_50 = {statusArrayNext_10_srcState_1,statusArrayNext_10_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_10 = &_readyVecNext_T_50; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_768 = updateVec_11_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_769 = updateVec_11_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_1 = _updateStatus_T_768 | _updateStatus_T_769; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_1 = updateValid_11 ? updateVal_11_psrc_1 : statusArray_11_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_5380 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_23 = _T_5380 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5364 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_23 = _T_5364 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5348 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_23 = _T_5348 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5332 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_23 = _T_5332 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5316 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_23 = _T_5316 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5300 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_23 = _T_5300 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5284 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_23 = _T_5284 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5268 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_23 = _T_5268 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5252 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_23 = _T_5252 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5236 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_23 = _T_5236 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5220 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_23 = _T_5220 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5204 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_23 = _T_5204 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_23 = {stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,stateMatchVec_2_23,
    stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_23 = {stateMatchVec_11_23,stateMatchVec_10_23,stateMatchVec_9_23,stateMatchVec_8_23,
    stateMatchVec_7_23,stateMatchVec_6_23,stateMatch_lo_23}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_11 = |_stateMatch_T_23; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_1 = updateVec_11_0 & io_update_0_data_srcState_1 | updateVec_11_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_5420 = updateValid_11 ? updateVal_11_srcState_1 : statusArray_11_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_1 = stateWakeupEn_1_11 | _T_5420; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_765 = updateVec_11_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_766 = updateVec_11_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_0 = _updateStatus_T_765 | _updateStatus_T_766; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5165 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_22 = _T_5165 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5149 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_22 = _T_5149 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5133 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_22 = _T_5133 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5117 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_22 = _T_5117 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5101 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_22 = _T_5101 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5085 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_22 = _T_5085 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5069 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_22 = _T_5069 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5053 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_22 = _T_5053 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5037 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_22 = _T_5037 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5021 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_22 = _T_5021 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5005 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_22 = _T_5005 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4989 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_22 = _T_4989 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_22 = {stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,stateMatchVec_2_22,
    stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 137:45]
  wire [11:0] _stateMatch_T_22 = {stateMatchVec_11_22,stateMatchVec_10_22,stateMatchVec_9_22,stateMatchVec_8_22,
    stateMatchVec_7_22,stateMatchVec_6_22,stateMatch_lo_22}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_22; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5418 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_5418; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_55 = {statusArrayNext_11_srcState_1,statusArrayNext_11_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_11 = &_readyVecNext_T_55; // @[StatusArray.scala 65:38]
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
  wire  _T_107 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_115 = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_116 = _T_107 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0 = _T_105 & _T_116; // @[StatusArray.scala 134:33]
  wire  _T_123 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_132 = _T_123 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1 = _T_121 & _T_132; // @[StatusArray.scala 134:33]
  wire  _T_139 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_148 = _T_139 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2 = _T_137 & _T_148; // @[StatusArray.scala 134:33]
  wire  _T_155 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_164 = _T_155 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3 = _T_153 & _T_164; // @[StatusArray.scala 134:33]
  wire  _T_171 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_180 = _T_171 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4 = _T_169 & _T_180; // @[StatusArray.scala 134:33]
  wire  _T_187 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_196 = _T_187 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5 = _T_185 & _T_196; // @[StatusArray.scala 134:33]
  wire  _T_203 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_212 = _T_203 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6 = _T_201 & _T_212; // @[StatusArray.scala 134:33]
  wire  _T_219 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_228 = _T_219 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7 = _T_217 & _T_228; // @[StatusArray.scala 134:33]
  wire  _T_235 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_244 = _T_235 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8 = _T_233 & _T_244; // @[StatusArray.scala 134:33]
  wire  _T_251 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_260 = _T_251 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9 = _T_249 & _T_260; // @[StatusArray.scala 134:33]
  wire  _T_267 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_276 = _T_267 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10 = _T_265 & _T_276; // @[StatusArray.scala 134:33]
  wire  _T_283 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_292 = _T_283 & _T_115; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11 = _T_281 & _T_292; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo = {dataMatchVec_5,dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi = {dataMatchVec_11,dataMatchVec_10,dataMatchVec_9,dataMatchVec_8,dataMatchVec_7,dataMatchVec_6
    }; // @[StatusArray.scala 138:43]
  wire  _T_322 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? updateVal_0_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_330 = statusArrayNext_0_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_331 = _T_322 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_1 = _T_320 & _T_331; // @[StatusArray.scala 134:33]
  wire  _T_338 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_347 = _T_338 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_1 = _T_336 & _T_347; // @[StatusArray.scala 134:33]
  wire  _T_354 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_363 = _T_354 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_1 = _T_352 & _T_363; // @[StatusArray.scala 134:33]
  wire  _T_370 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_379 = _T_370 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_1 = _T_368 & _T_379; // @[StatusArray.scala 134:33]
  wire  _T_386 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_395 = _T_386 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_1 = _T_384 & _T_395; // @[StatusArray.scala 134:33]
  wire  _T_402 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_411 = _T_402 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_1 = _T_400 & _T_411; // @[StatusArray.scala 134:33]
  wire  _T_418 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_427 = _T_418 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_1 = _T_416 & _T_427; // @[StatusArray.scala 134:33]
  wire  _T_434 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_443 = _T_434 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_1 = _T_432 & _T_443; // @[StatusArray.scala 134:33]
  wire  _T_450 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_459 = _T_450 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_1 = _T_448 & _T_459; // @[StatusArray.scala 134:33]
  wire  _T_466 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_475 = _T_466 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_1 = _T_464 & _T_475; // @[StatusArray.scala 134:33]
  wire  _T_482 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_491 = _T_482 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_1 = _T_480 & _T_491; // @[StatusArray.scala 134:33]
  wire  _T_498 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_507 = _T_498 & _T_330; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_1 = _T_496 & _T_507; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_1 = {dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,
    dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_1 = {dataMatchVec_11_1,dataMatchVec_10_1,dataMatchVec_9_1,dataMatchVec_8_1,dataMatchVec_7_1,
    dataMatchVec_6_1}; // @[StatusArray.scala 138:43]
  wire  _T_551 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_559 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_560 = _T_551 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_2 = _T_549 & _T_560; // @[StatusArray.scala 134:33]
  wire  _T_567 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_576 = _T_567 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_2 = _T_565 & _T_576; // @[StatusArray.scala 134:33]
  wire  _T_583 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_592 = _T_583 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_2 = _T_581 & _T_592; // @[StatusArray.scala 134:33]
  wire  _T_599 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_608 = _T_599 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_2 = _T_597 & _T_608; // @[StatusArray.scala 134:33]
  wire  _T_615 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_624 = _T_615 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_2 = _T_613 & _T_624; // @[StatusArray.scala 134:33]
  wire  _T_631 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_640 = _T_631 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_2 = _T_629 & _T_640; // @[StatusArray.scala 134:33]
  wire  _T_647 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_656 = _T_647 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_2 = _T_645 & _T_656; // @[StatusArray.scala 134:33]
  wire  _T_663 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_672 = _T_663 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_2 = _T_661 & _T_672; // @[StatusArray.scala 134:33]
  wire  _T_679 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_688 = _T_679 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_2 = _T_677 & _T_688; // @[StatusArray.scala 134:33]
  wire  _T_695 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_704 = _T_695 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_2 = _T_693 & _T_704; // @[StatusArray.scala 134:33]
  wire  _T_711 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_720 = _T_711 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_2 = _T_709 & _T_720; // @[StatusArray.scala 134:33]
  wire  _T_727 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_736 = _T_727 & _T_559; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_2 = _T_725 & _T_736; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_2 = {dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,
    dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_2 = {dataMatchVec_11_2,dataMatchVec_10_2,dataMatchVec_9_2,dataMatchVec_8_2,dataMatchVec_7_2,
    dataMatchVec_6_2}; // @[StatusArray.scala 138:43]
  wire  _T_766 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? updateVal_1_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_774 = statusArrayNext_1_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_775 = _T_766 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_3 = _T_764 & _T_775; // @[StatusArray.scala 134:33]
  wire  _T_782 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_791 = _T_782 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_3 = _T_780 & _T_791; // @[StatusArray.scala 134:33]
  wire  _T_798 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_807 = _T_798 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_3 = _T_796 & _T_807; // @[StatusArray.scala 134:33]
  wire  _T_814 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_823 = _T_814 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_3 = _T_812 & _T_823; // @[StatusArray.scala 134:33]
  wire  _T_830 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_839 = _T_830 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_3 = _T_828 & _T_839; // @[StatusArray.scala 134:33]
  wire  _T_846 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_855 = _T_846 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_3 = _T_844 & _T_855; // @[StatusArray.scala 134:33]
  wire  _T_862 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_871 = _T_862 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_3 = _T_860 & _T_871; // @[StatusArray.scala 134:33]
  wire  _T_878 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_887 = _T_878 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_3 = _T_876 & _T_887; // @[StatusArray.scala 134:33]
  wire  _T_894 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_903 = _T_894 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_3 = _T_892 & _T_903; // @[StatusArray.scala 134:33]
  wire  _T_910 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_919 = _T_910 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_3 = _T_908 & _T_919; // @[StatusArray.scala 134:33]
  wire  _T_926 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_935 = _T_926 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_3 = _T_924 & _T_935; // @[StatusArray.scala 134:33]
  wire  _T_942 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_951 = _T_942 & _T_774; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_3 = _T_940 & _T_951; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_3 = {dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,
    dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_3 = {dataMatchVec_11_3,dataMatchVec_10_3,dataMatchVec_9_3,dataMatchVec_8_3,dataMatchVec_7_3,
    dataMatchVec_6_3}; // @[StatusArray.scala 138:43]
  wire  _T_995 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1003 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1004 = _T_995 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_4 = _T_993 & _T_1004; // @[StatusArray.scala 134:33]
  wire  _T_1011 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1020 = _T_1011 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_4 = _T_1009 & _T_1020; // @[StatusArray.scala 134:33]
  wire  _T_1027 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1036 = _T_1027 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_4 = _T_1025 & _T_1036; // @[StatusArray.scala 134:33]
  wire  _T_1043 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1052 = _T_1043 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_4 = _T_1041 & _T_1052; // @[StatusArray.scala 134:33]
  wire  _T_1059 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1068 = _T_1059 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_4 = _T_1057 & _T_1068; // @[StatusArray.scala 134:33]
  wire  _T_1075 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1084 = _T_1075 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_4 = _T_1073 & _T_1084; // @[StatusArray.scala 134:33]
  wire  _T_1091 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1100 = _T_1091 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_4 = _T_1089 & _T_1100; // @[StatusArray.scala 134:33]
  wire  _T_1107 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1116 = _T_1107 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_4 = _T_1105 & _T_1116; // @[StatusArray.scala 134:33]
  wire  _T_1123 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1132 = _T_1123 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_4 = _T_1121 & _T_1132; // @[StatusArray.scala 134:33]
  wire  _T_1139 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1148 = _T_1139 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_4 = _T_1137 & _T_1148; // @[StatusArray.scala 134:33]
  wire  _T_1155 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1164 = _T_1155 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_4 = _T_1153 & _T_1164; // @[StatusArray.scala 134:33]
  wire  _T_1171 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1180 = _T_1171 & _T_1003; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_4 = _T_1169 & _T_1180; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_4 = {dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,
    dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_4 = {dataMatchVec_11_4,dataMatchVec_10_4,dataMatchVec_9_4,dataMatchVec_8_4,dataMatchVec_7_4,
    dataMatchVec_6_4}; // @[StatusArray.scala 138:43]
  wire  _T_1210 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? updateVal_2_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1218 = statusArrayNext_2_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1219 = _T_1210 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_5 = _T_1208 & _T_1219; // @[StatusArray.scala 134:33]
  wire  _T_1226 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1235 = _T_1226 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_5 = _T_1224 & _T_1235; // @[StatusArray.scala 134:33]
  wire  _T_1242 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1251 = _T_1242 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_5 = _T_1240 & _T_1251; // @[StatusArray.scala 134:33]
  wire  _T_1258 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1267 = _T_1258 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_5 = _T_1256 & _T_1267; // @[StatusArray.scala 134:33]
  wire  _T_1274 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1283 = _T_1274 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_5 = _T_1272 & _T_1283; // @[StatusArray.scala 134:33]
  wire  _T_1290 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1299 = _T_1290 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_5 = _T_1288 & _T_1299; // @[StatusArray.scala 134:33]
  wire  _T_1306 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1315 = _T_1306 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_5 = _T_1304 & _T_1315; // @[StatusArray.scala 134:33]
  wire  _T_1322 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1331 = _T_1322 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_5 = _T_1320 & _T_1331; // @[StatusArray.scala 134:33]
  wire  _T_1338 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1347 = _T_1338 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_5 = _T_1336 & _T_1347; // @[StatusArray.scala 134:33]
  wire  _T_1354 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1363 = _T_1354 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_5 = _T_1352 & _T_1363; // @[StatusArray.scala 134:33]
  wire  _T_1370 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1379 = _T_1370 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_5 = _T_1368 & _T_1379; // @[StatusArray.scala 134:33]
  wire  _T_1386 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1395 = _T_1386 & _T_1218; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_5 = _T_1384 & _T_1395; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_5 = {dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,
    dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_5 = {dataMatchVec_11_5,dataMatchVec_10_5,dataMatchVec_9_5,dataMatchVec_8_5,dataMatchVec_7_5,
    dataMatchVec_6_5}; // @[StatusArray.scala 138:43]
  wire  _T_1439 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1447 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1448 = _T_1439 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_6 = _T_1437 & _T_1448; // @[StatusArray.scala 134:33]
  wire  _T_1455 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1464 = _T_1455 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_6 = _T_1453 & _T_1464; // @[StatusArray.scala 134:33]
  wire  _T_1471 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1480 = _T_1471 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_6 = _T_1469 & _T_1480; // @[StatusArray.scala 134:33]
  wire  _T_1487 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1496 = _T_1487 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_6 = _T_1485 & _T_1496; // @[StatusArray.scala 134:33]
  wire  _T_1503 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1512 = _T_1503 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_6 = _T_1501 & _T_1512; // @[StatusArray.scala 134:33]
  wire  _T_1519 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1528 = _T_1519 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_6 = _T_1517 & _T_1528; // @[StatusArray.scala 134:33]
  wire  _T_1535 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1544 = _T_1535 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_6 = _T_1533 & _T_1544; // @[StatusArray.scala 134:33]
  wire  _T_1551 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1560 = _T_1551 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_6 = _T_1549 & _T_1560; // @[StatusArray.scala 134:33]
  wire  _T_1567 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1576 = _T_1567 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_6 = _T_1565 & _T_1576; // @[StatusArray.scala 134:33]
  wire  _T_1583 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1592 = _T_1583 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_6 = _T_1581 & _T_1592; // @[StatusArray.scala 134:33]
  wire  _T_1599 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1608 = _T_1599 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_6 = _T_1597 & _T_1608; // @[StatusArray.scala 134:33]
  wire  _T_1615 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1624 = _T_1615 & _T_1447; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_6 = _T_1613 & _T_1624; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_6 = {dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,
    dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_6 = {dataMatchVec_11_6,dataMatchVec_10_6,dataMatchVec_9_6,dataMatchVec_8_6,dataMatchVec_7_6,
    dataMatchVec_6_6}; // @[StatusArray.scala 138:43]
  wire  _T_1654 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? updateVal_3_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1662 = statusArrayNext_3_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1663 = _T_1654 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_7 = _T_1652 & _T_1663; // @[StatusArray.scala 134:33]
  wire  _T_1670 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1679 = _T_1670 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_7 = _T_1668 & _T_1679; // @[StatusArray.scala 134:33]
  wire  _T_1686 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1695 = _T_1686 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_7 = _T_1684 & _T_1695; // @[StatusArray.scala 134:33]
  wire  _T_1702 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1711 = _T_1702 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_7 = _T_1700 & _T_1711; // @[StatusArray.scala 134:33]
  wire  _T_1718 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1727 = _T_1718 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_7 = _T_1716 & _T_1727; // @[StatusArray.scala 134:33]
  wire  _T_1734 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1743 = _T_1734 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_7 = _T_1732 & _T_1743; // @[StatusArray.scala 134:33]
  wire  _T_1750 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1759 = _T_1750 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_7 = _T_1748 & _T_1759; // @[StatusArray.scala 134:33]
  wire  _T_1766 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1775 = _T_1766 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_7 = _T_1764 & _T_1775; // @[StatusArray.scala 134:33]
  wire  _T_1782 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1791 = _T_1782 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_7 = _T_1780 & _T_1791; // @[StatusArray.scala 134:33]
  wire  _T_1798 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1807 = _T_1798 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_7 = _T_1796 & _T_1807; // @[StatusArray.scala 134:33]
  wire  _T_1814 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1823 = _T_1814 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_7 = _T_1812 & _T_1823; // @[StatusArray.scala 134:33]
  wire  _T_1830 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1839 = _T_1830 & _T_1662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_7 = _T_1828 & _T_1839; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_7 = {dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,
    dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_7 = {dataMatchVec_11_7,dataMatchVec_10_7,dataMatchVec_9_7,dataMatchVec_8_7,dataMatchVec_7_7,
    dataMatchVec_6_7}; // @[StatusArray.scala 138:43]
  wire  _T_1883 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1891 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1892 = _T_1883 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_8 = _T_1881 & _T_1892; // @[StatusArray.scala 134:33]
  wire  _T_1899 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1908 = _T_1899 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_8 = _T_1897 & _T_1908; // @[StatusArray.scala 134:33]
  wire  _T_1915 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1924 = _T_1915 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_8 = _T_1913 & _T_1924; // @[StatusArray.scala 134:33]
  wire  _T_1931 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1940 = _T_1931 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_8 = _T_1929 & _T_1940; // @[StatusArray.scala 134:33]
  wire  _T_1947 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1956 = _T_1947 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_8 = _T_1945 & _T_1956; // @[StatusArray.scala 134:33]
  wire  _T_1963 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1972 = _T_1963 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_8 = _T_1961 & _T_1972; // @[StatusArray.scala 134:33]
  wire  _T_1979 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1988 = _T_1979 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_8 = _T_1977 & _T_1988; // @[StatusArray.scala 134:33]
  wire  _T_1995 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2004 = _T_1995 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_8 = _T_1993 & _T_2004; // @[StatusArray.scala 134:33]
  wire  _T_2011 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2020 = _T_2011 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_8 = _T_2009 & _T_2020; // @[StatusArray.scala 134:33]
  wire  _T_2027 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2036 = _T_2027 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_8 = _T_2025 & _T_2036; // @[StatusArray.scala 134:33]
  wire  _T_2043 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2052 = _T_2043 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_8 = _T_2041 & _T_2052; // @[StatusArray.scala 134:33]
  wire  _T_2059 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2068 = _T_2059 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_8 = _T_2057 & _T_2068; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_8 = {dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,
    dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_8 = {dataMatchVec_11_8,dataMatchVec_10_8,dataMatchVec_9_8,dataMatchVec_8_8,dataMatchVec_7_8,
    dataMatchVec_6_8}; // @[StatusArray.scala 138:43]
  wire  _T_2098 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? updateVal_4_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2106 = statusArrayNext_4_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2107 = _T_2098 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_9 = _T_2096 & _T_2107; // @[StatusArray.scala 134:33]
  wire  _T_2114 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2123 = _T_2114 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_9 = _T_2112 & _T_2123; // @[StatusArray.scala 134:33]
  wire  _T_2130 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2139 = _T_2130 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_9 = _T_2128 & _T_2139; // @[StatusArray.scala 134:33]
  wire  _T_2146 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2155 = _T_2146 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_9 = _T_2144 & _T_2155; // @[StatusArray.scala 134:33]
  wire  _T_2162 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2171 = _T_2162 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_9 = _T_2160 & _T_2171; // @[StatusArray.scala 134:33]
  wire  _T_2178 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2187 = _T_2178 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_9 = _T_2176 & _T_2187; // @[StatusArray.scala 134:33]
  wire  _T_2194 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2203 = _T_2194 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_9 = _T_2192 & _T_2203; // @[StatusArray.scala 134:33]
  wire  _T_2210 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2219 = _T_2210 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_9 = _T_2208 & _T_2219; // @[StatusArray.scala 134:33]
  wire  _T_2226 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2235 = _T_2226 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_9 = _T_2224 & _T_2235; // @[StatusArray.scala 134:33]
  wire  _T_2242 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2251 = _T_2242 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_9 = _T_2240 & _T_2251; // @[StatusArray.scala 134:33]
  wire  _T_2258 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2267 = _T_2258 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_9 = _T_2256 & _T_2267; // @[StatusArray.scala 134:33]
  wire  _T_2274 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2283 = _T_2274 & _T_2106; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_9 = _T_2272 & _T_2283; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_9 = {dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,
    dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_9 = {dataMatchVec_11_9,dataMatchVec_10_9,dataMatchVec_9_9,dataMatchVec_8_9,dataMatchVec_7_9,
    dataMatchVec_6_9}; // @[StatusArray.scala 138:43]
  wire  _T_2327 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2335 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2336 = _T_2327 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_10 = _T_2325 & _T_2336; // @[StatusArray.scala 134:33]
  wire  _T_2343 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2352 = _T_2343 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_10 = _T_2341 & _T_2352; // @[StatusArray.scala 134:33]
  wire  _T_2359 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2368 = _T_2359 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_10 = _T_2357 & _T_2368; // @[StatusArray.scala 134:33]
  wire  _T_2375 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2384 = _T_2375 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_10 = _T_2373 & _T_2384; // @[StatusArray.scala 134:33]
  wire  _T_2391 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2400 = _T_2391 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_10 = _T_2389 & _T_2400; // @[StatusArray.scala 134:33]
  wire  _T_2407 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2416 = _T_2407 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_10 = _T_2405 & _T_2416; // @[StatusArray.scala 134:33]
  wire  _T_2423 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2432 = _T_2423 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_10 = _T_2421 & _T_2432; // @[StatusArray.scala 134:33]
  wire  _T_2439 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2448 = _T_2439 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_10 = _T_2437 & _T_2448; // @[StatusArray.scala 134:33]
  wire  _T_2455 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2464 = _T_2455 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_10 = _T_2453 & _T_2464; // @[StatusArray.scala 134:33]
  wire  _T_2471 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2480 = _T_2471 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_10 = _T_2469 & _T_2480; // @[StatusArray.scala 134:33]
  wire  _T_2487 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2496 = _T_2487 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_10 = _T_2485 & _T_2496; // @[StatusArray.scala 134:33]
  wire  _T_2503 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2512 = _T_2503 & _T_2335; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_10 = _T_2501 & _T_2512; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_10 = {dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,
    dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_10 = {dataMatchVec_11_10,dataMatchVec_10_10,dataMatchVec_9_10,dataMatchVec_8_10,
    dataMatchVec_7_10,dataMatchVec_6_10}; // @[StatusArray.scala 138:43]
  wire  _T_2542 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? updateVal_5_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2550 = statusArrayNext_5_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2551 = _T_2542 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_11 = _T_2540 & _T_2551; // @[StatusArray.scala 134:33]
  wire  _T_2558 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2567 = _T_2558 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_11 = _T_2556 & _T_2567; // @[StatusArray.scala 134:33]
  wire  _T_2574 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2583 = _T_2574 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_11 = _T_2572 & _T_2583; // @[StatusArray.scala 134:33]
  wire  _T_2590 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2599 = _T_2590 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_11 = _T_2588 & _T_2599; // @[StatusArray.scala 134:33]
  wire  _T_2606 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2615 = _T_2606 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_11 = _T_2604 & _T_2615; // @[StatusArray.scala 134:33]
  wire  _T_2622 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2631 = _T_2622 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_11 = _T_2620 & _T_2631; // @[StatusArray.scala 134:33]
  wire  _T_2638 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2647 = _T_2638 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_11 = _T_2636 & _T_2647; // @[StatusArray.scala 134:33]
  wire  _T_2654 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2663 = _T_2654 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_11 = _T_2652 & _T_2663; // @[StatusArray.scala 134:33]
  wire  _T_2670 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2679 = _T_2670 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_11 = _T_2668 & _T_2679; // @[StatusArray.scala 134:33]
  wire  _T_2686 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2695 = _T_2686 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_11 = _T_2684 & _T_2695; // @[StatusArray.scala 134:33]
  wire  _T_2702 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2711 = _T_2702 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_11 = _T_2700 & _T_2711; // @[StatusArray.scala 134:33]
  wire  _T_2718 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2727 = _T_2718 & _T_2550; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_11 = _T_2716 & _T_2727; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_11 = {dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,
    dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_11 = {dataMatchVec_11_11,dataMatchVec_10_11,dataMatchVec_9_11,dataMatchVec_8_11,
    dataMatchVec_7_11,dataMatchVec_6_11}; // @[StatusArray.scala 138:43]
  wire  _T_2771 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2779 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2780 = _T_2771 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_12 = _T_2769 & _T_2780; // @[StatusArray.scala 134:33]
  wire  _T_2787 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2796 = _T_2787 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_12 = _T_2785 & _T_2796; // @[StatusArray.scala 134:33]
  wire  _T_2803 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2812 = _T_2803 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_12 = _T_2801 & _T_2812; // @[StatusArray.scala 134:33]
  wire  _T_2819 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2828 = _T_2819 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_12 = _T_2817 & _T_2828; // @[StatusArray.scala 134:33]
  wire  _T_2835 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2844 = _T_2835 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_12 = _T_2833 & _T_2844; // @[StatusArray.scala 134:33]
  wire  _T_2851 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2860 = _T_2851 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_12 = _T_2849 & _T_2860; // @[StatusArray.scala 134:33]
  wire  _T_2867 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2876 = _T_2867 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_12 = _T_2865 & _T_2876; // @[StatusArray.scala 134:33]
  wire  _T_2883 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2892 = _T_2883 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_12 = _T_2881 & _T_2892; // @[StatusArray.scala 134:33]
  wire  _T_2899 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2908 = _T_2899 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_12 = _T_2897 & _T_2908; // @[StatusArray.scala 134:33]
  wire  _T_2915 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2924 = _T_2915 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_12 = _T_2913 & _T_2924; // @[StatusArray.scala 134:33]
  wire  _T_2931 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2940 = _T_2931 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_12 = _T_2929 & _T_2940; // @[StatusArray.scala 134:33]
  wire  _T_2947 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2956 = _T_2947 & _T_2779; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_12 = _T_2945 & _T_2956; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_12 = {dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,
    dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_12 = {dataMatchVec_11_12,dataMatchVec_10_12,dataMatchVec_9_12,dataMatchVec_8_12,
    dataMatchVec_7_12,dataMatchVec_6_12}; // @[StatusArray.scala 138:43]
  wire  _T_2986 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? updateVal_6_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2994 = statusArrayNext_6_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2995 = _T_2986 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_13 = _T_2984 & _T_2995; // @[StatusArray.scala 134:33]
  wire  _T_3002 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3011 = _T_3002 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_13 = _T_3000 & _T_3011; // @[StatusArray.scala 134:33]
  wire  _T_3018 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3027 = _T_3018 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_13 = _T_3016 & _T_3027; // @[StatusArray.scala 134:33]
  wire  _T_3034 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3043 = _T_3034 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_13 = _T_3032 & _T_3043; // @[StatusArray.scala 134:33]
  wire  _T_3050 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3059 = _T_3050 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_13 = _T_3048 & _T_3059; // @[StatusArray.scala 134:33]
  wire  _T_3066 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3075 = _T_3066 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_13 = _T_3064 & _T_3075; // @[StatusArray.scala 134:33]
  wire  _T_3082 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3091 = _T_3082 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_13 = _T_3080 & _T_3091; // @[StatusArray.scala 134:33]
  wire  _T_3098 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3107 = _T_3098 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_13 = _T_3096 & _T_3107; // @[StatusArray.scala 134:33]
  wire  _T_3114 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3123 = _T_3114 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_13 = _T_3112 & _T_3123; // @[StatusArray.scala 134:33]
  wire  _T_3130 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3139 = _T_3130 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_13 = _T_3128 & _T_3139; // @[StatusArray.scala 134:33]
  wire  _T_3146 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3155 = _T_3146 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_13 = _T_3144 & _T_3155; // @[StatusArray.scala 134:33]
  wire  _T_3162 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3171 = _T_3162 & _T_2994; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_13 = _T_3160 & _T_3171; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_13 = {dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,
    dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_13 = {dataMatchVec_11_13,dataMatchVec_10_13,dataMatchVec_9_13,dataMatchVec_8_13,
    dataMatchVec_7_13,dataMatchVec_6_13}; // @[StatusArray.scala 138:43]
  wire  _T_3215 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3223 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3224 = _T_3215 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_14 = _T_3213 & _T_3224; // @[StatusArray.scala 134:33]
  wire  _T_3231 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3240 = _T_3231 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_14 = _T_3229 & _T_3240; // @[StatusArray.scala 134:33]
  wire  _T_3247 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3256 = _T_3247 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_14 = _T_3245 & _T_3256; // @[StatusArray.scala 134:33]
  wire  _T_3263 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3272 = _T_3263 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_14 = _T_3261 & _T_3272; // @[StatusArray.scala 134:33]
  wire  _T_3279 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3288 = _T_3279 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_14 = _T_3277 & _T_3288; // @[StatusArray.scala 134:33]
  wire  _T_3295 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3304 = _T_3295 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_14 = _T_3293 & _T_3304; // @[StatusArray.scala 134:33]
  wire  _T_3311 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3320 = _T_3311 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_14 = _T_3309 & _T_3320; // @[StatusArray.scala 134:33]
  wire  _T_3327 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3336 = _T_3327 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_14 = _T_3325 & _T_3336; // @[StatusArray.scala 134:33]
  wire  _T_3343 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3352 = _T_3343 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_14 = _T_3341 & _T_3352; // @[StatusArray.scala 134:33]
  wire  _T_3359 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3368 = _T_3359 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_14 = _T_3357 & _T_3368; // @[StatusArray.scala 134:33]
  wire  _T_3375 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3384 = _T_3375 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_14 = _T_3373 & _T_3384; // @[StatusArray.scala 134:33]
  wire  _T_3391 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3400 = _T_3391 & _T_3223; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_14 = _T_3389 & _T_3400; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_14 = {dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,
    dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_14 = {dataMatchVec_11_14,dataMatchVec_10_14,dataMatchVec_9_14,dataMatchVec_8_14,
    dataMatchVec_7_14,dataMatchVec_6_14}; // @[StatusArray.scala 138:43]
  wire  _T_3430 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? updateVal_7_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3438 = statusArrayNext_7_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_3439 = _T_3430 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_15 = _T_3428 & _T_3439; // @[StatusArray.scala 134:33]
  wire  _T_3446 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3455 = _T_3446 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_15 = _T_3444 & _T_3455; // @[StatusArray.scala 134:33]
  wire  _T_3462 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3471 = _T_3462 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_15 = _T_3460 & _T_3471; // @[StatusArray.scala 134:33]
  wire  _T_3478 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3487 = _T_3478 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_15 = _T_3476 & _T_3487; // @[StatusArray.scala 134:33]
  wire  _T_3494 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3503 = _T_3494 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_15 = _T_3492 & _T_3503; // @[StatusArray.scala 134:33]
  wire  _T_3510 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3519 = _T_3510 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_15 = _T_3508 & _T_3519; // @[StatusArray.scala 134:33]
  wire  _T_3526 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3535 = _T_3526 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_15 = _T_3524 & _T_3535; // @[StatusArray.scala 134:33]
  wire  _T_3542 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3551 = _T_3542 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_15 = _T_3540 & _T_3551; // @[StatusArray.scala 134:33]
  wire  _T_3558 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3567 = _T_3558 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_15 = _T_3556 & _T_3567; // @[StatusArray.scala 134:33]
  wire  _T_3574 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3583 = _T_3574 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_15 = _T_3572 & _T_3583; // @[StatusArray.scala 134:33]
  wire  _T_3590 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3599 = _T_3590 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_15 = _T_3588 & _T_3599; // @[StatusArray.scala 134:33]
  wire  _T_3606 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3615 = _T_3606 & _T_3438; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_15 = _T_3604 & _T_3615; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_15 = {dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,
    dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_15 = {dataMatchVec_11_15,dataMatchVec_10_15,dataMatchVec_9_15,dataMatchVec_8_15,
    dataMatchVec_7_15,dataMatchVec_6_15}; // @[StatusArray.scala 138:43]
  wire  _T_3659 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3667 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3668 = _T_3659 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_16 = _T_3657 & _T_3668; // @[StatusArray.scala 134:33]
  wire  _T_3675 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3684 = _T_3675 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_16 = _T_3673 & _T_3684; // @[StatusArray.scala 134:33]
  wire  _T_3691 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3700 = _T_3691 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_16 = _T_3689 & _T_3700; // @[StatusArray.scala 134:33]
  wire  _T_3707 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3716 = _T_3707 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_16 = _T_3705 & _T_3716; // @[StatusArray.scala 134:33]
  wire  _T_3723 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3732 = _T_3723 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_16 = _T_3721 & _T_3732; // @[StatusArray.scala 134:33]
  wire  _T_3739 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3748 = _T_3739 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_16 = _T_3737 & _T_3748; // @[StatusArray.scala 134:33]
  wire  _T_3755 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3764 = _T_3755 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_16 = _T_3753 & _T_3764; // @[StatusArray.scala 134:33]
  wire  _T_3771 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3780 = _T_3771 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_16 = _T_3769 & _T_3780; // @[StatusArray.scala 134:33]
  wire  _T_3787 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3796 = _T_3787 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_16 = _T_3785 & _T_3796; // @[StatusArray.scala 134:33]
  wire  _T_3803 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3812 = _T_3803 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_16 = _T_3801 & _T_3812; // @[StatusArray.scala 134:33]
  wire  _T_3819 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3828 = _T_3819 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_16 = _T_3817 & _T_3828; // @[StatusArray.scala 134:33]
  wire  _T_3835 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3844 = _T_3835 & _T_3667; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_16 = _T_3833 & _T_3844; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_16 = {dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16,dataMatchVec_2_16,
    dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_16 = {dataMatchVec_11_16,dataMatchVec_10_16,dataMatchVec_9_16,dataMatchVec_8_16,
    dataMatchVec_7_16,dataMatchVec_6_16}; // @[StatusArray.scala 138:43]
  wire  _T_3874 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_8_srcType_1 = updateValid_8 ? updateVal_8_srcType_1 : statusArray_8_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3882 = statusArrayNext_8_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_3883 = _T_3874 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_17 = _T_3872 & _T_3883; // @[StatusArray.scala 134:33]
  wire  _T_3890 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3899 = _T_3890 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_17 = _T_3888 & _T_3899; // @[StatusArray.scala 134:33]
  wire  _T_3906 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3915 = _T_3906 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_17 = _T_3904 & _T_3915; // @[StatusArray.scala 134:33]
  wire  _T_3922 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3931 = _T_3922 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_17 = _T_3920 & _T_3931; // @[StatusArray.scala 134:33]
  wire  _T_3938 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3947 = _T_3938 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_17 = _T_3936 & _T_3947; // @[StatusArray.scala 134:33]
  wire  _T_3954 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3963 = _T_3954 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_17 = _T_3952 & _T_3963; // @[StatusArray.scala 134:33]
  wire  _T_3970 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3979 = _T_3970 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_17 = _T_3968 & _T_3979; // @[StatusArray.scala 134:33]
  wire  _T_3986 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3995 = _T_3986 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_17 = _T_3984 & _T_3995; // @[StatusArray.scala 134:33]
  wire  _T_4002 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4011 = _T_4002 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_17 = _T_4000 & _T_4011; // @[StatusArray.scala 134:33]
  wire  _T_4018 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4027 = _T_4018 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_17 = _T_4016 & _T_4027; // @[StatusArray.scala 134:33]
  wire  _T_4034 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4043 = _T_4034 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_17 = _T_4032 & _T_4043; // @[StatusArray.scala 134:33]
  wire  _T_4050 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4059 = _T_4050 & _T_3882; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_17 = _T_4048 & _T_4059; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_17 = {dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17,dataMatchVec_2_17,
    dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_17 = {dataMatchVec_11_17,dataMatchVec_10_17,dataMatchVec_9_17,dataMatchVec_8_17,
    dataMatchVec_7_17,dataMatchVec_6_17}; // @[StatusArray.scala 138:43]
  wire  _T_4103 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4111 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4112 = _T_4103 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_18 = _T_4101 & _T_4112; // @[StatusArray.scala 134:33]
  wire  _T_4119 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4128 = _T_4119 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_18 = _T_4117 & _T_4128; // @[StatusArray.scala 134:33]
  wire  _T_4135 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4144 = _T_4135 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_18 = _T_4133 & _T_4144; // @[StatusArray.scala 134:33]
  wire  _T_4151 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4160 = _T_4151 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_18 = _T_4149 & _T_4160; // @[StatusArray.scala 134:33]
  wire  _T_4167 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4176 = _T_4167 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_18 = _T_4165 & _T_4176; // @[StatusArray.scala 134:33]
  wire  _T_4183 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4192 = _T_4183 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_18 = _T_4181 & _T_4192; // @[StatusArray.scala 134:33]
  wire  _T_4199 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4208 = _T_4199 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_18 = _T_4197 & _T_4208; // @[StatusArray.scala 134:33]
  wire  _T_4215 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4224 = _T_4215 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_18 = _T_4213 & _T_4224; // @[StatusArray.scala 134:33]
  wire  _T_4231 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4240 = _T_4231 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_18 = _T_4229 & _T_4240; // @[StatusArray.scala 134:33]
  wire  _T_4247 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4256 = _T_4247 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_18 = _T_4245 & _T_4256; // @[StatusArray.scala 134:33]
  wire  _T_4263 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4272 = _T_4263 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_18 = _T_4261 & _T_4272; // @[StatusArray.scala 134:33]
  wire  _T_4279 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4288 = _T_4279 & _T_4111; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_18 = _T_4277 & _T_4288; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_18 = {dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18,dataMatchVec_2_18,
    dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_18 = {dataMatchVec_11_18,dataMatchVec_10_18,dataMatchVec_9_18,dataMatchVec_8_18,
    dataMatchVec_7_18,dataMatchVec_6_18}; // @[StatusArray.scala 138:43]
  wire  _T_4318 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_9_srcType_1 = updateValid_9 ? updateVal_9_srcType_1 : statusArray_9_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4326 = statusArrayNext_9_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_4327 = _T_4318 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_19 = _T_4316 & _T_4327; // @[StatusArray.scala 134:33]
  wire  _T_4334 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4343 = _T_4334 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_19 = _T_4332 & _T_4343; // @[StatusArray.scala 134:33]
  wire  _T_4350 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4359 = _T_4350 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_19 = _T_4348 & _T_4359; // @[StatusArray.scala 134:33]
  wire  _T_4366 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4375 = _T_4366 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_19 = _T_4364 & _T_4375; // @[StatusArray.scala 134:33]
  wire  _T_4382 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4391 = _T_4382 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_19 = _T_4380 & _T_4391; // @[StatusArray.scala 134:33]
  wire  _T_4398 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4407 = _T_4398 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_19 = _T_4396 & _T_4407; // @[StatusArray.scala 134:33]
  wire  _T_4414 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4423 = _T_4414 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_19 = _T_4412 & _T_4423; // @[StatusArray.scala 134:33]
  wire  _T_4430 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4439 = _T_4430 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_19 = _T_4428 & _T_4439; // @[StatusArray.scala 134:33]
  wire  _T_4446 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4455 = _T_4446 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_19 = _T_4444 & _T_4455; // @[StatusArray.scala 134:33]
  wire  _T_4462 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4471 = _T_4462 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_19 = _T_4460 & _T_4471; // @[StatusArray.scala 134:33]
  wire  _T_4478 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4487 = _T_4478 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_19 = _T_4476 & _T_4487; // @[StatusArray.scala 134:33]
  wire  _T_4494 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4503 = _T_4494 & _T_4326; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_19 = _T_4492 & _T_4503; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_19 = {dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19,dataMatchVec_2_19,
    dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_19 = {dataMatchVec_11_19,dataMatchVec_10_19,dataMatchVec_9_19,dataMatchVec_8_19,
    dataMatchVec_7_19,dataMatchVec_6_19}; // @[StatusArray.scala 138:43]
  wire  _T_4547 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4555 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4556 = _T_4547 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_20 = _T_4545 & _T_4556; // @[StatusArray.scala 134:33]
  wire  _T_4563 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4572 = _T_4563 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_20 = _T_4561 & _T_4572; // @[StatusArray.scala 134:33]
  wire  _T_4579 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4588 = _T_4579 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_20 = _T_4577 & _T_4588; // @[StatusArray.scala 134:33]
  wire  _T_4595 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4604 = _T_4595 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_20 = _T_4593 & _T_4604; // @[StatusArray.scala 134:33]
  wire  _T_4611 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4620 = _T_4611 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_20 = _T_4609 & _T_4620; // @[StatusArray.scala 134:33]
  wire  _T_4627 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4636 = _T_4627 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_20 = _T_4625 & _T_4636; // @[StatusArray.scala 134:33]
  wire  _T_4643 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4652 = _T_4643 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_20 = _T_4641 & _T_4652; // @[StatusArray.scala 134:33]
  wire  _T_4659 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4668 = _T_4659 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_20 = _T_4657 & _T_4668; // @[StatusArray.scala 134:33]
  wire  _T_4675 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4684 = _T_4675 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_20 = _T_4673 & _T_4684; // @[StatusArray.scala 134:33]
  wire  _T_4691 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4700 = _T_4691 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_20 = _T_4689 & _T_4700; // @[StatusArray.scala 134:33]
  wire  _T_4707 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4716 = _T_4707 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_20 = _T_4705 & _T_4716; // @[StatusArray.scala 134:33]
  wire  _T_4723 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4732 = _T_4723 & _T_4555; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_20 = _T_4721 & _T_4732; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_20 = {dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20,dataMatchVec_2_20,
    dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_20 = {dataMatchVec_11_20,dataMatchVec_10_20,dataMatchVec_9_20,dataMatchVec_8_20,
    dataMatchVec_7_20,dataMatchVec_6_20}; // @[StatusArray.scala 138:43]
  wire  _T_4762 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_10_srcType_1 = updateValid_10 ? updateVal_10_srcType_1 : statusArray_10_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_4770 = statusArrayNext_10_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_4771 = _T_4762 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_21 = _T_4760 & _T_4771; // @[StatusArray.scala 134:33]
  wire  _T_4778 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4787 = _T_4778 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_21 = _T_4776 & _T_4787; // @[StatusArray.scala 134:33]
  wire  _T_4794 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4803 = _T_4794 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_21 = _T_4792 & _T_4803; // @[StatusArray.scala 134:33]
  wire  _T_4810 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4819 = _T_4810 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_21 = _T_4808 & _T_4819; // @[StatusArray.scala 134:33]
  wire  _T_4826 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4835 = _T_4826 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_21 = _T_4824 & _T_4835; // @[StatusArray.scala 134:33]
  wire  _T_4842 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4851 = _T_4842 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_21 = _T_4840 & _T_4851; // @[StatusArray.scala 134:33]
  wire  _T_4858 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4867 = _T_4858 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_21 = _T_4856 & _T_4867; // @[StatusArray.scala 134:33]
  wire  _T_4874 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4883 = _T_4874 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_21 = _T_4872 & _T_4883; // @[StatusArray.scala 134:33]
  wire  _T_4890 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4899 = _T_4890 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_21 = _T_4888 & _T_4899; // @[StatusArray.scala 134:33]
  wire  _T_4906 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4915 = _T_4906 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_21 = _T_4904 & _T_4915; // @[StatusArray.scala 134:33]
  wire  _T_4922 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4931 = _T_4922 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_21 = _T_4920 & _T_4931; // @[StatusArray.scala 134:33]
  wire  _T_4938 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4947 = _T_4938 & _T_4770; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_21 = _T_4936 & _T_4947; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_21 = {dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21,dataMatchVec_2_21,
    dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_21 = {dataMatchVec_11_21,dataMatchVec_10_21,dataMatchVec_9_21,dataMatchVec_8_21,
    dataMatchVec_7_21,dataMatchVec_6_21}; // @[StatusArray.scala 138:43]
  wire  _T_4991 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4999 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5000 = _T_4991 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_22 = _T_4989 & _T_5000; // @[StatusArray.scala 134:33]
  wire  _T_5007 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5016 = _T_5007 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_22 = _T_5005 & _T_5016; // @[StatusArray.scala 134:33]
  wire  _T_5023 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5032 = _T_5023 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_22 = _T_5021 & _T_5032; // @[StatusArray.scala 134:33]
  wire  _T_5039 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5048 = _T_5039 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_22 = _T_5037 & _T_5048; // @[StatusArray.scala 134:33]
  wire  _T_5055 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5064 = _T_5055 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_22 = _T_5053 & _T_5064; // @[StatusArray.scala 134:33]
  wire  _T_5071 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5080 = _T_5071 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_22 = _T_5069 & _T_5080; // @[StatusArray.scala 134:33]
  wire  _T_5087 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5096 = _T_5087 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_22 = _T_5085 & _T_5096; // @[StatusArray.scala 134:33]
  wire  _T_5103 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5112 = _T_5103 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_22 = _T_5101 & _T_5112; // @[StatusArray.scala 134:33]
  wire  _T_5119 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5128 = _T_5119 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_22 = _T_5117 & _T_5128; // @[StatusArray.scala 134:33]
  wire  _T_5135 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5144 = _T_5135 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_22 = _T_5133 & _T_5144; // @[StatusArray.scala 134:33]
  wire  _T_5151 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5160 = _T_5151 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_22 = _T_5149 & _T_5160; // @[StatusArray.scala 134:33]
  wire  _T_5167 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5176 = _T_5167 & _T_4999; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_22 = _T_5165 & _T_5176; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_22 = {dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22,dataMatchVec_2_22,
    dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_22 = {dataMatchVec_11_22,dataMatchVec_10_22,dataMatchVec_9_22,dataMatchVec_8_22,
    dataMatchVec_7_22,dataMatchVec_6_22}; // @[StatusArray.scala 138:43]
  wire  _T_5206 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_11_srcType_1 = updateValid_11 ? updateVal_11_srcType_1 : statusArray_11_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_5214 = statusArrayNext_11_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_5215 = _T_5206 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_23 = _T_5204 & _T_5215; // @[StatusArray.scala 134:33]
  wire  _T_5222 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5231 = _T_5222 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_23 = _T_5220 & _T_5231; // @[StatusArray.scala 134:33]
  wire  _T_5238 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5247 = _T_5238 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_23 = _T_5236 & _T_5247; // @[StatusArray.scala 134:33]
  wire  _T_5254 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5263 = _T_5254 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_23 = _T_5252 & _T_5263; // @[StatusArray.scala 134:33]
  wire  _T_5270 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5279 = _T_5270 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_23 = _T_5268 & _T_5279; // @[StatusArray.scala 134:33]
  wire  _T_5286 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5295 = _T_5286 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_23 = _T_5284 & _T_5295; // @[StatusArray.scala 134:33]
  wire  _T_5302 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5311 = _T_5302 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_23 = _T_5300 & _T_5311; // @[StatusArray.scala 134:33]
  wire  _T_5318 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5327 = _T_5318 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_23 = _T_5316 & _T_5327; // @[StatusArray.scala 134:33]
  wire  _T_5334 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5343 = _T_5334 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_23 = _T_5332 & _T_5343; // @[StatusArray.scala 134:33]
  wire  _T_5350 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5359 = _T_5350 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_23 = _T_5348 & _T_5359; // @[StatusArray.scala 134:33]
  wire  _T_5366 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5375 = _T_5366 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_23 = _T_5364 & _T_5375; // @[StatusArray.scala 134:33]
  wire  _T_5382 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5391 = _T_5382 & _T_5214; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_23 = _T_5380 & _T_5391; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_23 = {dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23,dataMatchVec_2_23,
    dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_23 = {dataMatchVec_11_23,dataMatchVec_10_23,dataMatchVec_9_23,dataMatchVec_8_23,
    dataMatchVec_7_23,dataMatchVec_6_23}; // @[StatusArray.scala 138:43]
  wire [5:0] io_isValid_lo = {statusArray_5_valid,statusArray_4_valid,statusArray_3_valid,statusArray_2_valid,
    statusArray_1_valid,statusArray_0_valid}; // @[StatusArray.scala 260:51]
  wire [5:0] io_isValid_hi = {statusArray_11_valid,statusArray_10_valid,statusArray_9_valid,statusArray_8_valid,
    statusArray_7_valid,statusArray_6_valid}; // @[StatusArray.scala 260:51]
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
  wire [5:0] io_canIssue_lo = {_io_canIssue_T_5,_io_canIssue_T_4,_io_canIssue_T_3,_io_canIssue_T_2,_io_canIssue_T_1,
    _io_canIssue_T}; // @[StatusArray.scala 261:102]
  wire [5:0] io_canIssue_hi = {_io_canIssue_T_11,_io_canIssue_T_10,_io_canIssue_T_9,_io_canIssue_T_8,_io_canIssue_T_7,
    _io_canIssue_T_6}; // @[StatusArray.scala 261:102]
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
  always @(posedge clock) begin
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_0_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_0_valid <= statusArrayNext_0_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_534; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_536; // @[StatusArray.scala 241:50]
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
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_978; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_980; // @[StatusArray.scala 241:50]
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
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1422; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_1424; // @[StatusArray.scala 241:50]
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
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1866; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_1868; // @[StatusArray.scala 241:50]
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
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_2310; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_2312; // @[StatusArray.scala 241:50]
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
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_2754; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_2756; // @[StatusArray.scala 241:50]
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
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_3198; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_3200; // @[StatusArray.scala 241:50]
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
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_3642; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_3644; // @[StatusArray.scala 241:50]
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
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_4086; // @[StatusArray.scala 241:50]
    statusArray_8_srcState_1 <= stateWakeupEn_1_8 | _T_4088; // @[StatusArray.scala 241:50]
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
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_4530; // @[StatusArray.scala 241:50]
    statusArray_9_srcState_1 <= stateWakeupEn_1_9 | _T_4532; // @[StatusArray.scala 241:50]
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
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_4974; // @[StatusArray.scala 241:50]
    statusArray_10_srcState_1 <= stateWakeupEn_1_10 | _T_4976; // @[StatusArray.scala 241:50]
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
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_5418; // @[StatusArray.scala 241:50]
    statusArray_11_srcState_1 <= stateWakeupEn_1_11 | _T_5420; // @[StatusArray.scala 241:50]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
