module Scheduler_1(
  input          clock,
  input          reset,
  input  [7:0]   io_hartId,
  input          io_redirect_valid,
  input          io_redirect_bits_robIdx_flag,
  input  [6:0]   io_redirect_bits_robIdx_value,
  input          io_redirect_bits_level,
  input          io_allocPregs_0_isFp,
  input  [6:0]   io_allocPregs_0_preg,
  input          io_allocPregs_1_isFp,
  input  [6:0]   io_allocPregs_1_preg,
  input          io_allocPregs_2_isFp,
  input  [6:0]   io_allocPregs_2_preg,
  input          io_allocPregs_3_isFp,
  input  [6:0]   io_allocPregs_3_preg,
  output         io_in_0_ready,
  input          io_in_0_valid,
  input          io_in_0_bits_cf_trigger_backendEn_0,
  input          io_in_0_bits_cf_trigger_backendEn_1,
  input          io_in_0_bits_cf_trigger_backendHit_0,
  input          io_in_0_bits_cf_trigger_backendHit_1,
  input          io_in_0_bits_cf_trigger_backendHit_2,
  input          io_in_0_bits_cf_trigger_backendHit_3,
  input          io_in_0_bits_cf_trigger_backendHit_4,
  input          io_in_0_bits_cf_trigger_backendHit_5,
  input          io_in_0_bits_cf_pd_isRVC,
  input  [1:0]   io_in_0_bits_cf_pd_brType,
  input          io_in_0_bits_cf_pd_isCall,
  input          io_in_0_bits_cf_pd_isRet,
  input          io_in_0_bits_cf_pred_taken,
  input  [4:0]   io_in_0_bits_cf_ssid,
  input          io_in_0_bits_cf_ftqPtr_flag,
  input  [5:0]   io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]   io_in_0_bits_cf_ftqOffset,
  input  [1:0]   io_in_0_bits_ctrl_srcType_0,
  input  [1:0]   io_in_0_bits_ctrl_srcType_1,
  input  [1:0]   io_in_0_bits_ctrl_srcType_2,
  input  [3:0]   io_in_0_bits_ctrl_fuType,
  input  [6:0]   io_in_0_bits_ctrl_fuOpType,
  input          io_in_0_bits_ctrl_rfWen,
  input          io_in_0_bits_ctrl_fpWen,
  input  [19:0]  io_in_0_bits_ctrl_imm,
  input          io_in_0_bits_ctrl_fpu_isAddSub,
  input          io_in_0_bits_ctrl_fpu_typeTagIn,
  input          io_in_0_bits_ctrl_fpu_typeTagOut,
  input          io_in_0_bits_ctrl_fpu_fromInt,
  input          io_in_0_bits_ctrl_fpu_wflags,
  input          io_in_0_bits_ctrl_fpu_fpWen,
  input  [1:0]   io_in_0_bits_ctrl_fpu_fmaCmd,
  input          io_in_0_bits_ctrl_fpu_div,
  input          io_in_0_bits_ctrl_fpu_sqrt,
  input          io_in_0_bits_ctrl_fpu_fcvt,
  input  [1:0]   io_in_0_bits_ctrl_fpu_typ,
  input  [1:0]   io_in_0_bits_ctrl_fpu_fmt,
  input          io_in_0_bits_ctrl_fpu_ren3,
  input  [2:0]   io_in_0_bits_ctrl_fpu_rm,
  input  [6:0]   io_in_0_bits_psrc_0,
  input  [6:0]   io_in_0_bits_psrc_1,
  input  [6:0]   io_in_0_bits_psrc_2,
  input  [6:0]   io_in_0_bits_pdest,
  input          io_in_0_bits_robIdx_flag,
  input  [6:0]   io_in_0_bits_robIdx_value,
  input          io_in_0_bits_lqIdx_flag,
  input  [5:0]   io_in_0_bits_lqIdx_value,
  input          io_in_0_bits_sqIdx_flag,
  input  [4:0]   io_in_0_bits_sqIdx_value,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input          io_in_1_bits_cf_trigger_backendEn_0,
  input          io_in_1_bits_cf_trigger_backendEn_1,
  input          io_in_1_bits_cf_trigger_backendHit_0,
  input          io_in_1_bits_cf_trigger_backendHit_1,
  input          io_in_1_bits_cf_trigger_backendHit_2,
  input          io_in_1_bits_cf_trigger_backendHit_3,
  input          io_in_1_bits_cf_trigger_backendHit_4,
  input          io_in_1_bits_cf_trigger_backendHit_5,
  input          io_in_1_bits_cf_pd_isRVC,
  input  [1:0]   io_in_1_bits_cf_pd_brType,
  input          io_in_1_bits_cf_pd_isCall,
  input          io_in_1_bits_cf_pd_isRet,
  input          io_in_1_bits_cf_pred_taken,
  input  [4:0]   io_in_1_bits_cf_ssid,
  input          io_in_1_bits_cf_ftqPtr_flag,
  input  [5:0]   io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]   io_in_1_bits_cf_ftqOffset,
  input  [1:0]   io_in_1_bits_ctrl_srcType_0,
  input  [1:0]   io_in_1_bits_ctrl_srcType_1,
  input  [1:0]   io_in_1_bits_ctrl_srcType_2,
  input  [3:0]   io_in_1_bits_ctrl_fuType,
  input  [6:0]   io_in_1_bits_ctrl_fuOpType,
  input          io_in_1_bits_ctrl_rfWen,
  input          io_in_1_bits_ctrl_fpWen,
  input  [19:0]  io_in_1_bits_ctrl_imm,
  input          io_in_1_bits_ctrl_fpu_isAddSub,
  input          io_in_1_bits_ctrl_fpu_typeTagIn,
  input          io_in_1_bits_ctrl_fpu_typeTagOut,
  input          io_in_1_bits_ctrl_fpu_fromInt,
  input          io_in_1_bits_ctrl_fpu_wflags,
  input          io_in_1_bits_ctrl_fpu_fpWen,
  input  [1:0]   io_in_1_bits_ctrl_fpu_fmaCmd,
  input          io_in_1_bits_ctrl_fpu_div,
  input          io_in_1_bits_ctrl_fpu_sqrt,
  input          io_in_1_bits_ctrl_fpu_fcvt,
  input  [1:0]   io_in_1_bits_ctrl_fpu_typ,
  input  [1:0]   io_in_1_bits_ctrl_fpu_fmt,
  input          io_in_1_bits_ctrl_fpu_ren3,
  input  [2:0]   io_in_1_bits_ctrl_fpu_rm,
  input  [6:0]   io_in_1_bits_psrc_0,
  input  [6:0]   io_in_1_bits_psrc_1,
  input  [6:0]   io_in_1_bits_psrc_2,
  input  [6:0]   io_in_1_bits_pdest,
  input          io_in_1_bits_robIdx_flag,
  input  [6:0]   io_in_1_bits_robIdx_value,
  input          io_in_1_bits_lqIdx_flag,
  input  [5:0]   io_in_1_bits_lqIdx_value,
  input          io_in_1_bits_sqIdx_flag,
  input  [4:0]   io_in_1_bits_sqIdx_value,
  input          io_issue_0_ready,
  output         io_issue_0_valid,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_0,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_1,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_2,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_3,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_4,
  output         io_issue_0_bits_uop_cf_trigger_backendHit_5,
  output         io_issue_0_bits_uop_ctrl_rfWen,
  output         io_issue_0_bits_uop_ctrl_fpWen,
  output         io_issue_0_bits_uop_ctrl_fpu_isAddSub,
  output         io_issue_0_bits_uop_ctrl_fpu_typeTagIn,
  output [1:0]   io_issue_0_bits_uop_ctrl_fpu_fmaCmd,
  output         io_issue_0_bits_uop_ctrl_fpu_ren3,
  output [2:0]   io_issue_0_bits_uop_ctrl_fpu_rm,
  output [6:0]   io_issue_0_bits_uop_pdest,
  output         io_issue_0_bits_uop_robIdx_flag,
  output [6:0]   io_issue_0_bits_uop_robIdx_value,
  output [63:0]  io_issue_0_bits_src_0,
  output [63:0]  io_issue_0_bits_src_1,
  output [63:0]  io_issue_0_bits_src_2,
  input          io_issue_1_ready,
  output         io_issue_1_valid,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_0,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_1,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_2,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_3,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_4,
  output         io_issue_1_bits_uop_cf_trigger_backendHit_5,
  output         io_issue_1_bits_uop_ctrl_rfWen,
  output         io_issue_1_bits_uop_ctrl_fpWen,
  output         io_issue_1_bits_uop_ctrl_fpu_isAddSub,
  output         io_issue_1_bits_uop_ctrl_fpu_typeTagIn,
  output [1:0]   io_issue_1_bits_uop_ctrl_fpu_fmaCmd,
  output         io_issue_1_bits_uop_ctrl_fpu_ren3,
  output [2:0]   io_issue_1_bits_uop_ctrl_fpu_rm,
  output [6:0]   io_issue_1_bits_uop_pdest,
  output         io_issue_1_bits_uop_robIdx_flag,
  output [6:0]   io_issue_1_bits_uop_robIdx_value,
  output [63:0]  io_issue_1_bits_src_0,
  output [63:0]  io_issue_1_bits_src_1,
  output [63:0]  io_issue_1_bits_src_2,
  input          io_issue_2_ready,
  output         io_issue_2_valid,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_0,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_1,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_2,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_3,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_4,
  output         io_issue_2_bits_uop_cf_trigger_backendHit_5,
  output         io_issue_2_bits_uop_ctrl_rfWen,
  output         io_issue_2_bits_uop_ctrl_fpWen,
  output         io_issue_2_bits_uop_ctrl_fpu_typeTagIn,
  output         io_issue_2_bits_uop_ctrl_fpu_typeTagOut,
  output         io_issue_2_bits_uop_ctrl_fpu_wflags,
  output         io_issue_2_bits_uop_ctrl_fpu_fpWen,
  output         io_issue_2_bits_uop_ctrl_fpu_div,
  output         io_issue_2_bits_uop_ctrl_fpu_sqrt,
  output         io_issue_2_bits_uop_ctrl_fpu_fcvt,
  output [1:0]   io_issue_2_bits_uop_ctrl_fpu_typ,
  output [1:0]   io_issue_2_bits_uop_ctrl_fpu_fmt,
  output [2:0]   io_issue_2_bits_uop_ctrl_fpu_rm,
  output [6:0]   io_issue_2_bits_uop_pdest,
  output         io_issue_2_bits_uop_robIdx_flag,
  output [6:0]   io_issue_2_bits_uop_robIdx_value,
  output [63:0]  io_issue_2_bits_src_0,
  output [63:0]  io_issue_2_bits_src_1,
  input          io_writeback_7_valid,
  input          io_writeback_7_bits_uop_ctrl_fpWen,
  input  [6:0]   io_writeback_7_bits_uop_pdest,
  input  [63:0]  io_writeback_7_bits_data,
  input          io_writeback_8_valid,
  input          io_writeback_8_bits_uop_ctrl_fpWen,
  input  [6:0]   io_writeback_8_bits_uop_pdest,
  input  [63:0]  io_writeback_8_bits_data,
  input          io_writeback_9_valid,
  input          io_writeback_9_bits_uop_ctrl_fpWen,
  input  [6:0]   io_writeback_9_bits_uop_pdest,
  input  [63:0]  io_writeback_9_bits_data,
  input          io_writeback_10_valid,
  input          io_writeback_10_bits_uop_ctrl_fpWen,
  input  [6:0]   io_writeback_10_bits_uop_pdest,
  input  [63:0]  io_writeback_10_bits_data,
  input          io_writeback_11_valid,
  input          io_writeback_11_bits_uop_ctrl_fpWen,
  input  [6:0]   io_writeback_11_bits_uop_pdest,
  input  [63:0]  io_writeback_11_bits_data,
  input          io_fastUopIn_7_valid,
  input          io_fastUopIn_7_bits_ctrl_fpWen,
  input  [6:0]   io_fastUopIn_7_bits_pdest,
  input          io_fastUopIn_8_valid,
  input          io_fastUopIn_8_bits_ctrl_fpWen,
  input  [6:0]   io_fastUopIn_8_bits_pdest,
  input  [6:0]   io_extra_fpRfReadOut_0_addr,
  output [63:0]  io_extra_fpRfReadOut_0_data,
  input  [6:0]   io_extra_fpRfReadOut_1_addr,
  output [63:0]  io_extra_fpRfReadOut_1_data,
  input  [6:0]   io_extra_debug_fp_rat_0,
  input  [6:0]   io_extra_debug_fp_rat_1,
  input  [6:0]   io_extra_debug_fp_rat_2,
  input  [6:0]   io_extra_debug_fp_rat_3,
  input  [6:0]   io_extra_debug_fp_rat_4,
  input  [6:0]   io_extra_debug_fp_rat_5,
  input  [6:0]   io_extra_debug_fp_rat_6,
  input  [6:0]   io_extra_debug_fp_rat_7,
  input  [6:0]   io_extra_debug_fp_rat_8,
  input  [6:0]   io_extra_debug_fp_rat_9,
  input  [6:0]   io_extra_debug_fp_rat_10,
  input  [6:0]   io_extra_debug_fp_rat_11,
  input  [6:0]   io_extra_debug_fp_rat_12,
  input  [6:0]   io_extra_debug_fp_rat_13,
  input  [6:0]   io_extra_debug_fp_rat_14,
  input  [6:0]   io_extra_debug_fp_rat_15,
  input  [6:0]   io_extra_debug_fp_rat_16,
  input  [6:0]   io_extra_debug_fp_rat_17,
  input  [6:0]   io_extra_debug_fp_rat_18,
  input  [6:0]   io_extra_debug_fp_rat_19,
  input  [6:0]   io_extra_debug_fp_rat_20,
  input  [6:0]   io_extra_debug_fp_rat_21,
  input  [6:0]   io_extra_debug_fp_rat_22,
  input  [6:0]   io_extra_debug_fp_rat_23,
  input  [6:0]   io_extra_debug_fp_rat_24,
  input  [6:0]   io_extra_debug_fp_rat_25,
  input  [6:0]   io_extra_debug_fp_rat_26,
  input  [6:0]   io_extra_debug_fp_rat_27,
  input  [6:0]   io_extra_debug_fp_rat_28,
  input  [6:0]   io_extra_debug_fp_rat_29,
  input  [6:0]   io_extra_debug_fp_rat_30,
  input  [6:0]   io_extra_debug_fp_rat_31,
  output         io_fmaMid_0_in_valid,
  output         io_fmaMid_0_in_bits_fp_prod_sign,
  output [10:0]  io_fmaMid_0_in_bits_fp_prod_exp,
  output [104:0] io_fmaMid_0_in_bits_fp_prod_sig,
  output         io_fmaMid_0_in_bits_inter_flags_isNaN,
  output         io_fmaMid_0_in_bits_inter_flags_isInf,
  output         io_fmaMid_0_in_bits_inter_flags_isInv,
  output         io_fmaMid_0_in_bits_inter_flags_overflow,
  input          io_fmaMid_0_out_bits_fp_prod_sign,
  input  [10:0]  io_fmaMid_0_out_bits_fp_prod_exp,
  input  [104:0] io_fmaMid_0_out_bits_fp_prod_sig,
  input          io_fmaMid_0_out_bits_inter_flags_isNaN,
  input          io_fmaMid_0_out_bits_inter_flags_isInf,
  input          io_fmaMid_0_out_bits_inter_flags_isInv,
  input          io_fmaMid_0_out_bits_inter_flags_overflow,
  output         io_fmaMid_0_waitForAdd,
  output         io_fmaMid_1_in_valid,
  output         io_fmaMid_1_in_bits_fp_prod_sign,
  output [10:0]  io_fmaMid_1_in_bits_fp_prod_exp,
  output [104:0] io_fmaMid_1_in_bits_fp_prod_sig,
  output         io_fmaMid_1_in_bits_inter_flags_isNaN,
  output         io_fmaMid_1_in_bits_inter_flags_isInf,
  output         io_fmaMid_1_in_bits_inter_flags_isInv,
  output         io_fmaMid_1_in_bits_inter_flags_overflow,
  input          io_fmaMid_1_out_bits_fp_prod_sign,
  input  [10:0]  io_fmaMid_1_out_bits_fp_prod_exp,
  input  [104:0] io_fmaMid_1_out_bits_fp_prod_sig,
  input          io_fmaMid_1_out_bits_inter_flags_isNaN,
  input          io_fmaMid_1_out_bits_inter_flags_isInf,
  input          io_fmaMid_1_out_bits_inter_flags_isInv,
  input          io_fmaMid_1_out_bits_inter_flags_overflow,
  output         io_fmaMid_1_waitForAdd,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
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
`endif // RANDOMIZE_REG_INIT
  wire  fpDispatch_io_in_0_ready; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_valid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_pd_isRVC; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_cf_pd_brType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_pd_isCall; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_pd_isRet; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_pred_taken; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_in_0_bits_cf_ssid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_in_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_in_0_bits_cf_ftqOffset; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_srcType_0; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_srcType_1; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_srcType_2; // @[Scheduler.scala 143:34]
  wire [3:0] fpDispatch_io_in_0_bits_ctrl_fuType; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_ctrl_fuOpType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_rfWen; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpWen; // @[Scheduler.scala 143:34]
  wire [19:0] fpDispatch_io_in_0_bits_ctrl_imm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_div; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_in_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_psrc_0; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_psrc_1; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_psrc_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_pdest; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_robIdx_flag; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_0_bits_robIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_lqIdx_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_in_0_bits_lqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_0_bits_sqIdx_flag; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_in_0_bits_sqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_ready; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_valid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_pd_isRVC; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_cf_pd_brType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_pd_isCall; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_pd_isRet; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_pred_taken; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_in_1_bits_cf_ssid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_in_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_in_1_bits_cf_ftqOffset; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_srcType_0; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_srcType_1; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_srcType_2; // @[Scheduler.scala 143:34]
  wire [3:0] fpDispatch_io_in_1_bits_ctrl_fuType; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_ctrl_fuOpType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_rfWen; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpWen; // @[Scheduler.scala 143:34]
  wire [19:0] fpDispatch_io_in_1_bits_ctrl_imm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_div; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_in_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_in_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_psrc_0; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_psrc_1; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_psrc_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_pdest; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_robIdx_flag; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_in_1_bits_robIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_lqIdx_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_in_1_bits_lqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_in_1_bits_sqIdx_flag; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_in_1_bits_sqIdx_value; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_0_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_0_resp; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_1_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_1_resp; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_2_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_2_resp; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_3_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_3_resp; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_4_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_4_resp; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_readFpState_5_req; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_readFpState_5_resp; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_ready; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_valid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 143:34]
  wire [3:0] fpDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 143:34]
  wire [19:0] fpDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_srcState_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_srcState_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_psrc_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_ready; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_valid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_srcType_2; // @[Scheduler.scala 143:34]
  wire [3:0] fpDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 143:34]
  wire [19:0] fpDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 143:34]
  wire [1:0] fpDispatch_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 143:34]
  wire [2:0] fpDispatch_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_srcState_1; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_srcState_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_psrc_2; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 143:34]
  wire [6:0] fpDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 143:34]
  wire [5:0] fpDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 143:34]
  wire  fpDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 143:34]
  wire [4:0] fpDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 143:34]
  wire  rs_clock; // @[Scheduler.scala 170:24]
  wire  rs_reset; // @[Scheduler.scala 170:24]
  wire  rs_io_redirect_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_redirect_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_redirect_bits_level; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_ready; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 170:24]
  wire [4:0] rs_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_srcType_1; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_srcType_2; // @[Scheduler.scala 170:24]
  wire [3:0] rs_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [19:0] rs_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_div; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_fromDispatch_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_srcState_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_srcState_2; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_psrc_2; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 170:24]
  wire [4:0] rs_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_ready; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 170:24]
  wire [4:0] rs_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_srcType_1; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_srcType_2; // @[Scheduler.scala 170:24]
  wire [3:0] rs_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [19:0] rs_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_div; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_fromDispatch_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_fromDispatch_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_srcState_1; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_srcState_2; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_psrc_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_psrc_2; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 170:24]
  wire [4:0] rs_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_0_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_0_1; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_0_2; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_1_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_1_1; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_srcRegValue_1_2; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_ready; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_deq_0_bits_uop_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_0_bits_src_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_0_bits_src_1; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_0_bits_src_2; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_ready; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire [1:0] rs_io_deq_1_bits_uop_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_io_deq_1_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire  rs_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_1_bits_src_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_1_bits_src_1; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_deq_1_bits_src_2; // @[Scheduler.scala 170:24]
  wire  rs_io_fastUopsIn_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fastUopsIn_0_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_io_fastUopsIn_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fastUopsIn_1_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_fastUopsIn_1_bits_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_fastDatas_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_fastDatas_1; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_slowPorts_0_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_slowPorts_1_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_2_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_slowPorts_2_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_3_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_slowPorts_3_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_4_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_slowPorts_4_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_io_slowPorts_4_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_bits_fp_prod_sign; // @[Scheduler.scala 170:24]
  wire [10:0] rs_io_fmaMid_0_in_bits_fp_prod_exp; // @[Scheduler.scala 170:24]
  wire [104:0] rs_io_fmaMid_0_in_bits_fp_prod_sig; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_bits_inter_flags_isInf; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_bits_inter_flags_isInv; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_in_bits_inter_flags_overflow; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_out_bits_fp_prod_sign; // @[Scheduler.scala 170:24]
  wire [10:0] rs_io_fmaMid_0_out_bits_fp_prod_exp; // @[Scheduler.scala 170:24]
  wire [104:0] rs_io_fmaMid_0_out_bits_fp_prod_sig; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_out_bits_inter_flags_isNaN; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_out_bits_inter_flags_isInf; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_out_bits_inter_flags_isInv; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_out_bits_inter_flags_overflow; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_0_waitForAdd; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_valid; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_bits_fp_prod_sign; // @[Scheduler.scala 170:24]
  wire [10:0] rs_io_fmaMid_1_in_bits_fp_prod_exp; // @[Scheduler.scala 170:24]
  wire [104:0] rs_io_fmaMid_1_in_bits_fp_prod_sig; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_bits_inter_flags_isNaN; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_bits_inter_flags_isInf; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_bits_inter_flags_isInv; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_in_bits_inter_flags_overflow; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_out_bits_fp_prod_sign; // @[Scheduler.scala 170:24]
  wire [10:0] rs_io_fmaMid_1_out_bits_fp_prod_exp; // @[Scheduler.scala 170:24]
  wire [104:0] rs_io_fmaMid_1_out_bits_fp_prod_sig; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_out_bits_inter_flags_isNaN; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_out_bits_inter_flags_isInf; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_out_bits_inter_flags_isInv; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_out_bits_inter_flags_overflow; // @[Scheduler.scala 170:24]
  wire  rs_io_fmaMid_1_waitForAdd; // @[Scheduler.scala 170:24]
  wire [5:0] rs_io_perf_0_value; // @[Scheduler.scala 170:24]
  wire  rs_1_clock; // @[Scheduler.scala 170:24]
  wire  rs_1_reset; // @[Scheduler.scala 170:24]
  wire  rs_1_io_redirect_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_redirect_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_redirect_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_redirect_bits_level; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_ready; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_pd_isRVC; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_cf_pd_brType; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_pd_isCall; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_pd_isRet; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_pred_taken; // @[Scheduler.scala 170:24]
  wire [4:0] rs_1_io_fromDispatch_0_bits_cf_ssid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_1_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 170:24]
  wire [2:0] rs_1_io_fromDispatch_0_bits_cf_ftqOffset; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_srcType_0; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_srcType_1; // @[Scheduler.scala 170:24]
  wire [3:0] rs_1_io_fromDispatch_0_bits_ctrl_fuType; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_ctrl_fuOpType; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [19:0] rs_1_io_fromDispatch_0_bits_ctrl_imm; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_div; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_1_io_fromDispatch_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_srcState_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_srcState_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_psrc_0; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_psrc_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_0_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_lqIdx_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_1_io_fromDispatch_0_bits_lqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_0_bits_sqIdx_flag; // @[Scheduler.scala 170:24]
  wire [4:0] rs_1_io_fromDispatch_0_bits_sqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_ready; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_pd_isRVC; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_cf_pd_brType; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_pd_isCall; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_pd_isRet; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_pred_taken; // @[Scheduler.scala 170:24]
  wire [4:0] rs_1_io_fromDispatch_1_bits_cf_ssid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_1_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 170:24]
  wire [2:0] rs_1_io_fromDispatch_1_bits_cf_ftqOffset; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_srcType_0; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_srcType_1; // @[Scheduler.scala 170:24]
  wire [3:0] rs_1_io_fromDispatch_1_bits_ctrl_fuType; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_ctrl_fuOpType; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [19:0] rs_1_io_fromDispatch_1_bits_ctrl_imm; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_div; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 170:24]
  wire [2:0] rs_1_io_fromDispatch_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_srcState_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_srcState_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_psrc_0; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_psrc_1; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fromDispatch_1_bits_robIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_lqIdx_flag; // @[Scheduler.scala 170:24]
  wire [5:0] rs_1_io_fromDispatch_1_bits_lqIdx_value; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fromDispatch_1_bits_sqIdx_flag; // @[Scheduler.scala 170:24]
  wire [4:0] rs_1_io_fromDispatch_1_bits_sqIdx_value; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_srcRegValue_0_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_srcRegValue_0_1; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_srcRegValue_1_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_srcRegValue_1_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_ready; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagOut; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_wflags; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_fpWen; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_div; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_sqrt; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_ctrl_fpu_fcvt; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_deq_0_bits_uop_ctrl_fpu_typ; // @[Scheduler.scala 170:24]
  wire [1:0] rs_1_io_deq_0_bits_uop_ctrl_fpu_fmt; // @[Scheduler.scala 170:24]
  wire [2:0] rs_1_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire  rs_1_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_deq_0_bits_src_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_deq_0_bits_src_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fastUopsIn_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fastUopsIn_0_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fastUopsIn_0_bits_pdest; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fastUopsIn_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_fastUopsIn_1_bits_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_fastUopsIn_1_bits_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_fastDatas_0; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_fastDatas_1; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_0_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_slowPorts_0_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_slowPorts_0_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_1_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_slowPorts_1_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_slowPorts_1_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_2_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_2_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_slowPorts_2_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_slowPorts_2_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_3_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_3_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_slowPorts_3_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_slowPorts_3_bits_data; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_4_valid; // @[Scheduler.scala 170:24]
  wire  rs_1_io_slowPorts_4_bits_uop_ctrl_fpWen; // @[Scheduler.scala 170:24]
  wire [6:0] rs_1_io_slowPorts_4_bits_uop_pdest; // @[Scheduler.scala 170:24]
  wire [63:0] rs_1_io_slowPorts_4_bits_data; // @[Scheduler.scala 170:24]
  wire [5:0] rs_1_io_perf_0_value; // @[Scheduler.scala 170:24]
  wire  fpBusyTable_clock; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_reset; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_allocPregs_0_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_allocPregs_0_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_allocPregs_1_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_allocPregs_1_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_allocPregs_2_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_allocPregs_2_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_allocPregs_3_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_allocPregs_3_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_wbPregs_0_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_wbPregs_0_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_wbPregs_1_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_wbPregs_1_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_wbPregs_2_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_wbPregs_2_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_wbPregs_3_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_wbPregs_3_bits; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_wbPregs_4_valid; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_wbPregs_4_bits; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_2_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_2_resp; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_3_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_3_resp; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_4_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_4_resp; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_5_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_5_resp; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_6_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_6_resp; // @[Scheduler.scala 326:29]
  wire [6:0] fpBusyTable_io_read_7_req; // @[Scheduler.scala 326:29]
  wire  fpBusyTable_io_read_7_resp; // @[Scheduler.scala 326:29]
  wire [5:0] fpBusyTable_io_perf_0_value; // @[Scheduler.scala 326:29]
  wire [5:0] fpBusyTable_io_perf_1_value; // @[Scheduler.scala 326:29]
  wire [5:0] fpBusyTable_io_perf_2_value; // @[Scheduler.scala 326:29]
  wire [5:0] fpBusyTable_io_perf_3_value; // @[Scheduler.scala 326:29]
  wire  fpRfReadData_regfile_clock; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_0_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_0_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_1_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_1_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_2_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_2_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_3_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_3_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_4_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_4_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_5_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_5_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_6_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_6_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_readPorts_7_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_readPorts_7_data; // @[Regfile.scala 86:25]
  wire  fpRfReadData_regfile_io_writePorts_0_wen; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_writePorts_0_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_writePorts_0_data; // @[Regfile.scala 86:25]
  wire  fpRfReadData_regfile_io_writePorts_1_wen; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_writePorts_1_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_writePorts_1_data; // @[Regfile.scala 86:25]
  wire  fpRfReadData_regfile_io_writePorts_2_wen; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_writePorts_2_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_writePorts_2_data; // @[Regfile.scala 86:25]
  wire  fpRfReadData_regfile_io_writePorts_3_wen; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_writePorts_3_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_writePorts_3_data; // @[Regfile.scala 86:25]
  wire  fpRfReadData_regfile_io_writePorts_4_wen; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_writePorts_4_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_writePorts_4_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_0_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_0_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_1_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_1_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_2_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_2_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_3_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_3_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_4_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_4_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_5_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_5_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_6_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_6_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_7_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_7_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_8_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_8_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_9_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_9_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_10_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_10_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_11_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_11_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_12_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_12_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_13_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_13_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_14_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_14_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_15_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_15_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_16_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_16_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_17_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_17_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_18_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_18_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_19_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_19_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_20_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_20_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_21_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_21_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_22_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_22_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_23_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_23_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_24_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_24_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_25_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_25_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_26_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_26_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_27_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_27_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_28_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_28_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_29_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_29_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_30_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_30_data; // @[Regfile.scala 86:25]
  wire [6:0] fpRfReadData_regfile_io_debug_rports_31_addr; // @[Regfile.scala 86:25]
  wire [63:0] fpRfReadData_regfile_io_debug_rports_31_data; // @[Regfile.scala 86:25]
  wire  arbiterOut_arbiter_io_in_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_in_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_in_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_srcType_2; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_io_in_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_io_in_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_srcState_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_psrc_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_in_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_in_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_in_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_in_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_out_0_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_srcState_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_psrc_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_0_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_out_1_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_io_out_1_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_in_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_2; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_1_io_in_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_srcState_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_psrc_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_in_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_in_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_in_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_in_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_srcState_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_psrc_2; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_0_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_ready; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_valid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_1_bits_cf_ssid; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 53:25]
  wire [3:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 53:25]
  wire [19:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 53:25]
  wire [1:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 53:25]
  wire [2:0] arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_srcState_0; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_srcState_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_psrc_0; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_psrc_1; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_pdest; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 53:25]
  wire [6:0] arbiterOut_arbiter_1_io_out_1_bits_robIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 53:25]
  wire [5:0] arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 53:25]
  wire  arbiterOut_arbiter_1_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 53:25]
  wire [4:0] arbiterOut_arbiter_1_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 53:25]
  wire  difftest_io_clock; // @[Scheduler.scala 520:26]
  wire [7:0] difftest_io_coreid; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_0; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_1; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_2; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_3; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_4; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_5; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_6; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_7; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_8; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_9; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_10; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_11; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_12; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_13; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_14; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_15; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_16; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_17; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_18; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_19; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_20; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_21; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_22; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_23; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_24; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_25; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_26; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_27; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_28; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_29; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_30; // @[Scheduler.scala 520:26]
  wire [63:0] difftest_io_fpr_31; // @[Scheduler.scala 520:26]
  reg [63:0] REG__0; // @[Scheduler.scala 523:39]
  reg [63:0] REG__1; // @[Scheduler.scala 523:39]
  reg [63:0] REG__2; // @[Scheduler.scala 523:39]
  reg [63:0] REG__3; // @[Scheduler.scala 523:39]
  reg [63:0] REG__4; // @[Scheduler.scala 523:39]
  reg [63:0] REG__5; // @[Scheduler.scala 523:39]
  reg [63:0] REG__6; // @[Scheduler.scala 523:39]
  reg [63:0] REG__7; // @[Scheduler.scala 523:39]
  reg [63:0] REG__8; // @[Scheduler.scala 523:39]
  reg [63:0] REG__9; // @[Scheduler.scala 523:39]
  reg [63:0] REG__10; // @[Scheduler.scala 523:39]
  reg [63:0] REG__11; // @[Scheduler.scala 523:39]
  reg [63:0] REG__12; // @[Scheduler.scala 523:39]
  reg [63:0] REG__13; // @[Scheduler.scala 523:39]
  reg [63:0] REG__14; // @[Scheduler.scala 523:39]
  reg [63:0] REG__15; // @[Scheduler.scala 523:39]
  reg [63:0] REG__16; // @[Scheduler.scala 523:39]
  reg [63:0] REG__17; // @[Scheduler.scala 523:39]
  reg [63:0] REG__18; // @[Scheduler.scala 523:39]
  reg [63:0] REG__19; // @[Scheduler.scala 523:39]
  reg [63:0] REG__20; // @[Scheduler.scala 523:39]
  reg [63:0] REG__21; // @[Scheduler.scala 523:39]
  reg [63:0] REG__22; // @[Scheduler.scala 523:39]
  reg [63:0] REG__23; // @[Scheduler.scala 523:39]
  reg [63:0] REG__24; // @[Scheduler.scala 523:39]
  reg [63:0] REG__25; // @[Scheduler.scala 523:39]
  reg [63:0] REG__26; // @[Scheduler.scala 523:39]
  reg [63:0] REG__27; // @[Scheduler.scala 523:39]
  reg [63:0] REG__28; // @[Scheduler.scala 523:39]
  reg [63:0] REG__29; // @[Scheduler.scala 523:39]
  reg [63:0] REG__30; // @[Scheduler.scala 523:39]
  reg [63:0] REG__31; // @[Scheduler.scala 523:39]
  reg [63:0] REG_1_0; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_1; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_2; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_3; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_4; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_5; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_6; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_7; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_8; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_9; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_10; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_11; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_12; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_13; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_14; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_15; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_16; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_17; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_18; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_19; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_20; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_21; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_22; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_23; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_24; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_25; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_26; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_27; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_28; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_29; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_30; // @[Scheduler.scala 523:31]
  reg [63:0] REG_1_31; // @[Scheduler.scala 523:31]
  wire  _T_2 = fpDispatch_io_out_0_ready & fpDispatch_io_out_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_3 = fpDispatch_io_out_1_ready & fpDispatch_io_out_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_10 = io_issue_0_ready & io_issue_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_11 = io_issue_1_ready & io_issue_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_12 = io_issue_2_ready & io_issue_2_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _T_13 = _T_11 + _T_12; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_7 = {{1'd0}, _T_10}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_15 = _GEN_7 + _T_13; // @[Bitwise.scala 48:55]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  Dispatch2Rs_2 fpDispatch ( // @[Scheduler.scala 143:34]
    .io_in_0_ready(fpDispatch_io_in_0_ready),
    .io_in_0_valid(fpDispatch_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(fpDispatch_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(fpDispatch_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_trigger_backendHit_0(fpDispatch_io_in_0_bits_cf_trigger_backendHit_0),
    .io_in_0_bits_cf_trigger_backendHit_1(fpDispatch_io_in_0_bits_cf_trigger_backendHit_1),
    .io_in_0_bits_cf_trigger_backendHit_2(fpDispatch_io_in_0_bits_cf_trigger_backendHit_2),
    .io_in_0_bits_cf_trigger_backendHit_3(fpDispatch_io_in_0_bits_cf_trigger_backendHit_3),
    .io_in_0_bits_cf_trigger_backendHit_4(fpDispatch_io_in_0_bits_cf_trigger_backendHit_4),
    .io_in_0_bits_cf_trigger_backendHit_5(fpDispatch_io_in_0_bits_cf_trigger_backendHit_5),
    .io_in_0_bits_cf_pd_isRVC(fpDispatch_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(fpDispatch_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(fpDispatch_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(fpDispatch_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(fpDispatch_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_ssid(fpDispatch_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(fpDispatch_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(fpDispatch_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(fpDispatch_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(fpDispatch_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(fpDispatch_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_srcType_2(fpDispatch_io_in_0_bits_ctrl_srcType_2),
    .io_in_0_bits_ctrl_fuType(fpDispatch_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(fpDispatch_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(fpDispatch_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(fpDispatch_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_imm(fpDispatch_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(fpDispatch_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(fpDispatch_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(fpDispatch_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(fpDispatch_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(fpDispatch_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(fpDispatch_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(fpDispatch_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(fpDispatch_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(fpDispatch_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(fpDispatch_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(fpDispatch_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(fpDispatch_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(fpDispatch_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(fpDispatch_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(fpDispatch_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(fpDispatch_io_in_0_bits_psrc_1),
    .io_in_0_bits_psrc_2(fpDispatch_io_in_0_bits_psrc_2),
    .io_in_0_bits_pdest(fpDispatch_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(fpDispatch_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(fpDispatch_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(fpDispatch_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(fpDispatch_io_in_0_bits_lqIdx_value),
    .io_in_0_bits_sqIdx_flag(fpDispatch_io_in_0_bits_sqIdx_flag),
    .io_in_0_bits_sqIdx_value(fpDispatch_io_in_0_bits_sqIdx_value),
    .io_in_1_ready(fpDispatch_io_in_1_ready),
    .io_in_1_valid(fpDispatch_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(fpDispatch_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(fpDispatch_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_trigger_backendHit_0(fpDispatch_io_in_1_bits_cf_trigger_backendHit_0),
    .io_in_1_bits_cf_trigger_backendHit_1(fpDispatch_io_in_1_bits_cf_trigger_backendHit_1),
    .io_in_1_bits_cf_trigger_backendHit_2(fpDispatch_io_in_1_bits_cf_trigger_backendHit_2),
    .io_in_1_bits_cf_trigger_backendHit_3(fpDispatch_io_in_1_bits_cf_trigger_backendHit_3),
    .io_in_1_bits_cf_trigger_backendHit_4(fpDispatch_io_in_1_bits_cf_trigger_backendHit_4),
    .io_in_1_bits_cf_trigger_backendHit_5(fpDispatch_io_in_1_bits_cf_trigger_backendHit_5),
    .io_in_1_bits_cf_pd_isRVC(fpDispatch_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(fpDispatch_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(fpDispatch_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(fpDispatch_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(fpDispatch_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_ssid(fpDispatch_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(fpDispatch_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(fpDispatch_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(fpDispatch_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(fpDispatch_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(fpDispatch_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_srcType_2(fpDispatch_io_in_1_bits_ctrl_srcType_2),
    .io_in_1_bits_ctrl_fuType(fpDispatch_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(fpDispatch_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(fpDispatch_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(fpDispatch_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_imm(fpDispatch_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_ctrl_fpu_isAddSub(fpDispatch_io_in_1_bits_ctrl_fpu_isAddSub),
    .io_in_1_bits_ctrl_fpu_typeTagIn(fpDispatch_io_in_1_bits_ctrl_fpu_typeTagIn),
    .io_in_1_bits_ctrl_fpu_typeTagOut(fpDispatch_io_in_1_bits_ctrl_fpu_typeTagOut),
    .io_in_1_bits_ctrl_fpu_fromInt(fpDispatch_io_in_1_bits_ctrl_fpu_fromInt),
    .io_in_1_bits_ctrl_fpu_wflags(fpDispatch_io_in_1_bits_ctrl_fpu_wflags),
    .io_in_1_bits_ctrl_fpu_fpWen(fpDispatch_io_in_1_bits_ctrl_fpu_fpWen),
    .io_in_1_bits_ctrl_fpu_fmaCmd(fpDispatch_io_in_1_bits_ctrl_fpu_fmaCmd),
    .io_in_1_bits_ctrl_fpu_div(fpDispatch_io_in_1_bits_ctrl_fpu_div),
    .io_in_1_bits_ctrl_fpu_sqrt(fpDispatch_io_in_1_bits_ctrl_fpu_sqrt),
    .io_in_1_bits_ctrl_fpu_fcvt(fpDispatch_io_in_1_bits_ctrl_fpu_fcvt),
    .io_in_1_bits_ctrl_fpu_typ(fpDispatch_io_in_1_bits_ctrl_fpu_typ),
    .io_in_1_bits_ctrl_fpu_fmt(fpDispatch_io_in_1_bits_ctrl_fpu_fmt),
    .io_in_1_bits_ctrl_fpu_ren3(fpDispatch_io_in_1_bits_ctrl_fpu_ren3),
    .io_in_1_bits_ctrl_fpu_rm(fpDispatch_io_in_1_bits_ctrl_fpu_rm),
    .io_in_1_bits_psrc_0(fpDispatch_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(fpDispatch_io_in_1_bits_psrc_1),
    .io_in_1_bits_psrc_2(fpDispatch_io_in_1_bits_psrc_2),
    .io_in_1_bits_pdest(fpDispatch_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(fpDispatch_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(fpDispatch_io_in_1_bits_robIdx_value),
    .io_in_1_bits_lqIdx_flag(fpDispatch_io_in_1_bits_lqIdx_flag),
    .io_in_1_bits_lqIdx_value(fpDispatch_io_in_1_bits_lqIdx_value),
    .io_in_1_bits_sqIdx_flag(fpDispatch_io_in_1_bits_sqIdx_flag),
    .io_in_1_bits_sqIdx_value(fpDispatch_io_in_1_bits_sqIdx_value),
    .io_readFpState_0_req(fpDispatch_io_readFpState_0_req),
    .io_readFpState_0_resp(fpDispatch_io_readFpState_0_resp),
    .io_readFpState_1_req(fpDispatch_io_readFpState_1_req),
    .io_readFpState_1_resp(fpDispatch_io_readFpState_1_resp),
    .io_readFpState_2_req(fpDispatch_io_readFpState_2_req),
    .io_readFpState_2_resp(fpDispatch_io_readFpState_2_resp),
    .io_readFpState_3_req(fpDispatch_io_readFpState_3_req),
    .io_readFpState_3_resp(fpDispatch_io_readFpState_3_resp),
    .io_readFpState_4_req(fpDispatch_io_readFpState_4_req),
    .io_readFpState_4_resp(fpDispatch_io_readFpState_4_resp),
    .io_readFpState_5_req(fpDispatch_io_readFpState_5_req),
    .io_readFpState_5_resp(fpDispatch_io_readFpState_5_resp),
    .io_out_0_ready(fpDispatch_io_out_0_ready),
    .io_out_0_valid(fpDispatch_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(fpDispatch_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(fpDispatch_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_trigger_backendHit_0(fpDispatch_io_out_0_bits_cf_trigger_backendHit_0),
    .io_out_0_bits_cf_trigger_backendHit_1(fpDispatch_io_out_0_bits_cf_trigger_backendHit_1),
    .io_out_0_bits_cf_trigger_backendHit_2(fpDispatch_io_out_0_bits_cf_trigger_backendHit_2),
    .io_out_0_bits_cf_trigger_backendHit_3(fpDispatch_io_out_0_bits_cf_trigger_backendHit_3),
    .io_out_0_bits_cf_trigger_backendHit_4(fpDispatch_io_out_0_bits_cf_trigger_backendHit_4),
    .io_out_0_bits_cf_trigger_backendHit_5(fpDispatch_io_out_0_bits_cf_trigger_backendHit_5),
    .io_out_0_bits_cf_pd_isRVC(fpDispatch_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(fpDispatch_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(fpDispatch_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(fpDispatch_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(fpDispatch_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_ssid(fpDispatch_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(fpDispatch_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(fpDispatch_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(fpDispatch_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(fpDispatch_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(fpDispatch_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_srcType_2(fpDispatch_io_out_0_bits_ctrl_srcType_2),
    .io_out_0_bits_ctrl_fuType(fpDispatch_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(fpDispatch_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(fpDispatch_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(fpDispatch_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_imm(fpDispatch_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_ctrl_fpu_isAddSub(fpDispatch_io_out_0_bits_ctrl_fpu_isAddSub),
    .io_out_0_bits_ctrl_fpu_typeTagIn(fpDispatch_io_out_0_bits_ctrl_fpu_typeTagIn),
    .io_out_0_bits_ctrl_fpu_typeTagOut(fpDispatch_io_out_0_bits_ctrl_fpu_typeTagOut),
    .io_out_0_bits_ctrl_fpu_fromInt(fpDispatch_io_out_0_bits_ctrl_fpu_fromInt),
    .io_out_0_bits_ctrl_fpu_wflags(fpDispatch_io_out_0_bits_ctrl_fpu_wflags),
    .io_out_0_bits_ctrl_fpu_fpWen(fpDispatch_io_out_0_bits_ctrl_fpu_fpWen),
    .io_out_0_bits_ctrl_fpu_fmaCmd(fpDispatch_io_out_0_bits_ctrl_fpu_fmaCmd),
    .io_out_0_bits_ctrl_fpu_div(fpDispatch_io_out_0_bits_ctrl_fpu_div),
    .io_out_0_bits_ctrl_fpu_sqrt(fpDispatch_io_out_0_bits_ctrl_fpu_sqrt),
    .io_out_0_bits_ctrl_fpu_fcvt(fpDispatch_io_out_0_bits_ctrl_fpu_fcvt),
    .io_out_0_bits_ctrl_fpu_typ(fpDispatch_io_out_0_bits_ctrl_fpu_typ),
    .io_out_0_bits_ctrl_fpu_fmt(fpDispatch_io_out_0_bits_ctrl_fpu_fmt),
    .io_out_0_bits_ctrl_fpu_ren3(fpDispatch_io_out_0_bits_ctrl_fpu_ren3),
    .io_out_0_bits_ctrl_fpu_rm(fpDispatch_io_out_0_bits_ctrl_fpu_rm),
    .io_out_0_bits_srcState_0(fpDispatch_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(fpDispatch_io_out_0_bits_srcState_1),
    .io_out_0_bits_srcState_2(fpDispatch_io_out_0_bits_srcState_2),
    .io_out_0_bits_psrc_0(fpDispatch_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(fpDispatch_io_out_0_bits_psrc_1),
    .io_out_0_bits_psrc_2(fpDispatch_io_out_0_bits_psrc_2),
    .io_out_0_bits_pdest(fpDispatch_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(fpDispatch_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(fpDispatch_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(fpDispatch_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(fpDispatch_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(fpDispatch_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(fpDispatch_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(fpDispatch_io_out_1_ready),
    .io_out_1_valid(fpDispatch_io_out_1_valid),
    .io_out_1_bits_cf_trigger_backendEn_0(fpDispatch_io_out_1_bits_cf_trigger_backendEn_0),
    .io_out_1_bits_cf_trigger_backendEn_1(fpDispatch_io_out_1_bits_cf_trigger_backendEn_1),
    .io_out_1_bits_cf_trigger_backendHit_0(fpDispatch_io_out_1_bits_cf_trigger_backendHit_0),
    .io_out_1_bits_cf_trigger_backendHit_1(fpDispatch_io_out_1_bits_cf_trigger_backendHit_1),
    .io_out_1_bits_cf_trigger_backendHit_2(fpDispatch_io_out_1_bits_cf_trigger_backendHit_2),
    .io_out_1_bits_cf_trigger_backendHit_3(fpDispatch_io_out_1_bits_cf_trigger_backendHit_3),
    .io_out_1_bits_cf_trigger_backendHit_4(fpDispatch_io_out_1_bits_cf_trigger_backendHit_4),
    .io_out_1_bits_cf_trigger_backendHit_5(fpDispatch_io_out_1_bits_cf_trigger_backendHit_5),
    .io_out_1_bits_cf_pd_isRVC(fpDispatch_io_out_1_bits_cf_pd_isRVC),
    .io_out_1_bits_cf_pd_brType(fpDispatch_io_out_1_bits_cf_pd_brType),
    .io_out_1_bits_cf_pd_isCall(fpDispatch_io_out_1_bits_cf_pd_isCall),
    .io_out_1_bits_cf_pd_isRet(fpDispatch_io_out_1_bits_cf_pd_isRet),
    .io_out_1_bits_cf_pred_taken(fpDispatch_io_out_1_bits_cf_pred_taken),
    .io_out_1_bits_cf_ssid(fpDispatch_io_out_1_bits_cf_ssid),
    .io_out_1_bits_cf_ftqPtr_flag(fpDispatch_io_out_1_bits_cf_ftqPtr_flag),
    .io_out_1_bits_cf_ftqPtr_value(fpDispatch_io_out_1_bits_cf_ftqPtr_value),
    .io_out_1_bits_cf_ftqOffset(fpDispatch_io_out_1_bits_cf_ftqOffset),
    .io_out_1_bits_ctrl_srcType_0(fpDispatch_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(fpDispatch_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_srcType_2(fpDispatch_io_out_1_bits_ctrl_srcType_2),
    .io_out_1_bits_ctrl_fuType(fpDispatch_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(fpDispatch_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(fpDispatch_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(fpDispatch_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(fpDispatch_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_ctrl_fpu_isAddSub(fpDispatch_io_out_1_bits_ctrl_fpu_isAddSub),
    .io_out_1_bits_ctrl_fpu_typeTagIn(fpDispatch_io_out_1_bits_ctrl_fpu_typeTagIn),
    .io_out_1_bits_ctrl_fpu_typeTagOut(fpDispatch_io_out_1_bits_ctrl_fpu_typeTagOut),
    .io_out_1_bits_ctrl_fpu_fromInt(fpDispatch_io_out_1_bits_ctrl_fpu_fromInt),
    .io_out_1_bits_ctrl_fpu_wflags(fpDispatch_io_out_1_bits_ctrl_fpu_wflags),
    .io_out_1_bits_ctrl_fpu_fpWen(fpDispatch_io_out_1_bits_ctrl_fpu_fpWen),
    .io_out_1_bits_ctrl_fpu_fmaCmd(fpDispatch_io_out_1_bits_ctrl_fpu_fmaCmd),
    .io_out_1_bits_ctrl_fpu_div(fpDispatch_io_out_1_bits_ctrl_fpu_div),
    .io_out_1_bits_ctrl_fpu_sqrt(fpDispatch_io_out_1_bits_ctrl_fpu_sqrt),
    .io_out_1_bits_ctrl_fpu_fcvt(fpDispatch_io_out_1_bits_ctrl_fpu_fcvt),
    .io_out_1_bits_ctrl_fpu_typ(fpDispatch_io_out_1_bits_ctrl_fpu_typ),
    .io_out_1_bits_ctrl_fpu_fmt(fpDispatch_io_out_1_bits_ctrl_fpu_fmt),
    .io_out_1_bits_ctrl_fpu_ren3(fpDispatch_io_out_1_bits_ctrl_fpu_ren3),
    .io_out_1_bits_ctrl_fpu_rm(fpDispatch_io_out_1_bits_ctrl_fpu_rm),
    .io_out_1_bits_srcState_0(fpDispatch_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(fpDispatch_io_out_1_bits_srcState_1),
    .io_out_1_bits_srcState_2(fpDispatch_io_out_1_bits_srcState_2),
    .io_out_1_bits_psrc_0(fpDispatch_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(fpDispatch_io_out_1_bits_psrc_1),
    .io_out_1_bits_psrc_2(fpDispatch_io_out_1_bits_psrc_2),
    .io_out_1_bits_pdest(fpDispatch_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(fpDispatch_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(fpDispatch_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(fpDispatch_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(fpDispatch_io_out_1_bits_lqIdx_value),
    .io_out_1_bits_sqIdx_flag(fpDispatch_io_out_1_bits_sqIdx_flag),
    .io_out_1_bits_sqIdx_value(fpDispatch_io_out_1_bits_sqIdx_value)
  );
  ReservationStationWrapper_6 rs ( // @[Scheduler.scala 170:24]
    .clock(rs_clock),
    .reset(rs_reset),
    .io_redirect_valid(rs_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_0(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_1(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_2(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_3(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_4(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_5(rs_io_fromDispatch_0_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_ssid(rs_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_srcType_2(rs_io_fromDispatch_0_bits_ctrl_srcType_2),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_ctrl_fpu_isAddSub(rs_io_fromDispatch_0_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagIn(rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagOut(rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_0_bits_ctrl_fpu_fromInt(rs_io_fromDispatch_0_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_0_bits_ctrl_fpu_wflags(rs_io_fromDispatch_0_bits_ctrl_fpu_wflags),
    .io_fromDispatch_0_bits_ctrl_fpu_fpWen(rs_io_fromDispatch_0_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_0_bits_ctrl_fpu_fmaCmd(rs_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_0_bits_ctrl_fpu_div(rs_io_fromDispatch_0_bits_ctrl_fpu_div),
    .io_fromDispatch_0_bits_ctrl_fpu_sqrt(rs_io_fromDispatch_0_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_0_bits_ctrl_fpu_fcvt(rs_io_fromDispatch_0_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_0_bits_ctrl_fpu_typ(rs_io_fromDispatch_0_bits_ctrl_fpu_typ),
    .io_fromDispatch_0_bits_ctrl_fpu_fmt(rs_io_fromDispatch_0_bits_ctrl_fpu_fmt),
    .io_fromDispatch_0_bits_ctrl_fpu_ren3(rs_io_fromDispatch_0_bits_ctrl_fpu_ren3),
    .io_fromDispatch_0_bits_ctrl_fpu_rm(rs_io_fromDispatch_0_bits_ctrl_fpu_rm),
    .io_fromDispatch_0_bits_srcState_0(rs_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_srcState_2(rs_io_fromDispatch_0_bits_srcState_2),
    .io_fromDispatch_0_bits_psrc_0(rs_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_psrc_2(rs_io_fromDispatch_0_bits_psrc_2),
    .io_fromDispatch_0_bits_pdest(rs_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_0(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_1(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_2(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_3(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_4(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_5(rs_io_fromDispatch_1_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_ssid(rs_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(rs_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_srcType_2(rs_io_fromDispatch_1_bits_ctrl_srcType_2),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_ctrl_fpu_isAddSub(rs_io_fromDispatch_1_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagIn(rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagOut(rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_1_bits_ctrl_fpu_fromInt(rs_io_fromDispatch_1_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_1_bits_ctrl_fpu_wflags(rs_io_fromDispatch_1_bits_ctrl_fpu_wflags),
    .io_fromDispatch_1_bits_ctrl_fpu_fpWen(rs_io_fromDispatch_1_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_1_bits_ctrl_fpu_fmaCmd(rs_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_1_bits_ctrl_fpu_div(rs_io_fromDispatch_1_bits_ctrl_fpu_div),
    .io_fromDispatch_1_bits_ctrl_fpu_sqrt(rs_io_fromDispatch_1_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_1_bits_ctrl_fpu_fcvt(rs_io_fromDispatch_1_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_1_bits_ctrl_fpu_typ(rs_io_fromDispatch_1_bits_ctrl_fpu_typ),
    .io_fromDispatch_1_bits_ctrl_fpu_fmt(rs_io_fromDispatch_1_bits_ctrl_fpu_fmt),
    .io_fromDispatch_1_bits_ctrl_fpu_ren3(rs_io_fromDispatch_1_bits_ctrl_fpu_ren3),
    .io_fromDispatch_1_bits_ctrl_fpu_rm(rs_io_fromDispatch_1_bits_ctrl_fpu_rm),
    .io_fromDispatch_1_bits_srcState_0(rs_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(rs_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_srcState_2(rs_io_fromDispatch_1_bits_srcState_2),
    .io_fromDispatch_1_bits_psrc_0(rs_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(rs_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_psrc_2(rs_io_fromDispatch_1_bits_psrc_2),
    .io_fromDispatch_1_bits_pdest(rs_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_io_srcRegValue_0_1),
    .io_srcRegValue_0_2(rs_io_srcRegValue_0_2),
    .io_srcRegValue_1_0(rs_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(rs_io_srcRegValue_1_1),
    .io_srcRegValue_1_2(rs_io_srcRegValue_1_2),
    .io_deq_0_ready(rs_io_deq_0_ready),
    .io_deq_0_valid(rs_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_trigger_backendHit_0(rs_io_deq_0_bits_uop_cf_trigger_backendHit_0),
    .io_deq_0_bits_uop_cf_trigger_backendHit_1(rs_io_deq_0_bits_uop_cf_trigger_backendHit_1),
    .io_deq_0_bits_uop_cf_trigger_backendHit_2(rs_io_deq_0_bits_uop_cf_trigger_backendHit_2),
    .io_deq_0_bits_uop_cf_trigger_backendHit_3(rs_io_deq_0_bits_uop_cf_trigger_backendHit_3),
    .io_deq_0_bits_uop_cf_trigger_backendHit_4(rs_io_deq_0_bits_uop_cf_trigger_backendHit_4),
    .io_deq_0_bits_uop_cf_trigger_backendHit_5(rs_io_deq_0_bits_uop_cf_trigger_backendHit_5),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_fpu_isAddSub(rs_io_deq_0_bits_uop_ctrl_fpu_isAddSub),
    .io_deq_0_bits_uop_ctrl_fpu_typeTagIn(rs_io_deq_0_bits_uop_ctrl_fpu_typeTagIn),
    .io_deq_0_bits_uop_ctrl_fpu_fmaCmd(rs_io_deq_0_bits_uop_ctrl_fpu_fmaCmd),
    .io_deq_0_bits_uop_ctrl_fpu_ren3(rs_io_deq_0_bits_uop_ctrl_fpu_ren3),
    .io_deq_0_bits_uop_ctrl_fpu_rm(rs_io_deq_0_bits_uop_ctrl_fpu_rm),
    .io_deq_0_bits_uop_pdest(rs_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_src_0(rs_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_io_deq_0_bits_src_1),
    .io_deq_0_bits_src_2(rs_io_deq_0_bits_src_2),
    .io_deq_1_ready(rs_io_deq_1_ready),
    .io_deq_1_valid(rs_io_deq_1_valid),
    .io_deq_1_bits_uop_cf_trigger_backendHit_0(rs_io_deq_1_bits_uop_cf_trigger_backendHit_0),
    .io_deq_1_bits_uop_cf_trigger_backendHit_1(rs_io_deq_1_bits_uop_cf_trigger_backendHit_1),
    .io_deq_1_bits_uop_cf_trigger_backendHit_2(rs_io_deq_1_bits_uop_cf_trigger_backendHit_2),
    .io_deq_1_bits_uop_cf_trigger_backendHit_3(rs_io_deq_1_bits_uop_cf_trigger_backendHit_3),
    .io_deq_1_bits_uop_cf_trigger_backendHit_4(rs_io_deq_1_bits_uop_cf_trigger_backendHit_4),
    .io_deq_1_bits_uop_cf_trigger_backendHit_5(rs_io_deq_1_bits_uop_cf_trigger_backendHit_5),
    .io_deq_1_bits_uop_ctrl_rfWen(rs_io_deq_1_bits_uop_ctrl_rfWen),
    .io_deq_1_bits_uop_ctrl_fpWen(rs_io_deq_1_bits_uop_ctrl_fpWen),
    .io_deq_1_bits_uop_ctrl_fpu_isAddSub(rs_io_deq_1_bits_uop_ctrl_fpu_isAddSub),
    .io_deq_1_bits_uop_ctrl_fpu_typeTagIn(rs_io_deq_1_bits_uop_ctrl_fpu_typeTagIn),
    .io_deq_1_bits_uop_ctrl_fpu_fmaCmd(rs_io_deq_1_bits_uop_ctrl_fpu_fmaCmd),
    .io_deq_1_bits_uop_ctrl_fpu_ren3(rs_io_deq_1_bits_uop_ctrl_fpu_ren3),
    .io_deq_1_bits_uop_ctrl_fpu_rm(rs_io_deq_1_bits_uop_ctrl_fpu_rm),
    .io_deq_1_bits_uop_pdest(rs_io_deq_1_bits_uop_pdest),
    .io_deq_1_bits_uop_robIdx_flag(rs_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_src_0(rs_io_deq_1_bits_src_0),
    .io_deq_1_bits_src_1(rs_io_deq_1_bits_src_1),
    .io_deq_1_bits_src_2(rs_io_deq_1_bits_src_2),
    .io_fastUopsIn_0_valid(rs_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_fpWen(rs_io_fastUopsIn_0_bits_ctrl_fpWen),
    .io_fastUopsIn_0_bits_pdest(rs_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(rs_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_fpWen(rs_io_fastUopsIn_1_bits_ctrl_fpWen),
    .io_fastUopsIn_1_bits_pdest(rs_io_fastUopsIn_1_bits_pdest),
    .io_fastDatas_0(rs_io_fastDatas_0),
    .io_fastDatas_1(rs_io_fastDatas_1),
    .io_slowPorts_0_valid(rs_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_fpWen(rs_io_slowPorts_0_bits_uop_ctrl_fpWen),
    .io_slowPorts_0_bits_uop_pdest(rs_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_fpWen(rs_io_slowPorts_1_bits_uop_ctrl_fpWen),
    .io_slowPorts_1_bits_uop_pdest(rs_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_fpWen(rs_io_slowPorts_2_bits_uop_ctrl_fpWen),
    .io_slowPorts_2_bits_uop_pdest(rs_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_fpWen(rs_io_slowPorts_3_bits_uop_ctrl_fpWen),
    .io_slowPorts_3_bits_uop_pdest(rs_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_fpWen(rs_io_slowPorts_4_bits_uop_ctrl_fpWen),
    .io_slowPorts_4_bits_uop_pdest(rs_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_io_slowPorts_4_bits_data),
    .io_fmaMid_0_in_valid(rs_io_fmaMid_0_in_valid),
    .io_fmaMid_0_in_bits_fp_prod_sign(rs_io_fmaMid_0_in_bits_fp_prod_sign),
    .io_fmaMid_0_in_bits_fp_prod_exp(rs_io_fmaMid_0_in_bits_fp_prod_exp),
    .io_fmaMid_0_in_bits_fp_prod_sig(rs_io_fmaMid_0_in_bits_fp_prod_sig),
    .io_fmaMid_0_in_bits_inter_flags_isNaN(rs_io_fmaMid_0_in_bits_inter_flags_isNaN),
    .io_fmaMid_0_in_bits_inter_flags_isInf(rs_io_fmaMid_0_in_bits_inter_flags_isInf),
    .io_fmaMid_0_in_bits_inter_flags_isInv(rs_io_fmaMid_0_in_bits_inter_flags_isInv),
    .io_fmaMid_0_in_bits_inter_flags_overflow(rs_io_fmaMid_0_in_bits_inter_flags_overflow),
    .io_fmaMid_0_out_bits_fp_prod_sign(rs_io_fmaMid_0_out_bits_fp_prod_sign),
    .io_fmaMid_0_out_bits_fp_prod_exp(rs_io_fmaMid_0_out_bits_fp_prod_exp),
    .io_fmaMid_0_out_bits_fp_prod_sig(rs_io_fmaMid_0_out_bits_fp_prod_sig),
    .io_fmaMid_0_out_bits_inter_flags_isNaN(rs_io_fmaMid_0_out_bits_inter_flags_isNaN),
    .io_fmaMid_0_out_bits_inter_flags_isInf(rs_io_fmaMid_0_out_bits_inter_flags_isInf),
    .io_fmaMid_0_out_bits_inter_flags_isInv(rs_io_fmaMid_0_out_bits_inter_flags_isInv),
    .io_fmaMid_0_out_bits_inter_flags_overflow(rs_io_fmaMid_0_out_bits_inter_flags_overflow),
    .io_fmaMid_0_waitForAdd(rs_io_fmaMid_0_waitForAdd),
    .io_fmaMid_1_in_valid(rs_io_fmaMid_1_in_valid),
    .io_fmaMid_1_in_bits_fp_prod_sign(rs_io_fmaMid_1_in_bits_fp_prod_sign),
    .io_fmaMid_1_in_bits_fp_prod_exp(rs_io_fmaMid_1_in_bits_fp_prod_exp),
    .io_fmaMid_1_in_bits_fp_prod_sig(rs_io_fmaMid_1_in_bits_fp_prod_sig),
    .io_fmaMid_1_in_bits_inter_flags_isNaN(rs_io_fmaMid_1_in_bits_inter_flags_isNaN),
    .io_fmaMid_1_in_bits_inter_flags_isInf(rs_io_fmaMid_1_in_bits_inter_flags_isInf),
    .io_fmaMid_1_in_bits_inter_flags_isInv(rs_io_fmaMid_1_in_bits_inter_flags_isInv),
    .io_fmaMid_1_in_bits_inter_flags_overflow(rs_io_fmaMid_1_in_bits_inter_flags_overflow),
    .io_fmaMid_1_out_bits_fp_prod_sign(rs_io_fmaMid_1_out_bits_fp_prod_sign),
    .io_fmaMid_1_out_bits_fp_prod_exp(rs_io_fmaMid_1_out_bits_fp_prod_exp),
    .io_fmaMid_1_out_bits_fp_prod_sig(rs_io_fmaMid_1_out_bits_fp_prod_sig),
    .io_fmaMid_1_out_bits_inter_flags_isNaN(rs_io_fmaMid_1_out_bits_inter_flags_isNaN),
    .io_fmaMid_1_out_bits_inter_flags_isInf(rs_io_fmaMid_1_out_bits_inter_flags_isInf),
    .io_fmaMid_1_out_bits_inter_flags_isInv(rs_io_fmaMid_1_out_bits_inter_flags_isInv),
    .io_fmaMid_1_out_bits_inter_flags_overflow(rs_io_fmaMid_1_out_bits_inter_flags_overflow),
    .io_fmaMid_1_waitForAdd(rs_io_fmaMid_1_waitForAdd),
    .io_perf_0_value(rs_io_perf_0_value)
  );
  ReservationStationWrapper_7 rs_1 ( // @[Scheduler.scala 170:24]
    .clock(rs_1_clock),
    .reset(rs_1_reset),
    .io_redirect_valid(rs_1_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_1_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_1_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_1_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_1_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_1_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_0(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_1(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_2(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_3(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_4(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_5(rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_1_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_1_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_1_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_1_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_1_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_ssid(rs_1_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_1_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_1_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_1_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_1_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_1_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_1_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_1_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_1_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_1_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_1_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_ctrl_fpu_isAddSub(rs_1_io_fromDispatch_0_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagIn(rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagOut(rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_0_bits_ctrl_fpu_fromInt(rs_1_io_fromDispatch_0_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_0_bits_ctrl_fpu_wflags(rs_1_io_fromDispatch_0_bits_ctrl_fpu_wflags),
    .io_fromDispatch_0_bits_ctrl_fpu_fpWen(rs_1_io_fromDispatch_0_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_0_bits_ctrl_fpu_fmaCmd(rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_0_bits_ctrl_fpu_div(rs_1_io_fromDispatch_0_bits_ctrl_fpu_div),
    .io_fromDispatch_0_bits_ctrl_fpu_sqrt(rs_1_io_fromDispatch_0_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_0_bits_ctrl_fpu_fcvt(rs_1_io_fromDispatch_0_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_0_bits_ctrl_fpu_typ(rs_1_io_fromDispatch_0_bits_ctrl_fpu_typ),
    .io_fromDispatch_0_bits_ctrl_fpu_fmt(rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmt),
    .io_fromDispatch_0_bits_ctrl_fpu_ren3(rs_1_io_fromDispatch_0_bits_ctrl_fpu_ren3),
    .io_fromDispatch_0_bits_ctrl_fpu_rm(rs_1_io_fromDispatch_0_bits_ctrl_fpu_rm),
    .io_fromDispatch_0_bits_srcState_0(rs_1_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_1_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(rs_1_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_1_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(rs_1_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_1_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_1_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_1_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_1_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_1_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_1_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_1_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_1_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_0(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_1(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_2(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_3(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_4(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_5(rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_1_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_1_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_1_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_1_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_1_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_ssid(rs_1_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_1_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_1_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_1_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_1_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(rs_1_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_1_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_1_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_1_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_1_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_1_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_ctrl_fpu_isAddSub(rs_1_io_fromDispatch_1_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagIn(rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagOut(rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_1_bits_ctrl_fpu_fromInt(rs_1_io_fromDispatch_1_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_1_bits_ctrl_fpu_wflags(rs_1_io_fromDispatch_1_bits_ctrl_fpu_wflags),
    .io_fromDispatch_1_bits_ctrl_fpu_fpWen(rs_1_io_fromDispatch_1_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_1_bits_ctrl_fpu_fmaCmd(rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_1_bits_ctrl_fpu_div(rs_1_io_fromDispatch_1_bits_ctrl_fpu_div),
    .io_fromDispatch_1_bits_ctrl_fpu_sqrt(rs_1_io_fromDispatch_1_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_1_bits_ctrl_fpu_fcvt(rs_1_io_fromDispatch_1_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_1_bits_ctrl_fpu_typ(rs_1_io_fromDispatch_1_bits_ctrl_fpu_typ),
    .io_fromDispatch_1_bits_ctrl_fpu_fmt(rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmt),
    .io_fromDispatch_1_bits_ctrl_fpu_ren3(rs_1_io_fromDispatch_1_bits_ctrl_fpu_ren3),
    .io_fromDispatch_1_bits_ctrl_fpu_rm(rs_1_io_fromDispatch_1_bits_ctrl_fpu_rm),
    .io_fromDispatch_1_bits_srcState_0(rs_1_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(rs_1_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_psrc_0(rs_1_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(rs_1_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(rs_1_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_1_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_1_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_1_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_1_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_1_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_1_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_1_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_1_io_srcRegValue_0_1),
    .io_srcRegValue_1_0(rs_1_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(rs_1_io_srcRegValue_1_1),
    .io_deq_0_ready(rs_1_io_deq_0_ready),
    .io_deq_0_valid(rs_1_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_trigger_backendHit_0(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_0),
    .io_deq_0_bits_uop_cf_trigger_backendHit_1(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_1),
    .io_deq_0_bits_uop_cf_trigger_backendHit_2(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_2),
    .io_deq_0_bits_uop_cf_trigger_backendHit_3(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_3),
    .io_deq_0_bits_uop_cf_trigger_backendHit_4(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_4),
    .io_deq_0_bits_uop_cf_trigger_backendHit_5(rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_5),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_1_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_1_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_fpu_typeTagIn(rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagIn),
    .io_deq_0_bits_uop_ctrl_fpu_typeTagOut(rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagOut),
    .io_deq_0_bits_uop_ctrl_fpu_wflags(rs_1_io_deq_0_bits_uop_ctrl_fpu_wflags),
    .io_deq_0_bits_uop_ctrl_fpu_fpWen(rs_1_io_deq_0_bits_uop_ctrl_fpu_fpWen),
    .io_deq_0_bits_uop_ctrl_fpu_div(rs_1_io_deq_0_bits_uop_ctrl_fpu_div),
    .io_deq_0_bits_uop_ctrl_fpu_sqrt(rs_1_io_deq_0_bits_uop_ctrl_fpu_sqrt),
    .io_deq_0_bits_uop_ctrl_fpu_fcvt(rs_1_io_deq_0_bits_uop_ctrl_fpu_fcvt),
    .io_deq_0_bits_uop_ctrl_fpu_typ(rs_1_io_deq_0_bits_uop_ctrl_fpu_typ),
    .io_deq_0_bits_uop_ctrl_fpu_fmt(rs_1_io_deq_0_bits_uop_ctrl_fpu_fmt),
    .io_deq_0_bits_uop_ctrl_fpu_rm(rs_1_io_deq_0_bits_uop_ctrl_fpu_rm),
    .io_deq_0_bits_uop_pdest(rs_1_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_1_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_1_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_src_0(rs_1_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_1_io_deq_0_bits_src_1),
    .io_fastUopsIn_0_valid(rs_1_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_fpWen(rs_1_io_fastUopsIn_0_bits_ctrl_fpWen),
    .io_fastUopsIn_0_bits_pdest(rs_1_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(rs_1_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_fpWen(rs_1_io_fastUopsIn_1_bits_ctrl_fpWen),
    .io_fastUopsIn_1_bits_pdest(rs_1_io_fastUopsIn_1_bits_pdest),
    .io_fastDatas_0(rs_1_io_fastDatas_0),
    .io_fastDatas_1(rs_1_io_fastDatas_1),
    .io_slowPorts_0_valid(rs_1_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_fpWen(rs_1_io_slowPorts_0_bits_uop_ctrl_fpWen),
    .io_slowPorts_0_bits_uop_pdest(rs_1_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_1_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_1_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_fpWen(rs_1_io_slowPorts_1_bits_uop_ctrl_fpWen),
    .io_slowPorts_1_bits_uop_pdest(rs_1_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_1_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_1_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_fpWen(rs_1_io_slowPorts_2_bits_uop_ctrl_fpWen),
    .io_slowPorts_2_bits_uop_pdest(rs_1_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_1_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_1_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_fpWen(rs_1_io_slowPorts_3_bits_uop_ctrl_fpWen),
    .io_slowPorts_3_bits_uop_pdest(rs_1_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_1_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_1_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_fpWen(rs_1_io_slowPorts_4_bits_uop_ctrl_fpWen),
    .io_slowPorts_4_bits_uop_pdest(rs_1_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_1_io_slowPorts_4_bits_data),
    .io_perf_0_value(rs_1_io_perf_0_value)
  );
  BusyTable_2 fpBusyTable ( // @[Scheduler.scala 326:29]
    .clock(fpBusyTable_clock),
    .reset(fpBusyTable_reset),
    .io_allocPregs_0_valid(fpBusyTable_io_allocPregs_0_valid),
    .io_allocPregs_0_bits(fpBusyTable_io_allocPregs_0_bits),
    .io_allocPregs_1_valid(fpBusyTable_io_allocPregs_1_valid),
    .io_allocPregs_1_bits(fpBusyTable_io_allocPregs_1_bits),
    .io_allocPregs_2_valid(fpBusyTable_io_allocPregs_2_valid),
    .io_allocPregs_2_bits(fpBusyTable_io_allocPregs_2_bits),
    .io_allocPregs_3_valid(fpBusyTable_io_allocPregs_3_valid),
    .io_allocPregs_3_bits(fpBusyTable_io_allocPregs_3_bits),
    .io_wbPregs_0_valid(fpBusyTable_io_wbPregs_0_valid),
    .io_wbPregs_0_bits(fpBusyTable_io_wbPregs_0_bits),
    .io_wbPregs_1_valid(fpBusyTable_io_wbPregs_1_valid),
    .io_wbPregs_1_bits(fpBusyTable_io_wbPregs_1_bits),
    .io_wbPregs_2_valid(fpBusyTable_io_wbPregs_2_valid),
    .io_wbPregs_2_bits(fpBusyTable_io_wbPregs_2_bits),
    .io_wbPregs_3_valid(fpBusyTable_io_wbPregs_3_valid),
    .io_wbPregs_3_bits(fpBusyTable_io_wbPregs_3_bits),
    .io_wbPregs_4_valid(fpBusyTable_io_wbPregs_4_valid),
    .io_wbPregs_4_bits(fpBusyTable_io_wbPregs_4_bits),
    .io_read_2_req(fpBusyTable_io_read_2_req),
    .io_read_2_resp(fpBusyTable_io_read_2_resp),
    .io_read_3_req(fpBusyTable_io_read_3_req),
    .io_read_3_resp(fpBusyTable_io_read_3_resp),
    .io_read_4_req(fpBusyTable_io_read_4_req),
    .io_read_4_resp(fpBusyTable_io_read_4_resp),
    .io_read_5_req(fpBusyTable_io_read_5_req),
    .io_read_5_resp(fpBusyTable_io_read_5_resp),
    .io_read_6_req(fpBusyTable_io_read_6_req),
    .io_read_6_resp(fpBusyTable_io_read_6_resp),
    .io_read_7_req(fpBusyTable_io_read_7_req),
    .io_read_7_resp(fpBusyTable_io_read_7_resp),
    .io_perf_0_value(fpBusyTable_io_perf_0_value),
    .io_perf_1_value(fpBusyTable_io_perf_1_value),
    .io_perf_2_value(fpBusyTable_io_perf_2_value),
    .io_perf_3_value(fpBusyTable_io_perf_3_value)
  );
  Regfile_1 fpRfReadData_regfile ( // @[Regfile.scala 86:25]
    .clock(fpRfReadData_regfile_clock),
    .io_readPorts_0_addr(fpRfReadData_regfile_io_readPorts_0_addr),
    .io_readPorts_0_data(fpRfReadData_regfile_io_readPorts_0_data),
    .io_readPorts_1_addr(fpRfReadData_regfile_io_readPorts_1_addr),
    .io_readPorts_1_data(fpRfReadData_regfile_io_readPorts_1_data),
    .io_readPorts_2_addr(fpRfReadData_regfile_io_readPorts_2_addr),
    .io_readPorts_2_data(fpRfReadData_regfile_io_readPorts_2_data),
    .io_readPorts_3_addr(fpRfReadData_regfile_io_readPorts_3_addr),
    .io_readPorts_3_data(fpRfReadData_regfile_io_readPorts_3_data),
    .io_readPorts_4_addr(fpRfReadData_regfile_io_readPorts_4_addr),
    .io_readPorts_4_data(fpRfReadData_regfile_io_readPorts_4_data),
    .io_readPorts_5_addr(fpRfReadData_regfile_io_readPorts_5_addr),
    .io_readPorts_5_data(fpRfReadData_regfile_io_readPorts_5_data),
    .io_readPorts_6_addr(fpRfReadData_regfile_io_readPorts_6_addr),
    .io_readPorts_6_data(fpRfReadData_regfile_io_readPorts_6_data),
    .io_readPorts_7_addr(fpRfReadData_regfile_io_readPorts_7_addr),
    .io_readPorts_7_data(fpRfReadData_regfile_io_readPorts_7_data),
    .io_writePorts_0_wen(fpRfReadData_regfile_io_writePorts_0_wen),
    .io_writePorts_0_addr(fpRfReadData_regfile_io_writePorts_0_addr),
    .io_writePorts_0_data(fpRfReadData_regfile_io_writePorts_0_data),
    .io_writePorts_1_wen(fpRfReadData_regfile_io_writePorts_1_wen),
    .io_writePorts_1_addr(fpRfReadData_regfile_io_writePorts_1_addr),
    .io_writePorts_1_data(fpRfReadData_regfile_io_writePorts_1_data),
    .io_writePorts_2_wen(fpRfReadData_regfile_io_writePorts_2_wen),
    .io_writePorts_2_addr(fpRfReadData_regfile_io_writePorts_2_addr),
    .io_writePorts_2_data(fpRfReadData_regfile_io_writePorts_2_data),
    .io_writePorts_3_wen(fpRfReadData_regfile_io_writePorts_3_wen),
    .io_writePorts_3_addr(fpRfReadData_regfile_io_writePorts_3_addr),
    .io_writePorts_3_data(fpRfReadData_regfile_io_writePorts_3_data),
    .io_writePorts_4_wen(fpRfReadData_regfile_io_writePorts_4_wen),
    .io_writePorts_4_addr(fpRfReadData_regfile_io_writePorts_4_addr),
    .io_writePorts_4_data(fpRfReadData_regfile_io_writePorts_4_data),
    .io_debug_rports_0_addr(fpRfReadData_regfile_io_debug_rports_0_addr),
    .io_debug_rports_0_data(fpRfReadData_regfile_io_debug_rports_0_data),
    .io_debug_rports_1_addr(fpRfReadData_regfile_io_debug_rports_1_addr),
    .io_debug_rports_1_data(fpRfReadData_regfile_io_debug_rports_1_data),
    .io_debug_rports_2_addr(fpRfReadData_regfile_io_debug_rports_2_addr),
    .io_debug_rports_2_data(fpRfReadData_regfile_io_debug_rports_2_data),
    .io_debug_rports_3_addr(fpRfReadData_regfile_io_debug_rports_3_addr),
    .io_debug_rports_3_data(fpRfReadData_regfile_io_debug_rports_3_data),
    .io_debug_rports_4_addr(fpRfReadData_regfile_io_debug_rports_4_addr),
    .io_debug_rports_4_data(fpRfReadData_regfile_io_debug_rports_4_data),
    .io_debug_rports_5_addr(fpRfReadData_regfile_io_debug_rports_5_addr),
    .io_debug_rports_5_data(fpRfReadData_regfile_io_debug_rports_5_data),
    .io_debug_rports_6_addr(fpRfReadData_regfile_io_debug_rports_6_addr),
    .io_debug_rports_6_data(fpRfReadData_regfile_io_debug_rports_6_data),
    .io_debug_rports_7_addr(fpRfReadData_regfile_io_debug_rports_7_addr),
    .io_debug_rports_7_data(fpRfReadData_regfile_io_debug_rports_7_data),
    .io_debug_rports_8_addr(fpRfReadData_regfile_io_debug_rports_8_addr),
    .io_debug_rports_8_data(fpRfReadData_regfile_io_debug_rports_8_data),
    .io_debug_rports_9_addr(fpRfReadData_regfile_io_debug_rports_9_addr),
    .io_debug_rports_9_data(fpRfReadData_regfile_io_debug_rports_9_data),
    .io_debug_rports_10_addr(fpRfReadData_regfile_io_debug_rports_10_addr),
    .io_debug_rports_10_data(fpRfReadData_regfile_io_debug_rports_10_data),
    .io_debug_rports_11_addr(fpRfReadData_regfile_io_debug_rports_11_addr),
    .io_debug_rports_11_data(fpRfReadData_regfile_io_debug_rports_11_data),
    .io_debug_rports_12_addr(fpRfReadData_regfile_io_debug_rports_12_addr),
    .io_debug_rports_12_data(fpRfReadData_regfile_io_debug_rports_12_data),
    .io_debug_rports_13_addr(fpRfReadData_regfile_io_debug_rports_13_addr),
    .io_debug_rports_13_data(fpRfReadData_regfile_io_debug_rports_13_data),
    .io_debug_rports_14_addr(fpRfReadData_regfile_io_debug_rports_14_addr),
    .io_debug_rports_14_data(fpRfReadData_regfile_io_debug_rports_14_data),
    .io_debug_rports_15_addr(fpRfReadData_regfile_io_debug_rports_15_addr),
    .io_debug_rports_15_data(fpRfReadData_regfile_io_debug_rports_15_data),
    .io_debug_rports_16_addr(fpRfReadData_regfile_io_debug_rports_16_addr),
    .io_debug_rports_16_data(fpRfReadData_regfile_io_debug_rports_16_data),
    .io_debug_rports_17_addr(fpRfReadData_regfile_io_debug_rports_17_addr),
    .io_debug_rports_17_data(fpRfReadData_regfile_io_debug_rports_17_data),
    .io_debug_rports_18_addr(fpRfReadData_regfile_io_debug_rports_18_addr),
    .io_debug_rports_18_data(fpRfReadData_regfile_io_debug_rports_18_data),
    .io_debug_rports_19_addr(fpRfReadData_regfile_io_debug_rports_19_addr),
    .io_debug_rports_19_data(fpRfReadData_regfile_io_debug_rports_19_data),
    .io_debug_rports_20_addr(fpRfReadData_regfile_io_debug_rports_20_addr),
    .io_debug_rports_20_data(fpRfReadData_regfile_io_debug_rports_20_data),
    .io_debug_rports_21_addr(fpRfReadData_regfile_io_debug_rports_21_addr),
    .io_debug_rports_21_data(fpRfReadData_regfile_io_debug_rports_21_data),
    .io_debug_rports_22_addr(fpRfReadData_regfile_io_debug_rports_22_addr),
    .io_debug_rports_22_data(fpRfReadData_regfile_io_debug_rports_22_data),
    .io_debug_rports_23_addr(fpRfReadData_regfile_io_debug_rports_23_addr),
    .io_debug_rports_23_data(fpRfReadData_regfile_io_debug_rports_23_data),
    .io_debug_rports_24_addr(fpRfReadData_regfile_io_debug_rports_24_addr),
    .io_debug_rports_24_data(fpRfReadData_regfile_io_debug_rports_24_data),
    .io_debug_rports_25_addr(fpRfReadData_regfile_io_debug_rports_25_addr),
    .io_debug_rports_25_data(fpRfReadData_regfile_io_debug_rports_25_data),
    .io_debug_rports_26_addr(fpRfReadData_regfile_io_debug_rports_26_addr),
    .io_debug_rports_26_data(fpRfReadData_regfile_io_debug_rports_26_data),
    .io_debug_rports_27_addr(fpRfReadData_regfile_io_debug_rports_27_addr),
    .io_debug_rports_27_data(fpRfReadData_regfile_io_debug_rports_27_data),
    .io_debug_rports_28_addr(fpRfReadData_regfile_io_debug_rports_28_addr),
    .io_debug_rports_28_data(fpRfReadData_regfile_io_debug_rports_28_data),
    .io_debug_rports_29_addr(fpRfReadData_regfile_io_debug_rports_29_addr),
    .io_debug_rports_29_data(fpRfReadData_regfile_io_debug_rports_29_data),
    .io_debug_rports_30_addr(fpRfReadData_regfile_io_debug_rports_30_addr),
    .io_debug_rports_30_data(fpRfReadData_regfile_io_debug_rports_30_data),
    .io_debug_rports_31_addr(fpRfReadData_regfile_io_debug_rports_31_addr),
    .io_debug_rports_31_data(fpRfReadData_regfile_io_debug_rports_31_data)
  );
  DispatchArbiter_2 arbiterOut_arbiter ( // @[Scheduler.scala 53:25]
    .io_in_ready(arbiterOut_arbiter_io_in_ready),
    .io_in_valid(arbiterOut_arbiter_io_in_valid),
    .io_in_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0),
    .io_in_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1),
    .io_in_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_0),
    .io_in_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_1),
    .io_in_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_2),
    .io_in_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_3),
    .io_in_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_4),
    .io_in_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_5),
    .io_in_bits_cf_pd_isRVC(arbiterOut_arbiter_io_in_bits_cf_pd_isRVC),
    .io_in_bits_cf_pd_brType(arbiterOut_arbiter_io_in_bits_cf_pd_brType),
    .io_in_bits_cf_pd_isCall(arbiterOut_arbiter_io_in_bits_cf_pd_isCall),
    .io_in_bits_cf_pd_isRet(arbiterOut_arbiter_io_in_bits_cf_pd_isRet),
    .io_in_bits_cf_pred_taken(arbiterOut_arbiter_io_in_bits_cf_pred_taken),
    .io_in_bits_cf_ssid(arbiterOut_arbiter_io_in_bits_cf_ssid),
    .io_in_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag),
    .io_in_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value),
    .io_in_bits_cf_ftqOffset(arbiterOut_arbiter_io_in_bits_cf_ftqOffset),
    .io_in_bits_ctrl_srcType_0(arbiterOut_arbiter_io_in_bits_ctrl_srcType_0),
    .io_in_bits_ctrl_srcType_1(arbiterOut_arbiter_io_in_bits_ctrl_srcType_1),
    .io_in_bits_ctrl_srcType_2(arbiterOut_arbiter_io_in_bits_ctrl_srcType_2),
    .io_in_bits_ctrl_fuType(arbiterOut_arbiter_io_in_bits_ctrl_fuType),
    .io_in_bits_ctrl_fuOpType(arbiterOut_arbiter_io_in_bits_ctrl_fuOpType),
    .io_in_bits_ctrl_rfWen(arbiterOut_arbiter_io_in_bits_ctrl_rfWen),
    .io_in_bits_ctrl_fpWen(arbiterOut_arbiter_io_in_bits_ctrl_fpWen),
    .io_in_bits_ctrl_imm(arbiterOut_arbiter_io_in_bits_ctrl_imm),
    .io_in_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub),
    .io_in_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn),
    .io_in_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut),
    .io_in_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt),
    .io_in_bits_ctrl_fpu_wflags(arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags),
    .io_in_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen),
    .io_in_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd),
    .io_in_bits_ctrl_fpu_div(arbiterOut_arbiter_io_in_bits_ctrl_fpu_div),
    .io_in_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt),
    .io_in_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt),
    .io_in_bits_ctrl_fpu_typ(arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ),
    .io_in_bits_ctrl_fpu_fmt(arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt),
    .io_in_bits_ctrl_fpu_ren3(arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3),
    .io_in_bits_ctrl_fpu_rm(arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm),
    .io_in_bits_srcState_0(arbiterOut_arbiter_io_in_bits_srcState_0),
    .io_in_bits_srcState_1(arbiterOut_arbiter_io_in_bits_srcState_1),
    .io_in_bits_srcState_2(arbiterOut_arbiter_io_in_bits_srcState_2),
    .io_in_bits_psrc_0(arbiterOut_arbiter_io_in_bits_psrc_0),
    .io_in_bits_psrc_1(arbiterOut_arbiter_io_in_bits_psrc_1),
    .io_in_bits_psrc_2(arbiterOut_arbiter_io_in_bits_psrc_2),
    .io_in_bits_pdest(arbiterOut_arbiter_io_in_bits_pdest),
    .io_in_bits_robIdx_flag(arbiterOut_arbiter_io_in_bits_robIdx_flag),
    .io_in_bits_robIdx_value(arbiterOut_arbiter_io_in_bits_robIdx_value),
    .io_in_bits_lqIdx_flag(arbiterOut_arbiter_io_in_bits_lqIdx_flag),
    .io_in_bits_lqIdx_value(arbiterOut_arbiter_io_in_bits_lqIdx_value),
    .io_in_bits_sqIdx_flag(arbiterOut_arbiter_io_in_bits_sqIdx_flag),
    .io_in_bits_sqIdx_value(arbiterOut_arbiter_io_in_bits_sqIdx_value),
    .io_out_0_ready(arbiterOut_arbiter_io_out_0_ready),
    .io_out_0_valid(arbiterOut_arbiter_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_0),
    .io_out_0_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_1),
    .io_out_0_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_2),
    .io_out_0_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_3),
    .io_out_0_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_4),
    .io_out_0_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_5),
    .io_out_0_bits_cf_pd_isRVC(arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(arbiterOut_arbiter_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(arbiterOut_arbiter_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_ssid(arbiterOut_arbiter_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_srcType_2(arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_2),
    .io_out_0_bits_ctrl_fuType(arbiterOut_arbiter_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_imm(arbiterOut_arbiter_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_isAddSub),
    .io_out_0_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagIn),
    .io_out_0_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagOut),
    .io_out_0_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fromInt),
    .io_out_0_bits_ctrl_fpu_wflags(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_wflags),
    .io_out_0_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fpWen),
    .io_out_0_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmaCmd),
    .io_out_0_bits_ctrl_fpu_div(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_div),
    .io_out_0_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_sqrt),
    .io_out_0_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fcvt),
    .io_out_0_bits_ctrl_fpu_typ(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typ),
    .io_out_0_bits_ctrl_fpu_fmt(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmt),
    .io_out_0_bits_ctrl_fpu_ren3(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_ren3),
    .io_out_0_bits_ctrl_fpu_rm(arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_rm),
    .io_out_0_bits_srcState_0(arbiterOut_arbiter_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(arbiterOut_arbiter_io_out_0_bits_srcState_1),
    .io_out_0_bits_srcState_2(arbiterOut_arbiter_io_out_0_bits_srcState_2),
    .io_out_0_bits_psrc_0(arbiterOut_arbiter_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(arbiterOut_arbiter_io_out_0_bits_psrc_1),
    .io_out_0_bits_psrc_2(arbiterOut_arbiter_io_out_0_bits_psrc_2),
    .io_out_0_bits_pdest(arbiterOut_arbiter_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(arbiterOut_arbiter_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(arbiterOut_arbiter_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(arbiterOut_arbiter_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(arbiterOut_arbiter_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(arbiterOut_arbiter_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(arbiterOut_arbiter_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(arbiterOut_arbiter_io_out_1_ready),
    .io_out_1_valid(arbiterOut_arbiter_io_out_1_valid),
    .io_out_1_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_0),
    .io_out_1_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_1),
    .io_out_1_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_0),
    .io_out_1_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_1),
    .io_out_1_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_2),
    .io_out_1_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_3),
    .io_out_1_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_4),
    .io_out_1_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_5),
    .io_out_1_bits_cf_pd_isRVC(arbiterOut_arbiter_io_out_1_bits_cf_pd_isRVC),
    .io_out_1_bits_cf_pd_brType(arbiterOut_arbiter_io_out_1_bits_cf_pd_brType),
    .io_out_1_bits_cf_pd_isCall(arbiterOut_arbiter_io_out_1_bits_cf_pd_isCall),
    .io_out_1_bits_cf_pd_isRet(arbiterOut_arbiter_io_out_1_bits_cf_pd_isRet),
    .io_out_1_bits_cf_pred_taken(arbiterOut_arbiter_io_out_1_bits_cf_pred_taken),
    .io_out_1_bits_cf_ssid(arbiterOut_arbiter_io_out_1_bits_cf_ssid),
    .io_out_1_bits_cf_ftqPtr_flag(arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_flag),
    .io_out_1_bits_cf_ftqPtr_value(arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_value),
    .io_out_1_bits_cf_ftqOffset(arbiterOut_arbiter_io_out_1_bits_cf_ftqOffset),
    .io_out_1_bits_ctrl_srcType_0(arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_fuType(arbiterOut_arbiter_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(arbiterOut_arbiter_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_isAddSub),
    .io_out_1_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagIn),
    .io_out_1_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagOut),
    .io_out_1_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fromInt),
    .io_out_1_bits_ctrl_fpu_wflags(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_wflags),
    .io_out_1_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fpWen),
    .io_out_1_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmaCmd),
    .io_out_1_bits_ctrl_fpu_div(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_div),
    .io_out_1_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_sqrt),
    .io_out_1_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fcvt),
    .io_out_1_bits_ctrl_fpu_typ(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typ),
    .io_out_1_bits_ctrl_fpu_fmt(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmt),
    .io_out_1_bits_ctrl_fpu_ren3(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_ren3),
    .io_out_1_bits_ctrl_fpu_rm(arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_rm),
    .io_out_1_bits_srcState_0(arbiterOut_arbiter_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(arbiterOut_arbiter_io_out_1_bits_srcState_1),
    .io_out_1_bits_psrc_0(arbiterOut_arbiter_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(arbiterOut_arbiter_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(arbiterOut_arbiter_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(arbiterOut_arbiter_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(arbiterOut_arbiter_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(arbiterOut_arbiter_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(arbiterOut_arbiter_io_out_1_bits_lqIdx_value),
    .io_out_1_bits_sqIdx_flag(arbiterOut_arbiter_io_out_1_bits_sqIdx_flag),
    .io_out_1_bits_sqIdx_value(arbiterOut_arbiter_io_out_1_bits_sqIdx_value)
  );
  DispatchArbiter_2 arbiterOut_arbiter_1 ( // @[Scheduler.scala 53:25]
    .io_in_ready(arbiterOut_arbiter_1_io_in_ready),
    .io_in_valid(arbiterOut_arbiter_1_io_in_valid),
    .io_in_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0),
    .io_in_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1),
    .io_in_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_0),
    .io_in_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_1),
    .io_in_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_2),
    .io_in_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_3),
    .io_in_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_4),
    .io_in_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_5),
    .io_in_bits_cf_pd_isRVC(arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC),
    .io_in_bits_cf_pd_brType(arbiterOut_arbiter_1_io_in_bits_cf_pd_brType),
    .io_in_bits_cf_pd_isCall(arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall),
    .io_in_bits_cf_pd_isRet(arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet),
    .io_in_bits_cf_pred_taken(arbiterOut_arbiter_1_io_in_bits_cf_pred_taken),
    .io_in_bits_cf_ssid(arbiterOut_arbiter_1_io_in_bits_cf_ssid),
    .io_in_bits_cf_ftqPtr_flag(arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag),
    .io_in_bits_cf_ftqPtr_value(arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value),
    .io_in_bits_cf_ftqOffset(arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset),
    .io_in_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0),
    .io_in_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1),
    .io_in_bits_ctrl_srcType_2(arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_2),
    .io_in_bits_ctrl_fuType(arbiterOut_arbiter_1_io_in_bits_ctrl_fuType),
    .io_in_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType),
    .io_in_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen),
    .io_in_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen),
    .io_in_bits_ctrl_imm(arbiterOut_arbiter_1_io_in_bits_ctrl_imm),
    .io_in_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_isAddSub),
    .io_in_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagIn),
    .io_in_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagOut),
    .io_in_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fromInt),
    .io_in_bits_ctrl_fpu_wflags(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_wflags),
    .io_in_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fpWen),
    .io_in_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmaCmd),
    .io_in_bits_ctrl_fpu_div(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_div),
    .io_in_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_sqrt),
    .io_in_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fcvt),
    .io_in_bits_ctrl_fpu_typ(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typ),
    .io_in_bits_ctrl_fpu_fmt(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmt),
    .io_in_bits_ctrl_fpu_ren3(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_ren3),
    .io_in_bits_ctrl_fpu_rm(arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_rm),
    .io_in_bits_srcState_0(arbiterOut_arbiter_1_io_in_bits_srcState_0),
    .io_in_bits_srcState_1(arbiterOut_arbiter_1_io_in_bits_srcState_1),
    .io_in_bits_srcState_2(arbiterOut_arbiter_1_io_in_bits_srcState_2),
    .io_in_bits_psrc_0(arbiterOut_arbiter_1_io_in_bits_psrc_0),
    .io_in_bits_psrc_1(arbiterOut_arbiter_1_io_in_bits_psrc_1),
    .io_in_bits_psrc_2(arbiterOut_arbiter_1_io_in_bits_psrc_2),
    .io_in_bits_pdest(arbiterOut_arbiter_1_io_in_bits_pdest),
    .io_in_bits_robIdx_flag(arbiterOut_arbiter_1_io_in_bits_robIdx_flag),
    .io_in_bits_robIdx_value(arbiterOut_arbiter_1_io_in_bits_robIdx_value),
    .io_in_bits_lqIdx_flag(arbiterOut_arbiter_1_io_in_bits_lqIdx_flag),
    .io_in_bits_lqIdx_value(arbiterOut_arbiter_1_io_in_bits_lqIdx_value),
    .io_in_bits_sqIdx_flag(arbiterOut_arbiter_1_io_in_bits_sqIdx_flag),
    .io_in_bits_sqIdx_value(arbiterOut_arbiter_1_io_in_bits_sqIdx_value),
    .io_out_0_ready(arbiterOut_arbiter_1_io_out_0_ready),
    .io_out_0_valid(arbiterOut_arbiter_1_io_out_0_valid),
    .io_out_0_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0),
    .io_out_0_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1),
    .io_out_0_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_0),
    .io_out_0_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_1),
    .io_out_0_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_2),
    .io_out_0_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_3),
    .io_out_0_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_4),
    .io_out_0_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_5),
    .io_out_0_bits_cf_pd_isRVC(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC),
    .io_out_0_bits_cf_pd_brType(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType),
    .io_out_0_bits_cf_pd_isCall(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall),
    .io_out_0_bits_cf_pd_isRet(arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet),
    .io_out_0_bits_cf_pred_taken(arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken),
    .io_out_0_bits_cf_ssid(arbiterOut_arbiter_1_io_out_0_bits_cf_ssid),
    .io_out_0_bits_cf_ftqPtr_flag(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag),
    .io_out_0_bits_cf_ftqPtr_value(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value),
    .io_out_0_bits_cf_ftqOffset(arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset),
    .io_out_0_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0),
    .io_out_0_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1),
    .io_out_0_bits_ctrl_srcType_2(arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_2),
    .io_out_0_bits_ctrl_fuType(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType),
    .io_out_0_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType),
    .io_out_0_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen),
    .io_out_0_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen),
    .io_out_0_bits_ctrl_imm(arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm),
    .io_out_0_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_isAddSub),
    .io_out_0_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagIn),
    .io_out_0_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagOut),
    .io_out_0_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fromInt),
    .io_out_0_bits_ctrl_fpu_wflags(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_wflags),
    .io_out_0_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fpWen),
    .io_out_0_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmaCmd),
    .io_out_0_bits_ctrl_fpu_div(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_div),
    .io_out_0_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_sqrt),
    .io_out_0_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fcvt),
    .io_out_0_bits_ctrl_fpu_typ(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typ),
    .io_out_0_bits_ctrl_fpu_fmt(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmt),
    .io_out_0_bits_ctrl_fpu_ren3(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_ren3),
    .io_out_0_bits_ctrl_fpu_rm(arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_rm),
    .io_out_0_bits_srcState_0(arbiterOut_arbiter_1_io_out_0_bits_srcState_0),
    .io_out_0_bits_srcState_1(arbiterOut_arbiter_1_io_out_0_bits_srcState_1),
    .io_out_0_bits_srcState_2(arbiterOut_arbiter_1_io_out_0_bits_srcState_2),
    .io_out_0_bits_psrc_0(arbiterOut_arbiter_1_io_out_0_bits_psrc_0),
    .io_out_0_bits_psrc_1(arbiterOut_arbiter_1_io_out_0_bits_psrc_1),
    .io_out_0_bits_psrc_2(arbiterOut_arbiter_1_io_out_0_bits_psrc_2),
    .io_out_0_bits_pdest(arbiterOut_arbiter_1_io_out_0_bits_pdest),
    .io_out_0_bits_robIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag),
    .io_out_0_bits_robIdx_value(arbiterOut_arbiter_1_io_out_0_bits_robIdx_value),
    .io_out_0_bits_lqIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag),
    .io_out_0_bits_lqIdx_value(arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value),
    .io_out_0_bits_sqIdx_flag(arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag),
    .io_out_0_bits_sqIdx_value(arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value),
    .io_out_1_ready(arbiterOut_arbiter_1_io_out_1_ready),
    .io_out_1_valid(arbiterOut_arbiter_1_io_out_1_valid),
    .io_out_1_bits_cf_trigger_backendEn_0(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_0),
    .io_out_1_bits_cf_trigger_backendEn_1(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_1),
    .io_out_1_bits_cf_trigger_backendHit_0(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_0),
    .io_out_1_bits_cf_trigger_backendHit_1(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_1),
    .io_out_1_bits_cf_trigger_backendHit_2(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_2),
    .io_out_1_bits_cf_trigger_backendHit_3(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_3),
    .io_out_1_bits_cf_trigger_backendHit_4(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_4),
    .io_out_1_bits_cf_trigger_backendHit_5(arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_5),
    .io_out_1_bits_cf_pd_isRVC(arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRVC),
    .io_out_1_bits_cf_pd_brType(arbiterOut_arbiter_1_io_out_1_bits_cf_pd_brType),
    .io_out_1_bits_cf_pd_isCall(arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isCall),
    .io_out_1_bits_cf_pd_isRet(arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRet),
    .io_out_1_bits_cf_pred_taken(arbiterOut_arbiter_1_io_out_1_bits_cf_pred_taken),
    .io_out_1_bits_cf_ssid(arbiterOut_arbiter_1_io_out_1_bits_cf_ssid),
    .io_out_1_bits_cf_ftqPtr_flag(arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_flag),
    .io_out_1_bits_cf_ftqPtr_value(arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_value),
    .io_out_1_bits_cf_ftqOffset(arbiterOut_arbiter_1_io_out_1_bits_cf_ftqOffset),
    .io_out_1_bits_ctrl_srcType_0(arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0),
    .io_out_1_bits_ctrl_srcType_1(arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1),
    .io_out_1_bits_ctrl_fuType(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType),
    .io_out_1_bits_ctrl_fuOpType(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType),
    .io_out_1_bits_ctrl_rfWen(arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen),
    .io_out_1_bits_ctrl_fpWen(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen),
    .io_out_1_bits_ctrl_imm(arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm),
    .io_out_1_bits_ctrl_fpu_isAddSub(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_isAddSub),
    .io_out_1_bits_ctrl_fpu_typeTagIn(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagIn),
    .io_out_1_bits_ctrl_fpu_typeTagOut(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagOut),
    .io_out_1_bits_ctrl_fpu_fromInt(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fromInt),
    .io_out_1_bits_ctrl_fpu_wflags(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_wflags),
    .io_out_1_bits_ctrl_fpu_fpWen(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fpWen),
    .io_out_1_bits_ctrl_fpu_fmaCmd(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmaCmd),
    .io_out_1_bits_ctrl_fpu_div(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_div),
    .io_out_1_bits_ctrl_fpu_sqrt(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_sqrt),
    .io_out_1_bits_ctrl_fpu_fcvt(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fcvt),
    .io_out_1_bits_ctrl_fpu_typ(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typ),
    .io_out_1_bits_ctrl_fpu_fmt(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmt),
    .io_out_1_bits_ctrl_fpu_ren3(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_ren3),
    .io_out_1_bits_ctrl_fpu_rm(arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_rm),
    .io_out_1_bits_srcState_0(arbiterOut_arbiter_1_io_out_1_bits_srcState_0),
    .io_out_1_bits_srcState_1(arbiterOut_arbiter_1_io_out_1_bits_srcState_1),
    .io_out_1_bits_psrc_0(arbiterOut_arbiter_1_io_out_1_bits_psrc_0),
    .io_out_1_bits_psrc_1(arbiterOut_arbiter_1_io_out_1_bits_psrc_1),
    .io_out_1_bits_pdest(arbiterOut_arbiter_1_io_out_1_bits_pdest),
    .io_out_1_bits_robIdx_flag(arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag),
    .io_out_1_bits_robIdx_value(arbiterOut_arbiter_1_io_out_1_bits_robIdx_value),
    .io_out_1_bits_lqIdx_flag(arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag),
    .io_out_1_bits_lqIdx_value(arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value),
    .io_out_1_bits_sqIdx_flag(arbiterOut_arbiter_1_io_out_1_bits_sqIdx_flag),
    .io_out_1_bits_sqIdx_value(arbiterOut_arbiter_1_io_out_1_bits_sqIdx_value)
  );
  DifftestArchFpRegState difftest ( // @[Scheduler.scala 520:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_fpr_0(difftest_io_fpr_0),
    .io_fpr_1(difftest_io_fpr_1),
    .io_fpr_2(difftest_io_fpr_2),
    .io_fpr_3(difftest_io_fpr_3),
    .io_fpr_4(difftest_io_fpr_4),
    .io_fpr_5(difftest_io_fpr_5),
    .io_fpr_6(difftest_io_fpr_6),
    .io_fpr_7(difftest_io_fpr_7),
    .io_fpr_8(difftest_io_fpr_8),
    .io_fpr_9(difftest_io_fpr_9),
    .io_fpr_10(difftest_io_fpr_10),
    .io_fpr_11(difftest_io_fpr_11),
    .io_fpr_12(difftest_io_fpr_12),
    .io_fpr_13(difftest_io_fpr_13),
    .io_fpr_14(difftest_io_fpr_14),
    .io_fpr_15(difftest_io_fpr_15),
    .io_fpr_16(difftest_io_fpr_16),
    .io_fpr_17(difftest_io_fpr_17),
    .io_fpr_18(difftest_io_fpr_18),
    .io_fpr_19(difftest_io_fpr_19),
    .io_fpr_20(difftest_io_fpr_20),
    .io_fpr_21(difftest_io_fpr_21),
    .io_fpr_22(difftest_io_fpr_22),
    .io_fpr_23(difftest_io_fpr_23),
    .io_fpr_24(difftest_io_fpr_24),
    .io_fpr_25(difftest_io_fpr_25),
    .io_fpr_26(difftest_io_fpr_26),
    .io_fpr_27(difftest_io_fpr_27),
    .io_fpr_28(difftest_io_fpr_28),
    .io_fpr_29(difftest_io_fpr_29),
    .io_fpr_30(difftest_io_fpr_30),
    .io_fpr_31(difftest_io_fpr_31)
  );
  assign io_in_0_ready = fpDispatch_io_in_0_ready; // @[Scheduler.scala 304:9]
  assign io_in_1_ready = fpDispatch_io_in_1_ready; // @[Scheduler.scala 304:9]
  assign io_issue_0_valid = rs_io_deq_0_valid; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_0 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_1 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_2 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_3 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_4 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_5 = rs_io_deq_0_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_rfWen = rs_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpWen = rs_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpu_isAddSub = rs_io_deq_0_bits_uop_ctrl_fpu_isAddSub; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpu_typeTagIn = rs_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpu_fmaCmd = rs_io_deq_0_bits_uop_ctrl_fpu_fmaCmd; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpu_ren3 = rs_io_deq_0_bits_uop_ctrl_fpu_ren3; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_ctrl_fpu_rm = rs_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_pdest = rs_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_robIdx_flag = rs_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_uop_robIdx_value = rs_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_src_0 = rs_io_deq_0_bits_src_0; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_src_1 = rs_io_deq_0_bits_src_1; // @[Scheduler.scala 410:15]
  assign io_issue_0_bits_src_2 = rs_io_deq_0_bits_src_2; // @[Scheduler.scala 410:15]
  assign io_issue_1_valid = rs_io_deq_1_valid; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_0 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_1 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_2 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_3 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_4 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_5 = rs_io_deq_1_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_rfWen = rs_io_deq_1_bits_uop_ctrl_rfWen; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpWen = rs_io_deq_1_bits_uop_ctrl_fpWen; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpu_isAddSub = rs_io_deq_1_bits_uop_ctrl_fpu_isAddSub; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpu_typeTagIn = rs_io_deq_1_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpu_fmaCmd = rs_io_deq_1_bits_uop_ctrl_fpu_fmaCmd; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpu_ren3 = rs_io_deq_1_bits_uop_ctrl_fpu_ren3; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_ctrl_fpu_rm = rs_io_deq_1_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_pdest = rs_io_deq_1_bits_uop_pdest; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_robIdx_flag = rs_io_deq_1_bits_uop_robIdx_flag; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_uop_robIdx_value = rs_io_deq_1_bits_uop_robIdx_value; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_src_0 = rs_io_deq_1_bits_src_0; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_src_1 = rs_io_deq_1_bits_src_1; // @[Scheduler.scala 410:15]
  assign io_issue_1_bits_src_2 = rs_io_deq_1_bits_src_2; // @[Scheduler.scala 410:15]
  assign io_issue_2_valid = rs_1_io_deq_0_valid; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_0 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_1 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_2 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_3 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_4 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_5 = rs_1_io_deq_0_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_rfWen = rs_1_io_deq_0_bits_uop_ctrl_rfWen; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpWen = rs_1_io_deq_0_bits_uop_ctrl_fpWen; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_typeTagIn = rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_typeTagOut = rs_1_io_deq_0_bits_uop_ctrl_fpu_typeTagOut; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_wflags = rs_1_io_deq_0_bits_uop_ctrl_fpu_wflags; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_fpWen = rs_1_io_deq_0_bits_uop_ctrl_fpu_fpWen; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_div = rs_1_io_deq_0_bits_uop_ctrl_fpu_div; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_sqrt = rs_1_io_deq_0_bits_uop_ctrl_fpu_sqrt; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_fcvt = rs_1_io_deq_0_bits_uop_ctrl_fpu_fcvt; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_typ = rs_1_io_deq_0_bits_uop_ctrl_fpu_typ; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_fmt = rs_1_io_deq_0_bits_uop_ctrl_fpu_fmt; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_ctrl_fpu_rm = rs_1_io_deq_0_bits_uop_ctrl_fpu_rm; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_pdest = rs_1_io_deq_0_bits_uop_pdest; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_robIdx_flag = rs_1_io_deq_0_bits_uop_robIdx_flag; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_uop_robIdx_value = rs_1_io_deq_0_bits_uop_robIdx_value; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_src_0 = rs_1_io_deq_0_bits_src_0; // @[Scheduler.scala 410:15]
  assign io_issue_2_bits_src_1 = rs_1_io_deq_0_bits_src_1; // @[Scheduler.scala 410:15]
  assign io_extra_fpRfReadOut_0_data = fpRfReadData_regfile_io_readPorts_6_data; // @[Scheduler.scala 395:89]
  assign io_extra_fpRfReadOut_1_data = fpRfReadData_regfile_io_readPorts_7_data; // @[Scheduler.scala 395:89]
  assign io_fmaMid_0_in_valid = rs_io_fmaMid_0_in_valid; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_fp_prod_sign = rs_io_fmaMid_0_in_bits_fp_prod_sign; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_fp_prod_exp = rs_io_fmaMid_0_in_bits_fp_prod_exp; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_fp_prod_sig = rs_io_fmaMid_0_in_bits_fp_prod_sig; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_inter_flags_isNaN = rs_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_inter_flags_isInf = rs_io_fmaMid_0_in_bits_inter_flags_isInf; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_inter_flags_isInv = rs_io_fmaMid_0_in_bits_inter_flags_isInv; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_in_bits_inter_flags_overflow = rs_io_fmaMid_0_in_bits_inter_flags_overflow; // @[Scheduler.scala 347:19]
  assign io_fmaMid_0_waitForAdd = rs_io_fmaMid_0_waitForAdd; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_valid = rs_io_fmaMid_1_in_valid; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_fp_prod_sign = rs_io_fmaMid_1_in_bits_fp_prod_sign; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_fp_prod_exp = rs_io_fmaMid_1_in_bits_fp_prod_exp; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_fp_prod_sig = rs_io_fmaMid_1_in_bits_fp_prod_sig; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_inter_flags_isNaN = rs_io_fmaMid_1_in_bits_inter_flags_isNaN; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_inter_flags_isInf = rs_io_fmaMid_1_in_bits_inter_flags_isInf; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_inter_flags_isInv = rs_io_fmaMid_1_in_bits_inter_flags_isInv; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_in_bits_inter_flags_overflow = rs_io_fmaMid_1_in_bits_inter_flags_overflow; // @[Scheduler.scala 347:19]
  assign io_fmaMid_1_waitForAdd = rs_io_fmaMid_1_waitForAdd; // @[Scheduler.scala 347:19]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign fpDispatch_io_in_0_valid = io_in_0_valid; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_0 = io_in_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_1 = io_in_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_2 = io_in_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_3 = io_in_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_4 = io_in_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_trigger_backendHit_5 = io_in_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_srcType_2 = io_in_0_bits_ctrl_srcType_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_psrc_2 = io_in_0_bits_psrc_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_pdest = io_in_0_bits_pdest; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_sqIdx_flag = io_in_0_bits_sqIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_0_bits_sqIdx_value = io_in_0_bits_sqIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_valid = io_in_1_valid; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_0 = io_in_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_1 = io_in_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_2 = io_in_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_3 = io_in_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_4 = io_in_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_trigger_backendHit_5 = io_in_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_srcType_0 = io_in_1_bits_ctrl_srcType_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_srcType_2 = io_in_1_bits_ctrl_srcType_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_imm = io_in_1_bits_ctrl_imm; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_isAddSub = io_in_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_typeTagIn = io_in_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_typeTagOut = io_in_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_fromInt = io_in_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_wflags = io_in_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_fpWen = io_in_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_fmaCmd = io_in_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_div = io_in_1_bits_ctrl_fpu_div; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_sqrt = io_in_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_fcvt = io_in_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_typ = io_in_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_fmt = io_in_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_ren3 = io_in_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_ctrl_fpu_rm = io_in_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_psrc_0 = io_in_1_bits_psrc_0; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_psrc_1 = io_in_1_bits_psrc_1; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_psrc_2 = io_in_1_bits_psrc_2; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_pdest = io_in_1_bits_pdest; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_lqIdx_flag = io_in_1_bits_lqIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_lqIdx_value = io_in_1_bits_lqIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_sqIdx_flag = io_in_1_bits_sqIdx_flag; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_in_1_bits_sqIdx_value = io_in_1_bits_sqIdx_value; // @[Scheduler.scala 304:9]
  assign fpDispatch_io_readFpState_0_resp = fpBusyTable_io_read_2_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_readFpState_1_resp = fpBusyTable_io_read_3_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_readFpState_2_resp = fpBusyTable_io_read_4_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_readFpState_3_resp = fpBusyTable_io_read_5_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_readFpState_4_resp = fpBusyTable_io_read_6_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_readFpState_5_resp = fpBusyTable_io_read_7_resp; // @[Scheduler.scala 336:25]
  assign fpDispatch_io_out_0_ready = arbiterOut_arbiter_io_in_ready; // @[Scheduler.scala 54:19]
  assign fpDispatch_io_out_1_ready = arbiterOut_arbiter_1_io_in_ready; // @[Scheduler.scala 54:19]
  assign rs_clock = clock;
  assign rs_reset = reset;
  assign rs_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 407:20]
  assign rs_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 407:20]
  assign rs_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 407:20]
  assign rs_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 407:20]
  assign rs_io_fromDispatch_0_valid = arbiterOut_arbiter_io_out_0_valid; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_0 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_1 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_2 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_3 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_4 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_trigger_backendHit_5 = arbiterOut_arbiter_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isRVC = arbiterOut_arbiter_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_brType = arbiterOut_arbiter_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isCall = arbiterOut_arbiter_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_pd_isRet = arbiterOut_arbiter_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_pred_taken = arbiterOut_arbiter_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_ssid = arbiterOut_arbiter_io_out_0_bits_cf_ssid; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqPtr_flag = arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqPtr_value = arbiterOut_arbiter_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_cf_ftqOffset = arbiterOut_arbiter_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_srcType_0 = arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_srcType_1 = arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_srcType_2 = arbiterOut_arbiter_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fuType = arbiterOut_arbiter_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fuOpType = arbiterOut_arbiter_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_rfWen = arbiterOut_arbiter_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpWen = arbiterOut_arbiter_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_imm = arbiterOut_arbiter_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_isAddSub = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_fromInt = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_wflags = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_fpWen = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_div = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_sqrt = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_fcvt = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_typ = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_fmt = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_ren3 = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_ctrl_fpu_rm = arbiterOut_arbiter_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_srcState_0 = arbiterOut_arbiter_io_out_0_bits_srcState_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_srcState_1 = arbiterOut_arbiter_io_out_0_bits_srcState_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_srcState_2 = arbiterOut_arbiter_io_out_0_bits_srcState_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_psrc_0 = arbiterOut_arbiter_io_out_0_bits_psrc_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_psrc_1 = arbiterOut_arbiter_io_out_0_bits_psrc_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_psrc_2 = arbiterOut_arbiter_io_out_0_bits_psrc_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_pdest = arbiterOut_arbiter_io_out_0_bits_pdest; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_robIdx_flag = arbiterOut_arbiter_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_robIdx_value = arbiterOut_arbiter_io_out_0_bits_robIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_lqIdx_flag = arbiterOut_arbiter_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_lqIdx_value = arbiterOut_arbiter_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_sqIdx_flag = arbiterOut_arbiter_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_0_bits_sqIdx_value = arbiterOut_arbiter_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_valid = arbiterOut_arbiter_1_io_out_0_valid; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_0 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_1 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_2 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_3 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_4 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_trigger_backendHit_5 = arbiterOut_arbiter_1_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isRVC = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_brType = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isCall = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_pd_isRet = arbiterOut_arbiter_1_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_pred_taken = arbiterOut_arbiter_1_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_ssid = arbiterOut_arbiter_1_io_out_0_bits_cf_ssid; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqPtr_flag = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqPtr_value = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_cf_ftqOffset = arbiterOut_arbiter_1_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_srcType_0 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_srcType_1 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_srcType_2 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fuType = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fuOpType = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_rfWen = arbiterOut_arbiter_1_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpWen = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_imm = arbiterOut_arbiter_1_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_isAddSub = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_fromInt = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_wflags = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_fpWen = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_div = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_sqrt = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_fcvt = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_typ = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_fmt = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_ren3 = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_ctrl_fpu_rm = arbiterOut_arbiter_1_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_srcState_0 = arbiterOut_arbiter_1_io_out_0_bits_srcState_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_srcState_1 = arbiterOut_arbiter_1_io_out_0_bits_srcState_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_srcState_2 = arbiterOut_arbiter_1_io_out_0_bits_srcState_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_psrc_0 = arbiterOut_arbiter_1_io_out_0_bits_psrc_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_psrc_1 = arbiterOut_arbiter_1_io_out_0_bits_psrc_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_psrc_2 = arbiterOut_arbiter_1_io_out_0_bits_psrc_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_pdest = arbiterOut_arbiter_1_io_out_0_bits_pdest; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_robIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_robIdx_value = arbiterOut_arbiter_1_io_out_0_bits_robIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_lqIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_lqIdx_value = arbiterOut_arbiter_1_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_sqIdx_flag = arbiterOut_arbiter_1_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_fromDispatch_1_bits_sqIdx_value = arbiterOut_arbiter_1_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_io_srcRegValue_0_0 = fpRfReadData_regfile_io_readPorts_0_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_srcRegValue_0_1 = fpRfReadData_regfile_io_readPorts_1_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_srcRegValue_0_2 = fpRfReadData_regfile_io_readPorts_2_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_srcRegValue_1_0 = fpRfReadData_regfile_io_readPorts_3_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_srcRegValue_1_1 = fpRfReadData_regfile_io_readPorts_4_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_srcRegValue_1_2 = fpRfReadData_regfile_io_readPorts_5_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_io_deq_0_ready = io_issue_0_ready; // @[Scheduler.scala 410:15]
  assign rs_io_deq_1_ready = io_issue_1_ready; // @[Scheduler.scala 410:15]
  assign rs_io_fastUopsIn_0_valid = io_fastUopIn_7_valid; // @[ReservationStation.scala 205:41]
  assign rs_io_fastUopsIn_0_bits_ctrl_fpWen = io_fastUopIn_7_bits_ctrl_fpWen; // @[ReservationStation.scala 205:41]
  assign rs_io_fastUopsIn_0_bits_pdest = io_fastUopIn_7_bits_pdest; // @[ReservationStation.scala 205:41]
  assign rs_io_fastUopsIn_1_valid = io_fastUopIn_8_valid; // @[ReservationStation.scala 205:41]
  assign rs_io_fastUopsIn_1_bits_ctrl_fpWen = io_fastUopIn_8_bits_ctrl_fpWen; // @[ReservationStation.scala 205:41]
  assign rs_io_fastUopsIn_1_bits_pdest = io_fastUopIn_8_bits_pdest; // @[ReservationStation.scala 205:41]
  assign rs_io_fastDatas_0 = io_writeback_7_bits_data; // @[ReservationStation.scala 206:40]
  assign rs_io_fastDatas_1 = io_writeback_8_bits_data; // @[ReservationStation.scala 206:40]
  assign rs_io_slowPorts_0_valid = io_writeback_7_valid; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_0_bits_uop_ctrl_fpWen = io_writeback_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_0_bits_uop_pdest = io_writeback_7_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_0_bits_data = io_writeback_7_bits_data; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_1_valid = io_writeback_8_valid; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_1_bits_uop_ctrl_fpWen = io_writeback_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_1_bits_uop_pdest = io_writeback_8_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_1_bits_data = io_writeback_8_bits_data; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_2_valid = io_writeback_9_valid; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_2_bits_uop_ctrl_fpWen = io_writeback_9_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_2_bits_uop_pdest = io_writeback_9_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_2_bits_data = io_writeback_9_bits_data; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_3_valid = io_writeback_10_valid; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_3_bits_uop_ctrl_fpWen = io_writeback_10_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_3_bits_uop_pdest = io_writeback_10_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_3_bits_data = io_writeback_10_bits_data; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_4_valid = io_writeback_11_valid; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_4_bits_uop_ctrl_fpWen = io_writeback_11_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_4_bits_uop_pdest = io_writeback_11_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_io_slowPorts_4_bits_data = io_writeback_11_bits_data; // @[Scheduler.scala 441:45]
  assign rs_io_fmaMid_0_out_bits_fp_prod_sign = io_fmaMid_0_out_bits_fp_prod_sign; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_fp_prod_exp = io_fmaMid_0_out_bits_fp_prod_exp; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_fp_prod_sig = io_fmaMid_0_out_bits_fp_prod_sig; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_inter_flags_isNaN = io_fmaMid_0_out_bits_inter_flags_isNaN; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_inter_flags_isInf = io_fmaMid_0_out_bits_inter_flags_isInf; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_inter_flags_isInv = io_fmaMid_0_out_bits_inter_flags_isInv; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_0_out_bits_inter_flags_overflow = io_fmaMid_0_out_bits_inter_flags_overflow; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_fp_prod_sign = io_fmaMid_1_out_bits_fp_prod_sign; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_fp_prod_exp = io_fmaMid_1_out_bits_fp_prod_exp; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_fp_prod_sig = io_fmaMid_1_out_bits_fp_prod_sig; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_inter_flags_isNaN = io_fmaMid_1_out_bits_inter_flags_isNaN; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_inter_flags_isInf = io_fmaMid_1_out_bits_inter_flags_isInf; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_inter_flags_isInv = io_fmaMid_1_out_bits_inter_flags_isInv; // @[Scheduler.scala 347:19]
  assign rs_io_fmaMid_1_out_bits_inter_flags_overflow = io_fmaMid_1_out_bits_inter_flags_overflow; // @[Scheduler.scala 347:19]
  assign rs_1_clock = clock;
  assign rs_1_reset = reset;
  assign rs_1_io_redirect_valid = io_redirect_valid; // @[Scheduler.scala 407:20]
  assign rs_1_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Scheduler.scala 407:20]
  assign rs_1_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Scheduler.scala 407:20]
  assign rs_1_io_redirect_bits_level = io_redirect_bits_level; // @[Scheduler.scala 407:20]
  assign rs_1_io_fromDispatch_0_valid = arbiterOut_arbiter_io_out_1_valid; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_0 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_1 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_2 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_3 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_4 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_trigger_backendHit_5 = arbiterOut_arbiter_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_pd_isRVC = arbiterOut_arbiter_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_pd_brType = arbiterOut_arbiter_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_pd_isCall = arbiterOut_arbiter_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_pd_isRet = arbiterOut_arbiter_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_pred_taken = arbiterOut_arbiter_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_ssid = arbiterOut_arbiter_io_out_1_bits_cf_ssid; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_ftqPtr_flag = arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_ftqPtr_value = arbiterOut_arbiter_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_cf_ftqOffset = arbiterOut_arbiter_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_srcType_0 = arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_srcType_1 = arbiterOut_arbiter_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fuType = arbiterOut_arbiter_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fuOpType = arbiterOut_arbiter_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_rfWen = arbiterOut_arbiter_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpWen = arbiterOut_arbiter_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_imm = arbiterOut_arbiter_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_isAddSub = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_fromInt = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_wflags = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_fpWen = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_div = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_sqrt = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_fcvt = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_typ = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_fmt = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_ren3 = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_ctrl_fpu_rm = arbiterOut_arbiter_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_srcState_0 = arbiterOut_arbiter_io_out_1_bits_srcState_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_srcState_1 = arbiterOut_arbiter_io_out_1_bits_srcState_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_psrc_0 = arbiterOut_arbiter_io_out_1_bits_psrc_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_psrc_1 = arbiterOut_arbiter_io_out_1_bits_psrc_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_pdest = arbiterOut_arbiter_io_out_1_bits_pdest; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_robIdx_flag = arbiterOut_arbiter_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_robIdx_value = arbiterOut_arbiter_io_out_1_bits_robIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_lqIdx_flag = arbiterOut_arbiter_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_lqIdx_value = arbiterOut_arbiter_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_sqIdx_flag = arbiterOut_arbiter_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_0_bits_sqIdx_value = arbiterOut_arbiter_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_valid = arbiterOut_arbiter_1_io_out_1_valid; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_0 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_1 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_2 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_3 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_4 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_trigger_backendHit_5 =
    arbiterOut_arbiter_1_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_pd_isRVC = arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_pd_brType = arbiterOut_arbiter_1_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_pd_isCall = arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_pd_isRet = arbiterOut_arbiter_1_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_pred_taken = arbiterOut_arbiter_1_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_ssid = arbiterOut_arbiter_1_io_out_1_bits_cf_ssid; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_ftqPtr_flag = arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_ftqPtr_value = arbiterOut_arbiter_1_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_cf_ftqOffset = arbiterOut_arbiter_1_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_srcType_0 = arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_srcType_1 = arbiterOut_arbiter_1_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fuType = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fuOpType = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_rfWen = arbiterOut_arbiter_1_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpWen = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_imm = arbiterOut_arbiter_1_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_isAddSub = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_fromInt = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_wflags = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_fpWen = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_div = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_sqrt = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_fcvt = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_typ = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_fmt = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_ren3 = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_ctrl_fpu_rm = arbiterOut_arbiter_1_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_srcState_0 = arbiterOut_arbiter_1_io_out_1_bits_srcState_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_srcState_1 = arbiterOut_arbiter_1_io_out_1_bits_srcState_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_psrc_0 = arbiterOut_arbiter_1_io_out_1_bits_psrc_0; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_psrc_1 = arbiterOut_arbiter_1_io_out_1_bits_psrc_1; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_pdest = arbiterOut_arbiter_1_io_out_1_bits_pdest; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_robIdx_flag = arbiterOut_arbiter_1_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_robIdx_value = arbiterOut_arbiter_1_io_out_1_bits_robIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_lqIdx_flag = arbiterOut_arbiter_1_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_lqIdx_value = arbiterOut_arbiter_1_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_sqIdx_flag = arbiterOut_arbiter_1_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_fromDispatch_1_bits_sqIdx_value = arbiterOut_arbiter_1_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 476:25 477:12]
  assign rs_1_io_srcRegValue_0_0 = fpRfReadData_regfile_io_readPorts_0_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_1_io_srcRegValue_0_1 = fpRfReadData_regfile_io_readPorts_1_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_1_io_srcRegValue_1_0 = fpRfReadData_regfile_io_readPorts_3_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_1_io_srcRegValue_1_1 = fpRfReadData_regfile_io_readPorts_4_data; // @[Scheduler.scala 492:{30,30}]
  assign rs_1_io_deq_0_ready = io_issue_2_ready; // @[Scheduler.scala 410:15]
  assign rs_1_io_fastUopsIn_0_valid = io_fastUopIn_7_valid; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastUopsIn_0_bits_ctrl_fpWen = io_fastUopIn_7_bits_ctrl_fpWen; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastUopsIn_0_bits_pdest = io_fastUopIn_7_bits_pdest; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastUopsIn_1_valid = io_fastUopIn_8_valid; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastUopsIn_1_bits_ctrl_fpWen = io_fastUopIn_8_bits_ctrl_fpWen; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastUopsIn_1_bits_pdest = io_fastUopIn_8_bits_pdest; // @[ReservationStation.scala 205:41]
  assign rs_1_io_fastDatas_0 = io_writeback_7_bits_data; // @[ReservationStation.scala 206:40]
  assign rs_1_io_fastDatas_1 = io_writeback_8_bits_data; // @[ReservationStation.scala 206:40]
  assign rs_1_io_slowPorts_0_valid = io_writeback_7_valid; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_0_bits_uop_ctrl_fpWen = io_writeback_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_0_bits_uop_pdest = io_writeback_7_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_0_bits_data = io_writeback_7_bits_data; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_1_valid = io_writeback_8_valid; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_1_bits_uop_ctrl_fpWen = io_writeback_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_1_bits_uop_pdest = io_writeback_8_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_1_bits_data = io_writeback_8_bits_data; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_2_valid = io_writeback_9_valid; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_2_bits_uop_ctrl_fpWen = io_writeback_9_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_2_bits_uop_pdest = io_writeback_9_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_2_bits_data = io_writeback_9_bits_data; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_3_valid = io_writeback_10_valid; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_3_bits_uop_ctrl_fpWen = io_writeback_10_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_3_bits_uop_pdest = io_writeback_10_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_3_bits_data = io_writeback_10_bits_data; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_4_valid = io_writeback_11_valid; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_4_bits_uop_ctrl_fpWen = io_writeback_11_bits_uop_ctrl_fpWen; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_4_bits_uop_pdest = io_writeback_11_bits_uop_pdest; // @[Scheduler.scala 441:45]
  assign rs_1_io_slowPorts_4_bits_data = io_writeback_11_bits_data; // @[Scheduler.scala 441:45]
  assign fpBusyTable_clock = clock;
  assign fpBusyTable_reset = reset;
  assign fpBusyTable_io_allocPregs_0_valid = io_allocPregs_0_isFp; // @[Scheduler.scala 328:25]
  assign fpBusyTable_io_allocPregs_0_bits = io_allocPregs_0_preg; // @[Scheduler.scala 329:24]
  assign fpBusyTable_io_allocPregs_1_valid = io_allocPregs_1_isFp; // @[Scheduler.scala 328:25]
  assign fpBusyTable_io_allocPregs_1_bits = io_allocPregs_1_preg; // @[Scheduler.scala 329:24]
  assign fpBusyTable_io_allocPregs_2_valid = io_allocPregs_2_isFp; // @[Scheduler.scala 328:25]
  assign fpBusyTable_io_allocPregs_2_bits = io_allocPregs_2_preg; // @[Scheduler.scala 329:24]
  assign fpBusyTable_io_allocPregs_3_valid = io_allocPregs_3_isFp; // @[Scheduler.scala 328:25]
  assign fpBusyTable_io_allocPregs_3_bits = io_allocPregs_3_preg; // @[Scheduler.scala 329:24]
  assign fpBusyTable_io_wbPregs_0_valid = io_writeback_7_valid & io_writeback_7_bits_uop_ctrl_fpWen; // @[Scheduler.scala 332:37]
  assign fpBusyTable_io_wbPregs_0_bits = io_writeback_7_bits_uop_pdest; // @[Scheduler.scala 333:21]
  assign fpBusyTable_io_wbPregs_1_valid = io_writeback_8_valid & io_writeback_8_bits_uop_ctrl_fpWen; // @[Scheduler.scala 332:37]
  assign fpBusyTable_io_wbPregs_1_bits = io_writeback_8_bits_uop_pdest; // @[Scheduler.scala 333:21]
  assign fpBusyTable_io_wbPregs_2_valid = io_writeback_9_valid & io_writeback_9_bits_uop_ctrl_fpWen; // @[Scheduler.scala 332:37]
  assign fpBusyTable_io_wbPregs_2_bits = io_writeback_9_bits_uop_pdest; // @[Scheduler.scala 333:21]
  assign fpBusyTable_io_wbPregs_3_valid = io_writeback_10_valid & io_writeback_10_bits_uop_ctrl_fpWen; // @[Scheduler.scala 332:37]
  assign fpBusyTable_io_wbPregs_3_bits = io_writeback_10_bits_uop_pdest; // @[Scheduler.scala 333:21]
  assign fpBusyTable_io_wbPregs_4_valid = io_writeback_11_valid & io_writeback_11_bits_uop_ctrl_fpWen; // @[Scheduler.scala 332:37]
  assign fpBusyTable_io_wbPregs_4_bits = io_writeback_11_bits_uop_pdest; // @[Scheduler.scala 333:21]
  assign fpBusyTable_io_read_2_req = fpDispatch_io_readFpState_0_req; // @[Scheduler.scala 336:25]
  assign fpBusyTable_io_read_3_req = fpDispatch_io_readFpState_1_req; // @[Scheduler.scala 336:25]
  assign fpBusyTable_io_read_4_req = fpDispatch_io_readFpState_2_req; // @[Scheduler.scala 336:25]
  assign fpBusyTable_io_read_5_req = fpDispatch_io_readFpState_3_req; // @[Scheduler.scala 336:25]
  assign fpBusyTable_io_read_6_req = fpDispatch_io_readFpState_4_req; // @[Scheduler.scala 336:25]
  assign fpBusyTable_io_read_7_req = fpDispatch_io_readFpState_5_req; // @[Scheduler.scala 336:25]
  assign fpRfReadData_regfile_clock = clock;
  assign fpRfReadData_regfile_io_readPorts_0_addr = fpDispatch_io_out_0_bits_psrc_0; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_1_addr = fpDispatch_io_out_0_bits_psrc_1; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_2_addr = fpDispatch_io_out_0_bits_psrc_2; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_3_addr = fpDispatch_io_out_1_bits_psrc_0; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_4_addr = fpDispatch_io_out_1_bits_psrc_1; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_5_addr = fpDispatch_io_out_1_bits_psrc_2; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_6_addr = io_extra_fpRfReadOut_0_addr; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_readPorts_7_addr = io_extra_fpRfReadOut_1_addr; // @[Regfile.scala 88:18]
  assign fpRfReadData_regfile_io_writePorts_0_wen = io_writeback_7_valid; // @[Regfile.scala 92:17]
  assign fpRfReadData_regfile_io_writePorts_0_addr = io_writeback_7_bits_uop_pdest; // @[Regfile.scala 93:18]
  assign fpRfReadData_regfile_io_writePorts_0_data = io_writeback_7_bits_data; // @[Regfile.scala 94:18]
  assign fpRfReadData_regfile_io_writePorts_1_wen = io_writeback_8_valid; // @[Regfile.scala 92:17]
  assign fpRfReadData_regfile_io_writePorts_1_addr = io_writeback_8_bits_uop_pdest; // @[Regfile.scala 93:18]
  assign fpRfReadData_regfile_io_writePorts_1_data = io_writeback_8_bits_data; // @[Regfile.scala 94:18]
  assign fpRfReadData_regfile_io_writePorts_2_wen = io_writeback_9_valid; // @[Regfile.scala 92:17]
  assign fpRfReadData_regfile_io_writePorts_2_addr = io_writeback_9_bits_uop_pdest; // @[Regfile.scala 93:18]
  assign fpRfReadData_regfile_io_writePorts_2_data = io_writeback_9_bits_data; // @[Regfile.scala 94:18]
  assign fpRfReadData_regfile_io_writePorts_3_wen = io_writeback_10_valid; // @[Regfile.scala 92:17]
  assign fpRfReadData_regfile_io_writePorts_3_addr = io_writeback_10_bits_uop_pdest; // @[Regfile.scala 93:18]
  assign fpRfReadData_regfile_io_writePorts_3_data = io_writeback_10_bits_data; // @[Regfile.scala 94:18]
  assign fpRfReadData_regfile_io_writePorts_4_wen = io_writeback_11_valid; // @[Regfile.scala 92:17]
  assign fpRfReadData_regfile_io_writePorts_4_addr = io_writeback_11_bits_uop_pdest; // @[Regfile.scala 93:18]
  assign fpRfReadData_regfile_io_writePorts_4_data = io_writeback_11_bits_data; // @[Regfile.scala 94:18]
  assign fpRfReadData_regfile_io_debug_rports_0_addr = io_extra_debug_fp_rat_0; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_1_addr = io_extra_debug_fp_rat_1; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_2_addr = io_extra_debug_fp_rat_2; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_3_addr = io_extra_debug_fp_rat_3; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_4_addr = io_extra_debug_fp_rat_4; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_5_addr = io_extra_debug_fp_rat_5; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_6_addr = io_extra_debug_fp_rat_6; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_7_addr = io_extra_debug_fp_rat_7; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_8_addr = io_extra_debug_fp_rat_8; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_9_addr = io_extra_debug_fp_rat_9; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_10_addr = io_extra_debug_fp_rat_10; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_11_addr = io_extra_debug_fp_rat_11; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_12_addr = io_extra_debug_fp_rat_12; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_13_addr = io_extra_debug_fp_rat_13; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_14_addr = io_extra_debug_fp_rat_14; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_15_addr = io_extra_debug_fp_rat_15; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_16_addr = io_extra_debug_fp_rat_16; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_17_addr = io_extra_debug_fp_rat_17; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_18_addr = io_extra_debug_fp_rat_18; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_19_addr = io_extra_debug_fp_rat_19; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_20_addr = io_extra_debug_fp_rat_20; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_21_addr = io_extra_debug_fp_rat_21; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_22_addr = io_extra_debug_fp_rat_22; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_23_addr = io_extra_debug_fp_rat_23; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_24_addr = io_extra_debug_fp_rat_24; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_25_addr = io_extra_debug_fp_rat_25; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_26_addr = io_extra_debug_fp_rat_26; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_27_addr = io_extra_debug_fp_rat_27; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_28_addr = io_extra_debug_fp_rat_28; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_29_addr = io_extra_debug_fp_rat_29; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_30_addr = io_extra_debug_fp_rat_30; // @[Regfile.scala 116:18]
  assign fpRfReadData_regfile_io_debug_rports_31_addr = io_extra_debug_fp_rat_31; // @[Regfile.scala 116:18]
  assign arbiterOut_arbiter_io_in_valid = fpDispatch_io_out_0_valid; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_0 = fpDispatch_io_out_0_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendEn_1 = fpDispatch_io_out_0_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_0 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_1 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_2 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_3 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_4 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_trigger_backendHit_5 = fpDispatch_io_out_0_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isRVC = fpDispatch_io_out_0_bits_cf_pd_isRVC; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_brType = fpDispatch_io_out_0_bits_cf_pd_brType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isCall = fpDispatch_io_out_0_bits_cf_pd_isCall; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pd_isRet = fpDispatch_io_out_0_bits_cf_pd_isRet; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_pred_taken = fpDispatch_io_out_0_bits_cf_pred_taken; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ssid = fpDispatch_io_out_0_bits_cf_ssid; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqPtr_flag = fpDispatch_io_out_0_bits_cf_ftqPtr_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqPtr_value = fpDispatch_io_out_0_bits_cf_ftqPtr_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_cf_ftqOffset = fpDispatch_io_out_0_bits_cf_ftqOffset; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_srcType_0 = fpDispatch_io_out_0_bits_ctrl_srcType_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_srcType_1 = fpDispatch_io_out_0_bits_ctrl_srcType_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_srcType_2 = fpDispatch_io_out_0_bits_ctrl_srcType_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fuType = fpDispatch_io_out_0_bits_ctrl_fuType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fuOpType = fpDispatch_io_out_0_bits_ctrl_fuOpType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_rfWen = fpDispatch_io_out_0_bits_ctrl_rfWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpWen = fpDispatch_io_out_0_bits_ctrl_fpWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_imm = fpDispatch_io_out_0_bits_ctrl_imm; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_isAddSub = fpDispatch_io_out_0_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagIn = fpDispatch_io_out_0_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typeTagOut = fpDispatch_io_out_0_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fromInt = fpDispatch_io_out_0_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_wflags = fpDispatch_io_out_0_bits_ctrl_fpu_wflags; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fpWen = fpDispatch_io_out_0_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmaCmd = fpDispatch_io_out_0_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_div = fpDispatch_io_out_0_bits_ctrl_fpu_div; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_sqrt = fpDispatch_io_out_0_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fcvt = fpDispatch_io_out_0_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_typ = fpDispatch_io_out_0_bits_ctrl_fpu_typ; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_fmt = fpDispatch_io_out_0_bits_ctrl_fpu_fmt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_ren3 = fpDispatch_io_out_0_bits_ctrl_fpu_ren3; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_ctrl_fpu_rm = fpDispatch_io_out_0_bits_ctrl_fpu_rm; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_srcState_0 = fpDispatch_io_out_0_bits_srcState_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_srcState_1 = fpDispatch_io_out_0_bits_srcState_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_srcState_2 = fpDispatch_io_out_0_bits_srcState_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_psrc_0 = fpDispatch_io_out_0_bits_psrc_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_psrc_1 = fpDispatch_io_out_0_bits_psrc_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_psrc_2 = fpDispatch_io_out_0_bits_psrc_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_pdest = fpDispatch_io_out_0_bits_pdest; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_robIdx_flag = fpDispatch_io_out_0_bits_robIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_robIdx_value = fpDispatch_io_out_0_bits_robIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_lqIdx_flag = fpDispatch_io_out_0_bits_lqIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_lqIdx_value = fpDispatch_io_out_0_bits_lqIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_sqIdx_flag = fpDispatch_io_out_0_bits_sqIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_in_bits_sqIdx_value = fpDispatch_io_out_0_bits_sqIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_io_out_0_ready = rs_io_fromDispatch_0_ready; // @[Scheduler.scala 476:{25,25}]
  assign arbiterOut_arbiter_io_out_1_ready = rs_1_io_fromDispatch_0_ready; // @[Scheduler.scala 476:{25,25}]
  assign arbiterOut_arbiter_1_io_in_valid = fpDispatch_io_out_1_valid; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_0 = fpDispatch_io_out_1_bits_cf_trigger_backendEn_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendEn_1 = fpDispatch_io_out_1_bits_cf_trigger_backendEn_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_0 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_1 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_2 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_3 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_3; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_4 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_4; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_trigger_backendHit_5 = fpDispatch_io_out_1_bits_cf_trigger_backendHit_5; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isRVC = fpDispatch_io_out_1_bits_cf_pd_isRVC; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_brType = fpDispatch_io_out_1_bits_cf_pd_brType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isCall = fpDispatch_io_out_1_bits_cf_pd_isCall; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pd_isRet = fpDispatch_io_out_1_bits_cf_pd_isRet; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_pred_taken = fpDispatch_io_out_1_bits_cf_pred_taken; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ssid = fpDispatch_io_out_1_bits_cf_ssid; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_flag = fpDispatch_io_out_1_bits_cf_ftqPtr_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqPtr_value = fpDispatch_io_out_1_bits_cf_ftqPtr_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_cf_ftqOffset = fpDispatch_io_out_1_bits_cf_ftqOffset; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_0 = fpDispatch_io_out_1_bits_ctrl_srcType_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_1 = fpDispatch_io_out_1_bits_ctrl_srcType_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_srcType_2 = fpDispatch_io_out_1_bits_ctrl_srcType_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fuType = fpDispatch_io_out_1_bits_ctrl_fuType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fuOpType = fpDispatch_io_out_1_bits_ctrl_fuOpType; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_rfWen = fpDispatch_io_out_1_bits_ctrl_rfWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpWen = fpDispatch_io_out_1_bits_ctrl_fpWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_imm = fpDispatch_io_out_1_bits_ctrl_imm; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_isAddSub = fpDispatch_io_out_1_bits_ctrl_fpu_isAddSub; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagIn = fpDispatch_io_out_1_bits_ctrl_fpu_typeTagIn; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typeTagOut = fpDispatch_io_out_1_bits_ctrl_fpu_typeTagOut; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fromInt = fpDispatch_io_out_1_bits_ctrl_fpu_fromInt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_wflags = fpDispatch_io_out_1_bits_ctrl_fpu_wflags; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fpWen = fpDispatch_io_out_1_bits_ctrl_fpu_fpWen; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmaCmd = fpDispatch_io_out_1_bits_ctrl_fpu_fmaCmd; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_div = fpDispatch_io_out_1_bits_ctrl_fpu_div; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_sqrt = fpDispatch_io_out_1_bits_ctrl_fpu_sqrt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fcvt = fpDispatch_io_out_1_bits_ctrl_fpu_fcvt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_typ = fpDispatch_io_out_1_bits_ctrl_fpu_typ; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_fmt = fpDispatch_io_out_1_bits_ctrl_fpu_fmt; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_ren3 = fpDispatch_io_out_1_bits_ctrl_fpu_ren3; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_ctrl_fpu_rm = fpDispatch_io_out_1_bits_ctrl_fpu_rm; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_srcState_0 = fpDispatch_io_out_1_bits_srcState_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_srcState_1 = fpDispatch_io_out_1_bits_srcState_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_srcState_2 = fpDispatch_io_out_1_bits_srcState_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_psrc_0 = fpDispatch_io_out_1_bits_psrc_0; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_psrc_1 = fpDispatch_io_out_1_bits_psrc_1; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_psrc_2 = fpDispatch_io_out_1_bits_psrc_2; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_pdest = fpDispatch_io_out_1_bits_pdest; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_robIdx_flag = fpDispatch_io_out_1_bits_robIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_robIdx_value = fpDispatch_io_out_1_bits_robIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_lqIdx_flag = fpDispatch_io_out_1_bits_lqIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_lqIdx_value = fpDispatch_io_out_1_bits_lqIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_sqIdx_flag = fpDispatch_io_out_1_bits_sqIdx_flag; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_in_bits_sqIdx_value = fpDispatch_io_out_1_bits_sqIdx_value; // @[Scheduler.scala 54:19]
  assign arbiterOut_arbiter_1_io_out_0_ready = rs_io_fromDispatch_1_ready; // @[Scheduler.scala 476:{25,25}]
  assign arbiterOut_arbiter_1_io_out_1_ready = rs_1_io_fromDispatch_1_ready; // @[Scheduler.scala 476:{25,25}]
  assign difftest_io_clock = clock; // @[Scheduler.scala 521:23]
  assign difftest_io_coreid = io_hartId; // @[Scheduler.scala 522:24]
  assign difftest_io_fpr_0 = REG_1_0; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_1 = REG_1_1; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_2 = REG_1_2; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_3 = REG_1_3; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_4 = REG_1_4; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_5 = REG_1_5; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_6 = REG_1_6; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_7 = REG_1_7; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_8 = REG_1_8; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_9 = REG_1_9; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_10 = REG_1_10; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_11 = REG_1_11; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_12 = REG_1_12; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_13 = REG_1_13; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_14 = REG_1_14; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_15 = REG_1_15; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_16 = REG_1_16; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_17 = REG_1_17; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_18 = REG_1_18; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_19 = REG_1_19; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_20 = REG_1_20; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_21 = REG_1_21; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_22 = REG_1_22; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_23 = REG_1_23; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_24 = REG_1_24; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_25 = REG_1_25; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_26 = REG_1_26; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_27 = REG_1_27; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_28 = REG_1_28; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_29 = REG_1_29; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_30 = REG_1_30; // @[Scheduler.scala 523:21]
  assign difftest_io_fpr_31 = REG_1_31; // @[Scheduler.scala 523:21]
  always @(posedge clock) begin
    REG__0 <= fpRfReadData_regfile_io_debug_rports_0_data; // @[Scheduler.scala 523:{47,47}]
    REG__1 <= fpRfReadData_regfile_io_debug_rports_1_data; // @[Scheduler.scala 523:{47,47}]
    REG__2 <= fpRfReadData_regfile_io_debug_rports_2_data; // @[Scheduler.scala 523:{47,47}]
    REG__3 <= fpRfReadData_regfile_io_debug_rports_3_data; // @[Scheduler.scala 523:{47,47}]
    REG__4 <= fpRfReadData_regfile_io_debug_rports_4_data; // @[Scheduler.scala 523:{47,47}]
    REG__5 <= fpRfReadData_regfile_io_debug_rports_5_data; // @[Scheduler.scala 523:{47,47}]
    REG__6 <= fpRfReadData_regfile_io_debug_rports_6_data; // @[Scheduler.scala 523:{47,47}]
    REG__7 <= fpRfReadData_regfile_io_debug_rports_7_data; // @[Scheduler.scala 523:{47,47}]
    REG__8 <= fpRfReadData_regfile_io_debug_rports_8_data; // @[Scheduler.scala 523:{47,47}]
    REG__9 <= fpRfReadData_regfile_io_debug_rports_9_data; // @[Scheduler.scala 523:{47,47}]
    REG__10 <= fpRfReadData_regfile_io_debug_rports_10_data; // @[Scheduler.scala 523:{47,47}]
    REG__11 <= fpRfReadData_regfile_io_debug_rports_11_data; // @[Scheduler.scala 523:{47,47}]
    REG__12 <= fpRfReadData_regfile_io_debug_rports_12_data; // @[Scheduler.scala 523:{47,47}]
    REG__13 <= fpRfReadData_regfile_io_debug_rports_13_data; // @[Scheduler.scala 523:{47,47}]
    REG__14 <= fpRfReadData_regfile_io_debug_rports_14_data; // @[Scheduler.scala 523:{47,47}]
    REG__15 <= fpRfReadData_regfile_io_debug_rports_15_data; // @[Scheduler.scala 523:{47,47}]
    REG__16 <= fpRfReadData_regfile_io_debug_rports_16_data; // @[Scheduler.scala 523:{47,47}]
    REG__17 <= fpRfReadData_regfile_io_debug_rports_17_data; // @[Scheduler.scala 523:{47,47}]
    REG__18 <= fpRfReadData_regfile_io_debug_rports_18_data; // @[Scheduler.scala 523:{47,47}]
    REG__19 <= fpRfReadData_regfile_io_debug_rports_19_data; // @[Scheduler.scala 523:{47,47}]
    REG__20 <= fpRfReadData_regfile_io_debug_rports_20_data; // @[Scheduler.scala 523:{47,47}]
    REG__21 <= fpRfReadData_regfile_io_debug_rports_21_data; // @[Scheduler.scala 523:{47,47}]
    REG__22 <= fpRfReadData_regfile_io_debug_rports_22_data; // @[Scheduler.scala 523:{47,47}]
    REG__23 <= fpRfReadData_regfile_io_debug_rports_23_data; // @[Scheduler.scala 523:{47,47}]
    REG__24 <= fpRfReadData_regfile_io_debug_rports_24_data; // @[Scheduler.scala 523:{47,47}]
    REG__25 <= fpRfReadData_regfile_io_debug_rports_25_data; // @[Scheduler.scala 523:{47,47}]
    REG__26 <= fpRfReadData_regfile_io_debug_rports_26_data; // @[Scheduler.scala 523:{47,47}]
    REG__27 <= fpRfReadData_regfile_io_debug_rports_27_data; // @[Scheduler.scala 523:{47,47}]
    REG__28 <= fpRfReadData_regfile_io_debug_rports_28_data; // @[Scheduler.scala 523:{47,47}]
    REG__29 <= fpRfReadData_regfile_io_debug_rports_29_data; // @[Scheduler.scala 523:{47,47}]
    REG__30 <= fpRfReadData_regfile_io_debug_rports_30_data; // @[Scheduler.scala 523:{47,47}]
    REG__31 <= fpRfReadData_regfile_io_debug_rports_31_data; // @[Scheduler.scala 523:{47,47}]
    REG_1_0 <= REG__0; // @[Scheduler.scala 523:31]
    REG_1_1 <= REG__1; // @[Scheduler.scala 523:31]
    REG_1_2 <= REG__2; // @[Scheduler.scala 523:31]
    REG_1_3 <= REG__3; // @[Scheduler.scala 523:31]
    REG_1_4 <= REG__4; // @[Scheduler.scala 523:31]
    REG_1_5 <= REG__5; // @[Scheduler.scala 523:31]
    REG_1_6 <= REG__6; // @[Scheduler.scala 523:31]
    REG_1_7 <= REG__7; // @[Scheduler.scala 523:31]
    REG_1_8 <= REG__8; // @[Scheduler.scala 523:31]
    REG_1_9 <= REG__9; // @[Scheduler.scala 523:31]
    REG_1_10 <= REG__10; // @[Scheduler.scala 523:31]
    REG_1_11 <= REG__11; // @[Scheduler.scala 523:31]
    REG_1_12 <= REG__12; // @[Scheduler.scala 523:31]
    REG_1_13 <= REG__13; // @[Scheduler.scala 523:31]
    REG_1_14 <= REG__14; // @[Scheduler.scala 523:31]
    REG_1_15 <= REG__15; // @[Scheduler.scala 523:31]
    REG_1_16 <= REG__16; // @[Scheduler.scala 523:31]
    REG_1_17 <= REG__17; // @[Scheduler.scala 523:31]
    REG_1_18 <= REG__18; // @[Scheduler.scala 523:31]
    REG_1_19 <= REG__19; // @[Scheduler.scala 523:31]
    REG_1_20 <= REG__20; // @[Scheduler.scala 523:31]
    REG_1_21 <= REG__21; // @[Scheduler.scala 523:31]
    REG_1_22 <= REG__22; // @[Scheduler.scala 523:31]
    REG_1_23 <= REG__23; // @[Scheduler.scala 523:31]
    REG_1_24 <= REG__24; // @[Scheduler.scala 523:31]
    REG_1_25 <= REG__25; // @[Scheduler.scala 523:31]
    REG_1_26 <= REG__26; // @[Scheduler.scala 523:31]
    REG_1_27 <= REG__27; // @[Scheduler.scala 523:31]
    REG_1_28 <= REG__28; // @[Scheduler.scala 523:31]
    REG_1_29 <= REG__29; // @[Scheduler.scala 523:31]
    REG_1_30 <= REG__30; // @[Scheduler.scala 523:31]
    REG_1_31 <= REG__31; // @[Scheduler.scala 523:31]
    io_perf_0_value_REG <= _T_2 + _T_3; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_15[1:0]; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= fpBusyTable_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= fpBusyTable_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= fpBusyTable_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= fpBusyTable_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= rs_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= rs_1_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  REG__0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  REG__1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  REG__2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  REG__3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  REG__4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  REG__5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  REG__6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  REG__7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  REG__8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  REG__9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  REG__10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  REG__11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  REG__12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  REG__13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  REG__14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  REG__15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  REG__16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  REG__17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  REG__18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  REG__19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  REG__20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  REG__21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  REG__22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  REG__23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  REG__24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  REG__25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  REG__26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  REG__27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  REG__28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  REG__29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  REG__30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  REG__31 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  REG_1_0 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  REG_1_1 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  REG_1_2 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  REG_1_3 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  REG_1_4 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  REG_1_5 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  REG_1_6 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  REG_1_7 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  REG_1_8 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  REG_1_9 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  REG_1_10 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  REG_1_11 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  REG_1_12 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  REG_1_13 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  REG_1_14 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  REG_1_15 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  REG_1_16 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  REG_1_17 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  REG_1_18 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  REG_1_19 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  REG_1_20 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  REG_1_21 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  REG_1_22 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  REG_1_23 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  REG_1_24 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  REG_1_25 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  REG_1_26 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  REG_1_27 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  REG_1_28 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  REG_1_29 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  REG_1_30 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  REG_1_31 = _RAND_63[63:0];
  _RAND_64 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_68[5:0];
  _RAND_69 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_69[5:0];
  _RAND_70 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_70[5:0];
  _RAND_71 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_71[5:0];
  _RAND_72 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_72[5:0];
  _RAND_73 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_73[5:0];
  _RAND_74 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_74[5:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_75[5:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_76[5:0];
  _RAND_77 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_77[5:0];
  _RAND_78 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_78[5:0];
  _RAND_79 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_79[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
