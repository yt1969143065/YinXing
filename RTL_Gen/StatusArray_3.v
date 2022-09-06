module StatusArray_3(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [7:0]  io_isValid,
  output [7:0]  io_canIssue,
  input         io_update_0_enable,
  input  [7:0]  io_update_0_addr,
  input         io_update_0_data_srcState_0,
  input         io_update_0_data_srcState_1,
  input  [6:0]  io_update_0_data_psrc_0,
  input  [6:0]  io_update_0_data_psrc_1,
  input  [1:0]  io_update_0_data_srcType_0,
  input  [1:0]  io_update_0_data_srcType_1,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
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
  output [10:0] io_wakeupMatch_0_0,
  output [10:0] io_wakeupMatch_0_1,
  output [10:0] io_wakeupMatch_1_0,
  output [10:0] io_wakeupMatch_1_1,
  output [10:0] io_wakeupMatch_2_0,
  output [10:0] io_wakeupMatch_2_1,
  output [10:0] io_wakeupMatch_3_0,
  output [10:0] io_wakeupMatch_3_1,
  output [10:0] io_wakeupMatch_4_0,
  output [10:0] io_wakeupMatch_4_1,
  output [10:0] io_wakeupMatch_5_0,
  output [10:0] io_wakeupMatch_5_1,
  output [10:0] io_wakeupMatch_6_0,
  output [10:0] io_wakeupMatch_6_1,
  output [10:0] io_wakeupMatch_7_0,
  output [10:0] io_wakeupMatch_7_1,
  input         io_deqResp_0_valid,
  input  [7:0]  io_deqResp_0_bits_rsMask,
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
  wire  _T_12 = |mask_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_0 = isFlushed | _T_12 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 158:57]
  wire  updateValid_0 = |updateVec_0; // @[StatusArray.scala 161:23]
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
  wire  _T_16 = |mask_1_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_1 = isFlushed_1 | _T_16 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 158:57]
  wire  updateValid_1 = |updateVec_1_0; // @[StatusArray.scala 161:23]
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
  wire  _T_20 = |mask_2_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_2 = isFlushed_2 | _T_20 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 158:57]
  wire  updateValid_2 = |updateVec_2_0; // @[StatusArray.scala 161:23]
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
  wire  _T_24 = |mask_3_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_3 = isFlushed_3 | _T_24 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 158:57]
  wire  updateValid_3 = |updateVec_3_0; // @[StatusArray.scala 161:23]
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
  wire  _T_28 = |mask_4_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_4 = isFlushed_4 | _T_28 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 158:57]
  wire  updateValid_4 = |updateVec_4_0; // @[StatusArray.scala 161:23]
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
  wire  _T_32 = |mask_5_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_5 = isFlushed_5 | _T_32 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 158:57]
  wire  updateValid_5 = |updateVec_5_0; // @[StatusArray.scala 161:23]
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
  wire  _T_36 = |mask_6_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_6 = isFlushed_6 | _T_36 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 158:57]
  wire  updateValid_6 = |updateVec_6_0; // @[StatusArray.scala 161:23]
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
  wire  _T_40 = |mask_7_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_7 = isFlushed_7 | _T_40 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 158:57]
  wire  updateValid_7 = |updateVec_7_0; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_7 = updateValid_7 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_7_valid = ~flushedVec_7 & (realUpdateValid_7 | statusArray_7_valid); // @[StatusArray.scala 177:40]
  wire [6:0] statusArrayNext_0_psrc_1 = updateValid_0 ? io_update_0_data_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_406 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_1 = _T_406 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_390 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_1 = _T_390 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_374 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_1 = _T_374 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_358 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_1 = _T_358 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_342 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_342 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_326 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_326 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_310 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_310 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_294 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_294 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_278 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_278 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_262 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_262 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_246 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_246 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_1 = {stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,stateMatchVec_1_1,
    stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_1 = {stateMatchVec_10_1,stateMatchVec_9_1,stateMatchVec_8_1,stateMatchVec_7_1,
    stateMatchVec_6_1,stateMatchVec_5_1,stateMatch_lo_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  _T_444 = updateValid_0 ? io_update_0_data_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_444; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? io_update_0_data_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_209 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10 = _T_209 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_193 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9 = _T_193 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_177 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8 = _T_177 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_161 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7 = _T_161 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_145 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_145 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_129 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_129 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_113 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_113 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_97 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_97 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_81 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_81 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_65 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_65 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_49 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_49 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo = {stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T = {stateMatchVec_10,stateMatchVec_9,stateMatchVec_8,stateMatchVec_7,stateMatchVec_6,
    stateMatchVec_5,stateMatch_lo}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  _T_442 = updateValid_0 ? io_update_0_data_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_442; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_1_psrc_1 = updateValid_1 ? io_update_0_data_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_814 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_3 = _T_814 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_798 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_3 = _T_798 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_782 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_3 = _T_782 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_766 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_3 = _T_766 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_750 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_750 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_734 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_734 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_718 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_718 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_702 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_702 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_686 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_686 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_670 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_670 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_654 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_654 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_3 = {stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,stateMatchVec_1_3,
    stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_3 = {stateMatchVec_10_3,stateMatchVec_9_3,stateMatchVec_8_3,stateMatchVec_7_3,
    stateMatchVec_6_3,stateMatchVec_5_3,stateMatch_lo_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  _T_852 = updateValid_1 ? io_update_0_data_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_852; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? io_update_0_data_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_617 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_2 = _T_617 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_601 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_2 = _T_601 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_585 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_2 = _T_585 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_569 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_2 = _T_569 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_553 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_553 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_537 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_537 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_521 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_521 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_505 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_505 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_489 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_489 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_473 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_473 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_457 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_457 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_2 = {stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,stateMatchVec_1_2,
    stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_2 = {stateMatchVec_10_2,stateMatchVec_9_2,stateMatchVec_8_2,stateMatchVec_7_2,
    stateMatchVec_6_2,stateMatchVec_5_2,stateMatch_lo_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  _T_850 = updateValid_1 ? io_update_0_data_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_850; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_2_psrc_1 = updateValid_2 ? io_update_0_data_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1222 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_5 = _T_1222 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1206 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_5 = _T_1206 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1190 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_5 = _T_1190 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1174 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_5 = _T_1174 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1158 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_1158 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1142 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_1142 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1126 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_1126 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1110 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_1110 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1094 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_1094 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1078 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_1078 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1062 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_1062 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_5 = {stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,stateMatchVec_1_5,
    stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_5 = {stateMatchVec_10_5,stateMatchVec_9_5,stateMatchVec_8_5,stateMatchVec_7_5,
    stateMatchVec_6_5,stateMatchVec_5_5,stateMatch_lo_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  _T_1260 = updateValid_2 ? io_update_0_data_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_1260; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? io_update_0_data_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1025 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_4 = _T_1025 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1009 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_4 = _T_1009 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_993 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_4 = _T_993 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_977 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_4 = _T_977 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_961 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_961 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_945 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_945 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_929 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_929 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_913 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_913 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_897 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_897 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_881 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_881 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_865 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_865 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_4 = {stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,stateMatchVec_1_4,
    stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_4 = {stateMatchVec_10_4,stateMatchVec_9_4,stateMatchVec_8_4,stateMatchVec_7_4,
    stateMatchVec_6_4,stateMatchVec_5_4,stateMatch_lo_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  _T_1258 = updateValid_2 ? io_update_0_data_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1258; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_3_psrc_1 = updateValid_3 ? io_update_0_data_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1630 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_7 = _T_1630 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1614 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_7 = _T_1614 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1598 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_7 = _T_1598 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1582 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_7 = _T_1582 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1566 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_1566 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1550 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_1550 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1534 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_1534 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1518 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_1518 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1502 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_1502 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1486 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_1486 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1470 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_1470 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_7 = {stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,stateMatchVec_1_7,
    stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_7 = {stateMatchVec_10_7,stateMatchVec_9_7,stateMatchVec_8_7,stateMatchVec_7_7,
    stateMatchVec_6_7,stateMatchVec_5_7,stateMatch_lo_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  _T_1668 = updateValid_3 ? io_update_0_data_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_1668; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? io_update_0_data_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1433 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_6 = _T_1433 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1417 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_6 = _T_1417 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1401 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_6 = _T_1401 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1385 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_6 = _T_1385 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1369 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_1369 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1353 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_1353 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1337 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_1337 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1321 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_1321 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1305 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_1305 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1289 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_1289 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1273 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_1273 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_6 = {stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,stateMatchVec_1_6,
    stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_6 = {stateMatchVec_10_6,stateMatchVec_9_6,stateMatchVec_8_6,stateMatchVec_7_6,
    stateMatchVec_6_6,stateMatchVec_5_6,stateMatch_lo_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  _T_1666 = updateValid_3 ? io_update_0_data_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1666; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_4_psrc_1 = updateValid_4 ? io_update_0_data_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2038 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_9 = _T_2038 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2022 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_9 = _T_2022 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2006 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_9 = _T_2006 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1990 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_9 = _T_1990 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1974 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_1974 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1958 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_1958 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1942 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_1942 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1926 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_1926 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1910 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_1910 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1894 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_1894 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1878 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_1878 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_9 = {stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,stateMatchVec_1_9,
    stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_9 = {stateMatchVec_10_9,stateMatchVec_9_9,stateMatchVec_8_9,stateMatchVec_7_9,
    stateMatchVec_6_9,stateMatchVec_5_9,stateMatch_lo_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  _T_2076 = updateValid_4 ? io_update_0_data_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_2076; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? io_update_0_data_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1841 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_8 = _T_1841 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1825 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_8 = _T_1825 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1809 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_8 = _T_1809 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1793 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_8 = _T_1793 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1777 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_1777 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1761 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_1761 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1745 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_1745 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1729 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_1729 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1713 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_1713 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1697 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_1697 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1681 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_1681 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_8 = {stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,stateMatchVec_1_8,
    stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_8 = {stateMatchVec_10_8,stateMatchVec_9_8,stateMatchVec_8_8,stateMatchVec_7_8,
    stateMatchVec_6_8,stateMatchVec_5_8,stateMatch_lo_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  _T_2074 = updateValid_4 ? io_update_0_data_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_2074; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_5_psrc_1 = updateValid_5 ? io_update_0_data_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2446 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_11 = _T_2446 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2430 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_11 = _T_2430 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2414 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_11 = _T_2414 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2398 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_11 = _T_2398 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2382 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_2382 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2366 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_2366 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2350 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_2350 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2334 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_2334 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2318 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_2318 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2302 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_2302 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2286 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_2286 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_11 = {stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,stateMatchVec_1_11,
    stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_11 = {stateMatchVec_10_11,stateMatchVec_9_11,stateMatchVec_8_11,stateMatchVec_7_11,
    stateMatchVec_6_11,stateMatchVec_5_11,stateMatch_lo_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  _T_2484 = updateValid_5 ? io_update_0_data_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_2484; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? io_update_0_data_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2249 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_10 = _T_2249 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2233 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_10 = _T_2233 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2217 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_10 = _T_2217 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2201 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_10 = _T_2201 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2185 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_2185 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2169 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_2169 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2153 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_2153 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2137 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_2137 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2121 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_2121 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2105 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_2105 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2089 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_2089 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_10 = {stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,stateMatchVec_1_10,
    stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_10 = {stateMatchVec_10_10,stateMatchVec_9_10,stateMatchVec_8_10,stateMatchVec_7_10,
    stateMatchVec_6_10,stateMatchVec_5_10,stateMatch_lo_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  _T_2482 = updateValid_5 ? io_update_0_data_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_2482; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_6_psrc_1 = updateValid_6 ? io_update_0_data_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_2854 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_13 = _T_2854 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2838 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_13 = _T_2838 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2822 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_13 = _T_2822 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2806 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_13 = _T_2806 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2790 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_2790 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2774 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_2774 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2758 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_2758 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2742 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_2742 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2726 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_2726 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2710 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_2710 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2694 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_2694 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_13 = {stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,stateMatchVec_1_13,
    stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_13 = {stateMatchVec_10_13,stateMatchVec_9_13,stateMatchVec_8_13,stateMatchVec_7_13,
    stateMatchVec_6_13,stateMatchVec_5_13,stateMatch_lo_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  _T_2892 = updateValid_6 ? io_update_0_data_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_2892; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? io_update_0_data_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2657 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_12 = _T_2657 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2641 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_12 = _T_2641 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2625 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_12 = _T_2625 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2609 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_12 = _T_2609 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2593 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_2593 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2577 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_2577 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2561 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_2561 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2545 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_2545 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2529 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_2529 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2513 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_2513 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2497 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_2497 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_12 = {stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,stateMatchVec_1_12,
    stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_12 = {stateMatchVec_10_12,stateMatchVec_9_12,stateMatchVec_8_12,stateMatchVec_7_12,
    stateMatchVec_6_12,stateMatchVec_5_12,stateMatch_lo_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  _T_2890 = updateValid_6 ? io_update_0_data_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_2890; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 65:38]
  wire [6:0] statusArrayNext_7_psrc_1 = updateValid_7 ? io_update_0_data_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_3262 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_15 = _T_3262 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3246 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_15 = _T_3246 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3230 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_15 = _T_3230 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3214 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_15 = _T_3214 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3198 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_3198 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3182 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_3182 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3166 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_3166 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3150 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_3150 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3134 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_3134 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3118 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_3118 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3102 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_3102 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_15 = {stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,stateMatchVec_1_15,
    stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_15 = {stateMatchVec_10_15,stateMatchVec_9_15,stateMatchVec_8_15,stateMatchVec_7_15,
    stateMatchVec_6_15,stateMatchVec_5_15,stateMatch_lo_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  _T_3300 = updateValid_7 ? io_update_0_data_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_3300; // @[StatusArray.scala 241:50]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? io_update_0_data_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3065 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_14 = _T_3065 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3049 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_14 = _T_3049 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3033 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_14 = _T_3033 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3017 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_14 = _T_3017 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3001 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_3001 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2985 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_2985 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2969 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_2969 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2953 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_2953 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2937 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_2937 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2921 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_2921 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2905 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_2905 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [4:0] stateMatch_lo_14 = {stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,stateMatchVec_1_14,
    stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire [10:0] _stateMatch_T_14 = {stateMatchVec_10_14,stateMatchVec_9_14,stateMatchVec_8_14,stateMatchVec_7_14,
    stateMatchVec_6_14,stateMatchVec_5_14,stateMatch_lo_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  _T_3298 = updateValid_7 ? io_update_0_data_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_3298; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 65:38]
  wire  _T_51 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? io_update_0_data_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_59 = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_60 = _T_51 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0 = _T_49 & _T_60; // @[StatusArray.scala 134:33]
  wire  _T_67 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_76 = _T_67 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1 = _T_65 & _T_76; // @[StatusArray.scala 134:33]
  wire  _T_83 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_92 = _T_83 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2 = _T_81 & _T_92; // @[StatusArray.scala 134:33]
  wire  _T_99 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_108 = _T_99 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3 = _T_97 & _T_108; // @[StatusArray.scala 134:33]
  wire  _T_115 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_124 = _T_115 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4 = _T_113 & _T_124; // @[StatusArray.scala 134:33]
  wire  _T_131 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_140 = _T_131 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5 = _T_129 & _T_140; // @[StatusArray.scala 134:33]
  wire  _T_147 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_156 = _T_147 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6 = _T_145 & _T_156; // @[StatusArray.scala 134:33]
  wire  _T_163 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_172 = _T_163 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7 = _T_161 & _T_172; // @[StatusArray.scala 134:33]
  wire  _T_179 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_188 = _T_179 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8 = _T_177 & _T_188; // @[StatusArray.scala 134:33]
  wire  _T_195 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_204 = _T_195 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9 = _T_193 & _T_204; // @[StatusArray.scala 134:33]
  wire  _T_211 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_220 = _T_211 & _T_59; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10 = _T_209 & _T_220; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo = {dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi = {dataMatchVec_10,dataMatchVec_9,dataMatchVec_8,dataMatchVec_7,dataMatchVec_6,dataMatchVec_5}
    ; // @[StatusArray.scala 138:43]
  wire  _T_248 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? io_update_0_data_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_256 = statusArrayNext_0_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_257 = _T_248 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_1 = _T_246 & _T_257; // @[StatusArray.scala 134:33]
  wire  _T_264 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_273 = _T_264 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_1 = _T_262 & _T_273; // @[StatusArray.scala 134:33]
  wire  _T_280 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_289 = _T_280 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_1 = _T_278 & _T_289; // @[StatusArray.scala 134:33]
  wire  _T_296 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_305 = _T_296 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_1 = _T_294 & _T_305; // @[StatusArray.scala 134:33]
  wire  _T_312 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_321 = _T_312 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_1 = _T_310 & _T_321; // @[StatusArray.scala 134:33]
  wire  _T_328 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_337 = _T_328 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_1 = _T_326 & _T_337; // @[StatusArray.scala 134:33]
  wire  _T_344 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_353 = _T_344 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_1 = _T_342 & _T_353; // @[StatusArray.scala 134:33]
  wire  _T_360 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_369 = _T_360 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_1 = _T_358 & _T_369; // @[StatusArray.scala 134:33]
  wire  _T_376 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_385 = _T_376 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_1 = _T_374 & _T_385; // @[StatusArray.scala 134:33]
  wire  _T_392 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_401 = _T_392 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_1 = _T_390 & _T_401; // @[StatusArray.scala 134:33]
  wire  _T_408 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_417 = _T_408 & _T_256; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_1 = _T_406 & _T_417; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_1 = {dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_1 = {dataMatchVec_10_1,dataMatchVec_9_1,dataMatchVec_8_1,dataMatchVec_7_1,dataMatchVec_6_1,
    dataMatchVec_5_1}; // @[StatusArray.scala 138:43]
  wire  _T_459 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? io_update_0_data_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_467 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_468 = _T_459 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_2 = _T_457 & _T_468; // @[StatusArray.scala 134:33]
  wire  _T_475 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_484 = _T_475 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_2 = _T_473 & _T_484; // @[StatusArray.scala 134:33]
  wire  _T_491 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_500 = _T_491 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_2 = _T_489 & _T_500; // @[StatusArray.scala 134:33]
  wire  _T_507 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_516 = _T_507 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_2 = _T_505 & _T_516; // @[StatusArray.scala 134:33]
  wire  _T_523 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_532 = _T_523 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_2 = _T_521 & _T_532; // @[StatusArray.scala 134:33]
  wire  _T_539 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_548 = _T_539 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_2 = _T_537 & _T_548; // @[StatusArray.scala 134:33]
  wire  _T_555 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_564 = _T_555 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_2 = _T_553 & _T_564; // @[StatusArray.scala 134:33]
  wire  _T_571 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_580 = _T_571 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_2 = _T_569 & _T_580; // @[StatusArray.scala 134:33]
  wire  _T_587 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_596 = _T_587 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_2 = _T_585 & _T_596; // @[StatusArray.scala 134:33]
  wire  _T_603 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_612 = _T_603 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_2 = _T_601 & _T_612; // @[StatusArray.scala 134:33]
  wire  _T_619 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_628 = _T_619 & _T_467; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_2 = _T_617 & _T_628; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_2 = {dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_2 = {dataMatchVec_10_2,dataMatchVec_9_2,dataMatchVec_8_2,dataMatchVec_7_2,dataMatchVec_6_2,
    dataMatchVec_5_2}; // @[StatusArray.scala 138:43]
  wire  _T_656 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? io_update_0_data_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_664 = statusArrayNext_1_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_665 = _T_656 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_3 = _T_654 & _T_665; // @[StatusArray.scala 134:33]
  wire  _T_672 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_681 = _T_672 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_3 = _T_670 & _T_681; // @[StatusArray.scala 134:33]
  wire  _T_688 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_697 = _T_688 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_3 = _T_686 & _T_697; // @[StatusArray.scala 134:33]
  wire  _T_704 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_713 = _T_704 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_3 = _T_702 & _T_713; // @[StatusArray.scala 134:33]
  wire  _T_720 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_729 = _T_720 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_3 = _T_718 & _T_729; // @[StatusArray.scala 134:33]
  wire  _T_736 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_745 = _T_736 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_3 = _T_734 & _T_745; // @[StatusArray.scala 134:33]
  wire  _T_752 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_761 = _T_752 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_3 = _T_750 & _T_761; // @[StatusArray.scala 134:33]
  wire  _T_768 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_777 = _T_768 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_3 = _T_766 & _T_777; // @[StatusArray.scala 134:33]
  wire  _T_784 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_793 = _T_784 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_3 = _T_782 & _T_793; // @[StatusArray.scala 134:33]
  wire  _T_800 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_809 = _T_800 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_3 = _T_798 & _T_809; // @[StatusArray.scala 134:33]
  wire  _T_816 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_825 = _T_816 & _T_664; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_3 = _T_814 & _T_825; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_3 = {dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_3 = {dataMatchVec_10_3,dataMatchVec_9_3,dataMatchVec_8_3,dataMatchVec_7_3,dataMatchVec_6_3,
    dataMatchVec_5_3}; // @[StatusArray.scala 138:43]
  wire  _T_867 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? io_update_0_data_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_875 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_876 = _T_867 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_4 = _T_865 & _T_876; // @[StatusArray.scala 134:33]
  wire  _T_883 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_892 = _T_883 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_4 = _T_881 & _T_892; // @[StatusArray.scala 134:33]
  wire  _T_899 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_908 = _T_899 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_4 = _T_897 & _T_908; // @[StatusArray.scala 134:33]
  wire  _T_915 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_924 = _T_915 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_4 = _T_913 & _T_924; // @[StatusArray.scala 134:33]
  wire  _T_931 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_940 = _T_931 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_4 = _T_929 & _T_940; // @[StatusArray.scala 134:33]
  wire  _T_947 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_956 = _T_947 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_4 = _T_945 & _T_956; // @[StatusArray.scala 134:33]
  wire  _T_963 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_972 = _T_963 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_4 = _T_961 & _T_972; // @[StatusArray.scala 134:33]
  wire  _T_979 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_988 = _T_979 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_4 = _T_977 & _T_988; // @[StatusArray.scala 134:33]
  wire  _T_995 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1004 = _T_995 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_4 = _T_993 & _T_1004; // @[StatusArray.scala 134:33]
  wire  _T_1011 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1020 = _T_1011 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_4 = _T_1009 & _T_1020; // @[StatusArray.scala 134:33]
  wire  _T_1027 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1036 = _T_1027 & _T_875; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_4 = _T_1025 & _T_1036; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_4 = {dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_4 = {dataMatchVec_10_4,dataMatchVec_9_4,dataMatchVec_8_4,dataMatchVec_7_4,dataMatchVec_6_4,
    dataMatchVec_5_4}; // @[StatusArray.scala 138:43]
  wire  _T_1064 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? io_update_0_data_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1072 = statusArrayNext_2_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1073 = _T_1064 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_5 = _T_1062 & _T_1073; // @[StatusArray.scala 134:33]
  wire  _T_1080 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1089 = _T_1080 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_5 = _T_1078 & _T_1089; // @[StatusArray.scala 134:33]
  wire  _T_1096 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1105 = _T_1096 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_5 = _T_1094 & _T_1105; // @[StatusArray.scala 134:33]
  wire  _T_1112 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1121 = _T_1112 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_5 = _T_1110 & _T_1121; // @[StatusArray.scala 134:33]
  wire  _T_1128 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1137 = _T_1128 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_5 = _T_1126 & _T_1137; // @[StatusArray.scala 134:33]
  wire  _T_1144 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1153 = _T_1144 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_5 = _T_1142 & _T_1153; // @[StatusArray.scala 134:33]
  wire  _T_1160 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1169 = _T_1160 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_5 = _T_1158 & _T_1169; // @[StatusArray.scala 134:33]
  wire  _T_1176 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1185 = _T_1176 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_5 = _T_1174 & _T_1185; // @[StatusArray.scala 134:33]
  wire  _T_1192 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1201 = _T_1192 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_5 = _T_1190 & _T_1201; // @[StatusArray.scala 134:33]
  wire  _T_1208 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1217 = _T_1208 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_5 = _T_1206 & _T_1217; // @[StatusArray.scala 134:33]
  wire  _T_1224 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1233 = _T_1224 & _T_1072; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_5 = _T_1222 & _T_1233; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_5 = {dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_5 = {dataMatchVec_10_5,dataMatchVec_9_5,dataMatchVec_8_5,dataMatchVec_7_5,dataMatchVec_6_5,
    dataMatchVec_5_5}; // @[StatusArray.scala 138:43]
  wire  _T_1275 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? io_update_0_data_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1283 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1284 = _T_1275 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_6 = _T_1273 & _T_1284; // @[StatusArray.scala 134:33]
  wire  _T_1291 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1300 = _T_1291 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_6 = _T_1289 & _T_1300; // @[StatusArray.scala 134:33]
  wire  _T_1307 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1316 = _T_1307 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_6 = _T_1305 & _T_1316; // @[StatusArray.scala 134:33]
  wire  _T_1323 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1332 = _T_1323 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_6 = _T_1321 & _T_1332; // @[StatusArray.scala 134:33]
  wire  _T_1339 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1348 = _T_1339 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_6 = _T_1337 & _T_1348; // @[StatusArray.scala 134:33]
  wire  _T_1355 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1364 = _T_1355 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_6 = _T_1353 & _T_1364; // @[StatusArray.scala 134:33]
  wire  _T_1371 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1380 = _T_1371 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_6 = _T_1369 & _T_1380; // @[StatusArray.scala 134:33]
  wire  _T_1387 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1396 = _T_1387 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_6 = _T_1385 & _T_1396; // @[StatusArray.scala 134:33]
  wire  _T_1403 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1412 = _T_1403 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_6 = _T_1401 & _T_1412; // @[StatusArray.scala 134:33]
  wire  _T_1419 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1428 = _T_1419 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_6 = _T_1417 & _T_1428; // @[StatusArray.scala 134:33]
  wire  _T_1435 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1444 = _T_1435 & _T_1283; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_6 = _T_1433 & _T_1444; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_6 = {dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_6 = {dataMatchVec_10_6,dataMatchVec_9_6,dataMatchVec_8_6,dataMatchVec_7_6,dataMatchVec_6_6,
    dataMatchVec_5_6}; // @[StatusArray.scala 138:43]
  wire  _T_1472 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? io_update_0_data_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1480 = statusArrayNext_3_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1481 = _T_1472 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_7 = _T_1470 & _T_1481; // @[StatusArray.scala 134:33]
  wire  _T_1488 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1497 = _T_1488 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_7 = _T_1486 & _T_1497; // @[StatusArray.scala 134:33]
  wire  _T_1504 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1513 = _T_1504 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_7 = _T_1502 & _T_1513; // @[StatusArray.scala 134:33]
  wire  _T_1520 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1529 = _T_1520 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_7 = _T_1518 & _T_1529; // @[StatusArray.scala 134:33]
  wire  _T_1536 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1545 = _T_1536 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_7 = _T_1534 & _T_1545; // @[StatusArray.scala 134:33]
  wire  _T_1552 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1561 = _T_1552 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_7 = _T_1550 & _T_1561; // @[StatusArray.scala 134:33]
  wire  _T_1568 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1577 = _T_1568 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_7 = _T_1566 & _T_1577; // @[StatusArray.scala 134:33]
  wire  _T_1584 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1593 = _T_1584 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_7 = _T_1582 & _T_1593; // @[StatusArray.scala 134:33]
  wire  _T_1600 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1609 = _T_1600 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_7 = _T_1598 & _T_1609; // @[StatusArray.scala 134:33]
  wire  _T_1616 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1625 = _T_1616 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_7 = _T_1614 & _T_1625; // @[StatusArray.scala 134:33]
  wire  _T_1632 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1641 = _T_1632 & _T_1480; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_7 = _T_1630 & _T_1641; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_7 = {dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_7 = {dataMatchVec_10_7,dataMatchVec_9_7,dataMatchVec_8_7,dataMatchVec_7_7,dataMatchVec_6_7,
    dataMatchVec_5_7}; // @[StatusArray.scala 138:43]
  wire  _T_1683 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? io_update_0_data_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1691 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1692 = _T_1683 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_8 = _T_1681 & _T_1692; // @[StatusArray.scala 134:33]
  wire  _T_1699 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1708 = _T_1699 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_8 = _T_1697 & _T_1708; // @[StatusArray.scala 134:33]
  wire  _T_1715 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1724 = _T_1715 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_8 = _T_1713 & _T_1724; // @[StatusArray.scala 134:33]
  wire  _T_1731 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1740 = _T_1731 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_8 = _T_1729 & _T_1740; // @[StatusArray.scala 134:33]
  wire  _T_1747 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1756 = _T_1747 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_8 = _T_1745 & _T_1756; // @[StatusArray.scala 134:33]
  wire  _T_1763 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1772 = _T_1763 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_8 = _T_1761 & _T_1772; // @[StatusArray.scala 134:33]
  wire  _T_1779 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1788 = _T_1779 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_8 = _T_1777 & _T_1788; // @[StatusArray.scala 134:33]
  wire  _T_1795 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1804 = _T_1795 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_8 = _T_1793 & _T_1804; // @[StatusArray.scala 134:33]
  wire  _T_1811 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1820 = _T_1811 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_8 = _T_1809 & _T_1820; // @[StatusArray.scala 134:33]
  wire  _T_1827 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1836 = _T_1827 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_8 = _T_1825 & _T_1836; // @[StatusArray.scala 134:33]
  wire  _T_1843 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1852 = _T_1843 & _T_1691; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_8 = _T_1841 & _T_1852; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_8 = {dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_8 = {dataMatchVec_10_8,dataMatchVec_9_8,dataMatchVec_8_8,dataMatchVec_7_8,dataMatchVec_6_8,
    dataMatchVec_5_8}; // @[StatusArray.scala 138:43]
  wire  _T_1880 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? io_update_0_data_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1888 = statusArrayNext_4_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_1889 = _T_1880 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_9 = _T_1878 & _T_1889; // @[StatusArray.scala 134:33]
  wire  _T_1896 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1905 = _T_1896 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_9 = _T_1894 & _T_1905; // @[StatusArray.scala 134:33]
  wire  _T_1912 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1921 = _T_1912 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_9 = _T_1910 & _T_1921; // @[StatusArray.scala 134:33]
  wire  _T_1928 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1937 = _T_1928 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_9 = _T_1926 & _T_1937; // @[StatusArray.scala 134:33]
  wire  _T_1944 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1953 = _T_1944 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_9 = _T_1942 & _T_1953; // @[StatusArray.scala 134:33]
  wire  _T_1960 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1969 = _T_1960 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_9 = _T_1958 & _T_1969; // @[StatusArray.scala 134:33]
  wire  _T_1976 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1985 = _T_1976 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_9 = _T_1974 & _T_1985; // @[StatusArray.scala 134:33]
  wire  _T_1992 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2001 = _T_1992 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_9 = _T_1990 & _T_2001; // @[StatusArray.scala 134:33]
  wire  _T_2008 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2017 = _T_2008 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_9 = _T_2006 & _T_2017; // @[StatusArray.scala 134:33]
  wire  _T_2024 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2033 = _T_2024 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_9 = _T_2022 & _T_2033; // @[StatusArray.scala 134:33]
  wire  _T_2040 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2049 = _T_2040 & _T_1888; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_9 = _T_2038 & _T_2049; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_9 = {dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_9 = {dataMatchVec_10_9,dataMatchVec_9_9,dataMatchVec_8_9,dataMatchVec_7_9,dataMatchVec_6_9,
    dataMatchVec_5_9}; // @[StatusArray.scala 138:43]
  wire  _T_2091 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? io_update_0_data_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2099 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2100 = _T_2091 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_10 = _T_2089 & _T_2100; // @[StatusArray.scala 134:33]
  wire  _T_2107 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2116 = _T_2107 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_10 = _T_2105 & _T_2116; // @[StatusArray.scala 134:33]
  wire  _T_2123 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2132 = _T_2123 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_10 = _T_2121 & _T_2132; // @[StatusArray.scala 134:33]
  wire  _T_2139 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2148 = _T_2139 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_10 = _T_2137 & _T_2148; // @[StatusArray.scala 134:33]
  wire  _T_2155 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2164 = _T_2155 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_10 = _T_2153 & _T_2164; // @[StatusArray.scala 134:33]
  wire  _T_2171 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2180 = _T_2171 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_10 = _T_2169 & _T_2180; // @[StatusArray.scala 134:33]
  wire  _T_2187 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2196 = _T_2187 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_10 = _T_2185 & _T_2196; // @[StatusArray.scala 134:33]
  wire  _T_2203 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2212 = _T_2203 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_10 = _T_2201 & _T_2212; // @[StatusArray.scala 134:33]
  wire  _T_2219 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2228 = _T_2219 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_10 = _T_2217 & _T_2228; // @[StatusArray.scala 134:33]
  wire  _T_2235 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2244 = _T_2235 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_10 = _T_2233 & _T_2244; // @[StatusArray.scala 134:33]
  wire  _T_2251 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2260 = _T_2251 & _T_2099; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_10 = _T_2249 & _T_2260; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_10 = {dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,dataMatchVec_1_10,
    dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_10 = {dataMatchVec_10_10,dataMatchVec_9_10,dataMatchVec_8_10,dataMatchVec_7_10,
    dataMatchVec_6_10,dataMatchVec_5_10}; // @[StatusArray.scala 138:43]
  wire  _T_2288 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? io_update_0_data_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2296 = statusArrayNext_5_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2297 = _T_2288 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_11 = _T_2286 & _T_2297; // @[StatusArray.scala 134:33]
  wire  _T_2304 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2313 = _T_2304 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_11 = _T_2302 & _T_2313; // @[StatusArray.scala 134:33]
  wire  _T_2320 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2329 = _T_2320 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_11 = _T_2318 & _T_2329; // @[StatusArray.scala 134:33]
  wire  _T_2336 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2345 = _T_2336 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_11 = _T_2334 & _T_2345; // @[StatusArray.scala 134:33]
  wire  _T_2352 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2361 = _T_2352 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_11 = _T_2350 & _T_2361; // @[StatusArray.scala 134:33]
  wire  _T_2368 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2377 = _T_2368 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_11 = _T_2366 & _T_2377; // @[StatusArray.scala 134:33]
  wire  _T_2384 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2393 = _T_2384 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_11 = _T_2382 & _T_2393; // @[StatusArray.scala 134:33]
  wire  _T_2400 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2409 = _T_2400 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_11 = _T_2398 & _T_2409; // @[StatusArray.scala 134:33]
  wire  _T_2416 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2425 = _T_2416 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_11 = _T_2414 & _T_2425; // @[StatusArray.scala 134:33]
  wire  _T_2432 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2441 = _T_2432 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_11 = _T_2430 & _T_2441; // @[StatusArray.scala 134:33]
  wire  _T_2448 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2457 = _T_2448 & _T_2296; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_11 = _T_2446 & _T_2457; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_11 = {dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,dataMatchVec_1_11,
    dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_11 = {dataMatchVec_10_11,dataMatchVec_9_11,dataMatchVec_8_11,dataMatchVec_7_11,
    dataMatchVec_6_11,dataMatchVec_5_11}; // @[StatusArray.scala 138:43]
  wire  _T_2499 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? io_update_0_data_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2507 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2508 = _T_2499 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_12 = _T_2497 & _T_2508; // @[StatusArray.scala 134:33]
  wire  _T_2515 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2524 = _T_2515 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_12 = _T_2513 & _T_2524; // @[StatusArray.scala 134:33]
  wire  _T_2531 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2540 = _T_2531 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_12 = _T_2529 & _T_2540; // @[StatusArray.scala 134:33]
  wire  _T_2547 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2556 = _T_2547 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_12 = _T_2545 & _T_2556; // @[StatusArray.scala 134:33]
  wire  _T_2563 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2572 = _T_2563 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_12 = _T_2561 & _T_2572; // @[StatusArray.scala 134:33]
  wire  _T_2579 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2588 = _T_2579 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_12 = _T_2577 & _T_2588; // @[StatusArray.scala 134:33]
  wire  _T_2595 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2604 = _T_2595 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_12 = _T_2593 & _T_2604; // @[StatusArray.scala 134:33]
  wire  _T_2611 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2620 = _T_2611 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_12 = _T_2609 & _T_2620; // @[StatusArray.scala 134:33]
  wire  _T_2627 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2636 = _T_2627 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_12 = _T_2625 & _T_2636; // @[StatusArray.scala 134:33]
  wire  _T_2643 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2652 = _T_2643 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_12 = _T_2641 & _T_2652; // @[StatusArray.scala 134:33]
  wire  _T_2659 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2668 = _T_2659 & _T_2507; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_12 = _T_2657 & _T_2668; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_12 = {dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,dataMatchVec_1_12,
    dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_12 = {dataMatchVec_10_12,dataMatchVec_9_12,dataMatchVec_8_12,dataMatchVec_7_12,
    dataMatchVec_6_12,dataMatchVec_5_12}; // @[StatusArray.scala 138:43]
  wire  _T_2696 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? io_update_0_data_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_2704 = statusArrayNext_6_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_2705 = _T_2696 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_13 = _T_2694 & _T_2705; // @[StatusArray.scala 134:33]
  wire  _T_2712 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2721 = _T_2712 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_13 = _T_2710 & _T_2721; // @[StatusArray.scala 134:33]
  wire  _T_2728 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2737 = _T_2728 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_13 = _T_2726 & _T_2737; // @[StatusArray.scala 134:33]
  wire  _T_2744 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2753 = _T_2744 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_13 = _T_2742 & _T_2753; // @[StatusArray.scala 134:33]
  wire  _T_2760 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2769 = _T_2760 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_13 = _T_2758 & _T_2769; // @[StatusArray.scala 134:33]
  wire  _T_2776 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2785 = _T_2776 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_13 = _T_2774 & _T_2785; // @[StatusArray.scala 134:33]
  wire  _T_2792 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2801 = _T_2792 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_13 = _T_2790 & _T_2801; // @[StatusArray.scala 134:33]
  wire  _T_2808 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2817 = _T_2808 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_13 = _T_2806 & _T_2817; // @[StatusArray.scala 134:33]
  wire  _T_2824 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2833 = _T_2824 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_13 = _T_2822 & _T_2833; // @[StatusArray.scala 134:33]
  wire  _T_2840 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2849 = _T_2840 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_13 = _T_2838 & _T_2849; // @[StatusArray.scala 134:33]
  wire  _T_2856 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2865 = _T_2856 & _T_2704; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_13 = _T_2854 & _T_2865; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_13 = {dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,dataMatchVec_1_13,
    dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_13 = {dataMatchVec_10_13,dataMatchVec_9_13,dataMatchVec_8_13,dataMatchVec_7_13,
    dataMatchVec_6_13,dataMatchVec_5_13}; // @[StatusArray.scala 138:43]
  wire  _T_2907 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? io_update_0_data_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2915 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2916 = _T_2907 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_14 = _T_2905 & _T_2916; // @[StatusArray.scala 134:33]
  wire  _T_2923 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2932 = _T_2923 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_14 = _T_2921 & _T_2932; // @[StatusArray.scala 134:33]
  wire  _T_2939 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2948 = _T_2939 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_14 = _T_2937 & _T_2948; // @[StatusArray.scala 134:33]
  wire  _T_2955 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2964 = _T_2955 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_14 = _T_2953 & _T_2964; // @[StatusArray.scala 134:33]
  wire  _T_2971 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2980 = _T_2971 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_14 = _T_2969 & _T_2980; // @[StatusArray.scala 134:33]
  wire  _T_2987 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2996 = _T_2987 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_14 = _T_2985 & _T_2996; // @[StatusArray.scala 134:33]
  wire  _T_3003 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3012 = _T_3003 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_14 = _T_3001 & _T_3012; // @[StatusArray.scala 134:33]
  wire  _T_3019 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3028 = _T_3019 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_14 = _T_3017 & _T_3028; // @[StatusArray.scala 134:33]
  wire  _T_3035 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3044 = _T_3035 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_14 = _T_3033 & _T_3044; // @[StatusArray.scala 134:33]
  wire  _T_3051 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3060 = _T_3051 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_14 = _T_3049 & _T_3060; // @[StatusArray.scala 134:33]
  wire  _T_3067 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3076 = _T_3067 & _T_2915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_14 = _T_3065 & _T_3076; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_14 = {dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,dataMatchVec_1_14,
    dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_14 = {dataMatchVec_10_14,dataMatchVec_9_14,dataMatchVec_8_14,dataMatchVec_7_14,
    dataMatchVec_6_14,dataMatchVec_5_14}; // @[StatusArray.scala 138:43]
  wire  _T_3104 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? io_update_0_data_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_3112 = statusArrayNext_7_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  _T_3113 = _T_3104 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_15 = _T_3102 & _T_3113; // @[StatusArray.scala 134:33]
  wire  _T_3120 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3129 = _T_3120 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_15 = _T_3118 & _T_3129; // @[StatusArray.scala 134:33]
  wire  _T_3136 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3145 = _T_3136 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_15 = _T_3134 & _T_3145; // @[StatusArray.scala 134:33]
  wire  _T_3152 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3161 = _T_3152 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_15 = _T_3150 & _T_3161; // @[StatusArray.scala 134:33]
  wire  _T_3168 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3177 = _T_3168 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_15 = _T_3166 & _T_3177; // @[StatusArray.scala 134:33]
  wire  _T_3184 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3193 = _T_3184 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_15 = _T_3182 & _T_3193; // @[StatusArray.scala 134:33]
  wire  _T_3200 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3209 = _T_3200 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_15 = _T_3198 & _T_3209; // @[StatusArray.scala 134:33]
  wire  _T_3216 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3225 = _T_3216 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_15 = _T_3214 & _T_3225; // @[StatusArray.scala 134:33]
  wire  _T_3232 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3241 = _T_3232 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_15 = _T_3230 & _T_3241; // @[StatusArray.scala 134:33]
  wire  _T_3248 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3257 = _T_3248 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_15 = _T_3246 & _T_3257; // @[StatusArray.scala 134:33]
  wire  _T_3264 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3273 = _T_3264 & _T_3112; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_15 = _T_3262 & _T_3273; // @[StatusArray.scala 134:33]
  wire [4:0] dataMatch_lo_15 = {dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,dataMatchVec_1_15,
    dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [5:0] dataMatch_hi_15 = {dataMatchVec_10_15,dataMatchVec_9_15,dataMatchVec_8_15,dataMatchVec_7_15,
    dataMatchVec_6_15,dataMatchVec_5_15}; // @[StatusArray.scala 138:43]
  wire [3:0] io_isValid_lo = {statusArray_3_valid,statusArray_2_valid,statusArray_1_valid,statusArray_0_valid}; // @[StatusArray.scala 260:51]
  wire [3:0] io_isValid_hi = {statusArray_7_valid,statusArray_6_valid,statusArray_5_valid,statusArray_4_valid}; // @[StatusArray.scala 260:51]
  wire  _io_canIssue_T = statusArrayNext_0_valid & readyVecNext_0; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_1 = statusArrayNext_1_valid & readyVecNext_1; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_2 = statusArrayNext_2_valid & readyVecNext_2; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_3 = statusArrayNext_3_valid & readyVecNext_3; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_4 = statusArrayNext_4_valid & readyVecNext_4; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_5 = statusArrayNext_5_valid & readyVecNext_5; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_6 = statusArrayNext_6_valid & readyVecNext_6; // @[StatusArray.scala 261:95]
  wire  _io_canIssue_T_7 = statusArrayNext_7_valid & readyVecNext_7; // @[StatusArray.scala 261:95]
  wire [3:0] io_canIssue_lo = {_io_canIssue_T_3,_io_canIssue_T_2,_io_canIssue_T_1,_io_canIssue_T}; // @[StatusArray.scala 261:102]
  wire [3:0] io_canIssue_hi = {_io_canIssue_T_7,_io_canIssue_T_6,_io_canIssue_T_5,_io_canIssue_T_4}; // @[StatusArray.scala 261:102]
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
  always @(posedge clock) begin
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_0_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_0_valid <= statusArrayNext_0_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_442; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_444; // @[StatusArray.scala 241:50]
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 248:27]
      statusArray_0_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 249:30]
      statusArray_0_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 250:29]
      statusArray_0_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_1_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_1_valid <= statusArrayNext_1_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_850; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_852; // @[StatusArray.scala 241:50]
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 248:27]
      statusArray_1_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 249:30]
      statusArray_1_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 250:29]
      statusArray_1_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_2_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_2_valid <= statusArrayNext_2_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1258; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_1260; // @[StatusArray.scala 241:50]
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 248:27]
      statusArray_2_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 249:30]
      statusArray_2_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 250:29]
      statusArray_2_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_3_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_3_valid <= statusArrayNext_3_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1666; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_1668; // @[StatusArray.scala 241:50]
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 248:27]
      statusArray_3_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 249:30]
      statusArray_3_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 250:29]
      statusArray_3_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_4_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_4_valid <= statusArrayNext_4_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_2074; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_2076; // @[StatusArray.scala 241:50]
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 248:27]
      statusArray_4_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 249:30]
      statusArray_4_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 250:29]
      statusArray_4_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_5_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_5_valid <= statusArrayNext_5_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_2482; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_2484; // @[StatusArray.scala 241:50]
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 248:27]
      statusArray_5_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 249:30]
      statusArray_5_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 250:29]
      statusArray_5_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_6_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_6_valid <= statusArrayNext_6_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_2890; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_2892; // @[StatusArray.scala 241:50]
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 248:27]
      statusArray_6_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 249:30]
      statusArray_6_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 250:29]
      statusArray_6_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_7_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_7_valid <= statusArrayNext_7_valid; // @[StatusArray.scala 108:15]
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_3298; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_3300; // @[StatusArray.scala 241:50]
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 248:27]
      statusArray_7_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 249:30]
      statusArray_7_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 250:29]
      statusArray_7_robIdx_value <= io_update_0_data_robIdx_value;
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
