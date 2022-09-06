module StatusArray_8(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [6:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  output [7:0] io_isValid,
  output [7:0] io_canIssue,
  input        io_update_0_enable,
  input  [7:0] io_update_0_addr,
  input        io_update_0_data_srcState_0,
  input        io_update_0_data_srcState_1,
  input  [6:0] io_update_0_data_psrc_0,
  input  [6:0] io_update_0_data_psrc_1,
  input  [1:0] io_update_0_data_srcType_0,
  input  [1:0] io_update_0_data_srcType_1,
  input        io_update_0_data_robIdx_flag,
  input  [6:0] io_update_0_data_robIdx_value,
  input        io_update_1_enable,
  input  [7:0] io_update_1_addr,
  input        io_update_1_data_srcState_0,
  input        io_update_1_data_srcState_1,
  input  [6:0] io_update_1_data_psrc_0,
  input  [6:0] io_update_1_data_psrc_1,
  input  [1:0] io_update_1_data_srcType_0,
  input  [1:0] io_update_1_data_srcType_1,
  input        io_update_1_data_robIdx_flag,
  input  [6:0] io_update_1_data_robIdx_value,
  input        io_wakeup_0_valid,
  input        io_wakeup_0_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_0_bits_pdest,
  input        io_wakeup_1_valid,
  input        io_wakeup_1_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_1_bits_pdest,
  input        io_wakeup_2_valid,
  input        io_wakeup_2_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_2_bits_pdest,
  input        io_wakeup_3_valid,
  input        io_wakeup_3_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_3_bits_pdest,
  input        io_wakeup_4_valid,
  input        io_wakeup_4_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_4_bits_pdest,
  input        io_wakeup_5_valid,
  input        io_wakeup_5_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_5_bits_pdest,
  input        io_wakeup_6_valid,
  input        io_wakeup_6_bits_ctrl_fpWen,
  input  [6:0] io_wakeup_6_bits_pdest,
  output [6:0] io_wakeupMatch_0_0,
  output [6:0] io_wakeupMatch_0_1,
  output [6:0] io_wakeupMatch_1_0,
  output [6:0] io_wakeupMatch_1_1,
  output [6:0] io_wakeupMatch_2_0,
  output [6:0] io_wakeupMatch_2_1,
  output [6:0] io_wakeupMatch_3_0,
  output [6:0] io_wakeupMatch_3_1,
  output [6:0] io_wakeupMatch_4_0,
  output [6:0] io_wakeupMatch_4_1,
  output [6:0] io_wakeupMatch_5_0,
  output [6:0] io_wakeupMatch_5_1,
  output [6:0] io_wakeupMatch_6_0,
  output [6:0] io_wakeupMatch_6_1,
  output [6:0] io_wakeupMatch_7_0,
  output [6:0] io_wakeupMatch_7_1,
  input        io_deqResp_0_valid,
  input  [7:0] io_deqResp_0_bits_rsMask,
  input        io_deqResp_0_bits_success
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
  wire  _T_36 = |mask_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_0 = isFlushed | _T_36 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_40 = |mask_1_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_1 = isFlushed_1 | _T_40 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_44 = |mask_2_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_2 = isFlushed_2 | _T_44 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_48 = |mask_3_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_3 = isFlushed_3 | _T_48 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_52 = |mask_4_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_4 = isFlushed_4 | _T_52 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_56 = |mask_5_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_5 = isFlushed_5 | _T_56 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_60 = |mask_6_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_6 = isFlushed_6 | _T_60 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
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
  wire  _T_64 = |mask_7_0; // @[StatusArray.scala 154:18]
  wire  flushedVec_7 = isFlushed_7 | _T_64 & io_deqResp_0_bits_success; // @[StatusArray.scala 175:32]
  wire  updateVec_7_1 = io_update_1_enable & io_update_1_addr[7]; // @[StatusArray.scala 158:57]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_32 = {updateVec_7_1,updateVec_7_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_7 = |_T_32; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_7 = updateValid_7 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_7_valid = ~flushedVec_7 & (realUpdateValid_7 | statusArray_7_valid); // @[StatusArray.scala 177:40]
  wire [6:0] _updateStatus_T_42 = updateVec__0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_43 = updateVec__1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_1 = _updateStatus_T_42 | _updateStatus_T_43; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_1 = updateValid_0 ? updateVal_0_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_268 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_268 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_254 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_254 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_240 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_240 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_226 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_226 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_212 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_212 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_198 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_198 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_184 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_184 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_1 = {stateMatchVec_6_1,stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,
    stateMatchVec_2_1,stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_1 = updateVec__0 & io_update_0_data_srcState_1 | updateVec__1 & io_update_1_data_srcState_1
    ; // @[Mux.scala 27:73]
  wire  _T_296 = updateValid_0 ? updateVal_0_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_296; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_39 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_40 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_39 | _updateStatus_T_40; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_157 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_157 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_143 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_143 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_129 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_129 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_115 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_115 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_101 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_101 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_87 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_87 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_73 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_73 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T = {stateMatchVec_6,stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,
    stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_294 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_294; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_108 = updateVec_1_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_109 = updateVec_1_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_1 = _updateStatus_T_108 | _updateStatus_T_109; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_1 = updateValid_1 ? updateVal_1_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_504 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_504 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_490 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_490 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_476 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_476 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_462 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_462 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_448 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_448 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_434 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_434 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_420 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_420 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_3 = {stateMatchVec_6_3,stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,
    stateMatchVec_2_3,stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_1 = updateVec_1_0 & io_update_0_data_srcState_1 | updateVec_1_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_532 = updateValid_1 ? updateVal_1_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_532; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_105 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_106 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_105 | _updateStatus_T_106; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_393 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_393 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_379 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_379 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_365 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_365 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_351 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_351 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_337 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_337 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_323 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_323 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_309 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_309 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_2 = {stateMatchVec_6_2,stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,
    stateMatchVec_2_2,stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_530 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_530; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_174 = updateVec_2_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_175 = updateVec_2_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_1 = _updateStatus_T_174 | _updateStatus_T_175; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_1 = updateValid_2 ? updateVal_2_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_740 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_740 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_726 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_726 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_712 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_712 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_698 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_698 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_684 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_684 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_670 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_670 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_656 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_656 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_5 = {stateMatchVec_6_5,stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,
    stateMatchVec_2_5,stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_1 = updateVec_2_0 & io_update_0_data_srcState_1 | updateVec_2_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_768 = updateValid_2 ? updateVal_2_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_768; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_171 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_172 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_171 | _updateStatus_T_172; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_629 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_629 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_615 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_615 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_601 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_601 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_587 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_587 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_573 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_573 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_559 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_559 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_545 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_545 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_4 = {stateMatchVec_6_4,stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,
    stateMatchVec_2_4,stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_766 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_766; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_240 = updateVec_3_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_241 = updateVec_3_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_1 = _updateStatus_T_240 | _updateStatus_T_241; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_1 = updateValid_3 ? updateVal_3_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_976 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_976 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_962 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_962 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_948 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_948 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_934 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_934 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_920 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_920 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_906 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_906 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_892 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_892 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_7 = {stateMatchVec_6_7,stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,
    stateMatchVec_2_7,stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_1 = updateVec_3_0 & io_update_0_data_srcState_1 | updateVec_3_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1004 = updateValid_3 ? updateVal_3_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_1004; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_237 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_238 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_237 | _updateStatus_T_238; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_865 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_865 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_851 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_851 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_837 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_837 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_823 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_823 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_809 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_809 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_795 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_795 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_781 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_781 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_6 = {stateMatchVec_6_6,stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,
    stateMatchVec_2_6,stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1002 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1002; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_306 = updateVec_4_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_307 = updateVec_4_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_1 = _updateStatus_T_306 | _updateStatus_T_307; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_1 = updateValid_4 ? updateVal_4_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1212 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_1212 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1198 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_1198 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1184 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_1184 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1170 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_1170 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1156 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_1156 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1142 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_1142 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1128 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_1128 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_9 = {stateMatchVec_6_9,stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,
    stateMatchVec_2_9,stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_1 = updateVec_4_0 & io_update_0_data_srcState_1 | updateVec_4_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1240 = updateValid_4 ? updateVal_4_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_1240; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_303 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_304 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_303 | _updateStatus_T_304; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1101 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_1101 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1087 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_1087 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1073 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_1073 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1059 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_1059 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1045 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_1045 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1031 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_1031 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1017 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_1017 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_8 = {stateMatchVec_6_8,stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,
    stateMatchVec_2_8,stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1238 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_1238; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_372 = updateVec_5_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_373 = updateVec_5_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_1 = _updateStatus_T_372 | _updateStatus_T_373; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_1 = updateValid_5 ? updateVal_5_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1448 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_1448 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1434 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_1434 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1420 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_1420 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1406 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_1406 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1392 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_1392 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1378 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_1378 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1364 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_1364 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_11 = {stateMatchVec_6_11,stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,
    stateMatchVec_2_11,stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_1 = updateVec_5_0 & io_update_0_data_srcState_1 | updateVec_5_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1476 = updateValid_5 ? updateVal_5_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_1476; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_369 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_370 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_369 | _updateStatus_T_370; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1337 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_1337 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1323 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_1323 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1309 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_1309 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1295 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_1295 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1281 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_1281 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1267 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_1267 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1253 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_1253 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_10 = {stateMatchVec_6_10,stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,
    stateMatchVec_2_10,stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1474 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_1474; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_438 = updateVec_6_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_439 = updateVec_6_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_1 = _updateStatus_T_438 | _updateStatus_T_439; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_1 = updateValid_6 ? updateVal_6_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1684 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_1684 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1670 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_1670 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1656 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_1656 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1642 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_1642 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1628 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_1628 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1614 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_1614 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1600 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_1600 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_13 = {stateMatchVec_6_13,stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,
    stateMatchVec_2_13,stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_1 = updateVec_6_0 & io_update_0_data_srcState_1 | updateVec_6_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1712 = updateValid_6 ? updateVal_6_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_1712; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_435 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_436 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_435 | _updateStatus_T_436; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1573 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_1573 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1559 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_1559 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1545 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_1545 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1531 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_1531 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1517 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_1517 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1503 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_1503 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1489 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_1489 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_12 = {stateMatchVec_6_12,stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,
    stateMatchVec_2_12,stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1710 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_1710; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 65:38]
  wire [6:0] _updateStatus_T_504 = updateVec_7_0 ? io_update_0_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_505 = updateVec_7_1 ? io_update_1_data_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_1 = _updateStatus_T_504 | _updateStatus_T_505; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_1 = updateValid_7 ? updateVal_7_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 248:27]
  wire  _T_1920 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_1920 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1906 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_1906 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1892 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_1892 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1878 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_1878 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1864 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_1864 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1850 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_1850 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1836 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_1836 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_15 = {stateMatchVec_6_15,stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,
    stateMatchVec_2_15,stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_1 = updateVec_7_0 & io_update_0_data_srcState_1 | updateVec_7_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1948 = updateValid_7 ? updateVal_7_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_1948; // @[StatusArray.scala 241:50]
  wire [6:0] _updateStatus_T_501 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_502 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_501 | _updateStatus_T_502; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1809 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_1809 & io_wakeup_6_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1795 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_1795 & io_wakeup_5_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1781 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_1781 & io_wakeup_4_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1767 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_1767 & io_wakeup_3_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1753 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_1753 & io_wakeup_2_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1739 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_1739 & io_wakeup_1_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire  _T_1725 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_1725 & io_wakeup_0_bits_ctrl_fpWen; // @[StatusArray.scala 131:34]
  wire [6:0] _stateMatch_T_14 = {stateMatchVec_6_14,stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,
    stateMatchVec_2_14,stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1946 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_1946; // @[StatusArray.scala 241:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 65:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 65:38]
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
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_78 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0 = _T_73 & _T_78; // @[StatusArray.scala 134:33]
  wire  _T_92 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1 = _T_87 & _T_92; // @[StatusArray.scala 134:33]
  wire  _T_106 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2 = _T_101 & _T_106; // @[StatusArray.scala 134:33]
  wire  _T_120 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3 = _T_115 & _T_120; // @[StatusArray.scala 134:33]
  wire  _T_134 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4 = _T_129 & _T_134; // @[StatusArray.scala 134:33]
  wire  _T_148 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5 = _T_143 & _T_148; // @[StatusArray.scala 134:33]
  wire  _T_162 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6 = _T_157 & _T_162; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo = {dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi = {dataMatchVec_6,dataMatchVec_5,dataMatchVec_4,dataMatchVec_3}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? updateVal_0_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_189 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_1 = _T_184 & _T_189; // @[StatusArray.scala 134:33]
  wire  _T_203 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_1 = _T_198 & _T_203; // @[StatusArray.scala 134:33]
  wire  _T_217 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_1 = _T_212 & _T_217; // @[StatusArray.scala 134:33]
  wire  _T_231 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_1 = _T_226 & _T_231; // @[StatusArray.scala 134:33]
  wire  _T_245 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_1 = _T_240 & _T_245; // @[StatusArray.scala 134:33]
  wire  _T_259 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_1 = _T_254 & _T_259; // @[StatusArray.scala 134:33]
  wire  _T_273 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_1 = _T_268 & _T_273; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_1 = {dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_1 = {dataMatchVec_6_1,dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_314 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_2 = _T_309 & _T_314; // @[StatusArray.scala 134:33]
  wire  _T_328 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_2 = _T_323 & _T_328; // @[StatusArray.scala 134:33]
  wire  _T_342 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_2 = _T_337 & _T_342; // @[StatusArray.scala 134:33]
  wire  _T_356 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_2 = _T_351 & _T_356; // @[StatusArray.scala 134:33]
  wire  _T_370 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_2 = _T_365 & _T_370; // @[StatusArray.scala 134:33]
  wire  _T_384 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_2 = _T_379 & _T_384; // @[StatusArray.scala 134:33]
  wire  _T_398 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_2 = _T_393 & _T_398; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_2 = {dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_2 = {dataMatchVec_6_2,dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? updateVal_1_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_425 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_3 = _T_420 & _T_425; // @[StatusArray.scala 134:33]
  wire  _T_439 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_3 = _T_434 & _T_439; // @[StatusArray.scala 134:33]
  wire  _T_453 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_3 = _T_448 & _T_453; // @[StatusArray.scala 134:33]
  wire  _T_467 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_3 = _T_462 & _T_467; // @[StatusArray.scala 134:33]
  wire  _T_481 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_3 = _T_476 & _T_481; // @[StatusArray.scala 134:33]
  wire  _T_495 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_3 = _T_490 & _T_495; // @[StatusArray.scala 134:33]
  wire  _T_509 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_3 = _T_504 & _T_509; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_3 = {dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_3 = {dataMatchVec_6_3,dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_550 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_4 = _T_545 & _T_550; // @[StatusArray.scala 134:33]
  wire  _T_564 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_4 = _T_559 & _T_564; // @[StatusArray.scala 134:33]
  wire  _T_578 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_4 = _T_573 & _T_578; // @[StatusArray.scala 134:33]
  wire  _T_592 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_4 = _T_587 & _T_592; // @[StatusArray.scala 134:33]
  wire  _T_606 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_4 = _T_601 & _T_606; // @[StatusArray.scala 134:33]
  wire  _T_620 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_4 = _T_615 & _T_620; // @[StatusArray.scala 134:33]
  wire  _T_634 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_4 = _T_629 & _T_634; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_4 = {dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_4 = {dataMatchVec_6_4,dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? updateVal_2_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_661 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_5 = _T_656 & _T_661; // @[StatusArray.scala 134:33]
  wire  _T_675 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_5 = _T_670 & _T_675; // @[StatusArray.scala 134:33]
  wire  _T_689 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_5 = _T_684 & _T_689; // @[StatusArray.scala 134:33]
  wire  _T_703 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_5 = _T_698 & _T_703; // @[StatusArray.scala 134:33]
  wire  _T_717 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_5 = _T_712 & _T_717; // @[StatusArray.scala 134:33]
  wire  _T_731 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_5 = _T_726 & _T_731; // @[StatusArray.scala 134:33]
  wire  _T_745 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_5 = _T_740 & _T_745; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_5 = {dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_5 = {dataMatchVec_6_5,dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_786 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_6 = _T_781 & _T_786; // @[StatusArray.scala 134:33]
  wire  _T_800 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_6 = _T_795 & _T_800; // @[StatusArray.scala 134:33]
  wire  _T_814 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_6 = _T_809 & _T_814; // @[StatusArray.scala 134:33]
  wire  _T_828 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_6 = _T_823 & _T_828; // @[StatusArray.scala 134:33]
  wire  _T_842 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_6 = _T_837 & _T_842; // @[StatusArray.scala 134:33]
  wire  _T_856 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_6 = _T_851 & _T_856; // @[StatusArray.scala 134:33]
  wire  _T_870 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_6 = _T_865 & _T_870; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_6 = {dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_6 = {dataMatchVec_6_6,dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? updateVal_3_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_897 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_7 = _T_892 & _T_897; // @[StatusArray.scala 134:33]
  wire  _T_911 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_7 = _T_906 & _T_911; // @[StatusArray.scala 134:33]
  wire  _T_925 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_7 = _T_920 & _T_925; // @[StatusArray.scala 134:33]
  wire  _T_939 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_7 = _T_934 & _T_939; // @[StatusArray.scala 134:33]
  wire  _T_953 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_7 = _T_948 & _T_953; // @[StatusArray.scala 134:33]
  wire  _T_967 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_7 = _T_962 & _T_967; // @[StatusArray.scala 134:33]
  wire  _T_981 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_7 = _T_976 & _T_981; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_7 = {dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_7 = {dataMatchVec_6_7,dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1022 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_8 = _T_1017 & _T_1022; // @[StatusArray.scala 134:33]
  wire  _T_1036 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_8 = _T_1031 & _T_1036; // @[StatusArray.scala 134:33]
  wire  _T_1050 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_8 = _T_1045 & _T_1050; // @[StatusArray.scala 134:33]
  wire  _T_1064 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_8 = _T_1059 & _T_1064; // @[StatusArray.scala 134:33]
  wire  _T_1078 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_8 = _T_1073 & _T_1078; // @[StatusArray.scala 134:33]
  wire  _T_1092 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_8 = _T_1087 & _T_1092; // @[StatusArray.scala 134:33]
  wire  _T_1106 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_8 = _T_1101 & _T_1106; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_8 = {dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_8 = {dataMatchVec_6_8,dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? updateVal_4_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1133 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_9 = _T_1128 & _T_1133; // @[StatusArray.scala 134:33]
  wire  _T_1147 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_9 = _T_1142 & _T_1147; // @[StatusArray.scala 134:33]
  wire  _T_1161 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_9 = _T_1156 & _T_1161; // @[StatusArray.scala 134:33]
  wire  _T_1175 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_9 = _T_1170 & _T_1175; // @[StatusArray.scala 134:33]
  wire  _T_1189 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_9 = _T_1184 & _T_1189; // @[StatusArray.scala 134:33]
  wire  _T_1203 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_9 = _T_1198 & _T_1203; // @[StatusArray.scala 134:33]
  wire  _T_1217 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_9 = _T_1212 & _T_1217; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_9 = {dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_9 = {dataMatchVec_6_9,dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1258 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_10 = _T_1253 & _T_1258; // @[StatusArray.scala 134:33]
  wire  _T_1272 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_10 = _T_1267 & _T_1272; // @[StatusArray.scala 134:33]
  wire  _T_1286 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_10 = _T_1281 & _T_1286; // @[StatusArray.scala 134:33]
  wire  _T_1300 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_10 = _T_1295 & _T_1300; // @[StatusArray.scala 134:33]
  wire  _T_1314 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_10 = _T_1309 & _T_1314; // @[StatusArray.scala 134:33]
  wire  _T_1328 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_10 = _T_1323 & _T_1328; // @[StatusArray.scala 134:33]
  wire  _T_1342 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_10 = _T_1337 & _T_1342; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_10 = {dataMatchVec_2_10,dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_10 = {dataMatchVec_6_10,dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? updateVal_5_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1369 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_11 = _T_1364 & _T_1369; // @[StatusArray.scala 134:33]
  wire  _T_1383 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_11 = _T_1378 & _T_1383; // @[StatusArray.scala 134:33]
  wire  _T_1397 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_11 = _T_1392 & _T_1397; // @[StatusArray.scala 134:33]
  wire  _T_1411 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_11 = _T_1406 & _T_1411; // @[StatusArray.scala 134:33]
  wire  _T_1425 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_11 = _T_1420 & _T_1425; // @[StatusArray.scala 134:33]
  wire  _T_1439 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_11 = _T_1434 & _T_1439; // @[StatusArray.scala 134:33]
  wire  _T_1453 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_11 = _T_1448 & _T_1453; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_11 = {dataMatchVec_2_11,dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_11 = {dataMatchVec_6_11,dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1494 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_12 = _T_1489 & _T_1494; // @[StatusArray.scala 134:33]
  wire  _T_1508 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_12 = _T_1503 & _T_1508; // @[StatusArray.scala 134:33]
  wire  _T_1522 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_12 = _T_1517 & _T_1522; // @[StatusArray.scala 134:33]
  wire  _T_1536 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_12 = _T_1531 & _T_1536; // @[StatusArray.scala 134:33]
  wire  _T_1550 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_12 = _T_1545 & _T_1550; // @[StatusArray.scala 134:33]
  wire  _T_1564 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_12 = _T_1559 & _T_1564; // @[StatusArray.scala 134:33]
  wire  _T_1578 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_12 = _T_1573 & _T_1578; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_12 = {dataMatchVec_2_12,dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_12 = {dataMatchVec_6_12,dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? updateVal_6_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1605 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_13 = _T_1600 & _T_1605; // @[StatusArray.scala 134:33]
  wire  _T_1619 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_13 = _T_1614 & _T_1619; // @[StatusArray.scala 134:33]
  wire  _T_1633 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_13 = _T_1628 & _T_1633; // @[StatusArray.scala 134:33]
  wire  _T_1647 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_13 = _T_1642 & _T_1647; // @[StatusArray.scala 134:33]
  wire  _T_1661 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_13 = _T_1656 & _T_1661; // @[StatusArray.scala 134:33]
  wire  _T_1675 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_13 = _T_1670 & _T_1675; // @[StatusArray.scala 134:33]
  wire  _T_1689 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_13 = _T_1684 & _T_1689; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_13 = {dataMatchVec_2_13,dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_13 = {dataMatchVec_6_13,dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1730 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_14 = _T_1725 & _T_1730; // @[StatusArray.scala 134:33]
  wire  _T_1744 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_14 = _T_1739 & _T_1744; // @[StatusArray.scala 134:33]
  wire  _T_1758 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_14 = _T_1753 & _T_1758; // @[StatusArray.scala 134:33]
  wire  _T_1772 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_14 = _T_1767 & _T_1772; // @[StatusArray.scala 134:33]
  wire  _T_1786 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_14 = _T_1781 & _T_1786; // @[StatusArray.scala 134:33]
  wire  _T_1800 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_14 = _T_1795 & _T_1800; // @[StatusArray.scala 134:33]
  wire  _T_1814 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_14 = _T_1809 & _T_1814; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_14 = {dataMatchVec_2_14,dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_14 = {dataMatchVec_6_14,dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14}; // @[StatusArray.scala 138:43]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? updateVal_7_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 249:30]
  wire  _T_1841 = io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_0_15 = _T_1836 & _T_1841; // @[StatusArray.scala 134:33]
  wire  _T_1855 = io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_1_15 = _T_1850 & _T_1855; // @[StatusArray.scala 134:33]
  wire  _T_1869 = io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_2_15 = _T_1864 & _T_1869; // @[StatusArray.scala 134:33]
  wire  _T_1883 = io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_3_15 = _T_1878 & _T_1883; // @[StatusArray.scala 134:33]
  wire  _T_1897 = io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_4_15 = _T_1892 & _T_1897; // @[StatusArray.scala 134:33]
  wire  _T_1911 = io_wakeup_5_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_5_15 = _T_1906 & _T_1911; // @[StatusArray.scala 134:33]
  wire  _T_1925 = io_wakeup_6_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]; // @[StatusArray.scala 130:84]
  wire  dataMatchVec_6_15 = _T_1920 & _T_1925; // @[StatusArray.scala 134:33]
  wire [2:0] dataMatch_lo_15 = {dataMatchVec_2_15,dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [3:0] dataMatch_hi_15 = {dataMatchVec_6_15,dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15}; // @[StatusArray.scala 138:43]
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
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_294; // @[StatusArray.scala 241:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_296; // @[StatusArray.scala 241:50]
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
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_530; // @[StatusArray.scala 241:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_532; // @[StatusArray.scala 241:50]
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
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_766; // @[StatusArray.scala 241:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_768; // @[StatusArray.scala 241:50]
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
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1002; // @[StatusArray.scala 241:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_1004; // @[StatusArray.scala 241:50]
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
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_1238; // @[StatusArray.scala 241:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_1240; // @[StatusArray.scala 241:50]
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
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_1474; // @[StatusArray.scala 241:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_1476; // @[StatusArray.scala 241:50]
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
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_1710; // @[StatusArray.scala 241:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_1712; // @[StatusArray.scala 241:50]
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
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_1946; // @[StatusArray.scala 241:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_1948; // @[StatusArray.scala 241:50]
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
