module RedirectGenerator(
  input         clock,
  input         reset,
  input         io_exuMispredict_0_valid,
  input         io_exuMispredict_0_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_0_bits_uop_cf_pd_brType,
  input         io_exuMispredict_0_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_0_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_0_bits_uop_ctrl_imm,
  input         io_exuMispredict_0_bits_redirect_robIdx_flag,
  input  [6:0]  io_exuMispredict_0_bits_redirect_robIdx_value,
  input         io_exuMispredict_0_bits_redirect_ftqIdx_flag,
  input  [5:0]  io_exuMispredict_0_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_0_bits_redirect_ftqOffset,
  input  [38:0] io_exuMispredict_0_bits_redirect_cfiUpdate_target,
  input         io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_1_valid,
  input         io_exuMispredict_1_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_1_bits_uop_cf_pd_brType,
  input         io_exuMispredict_1_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_1_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_1_bits_uop_ctrl_imm,
  input         io_exuMispredict_1_bits_redirect_robIdx_flag,
  input  [6:0]  io_exuMispredict_1_bits_redirect_robIdx_value,
  input         io_exuMispredict_1_bits_redirect_ftqIdx_flag,
  input  [5:0]  io_exuMispredict_1_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_1_bits_redirect_ftqOffset,
  input         io_exuMispredict_1_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_2_valid,
  input         io_exuMispredict_2_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_2_bits_uop_cf_pd_brType,
  input         io_exuMispredict_2_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_2_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_2_bits_uop_ctrl_imm,
  input         io_exuMispredict_2_bits_redirect_robIdx_flag,
  input  [6:0]  io_exuMispredict_2_bits_redirect_robIdx_value,
  input         io_exuMispredict_2_bits_redirect_ftqIdx_flag,
  input  [5:0]  io_exuMispredict_2_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_2_bits_redirect_ftqOffset,
  input         io_exuMispredict_2_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_3_valid,
  input         io_exuMispredict_3_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_3_bits_uop_cf_pd_brType,
  input         io_exuMispredict_3_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_3_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_3_bits_uop_ctrl_imm,
  input         io_exuMispredict_3_bits_redirect_robIdx_flag,
  input  [6:0]  io_exuMispredict_3_bits_redirect_robIdx_value,
  input         io_exuMispredict_3_bits_redirect_ftqIdx_flag,
  input  [5:0]  io_exuMispredict_3_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_3_bits_redirect_ftqOffset,
  input         io_exuMispredict_3_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_3_bits_redirect_cfiUpdate_isMisPred,
  input         io_exuMispredict_4_valid,
  input         io_exuMispredict_4_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_exuMispredict_4_bits_uop_cf_pd_brType,
  input         io_exuMispredict_4_bits_uop_cf_pd_isCall,
  input         io_exuMispredict_4_bits_uop_cf_pd_isRet,
  input  [19:0] io_exuMispredict_4_bits_uop_ctrl_imm,
  input         io_exuMispredict_4_bits_redirect_robIdx_flag,
  input  [6:0]  io_exuMispredict_4_bits_redirect_robIdx_value,
  input         io_exuMispredict_4_bits_redirect_ftqIdx_flag,
  input  [5:0]  io_exuMispredict_4_bits_redirect_ftqIdx_value,
  input  [2:0]  io_exuMispredict_4_bits_redirect_ftqOffset,
  input         io_exuMispredict_4_bits_redirect_cfiUpdate_taken,
  input         io_exuMispredict_4_bits_redirect_cfiUpdate_isMisPred,
  input         io_loadReplay_valid,
  input         io_loadReplay_bits_robIdx_flag,
  input  [6:0]  io_loadReplay_bits_robIdx_value,
  input         io_loadReplay_bits_ftqIdx_flag,
  input  [5:0]  io_loadReplay_bits_ftqIdx_value,
  input  [2:0]  io_loadReplay_bits_ftqOffset,
  input  [5:0]  io_loadReplay_bits_stFtqIdx_value,
  input  [2:0]  io_loadReplay_bits_stFtqOffset,
  input         io_flush,
  output [5:0]  io_stage1PcRead_0_ptr_value,
  output [2:0]  io_stage1PcRead_0_offset,
  output [5:0]  io_stage1PcRead_1_ptr_value,
  output [2:0]  io_stage1PcRead_1_offset,
  output [5:0]  io_stage1PcRead_2_ptr_value,
  output [2:0]  io_stage1PcRead_2_offset,
  output [5:0]  io_stage1PcRead_3_ptr_value,
  output [2:0]  io_stage1PcRead_3_offset,
  output [5:0]  io_stage1PcRead_4_ptr_value,
  output [2:0]  io_stage1PcRead_4_offset,
  output [5:0]  io_stage1PcRead_5_ptr_value,
  output [2:0]  io_stage1PcRead_5_offset,
  output        io_stage2Redirect_valid,
  output        io_stage2Redirect_bits_robIdx_flag,
  output [6:0]  io_stage2Redirect_bits_robIdx_value,
  output        io_stage2Redirect_bits_ftqIdx_flag,
  output [5:0]  io_stage2Redirect_bits_ftqIdx_value,
  output [2:0]  io_stage2Redirect_bits_ftqOffset,
  output        io_stage2Redirect_bits_level,
  output        io_stage2Redirect_bits_cfiUpdate_taken,
  output        io_stage2Redirect_bits_cfiUpdate_isMisPred,
  output        io_memPredUpdate_valid,
  output [9:0]  io_memPredUpdate_ldpc,
  output [9:0]  io_memPredUpdate_stpc,
  output [5:0]  io_memPredPcRead_ptr_value,
  output [2:0]  io_memPredPcRead_offset,
  input  [38:0] io_memPredPcRead_data,
  output [38:0] io_for_frontend_redirect_gen_s1_jumpTarget,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_0,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_1,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_2,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_3,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_4,
  output        io_for_frontend_redirect_gen_s1_redirect_onehot_5,
  output        io_for_frontend_redirect_gen_s1_oldest_redirect_bits_cfiUpdate_taken,
  output        io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isRVC,
  output [1:0]  io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_brType,
  output        io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isCall,
  output        io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isRet,
  output [19:0] io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_ctrl_imm,
  input  [38:0] io_for_frontend_redirect_gen_s1_real_pc
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
`endif // RANDOMIZE_REG_INIT
  wire  allRedirect_redirect_valid = io_exuMispredict_0_valid & io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 112:36]
  wire  allRedirect_redirect_1_valid = io_exuMispredict_1_valid & io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 112:36]
  wire  allRedirect_redirect_2_valid = io_exuMispredict_2_valid & io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 112:36]
  wire  allRedirect_redirect_3_valid = io_exuMispredict_3_valid & io_exuMispredict_3_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 112:36]
  wire  allRedirect_redirect_4_valid = io_exuMispredict_4_valid & io_exuMispredict_4_bits_redirect_cfiUpdate_isMisPred; // @[CtrlBlock.scala 112:36]
  wire  oldestOneHot_compareVec_differentFlag = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_1_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_1_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_1_0 = oldestOneHot_compareVec_differentFlag ^ oldestOneHot_compareVec_compare; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_1 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_2_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_1 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_2_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_2_0 = oldestOneHot_compareVec_differentFlag_1 ^ oldestOneHot_compareVec_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_2 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_exuMispredict_2_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_2 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_exuMispredict_2_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_2_1 = oldestOneHot_compareVec_differentFlag_2 ^ oldestOneHot_compareVec_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_3 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_3_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_3 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_3_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_3_0 = oldestOneHot_compareVec_differentFlag_3 ^ oldestOneHot_compareVec_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_4 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_exuMispredict_3_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_4 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_exuMispredict_3_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_3_1 = oldestOneHot_compareVec_differentFlag_4 ^ oldestOneHot_compareVec_compare_4; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_5 = io_exuMispredict_2_bits_redirect_robIdx_flag ^
    io_exuMispredict_3_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_5 = io_exuMispredict_2_bits_redirect_robIdx_value >
    io_exuMispredict_3_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_3_2 = oldestOneHot_compareVec_differentFlag_5 ^ oldestOneHot_compareVec_compare_5; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_6 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_exuMispredict_4_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_6 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_exuMispredict_4_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_4_0 = oldestOneHot_compareVec_differentFlag_6 ^ oldestOneHot_compareVec_compare_6; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_7 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_exuMispredict_4_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_7 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_exuMispredict_4_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_4_1 = oldestOneHot_compareVec_differentFlag_7 ^ oldestOneHot_compareVec_compare_7; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_8 = io_exuMispredict_2_bits_redirect_robIdx_flag ^
    io_exuMispredict_4_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_8 = io_exuMispredict_2_bits_redirect_robIdx_value >
    io_exuMispredict_4_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_4_2 = oldestOneHot_compareVec_differentFlag_8 ^ oldestOneHot_compareVec_compare_8; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_9 = io_exuMispredict_3_bits_redirect_robIdx_flag ^
    io_exuMispredict_4_bits_redirect_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_9 = io_exuMispredict_3_bits_redirect_robIdx_value >
    io_exuMispredict_4_bits_redirect_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_4_3 = oldestOneHot_compareVec_differentFlag_9 ^ oldestOneHot_compareVec_compare_9; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_10 = io_exuMispredict_0_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_10 = io_exuMispredict_0_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_5_0 = oldestOneHot_compareVec_differentFlag_10 ^ oldestOneHot_compareVec_compare_10; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_11 = io_exuMispredict_1_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_11 = io_exuMispredict_1_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_5_1 = oldestOneHot_compareVec_differentFlag_11 ^ oldestOneHot_compareVec_compare_11; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_12 = io_exuMispredict_2_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_12 = io_exuMispredict_2_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_5_2 = oldestOneHot_compareVec_differentFlag_12 ^ oldestOneHot_compareVec_compare_12; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_13 = io_exuMispredict_3_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_13 = io_exuMispredict_3_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_5_3 = oldestOneHot_compareVec_differentFlag_13 ^ oldestOneHot_compareVec_compare_13; // @[CircularQueuePtr.scala 87:19]
  wire  oldestOneHot_compareVec_differentFlag_14 = io_exuMispredict_4_bits_redirect_robIdx_flag ^
    io_loadReplay_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  oldestOneHot_compareVec_compare_14 = io_exuMispredict_4_bits_redirect_robIdx_value >
    io_loadReplay_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  oldestOneHot_compareVec_5_4 = oldestOneHot_compareVec_differentFlag_14 ^ oldestOneHot_compareVec_compare_14; // @[CircularQueuePtr.scala 87:19]
  wire  _oldestOneHot_resultOnehot_T = ~allRedirect_redirect_1_valid; // @[CtrlBlock.scala 99:12]
  wire  _oldestOneHot_resultOnehot_T_2 = ~allRedirect_redirect_1_valid | ~oldestOneHot_compareVec_1_0; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_3 = ~allRedirect_redirect_2_valid; // @[CtrlBlock.scala 99:12]
  wire  _oldestOneHot_resultOnehot_T_5 = ~allRedirect_redirect_2_valid | ~oldestOneHot_compareVec_2_0; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_6 = ~allRedirect_redirect_3_valid; // @[CtrlBlock.scala 99:12]
  wire  _oldestOneHot_resultOnehot_T_8 = ~allRedirect_redirect_3_valid | ~oldestOneHot_compareVec_3_0; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_9 = ~allRedirect_redirect_4_valid; // @[CtrlBlock.scala 99:12]
  wire  _oldestOneHot_resultOnehot_T_11 = ~allRedirect_redirect_4_valid | ~oldestOneHot_compareVec_4_0; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_14 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_5_0; // @[CtrlBlock.scala 99:25]
  wire [5:0] _oldestOneHot_resultOnehot_T_15 = {allRedirect_redirect_valid,_oldestOneHot_resultOnehot_T_2,
    _oldestOneHot_resultOnehot_T_5,_oldestOneHot_resultOnehot_T_8,_oldestOneHot_resultOnehot_T_11,
    _oldestOneHot_resultOnehot_T_14}; // @[Cat.scala 31:58]
  wire  oldestOneHot_0 = &_oldestOneHot_resultOnehot_T_15; // @[CtrlBlock.scala 100:8]
  wire  _oldestOneHot_resultOnehot_T_18 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_1_0; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_21 = ~allRedirect_redirect_2_valid | ~oldestOneHot_compareVec_2_1; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_24 = ~allRedirect_redirect_3_valid | ~oldestOneHot_compareVec_3_1; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_27 = ~allRedirect_redirect_4_valid | ~oldestOneHot_compareVec_4_1; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_30 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_5_1; // @[CtrlBlock.scala 99:25]
  wire [5:0] _oldestOneHot_resultOnehot_T_31 = {_oldestOneHot_resultOnehot_T_18,allRedirect_redirect_1_valid,
    _oldestOneHot_resultOnehot_T_21,_oldestOneHot_resultOnehot_T_24,_oldestOneHot_resultOnehot_T_27,
    _oldestOneHot_resultOnehot_T_30}; // @[Cat.scala 31:58]
  wire  oldestOneHot_1 = &_oldestOneHot_resultOnehot_T_31; // @[CtrlBlock.scala 100:8]
  wire  _oldestOneHot_resultOnehot_T_34 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_2_0; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_36 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_2_1; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_39 = ~allRedirect_redirect_3_valid | ~oldestOneHot_compareVec_3_2; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_42 = ~allRedirect_redirect_4_valid | ~oldestOneHot_compareVec_4_2; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_45 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_5_2; // @[CtrlBlock.scala 99:25]
  wire [5:0] _oldestOneHot_resultOnehot_T_46 = {_oldestOneHot_resultOnehot_T_34,_oldestOneHot_resultOnehot_T_36,
    allRedirect_redirect_2_valid,_oldestOneHot_resultOnehot_T_39,_oldestOneHot_resultOnehot_T_42,
    _oldestOneHot_resultOnehot_T_45}; // @[Cat.scala 31:58]
  wire  oldestOneHot_2 = &_oldestOneHot_resultOnehot_T_46; // @[CtrlBlock.scala 100:8]
  wire  _oldestOneHot_resultOnehot_T_49 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_3_0; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_51 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_3_1; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_53 = _oldestOneHot_resultOnehot_T_3 | oldestOneHot_compareVec_3_2; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_56 = ~allRedirect_redirect_4_valid | ~oldestOneHot_compareVec_4_3; // @[CtrlBlock.scala 99:25]
  wire  _oldestOneHot_resultOnehot_T_59 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_5_3; // @[CtrlBlock.scala 99:25]
  wire [5:0] _oldestOneHot_resultOnehot_T_60 = {_oldestOneHot_resultOnehot_T_49,_oldestOneHot_resultOnehot_T_51,
    _oldestOneHot_resultOnehot_T_53,allRedirect_redirect_3_valid,_oldestOneHot_resultOnehot_T_56,
    _oldestOneHot_resultOnehot_T_59}; // @[Cat.scala 31:58]
  wire  oldestOneHot_3 = &_oldestOneHot_resultOnehot_T_60; // @[CtrlBlock.scala 100:8]
  wire  _oldestOneHot_resultOnehot_T_63 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_4_0; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_65 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_4_1; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_67 = _oldestOneHot_resultOnehot_T_3 | oldestOneHot_compareVec_4_2; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_69 = _oldestOneHot_resultOnehot_T_6 | oldestOneHot_compareVec_4_3; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_72 = ~io_loadReplay_valid | ~oldestOneHot_compareVec_5_4; // @[CtrlBlock.scala 99:25]
  wire [5:0] _oldestOneHot_resultOnehot_T_73 = {_oldestOneHot_resultOnehot_T_63,_oldestOneHot_resultOnehot_T_65,
    _oldestOneHot_resultOnehot_T_67,_oldestOneHot_resultOnehot_T_69,allRedirect_redirect_4_valid,
    _oldestOneHot_resultOnehot_T_72}; // @[Cat.scala 31:58]
  wire  oldestOneHot_4 = &_oldestOneHot_resultOnehot_T_73; // @[CtrlBlock.scala 100:8]
  wire  _oldestOneHot_resultOnehot_T_76 = ~allRedirect_redirect_valid | oldestOneHot_compareVec_5_0; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_78 = _oldestOneHot_resultOnehot_T | oldestOneHot_compareVec_5_1; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_80 = _oldestOneHot_resultOnehot_T_3 | oldestOneHot_compareVec_5_2; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_82 = _oldestOneHot_resultOnehot_T_6 | oldestOneHot_compareVec_5_3; // @[CtrlBlock.scala 97:32]
  wire  _oldestOneHot_resultOnehot_T_84 = _oldestOneHot_resultOnehot_T_9 | oldestOneHot_compareVec_5_4; // @[CtrlBlock.scala 97:32]
  wire [5:0] _oldestOneHot_resultOnehot_T_85 = {_oldestOneHot_resultOnehot_T_76,_oldestOneHot_resultOnehot_T_78,
    _oldestOneHot_resultOnehot_T_80,_oldestOneHot_resultOnehot_T_82,_oldestOneHot_resultOnehot_T_84,io_loadReplay_valid}
    ; // @[Cat.scala 31:58]
  wire  oldestOneHot_5 = &_oldestOneHot_resultOnehot_T_85; // @[CtrlBlock.scala 100:8]
  wire [7:0] _needFlushVec_flushItself_T_1 = {io_exuMispredict_0_bits_redirect_robIdx_flag,
    io_exuMispredict_0_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _needFlushVec_flushItself_T_2 = {io_stage2Redirect_bits_robIdx_flag,io_stage2Redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _needFlushVec_flushItself_T_3 = _needFlushVec_flushItself_T_1 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag = io_exuMispredict_0_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare = io_exuMispredict_0_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T = needFlushVec_differentFlag ^ needFlushVec_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_2 = io_stage2Redirect_valid & (needFlushVec_flushItself | _needFlushVec_T); // @[Rob.scala 36:20]
  wire  needFlushVec_0 = _needFlushVec_T_2 | io_flush; // @[CtrlBlock.scala 120:89]
  wire [7:0] _needFlushVec_flushItself_T_5 = {io_exuMispredict_1_bits_redirect_robIdx_flag,
    io_exuMispredict_1_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needFlushVec_flushItself_T_7 = _needFlushVec_flushItself_T_5 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself_1 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_7; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag_1 = io_exuMispredict_1_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare_1 = io_exuMispredict_1_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T_4 = needFlushVec_differentFlag_1 ^ needFlushVec_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_6 = io_stage2Redirect_valid & (needFlushVec_flushItself_1 | _needFlushVec_T_4); // @[Rob.scala 36:20]
  wire  needFlushVec_1 = _needFlushVec_T_6 | io_flush; // @[CtrlBlock.scala 120:89]
  wire [7:0] _needFlushVec_flushItself_T_9 = {io_exuMispredict_2_bits_redirect_robIdx_flag,
    io_exuMispredict_2_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needFlushVec_flushItself_T_11 = _needFlushVec_flushItself_T_9 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself_2 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_11; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag_2 = io_exuMispredict_2_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare_2 = io_exuMispredict_2_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T_8 = needFlushVec_differentFlag_2 ^ needFlushVec_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_10 = io_stage2Redirect_valid & (needFlushVec_flushItself_2 | _needFlushVec_T_8); // @[Rob.scala 36:20]
  wire  needFlushVec_2 = _needFlushVec_T_10 | io_flush; // @[CtrlBlock.scala 120:89]
  wire [7:0] _needFlushVec_flushItself_T_13 = {io_exuMispredict_3_bits_redirect_robIdx_flag,
    io_exuMispredict_3_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needFlushVec_flushItself_T_15 = _needFlushVec_flushItself_T_13 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself_3 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_15; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag_3 = io_exuMispredict_3_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare_3 = io_exuMispredict_3_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T_12 = needFlushVec_differentFlag_3 ^ needFlushVec_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_14 = io_stage2Redirect_valid & (needFlushVec_flushItself_3 | _needFlushVec_T_12); // @[Rob.scala 36:20]
  wire  needFlushVec_3 = _needFlushVec_T_14 | io_flush; // @[CtrlBlock.scala 120:89]
  wire [7:0] _needFlushVec_flushItself_T_17 = {io_exuMispredict_4_bits_redirect_robIdx_flag,
    io_exuMispredict_4_bits_redirect_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needFlushVec_flushItself_T_19 = _needFlushVec_flushItself_T_17 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself_4 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_19; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag_4 = io_exuMispredict_4_bits_redirect_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag
    ; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare_4 = io_exuMispredict_4_bits_redirect_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T_16 = needFlushVec_differentFlag_4 ^ needFlushVec_compare_4; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_18 = io_stage2Redirect_valid & (needFlushVec_flushItself_4 | _needFlushVec_T_16); // @[Rob.scala 36:20]
  wire  needFlushVec_4 = _needFlushVec_T_18 | io_flush; // @[CtrlBlock.scala 120:89]
  wire [7:0] _needFlushVec_flushItself_T_21 = {io_loadReplay_bits_robIdx_flag,io_loadReplay_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needFlushVec_flushItself_T_23 = _needFlushVec_flushItself_T_21 == _needFlushVec_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needFlushVec_flushItself_5 = io_stage2Redirect_bits_level & _needFlushVec_flushItself_T_23; // @[Rob.scala 35:51]
  wire  needFlushVec_differentFlag_5 = io_loadReplay_bits_robIdx_flag ^ io_stage2Redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needFlushVec_compare_5 = io_loadReplay_bits_robIdx_value > io_stage2Redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needFlushVec_T_20 = needFlushVec_differentFlag_5 ^ needFlushVec_compare_5; // @[CircularQueuePtr.scala 87:19]
  wire  _needFlushVec_T_22 = io_stage2Redirect_valid & (needFlushVec_flushItself_5 | _needFlushVec_T_20); // @[Rob.scala 36:20]
  wire  needFlushVec_5 = _needFlushVec_T_22 | io_flush; // @[CtrlBlock.scala 120:89]
  wire  _oldestValid_T_1 = oldestOneHot_0 & ~needFlushVec_0; // @[CtrlBlock.scala 121:82]
  wire  _oldestValid_T_3 = oldestOneHot_1 & ~needFlushVec_1; // @[CtrlBlock.scala 121:82]
  wire  _oldestValid_T_5 = oldestOneHot_2 & ~needFlushVec_2; // @[CtrlBlock.scala 121:82]
  wire  _oldestValid_T_7 = oldestOneHot_3 & ~needFlushVec_3; // @[CtrlBlock.scala 121:82]
  wire  _oldestValid_T_9 = oldestOneHot_4 & ~needFlushVec_4; // @[CtrlBlock.scala 121:82]
  wire  _oldestValid_T_11 = oldestOneHot_5 & ~needFlushVec_5; // @[CtrlBlock.scala 121:82]
  wire [5:0] _oldestValid_T_12 = {_oldestValid_T_11,_oldestValid_T_9,_oldestValid_T_7,_oldestValid_T_5,_oldestValid_T_3,
    _oldestValid_T_1}; // @[CtrlBlock.scala 121:91]
  wire [2:0] _oldestExuOutput_T_1089 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1090 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1091 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1092 = oldestOneHot_3 ? io_exuMispredict_3_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1093 = oldestOneHot_4 ? io_exuMispredict_4_bits_redirect_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1094 = _oldestExuOutput_T_1089 | _oldestExuOutput_T_1090; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1095 = _oldestExuOutput_T_1094 | _oldestExuOutput_T_1091; // @[Mux.scala 27:73]
  wire [2:0] _oldestExuOutput_T_1096 = _oldestExuOutput_T_1095 | _oldestExuOutput_T_1092; // @[Mux.scala 27:73]
  wire [2:0] oldestExuOutput_bits_redirect_ftqOffset = _oldestExuOutput_T_1096 | _oldestExuOutput_T_1093; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1098 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1099 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1100 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1101 = oldestOneHot_3 ? io_exuMispredict_3_bits_redirect_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1102 = oldestOneHot_4 ? io_exuMispredict_4_bits_redirect_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1103 = _oldestExuOutput_T_1098 | _oldestExuOutput_T_1099; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1104 = _oldestExuOutput_T_1103 | _oldestExuOutput_T_1100; // @[Mux.scala 27:73]
  wire [5:0] _oldestExuOutput_T_1105 = _oldestExuOutput_T_1104 | _oldestExuOutput_T_1101; // @[Mux.scala 27:73]
  wire [5:0] oldestExuOutput_bits_redirect_ftqIdx_value = _oldestExuOutput_T_1105 | _oldestExuOutput_T_1102; // @[Mux.scala 27:73]
  wire  oldestExuOutput_bits_redirect_ftqIdx_flag = oldestOneHot_0 & io_exuMispredict_0_bits_redirect_ftqIdx_flag |
    oldestOneHot_1 & io_exuMispredict_1_bits_redirect_ftqIdx_flag | oldestOneHot_2 &
    io_exuMispredict_2_bits_redirect_ftqIdx_flag | oldestOneHot_3 & io_exuMispredict_3_bits_redirect_ftqIdx_flag |
    oldestOneHot_4 & io_exuMispredict_4_bits_redirect_ftqIdx_flag; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1116 = oldestOneHot_0 ? io_exuMispredict_0_bits_redirect_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1117 = oldestOneHot_1 ? io_exuMispredict_1_bits_redirect_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1118 = oldestOneHot_2 ? io_exuMispredict_2_bits_redirect_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1119 = oldestOneHot_3 ? io_exuMispredict_3_bits_redirect_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1120 = oldestOneHot_4 ? io_exuMispredict_4_bits_redirect_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1121 = _oldestExuOutput_T_1116 | _oldestExuOutput_T_1117; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1122 = _oldestExuOutput_T_1121 | _oldestExuOutput_T_1118; // @[Mux.scala 27:73]
  wire [6:0] _oldestExuOutput_T_1123 = _oldestExuOutput_T_1122 | _oldestExuOutput_T_1119; // @[Mux.scala 27:73]
  wire [6:0] oldestExuOutput_bits_redirect_robIdx_value = _oldestExuOutput_T_1123 | _oldestExuOutput_T_1120; // @[Mux.scala 27:73]
  wire  oldestExuOutput_bits_redirect_robIdx_flag = oldestOneHot_0 & io_exuMispredict_0_bits_redirect_robIdx_flag |
    oldestOneHot_1 & io_exuMispredict_1_bits_redirect_robIdx_flag | oldestOneHot_2 &
    io_exuMispredict_2_bits_redirect_robIdx_flag | oldestOneHot_3 & io_exuMispredict_3_bits_redirect_robIdx_flag |
    oldestOneHot_4 & io_exuMispredict_4_bits_redirect_robIdx_flag; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1530 = oldestOneHot_0 ? io_exuMispredict_0_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1531 = oldestOneHot_1 ? io_exuMispredict_1_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1532 = oldestOneHot_2 ? io_exuMispredict_2_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1533 = oldestOneHot_3 ? io_exuMispredict_3_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1534 = oldestOneHot_4 ? io_exuMispredict_4_bits_uop_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1535 = _oldestExuOutput_T_1530 | _oldestExuOutput_T_1531; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1536 = _oldestExuOutput_T_1535 | _oldestExuOutput_T_1532; // @[Mux.scala 27:73]
  wire [19:0] _oldestExuOutput_T_1537 = _oldestExuOutput_T_1536 | _oldestExuOutput_T_1533; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1818 = oldestOneHot_0 ? io_exuMispredict_0_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1819 = oldestOneHot_1 ? io_exuMispredict_1_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1820 = oldestOneHot_2 ? io_exuMispredict_2_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1821 = oldestOneHot_3 ? io_exuMispredict_3_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1822 = oldestOneHot_4 ? io_exuMispredict_4_bits_uop_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1823 = _oldestExuOutput_T_1818 | _oldestExuOutput_T_1819; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1824 = _oldestExuOutput_T_1823 | _oldestExuOutput_T_1820; // @[Mux.scala 27:73]
  wire [1:0] _oldestExuOutput_T_1825 = _oldestExuOutput_T_1824 | _oldestExuOutput_T_1821; // @[Mux.scala 27:73]
  wire [2:0] _oldestRedirect_T_1292 = oldestOneHot_5 ? io_loadReplay_bits_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [5:0] _oldestRedirect_T_1303 = oldestOneHot_5 ? io_loadReplay_bits_ftqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [6:0] _oldestRedirect_T_1325 = oldestOneHot_5 ? io_loadReplay_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  reg [38:0] s1_jumpTarget; // @[Reg.scala 16:16]
  reg  s1_redirect_bits_reg_robIdx_flag; // @[CtrlBlock.scala 128:37]
  reg [6:0] s1_redirect_bits_reg_robIdx_value; // @[CtrlBlock.scala 128:37]
  reg  s1_redirect_bits_reg_ftqIdx_flag; // @[CtrlBlock.scala 128:37]
  reg [5:0] s1_redirect_bits_reg_ftqIdx_value; // @[CtrlBlock.scala 128:37]
  reg [2:0] s1_redirect_bits_reg_ftqOffset; // @[CtrlBlock.scala 128:37]
  reg  s1_redirect_bits_reg_level; // @[CtrlBlock.scala 128:37]
  reg  s1_redirect_bits_reg_cfiUpdate_taken; // @[CtrlBlock.scala 128:37]
  reg  s1_redirect_bits_reg_cfiUpdate_isMisPred; // @[CtrlBlock.scala 128:37]
  reg [5:0] s1_redirect_bits_reg_stFtqIdx_value; // @[CtrlBlock.scala 128:37]
  reg [2:0] s1_redirect_bits_reg_stFtqOffset; // @[CtrlBlock.scala 128:37]
  reg  s1_redirect_valid_reg; // @[CtrlBlock.scala 129:38]
  reg  s1_redirect_onehot_0; // @[CtrlBlock.scala 130:35]
  reg  s1_redirect_onehot_1; // @[CtrlBlock.scala 130:35]
  reg  s1_redirect_onehot_2; // @[CtrlBlock.scala 130:35]
  reg  s1_redirect_onehot_3; // @[CtrlBlock.scala 130:35]
  reg  s1_redirect_onehot_4; // @[CtrlBlock.scala 130:35]
  reg  s1_redirect_onehot_5; // @[CtrlBlock.scala 130:35]
  reg  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRVC; // @[CtrlBlock.scala 135:63]
  reg [1:0] io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_brType; // @[CtrlBlock.scala 135:63]
  reg  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isCall; // @[CtrlBlock.scala 135:63]
  reg  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRet; // @[CtrlBlock.scala 135:63]
  reg [19:0] io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_ctrl_imm; // @[CtrlBlock.scala 135:63]
  reg  io_memPredUpdate_valid_REG; // @[CtrlBlock.scala 177:36]
  wire [29:0] io_memPredUpdate_waddr_value = io_for_frontend_redirect_gen_s1_real_pc[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _io_memPredUpdate_waddr_T_4 = io_memPredUpdate_waddr_value[19:10] ^ io_memPredUpdate_waddr_value[29:20]; // @[ParallelMux.scala 59:54]
  reg [9:0] io_memPredUpdate_ldpc_REG; // @[CtrlBlock.scala 182:35]
  wire [29:0] io_memPredUpdate_stpc_value = io_memPredPcRead_data[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _io_memPredUpdate_stpc_T_4 = io_memPredUpdate_stpc_value[19:10] ^ io_memPredUpdate_stpc_value[29:20]; // @[ParallelMux.scala 59:54]
  assign io_stage1PcRead_0_ptr_value = io_exuMispredict_0_bits_redirect_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_0_offset = io_exuMispredict_0_bits_redirect_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage1PcRead_1_ptr_value = io_exuMispredict_1_bits_redirect_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_1_offset = io_exuMispredict_1_bits_redirect_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage1PcRead_2_ptr_value = io_exuMispredict_2_bits_redirect_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_2_offset = io_exuMispredict_2_bits_redirect_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage1PcRead_3_ptr_value = io_exuMispredict_3_bits_redirect_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_3_offset = io_exuMispredict_3_bits_redirect_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage1PcRead_4_ptr_value = io_exuMispredict_4_bits_redirect_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_4_offset = io_exuMispredict_4_bits_redirect_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage1PcRead_5_ptr_value = io_loadReplay_bits_ftqIdx_value; // @[NewFtq.scala 194:14]
  assign io_stage1PcRead_5_offset = io_loadReplay_bits_ftqOffset; // @[NewFtq.scala 195:17]
  assign io_stage2Redirect_valid = s1_redirect_valid_reg & ~io_flush; // @[CtrlBlock.scala 138:52]
  assign io_stage2Redirect_bits_robIdx_flag = s1_redirect_bits_reg_robIdx_flag; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_robIdx_value = s1_redirect_bits_reg_robIdx_value; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_ftqIdx_flag = s1_redirect_bits_reg_ftqIdx_flag; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_ftqIdx_value = s1_redirect_bits_reg_ftqIdx_value; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_ftqOffset = s1_redirect_bits_reg_ftqOffset; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_level = s1_redirect_bits_reg_level; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_cfiUpdate_taken = s1_redirect_bits_reg_cfiUpdate_taken; // @[CtrlBlock.scala 139:26]
  assign io_stage2Redirect_bits_cfiUpdate_isMisPred = s1_redirect_bits_reg_cfiUpdate_isMisPred; // @[CtrlBlock.scala 139:26]
  assign io_memPredUpdate_valid = io_memPredUpdate_valid_REG; // @[CtrlBlock.scala 177:26]
  assign io_memPredUpdate_ldpc = io_memPredUpdate_ldpc_REG; // @[CtrlBlock.scala 182:25]
  assign io_memPredUpdate_stpc = io_memPredUpdate_stpc_value[9:0] ^ _io_memPredUpdate_stpc_T_4; // @[ParallelMux.scala 59:54]
  assign io_memPredPcRead_ptr_value = s1_redirect_bits_reg_stFtqIdx_value; // @[NewFtq.scala 194:14]
  assign io_memPredPcRead_offset = s1_redirect_bits_reg_stFtqOffset; // @[NewFtq.scala 195:17]
  assign io_for_frontend_redirect_gen_s1_jumpTarget = s1_jumpTarget; // @[CtrlBlock.scala 131:46]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_0 = s1_redirect_onehot_0; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_1 = s1_redirect_onehot_1; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_2 = s1_redirect_onehot_2; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_3 = s1_redirect_onehot_3; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_4 = s1_redirect_onehot_4; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_redirect_onehot_5 = s1_redirect_onehot_5; // @[CtrlBlock.scala 132:51]
  assign io_for_frontend_redirect_gen_s1_oldest_redirect_bits_cfiUpdate_taken = s1_redirect_bits_reg_cfiUpdate_taken; // @[CtrlBlock.scala 134:56]
  assign io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isRVC =
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRVC; // @[CtrlBlock.scala 135:53]
  assign io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_brType =
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_brType; // @[CtrlBlock.scala 135:53]
  assign io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isCall =
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isCall; // @[CtrlBlock.scala 135:53]
  assign io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_cf_pd_isRet =
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRet; // @[CtrlBlock.scala 135:53]
  assign io_for_frontend_redirect_gen_s1_oldest_exu_output_bits_uop_ctrl_imm =
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_ctrl_imm; // @[CtrlBlock.scala 135:53]
  always @(posedge clock) begin
    if (io_exuMispredict_0_valid) begin // @[Reg.scala 17:18]
      s1_jumpTarget <= io_exuMispredict_0_bits_redirect_cfiUpdate_target; // @[Reg.scala 17:22]
    end
    s1_redirect_bits_reg_robIdx_flag <= oldestExuOutput_bits_redirect_robIdx_flag | oldestOneHot_5 &
      io_loadReplay_bits_robIdx_flag; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_robIdx_value <= oldestExuOutput_bits_redirect_robIdx_value | _oldestRedirect_T_1325; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqIdx_flag <= oldestExuOutput_bits_redirect_ftqIdx_flag | oldestOneHot_5 &
      io_loadReplay_bits_ftqIdx_flag; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqIdx_value <= oldestExuOutput_bits_redirect_ftqIdx_value | _oldestRedirect_T_1303; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_ftqOffset <= oldestExuOutput_bits_redirect_ftqOffset | _oldestRedirect_T_1292; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_level <= &_oldestOneHot_resultOnehot_T_85; // @[CtrlBlock.scala 100:8]
    s1_redirect_bits_reg_cfiUpdate_taken <= oldestOneHot_0 | oldestOneHot_1 &
      io_exuMispredict_1_bits_redirect_cfiUpdate_taken | oldestOneHot_2 &
      io_exuMispredict_2_bits_redirect_cfiUpdate_taken | oldestOneHot_3 &
      io_exuMispredict_3_bits_redirect_cfiUpdate_taken | oldestOneHot_4 &
      io_exuMispredict_4_bits_redirect_cfiUpdate_taken; // @[Mux.scala 27:73]
    s1_redirect_bits_reg_cfiUpdate_isMisPred <= oldestOneHot_0 & io_exuMispredict_0_bits_redirect_cfiUpdate_isMisPred |
      oldestOneHot_1 & io_exuMispredict_1_bits_redirect_cfiUpdate_isMisPred | oldestOneHot_2 &
      io_exuMispredict_2_bits_redirect_cfiUpdate_isMisPred | oldestOneHot_3 &
      io_exuMispredict_3_bits_redirect_cfiUpdate_isMisPred | oldestOneHot_4 &
      io_exuMispredict_4_bits_redirect_cfiUpdate_isMisPred; // @[Mux.scala 27:73]
    if (oldestOneHot_5) begin // @[Mux.scala 27:73]
      s1_redirect_bits_reg_stFtqIdx_value <= io_loadReplay_bits_stFtqIdx_value;
    end else begin
      s1_redirect_bits_reg_stFtqIdx_value <= 6'h0;
    end
    if (oldestOneHot_5) begin // @[Mux.scala 27:73]
      s1_redirect_bits_reg_stFtqOffset <= io_loadReplay_bits_stFtqOffset;
    end else begin
      s1_redirect_bits_reg_stFtqOffset <= 3'h0;
    end
    s1_redirect_valid_reg <= |_oldestValid_T_12; // @[CtrlBlock.scala 121:98]
    s1_redirect_onehot_0 <= &_oldestOneHot_resultOnehot_T_15; // @[CtrlBlock.scala 100:8]
    s1_redirect_onehot_1 <= &_oldestOneHot_resultOnehot_T_31; // @[CtrlBlock.scala 100:8]
    s1_redirect_onehot_2 <= &_oldestOneHot_resultOnehot_T_46; // @[CtrlBlock.scala 100:8]
    s1_redirect_onehot_3 <= &_oldestOneHot_resultOnehot_T_60; // @[CtrlBlock.scala 100:8]
    s1_redirect_onehot_4 <= &_oldestOneHot_resultOnehot_T_73; // @[CtrlBlock.scala 100:8]
    s1_redirect_onehot_5 <= &_oldestOneHot_resultOnehot_T_85; // @[CtrlBlock.scala 100:8]
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRVC <= oldestOneHot_0 &
      io_exuMispredict_0_bits_uop_cf_pd_isRVC | oldestOneHot_1 & io_exuMispredict_1_bits_uop_cf_pd_isRVC |
      oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isRVC | oldestOneHot_3 &
      io_exuMispredict_3_bits_uop_cf_pd_isRVC | oldestOneHot_4 & io_exuMispredict_4_bits_uop_cf_pd_isRVC; // @[Mux.scala 27:73]
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_brType <= _oldestExuOutput_T_1825 |
      _oldestExuOutput_T_1822; // @[Mux.scala 27:73]
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isCall <= oldestOneHot_0 &
      io_exuMispredict_0_bits_uop_cf_pd_isCall | oldestOneHot_1 & io_exuMispredict_1_bits_uop_cf_pd_isCall |
      oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isCall | oldestOneHot_3 &
      io_exuMispredict_3_bits_uop_cf_pd_isCall | oldestOneHot_4 & io_exuMispredict_4_bits_uop_cf_pd_isCall; // @[Mux.scala 27:73]
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRet <= oldestOneHot_0 &
      io_exuMispredict_0_bits_uop_cf_pd_isRet | oldestOneHot_1 & io_exuMispredict_1_bits_uop_cf_pd_isRet |
      oldestOneHot_2 & io_exuMispredict_2_bits_uop_cf_pd_isRet | oldestOneHot_3 &
      io_exuMispredict_3_bits_uop_cf_pd_isRet | oldestOneHot_4 & io_exuMispredict_4_bits_uop_cf_pd_isRet; // @[Mux.scala 27:73]
    io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_ctrl_imm <= _oldestExuOutput_T_1537 |
      _oldestExuOutput_T_1534; // @[Mux.scala 27:73]
    if (reset) begin // @[CtrlBlock.scala 177:36]
      io_memPredUpdate_valid_REG <= 1'h0; // @[CtrlBlock.scala 177:36]
    end else begin
      io_memPredUpdate_valid_REG <= s1_redirect_onehot_5 & s1_redirect_valid_reg; // @[CtrlBlock.scala 177:36]
    end
    io_memPredUpdate_ldpc_REG <= io_memPredUpdate_waddr_value[9:0] ^ _io_memPredUpdate_waddr_T_4; // @[ParallelMux.scala 59:54]
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
  _RAND_0 = {2{`RANDOM}};
  s1_jumpTarget = _RAND_0[38:0];
  _RAND_1 = {1{`RANDOM}};
  s1_redirect_bits_reg_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_redirect_bits_reg_robIdx_value = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqIdx_flag = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqIdx_value = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  s1_redirect_bits_reg_ftqOffset = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  s1_redirect_bits_reg_level = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_redirect_bits_reg_cfiUpdate_taken = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_redirect_bits_reg_cfiUpdate_isMisPred = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_redirect_bits_reg_stFtqIdx_value = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  s1_redirect_bits_reg_stFtqOffset = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  s1_redirect_valid_reg = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s1_redirect_onehot_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_redirect_onehot_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_redirect_onehot_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_redirect_onehot_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_redirect_onehot_4 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s1_redirect_onehot_5 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRVC = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_brType = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isCall = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_cf_pd_isRet = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_for_frontend_redirect_gen_s1_oldest_exu_output_REG_bits_uop_ctrl_imm = _RAND_22[19:0];
  _RAND_23 = {1{`RANDOM}};
  io_memPredUpdate_valid_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_memPredUpdate_ldpc_REG = _RAND_24[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
