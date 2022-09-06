module Composer(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc,
  input  [7:0]   io_in_bits_folded_hist_hist_36_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_35_folded_hist,
  input  [12:0]  io_in_bits_folded_hist_hist_34_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_33_folded_hist,
  input  [9:0]   io_in_bits_folded_hist_hist_32_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_31_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_30_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_29_folded_hist,
  input  [10:0]  io_in_bits_folded_hist_hist_28_folded_hist,
  input  [5:0]   io_in_bits_folded_hist_hist_27_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_26_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_25_folded_hist,
  input  [5:0]   io_in_bits_folded_hist_hist_24_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_23_folded_hist,
  input  [11:0]  io_in_bits_folded_hist_hist_22_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_21_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_20_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_19_folded_hist,
  input  [11:0]  io_in_bits_folded_hist_hist_18_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_17_folded_hist,
  input  [9:0]   io_in_bits_folded_hist_hist_16_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_15_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_14_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_hist_13_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_12_folded_hist,
  input  [9:0]   io_in_bits_folded_hist_hist_11_folded_hist,
  input  [4:0]   io_in_bits_folded_hist_hist_10_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_9_folded_hist,
  input  [8:0]   io_in_bits_folded_hist_hist_8_folded_hist,
  input  [3:0]   io_in_bits_folded_hist_hist_7_folded_hist,
  input  [4:0]   io_in_bits_folded_hist_hist_6_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_5_folded_hist,
  input  [5:0]   io_in_bits_folded_hist_hist_4_folded_hist,
  input  [5:0]   io_in_bits_folded_hist_hist_3_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_2_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_hist_1_folded_hist,
  input  [12:0]  io_in_bits_folded_hist_hist_0_folded_hist,
  output [511:0] io_out_last_stage_meta,
  output [38:0]  io_out_resp_s1_pc,
  output [38:0]  io_out_resp_s1_minimal_pred_nextAddr,
  output [2:0]   io_out_resp_s1_minimal_pred_cfiOffset,
  output         io_out_resp_s1_minimal_pred_taken,
  output         io_out_resp_s1_minimal_pred_takenOnBr,
  output [2:0]   io_out_resp_s1_minimal_pred_brNumOH,
  output         io_out_resp_s1_minimal_pred_valid,
  output [38:0]  io_out_resp_s2_pc,
  output         io_out_resp_s2_full_pred_br_taken_mask_0,
  output         io_out_resp_s2_full_pred_br_taken_mask_1,
  output         io_out_resp_s2_full_pred_slot_valids_0,
  output         io_out_resp_s2_full_pred_slot_valids_1,
  output [38:0]  io_out_resp_s2_full_pred_targets_0,
  output [38:0]  io_out_resp_s2_full_pred_targets_1,
  output [2:0]   io_out_resp_s2_full_pred_offsets_0,
  output [2:0]   io_out_resp_s2_full_pred_offsets_1,
  output [38:0]  io_out_resp_s2_full_pred_fallThroughAddr,
  output         io_out_resp_s2_full_pred_fallThroughErr,
  output         io_out_resp_s2_full_pred_is_br_sharing,
  output         io_out_resp_s2_full_pred_hit,
  output [38:0]  io_out_resp_s3_pc,
  output         io_out_resp_s3_full_pred_br_taken_mask_0,
  output         io_out_resp_s3_full_pred_br_taken_mask_1,
  output         io_out_resp_s3_full_pred_slot_valids_0,
  output         io_out_resp_s3_full_pred_slot_valids_1,
  output [38:0]  io_out_resp_s3_full_pred_targets_0,
  output [38:0]  io_out_resp_s3_full_pred_targets_1,
  output [2:0]   io_out_resp_s3_full_pred_offsets_0,
  output [2:0]   io_out_resp_s3_full_pred_offsets_1,
  output [38:0]  io_out_resp_s3_full_pred_fallThroughAddr,
  output         io_out_resp_s3_full_pred_fallThroughErr,
  output         io_out_resp_s3_full_pred_is_br_sharing,
  output         io_out_resp_s3_full_pred_hit,
  output [4:0]   io_out_resp_s3_rasSp,
  output [38:0]  io_out_resp_s3_rasTop_retAddr,
  output [7:0]   io_out_resp_s3_rasTop_ctr,
  output         io_out_resp_s3_ftb_entry_valid,
  output [2:0]   io_out_resp_s3_ftb_entry_brSlots_0_offset,
  output [11:0]  io_out_resp_s3_ftb_entry_brSlots_0_lower,
  output [1:0]   io_out_resp_s3_ftb_entry_brSlots_0_tarStat,
  output         io_out_resp_s3_ftb_entry_brSlots_0_sharing,
  output         io_out_resp_s3_ftb_entry_brSlots_0_valid,
  output [2:0]   io_out_resp_s3_ftb_entry_tailSlot_offset,
  output [19:0]  io_out_resp_s3_ftb_entry_tailSlot_lower,
  output [1:0]   io_out_resp_s3_ftb_entry_tailSlot_tarStat,
  output         io_out_resp_s3_ftb_entry_tailSlot_sharing,
  output         io_out_resp_s3_ftb_entry_tailSlot_valid,
  output [2:0]   io_out_resp_s3_ftb_entry_pftAddr,
  output         io_out_resp_s3_ftb_entry_carry,
  output         io_out_resp_s3_ftb_entry_isCall,
  output         io_out_resp_s3_ftb_entry_isRet,
  output         io_out_resp_s3_ftb_entry_isJalr,
  output         io_out_resp_s3_ftb_entry_last_may_be_rvi_call,
  output         io_out_resp_s3_ftb_entry_always_taken_0,
  output         io_out_resp_s3_ftb_entry_always_taken_1,
  input          io_ctrl_ubtb_enable,
  input          io_ctrl_btb_enable,
  input          io_ctrl_tage_enable,
  input          io_ctrl_sc_enable,
  input          io_ctrl_ras_enable,
  input          io_s0_fire,
  input          io_s1_fire,
  input          io_s2_fire,
  input          io_s3_fire,
  input          io_s3_redirect,
  output         io_s1_ready,
  input          io_update_valid,
  input  [38:0]  io_update_bits_pc,
  input          io_update_bits_full_pred_br_taken_mask_0,
  input          io_update_bits_full_pred_br_taken_mask_1,
  input          io_update_bits_full_pred_slot_valids_0,
  input          io_update_bits_full_pred_slot_valids_1,
  input  [38:0]  io_update_bits_full_pred_targets_0,
  input  [38:0]  io_update_bits_full_pred_targets_1,
  input  [2:0]   io_update_bits_full_pred_offsets_0,
  input  [2:0]   io_update_bits_full_pred_offsets_1,
  input  [38:0]  io_update_bits_full_pred_fallThroughAddr,
  input          io_update_bits_full_pred_is_jalr,
  input          io_update_bits_full_pred_is_ret,
  input          io_update_bits_full_pred_is_br_sharing,
  input  [7:0]   io_update_bits_folded_hist_hist_36_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_35_folded_hist,
  input  [12:0]  io_update_bits_folded_hist_hist_34_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_33_folded_hist,
  input  [9:0]   io_update_bits_folded_hist_hist_32_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_31_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_30_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_29_folded_hist,
  input  [10:0]  io_update_bits_folded_hist_hist_28_folded_hist,
  input  [5:0]   io_update_bits_folded_hist_hist_27_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_26_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_25_folded_hist,
  input  [5:0]   io_update_bits_folded_hist_hist_24_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_23_folded_hist,
  input  [11:0]  io_update_bits_folded_hist_hist_22_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_21_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_20_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_19_folded_hist,
  input  [11:0]  io_update_bits_folded_hist_hist_18_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_17_folded_hist,
  input  [9:0]   io_update_bits_folded_hist_hist_16_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_15_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_14_folded_hist,
  input  [6:0]   io_update_bits_folded_hist_hist_13_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_12_folded_hist,
  input  [9:0]   io_update_bits_folded_hist_hist_11_folded_hist,
  input  [4:0]   io_update_bits_folded_hist_hist_10_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_9_folded_hist,
  input  [8:0]   io_update_bits_folded_hist_hist_8_folded_hist,
  input  [3:0]   io_update_bits_folded_hist_hist_7_folded_hist,
  input  [4:0]   io_update_bits_folded_hist_hist_6_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_5_folded_hist,
  input  [5:0]   io_update_bits_folded_hist_hist_4_folded_hist,
  input  [5:0]   io_update_bits_folded_hist_hist_3_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_2_folded_hist,
  input  [7:0]   io_update_bits_folded_hist_hist_1_folded_hist,
  input  [12:0]  io_update_bits_folded_hist_hist_0_folded_hist,
  input          io_update_bits_ftb_entry_valid,
  input  [2:0]   io_update_bits_ftb_entry_brSlots_0_offset,
  input  [11:0]  io_update_bits_ftb_entry_brSlots_0_lower,
  input  [1:0]   io_update_bits_ftb_entry_brSlots_0_tarStat,
  input          io_update_bits_ftb_entry_brSlots_0_sharing,
  input          io_update_bits_ftb_entry_brSlots_0_valid,
  input  [2:0]   io_update_bits_ftb_entry_tailSlot_offset,
  input  [19:0]  io_update_bits_ftb_entry_tailSlot_lower,
  input  [1:0]   io_update_bits_ftb_entry_tailSlot_tarStat,
  input          io_update_bits_ftb_entry_tailSlot_sharing,
  input          io_update_bits_ftb_entry_tailSlot_valid,
  input  [2:0]   io_update_bits_ftb_entry_pftAddr,
  input          io_update_bits_ftb_entry_carry,
  input          io_update_bits_ftb_entry_isCall,
  input          io_update_bits_ftb_entry_isRet,
  input          io_update_bits_ftb_entry_isJalr,
  input          io_update_bits_ftb_entry_last_may_be_rvi_call,
  input          io_update_bits_ftb_entry_always_taken_0,
  input          io_update_bits_ftb_entry_always_taken_1,
  input          io_update_bits_mispred_mask_0,
  input          io_update_bits_mispred_mask_1,
  input          io_update_bits_mispred_mask_2,
  input          io_update_bits_pred_hit,
  input          io_update_bits_old_entry,
  input  [511:0] io_update_bits_meta,
  input  [38:0]  io_update_bits_full_target,
  input  [1:0]   io_update_bits_from_stage,
  input          io_redirect_valid,
  input          io_redirect_bits_level,
  input  [38:0]  io_redirect_bits_cfiUpdate_pc,
  input          io_redirect_bits_cfiUpdate_pd_isRVC,
  input          io_redirect_bits_cfiUpdate_pd_isCall,
  input          io_redirect_bits_cfiUpdate_pd_isRet,
  input  [4:0]   io_redirect_bits_cfiUpdate_rasSp,
  input  [38:0]  io_redirect_bits_cfiUpdate_rasEntry_retAddr,
  input  [7:0]   io_redirect_bits_cfiUpdate_rasEntry_ctr,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value
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
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 94:23]
  wire  components_2_clock; // @[Parameters.scala 165:23]
  wire  components_2_reset; // @[Parameters.scala 165:23]
  wire [35:0] components_2_io_reset_vector; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_in_bits_s0_pc; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s1_minimal_pred_taken; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s1_minimal_pred_valid; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 165:23]
  wire  components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 165:23]
  wire [511:0] components_2_io_out_last_stage_meta; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_slot_valids_0; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_slot_valids_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s2_full_pred_targets_0; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s2_full_pred_targets_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s2_full_pred_jalr_target; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s2_full_pred_offsets_0; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s2_full_pred_offsets_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s2_full_pred_fallThroughAddr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_fallThroughErr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_is_jalr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_is_call; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_is_ret; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_is_br_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s2_full_pred_hit; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_slot_valids_0; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_slot_valids_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s3_full_pred_targets_0; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s3_full_pred_targets_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s3_full_pred_jalr_target; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s3_full_pred_offsets_0; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s3_full_pred_offsets_1; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_out_resp_s3_full_pred_fallThroughAddr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_fallThroughErr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_is_jalr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_is_call; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_is_ret; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_is_br_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_full_pred_hit; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 165:23]
  wire [11:0] components_2_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 165:23]
  wire [1:0] components_2_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 165:23]
  wire [19:0] components_2_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 165:23]
  wire [1:0] components_2_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_out_resp_s3_ftb_entry_pftAddr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_carry; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_isCall; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_isRet; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_isJalr; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_always_taken_0; // @[Parameters.scala 165:23]
  wire  components_2_io_out_resp_s3_ftb_entry_always_taken_1; // @[Parameters.scala 165:23]
  wire  components_2_io_ctrl_btb_enable; // @[Parameters.scala 165:23]
  wire  components_2_io_s0_fire; // @[Parameters.scala 165:23]
  wire  components_2_io_s1_fire; // @[Parameters.scala 165:23]
  wire  components_2_io_s2_fire; // @[Parameters.scala 165:23]
  wire  components_2_io_s1_ready; // @[Parameters.scala 165:23]
  wire  components_2_io_update_valid; // @[Parameters.scala 165:23]
  wire [38:0] components_2_io_update_bits_pc; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_update_bits_ftb_entry_brSlots_0_offset; // @[Parameters.scala 165:23]
  wire [11:0] components_2_io_update_bits_ftb_entry_brSlots_0_lower; // @[Parameters.scala 165:23]
  wire [1:0] components_2_io_update_bits_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_brSlots_0_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_update_bits_ftb_entry_tailSlot_offset; // @[Parameters.scala 165:23]
  wire [19:0] components_2_io_update_bits_ftb_entry_tailSlot_lower; // @[Parameters.scala 165:23]
  wire [1:0] components_2_io_update_bits_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_tailSlot_sharing; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_tailSlot_valid; // @[Parameters.scala 165:23]
  wire [2:0] components_2_io_update_bits_ftb_entry_pftAddr; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_carry; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_isCall; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_isRet; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_isJalr; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_always_taken_0; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_ftb_entry_always_taken_1; // @[Parameters.scala 165:23]
  wire  components_2_io_update_bits_old_entry; // @[Parameters.scala 165:23]
  wire [511:0] components_2_io_update_bits_meta; // @[Parameters.scala 165:23]
  wire [5:0] components_2_io_perf_0_value; // @[Parameters.scala 165:23]
  wire [5:0] components_2_io_perf_1_value; // @[Parameters.scala 165:23]
  wire  components_0_clock; // @[Parameters.scala 166:24]
  wire  components_0_reset; // @[Parameters.scala 166:24]
  wire [35:0] components_0_io_reset_vector; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_in_bits_s0_pc; // @[Parameters.scala 166:24]
  wire [7:0] components_0_io_in_bits_folded_hist_hist_23_folded_hist; // @[Parameters.scala 166:24]
  wire [511:0] components_0_io_out_last_stage_meta; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 166:24]
  wire [2:0] components_0_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 166:24]
  wire  components_0_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 166:24]
  wire  components_0_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 166:24]
  wire [2:0] components_0_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 166:24]
  wire  components_0_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 166:24]
  wire  components_0_io_ctrl_ubtb_enable; // @[Parameters.scala 166:24]
  wire  components_0_io_s0_fire; // @[Parameters.scala 166:24]
  wire  components_0_io_s1_fire; // @[Parameters.scala 166:24]
  wire  components_0_io_s2_fire; // @[Parameters.scala 166:24]
  wire  components_0_io_update_valid; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_update_bits_pc; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_full_pred_br_taken_mask_0; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_full_pred_br_taken_mask_1; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_full_pred_slot_valids_0; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_full_pred_slot_valids_1; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_update_bits_full_pred_targets_0; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_update_bits_full_pred_targets_1; // @[Parameters.scala 166:24]
  wire [2:0] components_0_io_update_bits_full_pred_offsets_0; // @[Parameters.scala 166:24]
  wire [2:0] components_0_io_update_bits_full_pred_offsets_1; // @[Parameters.scala 166:24]
  wire [38:0] components_0_io_update_bits_full_pred_fallThroughAddr; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_full_pred_is_br_sharing; // @[Parameters.scala 166:24]
  wire [7:0] components_0_io_update_bits_folded_hist_hist_23_folded_hist; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_mispred_mask_0; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_mispred_mask_1; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_mispred_mask_2; // @[Parameters.scala 166:24]
  wire  components_0_io_update_bits_pred_hit; // @[Parameters.scala 166:24]
  wire [511:0] components_0_io_update_bits_meta; // @[Parameters.scala 166:24]
  wire [1:0] components_0_io_update_bits_from_stage; // @[Parameters.scala 166:24]
  wire  components_1_clock; // @[Parameters.scala 168:24]
  wire  components_1_reset; // @[Parameters.scala 168:24]
  wire [35:0] components_1_io_reset_vector; // @[Parameters.scala 168:24]
  wire [38:0] components_1_io_in_bits_s0_pc; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_in_bits_folded_hist_hist_35_folded_hist; // @[Parameters.scala 168:24]
  wire [12:0] components_1_io_in_bits_folded_hist_hist_34_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_in_bits_folded_hist_hist_32_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_in_bits_folded_hist_hist_30_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_in_bits_folded_hist_hist_29_folded_hist; // @[Parameters.scala 168:24]
  wire [10:0] components_1_io_in_bits_folded_hist_hist_28_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_in_bits_folded_hist_hist_27_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_in_bits_folded_hist_hist_26_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_in_bits_folded_hist_hist_25_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_in_bits_folded_hist_hist_24_folded_hist; // @[Parameters.scala 168:24]
  wire [11:0] components_1_io_in_bits_folded_hist_hist_22_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_in_bits_folded_hist_hist_20_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_in_bits_folded_hist_hist_19_folded_hist; // @[Parameters.scala 168:24]
  wire [11:0] components_1_io_in_bits_folded_hist_hist_18_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_in_bits_folded_hist_hist_16_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_in_bits_folded_hist_hist_14_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_in_bits_folded_hist_hist_13_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_in_bits_folded_hist_hist_12_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_in_bits_folded_hist_hist_11_folded_hist; // @[Parameters.scala 168:24]
  wire [4:0] components_1_io_in_bits_folded_hist_hist_10_folded_hist; // @[Parameters.scala 168:24]
  wire [3:0] components_1_io_in_bits_folded_hist_hist_7_folded_hist; // @[Parameters.scala 168:24]
  wire [4:0] components_1_io_in_bits_folded_hist_hist_6_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_in_bits_folded_hist_hist_5_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_in_bits_folded_hist_hist_4_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_in_bits_folded_hist_hist_3_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_in_bits_folded_hist_hist_1_folded_hist; // @[Parameters.scala 168:24]
  wire [12:0] components_1_io_in_bits_folded_hist_hist_0_folded_hist; // @[Parameters.scala 168:24]
  wire [38:0] components_1_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr; // @[Parameters.scala 168:24]
  wire [2:0] components_1_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset; // @[Parameters.scala 168:24]
  wire  components_1_io_in_bits_resp_in_0_s1_minimal_pred_taken; // @[Parameters.scala 168:24]
  wire  components_1_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr; // @[Parameters.scala 168:24]
  wire [2:0] components_1_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH; // @[Parameters.scala 168:24]
  wire  components_1_io_in_bits_resp_in_0_s1_minimal_pred_valid; // @[Parameters.scala 168:24]
  wire [511:0] components_1_io_out_last_stage_meta; // @[Parameters.scala 168:24]
  wire [38:0] components_1_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 168:24]
  wire [2:0] components_1_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 168:24]
  wire [2:0] components_1_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 168:24]
  wire  components_1_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 168:24]
  wire  components_1_io_ctrl_tage_enable; // @[Parameters.scala 168:24]
  wire  components_1_io_ctrl_sc_enable; // @[Parameters.scala 168:24]
  wire  components_1_io_s0_fire; // @[Parameters.scala 168:24]
  wire  components_1_io_s1_fire; // @[Parameters.scala 168:24]
  wire  components_1_io_s2_fire; // @[Parameters.scala 168:24]
  wire  components_1_io_update_valid; // @[Parameters.scala 168:24]
  wire [38:0] components_1_io_update_bits_pc; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_full_pred_br_taken_mask_0; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_full_pred_br_taken_mask_1; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_update_bits_folded_hist_hist_35_folded_hist; // @[Parameters.scala 168:24]
  wire [12:0] components_1_io_update_bits_folded_hist_hist_34_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_update_bits_folded_hist_hist_32_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_update_bits_folded_hist_hist_30_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_update_bits_folded_hist_hist_29_folded_hist; // @[Parameters.scala 168:24]
  wire [10:0] components_1_io_update_bits_folded_hist_hist_28_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_update_bits_folded_hist_hist_27_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_update_bits_folded_hist_hist_26_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_update_bits_folded_hist_hist_25_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_update_bits_folded_hist_hist_24_folded_hist; // @[Parameters.scala 168:24]
  wire [11:0] components_1_io_update_bits_folded_hist_hist_22_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_update_bits_folded_hist_hist_20_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_update_bits_folded_hist_hist_19_folded_hist; // @[Parameters.scala 168:24]
  wire [11:0] components_1_io_update_bits_folded_hist_hist_18_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_update_bits_folded_hist_hist_16_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_update_bits_folded_hist_hist_14_folded_hist; // @[Parameters.scala 168:24]
  wire [6:0] components_1_io_update_bits_folded_hist_hist_13_folded_hist; // @[Parameters.scala 168:24]
  wire [8:0] components_1_io_update_bits_folded_hist_hist_12_folded_hist; // @[Parameters.scala 168:24]
  wire [9:0] components_1_io_update_bits_folded_hist_hist_11_folded_hist; // @[Parameters.scala 168:24]
  wire [4:0] components_1_io_update_bits_folded_hist_hist_10_folded_hist; // @[Parameters.scala 168:24]
  wire [3:0] components_1_io_update_bits_folded_hist_hist_7_folded_hist; // @[Parameters.scala 168:24]
  wire [4:0] components_1_io_update_bits_folded_hist_hist_6_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_update_bits_folded_hist_hist_5_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_update_bits_folded_hist_hist_4_folded_hist; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_update_bits_folded_hist_hist_3_folded_hist; // @[Parameters.scala 168:24]
  wire [7:0] components_1_io_update_bits_folded_hist_hist_1_folded_hist; // @[Parameters.scala 168:24]
  wire [12:0] components_1_io_update_bits_folded_hist_hist_0_folded_hist; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_ftb_entry_brSlots_0_valid; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_ftb_entry_tailSlot_sharing; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_ftb_entry_tailSlot_valid; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_ftb_entry_always_taken_0; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_ftb_entry_always_taken_1; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_mispred_mask_0; // @[Parameters.scala 168:24]
  wire  components_1_io_update_bits_mispred_mask_1; // @[Parameters.scala 168:24]
  wire [511:0] components_1_io_update_bits_meta; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_perf_0_value; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_perf_1_value; // @[Parameters.scala 168:24]
  wire [5:0] components_1_io_perf_2_value; // @[Parameters.scala 168:24]
  wire  components_4_clock; // @[Parameters.scala 169:23]
  wire  components_4_reset; // @[Parameters.scala 169:23]
  wire [35:0] components_4_io_reset_vector; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_s0_pc; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s1_minimal_pred_taken; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s1_minimal_pred_valid; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s2_full_pred_targets_0; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s2_full_pred_targets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s2_full_pred_jalr_target; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_0; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_is_jalr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_is_call; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_is_ret; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s2_full_pred_hit; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s3_full_pred_targets_0; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s3_full_pred_targets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s3_full_pred_jalr_target; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_0; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_is_jalr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_is_call; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_is_ret; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_full_pred_hit; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 169:23]
  wire [11:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 169:23]
  wire [1:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 169:23]
  wire [19:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 169:23]
  wire [1:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_carry; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_isCall; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_isRet; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_isJalr; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0; // @[Parameters.scala 169:23]
  wire  components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s1_pc; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s2_pc; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_slot_valids_0; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_slot_valids_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s2_full_pred_targets_0; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s2_full_pred_targets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s2_full_pred_jalr_target; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s2_full_pred_offsets_0; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s2_full_pred_offsets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s2_full_pred_fallThroughAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_fallThroughErr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_is_br_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s2_full_pred_hit; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_pc; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_slot_valids_0; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_slot_valids_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_full_pred_targets_0; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_full_pred_targets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_full_pred_jalr_target; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s3_full_pred_offsets_0; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s3_full_pred_offsets_1; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_full_pred_fallThroughAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_fallThroughErr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_is_br_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_full_pred_hit; // @[Parameters.scala 169:23]
  wire [4:0] components_4_io_out_resp_s3_rasSp; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_out_resp_s3_rasTop_retAddr; // @[Parameters.scala 169:23]
  wire [7:0] components_4_io_out_resp_s3_rasTop_ctr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 169:23]
  wire [11:0] components_4_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 169:23]
  wire [1:0] components_4_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 169:23]
  wire [19:0] components_4_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 169:23]
  wire [1:0] components_4_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 169:23]
  wire [2:0] components_4_io_out_resp_s3_ftb_entry_pftAddr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_carry; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_isCall; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_isRet; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_isJalr; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_always_taken_0; // @[Parameters.scala 169:23]
  wire  components_4_io_out_resp_s3_ftb_entry_always_taken_1; // @[Parameters.scala 169:23]
  wire  components_4_io_ctrl_ras_enable; // @[Parameters.scala 169:23]
  wire  components_4_io_s0_fire; // @[Parameters.scala 169:23]
  wire  components_4_io_s1_fire; // @[Parameters.scala 169:23]
  wire  components_4_io_s2_fire; // @[Parameters.scala 169:23]
  wire  components_4_io_s3_fire; // @[Parameters.scala 169:23]
  wire  components_4_io_s3_redirect; // @[Parameters.scala 169:23]
  wire  components_4_io_redirect_valid; // @[Parameters.scala 169:23]
  wire  components_4_io_redirect_bits_level; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_redirect_bits_cfiUpdate_pc; // @[Parameters.scala 169:23]
  wire  components_4_io_redirect_bits_cfiUpdate_pd_isRVC; // @[Parameters.scala 169:23]
  wire  components_4_io_redirect_bits_cfiUpdate_pd_isCall; // @[Parameters.scala 169:23]
  wire  components_4_io_redirect_bits_cfiUpdate_pd_isRet; // @[Parameters.scala 169:23]
  wire [4:0] components_4_io_redirect_bits_cfiUpdate_rasSp; // @[Parameters.scala 169:23]
  wire [38:0] components_4_io_redirect_bits_cfiUpdate_rasEntry_retAddr; // @[Parameters.scala 169:23]
  wire [7:0] components_4_io_redirect_bits_cfiUpdate_rasEntry_ctr; // @[Parameters.scala 169:23]
  wire  components_3_clock; // @[Parameters.scala 170:26]
  wire  components_3_reset; // @[Parameters.scala 170:26]
  wire [35:0] components_3_io_reset_vector; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_s0_pc; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_in_bits_folded_hist_hist_36_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_in_bits_folded_hist_hist_33_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_in_bits_folded_hist_hist_31_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_in_bits_folded_hist_hist_26_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_in_bits_folded_hist_hist_21_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_in_bits_folded_hist_hist_17_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_in_bits_folded_hist_hist_15_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_in_bits_folded_hist_hist_9_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_in_bits_folded_hist_hist_8_folded_hist; // @[Parameters.scala 170:26]
  wire [3:0] components_3_io_in_bits_folded_hist_hist_7_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_in_bits_folded_hist_hist_2_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_in_bits_folded_hist_hist_1_folded_hist; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s1_minimal_pred_taken; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s1_minimal_pred_valid; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s2_full_pred_targets_0; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s2_full_pred_targets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s2_full_pred_jalr_target; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_0; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_is_jalr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_is_call; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_is_ret; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s2_full_pred_hit; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s3_full_pred_targets_0; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s3_full_pred_targets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s3_full_pred_jalr_target; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_0; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_is_jalr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_is_call; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_is_ret; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_full_pred_hit; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 170:26]
  wire [11:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 170:26]
  wire [1:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 170:26]
  wire [19:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 170:26]
  wire [1:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_carry; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_isCall; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_isRet; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_isJalr; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0; // @[Parameters.scala 170:26]
  wire  components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1; // @[Parameters.scala 170:26]
  wire [511:0] components_3_io_out_last_stage_meta; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_slot_valids_0; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_slot_valids_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s2_full_pred_targets_0; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s2_full_pred_targets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s2_full_pred_jalr_target; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s2_full_pred_offsets_0; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s2_full_pred_offsets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s2_full_pred_fallThroughAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_fallThroughErr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_is_jalr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_is_call; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_is_ret; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_is_br_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s2_full_pred_hit; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_slot_valids_0; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_slot_valids_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s3_full_pred_targets_0; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s3_full_pred_targets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s3_full_pred_jalr_target; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s3_full_pred_offsets_0; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s3_full_pred_offsets_1; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_out_resp_s3_full_pred_fallThroughAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_fallThroughErr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_is_jalr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_is_call; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_is_ret; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_is_br_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_full_pred_hit; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 170:26]
  wire [11:0] components_3_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 170:26]
  wire [1:0] components_3_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 170:26]
  wire [19:0] components_3_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 170:26]
  wire [1:0] components_3_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 170:26]
  wire [2:0] components_3_io_out_resp_s3_ftb_entry_pftAddr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_carry; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_isCall; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_isRet; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_isJalr; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_always_taken_0; // @[Parameters.scala 170:26]
  wire  components_3_io_out_resp_s3_ftb_entry_always_taken_1; // @[Parameters.scala 170:26]
  wire  components_3_io_s0_fire; // @[Parameters.scala 170:26]
  wire  components_3_io_s1_fire; // @[Parameters.scala 170:26]
  wire  components_3_io_s2_fire; // @[Parameters.scala 170:26]
  wire  components_3_io_s1_ready; // @[Parameters.scala 170:26]
  wire  components_3_io_update_valid; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_update_bits_pc; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_br_taken_mask_0; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_br_taken_mask_1; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_slot_valids_0; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_slot_valids_1; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_is_jalr; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_is_ret; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_full_pred_is_br_sharing; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_update_bits_folded_hist_hist_36_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_update_bits_folded_hist_hist_33_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_update_bits_folded_hist_hist_31_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_update_bits_folded_hist_hist_26_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_update_bits_folded_hist_hist_21_folded_hist; // @[Parameters.scala 170:26]
  wire [6:0] components_3_io_update_bits_folded_hist_hist_17_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_update_bits_folded_hist_hist_15_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_update_bits_folded_hist_hist_9_folded_hist; // @[Parameters.scala 170:26]
  wire [8:0] components_3_io_update_bits_folded_hist_hist_8_folded_hist; // @[Parameters.scala 170:26]
  wire [3:0] components_3_io_update_bits_folded_hist_hist_7_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_update_bits_folded_hist_hist_2_folded_hist; // @[Parameters.scala 170:26]
  wire [7:0] components_3_io_update_bits_folded_hist_hist_1_folded_hist; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_ftb_entry_tailSlot_sharing; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_ftb_entry_tailSlot_valid; // @[Parameters.scala 170:26]
  wire  components_3_io_update_bits_mispred_mask_2; // @[Parameters.scala 170:26]
  wire [511:0] components_3_io_update_bits_meta; // @[Parameters.scala 170:26]
  wire [38:0] components_3_io_update_bits_full_target; // @[Parameters.scala 170:26]
  wire  ubtb_io_ctrl_delay_clock; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_in_ubtb_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_in_btb_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_in_tage_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_in_sc_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_in_ras_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_out_ubtb_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_out_btb_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_out_tage_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_out_sc_enable; // @[Hold.scala 94:23]
  wire  ubtb_io_ctrl_delay_io_out_ras_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_clock; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_in_ubtb_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_in_btb_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_in_tage_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_in_sc_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_in_ras_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_out_ubtb_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_out_btb_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_out_tage_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_out_sc_enable; // @[Hold.scala 94:23]
  wire  tage_io_ctrl_delay_io_out_ras_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_clock; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_in_ubtb_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_in_btb_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_in_tage_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_in_sc_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_in_ras_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_out_ubtb_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_out_btb_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_out_tage_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_out_sc_enable; // @[Hold.scala 94:23]
  wire  ftb_io_ctrl_delay_io_out_ras_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_clock; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_in_ubtb_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_in_btb_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_in_tage_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_in_sc_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_in_ras_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_out_ubtb_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_out_btb_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_out_tage_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_out_sc_enable; // @[Hold.scala 94:23]
  wire  ittage_io_ctrl_delay_io_out_ras_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_clock; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_in_ubtb_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_in_btb_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_in_tage_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_in_sc_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_in_ras_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_out_ubtb_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_out_btb_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_out_tage_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_out_sc_enable; // @[Hold.scala 94:23]
  wire  ras_io_ctrl_delay_io_out_ras_enable; // @[Hold.scala 94:23]
  wire [1:0] _T_6 = {{1'd0}, components_0_io_out_last_stage_meta[0]}; // @[Composer.scala 53:38]
  wire [103:0] _T_7 = {_T_6, 102'h0}; // @[Composer.scala 53:22]
  wire [103:0] _GEN_4 = {{2'd0}, components_1_io_out_last_stage_meta[101:0]}; // @[Composer.scala 53:38]
  wire [103:0] _T_9 = _T_7 | _GEN_4; // @[Composer.scala 53:38]
  wire [106:0] _T_10 = {_T_9, 3'h0}; // @[Composer.scala 53:22]
  wire [106:0] _GEN_5 = {{104'd0}, components_2_io_out_last_stage_meta[2:0]}; // @[Composer.scala 53:38]
  wire [106:0] _T_12 = _T_10 | _GEN_5; // @[Composer.scala 53:38]
  wire [203:0] _T_13 = {_T_12, 97'h0}; // @[Composer.scala 53:22]
  wire [203:0] _GEN_6 = {{107'd0}, components_3_io_out_last_stage_meta[96:0]}; // @[Composer.scala 53:38]
  wire [203:0] metas = _T_13 | _GEN_6; // @[Composer.scala 53:38]
  wire  _io_in_ready_T_2 = components_2_io_s1_ready; // @[Composer.scala 59:57]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 94:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  FTB components_2 ( // @[Parameters.scala 165:23]
    .clock(components_2_clock),
    .reset(components_2_reset),
    .io_reset_vector(components_2_io_reset_vector),
    .io_in_bits_s0_pc(components_2_io_in_bits_s0_pc),
    .io_in_bits_resp_in_0_s1_minimal_pred_nextAddr(components_2_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr),
    .io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset(components_2_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset),
    .io_in_bits_resp_in_0_s1_minimal_pred_taken(components_2_io_in_bits_resp_in_0_s1_minimal_pred_taken),
    .io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr(components_2_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr),
    .io_in_bits_resp_in_0_s1_minimal_pred_brNumOH(components_2_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH),
    .io_in_bits_resp_in_0_s1_minimal_pred_valid(components_2_io_in_bits_resp_in_0_s1_minimal_pred_valid),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0(components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1(components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0(components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1(components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1),
    .io_out_last_stage_meta(components_2_io_out_last_stage_meta),
    .io_out_resp_s1_minimal_pred_nextAddr(components_2_io_out_resp_s1_minimal_pred_nextAddr),
    .io_out_resp_s1_minimal_pred_cfiOffset(components_2_io_out_resp_s1_minimal_pred_cfiOffset),
    .io_out_resp_s1_minimal_pred_taken(components_2_io_out_resp_s1_minimal_pred_taken),
    .io_out_resp_s1_minimal_pred_takenOnBr(components_2_io_out_resp_s1_minimal_pred_takenOnBr),
    .io_out_resp_s1_minimal_pred_brNumOH(components_2_io_out_resp_s1_minimal_pred_brNumOH),
    .io_out_resp_s1_minimal_pred_valid(components_2_io_out_resp_s1_minimal_pred_valid),
    .io_out_resp_s2_full_pred_br_taken_mask_0(components_2_io_out_resp_s2_full_pred_br_taken_mask_0),
    .io_out_resp_s2_full_pred_br_taken_mask_1(components_2_io_out_resp_s2_full_pred_br_taken_mask_1),
    .io_out_resp_s2_full_pred_slot_valids_0(components_2_io_out_resp_s2_full_pred_slot_valids_0),
    .io_out_resp_s2_full_pred_slot_valids_1(components_2_io_out_resp_s2_full_pred_slot_valids_1),
    .io_out_resp_s2_full_pred_targets_0(components_2_io_out_resp_s2_full_pred_targets_0),
    .io_out_resp_s2_full_pred_targets_1(components_2_io_out_resp_s2_full_pred_targets_1),
    .io_out_resp_s2_full_pred_jalr_target(components_2_io_out_resp_s2_full_pred_jalr_target),
    .io_out_resp_s2_full_pred_offsets_0(components_2_io_out_resp_s2_full_pred_offsets_0),
    .io_out_resp_s2_full_pred_offsets_1(components_2_io_out_resp_s2_full_pred_offsets_1),
    .io_out_resp_s2_full_pred_fallThroughAddr(components_2_io_out_resp_s2_full_pred_fallThroughAddr),
    .io_out_resp_s2_full_pred_fallThroughErr(components_2_io_out_resp_s2_full_pred_fallThroughErr),
    .io_out_resp_s2_full_pred_is_jalr(components_2_io_out_resp_s2_full_pred_is_jalr),
    .io_out_resp_s2_full_pred_is_call(components_2_io_out_resp_s2_full_pred_is_call),
    .io_out_resp_s2_full_pred_is_ret(components_2_io_out_resp_s2_full_pred_is_ret),
    .io_out_resp_s2_full_pred_last_may_be_rvi_call(components_2_io_out_resp_s2_full_pred_last_may_be_rvi_call),
    .io_out_resp_s2_full_pred_is_br_sharing(components_2_io_out_resp_s2_full_pred_is_br_sharing),
    .io_out_resp_s2_full_pred_hit(components_2_io_out_resp_s2_full_pred_hit),
    .io_out_resp_s3_full_pred_br_taken_mask_0(components_2_io_out_resp_s3_full_pred_br_taken_mask_0),
    .io_out_resp_s3_full_pred_br_taken_mask_1(components_2_io_out_resp_s3_full_pred_br_taken_mask_1),
    .io_out_resp_s3_full_pred_slot_valids_0(components_2_io_out_resp_s3_full_pred_slot_valids_0),
    .io_out_resp_s3_full_pred_slot_valids_1(components_2_io_out_resp_s3_full_pred_slot_valids_1),
    .io_out_resp_s3_full_pred_targets_0(components_2_io_out_resp_s3_full_pred_targets_0),
    .io_out_resp_s3_full_pred_targets_1(components_2_io_out_resp_s3_full_pred_targets_1),
    .io_out_resp_s3_full_pred_jalr_target(components_2_io_out_resp_s3_full_pred_jalr_target),
    .io_out_resp_s3_full_pred_offsets_0(components_2_io_out_resp_s3_full_pred_offsets_0),
    .io_out_resp_s3_full_pred_offsets_1(components_2_io_out_resp_s3_full_pred_offsets_1),
    .io_out_resp_s3_full_pred_fallThroughAddr(components_2_io_out_resp_s3_full_pred_fallThroughAddr),
    .io_out_resp_s3_full_pred_fallThroughErr(components_2_io_out_resp_s3_full_pred_fallThroughErr),
    .io_out_resp_s3_full_pred_is_jalr(components_2_io_out_resp_s3_full_pred_is_jalr),
    .io_out_resp_s3_full_pred_is_call(components_2_io_out_resp_s3_full_pred_is_call),
    .io_out_resp_s3_full_pred_is_ret(components_2_io_out_resp_s3_full_pred_is_ret),
    .io_out_resp_s3_full_pred_is_br_sharing(components_2_io_out_resp_s3_full_pred_is_br_sharing),
    .io_out_resp_s3_full_pred_hit(components_2_io_out_resp_s3_full_pred_hit),
    .io_out_resp_s3_ftb_entry_valid(components_2_io_out_resp_s3_ftb_entry_valid),
    .io_out_resp_s3_ftb_entry_brSlots_0_offset(components_2_io_out_resp_s3_ftb_entry_brSlots_0_offset),
    .io_out_resp_s3_ftb_entry_brSlots_0_lower(components_2_io_out_resp_s3_ftb_entry_brSlots_0_lower),
    .io_out_resp_s3_ftb_entry_brSlots_0_tarStat(components_2_io_out_resp_s3_ftb_entry_brSlots_0_tarStat),
    .io_out_resp_s3_ftb_entry_brSlots_0_sharing(components_2_io_out_resp_s3_ftb_entry_brSlots_0_sharing),
    .io_out_resp_s3_ftb_entry_brSlots_0_valid(components_2_io_out_resp_s3_ftb_entry_brSlots_0_valid),
    .io_out_resp_s3_ftb_entry_tailSlot_offset(components_2_io_out_resp_s3_ftb_entry_tailSlot_offset),
    .io_out_resp_s3_ftb_entry_tailSlot_lower(components_2_io_out_resp_s3_ftb_entry_tailSlot_lower),
    .io_out_resp_s3_ftb_entry_tailSlot_tarStat(components_2_io_out_resp_s3_ftb_entry_tailSlot_tarStat),
    .io_out_resp_s3_ftb_entry_tailSlot_sharing(components_2_io_out_resp_s3_ftb_entry_tailSlot_sharing),
    .io_out_resp_s3_ftb_entry_tailSlot_valid(components_2_io_out_resp_s3_ftb_entry_tailSlot_valid),
    .io_out_resp_s3_ftb_entry_pftAddr(components_2_io_out_resp_s3_ftb_entry_pftAddr),
    .io_out_resp_s3_ftb_entry_carry(components_2_io_out_resp_s3_ftb_entry_carry),
    .io_out_resp_s3_ftb_entry_isCall(components_2_io_out_resp_s3_ftb_entry_isCall),
    .io_out_resp_s3_ftb_entry_isRet(components_2_io_out_resp_s3_ftb_entry_isRet),
    .io_out_resp_s3_ftb_entry_isJalr(components_2_io_out_resp_s3_ftb_entry_isJalr),
    .io_out_resp_s3_ftb_entry_last_may_be_rvi_call(components_2_io_out_resp_s3_ftb_entry_last_may_be_rvi_call),
    .io_out_resp_s3_ftb_entry_always_taken_0(components_2_io_out_resp_s3_ftb_entry_always_taken_0),
    .io_out_resp_s3_ftb_entry_always_taken_1(components_2_io_out_resp_s3_ftb_entry_always_taken_1),
    .io_ctrl_btb_enable(components_2_io_ctrl_btb_enable),
    .io_s0_fire(components_2_io_s0_fire),
    .io_s1_fire(components_2_io_s1_fire),
    .io_s2_fire(components_2_io_s2_fire),
    .io_s1_ready(components_2_io_s1_ready),
    .io_update_valid(components_2_io_update_valid),
    .io_update_bits_pc(components_2_io_update_bits_pc),
    .io_update_bits_ftb_entry_valid(components_2_io_update_bits_ftb_entry_valid),
    .io_update_bits_ftb_entry_brSlots_0_offset(components_2_io_update_bits_ftb_entry_brSlots_0_offset),
    .io_update_bits_ftb_entry_brSlots_0_lower(components_2_io_update_bits_ftb_entry_brSlots_0_lower),
    .io_update_bits_ftb_entry_brSlots_0_tarStat(components_2_io_update_bits_ftb_entry_brSlots_0_tarStat),
    .io_update_bits_ftb_entry_brSlots_0_sharing(components_2_io_update_bits_ftb_entry_brSlots_0_sharing),
    .io_update_bits_ftb_entry_brSlots_0_valid(components_2_io_update_bits_ftb_entry_brSlots_0_valid),
    .io_update_bits_ftb_entry_tailSlot_offset(components_2_io_update_bits_ftb_entry_tailSlot_offset),
    .io_update_bits_ftb_entry_tailSlot_lower(components_2_io_update_bits_ftb_entry_tailSlot_lower),
    .io_update_bits_ftb_entry_tailSlot_tarStat(components_2_io_update_bits_ftb_entry_tailSlot_tarStat),
    .io_update_bits_ftb_entry_tailSlot_sharing(components_2_io_update_bits_ftb_entry_tailSlot_sharing),
    .io_update_bits_ftb_entry_tailSlot_valid(components_2_io_update_bits_ftb_entry_tailSlot_valid),
    .io_update_bits_ftb_entry_pftAddr(components_2_io_update_bits_ftb_entry_pftAddr),
    .io_update_bits_ftb_entry_carry(components_2_io_update_bits_ftb_entry_carry),
    .io_update_bits_ftb_entry_isCall(components_2_io_update_bits_ftb_entry_isCall),
    .io_update_bits_ftb_entry_isRet(components_2_io_update_bits_ftb_entry_isRet),
    .io_update_bits_ftb_entry_isJalr(components_2_io_update_bits_ftb_entry_isJalr),
    .io_update_bits_ftb_entry_last_may_be_rvi_call(components_2_io_update_bits_ftb_entry_last_may_be_rvi_call),
    .io_update_bits_ftb_entry_always_taken_0(components_2_io_update_bits_ftb_entry_always_taken_0),
    .io_update_bits_ftb_entry_always_taken_1(components_2_io_update_bits_ftb_entry_always_taken_1),
    .io_update_bits_old_entry(components_2_io_update_bits_old_entry),
    .io_update_bits_meta(components_2_io_update_bits_meta),
    .io_perf_0_value(components_2_io_perf_0_value),
    .io_perf_1_value(components_2_io_perf_1_value)
  );
  MicroBTB components_0 ( // @[Parameters.scala 166:24]
    .clock(components_0_clock),
    .reset(components_0_reset),
    .io_reset_vector(components_0_io_reset_vector),
    .io_in_bits_s0_pc(components_0_io_in_bits_s0_pc),
    .io_in_bits_folded_hist_hist_23_folded_hist(components_0_io_in_bits_folded_hist_hist_23_folded_hist),
    .io_out_last_stage_meta(components_0_io_out_last_stage_meta),
    .io_out_resp_s1_minimal_pred_nextAddr(components_0_io_out_resp_s1_minimal_pred_nextAddr),
    .io_out_resp_s1_minimal_pred_cfiOffset(components_0_io_out_resp_s1_minimal_pred_cfiOffset),
    .io_out_resp_s1_minimal_pred_taken(components_0_io_out_resp_s1_minimal_pred_taken),
    .io_out_resp_s1_minimal_pred_takenOnBr(components_0_io_out_resp_s1_minimal_pred_takenOnBr),
    .io_out_resp_s1_minimal_pred_brNumOH(components_0_io_out_resp_s1_minimal_pred_brNumOH),
    .io_out_resp_s1_minimal_pred_valid(components_0_io_out_resp_s1_minimal_pred_valid),
    .io_ctrl_ubtb_enable(components_0_io_ctrl_ubtb_enable),
    .io_s0_fire(components_0_io_s0_fire),
    .io_s1_fire(components_0_io_s1_fire),
    .io_s2_fire(components_0_io_s2_fire),
    .io_update_valid(components_0_io_update_valid),
    .io_update_bits_pc(components_0_io_update_bits_pc),
    .io_update_bits_full_pred_br_taken_mask_0(components_0_io_update_bits_full_pred_br_taken_mask_0),
    .io_update_bits_full_pred_br_taken_mask_1(components_0_io_update_bits_full_pred_br_taken_mask_1),
    .io_update_bits_full_pred_slot_valids_0(components_0_io_update_bits_full_pred_slot_valids_0),
    .io_update_bits_full_pred_slot_valids_1(components_0_io_update_bits_full_pred_slot_valids_1),
    .io_update_bits_full_pred_targets_0(components_0_io_update_bits_full_pred_targets_0),
    .io_update_bits_full_pred_targets_1(components_0_io_update_bits_full_pred_targets_1),
    .io_update_bits_full_pred_offsets_0(components_0_io_update_bits_full_pred_offsets_0),
    .io_update_bits_full_pred_offsets_1(components_0_io_update_bits_full_pred_offsets_1),
    .io_update_bits_full_pred_fallThroughAddr(components_0_io_update_bits_full_pred_fallThroughAddr),
    .io_update_bits_full_pred_is_br_sharing(components_0_io_update_bits_full_pred_is_br_sharing),
    .io_update_bits_folded_hist_hist_23_folded_hist(components_0_io_update_bits_folded_hist_hist_23_folded_hist),
    .io_update_bits_mispred_mask_0(components_0_io_update_bits_mispred_mask_0),
    .io_update_bits_mispred_mask_1(components_0_io_update_bits_mispred_mask_1),
    .io_update_bits_mispred_mask_2(components_0_io_update_bits_mispred_mask_2),
    .io_update_bits_pred_hit(components_0_io_update_bits_pred_hit),
    .io_update_bits_meta(components_0_io_update_bits_meta),
    .io_update_bits_from_stage(components_0_io_update_bits_from_stage)
  );
  Tage_SC components_1 ( // @[Parameters.scala 168:24]
    .clock(components_1_clock),
    .reset(components_1_reset),
    .io_reset_vector(components_1_io_reset_vector),
    .io_in_bits_s0_pc(components_1_io_in_bits_s0_pc),
    .io_in_bits_folded_hist_hist_35_folded_hist(components_1_io_in_bits_folded_hist_hist_35_folded_hist),
    .io_in_bits_folded_hist_hist_34_folded_hist(components_1_io_in_bits_folded_hist_hist_34_folded_hist),
    .io_in_bits_folded_hist_hist_32_folded_hist(components_1_io_in_bits_folded_hist_hist_32_folded_hist),
    .io_in_bits_folded_hist_hist_30_folded_hist(components_1_io_in_bits_folded_hist_hist_30_folded_hist),
    .io_in_bits_folded_hist_hist_29_folded_hist(components_1_io_in_bits_folded_hist_hist_29_folded_hist),
    .io_in_bits_folded_hist_hist_28_folded_hist(components_1_io_in_bits_folded_hist_hist_28_folded_hist),
    .io_in_bits_folded_hist_hist_27_folded_hist(components_1_io_in_bits_folded_hist_hist_27_folded_hist),
    .io_in_bits_folded_hist_hist_26_folded_hist(components_1_io_in_bits_folded_hist_hist_26_folded_hist),
    .io_in_bits_folded_hist_hist_25_folded_hist(components_1_io_in_bits_folded_hist_hist_25_folded_hist),
    .io_in_bits_folded_hist_hist_24_folded_hist(components_1_io_in_bits_folded_hist_hist_24_folded_hist),
    .io_in_bits_folded_hist_hist_22_folded_hist(components_1_io_in_bits_folded_hist_hist_22_folded_hist),
    .io_in_bits_folded_hist_hist_20_folded_hist(components_1_io_in_bits_folded_hist_hist_20_folded_hist),
    .io_in_bits_folded_hist_hist_19_folded_hist(components_1_io_in_bits_folded_hist_hist_19_folded_hist),
    .io_in_bits_folded_hist_hist_18_folded_hist(components_1_io_in_bits_folded_hist_hist_18_folded_hist),
    .io_in_bits_folded_hist_hist_16_folded_hist(components_1_io_in_bits_folded_hist_hist_16_folded_hist),
    .io_in_bits_folded_hist_hist_14_folded_hist(components_1_io_in_bits_folded_hist_hist_14_folded_hist),
    .io_in_bits_folded_hist_hist_13_folded_hist(components_1_io_in_bits_folded_hist_hist_13_folded_hist),
    .io_in_bits_folded_hist_hist_12_folded_hist(components_1_io_in_bits_folded_hist_hist_12_folded_hist),
    .io_in_bits_folded_hist_hist_11_folded_hist(components_1_io_in_bits_folded_hist_hist_11_folded_hist),
    .io_in_bits_folded_hist_hist_10_folded_hist(components_1_io_in_bits_folded_hist_hist_10_folded_hist),
    .io_in_bits_folded_hist_hist_7_folded_hist(components_1_io_in_bits_folded_hist_hist_7_folded_hist),
    .io_in_bits_folded_hist_hist_6_folded_hist(components_1_io_in_bits_folded_hist_hist_6_folded_hist),
    .io_in_bits_folded_hist_hist_5_folded_hist(components_1_io_in_bits_folded_hist_hist_5_folded_hist),
    .io_in_bits_folded_hist_hist_4_folded_hist(components_1_io_in_bits_folded_hist_hist_4_folded_hist),
    .io_in_bits_folded_hist_hist_3_folded_hist(components_1_io_in_bits_folded_hist_hist_3_folded_hist),
    .io_in_bits_folded_hist_hist_1_folded_hist(components_1_io_in_bits_folded_hist_hist_1_folded_hist),
    .io_in_bits_folded_hist_hist_0_folded_hist(components_1_io_in_bits_folded_hist_hist_0_folded_hist),
    .io_in_bits_resp_in_0_s1_minimal_pred_nextAddr(components_1_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr),
    .io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset(components_1_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset),
    .io_in_bits_resp_in_0_s1_minimal_pred_taken(components_1_io_in_bits_resp_in_0_s1_minimal_pred_taken),
    .io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr(components_1_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr),
    .io_in_bits_resp_in_0_s1_minimal_pred_brNumOH(components_1_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH),
    .io_in_bits_resp_in_0_s1_minimal_pred_valid(components_1_io_in_bits_resp_in_0_s1_minimal_pred_valid),
    .io_out_last_stage_meta(components_1_io_out_last_stage_meta),
    .io_out_resp_s1_minimal_pred_nextAddr(components_1_io_out_resp_s1_minimal_pred_nextAddr),
    .io_out_resp_s1_minimal_pred_cfiOffset(components_1_io_out_resp_s1_minimal_pred_cfiOffset),
    .io_out_resp_s1_minimal_pred_taken(components_1_io_out_resp_s1_minimal_pred_taken),
    .io_out_resp_s1_minimal_pred_takenOnBr(components_1_io_out_resp_s1_minimal_pred_takenOnBr),
    .io_out_resp_s1_minimal_pred_brNumOH(components_1_io_out_resp_s1_minimal_pred_brNumOH),
    .io_out_resp_s1_minimal_pred_valid(components_1_io_out_resp_s1_minimal_pred_valid),
    .io_out_resp_s2_full_pred_br_taken_mask_0(components_1_io_out_resp_s2_full_pred_br_taken_mask_0),
    .io_out_resp_s2_full_pred_br_taken_mask_1(components_1_io_out_resp_s2_full_pred_br_taken_mask_1),
    .io_out_resp_s3_full_pred_br_taken_mask_0(components_1_io_out_resp_s3_full_pred_br_taken_mask_0),
    .io_out_resp_s3_full_pred_br_taken_mask_1(components_1_io_out_resp_s3_full_pred_br_taken_mask_1),
    .io_ctrl_tage_enable(components_1_io_ctrl_tage_enable),
    .io_ctrl_sc_enable(components_1_io_ctrl_sc_enable),
    .io_s0_fire(components_1_io_s0_fire),
    .io_s1_fire(components_1_io_s1_fire),
    .io_s2_fire(components_1_io_s2_fire),
    .io_update_valid(components_1_io_update_valid),
    .io_update_bits_pc(components_1_io_update_bits_pc),
    .io_update_bits_full_pred_br_taken_mask_0(components_1_io_update_bits_full_pred_br_taken_mask_0),
    .io_update_bits_full_pred_br_taken_mask_1(components_1_io_update_bits_full_pred_br_taken_mask_1),
    .io_update_bits_folded_hist_hist_35_folded_hist(components_1_io_update_bits_folded_hist_hist_35_folded_hist),
    .io_update_bits_folded_hist_hist_34_folded_hist(components_1_io_update_bits_folded_hist_hist_34_folded_hist),
    .io_update_bits_folded_hist_hist_32_folded_hist(components_1_io_update_bits_folded_hist_hist_32_folded_hist),
    .io_update_bits_folded_hist_hist_30_folded_hist(components_1_io_update_bits_folded_hist_hist_30_folded_hist),
    .io_update_bits_folded_hist_hist_29_folded_hist(components_1_io_update_bits_folded_hist_hist_29_folded_hist),
    .io_update_bits_folded_hist_hist_28_folded_hist(components_1_io_update_bits_folded_hist_hist_28_folded_hist),
    .io_update_bits_folded_hist_hist_27_folded_hist(components_1_io_update_bits_folded_hist_hist_27_folded_hist),
    .io_update_bits_folded_hist_hist_26_folded_hist(components_1_io_update_bits_folded_hist_hist_26_folded_hist),
    .io_update_bits_folded_hist_hist_25_folded_hist(components_1_io_update_bits_folded_hist_hist_25_folded_hist),
    .io_update_bits_folded_hist_hist_24_folded_hist(components_1_io_update_bits_folded_hist_hist_24_folded_hist),
    .io_update_bits_folded_hist_hist_22_folded_hist(components_1_io_update_bits_folded_hist_hist_22_folded_hist),
    .io_update_bits_folded_hist_hist_20_folded_hist(components_1_io_update_bits_folded_hist_hist_20_folded_hist),
    .io_update_bits_folded_hist_hist_19_folded_hist(components_1_io_update_bits_folded_hist_hist_19_folded_hist),
    .io_update_bits_folded_hist_hist_18_folded_hist(components_1_io_update_bits_folded_hist_hist_18_folded_hist),
    .io_update_bits_folded_hist_hist_16_folded_hist(components_1_io_update_bits_folded_hist_hist_16_folded_hist),
    .io_update_bits_folded_hist_hist_14_folded_hist(components_1_io_update_bits_folded_hist_hist_14_folded_hist),
    .io_update_bits_folded_hist_hist_13_folded_hist(components_1_io_update_bits_folded_hist_hist_13_folded_hist),
    .io_update_bits_folded_hist_hist_12_folded_hist(components_1_io_update_bits_folded_hist_hist_12_folded_hist),
    .io_update_bits_folded_hist_hist_11_folded_hist(components_1_io_update_bits_folded_hist_hist_11_folded_hist),
    .io_update_bits_folded_hist_hist_10_folded_hist(components_1_io_update_bits_folded_hist_hist_10_folded_hist),
    .io_update_bits_folded_hist_hist_7_folded_hist(components_1_io_update_bits_folded_hist_hist_7_folded_hist),
    .io_update_bits_folded_hist_hist_6_folded_hist(components_1_io_update_bits_folded_hist_hist_6_folded_hist),
    .io_update_bits_folded_hist_hist_5_folded_hist(components_1_io_update_bits_folded_hist_hist_5_folded_hist),
    .io_update_bits_folded_hist_hist_4_folded_hist(components_1_io_update_bits_folded_hist_hist_4_folded_hist),
    .io_update_bits_folded_hist_hist_3_folded_hist(components_1_io_update_bits_folded_hist_hist_3_folded_hist),
    .io_update_bits_folded_hist_hist_1_folded_hist(components_1_io_update_bits_folded_hist_hist_1_folded_hist),
    .io_update_bits_folded_hist_hist_0_folded_hist(components_1_io_update_bits_folded_hist_hist_0_folded_hist),
    .io_update_bits_ftb_entry_brSlots_0_valid(components_1_io_update_bits_ftb_entry_brSlots_0_valid),
    .io_update_bits_ftb_entry_tailSlot_sharing(components_1_io_update_bits_ftb_entry_tailSlot_sharing),
    .io_update_bits_ftb_entry_tailSlot_valid(components_1_io_update_bits_ftb_entry_tailSlot_valid),
    .io_update_bits_ftb_entry_always_taken_0(components_1_io_update_bits_ftb_entry_always_taken_0),
    .io_update_bits_ftb_entry_always_taken_1(components_1_io_update_bits_ftb_entry_always_taken_1),
    .io_update_bits_mispred_mask_0(components_1_io_update_bits_mispred_mask_0),
    .io_update_bits_mispred_mask_1(components_1_io_update_bits_mispred_mask_1),
    .io_update_bits_meta(components_1_io_update_bits_meta),
    .io_perf_0_value(components_1_io_perf_0_value),
    .io_perf_1_value(components_1_io_perf_1_value),
    .io_perf_2_value(components_1_io_perf_2_value)
  );
  RAS components_4 ( // @[Parameters.scala 169:23]
    .clock(components_4_clock),
    .reset(components_4_reset),
    .io_reset_vector(components_4_io_reset_vector),
    .io_in_bits_s0_pc(components_4_io_in_bits_s0_pc),
    .io_in_bits_resp_in_0_s1_minimal_pred_nextAddr(components_4_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr),
    .io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset(components_4_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset),
    .io_in_bits_resp_in_0_s1_minimal_pred_taken(components_4_io_in_bits_resp_in_0_s1_minimal_pred_taken),
    .io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr(components_4_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr),
    .io_in_bits_resp_in_0_s1_minimal_pred_brNumOH(components_4_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH),
    .io_in_bits_resp_in_0_s1_minimal_pred_valid(components_4_io_in_bits_resp_in_0_s1_minimal_pred_valid),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0(components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1(components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1),
    .io_in_bits_resp_in_0_s2_full_pred_slot_valids_0(components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0),
    .io_in_bits_resp_in_0_s2_full_pred_slot_valids_1(components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1),
    .io_in_bits_resp_in_0_s2_full_pred_targets_0(components_4_io_in_bits_resp_in_0_s2_full_pred_targets_0),
    .io_in_bits_resp_in_0_s2_full_pred_targets_1(components_4_io_in_bits_resp_in_0_s2_full_pred_targets_1),
    .io_in_bits_resp_in_0_s2_full_pred_jalr_target(components_4_io_in_bits_resp_in_0_s2_full_pred_jalr_target),
    .io_in_bits_resp_in_0_s2_full_pred_offsets_0(components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_0),
    .io_in_bits_resp_in_0_s2_full_pred_offsets_1(components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_1),
    .io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr(components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr),
    .io_in_bits_resp_in_0_s2_full_pred_fallThroughErr(components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr),
    .io_in_bits_resp_in_0_s2_full_pred_is_jalr(components_4_io_in_bits_resp_in_0_s2_full_pred_is_jalr),
    .io_in_bits_resp_in_0_s2_full_pred_is_call(components_4_io_in_bits_resp_in_0_s2_full_pred_is_call),
    .io_in_bits_resp_in_0_s2_full_pred_is_ret(components_4_io_in_bits_resp_in_0_s2_full_pred_is_ret),
    .io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call(
      components_4_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call),
    .io_in_bits_resp_in_0_s2_full_pred_is_br_sharing(components_4_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing),
    .io_in_bits_resp_in_0_s2_full_pred_hit(components_4_io_in_bits_resp_in_0_s2_full_pred_hit),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0(components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1(components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1),
    .io_in_bits_resp_in_0_s3_full_pred_slot_valids_0(components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0),
    .io_in_bits_resp_in_0_s3_full_pred_slot_valids_1(components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1),
    .io_in_bits_resp_in_0_s3_full_pred_targets_0(components_4_io_in_bits_resp_in_0_s3_full_pred_targets_0),
    .io_in_bits_resp_in_0_s3_full_pred_targets_1(components_4_io_in_bits_resp_in_0_s3_full_pred_targets_1),
    .io_in_bits_resp_in_0_s3_full_pred_jalr_target(components_4_io_in_bits_resp_in_0_s3_full_pred_jalr_target),
    .io_in_bits_resp_in_0_s3_full_pred_offsets_0(components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_0),
    .io_in_bits_resp_in_0_s3_full_pred_offsets_1(components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_1),
    .io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr(components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr),
    .io_in_bits_resp_in_0_s3_full_pred_fallThroughErr(components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr),
    .io_in_bits_resp_in_0_s3_full_pred_is_jalr(components_4_io_in_bits_resp_in_0_s3_full_pred_is_jalr),
    .io_in_bits_resp_in_0_s3_full_pred_is_call(components_4_io_in_bits_resp_in_0_s3_full_pred_is_call),
    .io_in_bits_resp_in_0_s3_full_pred_is_ret(components_4_io_in_bits_resp_in_0_s3_full_pred_is_ret),
    .io_in_bits_resp_in_0_s3_full_pred_is_br_sharing(components_4_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing),
    .io_in_bits_resp_in_0_s3_full_pred_hit(components_4_io_in_bits_resp_in_0_s3_full_pred_hit),
    .io_in_bits_resp_in_0_s3_ftb_entry_valid(components_4_io_in_bits_resp_in_0_s3_ftb_entry_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset(components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower(components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat(
      components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing(
      components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid(components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset(components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower(components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat(components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing(components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid(components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_pftAddr(components_4_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr),
    .io_in_bits_resp_in_0_s3_ftb_entry_carry(components_4_io_in_bits_resp_in_0_s3_ftb_entry_carry),
    .io_in_bits_resp_in_0_s3_ftb_entry_isCall(components_4_io_in_bits_resp_in_0_s3_ftb_entry_isCall),
    .io_in_bits_resp_in_0_s3_ftb_entry_isRet(components_4_io_in_bits_resp_in_0_s3_ftb_entry_isRet),
    .io_in_bits_resp_in_0_s3_ftb_entry_isJalr(components_4_io_in_bits_resp_in_0_s3_ftb_entry_isJalr),
    .io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call(
      components_4_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call),
    .io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0(components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0),
    .io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1(components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1),
    .io_out_resp_s1_pc(components_4_io_out_resp_s1_pc),
    .io_out_resp_s1_minimal_pred_nextAddr(components_4_io_out_resp_s1_minimal_pred_nextAddr),
    .io_out_resp_s1_minimal_pred_cfiOffset(components_4_io_out_resp_s1_minimal_pred_cfiOffset),
    .io_out_resp_s1_minimal_pred_taken(components_4_io_out_resp_s1_minimal_pred_taken),
    .io_out_resp_s1_minimal_pred_takenOnBr(components_4_io_out_resp_s1_minimal_pred_takenOnBr),
    .io_out_resp_s1_minimal_pred_brNumOH(components_4_io_out_resp_s1_minimal_pred_brNumOH),
    .io_out_resp_s1_minimal_pred_valid(components_4_io_out_resp_s1_minimal_pred_valid),
    .io_out_resp_s2_pc(components_4_io_out_resp_s2_pc),
    .io_out_resp_s2_full_pred_br_taken_mask_0(components_4_io_out_resp_s2_full_pred_br_taken_mask_0),
    .io_out_resp_s2_full_pred_br_taken_mask_1(components_4_io_out_resp_s2_full_pred_br_taken_mask_1),
    .io_out_resp_s2_full_pred_slot_valids_0(components_4_io_out_resp_s2_full_pred_slot_valids_0),
    .io_out_resp_s2_full_pred_slot_valids_1(components_4_io_out_resp_s2_full_pred_slot_valids_1),
    .io_out_resp_s2_full_pred_targets_0(components_4_io_out_resp_s2_full_pred_targets_0),
    .io_out_resp_s2_full_pred_targets_1(components_4_io_out_resp_s2_full_pred_targets_1),
    .io_out_resp_s2_full_pred_jalr_target(components_4_io_out_resp_s2_full_pred_jalr_target),
    .io_out_resp_s2_full_pred_offsets_0(components_4_io_out_resp_s2_full_pred_offsets_0),
    .io_out_resp_s2_full_pred_offsets_1(components_4_io_out_resp_s2_full_pred_offsets_1),
    .io_out_resp_s2_full_pred_fallThroughAddr(components_4_io_out_resp_s2_full_pred_fallThroughAddr),
    .io_out_resp_s2_full_pred_fallThroughErr(components_4_io_out_resp_s2_full_pred_fallThroughErr),
    .io_out_resp_s2_full_pred_is_br_sharing(components_4_io_out_resp_s2_full_pred_is_br_sharing),
    .io_out_resp_s2_full_pred_hit(components_4_io_out_resp_s2_full_pred_hit),
    .io_out_resp_s3_pc(components_4_io_out_resp_s3_pc),
    .io_out_resp_s3_full_pred_br_taken_mask_0(components_4_io_out_resp_s3_full_pred_br_taken_mask_0),
    .io_out_resp_s3_full_pred_br_taken_mask_1(components_4_io_out_resp_s3_full_pred_br_taken_mask_1),
    .io_out_resp_s3_full_pred_slot_valids_0(components_4_io_out_resp_s3_full_pred_slot_valids_0),
    .io_out_resp_s3_full_pred_slot_valids_1(components_4_io_out_resp_s3_full_pred_slot_valids_1),
    .io_out_resp_s3_full_pred_targets_0(components_4_io_out_resp_s3_full_pred_targets_0),
    .io_out_resp_s3_full_pred_targets_1(components_4_io_out_resp_s3_full_pred_targets_1),
    .io_out_resp_s3_full_pred_jalr_target(components_4_io_out_resp_s3_full_pred_jalr_target),
    .io_out_resp_s3_full_pred_offsets_0(components_4_io_out_resp_s3_full_pred_offsets_0),
    .io_out_resp_s3_full_pred_offsets_1(components_4_io_out_resp_s3_full_pred_offsets_1),
    .io_out_resp_s3_full_pred_fallThroughAddr(components_4_io_out_resp_s3_full_pred_fallThroughAddr),
    .io_out_resp_s3_full_pred_fallThroughErr(components_4_io_out_resp_s3_full_pred_fallThroughErr),
    .io_out_resp_s3_full_pred_is_br_sharing(components_4_io_out_resp_s3_full_pred_is_br_sharing),
    .io_out_resp_s3_full_pred_hit(components_4_io_out_resp_s3_full_pred_hit),
    .io_out_resp_s3_rasSp(components_4_io_out_resp_s3_rasSp),
    .io_out_resp_s3_rasTop_retAddr(components_4_io_out_resp_s3_rasTop_retAddr),
    .io_out_resp_s3_rasTop_ctr(components_4_io_out_resp_s3_rasTop_ctr),
    .io_out_resp_s3_ftb_entry_valid(components_4_io_out_resp_s3_ftb_entry_valid),
    .io_out_resp_s3_ftb_entry_brSlots_0_offset(components_4_io_out_resp_s3_ftb_entry_brSlots_0_offset),
    .io_out_resp_s3_ftb_entry_brSlots_0_lower(components_4_io_out_resp_s3_ftb_entry_brSlots_0_lower),
    .io_out_resp_s3_ftb_entry_brSlots_0_tarStat(components_4_io_out_resp_s3_ftb_entry_brSlots_0_tarStat),
    .io_out_resp_s3_ftb_entry_brSlots_0_sharing(components_4_io_out_resp_s3_ftb_entry_brSlots_0_sharing),
    .io_out_resp_s3_ftb_entry_brSlots_0_valid(components_4_io_out_resp_s3_ftb_entry_brSlots_0_valid),
    .io_out_resp_s3_ftb_entry_tailSlot_offset(components_4_io_out_resp_s3_ftb_entry_tailSlot_offset),
    .io_out_resp_s3_ftb_entry_tailSlot_lower(components_4_io_out_resp_s3_ftb_entry_tailSlot_lower),
    .io_out_resp_s3_ftb_entry_tailSlot_tarStat(components_4_io_out_resp_s3_ftb_entry_tailSlot_tarStat),
    .io_out_resp_s3_ftb_entry_tailSlot_sharing(components_4_io_out_resp_s3_ftb_entry_tailSlot_sharing),
    .io_out_resp_s3_ftb_entry_tailSlot_valid(components_4_io_out_resp_s3_ftb_entry_tailSlot_valid),
    .io_out_resp_s3_ftb_entry_pftAddr(components_4_io_out_resp_s3_ftb_entry_pftAddr),
    .io_out_resp_s3_ftb_entry_carry(components_4_io_out_resp_s3_ftb_entry_carry),
    .io_out_resp_s3_ftb_entry_isCall(components_4_io_out_resp_s3_ftb_entry_isCall),
    .io_out_resp_s3_ftb_entry_isRet(components_4_io_out_resp_s3_ftb_entry_isRet),
    .io_out_resp_s3_ftb_entry_isJalr(components_4_io_out_resp_s3_ftb_entry_isJalr),
    .io_out_resp_s3_ftb_entry_last_may_be_rvi_call(components_4_io_out_resp_s3_ftb_entry_last_may_be_rvi_call),
    .io_out_resp_s3_ftb_entry_always_taken_0(components_4_io_out_resp_s3_ftb_entry_always_taken_0),
    .io_out_resp_s3_ftb_entry_always_taken_1(components_4_io_out_resp_s3_ftb_entry_always_taken_1),
    .io_ctrl_ras_enable(components_4_io_ctrl_ras_enable),
    .io_s0_fire(components_4_io_s0_fire),
    .io_s1_fire(components_4_io_s1_fire),
    .io_s2_fire(components_4_io_s2_fire),
    .io_s3_fire(components_4_io_s3_fire),
    .io_s3_redirect(components_4_io_s3_redirect),
    .io_redirect_valid(components_4_io_redirect_valid),
    .io_redirect_bits_level(components_4_io_redirect_bits_level),
    .io_redirect_bits_cfiUpdate_pc(components_4_io_redirect_bits_cfiUpdate_pc),
    .io_redirect_bits_cfiUpdate_pd_isRVC(components_4_io_redirect_bits_cfiUpdate_pd_isRVC),
    .io_redirect_bits_cfiUpdate_pd_isCall(components_4_io_redirect_bits_cfiUpdate_pd_isCall),
    .io_redirect_bits_cfiUpdate_pd_isRet(components_4_io_redirect_bits_cfiUpdate_pd_isRet),
    .io_redirect_bits_cfiUpdate_rasSp(components_4_io_redirect_bits_cfiUpdate_rasSp),
    .io_redirect_bits_cfiUpdate_rasEntry_retAddr(components_4_io_redirect_bits_cfiUpdate_rasEntry_retAddr),
    .io_redirect_bits_cfiUpdate_rasEntry_ctr(components_4_io_redirect_bits_cfiUpdate_rasEntry_ctr)
  );
  ITTage components_3 ( // @[Parameters.scala 170:26]
    .clock(components_3_clock),
    .reset(components_3_reset),
    .io_reset_vector(components_3_io_reset_vector),
    .io_in_bits_s0_pc(components_3_io_in_bits_s0_pc),
    .io_in_bits_folded_hist_hist_36_folded_hist(components_3_io_in_bits_folded_hist_hist_36_folded_hist),
    .io_in_bits_folded_hist_hist_33_folded_hist(components_3_io_in_bits_folded_hist_hist_33_folded_hist),
    .io_in_bits_folded_hist_hist_31_folded_hist(components_3_io_in_bits_folded_hist_hist_31_folded_hist),
    .io_in_bits_folded_hist_hist_26_folded_hist(components_3_io_in_bits_folded_hist_hist_26_folded_hist),
    .io_in_bits_folded_hist_hist_21_folded_hist(components_3_io_in_bits_folded_hist_hist_21_folded_hist),
    .io_in_bits_folded_hist_hist_17_folded_hist(components_3_io_in_bits_folded_hist_hist_17_folded_hist),
    .io_in_bits_folded_hist_hist_15_folded_hist(components_3_io_in_bits_folded_hist_hist_15_folded_hist),
    .io_in_bits_folded_hist_hist_9_folded_hist(components_3_io_in_bits_folded_hist_hist_9_folded_hist),
    .io_in_bits_folded_hist_hist_8_folded_hist(components_3_io_in_bits_folded_hist_hist_8_folded_hist),
    .io_in_bits_folded_hist_hist_7_folded_hist(components_3_io_in_bits_folded_hist_hist_7_folded_hist),
    .io_in_bits_folded_hist_hist_2_folded_hist(components_3_io_in_bits_folded_hist_hist_2_folded_hist),
    .io_in_bits_folded_hist_hist_1_folded_hist(components_3_io_in_bits_folded_hist_hist_1_folded_hist),
    .io_in_bits_resp_in_0_s1_minimal_pred_nextAddr(components_3_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr),
    .io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset(components_3_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset),
    .io_in_bits_resp_in_0_s1_minimal_pred_taken(components_3_io_in_bits_resp_in_0_s1_minimal_pred_taken),
    .io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr(components_3_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr),
    .io_in_bits_resp_in_0_s1_minimal_pred_brNumOH(components_3_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH),
    .io_in_bits_resp_in_0_s1_minimal_pred_valid(components_3_io_in_bits_resp_in_0_s1_minimal_pred_valid),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0(components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1(components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1),
    .io_in_bits_resp_in_0_s2_full_pred_slot_valids_0(components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0),
    .io_in_bits_resp_in_0_s2_full_pred_slot_valids_1(components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1),
    .io_in_bits_resp_in_0_s2_full_pred_targets_0(components_3_io_in_bits_resp_in_0_s2_full_pred_targets_0),
    .io_in_bits_resp_in_0_s2_full_pred_targets_1(components_3_io_in_bits_resp_in_0_s2_full_pred_targets_1),
    .io_in_bits_resp_in_0_s2_full_pred_jalr_target(components_3_io_in_bits_resp_in_0_s2_full_pred_jalr_target),
    .io_in_bits_resp_in_0_s2_full_pred_offsets_0(components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_0),
    .io_in_bits_resp_in_0_s2_full_pred_offsets_1(components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_1),
    .io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr(components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr),
    .io_in_bits_resp_in_0_s2_full_pred_fallThroughErr(components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr),
    .io_in_bits_resp_in_0_s2_full_pred_is_jalr(components_3_io_in_bits_resp_in_0_s2_full_pred_is_jalr),
    .io_in_bits_resp_in_0_s2_full_pred_is_call(components_3_io_in_bits_resp_in_0_s2_full_pred_is_call),
    .io_in_bits_resp_in_0_s2_full_pred_is_ret(components_3_io_in_bits_resp_in_0_s2_full_pred_is_ret),
    .io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call(
      components_3_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call),
    .io_in_bits_resp_in_0_s2_full_pred_is_br_sharing(components_3_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing),
    .io_in_bits_resp_in_0_s2_full_pred_hit(components_3_io_in_bits_resp_in_0_s2_full_pred_hit),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0(components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0),
    .io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1(components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1),
    .io_in_bits_resp_in_0_s3_full_pred_slot_valids_0(components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0),
    .io_in_bits_resp_in_0_s3_full_pred_slot_valids_1(components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1),
    .io_in_bits_resp_in_0_s3_full_pred_targets_0(components_3_io_in_bits_resp_in_0_s3_full_pred_targets_0),
    .io_in_bits_resp_in_0_s3_full_pred_targets_1(components_3_io_in_bits_resp_in_0_s3_full_pred_targets_1),
    .io_in_bits_resp_in_0_s3_full_pred_jalr_target(components_3_io_in_bits_resp_in_0_s3_full_pred_jalr_target),
    .io_in_bits_resp_in_0_s3_full_pred_offsets_0(components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_0),
    .io_in_bits_resp_in_0_s3_full_pred_offsets_1(components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_1),
    .io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr(components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr),
    .io_in_bits_resp_in_0_s3_full_pred_fallThroughErr(components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr),
    .io_in_bits_resp_in_0_s3_full_pred_is_jalr(components_3_io_in_bits_resp_in_0_s3_full_pred_is_jalr),
    .io_in_bits_resp_in_0_s3_full_pred_is_call(components_3_io_in_bits_resp_in_0_s3_full_pred_is_call),
    .io_in_bits_resp_in_0_s3_full_pred_is_ret(components_3_io_in_bits_resp_in_0_s3_full_pred_is_ret),
    .io_in_bits_resp_in_0_s3_full_pred_is_br_sharing(components_3_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing),
    .io_in_bits_resp_in_0_s3_full_pred_hit(components_3_io_in_bits_resp_in_0_s3_full_pred_hit),
    .io_in_bits_resp_in_0_s3_ftb_entry_valid(components_3_io_in_bits_resp_in_0_s3_ftb_entry_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset(components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower(components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat(
      components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing(
      components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing),
    .io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid(components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset(components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower(components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower),
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat(components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing(components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing)
      ,
    .io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid(components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid),
    .io_in_bits_resp_in_0_s3_ftb_entry_pftAddr(components_3_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr),
    .io_in_bits_resp_in_0_s3_ftb_entry_carry(components_3_io_in_bits_resp_in_0_s3_ftb_entry_carry),
    .io_in_bits_resp_in_0_s3_ftb_entry_isCall(components_3_io_in_bits_resp_in_0_s3_ftb_entry_isCall),
    .io_in_bits_resp_in_0_s3_ftb_entry_isRet(components_3_io_in_bits_resp_in_0_s3_ftb_entry_isRet),
    .io_in_bits_resp_in_0_s3_ftb_entry_isJalr(components_3_io_in_bits_resp_in_0_s3_ftb_entry_isJalr),
    .io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call(
      components_3_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call),
    .io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0(components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0),
    .io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1(components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1),
    .io_out_last_stage_meta(components_3_io_out_last_stage_meta),
    .io_out_resp_s1_minimal_pred_nextAddr(components_3_io_out_resp_s1_minimal_pred_nextAddr),
    .io_out_resp_s1_minimal_pred_cfiOffset(components_3_io_out_resp_s1_minimal_pred_cfiOffset),
    .io_out_resp_s1_minimal_pred_taken(components_3_io_out_resp_s1_minimal_pred_taken),
    .io_out_resp_s1_minimal_pred_takenOnBr(components_3_io_out_resp_s1_minimal_pred_takenOnBr),
    .io_out_resp_s1_minimal_pred_brNumOH(components_3_io_out_resp_s1_minimal_pred_brNumOH),
    .io_out_resp_s1_minimal_pred_valid(components_3_io_out_resp_s1_minimal_pred_valid),
    .io_out_resp_s2_full_pred_br_taken_mask_0(components_3_io_out_resp_s2_full_pred_br_taken_mask_0),
    .io_out_resp_s2_full_pred_br_taken_mask_1(components_3_io_out_resp_s2_full_pred_br_taken_mask_1),
    .io_out_resp_s2_full_pred_slot_valids_0(components_3_io_out_resp_s2_full_pred_slot_valids_0),
    .io_out_resp_s2_full_pred_slot_valids_1(components_3_io_out_resp_s2_full_pred_slot_valids_1),
    .io_out_resp_s2_full_pred_targets_0(components_3_io_out_resp_s2_full_pred_targets_0),
    .io_out_resp_s2_full_pred_targets_1(components_3_io_out_resp_s2_full_pred_targets_1),
    .io_out_resp_s2_full_pred_jalr_target(components_3_io_out_resp_s2_full_pred_jalr_target),
    .io_out_resp_s2_full_pred_offsets_0(components_3_io_out_resp_s2_full_pred_offsets_0),
    .io_out_resp_s2_full_pred_offsets_1(components_3_io_out_resp_s2_full_pred_offsets_1),
    .io_out_resp_s2_full_pred_fallThroughAddr(components_3_io_out_resp_s2_full_pred_fallThroughAddr),
    .io_out_resp_s2_full_pred_fallThroughErr(components_3_io_out_resp_s2_full_pred_fallThroughErr),
    .io_out_resp_s2_full_pred_is_jalr(components_3_io_out_resp_s2_full_pred_is_jalr),
    .io_out_resp_s2_full_pred_is_call(components_3_io_out_resp_s2_full_pred_is_call),
    .io_out_resp_s2_full_pred_is_ret(components_3_io_out_resp_s2_full_pred_is_ret),
    .io_out_resp_s2_full_pred_last_may_be_rvi_call(components_3_io_out_resp_s2_full_pred_last_may_be_rvi_call),
    .io_out_resp_s2_full_pred_is_br_sharing(components_3_io_out_resp_s2_full_pred_is_br_sharing),
    .io_out_resp_s2_full_pred_hit(components_3_io_out_resp_s2_full_pred_hit),
    .io_out_resp_s3_full_pred_br_taken_mask_0(components_3_io_out_resp_s3_full_pred_br_taken_mask_0),
    .io_out_resp_s3_full_pred_br_taken_mask_1(components_3_io_out_resp_s3_full_pred_br_taken_mask_1),
    .io_out_resp_s3_full_pred_slot_valids_0(components_3_io_out_resp_s3_full_pred_slot_valids_0),
    .io_out_resp_s3_full_pred_slot_valids_1(components_3_io_out_resp_s3_full_pred_slot_valids_1),
    .io_out_resp_s3_full_pred_targets_0(components_3_io_out_resp_s3_full_pred_targets_0),
    .io_out_resp_s3_full_pred_targets_1(components_3_io_out_resp_s3_full_pred_targets_1),
    .io_out_resp_s3_full_pred_jalr_target(components_3_io_out_resp_s3_full_pred_jalr_target),
    .io_out_resp_s3_full_pred_offsets_0(components_3_io_out_resp_s3_full_pred_offsets_0),
    .io_out_resp_s3_full_pred_offsets_1(components_3_io_out_resp_s3_full_pred_offsets_1),
    .io_out_resp_s3_full_pred_fallThroughAddr(components_3_io_out_resp_s3_full_pred_fallThroughAddr),
    .io_out_resp_s3_full_pred_fallThroughErr(components_3_io_out_resp_s3_full_pred_fallThroughErr),
    .io_out_resp_s3_full_pred_is_jalr(components_3_io_out_resp_s3_full_pred_is_jalr),
    .io_out_resp_s3_full_pred_is_call(components_3_io_out_resp_s3_full_pred_is_call),
    .io_out_resp_s3_full_pred_is_ret(components_3_io_out_resp_s3_full_pred_is_ret),
    .io_out_resp_s3_full_pred_is_br_sharing(components_3_io_out_resp_s3_full_pred_is_br_sharing),
    .io_out_resp_s3_full_pred_hit(components_3_io_out_resp_s3_full_pred_hit),
    .io_out_resp_s3_ftb_entry_valid(components_3_io_out_resp_s3_ftb_entry_valid),
    .io_out_resp_s3_ftb_entry_brSlots_0_offset(components_3_io_out_resp_s3_ftb_entry_brSlots_0_offset),
    .io_out_resp_s3_ftb_entry_brSlots_0_lower(components_3_io_out_resp_s3_ftb_entry_brSlots_0_lower),
    .io_out_resp_s3_ftb_entry_brSlots_0_tarStat(components_3_io_out_resp_s3_ftb_entry_brSlots_0_tarStat),
    .io_out_resp_s3_ftb_entry_brSlots_0_sharing(components_3_io_out_resp_s3_ftb_entry_brSlots_0_sharing),
    .io_out_resp_s3_ftb_entry_brSlots_0_valid(components_3_io_out_resp_s3_ftb_entry_brSlots_0_valid),
    .io_out_resp_s3_ftb_entry_tailSlot_offset(components_3_io_out_resp_s3_ftb_entry_tailSlot_offset),
    .io_out_resp_s3_ftb_entry_tailSlot_lower(components_3_io_out_resp_s3_ftb_entry_tailSlot_lower),
    .io_out_resp_s3_ftb_entry_tailSlot_tarStat(components_3_io_out_resp_s3_ftb_entry_tailSlot_tarStat),
    .io_out_resp_s3_ftb_entry_tailSlot_sharing(components_3_io_out_resp_s3_ftb_entry_tailSlot_sharing),
    .io_out_resp_s3_ftb_entry_tailSlot_valid(components_3_io_out_resp_s3_ftb_entry_tailSlot_valid),
    .io_out_resp_s3_ftb_entry_pftAddr(components_3_io_out_resp_s3_ftb_entry_pftAddr),
    .io_out_resp_s3_ftb_entry_carry(components_3_io_out_resp_s3_ftb_entry_carry),
    .io_out_resp_s3_ftb_entry_isCall(components_3_io_out_resp_s3_ftb_entry_isCall),
    .io_out_resp_s3_ftb_entry_isRet(components_3_io_out_resp_s3_ftb_entry_isRet),
    .io_out_resp_s3_ftb_entry_isJalr(components_3_io_out_resp_s3_ftb_entry_isJalr),
    .io_out_resp_s3_ftb_entry_last_may_be_rvi_call(components_3_io_out_resp_s3_ftb_entry_last_may_be_rvi_call),
    .io_out_resp_s3_ftb_entry_always_taken_0(components_3_io_out_resp_s3_ftb_entry_always_taken_0),
    .io_out_resp_s3_ftb_entry_always_taken_1(components_3_io_out_resp_s3_ftb_entry_always_taken_1),
    .io_s0_fire(components_3_io_s0_fire),
    .io_s1_fire(components_3_io_s1_fire),
    .io_s2_fire(components_3_io_s2_fire),
    .io_s1_ready(components_3_io_s1_ready),
    .io_update_valid(components_3_io_update_valid),
    .io_update_bits_pc(components_3_io_update_bits_pc),
    .io_update_bits_full_pred_br_taken_mask_0(components_3_io_update_bits_full_pred_br_taken_mask_0),
    .io_update_bits_full_pred_br_taken_mask_1(components_3_io_update_bits_full_pred_br_taken_mask_1),
    .io_update_bits_full_pred_slot_valids_0(components_3_io_update_bits_full_pred_slot_valids_0),
    .io_update_bits_full_pred_slot_valids_1(components_3_io_update_bits_full_pred_slot_valids_1),
    .io_update_bits_full_pred_is_jalr(components_3_io_update_bits_full_pred_is_jalr),
    .io_update_bits_full_pred_is_ret(components_3_io_update_bits_full_pred_is_ret),
    .io_update_bits_full_pred_is_br_sharing(components_3_io_update_bits_full_pred_is_br_sharing),
    .io_update_bits_folded_hist_hist_36_folded_hist(components_3_io_update_bits_folded_hist_hist_36_folded_hist),
    .io_update_bits_folded_hist_hist_33_folded_hist(components_3_io_update_bits_folded_hist_hist_33_folded_hist),
    .io_update_bits_folded_hist_hist_31_folded_hist(components_3_io_update_bits_folded_hist_hist_31_folded_hist),
    .io_update_bits_folded_hist_hist_26_folded_hist(components_3_io_update_bits_folded_hist_hist_26_folded_hist),
    .io_update_bits_folded_hist_hist_21_folded_hist(components_3_io_update_bits_folded_hist_hist_21_folded_hist),
    .io_update_bits_folded_hist_hist_17_folded_hist(components_3_io_update_bits_folded_hist_hist_17_folded_hist),
    .io_update_bits_folded_hist_hist_15_folded_hist(components_3_io_update_bits_folded_hist_hist_15_folded_hist),
    .io_update_bits_folded_hist_hist_9_folded_hist(components_3_io_update_bits_folded_hist_hist_9_folded_hist),
    .io_update_bits_folded_hist_hist_8_folded_hist(components_3_io_update_bits_folded_hist_hist_8_folded_hist),
    .io_update_bits_folded_hist_hist_7_folded_hist(components_3_io_update_bits_folded_hist_hist_7_folded_hist),
    .io_update_bits_folded_hist_hist_2_folded_hist(components_3_io_update_bits_folded_hist_hist_2_folded_hist),
    .io_update_bits_folded_hist_hist_1_folded_hist(components_3_io_update_bits_folded_hist_hist_1_folded_hist),
    .io_update_bits_ftb_entry_tailSlot_sharing(components_3_io_update_bits_ftb_entry_tailSlot_sharing),
    .io_update_bits_ftb_entry_tailSlot_valid(components_3_io_update_bits_ftb_entry_tailSlot_valid),
    .io_update_bits_mispred_mask_2(components_3_io_update_bits_mispred_mask_2),
    .io_update_bits_meta(components_3_io_update_bits_meta),
    .io_update_bits_full_target(components_3_io_update_bits_full_target)
  );
  DelayN_1 ubtb_io_ctrl_delay ( // @[Hold.scala 94:23]
    .clock(ubtb_io_ctrl_delay_clock),
    .io_in_ubtb_enable(ubtb_io_ctrl_delay_io_in_ubtb_enable),
    .io_in_btb_enable(ubtb_io_ctrl_delay_io_in_btb_enable),
    .io_in_tage_enable(ubtb_io_ctrl_delay_io_in_tage_enable),
    .io_in_sc_enable(ubtb_io_ctrl_delay_io_in_sc_enable),
    .io_in_ras_enable(ubtb_io_ctrl_delay_io_in_ras_enable),
    .io_out_ubtb_enable(ubtb_io_ctrl_delay_io_out_ubtb_enable),
    .io_out_btb_enable(ubtb_io_ctrl_delay_io_out_btb_enable),
    .io_out_tage_enable(ubtb_io_ctrl_delay_io_out_tage_enable),
    .io_out_sc_enable(ubtb_io_ctrl_delay_io_out_sc_enable),
    .io_out_ras_enable(ubtb_io_ctrl_delay_io_out_ras_enable)
  );
  DelayN_1 tage_io_ctrl_delay ( // @[Hold.scala 94:23]
    .clock(tage_io_ctrl_delay_clock),
    .io_in_ubtb_enable(tage_io_ctrl_delay_io_in_ubtb_enable),
    .io_in_btb_enable(tage_io_ctrl_delay_io_in_btb_enable),
    .io_in_tage_enable(tage_io_ctrl_delay_io_in_tage_enable),
    .io_in_sc_enable(tage_io_ctrl_delay_io_in_sc_enable),
    .io_in_ras_enable(tage_io_ctrl_delay_io_in_ras_enable),
    .io_out_ubtb_enable(tage_io_ctrl_delay_io_out_ubtb_enable),
    .io_out_btb_enable(tage_io_ctrl_delay_io_out_btb_enable),
    .io_out_tage_enable(tage_io_ctrl_delay_io_out_tage_enable),
    .io_out_sc_enable(tage_io_ctrl_delay_io_out_sc_enable),
    .io_out_ras_enable(tage_io_ctrl_delay_io_out_ras_enable)
  );
  DelayN_1 ftb_io_ctrl_delay ( // @[Hold.scala 94:23]
    .clock(ftb_io_ctrl_delay_clock),
    .io_in_ubtb_enable(ftb_io_ctrl_delay_io_in_ubtb_enable),
    .io_in_btb_enable(ftb_io_ctrl_delay_io_in_btb_enable),
    .io_in_tage_enable(ftb_io_ctrl_delay_io_in_tage_enable),
    .io_in_sc_enable(ftb_io_ctrl_delay_io_in_sc_enable),
    .io_in_ras_enable(ftb_io_ctrl_delay_io_in_ras_enable),
    .io_out_ubtb_enable(ftb_io_ctrl_delay_io_out_ubtb_enable),
    .io_out_btb_enable(ftb_io_ctrl_delay_io_out_btb_enable),
    .io_out_tage_enable(ftb_io_ctrl_delay_io_out_tage_enable),
    .io_out_sc_enable(ftb_io_ctrl_delay_io_out_sc_enable),
    .io_out_ras_enable(ftb_io_ctrl_delay_io_out_ras_enable)
  );
  DelayN_1 ittage_io_ctrl_delay ( // @[Hold.scala 94:23]
    .clock(ittage_io_ctrl_delay_clock),
    .io_in_ubtb_enable(ittage_io_ctrl_delay_io_in_ubtb_enable),
    .io_in_btb_enable(ittage_io_ctrl_delay_io_in_btb_enable),
    .io_in_tage_enable(ittage_io_ctrl_delay_io_in_tage_enable),
    .io_in_sc_enable(ittage_io_ctrl_delay_io_in_sc_enable),
    .io_in_ras_enable(ittage_io_ctrl_delay_io_in_ras_enable),
    .io_out_ubtb_enable(ittage_io_ctrl_delay_io_out_ubtb_enable),
    .io_out_btb_enable(ittage_io_ctrl_delay_io_out_btb_enable),
    .io_out_tage_enable(ittage_io_ctrl_delay_io_out_tage_enable),
    .io_out_sc_enable(ittage_io_ctrl_delay_io_out_sc_enable),
    .io_out_ras_enable(ittage_io_ctrl_delay_io_out_ras_enable)
  );
  DelayN_1 ras_io_ctrl_delay ( // @[Hold.scala 94:23]
    .clock(ras_io_ctrl_delay_clock),
    .io_in_ubtb_enable(ras_io_ctrl_delay_io_in_ubtb_enable),
    .io_in_btb_enable(ras_io_ctrl_delay_io_in_btb_enable),
    .io_in_tage_enable(ras_io_ctrl_delay_io_in_tage_enable),
    .io_in_sc_enable(ras_io_ctrl_delay_io_in_sc_enable),
    .io_in_ras_enable(ras_io_ctrl_delay_io_in_ras_enable),
    .io_out_ubtb_enable(ras_io_ctrl_delay_io_out_ubtb_enable),
    .io_out_btb_enable(ras_io_ctrl_delay_io_out_btb_enable),
    .io_out_tage_enable(ras_io_ctrl_delay_io_out_tage_enable),
    .io_out_sc_enable(ras_io_ctrl_delay_io_out_sc_enable),
    .io_out_ras_enable(ras_io_ctrl_delay_io_out_ras_enable)
  );
  assign io_out_last_stage_meta = {{308'd0}, metas}; // @[Composer.scala 65:26]
  assign io_out_resp_s1_pc = components_4_io_out_resp_s1_pc; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_nextAddr = components_4_io_out_resp_s1_minimal_pred_nextAddr; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_cfiOffset = components_4_io_out_resp_s1_minimal_pred_cfiOffset; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_taken = components_4_io_out_resp_s1_minimal_pred_taken; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_takenOnBr = components_4_io_out_resp_s1_minimal_pred_takenOnBr; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_brNumOH = components_4_io_out_resp_s1_minimal_pred_brNumOH; // @[Composer.scala 30:15]
  assign io_out_resp_s1_minimal_pred_valid = components_4_io_out_resp_s1_minimal_pred_valid; // @[Composer.scala 30:15]
  assign io_out_resp_s2_pc = components_4_io_out_resp_s2_pc; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_br_taken_mask_0 = components_4_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_br_taken_mask_1 = components_4_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_slot_valids_0 = components_4_io_out_resp_s2_full_pred_slot_valids_0; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_slot_valids_1 = components_4_io_out_resp_s2_full_pred_slot_valids_1; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_targets_0 = components_4_io_out_resp_s2_full_pred_targets_0; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_targets_1 = components_4_io_out_resp_s2_full_pred_targets_1; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_offsets_0 = components_4_io_out_resp_s2_full_pred_offsets_0; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_offsets_1 = components_4_io_out_resp_s2_full_pred_offsets_1; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_fallThroughAddr = components_4_io_out_resp_s2_full_pred_fallThroughAddr; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_fallThroughErr = components_4_io_out_resp_s2_full_pred_fallThroughErr; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_is_br_sharing = components_4_io_out_resp_s2_full_pred_is_br_sharing; // @[Composer.scala 30:15]
  assign io_out_resp_s2_full_pred_hit = components_4_io_out_resp_s2_full_pred_hit; // @[Composer.scala 30:15]
  assign io_out_resp_s3_pc = components_4_io_out_resp_s3_pc; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_br_taken_mask_0 = components_4_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_br_taken_mask_1 = components_4_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_slot_valids_0 = components_4_io_out_resp_s3_full_pred_slot_valids_0; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_slot_valids_1 = components_4_io_out_resp_s3_full_pred_slot_valids_1; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_targets_0 = components_4_io_out_resp_s3_full_pred_targets_0; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_targets_1 = components_4_io_out_resp_s3_full_pred_targets_1; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_offsets_0 = components_4_io_out_resp_s3_full_pred_offsets_0; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_offsets_1 = components_4_io_out_resp_s3_full_pred_offsets_1; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_fallThroughAddr = components_4_io_out_resp_s3_full_pred_fallThroughAddr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_fallThroughErr = components_4_io_out_resp_s3_full_pred_fallThroughErr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_is_br_sharing = components_4_io_out_resp_s3_full_pred_is_br_sharing; // @[Composer.scala 30:15]
  assign io_out_resp_s3_full_pred_hit = components_4_io_out_resp_s3_full_pred_hit; // @[Composer.scala 30:15]
  assign io_out_resp_s3_rasSp = components_4_io_out_resp_s3_rasSp; // @[Composer.scala 30:15]
  assign io_out_resp_s3_rasTop_retAddr = components_4_io_out_resp_s3_rasTop_retAddr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_rasTop_ctr = components_4_io_out_resp_s3_rasTop_ctr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_valid = components_4_io_out_resp_s3_ftb_entry_valid; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_brSlots_0_offset = components_4_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_brSlots_0_lower = components_4_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_brSlots_0_tarStat = components_4_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_brSlots_0_sharing = components_4_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_brSlots_0_valid = components_4_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_tailSlot_offset = components_4_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_tailSlot_lower = components_4_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_tailSlot_tarStat = components_4_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_tailSlot_sharing = components_4_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_tailSlot_valid = components_4_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_pftAddr = components_4_io_out_resp_s3_ftb_entry_pftAddr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_carry = components_4_io_out_resp_s3_ftb_entry_carry; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_isCall = components_4_io_out_resp_s3_ftb_entry_isCall; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_isRet = components_4_io_out_resp_s3_ftb_entry_isRet; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_isJalr = components_4_io_out_resp_s3_ftb_entry_isJalr; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_last_may_be_rvi_call = components_4_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_always_taken_0 = components_4_io_out_resp_s3_ftb_entry_always_taken_0; // @[Composer.scala 30:15]
  assign io_out_resp_s3_ftb_entry_always_taken_1 = components_4_io_out_resp_s3_ftb_entry_always_taken_1; // @[Composer.scala 30:15]
  assign io_s1_ready = _io_in_ready_T_2 & components_3_io_s1_ready; // @[Composer.scala 61:57]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 95:17]
  assign components_2_clock = clock;
  assign components_2_reset = reset;
  assign components_2_io_reset_vector = io_reset_vector; // @[Composer.scala 35:30]
  assign components_2_io_in_bits_s0_pc = io_in_bits_s0_pc; // @[Composer.scala 37:30]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr = components_1_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset =
    components_1_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_taken = components_1_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr =
    components_1_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH = components_1_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s1_minimal_pred_valid = components_1_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0 =
    components_1_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1 =
    components_1_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0 =
    components_1_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 185:34]
  assign components_2_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1 =
    components_1_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 185:34]
  assign components_2_io_ctrl_btb_enable = ftb_io_ctrl_delay_io_out_btb_enable; // @[Composer.scala 50:15]
  assign components_2_io_s0_fire = io_s0_fire; // @[Composer.scala 41:18]
  assign components_2_io_s1_fire = io_s1_fire; // @[Composer.scala 42:18]
  assign components_2_io_s2_fire = io_s2_fire; // @[Composer.scala 43:18]
  assign components_2_io_update_valid = io_update_valid; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_pc = io_update_bits_pc; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_valid = io_update_bits_ftb_entry_valid; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_brSlots_0_offset = io_update_bits_ftb_entry_brSlots_0_offset; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_brSlots_0_lower = io_update_bits_ftb_entry_brSlots_0_lower; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_brSlots_0_tarStat = io_update_bits_ftb_entry_brSlots_0_tarStat; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_brSlots_0_sharing = io_update_bits_ftb_entry_brSlots_0_sharing; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_brSlots_0_valid = io_update_bits_ftb_entry_brSlots_0_valid; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_tailSlot_offset = io_update_bits_ftb_entry_tailSlot_offset; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_tailSlot_lower = io_update_bits_ftb_entry_tailSlot_lower; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_tailSlot_tarStat = io_update_bits_ftb_entry_tailSlot_tarStat; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_tailSlot_sharing = io_update_bits_ftb_entry_tailSlot_sharing; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_tailSlot_valid = io_update_bits_ftb_entry_tailSlot_valid; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_pftAddr = io_update_bits_ftb_entry_pftAddr; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_carry = io_update_bits_ftb_entry_carry; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_isCall = io_update_bits_ftb_entry_isCall; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_isRet = io_update_bits_ftb_entry_isRet; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_isJalr = io_update_bits_ftb_entry_isJalr; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_last_may_be_rvi_call = io_update_bits_ftb_entry_last_may_be_rvi_call; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_always_taken_0 = io_update_bits_ftb_entry_always_taken_0; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_ftb_entry_always_taken_1 = io_update_bits_ftb_entry_always_taken_1; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_old_entry = io_update_bits_old_entry; // @[Composer.scala 69:17]
  assign components_2_io_update_bits_meta = {{97'd0}, io_update_bits_meta[511:97]}; // @[Composer.scala 70:27]
  assign components_0_clock = clock;
  assign components_0_reset = reset;
  assign components_0_io_reset_vector = io_reset_vector; // @[Composer.scala 35:30]
  assign components_0_io_in_bits_s0_pc = io_in_bits_s0_pc; // @[Composer.scala 37:30]
  assign components_0_io_in_bits_folded_hist_hist_23_folded_hist = io_in_bits_folded_hist_hist_23_folded_hist; // @[Composer.scala 38:30]
  assign components_0_io_ctrl_ubtb_enable = ubtb_io_ctrl_delay_io_out_ubtb_enable; // @[Composer.scala 50:15]
  assign components_0_io_s0_fire = io_s0_fire; // @[Composer.scala 41:18]
  assign components_0_io_s1_fire = io_s1_fire; // @[Composer.scala 42:18]
  assign components_0_io_s2_fire = io_s2_fire; // @[Composer.scala 43:18]
  assign components_0_io_update_valid = io_update_valid; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_pc = io_update_bits_pc; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_br_taken_mask_0 = io_update_bits_full_pred_br_taken_mask_0; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_br_taken_mask_1 = io_update_bits_full_pred_br_taken_mask_1; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_slot_valids_0 = io_update_bits_full_pred_slot_valids_0; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_slot_valids_1 = io_update_bits_full_pred_slot_valids_1; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_targets_0 = io_update_bits_full_pred_targets_0; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_targets_1 = io_update_bits_full_pred_targets_1; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_offsets_0 = io_update_bits_full_pred_offsets_0; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_offsets_1 = io_update_bits_full_pred_offsets_1; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_fallThroughAddr = io_update_bits_full_pred_fallThroughAddr; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_full_pred_is_br_sharing = io_update_bits_full_pred_is_br_sharing; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_folded_hist_hist_23_folded_hist = io_update_bits_folded_hist_hist_23_folded_hist; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_mispred_mask_0 = io_update_bits_mispred_mask_0; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_mispred_mask_1 = io_update_bits_mispred_mask_1; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_mispred_mask_2 = io_update_bits_mispred_mask_2; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_pred_hit = io_update_bits_pred_hit; // @[Composer.scala 69:17]
  assign components_0_io_update_bits_meta = {{202'd0}, io_update_bits_meta[511:202]}; // @[Composer.scala 70:27]
  assign components_0_io_update_bits_from_stage = io_update_bits_from_stage; // @[Composer.scala 69:17]
  assign components_1_clock = clock;
  assign components_1_reset = reset;
  assign components_1_io_reset_vector = io_reset_vector; // @[Composer.scala 35:30]
  assign components_1_io_in_bits_s0_pc = io_in_bits_s0_pc; // @[Composer.scala 37:30]
  assign components_1_io_in_bits_folded_hist_hist_35_folded_hist = io_in_bits_folded_hist_hist_35_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_34_folded_hist = io_in_bits_folded_hist_hist_34_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_32_folded_hist = io_in_bits_folded_hist_hist_32_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_30_folded_hist = io_in_bits_folded_hist_hist_30_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_29_folded_hist = io_in_bits_folded_hist_hist_29_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_28_folded_hist = io_in_bits_folded_hist_hist_28_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_27_folded_hist = io_in_bits_folded_hist_hist_27_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_26_folded_hist = io_in_bits_folded_hist_hist_26_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_25_folded_hist = io_in_bits_folded_hist_hist_25_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_24_folded_hist = io_in_bits_folded_hist_hist_24_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_22_folded_hist = io_in_bits_folded_hist_hist_22_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_20_folded_hist = io_in_bits_folded_hist_hist_20_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_19_folded_hist = io_in_bits_folded_hist_hist_19_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_18_folded_hist = io_in_bits_folded_hist_hist_18_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_16_folded_hist = io_in_bits_folded_hist_hist_16_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_14_folded_hist = io_in_bits_folded_hist_hist_14_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_13_folded_hist = io_in_bits_folded_hist_hist_13_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_12_folded_hist = io_in_bits_folded_hist_hist_12_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_11_folded_hist = io_in_bits_folded_hist_hist_11_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_10_folded_hist = io_in_bits_folded_hist_hist_10_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_7_folded_hist = io_in_bits_folded_hist_hist_7_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_6_folded_hist = io_in_bits_folded_hist_hist_6_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_5_folded_hist = io_in_bits_folded_hist_hist_5_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_4_folded_hist = io_in_bits_folded_hist_hist_4_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_3_folded_hist = io_in_bits_folded_hist_hist_3_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_1_folded_hist = io_in_bits_folded_hist_hist_1_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_folded_hist_hist_0_folded_hist = io_in_bits_folded_hist_hist_0_folded_hist; // @[Composer.scala 38:30]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr = components_0_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 184:34]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset =
    components_0_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 184:34]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_taken = components_0_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 184:34]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr =
    components_0_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 184:34]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH = components_0_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 184:34]
  assign components_1_io_in_bits_resp_in_0_s1_minimal_pred_valid = components_0_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 184:34]
  assign components_1_io_ctrl_tage_enable = tage_io_ctrl_delay_io_out_tage_enable; // @[Composer.scala 50:15]
  assign components_1_io_ctrl_sc_enable = tage_io_ctrl_delay_io_out_sc_enable; // @[Composer.scala 50:15]
  assign components_1_io_s0_fire = io_s0_fire; // @[Composer.scala 41:18]
  assign components_1_io_s1_fire = io_s1_fire; // @[Composer.scala 42:18]
  assign components_1_io_s2_fire = io_s2_fire; // @[Composer.scala 43:18]
  assign components_1_io_update_valid = io_update_valid; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_pc = io_update_bits_pc; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_full_pred_br_taken_mask_0 = io_update_bits_full_pred_br_taken_mask_0; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_full_pred_br_taken_mask_1 = io_update_bits_full_pred_br_taken_mask_1; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_35_folded_hist = io_update_bits_folded_hist_hist_35_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_34_folded_hist = io_update_bits_folded_hist_hist_34_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_32_folded_hist = io_update_bits_folded_hist_hist_32_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_30_folded_hist = io_update_bits_folded_hist_hist_30_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_29_folded_hist = io_update_bits_folded_hist_hist_29_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_28_folded_hist = io_update_bits_folded_hist_hist_28_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_27_folded_hist = io_update_bits_folded_hist_hist_27_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_26_folded_hist = io_update_bits_folded_hist_hist_26_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_25_folded_hist = io_update_bits_folded_hist_hist_25_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_24_folded_hist = io_update_bits_folded_hist_hist_24_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_22_folded_hist = io_update_bits_folded_hist_hist_22_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_20_folded_hist = io_update_bits_folded_hist_hist_20_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_19_folded_hist = io_update_bits_folded_hist_hist_19_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_18_folded_hist = io_update_bits_folded_hist_hist_18_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_16_folded_hist = io_update_bits_folded_hist_hist_16_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_14_folded_hist = io_update_bits_folded_hist_hist_14_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_13_folded_hist = io_update_bits_folded_hist_hist_13_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_12_folded_hist = io_update_bits_folded_hist_hist_12_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_11_folded_hist = io_update_bits_folded_hist_hist_11_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_10_folded_hist = io_update_bits_folded_hist_hist_10_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_7_folded_hist = io_update_bits_folded_hist_hist_7_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_6_folded_hist = io_update_bits_folded_hist_hist_6_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_5_folded_hist = io_update_bits_folded_hist_hist_5_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_4_folded_hist = io_update_bits_folded_hist_hist_4_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_3_folded_hist = io_update_bits_folded_hist_hist_3_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_1_folded_hist = io_update_bits_folded_hist_hist_1_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_folded_hist_hist_0_folded_hist = io_update_bits_folded_hist_hist_0_folded_hist; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_ftb_entry_brSlots_0_valid = io_update_bits_ftb_entry_brSlots_0_valid; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_ftb_entry_tailSlot_sharing = io_update_bits_ftb_entry_tailSlot_sharing; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_ftb_entry_tailSlot_valid = io_update_bits_ftb_entry_tailSlot_valid; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_ftb_entry_always_taken_0 = io_update_bits_ftb_entry_always_taken_0; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_ftb_entry_always_taken_1 = io_update_bits_ftb_entry_always_taken_1; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_mispred_mask_0 = io_update_bits_mispred_mask_0; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_mispred_mask_1 = io_update_bits_mispred_mask_1; // @[Composer.scala 69:17]
  assign components_1_io_update_bits_meta = {{100'd0}, io_update_bits_meta[511:100]}; // @[Composer.scala 70:27]
  assign components_4_clock = clock;
  assign components_4_reset = reset;
  assign components_4_io_reset_vector = io_reset_vector; // @[Composer.scala 35:30]
  assign components_4_io_in_bits_s0_pc = io_in_bits_s0_pc; // @[Composer.scala 37:30]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr = components_3_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset =
    components_3_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_taken = components_3_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr =
    components_3_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH = components_3_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s1_minimal_pred_valid = components_3_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0 =
    components_3_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1 =
    components_3_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0 =
    components_3_io_out_resp_s2_full_pred_slot_valids_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1 =
    components_3_io_out_resp_s2_full_pred_slot_valids_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_targets_0 = components_3_io_out_resp_s2_full_pred_targets_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_targets_1 = components_3_io_out_resp_s2_full_pred_targets_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_jalr_target = components_3_io_out_resp_s2_full_pred_jalr_target; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_0 = components_3_io_out_resp_s2_full_pred_offsets_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_offsets_1 = components_3_io_out_resp_s2_full_pred_offsets_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr =
    components_3_io_out_resp_s2_full_pred_fallThroughAddr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr =
    components_3_io_out_resp_s2_full_pred_fallThroughErr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_is_jalr = components_3_io_out_resp_s2_full_pred_is_jalr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_is_call = components_3_io_out_resp_s2_full_pred_is_call; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_is_ret = components_3_io_out_resp_s2_full_pred_is_ret; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call =
    components_3_io_out_resp_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing =
    components_3_io_out_resp_s2_full_pred_is_br_sharing; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s2_full_pred_hit = components_3_io_out_resp_s2_full_pred_hit; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0 =
    components_3_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1 =
    components_3_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0 =
    components_3_io_out_resp_s3_full_pred_slot_valids_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1 =
    components_3_io_out_resp_s3_full_pred_slot_valids_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_targets_0 = components_3_io_out_resp_s3_full_pred_targets_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_targets_1 = components_3_io_out_resp_s3_full_pred_targets_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_jalr_target = components_3_io_out_resp_s3_full_pred_jalr_target; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_0 = components_3_io_out_resp_s3_full_pred_offsets_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_offsets_1 = components_3_io_out_resp_s3_full_pred_offsets_1; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr =
    components_3_io_out_resp_s3_full_pred_fallThroughAddr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr =
    components_3_io_out_resp_s3_full_pred_fallThroughErr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_is_jalr = components_3_io_out_resp_s3_full_pred_is_jalr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_is_call = components_3_io_out_resp_s3_full_pred_is_call; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_is_ret = components_3_io_out_resp_s3_full_pred_is_ret; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing =
    components_3_io_out_resp_s3_full_pred_is_br_sharing; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_full_pred_hit = components_3_io_out_resp_s3_full_pred_hit; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_valid = components_3_io_out_resp_s3_ftb_entry_valid; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset =
    components_3_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower =
    components_3_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat =
    components_3_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing =
    components_3_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid =
    components_3_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset =
    components_3_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower =
    components_3_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat =
    components_3_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing =
    components_3_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid =
    components_3_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr = components_3_io_out_resp_s3_ftb_entry_pftAddr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_carry = components_3_io_out_resp_s3_ftb_entry_carry; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_isCall = components_3_io_out_resp_s3_ftb_entry_isCall; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_isRet = components_3_io_out_resp_s3_ftb_entry_isRet; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_isJalr = components_3_io_out_resp_s3_ftb_entry_isJalr; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call =
    components_3_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0 =
    components_3_io_out_resp_s3_ftb_entry_always_taken_0; // @[Parameters.scala 187:33]
  assign components_4_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1 =
    components_3_io_out_resp_s3_ftb_entry_always_taken_1; // @[Parameters.scala 187:33]
  assign components_4_io_ctrl_ras_enable = ras_io_ctrl_delay_io_out_ras_enable; // @[Composer.scala 50:15]
  assign components_4_io_s0_fire = io_s0_fire; // @[Composer.scala 41:18]
  assign components_4_io_s1_fire = io_s1_fire; // @[Composer.scala 42:18]
  assign components_4_io_s2_fire = io_s2_fire; // @[Composer.scala 43:18]
  assign components_4_io_s3_fire = io_s3_fire; // @[Composer.scala 44:18]
  assign components_4_io_s3_redirect = io_s3_redirect; // @[Composer.scala 47:22]
  assign components_4_io_redirect_valid = io_redirect_valid; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_level = io_redirect_bits_level; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_pc = io_redirect_bits_cfiUpdate_pc; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_pd_isRVC = io_redirect_bits_cfiUpdate_pd_isRVC; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_pd_isCall = io_redirect_bits_cfiUpdate_pd_isCall; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_pd_isRet = io_redirect_bits_cfiUpdate_pd_isRet; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_rasSp = io_redirect_bits_cfiUpdate_rasSp; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_rasEntry_retAddr = io_redirect_bits_cfiUpdate_rasEntry_retAddr; // @[Composer.scala 49:19]
  assign components_4_io_redirect_bits_cfiUpdate_rasEntry_ctr = io_redirect_bits_cfiUpdate_rasEntry_ctr; // @[Composer.scala 49:19]
  assign components_3_clock = clock;
  assign components_3_reset = reset;
  assign components_3_io_reset_vector = io_reset_vector; // @[Composer.scala 35:30]
  assign components_3_io_in_bits_s0_pc = io_in_bits_s0_pc; // @[Composer.scala 37:30]
  assign components_3_io_in_bits_folded_hist_hist_36_folded_hist = io_in_bits_folded_hist_hist_36_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_33_folded_hist = io_in_bits_folded_hist_hist_33_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_31_folded_hist = io_in_bits_folded_hist_hist_31_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_26_folded_hist = io_in_bits_folded_hist_hist_26_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_21_folded_hist = io_in_bits_folded_hist_hist_21_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_17_folded_hist = io_in_bits_folded_hist_hist_17_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_15_folded_hist = io_in_bits_folded_hist_hist_15_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_9_folded_hist = io_in_bits_folded_hist_hist_9_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_8_folded_hist = io_in_bits_folded_hist_hist_8_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_7_folded_hist = io_in_bits_folded_hist_hist_7_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_2_folded_hist = io_in_bits_folded_hist_hist_2_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_folded_hist_hist_1_folded_hist = io_in_bits_folded_hist_hist_1_folded_hist; // @[Composer.scala 38:30]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_nextAddr = components_2_io_out_resp_s1_minimal_pred_nextAddr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset =
    components_2_io_out_resp_s1_minimal_pred_cfiOffset; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_taken = components_2_io_out_resp_s1_minimal_pred_taken; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr =
    components_2_io_out_resp_s1_minimal_pred_takenOnBr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_brNumOH = components_2_io_out_resp_s1_minimal_pred_brNumOH; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s1_minimal_pred_valid = components_2_io_out_resp_s1_minimal_pred_valid; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0 =
    components_2_io_out_resp_s2_full_pred_br_taken_mask_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1 =
    components_2_io_out_resp_s2_full_pred_br_taken_mask_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_0 =
    components_2_io_out_resp_s2_full_pred_slot_valids_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_slot_valids_1 =
    components_2_io_out_resp_s2_full_pred_slot_valids_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_targets_0 = components_2_io_out_resp_s2_full_pred_targets_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_targets_1 = components_2_io_out_resp_s2_full_pred_targets_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_jalr_target = components_2_io_out_resp_s2_full_pred_jalr_target; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_0 = components_2_io_out_resp_s2_full_pred_offsets_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_offsets_1 = components_2_io_out_resp_s2_full_pred_offsets_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughAddr =
    components_2_io_out_resp_s2_full_pred_fallThroughAddr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_fallThroughErr =
    components_2_io_out_resp_s2_full_pred_fallThroughErr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_is_jalr = components_2_io_out_resp_s2_full_pred_is_jalr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_is_call = components_2_io_out_resp_s2_full_pred_is_call; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_is_ret = components_2_io_out_resp_s2_full_pred_is_ret; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_last_may_be_rvi_call =
    components_2_io_out_resp_s2_full_pred_last_may_be_rvi_call; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_is_br_sharing =
    components_2_io_out_resp_s2_full_pred_is_br_sharing; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s2_full_pred_hit = components_2_io_out_resp_s2_full_pred_hit; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0 =
    components_2_io_out_resp_s3_full_pred_br_taken_mask_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1 =
    components_2_io_out_resp_s3_full_pred_br_taken_mask_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_0 =
    components_2_io_out_resp_s3_full_pred_slot_valids_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_slot_valids_1 =
    components_2_io_out_resp_s3_full_pred_slot_valids_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_targets_0 = components_2_io_out_resp_s3_full_pred_targets_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_targets_1 = components_2_io_out_resp_s3_full_pred_targets_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_jalr_target = components_2_io_out_resp_s3_full_pred_jalr_target; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_0 = components_2_io_out_resp_s3_full_pred_offsets_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_offsets_1 = components_2_io_out_resp_s3_full_pred_offsets_1; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughAddr =
    components_2_io_out_resp_s3_full_pred_fallThroughAddr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_fallThroughErr =
    components_2_io_out_resp_s3_full_pred_fallThroughErr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_is_jalr = components_2_io_out_resp_s3_full_pred_is_jalr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_is_call = components_2_io_out_resp_s3_full_pred_is_call; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_is_ret = components_2_io_out_resp_s3_full_pred_is_ret; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_is_br_sharing =
    components_2_io_out_resp_s3_full_pred_is_br_sharing; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_full_pred_hit = components_2_io_out_resp_s3_full_pred_hit; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_valid = components_2_io_out_resp_s3_ftb_entry_valid; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_offset =
    components_2_io_out_resp_s3_ftb_entry_brSlots_0_offset; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_lower =
    components_2_io_out_resp_s3_ftb_entry_brSlots_0_lower; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_tarStat =
    components_2_io_out_resp_s3_ftb_entry_brSlots_0_tarStat; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_sharing =
    components_2_io_out_resp_s3_ftb_entry_brSlots_0_sharing; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_brSlots_0_valid =
    components_2_io_out_resp_s3_ftb_entry_brSlots_0_valid; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_offset =
    components_2_io_out_resp_s3_ftb_entry_tailSlot_offset; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_lower =
    components_2_io_out_resp_s3_ftb_entry_tailSlot_lower; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_tarStat =
    components_2_io_out_resp_s3_ftb_entry_tailSlot_tarStat; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_sharing =
    components_2_io_out_resp_s3_ftb_entry_tailSlot_sharing; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_tailSlot_valid =
    components_2_io_out_resp_s3_ftb_entry_tailSlot_valid; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_pftAddr = components_2_io_out_resp_s3_ftb_entry_pftAddr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_carry = components_2_io_out_resp_s3_ftb_entry_carry; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_isCall = components_2_io_out_resp_s3_ftb_entry_isCall; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_isRet = components_2_io_out_resp_s3_ftb_entry_isRet; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_isJalr = components_2_io_out_resp_s3_ftb_entry_isJalr; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_last_may_be_rvi_call =
    components_2_io_out_resp_s3_ftb_entry_last_may_be_rvi_call; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_0 =
    components_2_io_out_resp_s3_ftb_entry_always_taken_0; // @[Parameters.scala 186:37]
  assign components_3_io_in_bits_resp_in_0_s3_ftb_entry_always_taken_1 =
    components_2_io_out_resp_s3_ftb_entry_always_taken_1; // @[Parameters.scala 186:37]
  assign components_3_io_s0_fire = io_s0_fire; // @[Composer.scala 41:18]
  assign components_3_io_s1_fire = io_s1_fire; // @[Composer.scala 42:18]
  assign components_3_io_s2_fire = io_s2_fire; // @[Composer.scala 43:18]
  assign components_3_io_update_valid = io_update_valid; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_pc = io_update_bits_pc; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_br_taken_mask_0 = io_update_bits_full_pred_br_taken_mask_0; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_br_taken_mask_1 = io_update_bits_full_pred_br_taken_mask_1; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_slot_valids_0 = io_update_bits_full_pred_slot_valids_0; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_slot_valids_1 = io_update_bits_full_pred_slot_valids_1; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_is_jalr = io_update_bits_full_pred_is_jalr; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_is_ret = io_update_bits_full_pred_is_ret; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_full_pred_is_br_sharing = io_update_bits_full_pred_is_br_sharing; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_36_folded_hist = io_update_bits_folded_hist_hist_36_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_33_folded_hist = io_update_bits_folded_hist_hist_33_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_31_folded_hist = io_update_bits_folded_hist_hist_31_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_26_folded_hist = io_update_bits_folded_hist_hist_26_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_21_folded_hist = io_update_bits_folded_hist_hist_21_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_17_folded_hist = io_update_bits_folded_hist_hist_17_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_15_folded_hist = io_update_bits_folded_hist_hist_15_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_9_folded_hist = io_update_bits_folded_hist_hist_9_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_8_folded_hist = io_update_bits_folded_hist_hist_8_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_7_folded_hist = io_update_bits_folded_hist_hist_7_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_2_folded_hist = io_update_bits_folded_hist_hist_2_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_folded_hist_hist_1_folded_hist = io_update_bits_folded_hist_hist_1_folded_hist; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_ftb_entry_tailSlot_sharing = io_update_bits_ftb_entry_tailSlot_sharing; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_ftb_entry_tailSlot_valid = io_update_bits_ftb_entry_tailSlot_valid; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_mispred_mask_2 = io_update_bits_mispred_mask_2; // @[Composer.scala 69:17]
  assign components_3_io_update_bits_meta = io_update_bits_meta; // @[Composer.scala 71:31]
  assign components_3_io_update_bits_full_target = io_update_bits_full_target; // @[Composer.scala 69:17]
  assign ubtb_io_ctrl_delay_clock = clock;
  assign ubtb_io_ctrl_delay_io_in_ubtb_enable = io_ctrl_ubtb_enable; // @[Hold.scala 95:17]
  assign ubtb_io_ctrl_delay_io_in_btb_enable = io_ctrl_btb_enable; // @[Hold.scala 95:17]
  assign ubtb_io_ctrl_delay_io_in_tage_enable = io_ctrl_tage_enable; // @[Hold.scala 95:17]
  assign ubtb_io_ctrl_delay_io_in_sc_enable = io_ctrl_sc_enable; // @[Hold.scala 95:17]
  assign ubtb_io_ctrl_delay_io_in_ras_enable = io_ctrl_ras_enable; // @[Hold.scala 95:17]
  assign tage_io_ctrl_delay_clock = clock;
  assign tage_io_ctrl_delay_io_in_ubtb_enable = io_ctrl_ubtb_enable; // @[Hold.scala 95:17]
  assign tage_io_ctrl_delay_io_in_btb_enable = io_ctrl_btb_enable; // @[Hold.scala 95:17]
  assign tage_io_ctrl_delay_io_in_tage_enable = io_ctrl_tage_enable; // @[Hold.scala 95:17]
  assign tage_io_ctrl_delay_io_in_sc_enable = io_ctrl_sc_enable; // @[Hold.scala 95:17]
  assign tage_io_ctrl_delay_io_in_ras_enable = io_ctrl_ras_enable; // @[Hold.scala 95:17]
  assign ftb_io_ctrl_delay_clock = clock;
  assign ftb_io_ctrl_delay_io_in_ubtb_enable = io_ctrl_ubtb_enable; // @[Hold.scala 95:17]
  assign ftb_io_ctrl_delay_io_in_btb_enable = io_ctrl_btb_enable; // @[Hold.scala 95:17]
  assign ftb_io_ctrl_delay_io_in_tage_enable = io_ctrl_tage_enable; // @[Hold.scala 95:17]
  assign ftb_io_ctrl_delay_io_in_sc_enable = io_ctrl_sc_enable; // @[Hold.scala 95:17]
  assign ftb_io_ctrl_delay_io_in_ras_enable = io_ctrl_ras_enable; // @[Hold.scala 95:17]
  assign ittage_io_ctrl_delay_clock = clock;
  assign ittage_io_ctrl_delay_io_in_ubtb_enable = io_ctrl_ubtb_enable; // @[Hold.scala 95:17]
  assign ittage_io_ctrl_delay_io_in_btb_enable = io_ctrl_btb_enable; // @[Hold.scala 95:17]
  assign ittage_io_ctrl_delay_io_in_tage_enable = io_ctrl_tage_enable; // @[Hold.scala 95:17]
  assign ittage_io_ctrl_delay_io_in_sc_enable = io_ctrl_sc_enable; // @[Hold.scala 95:17]
  assign ittage_io_ctrl_delay_io_in_ras_enable = io_ctrl_ras_enable; // @[Hold.scala 95:17]
  assign ras_io_ctrl_delay_clock = clock;
  assign ras_io_ctrl_delay_io_in_ubtb_enable = io_ctrl_ubtb_enable; // @[Hold.scala 95:17]
  assign ras_io_ctrl_delay_io_in_btb_enable = io_ctrl_btb_enable; // @[Hold.scala 95:17]
  assign ras_io_ctrl_delay_io_in_tage_enable = io_ctrl_tage_enable; // @[Hold.scala 95:17]
  assign ras_io_ctrl_delay_io_in_sc_enable = io_ctrl_sc_enable; // @[Hold.scala 95:17]
  assign ras_io_ctrl_delay_io_in_ras_enable = io_ctrl_ras_enable; // @[Hold.scala 95:17]
  always @(posedge clock) begin
    io_perf_0_value_REG <= components_1_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= components_1_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= components_1_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= components_2_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= components_2_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
