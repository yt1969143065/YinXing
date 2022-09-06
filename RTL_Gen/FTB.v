module FTB(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc,
  input  [38:0]  io_in_bits_resp_in_0_s1_minimal_pred_nextAddr,
  input  [2:0]   io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset,
  input          io_in_bits_resp_in_0_s1_minimal_pred_taken,
  input          io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr,
  input  [2:0]   io_in_bits_resp_in_0_s1_minimal_pred_brNumOH,
  input          io_in_bits_resp_in_0_s1_minimal_pred_valid,
  input          io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1,
  output [511:0] io_out_last_stage_meta,
  output [38:0]  io_out_resp_s1_minimal_pred_nextAddr,
  output [2:0]   io_out_resp_s1_minimal_pred_cfiOffset,
  output         io_out_resp_s1_minimal_pred_taken,
  output         io_out_resp_s1_minimal_pred_takenOnBr,
  output [2:0]   io_out_resp_s1_minimal_pred_brNumOH,
  output         io_out_resp_s1_minimal_pred_valid,
  output         io_out_resp_s2_full_pred_br_taken_mask_0,
  output         io_out_resp_s2_full_pred_br_taken_mask_1,
  output         io_out_resp_s2_full_pred_slot_valids_0,
  output         io_out_resp_s2_full_pred_slot_valids_1,
  output [38:0]  io_out_resp_s2_full_pred_targets_0,
  output [38:0]  io_out_resp_s2_full_pred_targets_1,
  output [38:0]  io_out_resp_s2_full_pred_jalr_target,
  output [2:0]   io_out_resp_s2_full_pred_offsets_0,
  output [2:0]   io_out_resp_s2_full_pred_offsets_1,
  output [38:0]  io_out_resp_s2_full_pred_fallThroughAddr,
  output         io_out_resp_s2_full_pred_fallThroughErr,
  output         io_out_resp_s2_full_pred_is_jalr,
  output         io_out_resp_s2_full_pred_is_call,
  output         io_out_resp_s2_full_pred_is_ret,
  output         io_out_resp_s2_full_pred_last_may_be_rvi_call,
  output         io_out_resp_s2_full_pred_is_br_sharing,
  output         io_out_resp_s2_full_pred_hit,
  output         io_out_resp_s3_full_pred_br_taken_mask_0,
  output         io_out_resp_s3_full_pred_br_taken_mask_1,
  output         io_out_resp_s3_full_pred_slot_valids_0,
  output         io_out_resp_s3_full_pred_slot_valids_1,
  output [38:0]  io_out_resp_s3_full_pred_targets_0,
  output [38:0]  io_out_resp_s3_full_pred_targets_1,
  output [38:0]  io_out_resp_s3_full_pred_jalr_target,
  output [2:0]   io_out_resp_s3_full_pred_offsets_0,
  output [2:0]   io_out_resp_s3_full_pred_offsets_1,
  output [38:0]  io_out_resp_s3_full_pred_fallThroughAddr,
  output         io_out_resp_s3_full_pred_fallThroughErr,
  output         io_out_resp_s3_full_pred_is_jalr,
  output         io_out_resp_s3_full_pred_is_call,
  output         io_out_resp_s3_full_pred_is_ret,
  output         io_out_resp_s3_full_pred_is_br_sharing,
  output         io_out_resp_s3_full_pred_hit,
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
  input          io_ctrl_btb_enable,
  input          io_s0_fire,
  input          io_s1_fire,
  input          io_s2_fire,
  output         io_s1_ready,
  input          io_update_valid,
  input  [38:0]  io_update_bits_pc,
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
  input          io_update_bits_old_entry,
  input  [511:0] io_update_bits_meta,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
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
  reg [63:0] _RAND_47;
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
  reg [511:0] _RAND_67;
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
  reg [63:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 94:23]
  wire  ftbBank_clock; // @[FTB.scala 440:23]
  wire  ftbBank_reset; // @[FTB.scala 440:23]
  wire  ftbBank_io_s1_fire; // @[FTB.scala 440:23]
  wire  ftbBank_io_req_pc_ready; // @[FTB.scala 440:23]
  wire  ftbBank_io_req_pc_valid; // @[FTB.scala 440:23]
  wire [38:0] ftbBank_io_req_pc_bits; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_read_resp_brSlots_0_offset; // @[FTB.scala 440:23]
  wire [11:0] ftbBank_io_read_resp_brSlots_0_lower; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_read_resp_brSlots_0_tarStat; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_brSlots_0_sharing; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_brSlots_0_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_read_resp_tailSlot_offset; // @[FTB.scala 440:23]
  wire [19:0] ftbBank_io_read_resp_tailSlot_lower; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_read_resp_tailSlot_tarStat; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_tailSlot_sharing; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_tailSlot_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_read_resp_pftAddr; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_carry; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_isCall; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_isRet; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_isJalr; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_last_may_be_rvi_call; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_always_taken_0; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_resp_always_taken_1; // @[FTB.scala 440:23]
  wire  ftbBank_io_read_hits_valid; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_read_hits_bits; // @[FTB.scala 440:23]
  wire  ftbBank_io_u_req_pc_valid; // @[FTB.scala 440:23]
  wire [38:0] ftbBank_io_u_req_pc_bits; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_hits_valid; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_update_hits_bits; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_access; // @[FTB.scala 440:23]
  wire [38:0] ftbBank_io_update_pc; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_valid; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_offset; // @[FTB.scala 440:23]
  wire [11:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_lower; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_brSlots_0_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_tailSlot_offset; // @[FTB.scala 440:23]
  wire [19:0] ftbBank_io_update_write_data_bits_entry_tailSlot_lower; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_tailSlot_sharing; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_tailSlot_valid; // @[FTB.scala 440:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_pftAddr; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_carry; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_isCall; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_isRet; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_isJalr; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_always_taken_0; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_data_bits_entry_always_taken_1; // @[FTB.scala 440:23]
  wire [19:0] ftbBank_io_update_write_data_bits_tag; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_update_write_way; // @[FTB.scala 440:23]
  wire  ftbBank_io_update_write_alloc; // @[FTB.scala 440:23]
  wire  ftbBank_io_try_to_write_way_valid; // @[FTB.scala 440:23]
  wire [1:0] ftbBank_io_try_to_write_way_bits; // @[FTB.scala 440:23]
  wire [38:0] ftbBank_io_try_to_write_pc; // @[FTB.scala 440:23]
  reg [38:0] s1_pc; // @[Reg.scala 16:16]
  reg [38:0] s2_pc; // @[Reg.scala 16:16]
  reg [38:0] s3_pc; // @[Reg.scala 16:16]
  reg  REG; // @[BPU.scala 216:24]
  reg  REG_1; // @[BPU.scala 216:16]
  reg  ftb_entry_valid; // @[Reg.scala 16:16]
  reg [2:0] ftb_entry_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] ftb_entry_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] ftb_entry_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  ftb_entry_brSlots_0_sharing; // @[Reg.scala 16:16]
  reg  ftb_entry_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] ftb_entry_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] ftb_entry_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] ftb_entry_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  ftb_entry_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  ftb_entry_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] ftb_entry_pftAddr; // @[Reg.scala 16:16]
  reg  ftb_entry_carry; // @[Reg.scala 16:16]
  reg  ftb_entry_isCall; // @[Reg.scala 16:16]
  reg  ftb_entry_isRet; // @[Reg.scala 16:16]
  reg  ftb_entry_isJalr; // @[Reg.scala 16:16]
  reg  ftb_entry_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  ftb_entry_always_taken_0; // @[Reg.scala 16:16]
  reg  ftb_entry_always_taken_1; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s3_ftb_entry_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_brSlots_0_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s3_ftb_entry_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_pftAddr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_carry; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_isCall; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_isRet; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_isJalr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_always_taken_0; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_always_taken_1; // @[Reg.scala 16:16]
  wire  s1_hit = ftbBank_io_read_hits_valid & io_ctrl_btb_enable; // @[FTB.scala 447:43]
  reg  s2_hit; // @[Reg.scala 16:16]
  reg  s3_hit; // @[Reg.scala 16:16]
  wire [34:0] fallThruAddr_higher = s2_pc[38:4]; // @[BPU.scala 103:28]
  wire [34:0] _fallThruAddr_T_1 = fallThruAddr_higher + 35'h1; // @[BPU.scala 104:26]
  wire [34:0] _fallThruAddr_T_2 = ftb_entry_carry ? _fallThruAddr_T_1 : fallThruAddr_higher; // @[BPU.scala 104:12]
  wire [38:0] fallThruAddr = {_fallThruAddr_T_2,ftb_entry_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [25:0] h = s2_pc[38:13]; // @[FTB.scala 77:17]
  wire [25:0] higher_plus_one = h + 26'h1; // @[FTB.scala 90:30]
  wire [25:0] higher_minus_one = h - 26'h1; // @[FTB.scala 91:31]
  wire  _target_T = ftb_entry_brSlots_0_tarStat == 2'h1; // @[FTB.scala 96:19]
  wire  _target_T_1 = ftb_entry_brSlots_0_tarStat == 2'h2; // @[FTB.scala 97:19]
  wire  _target_T_2 = ftb_entry_brSlots_0_tarStat == 2'h0; // @[FTB.scala 98:19]
  wire [25:0] _target_T_3 = _target_T ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_4 = _target_T_1 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_5 = _target_T_2 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_6 = _target_T_3 | _target_T_4; // @[Mux.scala 27:73]
  wire [25:0] _target_T_7 = _target_T_6 | _target_T_5; // @[Mux.scala 27:73]
  wire [37:0] target_hi = {_target_T_7,ftb_entry_brSlots_0_lower}; // @[Cat.scala 31:58]
  wire  _target_T_9 = ftb_entry_tailSlot_tarStat == 2'h1; // @[FTB.scala 96:19]
  wire  _target_T_10 = ftb_entry_tailSlot_tarStat == 2'h2; // @[FTB.scala 97:19]
  wire  _target_T_11 = ftb_entry_tailSlot_tarStat == 2'h0; // @[FTB.scala 98:19]
  wire [25:0] _target_T_12 = _target_T_9 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_13 = _target_T_10 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_14 = _target_T_11 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_15 = _target_T_12 | _target_T_13; // @[Mux.scala 27:73]
  wire [25:0] _target_T_16 = _target_T_15 | _target_T_14; // @[Mux.scala 27:73]
  wire [38:0] target_1 = {_target_T_16,ftb_entry_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_2 = s2_pc[38:21]; // @[FTB.scala 77:17]
  wire [17:0] higher_plus_one_2 = h_2 + 18'h1; // @[FTB.scala 90:30]
  wire [17:0] higher_minus_one_2 = h_2 - 18'h1; // @[FTB.scala 91:31]
  wire [17:0] _target_T_21 = _target_T_9 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_22 = _target_T_10 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_23 = _target_T_11 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_24 = _target_T_21 | _target_T_22; // @[Mux.scala 27:73]
  wire [17:0] _target_T_25 = _target_T_24 | _target_T_23; // @[Mux.scala 27:73]
  wire [38:0] target_2 = {_target_T_25,ftb_entry_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower = {1'h0,s2_pc[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry = {ftb_entry_carry,ftb_entry_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_resp_s2_full_pred_fallThroughAddr_T_1 = s2_pc + 39'h10; // @[FrontendBundle.scala 510:47]
  wire [25:0] h_3 = s3_pc[38:13]; // @[FTB.scala 77:17]
  wire [25:0] higher_plus_one_3 = h_3 + 26'h1; // @[FTB.scala 90:30]
  wire [25:0] higher_minus_one_3 = h_3 - 26'h1; // @[FTB.scala 91:31]
  wire  _target_T_27 = s3_ftb_entry_brSlots_0_tarStat == 2'h1; // @[FTB.scala 96:19]
  wire  _target_T_28 = s3_ftb_entry_brSlots_0_tarStat == 2'h2; // @[FTB.scala 97:19]
  wire  _target_T_29 = s3_ftb_entry_brSlots_0_tarStat == 2'h0; // @[FTB.scala 98:19]
  wire [25:0] _target_T_30 = _target_T_27 ? higher_plus_one_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_31 = _target_T_28 ? higher_minus_one_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_32 = _target_T_29 ? h_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_33 = _target_T_30 | _target_T_31; // @[Mux.scala 27:73]
  wire [25:0] _target_T_34 = _target_T_33 | _target_T_32; // @[Mux.scala 27:73]
  wire [37:0] target_hi_3 = {_target_T_34,s3_ftb_entry_brSlots_0_lower}; // @[Cat.scala 31:58]
  wire  _target_T_36 = s3_ftb_entry_tailSlot_tarStat == 2'h1; // @[FTB.scala 96:19]
  wire  _target_T_37 = s3_ftb_entry_tailSlot_tarStat == 2'h2; // @[FTB.scala 97:19]
  wire  _target_T_38 = s3_ftb_entry_tailSlot_tarStat == 2'h0; // @[FTB.scala 98:19]
  wire [25:0] _target_T_39 = _target_T_36 ? higher_plus_one_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_40 = _target_T_37 ? higher_minus_one_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_41 = _target_T_38 ? h_3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_42 = _target_T_39 | _target_T_40; // @[Mux.scala 27:73]
  wire [25:0] _target_T_43 = _target_T_42 | _target_T_41; // @[Mux.scala 27:73]
  wire [38:0] target_4 = {_target_T_43,s3_ftb_entry_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_5 = s3_pc[38:21]; // @[FTB.scala 77:17]
  wire [17:0] higher_plus_one_5 = h_5 + 18'h1; // @[FTB.scala 90:30]
  wire [17:0] higher_minus_one_5 = h_5 - 18'h1; // @[FTB.scala 91:31]
  wire [17:0] _target_T_48 = _target_T_36 ? higher_plus_one_5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_49 = _target_T_37 ? higher_minus_one_5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_50 = _target_T_38 ? h_5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_51 = _target_T_48 | _target_T_49; // @[Mux.scala 27:73]
  wire [17:0] _target_T_52 = _target_T_51 | _target_T_50; // @[Mux.scala 27:73]
  wire [38:0] target_5 = {_target_T_52,s3_ftb_entry_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_1 = {1'h0,s3_pc[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_1 = {s3_ftb_entry_carry,s3_ftb_entry_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_resp_s3_full_pred_fallThroughAddr_T_1 = s3_pc + 39'h10; // @[FrontendBundle.scala 510:47]
  wire [34:0] io_out_resp_s3_full_pred_fallThroughAddr_higher = s3_pc[38:4]; // @[BPU.scala 103:28]
  wire [34:0] _io_out_resp_s3_full_pred_fallThroughAddr_T_3 = io_out_resp_s3_full_pred_fallThroughAddr_higher + 35'h1; // @[BPU.scala 104:26]
  wire [34:0] _io_out_resp_s3_full_pred_fallThroughAddr_T_4 = s3_ftb_entry_carry ?
    _io_out_resp_s3_full_pred_fallThroughAddr_T_3 : io_out_resp_s3_full_pred_fallThroughAddr_higher; // @[BPU.scala 104:12]
  wire [38:0] _io_out_resp_s3_full_pred_fallThroughAddr_T_5 = {_io_out_resp_s3_full_pred_fallThroughAddr_T_4,
    s3_ftb_entry_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] io_out_last_stage_meta_e_writeWay = ftbBank_io_read_hits_bits; // @[FTB.scala 248:17 249:16]
  wire [2:0] _io_out_last_stage_meta_T = {io_out_last_stage_meta_e_writeWay,s1_hit}; // @[FTB.scala 471:100]
  reg [2:0] io_out_last_stage_meta_r; // @[Reg.scala 16:16]
  reg [2:0] io_out_last_stage_meta_r1; // @[Reg.scala 16:16]
  reg [38:0] update_pc; // @[FTB.scala 480:23]
  reg  update_ftb_entry_valid; // @[FTB.scala 480:23]
  reg [2:0] update_ftb_entry_brSlots_0_offset; // @[FTB.scala 480:23]
  reg [11:0] update_ftb_entry_brSlots_0_lower; // @[FTB.scala 480:23]
  reg [1:0] update_ftb_entry_brSlots_0_tarStat; // @[FTB.scala 480:23]
  reg  update_ftb_entry_brSlots_0_sharing; // @[FTB.scala 480:23]
  reg  update_ftb_entry_brSlots_0_valid; // @[FTB.scala 480:23]
  reg [2:0] update_ftb_entry_tailSlot_offset; // @[FTB.scala 480:23]
  reg [19:0] update_ftb_entry_tailSlot_lower; // @[FTB.scala 480:23]
  reg [1:0] update_ftb_entry_tailSlot_tarStat; // @[FTB.scala 480:23]
  reg  update_ftb_entry_tailSlot_sharing; // @[FTB.scala 480:23]
  reg  update_ftb_entry_tailSlot_valid; // @[FTB.scala 480:23]
  reg [2:0] update_ftb_entry_pftAddr; // @[FTB.scala 480:23]
  reg  update_ftb_entry_carry; // @[FTB.scala 480:23]
  reg  update_ftb_entry_isCall; // @[FTB.scala 480:23]
  reg  update_ftb_entry_isRet; // @[FTB.scala 480:23]
  reg  update_ftb_entry_isJalr; // @[FTB.scala 480:23]
  reg  update_ftb_entry_last_may_be_rvi_call; // @[FTB.scala 480:23]
  reg  update_ftb_entry_always_taken_0; // @[FTB.scala 480:23]
  reg  update_ftb_entry_always_taken_1; // @[FTB.scala 480:23]
  reg [511:0] update_meta; // @[FTB.scala 480:23]
  wire  u_meta_hit = update_meta[0]; // @[FTB.scala 487:36]
  wire [1:0] u_meta_writeWay = update_meta[2:1]; // @[FTB.scala 487:36]
  reg  u_valid; // @[FTB.scala 488:24]
  wire  _io_s1_ready_T = ~u_meta_hit; // @[FTB.scala 491:58]
  wire  update_now = u_valid & u_meta_hit; // @[FTB.scala 494:28]
  reg  ftb_write_entry_REG_valid; // @[FTB.scala 507:63]
  reg [2:0] ftb_write_entry_REG_brSlots_0_offset; // @[FTB.scala 507:63]
  reg [11:0] ftb_write_entry_REG_brSlots_0_lower; // @[FTB.scala 507:63]
  reg [1:0] ftb_write_entry_REG_brSlots_0_tarStat; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_brSlots_0_sharing; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_brSlots_0_valid; // @[FTB.scala 507:63]
  reg [2:0] ftb_write_entry_REG_tailSlot_offset; // @[FTB.scala 507:63]
  reg [19:0] ftb_write_entry_REG_tailSlot_lower; // @[FTB.scala 507:63]
  reg [1:0] ftb_write_entry_REG_tailSlot_tarStat; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_tailSlot_sharing; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_tailSlot_valid; // @[FTB.scala 507:63]
  reg [2:0] ftb_write_entry_REG_pftAddr; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_carry; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_isCall; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_isRet; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_isJalr; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_last_may_be_rvi_call; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_always_taken_0; // @[FTB.scala 507:63]
  reg  ftb_write_entry_REG_always_taken_1; // @[FTB.scala 507:63]
  reg [38:0] ftb_write_tag_REG; // @[FTB.scala 508:71]
  wire [38:0] _ftb_write_tag_T = update_now ? update_pc : ftb_write_tag_REG; // @[FTB.scala 508:40]
  reg  write_valid_REG; // @[FTB.scala 511:42]
  reg [38:0] ftbBank_io_update_pc_REG; // @[FTB.scala 520:61]
  reg  ftbBank_io_try_to_write_way_valid_REG; // @[FTB.scala 528:47]
  reg  REG_6; // @[FTB.scala 551:44]
  reg  REG_7; // @[FTB.scala 552:44]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 94:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  FTBBank ftbBank ( // @[FTB.scala 440:23]
    .clock(ftbBank_clock),
    .reset(ftbBank_reset),
    .io_s1_fire(ftbBank_io_s1_fire),
    .io_req_pc_ready(ftbBank_io_req_pc_ready),
    .io_req_pc_valid(ftbBank_io_req_pc_valid),
    .io_req_pc_bits(ftbBank_io_req_pc_bits),
    .io_read_resp_valid(ftbBank_io_read_resp_valid),
    .io_read_resp_brSlots_0_offset(ftbBank_io_read_resp_brSlots_0_offset),
    .io_read_resp_brSlots_0_lower(ftbBank_io_read_resp_brSlots_0_lower),
    .io_read_resp_brSlots_0_tarStat(ftbBank_io_read_resp_brSlots_0_tarStat),
    .io_read_resp_brSlots_0_sharing(ftbBank_io_read_resp_brSlots_0_sharing),
    .io_read_resp_brSlots_0_valid(ftbBank_io_read_resp_brSlots_0_valid),
    .io_read_resp_tailSlot_offset(ftbBank_io_read_resp_tailSlot_offset),
    .io_read_resp_tailSlot_lower(ftbBank_io_read_resp_tailSlot_lower),
    .io_read_resp_tailSlot_tarStat(ftbBank_io_read_resp_tailSlot_tarStat),
    .io_read_resp_tailSlot_sharing(ftbBank_io_read_resp_tailSlot_sharing),
    .io_read_resp_tailSlot_valid(ftbBank_io_read_resp_tailSlot_valid),
    .io_read_resp_pftAddr(ftbBank_io_read_resp_pftAddr),
    .io_read_resp_carry(ftbBank_io_read_resp_carry),
    .io_read_resp_isCall(ftbBank_io_read_resp_isCall),
    .io_read_resp_isRet(ftbBank_io_read_resp_isRet),
    .io_read_resp_isJalr(ftbBank_io_read_resp_isJalr),
    .io_read_resp_last_may_be_rvi_call(ftbBank_io_read_resp_last_may_be_rvi_call),
    .io_read_resp_always_taken_0(ftbBank_io_read_resp_always_taken_0),
    .io_read_resp_always_taken_1(ftbBank_io_read_resp_always_taken_1),
    .io_read_hits_valid(ftbBank_io_read_hits_valid),
    .io_read_hits_bits(ftbBank_io_read_hits_bits),
    .io_u_req_pc_valid(ftbBank_io_u_req_pc_valid),
    .io_u_req_pc_bits(ftbBank_io_u_req_pc_bits),
    .io_update_hits_valid(ftbBank_io_update_hits_valid),
    .io_update_hits_bits(ftbBank_io_update_hits_bits),
    .io_update_access(ftbBank_io_update_access),
    .io_update_pc(ftbBank_io_update_pc),
    .io_update_write_data_valid(ftbBank_io_update_write_data_valid),
    .io_update_write_data_bits_entry_valid(ftbBank_io_update_write_data_bits_entry_valid),
    .io_update_write_data_bits_entry_brSlots_0_offset(ftbBank_io_update_write_data_bits_entry_brSlots_0_offset),
    .io_update_write_data_bits_entry_brSlots_0_lower(ftbBank_io_update_write_data_bits_entry_brSlots_0_lower),
    .io_update_write_data_bits_entry_brSlots_0_tarStat(ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat),
    .io_update_write_data_bits_entry_brSlots_0_sharing(ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing),
    .io_update_write_data_bits_entry_brSlots_0_valid(ftbBank_io_update_write_data_bits_entry_brSlots_0_valid),
    .io_update_write_data_bits_entry_tailSlot_offset(ftbBank_io_update_write_data_bits_entry_tailSlot_offset),
    .io_update_write_data_bits_entry_tailSlot_lower(ftbBank_io_update_write_data_bits_entry_tailSlot_lower),
    .io_update_write_data_bits_entry_tailSlot_tarStat(ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat),
    .io_update_write_data_bits_entry_tailSlot_sharing(ftbBank_io_update_write_data_bits_entry_tailSlot_sharing),
    .io_update_write_data_bits_entry_tailSlot_valid(ftbBank_io_update_write_data_bits_entry_tailSlot_valid),
    .io_update_write_data_bits_entry_pftAddr(ftbBank_io_update_write_data_bits_entry_pftAddr),
    .io_update_write_data_bits_entry_carry(ftbBank_io_update_write_data_bits_entry_carry),
    .io_update_write_data_bits_entry_isCall(ftbBank_io_update_write_data_bits_entry_isCall),
    .io_update_write_data_bits_entry_isRet(ftbBank_io_update_write_data_bits_entry_isRet),
    .io_update_write_data_bits_entry_isJalr(ftbBank_io_update_write_data_bits_entry_isJalr),
    .io_update_write_data_bits_entry_last_may_be_rvi_call(ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call),
    .io_update_write_data_bits_entry_always_taken_0(ftbBank_io_update_write_data_bits_entry_always_taken_0),
    .io_update_write_data_bits_entry_always_taken_1(ftbBank_io_update_write_data_bits_entry_always_taken_1),
    .io_update_write_data_bits_tag(ftbBank_io_update_write_data_bits_tag),
    .io_update_write_way(ftbBank_io_update_write_way),
    .io_update_write_alloc(ftbBank_io_update_write_alloc),
    .io_try_to_write_way_valid(ftbBank_io_try_to_write_way_valid),
    .io_try_to_write_way_bits(ftbBank_io_try_to_write_way_bits),
    .io_try_to_write_pc(ftbBank_io_try_to_write_pc)
  );
  assign io_out_last_stage_meta = {{509'd0}, io_out_last_stage_meta_r1}; // @[FTB.scala 471:26]
  assign io_out_resp_s1_minimal_pred_nextAddr = io_in_bits_resp_in_0_s1_minimal_pred_nextAddr; // @[FTB.scala 455:15]
  assign io_out_resp_s1_minimal_pred_cfiOffset = io_in_bits_resp_in_0_s1_minimal_pred_cfiOffset; // @[FTB.scala 455:15]
  assign io_out_resp_s1_minimal_pred_taken = io_in_bits_resp_in_0_s1_minimal_pred_taken; // @[FTB.scala 455:15]
  assign io_out_resp_s1_minimal_pred_takenOnBr = io_in_bits_resp_in_0_s1_minimal_pred_takenOnBr; // @[FTB.scala 455:15]
  assign io_out_resp_s1_minimal_pred_brNumOH = io_in_bits_resp_in_0_s1_minimal_pred_brNumOH; // @[FTB.scala 455:15]
  assign io_out_resp_s1_minimal_pred_valid = io_in_bits_resp_in_0_s1_minimal_pred_valid; // @[FTB.scala 455:15]
  assign io_out_resp_s2_full_pred_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_0 | s2_hit &
    ftb_entry_always_taken_0; // @[FTB.scala 475:102]
  assign io_out_resp_s2_full_pred_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_br_taken_mask_1 | s2_hit &
    ftb_entry_always_taken_1; // @[FTB.scala 475:102]
  assign io_out_resp_s2_full_pred_slot_valids_0 = ftb_entry_brSlots_0_valid; // @[FrontendBundle.scala 496:17]
  assign io_out_resp_s2_full_pred_slot_valids_1 = ftb_entry_tailSlot_valid; // @[FrontendBundle.scala 496:17]
  assign io_out_resp_s2_full_pred_targets_0 = {target_hi,1'h0}; // @[Cat.scala 31:58]
  assign io_out_resp_s2_full_pred_targets_1 = ftb_entry_tailSlot_sharing ? target_1 : target_2; // @[FTB.scala 107:10]
  assign io_out_resp_s2_full_pred_jalr_target = io_out_resp_s2_full_pred_targets_1; // @[FrontendBundle.scala 498:17]
  assign io_out_resp_s2_full_pred_offsets_0 = ftb_entry_brSlots_0_offset; // @[FTB.scala 171:{29,29}]
  assign io_out_resp_s2_full_pred_offsets_1 = ftb_entry_tailSlot_offset; // @[FTB.scala 171:{29,29}]
  assign io_out_resp_s2_full_pred_fallThroughAddr = io_out_resp_s2_full_pred_fallThroughErr ?
    _io_out_resp_s2_full_pred_fallThroughAddr_T_1 : fallThruAddr; // @[FrontendBundle.scala 510:27]
  assign io_out_resp_s2_full_pred_fallThroughErr = startLower >= endLowerwithCarry; // @[FrontendBundle.scala 509:34]
  assign io_out_resp_s2_full_pred_is_jalr = ftb_entry_tailSlot_valid & ftb_entry_isJalr; // @[FrontendBundle.scala 501:37]
  assign io_out_resp_s2_full_pred_is_call = ftb_entry_tailSlot_valid & ftb_entry_isCall; // @[FrontendBundle.scala 502:37]
  assign io_out_resp_s2_full_pred_is_ret = ftb_entry_tailSlot_valid & ftb_entry_isRet; // @[FrontendBundle.scala 503:36]
  assign io_out_resp_s2_full_pred_last_may_be_rvi_call = ftb_entry_last_may_be_rvi_call; // @[FrontendBundle.scala 504:26]
  assign io_out_resp_s2_full_pred_is_br_sharing = ftb_entry_tailSlot_valid & ftb_entry_tailSlot_sharing; // @[FrontendBundle.scala 505:43]
  assign io_out_resp_s2_full_pred_hit = s2_hit; // @[FTB.scala 459:38]
  assign io_out_resp_s3_full_pred_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_0 | s3_hit &
    s3_ftb_entry_always_taken_0; // @[FTB.scala 476:102]
  assign io_out_resp_s3_full_pred_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_br_taken_mask_1 | s3_hit &
    s3_ftb_entry_always_taken_1; // @[FTB.scala 476:102]
  assign io_out_resp_s3_full_pred_slot_valids_0 = s3_ftb_entry_brSlots_0_valid; // @[FrontendBundle.scala 496:17]
  assign io_out_resp_s3_full_pred_slot_valids_1 = s3_ftb_entry_tailSlot_valid; // @[FrontendBundle.scala 496:17]
  assign io_out_resp_s3_full_pred_targets_0 = {target_hi_3,1'h0}; // @[Cat.scala 31:58]
  assign io_out_resp_s3_full_pred_targets_1 = s3_ftb_entry_tailSlot_sharing ? target_4 : target_5; // @[FTB.scala 107:10]
  assign io_out_resp_s3_full_pred_jalr_target = io_out_resp_s3_full_pred_targets_1; // @[FrontendBundle.scala 498:17]
  assign io_out_resp_s3_full_pred_offsets_0 = s3_ftb_entry_brSlots_0_offset; // @[FTB.scala 171:{29,29}]
  assign io_out_resp_s3_full_pred_offsets_1 = s3_ftb_entry_tailSlot_offset; // @[FTB.scala 171:{29,29}]
  assign io_out_resp_s3_full_pred_fallThroughAddr = io_out_resp_s3_full_pred_fallThroughErr ?
    _io_out_resp_s3_full_pred_fallThroughAddr_T_1 : _io_out_resp_s3_full_pred_fallThroughAddr_T_5; // @[FrontendBundle.scala 510:27]
  assign io_out_resp_s3_full_pred_fallThroughErr = startLower_1 >= endLowerwithCarry_1; // @[FrontendBundle.scala 509:34]
  assign io_out_resp_s3_full_pred_is_jalr = s3_ftb_entry_tailSlot_valid & s3_ftb_entry_isJalr; // @[FrontendBundle.scala 501:37]
  assign io_out_resp_s3_full_pred_is_call = s3_ftb_entry_tailSlot_valid & s3_ftb_entry_isCall; // @[FrontendBundle.scala 502:37]
  assign io_out_resp_s3_full_pred_is_ret = s3_ftb_entry_tailSlot_valid & s3_ftb_entry_isRet; // @[FrontendBundle.scala 503:36]
  assign io_out_resp_s3_full_pred_is_br_sharing = s3_ftb_entry_tailSlot_valid & s3_ftb_entry_tailSlot_sharing; // @[FrontendBundle.scala 505:43]
  assign io_out_resp_s3_full_pred_hit = s3_hit; // @[FTB.scala 465:32]
  assign io_out_resp_s3_ftb_entry_valid = s3_ftb_entry_valid; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_brSlots_0_offset = s3_ftb_entry_brSlots_0_offset; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_brSlots_0_lower = s3_ftb_entry_brSlots_0_lower; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_brSlots_0_tarStat = s3_ftb_entry_brSlots_0_tarStat; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_brSlots_0_sharing = s3_ftb_entry_brSlots_0_sharing; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_brSlots_0_valid = s3_ftb_entry_brSlots_0_valid; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_tailSlot_offset = s3_ftb_entry_tailSlot_offset; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_tailSlot_lower = s3_ftb_entry_tailSlot_lower; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_tailSlot_tarStat = s3_ftb_entry_tailSlot_tarStat; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_tailSlot_sharing = s3_ftb_entry_tailSlot_sharing; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_tailSlot_valid = s3_ftb_entry_tailSlot_valid; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_pftAddr = s3_ftb_entry_pftAddr; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_carry = s3_ftb_entry_carry; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_isCall = s3_ftb_entry_isCall; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_isRet = s3_ftb_entry_isRet; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_isJalr = s3_ftb_entry_isJalr; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_last_may_be_rvi_call = s3_ftb_entry_last_may_be_rvi_call; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_always_taken_0 = s3_ftb_entry_always_taken_0; // @[FTB.scala 467:38]
  assign io_out_resp_s3_ftb_entry_always_taken_1 = s3_ftb_entry_always_taken_1; // @[FTB.scala 467:38]
  assign io_s1_ready = ftbBank_io_req_pc_ready & ~(u_valid & ~u_meta_hit); // @[FTB.scala 491:42]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 95:17]
  assign ftbBank_clock = clock;
  assign ftbBank_reset = reset;
  assign ftbBank_io_s1_fire = io_s1_fire; // @[FTB.scala 525:22]
  assign ftbBank_io_req_pc_valid = io_s0_fire; // @[FTB.scala 442:27]
  assign ftbBank_io_req_pc_bits = io_in_bits_s0_pc; // @[FTB.scala 443:26]
  assign ftbBank_io_u_req_pc_valid = u_valid & _io_s1_ready_T; // @[FTB.scala 496:40]
  assign ftbBank_io_u_req_pc_bits = update_pc; // @[FTB.scala 497:28]
  assign ftbBank_io_update_access = u_valid & _io_s1_ready_T; // @[FTB.scala 524:39]
  assign ftbBank_io_update_pc = update_now ? update_pc : ftbBank_io_update_pc_REG; // @[FTB.scala 520:30]
  assign ftbBank_io_update_write_data_valid = update_now | write_valid_REG; // @[FTB.scala 511:32]
  assign ftbBank_io_update_write_data_bits_entry_valid = update_now ? update_ftb_entry_valid : ftb_write_entry_REG_valid
    ; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_offset = update_now ? update_ftb_entry_brSlots_0_offset :
    ftb_write_entry_REG_brSlots_0_offset; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_lower = update_now ? update_ftb_entry_brSlots_0_lower :
    ftb_write_entry_REG_brSlots_0_lower; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat = update_now ? update_ftb_entry_brSlots_0_tarStat :
    ftb_write_entry_REG_brSlots_0_tarStat; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing = update_now ? update_ftb_entry_brSlots_0_sharing :
    ftb_write_entry_REG_brSlots_0_sharing; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_valid = update_now ? update_ftb_entry_brSlots_0_valid :
    ftb_write_entry_REG_brSlots_0_valid; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_offset = update_now ? update_ftb_entry_tailSlot_offset :
    ftb_write_entry_REG_tailSlot_offset; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_lower = update_now ? update_ftb_entry_tailSlot_lower :
    ftb_write_entry_REG_tailSlot_lower; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat = update_now ? update_ftb_entry_tailSlot_tarStat :
    ftb_write_entry_REG_tailSlot_tarStat; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_sharing = update_now ? update_ftb_entry_tailSlot_sharing :
    ftb_write_entry_REG_tailSlot_sharing; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_valid = update_now ? update_ftb_entry_tailSlot_valid :
    ftb_write_entry_REG_tailSlot_valid; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_pftAddr = update_now ? update_ftb_entry_pftAddr :
    ftb_write_entry_REG_pftAddr; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_carry = update_now ? update_ftb_entry_carry : ftb_write_entry_REG_carry
    ; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_isCall = update_now ? update_ftb_entry_isCall :
    ftb_write_entry_REG_isCall; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_isRet = update_now ? update_ftb_entry_isRet : ftb_write_entry_REG_isRet
    ; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_isJalr = update_now ? update_ftb_entry_isJalr :
    ftb_write_entry_REG_isJalr; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call = update_now ?
    update_ftb_entry_last_may_be_rvi_call : ftb_write_entry_REG_last_may_be_rvi_call; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_always_taken_0 = update_now ? update_ftb_entry_always_taken_0 :
    ftb_write_entry_REG_always_taken_0; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_entry_always_taken_1 = update_now ? update_ftb_entry_always_taken_1 :
    ftb_write_entry_REG_always_taken_1; // @[FTB.scala 507:25]
  assign ftbBank_io_update_write_data_bits_tag = _ftb_write_tag_T[29:10]; // @[FTB.scala 508:84]
  assign ftbBank_io_update_write_way = update_now ? u_meta_writeWay : ftbBank_io_update_hits_bits; // @[FTB.scala 521:37]
  assign ftbBank_io_update_write_alloc = update_now ? 1'h0 : ~ftbBank_io_update_hits_valid; // @[FTB.scala 523:39]
  assign ftbBank_io_try_to_write_way_valid = ftbBank_io_try_to_write_way_valid_REG & u_meta_hit; // @[FTB.scala 528:65]
  assign ftbBank_io_try_to_write_way_bits = update_meta[2:1]; // @[FTB.scala 487:36]
  assign ftbBank_io_try_to_write_pc = update_pc; // @[FTB.scala 530:30]
  always @(posedge clock) begin
    if (REG_1) begin // @[BPU.scala 216:58]
      s1_pc <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 217:11]
    end else if (io_s0_fire) begin // @[Reg.scala 17:18]
      s1_pc <= io_in_bits_s0_pc; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      s2_pc <= s1_pc; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_pc <= s2_pc; // @[Reg.scala 17:22]
    end
    REG <= reset; // @[BPU.scala 216:31]
    REG_1 <= REG & ~reset; // @[BPU.scala 216:39]
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_valid <= ftbBank_io_read_resp_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_brSlots_0_offset <= ftbBank_io_read_resp_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_brSlots_0_lower <= ftbBank_io_read_resp_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_brSlots_0_tarStat <= ftbBank_io_read_resp_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_brSlots_0_sharing <= ftbBank_io_read_resp_brSlots_0_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_brSlots_0_valid <= ftbBank_io_read_resp_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_tailSlot_offset <= ftbBank_io_read_resp_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_tailSlot_lower <= ftbBank_io_read_resp_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_tailSlot_tarStat <= ftbBank_io_read_resp_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_tailSlot_sharing <= ftbBank_io_read_resp_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_tailSlot_valid <= ftbBank_io_read_resp_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_pftAddr <= ftbBank_io_read_resp_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_isCall <= ftbBank_io_read_resp_isCall; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_isRet <= ftbBank_io_read_resp_isRet; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_isJalr <= ftbBank_io_read_resp_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_last_may_be_rvi_call <= ftbBank_io_read_resp_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_always_taken_0 <= ftbBank_io_read_resp_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      ftb_entry_always_taken_1 <= ftbBank_io_read_resp_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_valid <= ftb_entry_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_brSlots_0_offset <= ftb_entry_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_brSlots_0_lower <= ftb_entry_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_brSlots_0_tarStat <= ftb_entry_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_brSlots_0_sharing <= ftb_entry_brSlots_0_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_brSlots_0_valid <= ftb_entry_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_tailSlot_offset <= ftb_entry_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_tailSlot_lower <= ftb_entry_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_tailSlot_tarStat <= ftb_entry_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_tailSlot_sharing <= ftb_entry_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_tailSlot_valid <= ftb_entry_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_pftAddr <= ftb_entry_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_carry <= ftb_entry_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_isCall <= ftb_entry_isCall; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_isRet <= ftb_entry_isRet; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_isJalr <= ftb_entry_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_last_may_be_rvi_call <= ftb_entry_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_always_taken_0 <= ftb_entry_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_ftb_entry_always_taken_1 <= ftb_entry_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      s2_hit <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      s3_hit <= s2_hit; // @[Reg.scala 17:22]
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r <= _io_out_last_stage_meta_T; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r1 <= io_out_last_stage_meta_r; // @[Reg.scala 17:22]
    end
    update_pc <= io_update_bits_pc; // @[FTB.scala 480:23]
    update_ftb_entry_valid <= io_update_bits_ftb_entry_valid; // @[FTB.scala 480:23]
    update_ftb_entry_brSlots_0_offset <= io_update_bits_ftb_entry_brSlots_0_offset; // @[FTB.scala 480:23]
    update_ftb_entry_brSlots_0_lower <= io_update_bits_ftb_entry_brSlots_0_lower; // @[FTB.scala 480:23]
    update_ftb_entry_brSlots_0_tarStat <= io_update_bits_ftb_entry_brSlots_0_tarStat; // @[FTB.scala 480:23]
    update_ftb_entry_brSlots_0_sharing <= io_update_bits_ftb_entry_brSlots_0_sharing; // @[FTB.scala 480:23]
    update_ftb_entry_brSlots_0_valid <= io_update_bits_ftb_entry_brSlots_0_valid; // @[FTB.scala 480:23]
    update_ftb_entry_tailSlot_offset <= io_update_bits_ftb_entry_tailSlot_offset; // @[FTB.scala 480:23]
    update_ftb_entry_tailSlot_lower <= io_update_bits_ftb_entry_tailSlot_lower; // @[FTB.scala 480:23]
    update_ftb_entry_tailSlot_tarStat <= io_update_bits_ftb_entry_tailSlot_tarStat; // @[FTB.scala 480:23]
    update_ftb_entry_tailSlot_sharing <= io_update_bits_ftb_entry_tailSlot_sharing; // @[FTB.scala 480:23]
    update_ftb_entry_tailSlot_valid <= io_update_bits_ftb_entry_tailSlot_valid; // @[FTB.scala 480:23]
    update_ftb_entry_pftAddr <= io_update_bits_ftb_entry_pftAddr; // @[FTB.scala 480:23]
    update_ftb_entry_carry <= io_update_bits_ftb_entry_carry; // @[FTB.scala 480:23]
    update_ftb_entry_isCall <= io_update_bits_ftb_entry_isCall; // @[FTB.scala 480:23]
    update_ftb_entry_isRet <= io_update_bits_ftb_entry_isRet; // @[FTB.scala 480:23]
    update_ftb_entry_isJalr <= io_update_bits_ftb_entry_isJalr; // @[FTB.scala 480:23]
    update_ftb_entry_last_may_be_rvi_call <= io_update_bits_ftb_entry_last_may_be_rvi_call; // @[FTB.scala 480:23]
    update_ftb_entry_always_taken_0 <= io_update_bits_ftb_entry_always_taken_0; // @[FTB.scala 480:23]
    update_ftb_entry_always_taken_1 <= io_update_bits_ftb_entry_always_taken_1; // @[FTB.scala 480:23]
    update_meta <= io_update_bits_meta; // @[FTB.scala 480:23]
    u_valid <= io_update_valid & ~io_update_bits_old_entry; // @[FTB.scala 488:41]
    ftb_write_entry_REG_valid <= update_ftb_entry_valid; // @[FTB.scala 507:63]
    ftb_write_entry_REG_brSlots_0_offset <= update_ftb_entry_brSlots_0_offset; // @[FTB.scala 507:63]
    ftb_write_entry_REG_brSlots_0_lower <= update_ftb_entry_brSlots_0_lower; // @[FTB.scala 507:63]
    ftb_write_entry_REG_brSlots_0_tarStat <= update_ftb_entry_brSlots_0_tarStat; // @[FTB.scala 507:63]
    ftb_write_entry_REG_brSlots_0_sharing <= update_ftb_entry_brSlots_0_sharing; // @[FTB.scala 507:63]
    ftb_write_entry_REG_brSlots_0_valid <= update_ftb_entry_brSlots_0_valid; // @[FTB.scala 507:63]
    ftb_write_entry_REG_tailSlot_offset <= update_ftb_entry_tailSlot_offset; // @[FTB.scala 507:63]
    ftb_write_entry_REG_tailSlot_lower <= update_ftb_entry_tailSlot_lower; // @[FTB.scala 507:63]
    ftb_write_entry_REG_tailSlot_tarStat <= update_ftb_entry_tailSlot_tarStat; // @[FTB.scala 507:63]
    ftb_write_entry_REG_tailSlot_sharing <= update_ftb_entry_tailSlot_sharing; // @[FTB.scala 507:63]
    ftb_write_entry_REG_tailSlot_valid <= update_ftb_entry_tailSlot_valid; // @[FTB.scala 507:63]
    ftb_write_entry_REG_pftAddr <= update_ftb_entry_pftAddr; // @[FTB.scala 507:63]
    ftb_write_entry_REG_carry <= update_ftb_entry_carry; // @[FTB.scala 507:63]
    ftb_write_entry_REG_isCall <= update_ftb_entry_isCall; // @[FTB.scala 507:63]
    ftb_write_entry_REG_isRet <= update_ftb_entry_isRet; // @[FTB.scala 507:63]
    ftb_write_entry_REG_isJalr <= update_ftb_entry_isJalr; // @[FTB.scala 507:63]
    ftb_write_entry_REG_last_may_be_rvi_call <= update_ftb_entry_last_may_be_rvi_call; // @[FTB.scala 507:63]
    ftb_write_entry_REG_always_taken_0 <= update_ftb_entry_always_taken_0; // @[FTB.scala 507:63]
    ftb_write_entry_REG_always_taken_1 <= update_ftb_entry_always_taken_1; // @[FTB.scala 507:63]
    ftb_write_tag_REG <= update_pc; // @[FTB.scala 508:71]
    write_valid_REG <= u_valid & _io_s1_ready_T; // @[FTB.scala 511:51]
    ftbBank_io_update_pc_REG <= update_pc; // @[FTB.scala 520:61]
    ftbBank_io_try_to_write_way_valid_REG <= io_update_valid; // @[FTB.scala 528:47]
    REG_6 <= io_update_valid; // @[FTB.scala 551:44]
    REG_7 <= io_update_valid; // @[FTB.scala 552:44]
    io_perf_0_value_REG <= REG_6 & u_meta_hit; // @[FTB.scala 551:63]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= REG_7 & _io_s1_ready_T; // @[FTB.scala 552:63]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  s1_pc = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  s2_pc = _RAND_1[38:0];
  _RAND_2 = {2{`RANDOM}};
  s3_pc = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ftb_entry_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ftb_entry_brSlots_0_offset = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  ftb_entry_brSlots_0_lower = _RAND_7[11:0];
  _RAND_8 = {1{`RANDOM}};
  ftb_entry_brSlots_0_tarStat = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  ftb_entry_brSlots_0_sharing = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ftb_entry_brSlots_0_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ftb_entry_tailSlot_offset = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  ftb_entry_tailSlot_lower = _RAND_12[19:0];
  _RAND_13 = {1{`RANDOM}};
  ftb_entry_tailSlot_tarStat = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  ftb_entry_tailSlot_sharing = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  ftb_entry_tailSlot_valid = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  ftb_entry_pftAddr = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  ftb_entry_carry = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  ftb_entry_isCall = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ftb_entry_isRet = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ftb_entry_isJalr = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  ftb_entry_last_may_be_rvi_call = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  ftb_entry_always_taken_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  ftb_entry_always_taken_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s3_ftb_entry_valid = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s3_ftb_entry_brSlots_0_offset = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  s3_ftb_entry_brSlots_0_lower = _RAND_26[11:0];
  _RAND_27 = {1{`RANDOM}};
  s3_ftb_entry_brSlots_0_tarStat = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  s3_ftb_entry_brSlots_0_sharing = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s3_ftb_entry_brSlots_0_valid = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s3_ftb_entry_tailSlot_offset = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  s3_ftb_entry_tailSlot_lower = _RAND_31[19:0];
  _RAND_32 = {1{`RANDOM}};
  s3_ftb_entry_tailSlot_tarStat = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  s3_ftb_entry_tailSlot_sharing = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s3_ftb_entry_tailSlot_valid = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s3_ftb_entry_pftAddr = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  s3_ftb_entry_carry = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s3_ftb_entry_isCall = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s3_ftb_entry_isRet = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s3_ftb_entry_isJalr = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s3_ftb_entry_last_may_be_rvi_call = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s3_ftb_entry_always_taken_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s3_ftb_entry_always_taken_1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s2_hit = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s3_hit = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_out_last_stage_meta_r = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  io_out_last_stage_meta_r1 = _RAND_46[2:0];
  _RAND_47 = {2{`RANDOM}};
  update_pc = _RAND_47[38:0];
  _RAND_48 = {1{`RANDOM}};
  update_ftb_entry_valid = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  update_ftb_entry_brSlots_0_offset = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  update_ftb_entry_brSlots_0_lower = _RAND_50[11:0];
  _RAND_51 = {1{`RANDOM}};
  update_ftb_entry_brSlots_0_tarStat = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  update_ftb_entry_brSlots_0_sharing = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  update_ftb_entry_brSlots_0_valid = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  update_ftb_entry_tailSlot_offset = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  update_ftb_entry_tailSlot_lower = _RAND_55[19:0];
  _RAND_56 = {1{`RANDOM}};
  update_ftb_entry_tailSlot_tarStat = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  update_ftb_entry_tailSlot_sharing = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  update_ftb_entry_tailSlot_valid = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  update_ftb_entry_pftAddr = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  update_ftb_entry_carry = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  update_ftb_entry_isCall = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  update_ftb_entry_isRet = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  update_ftb_entry_isJalr = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  update_ftb_entry_last_may_be_rvi_call = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  update_ftb_entry_always_taken_0 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  update_ftb_entry_always_taken_1 = _RAND_66[0:0];
  _RAND_67 = {16{`RANDOM}};
  update_meta = _RAND_67[511:0];
  _RAND_68 = {1{`RANDOM}};
  u_valid = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  ftb_write_entry_REG_valid = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  ftb_write_entry_REG_brSlots_0_offset = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  ftb_write_entry_REG_brSlots_0_lower = _RAND_71[11:0];
  _RAND_72 = {1{`RANDOM}};
  ftb_write_entry_REG_brSlots_0_tarStat = _RAND_72[1:0];
  _RAND_73 = {1{`RANDOM}};
  ftb_write_entry_REG_brSlots_0_sharing = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  ftb_write_entry_REG_brSlots_0_valid = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  ftb_write_entry_REG_tailSlot_offset = _RAND_75[2:0];
  _RAND_76 = {1{`RANDOM}};
  ftb_write_entry_REG_tailSlot_lower = _RAND_76[19:0];
  _RAND_77 = {1{`RANDOM}};
  ftb_write_entry_REG_tailSlot_tarStat = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  ftb_write_entry_REG_tailSlot_sharing = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  ftb_write_entry_REG_tailSlot_valid = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  ftb_write_entry_REG_pftAddr = _RAND_80[2:0];
  _RAND_81 = {1{`RANDOM}};
  ftb_write_entry_REG_carry = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  ftb_write_entry_REG_isCall = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  ftb_write_entry_REG_isRet = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  ftb_write_entry_REG_isJalr = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  ftb_write_entry_REG_last_may_be_rvi_call = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  ftb_write_entry_REG_always_taken_0 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  ftb_write_entry_REG_always_taken_1 = _RAND_87[0:0];
  _RAND_88 = {2{`RANDOM}};
  ftb_write_tag_REG = _RAND_88[38:0];
  _RAND_89 = {1{`RANDOM}};
  write_valid_REG = _RAND_89[0:0];
  _RAND_90 = {2{`RANDOM}};
  ftbBank_io_update_pc_REG = _RAND_90[38:0];
  _RAND_91 = {1{`RANDOM}};
  ftbBank_io_try_to_write_way_valid_REG = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  REG_6 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  REG_7 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_97[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
