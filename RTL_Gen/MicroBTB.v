module MicroBTB(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc,
  input  [7:0]   io_in_bits_folded_hist_hist_23_folded_hist,
  output [511:0] io_out_last_stage_meta,
  output [38:0]  io_out_resp_s1_minimal_pred_nextAddr,
  output [2:0]   io_out_resp_s1_minimal_pred_cfiOffset,
  output         io_out_resp_s1_minimal_pred_taken,
  output         io_out_resp_s1_minimal_pred_takenOnBr,
  output [2:0]   io_out_resp_s1_minimal_pred_brNumOH,
  output         io_out_resp_s1_minimal_pred_valid,
  input          io_ctrl_ubtb_enable,
  input          io_s0_fire,
  input          io_s1_fire,
  input          io_s2_fire,
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
  input          io_update_bits_full_pred_is_br_sharing,
  input  [7:0]   io_update_bits_folded_hist_hist_23_folded_hist,
  input          io_update_bits_mispred_mask_0,
  input          io_update_bits_mispred_mask_1,
  input          io_update_bits_mispred_mask_2,
  input          io_update_bits_pred_hit,
  input  [511:0] io_update_bits_meta,
  input  [1:0]   io_update_bits_from_stage
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
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [63:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [63:0] _RAND_269;
  reg [63:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [63:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [511:0] _RAND_277;
  reg [31:0] _RAND_278;
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 94:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 94:23]
  wire  dataMem_clock; // @[uBTB.scala 138:23]
  wire  dataMem_reset; // @[uBTB.scala 138:23]
  wire  dataMem_io_rreq_valid; // @[uBTB.scala 138:23]
  wire [7:0] dataMem_io_rreq_bits_setIdx; // @[uBTB.scala 138:23]
  wire [38:0] dataMem_io_rresp_data_0_nextAddr; // @[uBTB.scala 138:23]
  wire [2:0] dataMem_io_rresp_data_0_cfiOffset; // @[uBTB.scala 138:23]
  wire  dataMem_io_rresp_data_0_taken; // @[uBTB.scala 138:23]
  wire  dataMem_io_rresp_data_0_takenOnBr; // @[uBTB.scala 138:23]
  wire [2:0] dataMem_io_rresp_data_0_brNumOH; // @[uBTB.scala 138:23]
  wire  dataMem_io_wreq_valid; // @[uBTB.scala 138:23]
  wire [7:0] dataMem_io_wreq_bits_setIdx; // @[uBTB.scala 138:23]
  wire [38:0] dataMem_io_wreq_bits_data_0_nextAddr; // @[uBTB.scala 138:23]
  wire [2:0] dataMem_io_wreq_bits_data_0_cfiOffset; // @[uBTB.scala 138:23]
  wire  dataMem_io_wreq_bits_data_0_taken; // @[uBTB.scala 138:23]
  wire  dataMem_io_wreq_bits_data_0_takenOnBr; // @[uBTB.scala 138:23]
  wire [2:0] dataMem_io_wreq_bits_data_0_brNumOH; // @[uBTB.scala 138:23]
  wire  fallThruPredRAM_clock; // @[uBTB.scala 139:31]
  wire  fallThruPredRAM_reset; // @[uBTB.scala 139:31]
  wire  fallThruPredRAM_io_ren; // @[uBTB.scala 139:31]
  wire [10:0] fallThruPredRAM_io_ridx; // @[uBTB.scala 139:31]
  wire  fallThruPredRAM_io_rdata; // @[uBTB.scala 139:31]
  wire  fallThruPredRAM_io_wen; // @[uBTB.scala 139:31]
  wire [10:0] fallThruPredRAM_io_widx; // @[uBTB.scala 139:31]
  wire  fallThruPredRAM_io_wdata; // @[uBTB.scala 139:31]
  reg [38:0] s1_pc; // @[Reg.scala 16:16]
  reg  REG; // @[BPU.scala 216:24]
  reg  REG_1; // @[BPU.scala 216:16]
  wire [7:0] s0_data_ridx = io_in_bits_s0_pc[8:1] ^ io_in_bits_folded_hist_hist_23_folded_hist; // @[uBTB.scala 137:36]
  reg  validArray_0; // @[uBTB.scala 140:27]
  reg  validArray_1; // @[uBTB.scala 140:27]
  reg  validArray_2; // @[uBTB.scala 140:27]
  reg  validArray_3; // @[uBTB.scala 140:27]
  reg  validArray_4; // @[uBTB.scala 140:27]
  reg  validArray_5; // @[uBTB.scala 140:27]
  reg  validArray_6; // @[uBTB.scala 140:27]
  reg  validArray_7; // @[uBTB.scala 140:27]
  reg  validArray_8; // @[uBTB.scala 140:27]
  reg  validArray_9; // @[uBTB.scala 140:27]
  reg  validArray_10; // @[uBTB.scala 140:27]
  reg  validArray_11; // @[uBTB.scala 140:27]
  reg  validArray_12; // @[uBTB.scala 140:27]
  reg  validArray_13; // @[uBTB.scala 140:27]
  reg  validArray_14; // @[uBTB.scala 140:27]
  reg  validArray_15; // @[uBTB.scala 140:27]
  reg  validArray_16; // @[uBTB.scala 140:27]
  reg  validArray_17; // @[uBTB.scala 140:27]
  reg  validArray_18; // @[uBTB.scala 140:27]
  reg  validArray_19; // @[uBTB.scala 140:27]
  reg  validArray_20; // @[uBTB.scala 140:27]
  reg  validArray_21; // @[uBTB.scala 140:27]
  reg  validArray_22; // @[uBTB.scala 140:27]
  reg  validArray_23; // @[uBTB.scala 140:27]
  reg  validArray_24; // @[uBTB.scala 140:27]
  reg  validArray_25; // @[uBTB.scala 140:27]
  reg  validArray_26; // @[uBTB.scala 140:27]
  reg  validArray_27; // @[uBTB.scala 140:27]
  reg  validArray_28; // @[uBTB.scala 140:27]
  reg  validArray_29; // @[uBTB.scala 140:27]
  reg  validArray_30; // @[uBTB.scala 140:27]
  reg  validArray_31; // @[uBTB.scala 140:27]
  reg  validArray_32; // @[uBTB.scala 140:27]
  reg  validArray_33; // @[uBTB.scala 140:27]
  reg  validArray_34; // @[uBTB.scala 140:27]
  reg  validArray_35; // @[uBTB.scala 140:27]
  reg  validArray_36; // @[uBTB.scala 140:27]
  reg  validArray_37; // @[uBTB.scala 140:27]
  reg  validArray_38; // @[uBTB.scala 140:27]
  reg  validArray_39; // @[uBTB.scala 140:27]
  reg  validArray_40; // @[uBTB.scala 140:27]
  reg  validArray_41; // @[uBTB.scala 140:27]
  reg  validArray_42; // @[uBTB.scala 140:27]
  reg  validArray_43; // @[uBTB.scala 140:27]
  reg  validArray_44; // @[uBTB.scala 140:27]
  reg  validArray_45; // @[uBTB.scala 140:27]
  reg  validArray_46; // @[uBTB.scala 140:27]
  reg  validArray_47; // @[uBTB.scala 140:27]
  reg  validArray_48; // @[uBTB.scala 140:27]
  reg  validArray_49; // @[uBTB.scala 140:27]
  reg  validArray_50; // @[uBTB.scala 140:27]
  reg  validArray_51; // @[uBTB.scala 140:27]
  reg  validArray_52; // @[uBTB.scala 140:27]
  reg  validArray_53; // @[uBTB.scala 140:27]
  reg  validArray_54; // @[uBTB.scala 140:27]
  reg  validArray_55; // @[uBTB.scala 140:27]
  reg  validArray_56; // @[uBTB.scala 140:27]
  reg  validArray_57; // @[uBTB.scala 140:27]
  reg  validArray_58; // @[uBTB.scala 140:27]
  reg  validArray_59; // @[uBTB.scala 140:27]
  reg  validArray_60; // @[uBTB.scala 140:27]
  reg  validArray_61; // @[uBTB.scala 140:27]
  reg  validArray_62; // @[uBTB.scala 140:27]
  reg  validArray_63; // @[uBTB.scala 140:27]
  reg  validArray_64; // @[uBTB.scala 140:27]
  reg  validArray_65; // @[uBTB.scala 140:27]
  reg  validArray_66; // @[uBTB.scala 140:27]
  reg  validArray_67; // @[uBTB.scala 140:27]
  reg  validArray_68; // @[uBTB.scala 140:27]
  reg  validArray_69; // @[uBTB.scala 140:27]
  reg  validArray_70; // @[uBTB.scala 140:27]
  reg  validArray_71; // @[uBTB.scala 140:27]
  reg  validArray_72; // @[uBTB.scala 140:27]
  reg  validArray_73; // @[uBTB.scala 140:27]
  reg  validArray_74; // @[uBTB.scala 140:27]
  reg  validArray_75; // @[uBTB.scala 140:27]
  reg  validArray_76; // @[uBTB.scala 140:27]
  reg  validArray_77; // @[uBTB.scala 140:27]
  reg  validArray_78; // @[uBTB.scala 140:27]
  reg  validArray_79; // @[uBTB.scala 140:27]
  reg  validArray_80; // @[uBTB.scala 140:27]
  reg  validArray_81; // @[uBTB.scala 140:27]
  reg  validArray_82; // @[uBTB.scala 140:27]
  reg  validArray_83; // @[uBTB.scala 140:27]
  reg  validArray_84; // @[uBTB.scala 140:27]
  reg  validArray_85; // @[uBTB.scala 140:27]
  reg  validArray_86; // @[uBTB.scala 140:27]
  reg  validArray_87; // @[uBTB.scala 140:27]
  reg  validArray_88; // @[uBTB.scala 140:27]
  reg  validArray_89; // @[uBTB.scala 140:27]
  reg  validArray_90; // @[uBTB.scala 140:27]
  reg  validArray_91; // @[uBTB.scala 140:27]
  reg  validArray_92; // @[uBTB.scala 140:27]
  reg  validArray_93; // @[uBTB.scala 140:27]
  reg  validArray_94; // @[uBTB.scala 140:27]
  reg  validArray_95; // @[uBTB.scala 140:27]
  reg  validArray_96; // @[uBTB.scala 140:27]
  reg  validArray_97; // @[uBTB.scala 140:27]
  reg  validArray_98; // @[uBTB.scala 140:27]
  reg  validArray_99; // @[uBTB.scala 140:27]
  reg  validArray_100; // @[uBTB.scala 140:27]
  reg  validArray_101; // @[uBTB.scala 140:27]
  reg  validArray_102; // @[uBTB.scala 140:27]
  reg  validArray_103; // @[uBTB.scala 140:27]
  reg  validArray_104; // @[uBTB.scala 140:27]
  reg  validArray_105; // @[uBTB.scala 140:27]
  reg  validArray_106; // @[uBTB.scala 140:27]
  reg  validArray_107; // @[uBTB.scala 140:27]
  reg  validArray_108; // @[uBTB.scala 140:27]
  reg  validArray_109; // @[uBTB.scala 140:27]
  reg  validArray_110; // @[uBTB.scala 140:27]
  reg  validArray_111; // @[uBTB.scala 140:27]
  reg  validArray_112; // @[uBTB.scala 140:27]
  reg  validArray_113; // @[uBTB.scala 140:27]
  reg  validArray_114; // @[uBTB.scala 140:27]
  reg  validArray_115; // @[uBTB.scala 140:27]
  reg  validArray_116; // @[uBTB.scala 140:27]
  reg  validArray_117; // @[uBTB.scala 140:27]
  reg  validArray_118; // @[uBTB.scala 140:27]
  reg  validArray_119; // @[uBTB.scala 140:27]
  reg  validArray_120; // @[uBTB.scala 140:27]
  reg  validArray_121; // @[uBTB.scala 140:27]
  reg  validArray_122; // @[uBTB.scala 140:27]
  reg  validArray_123; // @[uBTB.scala 140:27]
  reg  validArray_124; // @[uBTB.scala 140:27]
  reg  validArray_125; // @[uBTB.scala 140:27]
  reg  validArray_126; // @[uBTB.scala 140:27]
  reg  validArray_127; // @[uBTB.scala 140:27]
  reg  validArray_128; // @[uBTB.scala 140:27]
  reg  validArray_129; // @[uBTB.scala 140:27]
  reg  validArray_130; // @[uBTB.scala 140:27]
  reg  validArray_131; // @[uBTB.scala 140:27]
  reg  validArray_132; // @[uBTB.scala 140:27]
  reg  validArray_133; // @[uBTB.scala 140:27]
  reg  validArray_134; // @[uBTB.scala 140:27]
  reg  validArray_135; // @[uBTB.scala 140:27]
  reg  validArray_136; // @[uBTB.scala 140:27]
  reg  validArray_137; // @[uBTB.scala 140:27]
  reg  validArray_138; // @[uBTB.scala 140:27]
  reg  validArray_139; // @[uBTB.scala 140:27]
  reg  validArray_140; // @[uBTB.scala 140:27]
  reg  validArray_141; // @[uBTB.scala 140:27]
  reg  validArray_142; // @[uBTB.scala 140:27]
  reg  validArray_143; // @[uBTB.scala 140:27]
  reg  validArray_144; // @[uBTB.scala 140:27]
  reg  validArray_145; // @[uBTB.scala 140:27]
  reg  validArray_146; // @[uBTB.scala 140:27]
  reg  validArray_147; // @[uBTB.scala 140:27]
  reg  validArray_148; // @[uBTB.scala 140:27]
  reg  validArray_149; // @[uBTB.scala 140:27]
  reg  validArray_150; // @[uBTB.scala 140:27]
  reg  validArray_151; // @[uBTB.scala 140:27]
  reg  validArray_152; // @[uBTB.scala 140:27]
  reg  validArray_153; // @[uBTB.scala 140:27]
  reg  validArray_154; // @[uBTB.scala 140:27]
  reg  validArray_155; // @[uBTB.scala 140:27]
  reg  validArray_156; // @[uBTB.scala 140:27]
  reg  validArray_157; // @[uBTB.scala 140:27]
  reg  validArray_158; // @[uBTB.scala 140:27]
  reg  validArray_159; // @[uBTB.scala 140:27]
  reg  validArray_160; // @[uBTB.scala 140:27]
  reg  validArray_161; // @[uBTB.scala 140:27]
  reg  validArray_162; // @[uBTB.scala 140:27]
  reg  validArray_163; // @[uBTB.scala 140:27]
  reg  validArray_164; // @[uBTB.scala 140:27]
  reg  validArray_165; // @[uBTB.scala 140:27]
  reg  validArray_166; // @[uBTB.scala 140:27]
  reg  validArray_167; // @[uBTB.scala 140:27]
  reg  validArray_168; // @[uBTB.scala 140:27]
  reg  validArray_169; // @[uBTB.scala 140:27]
  reg  validArray_170; // @[uBTB.scala 140:27]
  reg  validArray_171; // @[uBTB.scala 140:27]
  reg  validArray_172; // @[uBTB.scala 140:27]
  reg  validArray_173; // @[uBTB.scala 140:27]
  reg  validArray_174; // @[uBTB.scala 140:27]
  reg  validArray_175; // @[uBTB.scala 140:27]
  reg  validArray_176; // @[uBTB.scala 140:27]
  reg  validArray_177; // @[uBTB.scala 140:27]
  reg  validArray_178; // @[uBTB.scala 140:27]
  reg  validArray_179; // @[uBTB.scala 140:27]
  reg  validArray_180; // @[uBTB.scala 140:27]
  reg  validArray_181; // @[uBTB.scala 140:27]
  reg  validArray_182; // @[uBTB.scala 140:27]
  reg  validArray_183; // @[uBTB.scala 140:27]
  reg  validArray_184; // @[uBTB.scala 140:27]
  reg  validArray_185; // @[uBTB.scala 140:27]
  reg  validArray_186; // @[uBTB.scala 140:27]
  reg  validArray_187; // @[uBTB.scala 140:27]
  reg  validArray_188; // @[uBTB.scala 140:27]
  reg  validArray_189; // @[uBTB.scala 140:27]
  reg  validArray_190; // @[uBTB.scala 140:27]
  reg  validArray_191; // @[uBTB.scala 140:27]
  reg  validArray_192; // @[uBTB.scala 140:27]
  reg  validArray_193; // @[uBTB.scala 140:27]
  reg  validArray_194; // @[uBTB.scala 140:27]
  reg  validArray_195; // @[uBTB.scala 140:27]
  reg  validArray_196; // @[uBTB.scala 140:27]
  reg  validArray_197; // @[uBTB.scala 140:27]
  reg  validArray_198; // @[uBTB.scala 140:27]
  reg  validArray_199; // @[uBTB.scala 140:27]
  reg  validArray_200; // @[uBTB.scala 140:27]
  reg  validArray_201; // @[uBTB.scala 140:27]
  reg  validArray_202; // @[uBTB.scala 140:27]
  reg  validArray_203; // @[uBTB.scala 140:27]
  reg  validArray_204; // @[uBTB.scala 140:27]
  reg  validArray_205; // @[uBTB.scala 140:27]
  reg  validArray_206; // @[uBTB.scala 140:27]
  reg  validArray_207; // @[uBTB.scala 140:27]
  reg  validArray_208; // @[uBTB.scala 140:27]
  reg  validArray_209; // @[uBTB.scala 140:27]
  reg  validArray_210; // @[uBTB.scala 140:27]
  reg  validArray_211; // @[uBTB.scala 140:27]
  reg  validArray_212; // @[uBTB.scala 140:27]
  reg  validArray_213; // @[uBTB.scala 140:27]
  reg  validArray_214; // @[uBTB.scala 140:27]
  reg  validArray_215; // @[uBTB.scala 140:27]
  reg  validArray_216; // @[uBTB.scala 140:27]
  reg  validArray_217; // @[uBTB.scala 140:27]
  reg  validArray_218; // @[uBTB.scala 140:27]
  reg  validArray_219; // @[uBTB.scala 140:27]
  reg  validArray_220; // @[uBTB.scala 140:27]
  reg  validArray_221; // @[uBTB.scala 140:27]
  reg  validArray_222; // @[uBTB.scala 140:27]
  reg  validArray_223; // @[uBTB.scala 140:27]
  reg  validArray_224; // @[uBTB.scala 140:27]
  reg  validArray_225; // @[uBTB.scala 140:27]
  reg  validArray_226; // @[uBTB.scala 140:27]
  reg  validArray_227; // @[uBTB.scala 140:27]
  reg  validArray_228; // @[uBTB.scala 140:27]
  reg  validArray_229; // @[uBTB.scala 140:27]
  reg  validArray_230; // @[uBTB.scala 140:27]
  reg  validArray_231; // @[uBTB.scala 140:27]
  reg  validArray_232; // @[uBTB.scala 140:27]
  reg  validArray_233; // @[uBTB.scala 140:27]
  reg  validArray_234; // @[uBTB.scala 140:27]
  reg  validArray_235; // @[uBTB.scala 140:27]
  reg  validArray_236; // @[uBTB.scala 140:27]
  reg  validArray_237; // @[uBTB.scala 140:27]
  reg  validArray_238; // @[uBTB.scala 140:27]
  reg  validArray_239; // @[uBTB.scala 140:27]
  reg  validArray_240; // @[uBTB.scala 140:27]
  reg  validArray_241; // @[uBTB.scala 140:27]
  reg  validArray_242; // @[uBTB.scala 140:27]
  reg  validArray_243; // @[uBTB.scala 140:27]
  reg  validArray_244; // @[uBTB.scala 140:27]
  reg  validArray_245; // @[uBTB.scala 140:27]
  reg  validArray_246; // @[uBTB.scala 140:27]
  reg  validArray_247; // @[uBTB.scala 140:27]
  reg  validArray_248; // @[uBTB.scala 140:27]
  reg  validArray_249; // @[uBTB.scala 140:27]
  reg  validArray_250; // @[uBTB.scala 140:27]
  reg  validArray_251; // @[uBTB.scala 140:27]
  reg  validArray_252; // @[uBTB.scala 140:27]
  reg  validArray_253; // @[uBTB.scala 140:27]
  reg  validArray_254; // @[uBTB.scala 140:27]
  reg  validArray_255; // @[uBTB.scala 140:27]
  wire  shouldNotFallThru = &fallThruPredRAM_io_rdata; // @[uBTB.scala 148:56]
  reg  lastCycleHasUpdate; // @[uBTB.scala 151:35]
  reg  u_valid; // @[uBTB.scala 177:24]
  wire  _resp_valid_T_1 = io_s0_fire & ~u_valid; // @[uBTB.scala 157:67]
  reg  resp_valid; // @[Reg.scala 16:16]
  wire  _GEN_6 = 8'h1 == s0_data_ridx ? validArray_1 : validArray_0; // @[Reg.scala 17:{22,22}]
  wire  _GEN_7 = 8'h2 == s0_data_ridx ? validArray_2 : _GEN_6; // @[Reg.scala 17:{22,22}]
  wire  _GEN_8 = 8'h3 == s0_data_ridx ? validArray_3 : _GEN_7; // @[Reg.scala 17:{22,22}]
  wire  _GEN_9 = 8'h4 == s0_data_ridx ? validArray_4 : _GEN_8; // @[Reg.scala 17:{22,22}]
  wire  _GEN_10 = 8'h5 == s0_data_ridx ? validArray_5 : _GEN_9; // @[Reg.scala 17:{22,22}]
  wire  _GEN_11 = 8'h6 == s0_data_ridx ? validArray_6 : _GEN_10; // @[Reg.scala 17:{22,22}]
  wire  _GEN_12 = 8'h7 == s0_data_ridx ? validArray_7 : _GEN_11; // @[Reg.scala 17:{22,22}]
  wire  _GEN_13 = 8'h8 == s0_data_ridx ? validArray_8 : _GEN_12; // @[Reg.scala 17:{22,22}]
  wire  _GEN_14 = 8'h9 == s0_data_ridx ? validArray_9 : _GEN_13; // @[Reg.scala 17:{22,22}]
  wire  _GEN_15 = 8'ha == s0_data_ridx ? validArray_10 : _GEN_14; // @[Reg.scala 17:{22,22}]
  wire  _GEN_16 = 8'hb == s0_data_ridx ? validArray_11 : _GEN_15; // @[Reg.scala 17:{22,22}]
  wire  _GEN_17 = 8'hc == s0_data_ridx ? validArray_12 : _GEN_16; // @[Reg.scala 17:{22,22}]
  wire  _GEN_18 = 8'hd == s0_data_ridx ? validArray_13 : _GEN_17; // @[Reg.scala 17:{22,22}]
  wire  _GEN_19 = 8'he == s0_data_ridx ? validArray_14 : _GEN_18; // @[Reg.scala 17:{22,22}]
  wire  _GEN_20 = 8'hf == s0_data_ridx ? validArray_15 : _GEN_19; // @[Reg.scala 17:{22,22}]
  wire  _GEN_21 = 8'h10 == s0_data_ridx ? validArray_16 : _GEN_20; // @[Reg.scala 17:{22,22}]
  wire  _GEN_22 = 8'h11 == s0_data_ridx ? validArray_17 : _GEN_21; // @[Reg.scala 17:{22,22}]
  wire  _GEN_23 = 8'h12 == s0_data_ridx ? validArray_18 : _GEN_22; // @[Reg.scala 17:{22,22}]
  wire  _GEN_24 = 8'h13 == s0_data_ridx ? validArray_19 : _GEN_23; // @[Reg.scala 17:{22,22}]
  wire  _GEN_25 = 8'h14 == s0_data_ridx ? validArray_20 : _GEN_24; // @[Reg.scala 17:{22,22}]
  wire  _GEN_26 = 8'h15 == s0_data_ridx ? validArray_21 : _GEN_25; // @[Reg.scala 17:{22,22}]
  wire  _GEN_27 = 8'h16 == s0_data_ridx ? validArray_22 : _GEN_26; // @[Reg.scala 17:{22,22}]
  wire  _GEN_28 = 8'h17 == s0_data_ridx ? validArray_23 : _GEN_27; // @[Reg.scala 17:{22,22}]
  wire  _GEN_29 = 8'h18 == s0_data_ridx ? validArray_24 : _GEN_28; // @[Reg.scala 17:{22,22}]
  wire  _GEN_30 = 8'h19 == s0_data_ridx ? validArray_25 : _GEN_29; // @[Reg.scala 17:{22,22}]
  wire  _GEN_31 = 8'h1a == s0_data_ridx ? validArray_26 : _GEN_30; // @[Reg.scala 17:{22,22}]
  wire  _GEN_32 = 8'h1b == s0_data_ridx ? validArray_27 : _GEN_31; // @[Reg.scala 17:{22,22}]
  wire  _GEN_33 = 8'h1c == s0_data_ridx ? validArray_28 : _GEN_32; // @[Reg.scala 17:{22,22}]
  wire  _GEN_34 = 8'h1d == s0_data_ridx ? validArray_29 : _GEN_33; // @[Reg.scala 17:{22,22}]
  wire  _GEN_35 = 8'h1e == s0_data_ridx ? validArray_30 : _GEN_34; // @[Reg.scala 17:{22,22}]
  wire  _GEN_36 = 8'h1f == s0_data_ridx ? validArray_31 : _GEN_35; // @[Reg.scala 17:{22,22}]
  wire  _GEN_37 = 8'h20 == s0_data_ridx ? validArray_32 : _GEN_36; // @[Reg.scala 17:{22,22}]
  wire  _GEN_38 = 8'h21 == s0_data_ridx ? validArray_33 : _GEN_37; // @[Reg.scala 17:{22,22}]
  wire  _GEN_39 = 8'h22 == s0_data_ridx ? validArray_34 : _GEN_38; // @[Reg.scala 17:{22,22}]
  wire  _GEN_40 = 8'h23 == s0_data_ridx ? validArray_35 : _GEN_39; // @[Reg.scala 17:{22,22}]
  wire  _GEN_41 = 8'h24 == s0_data_ridx ? validArray_36 : _GEN_40; // @[Reg.scala 17:{22,22}]
  wire  _GEN_42 = 8'h25 == s0_data_ridx ? validArray_37 : _GEN_41; // @[Reg.scala 17:{22,22}]
  wire  _GEN_43 = 8'h26 == s0_data_ridx ? validArray_38 : _GEN_42; // @[Reg.scala 17:{22,22}]
  wire  _GEN_44 = 8'h27 == s0_data_ridx ? validArray_39 : _GEN_43; // @[Reg.scala 17:{22,22}]
  wire  _GEN_45 = 8'h28 == s0_data_ridx ? validArray_40 : _GEN_44; // @[Reg.scala 17:{22,22}]
  wire  _GEN_46 = 8'h29 == s0_data_ridx ? validArray_41 : _GEN_45; // @[Reg.scala 17:{22,22}]
  wire  _GEN_47 = 8'h2a == s0_data_ridx ? validArray_42 : _GEN_46; // @[Reg.scala 17:{22,22}]
  wire  _GEN_48 = 8'h2b == s0_data_ridx ? validArray_43 : _GEN_47; // @[Reg.scala 17:{22,22}]
  wire  _GEN_49 = 8'h2c == s0_data_ridx ? validArray_44 : _GEN_48; // @[Reg.scala 17:{22,22}]
  wire  _GEN_50 = 8'h2d == s0_data_ridx ? validArray_45 : _GEN_49; // @[Reg.scala 17:{22,22}]
  wire  _GEN_51 = 8'h2e == s0_data_ridx ? validArray_46 : _GEN_50; // @[Reg.scala 17:{22,22}]
  wire  _GEN_52 = 8'h2f == s0_data_ridx ? validArray_47 : _GEN_51; // @[Reg.scala 17:{22,22}]
  wire  _GEN_53 = 8'h30 == s0_data_ridx ? validArray_48 : _GEN_52; // @[Reg.scala 17:{22,22}]
  wire  _GEN_54 = 8'h31 == s0_data_ridx ? validArray_49 : _GEN_53; // @[Reg.scala 17:{22,22}]
  wire  _GEN_55 = 8'h32 == s0_data_ridx ? validArray_50 : _GEN_54; // @[Reg.scala 17:{22,22}]
  wire  _GEN_56 = 8'h33 == s0_data_ridx ? validArray_51 : _GEN_55; // @[Reg.scala 17:{22,22}]
  wire  _GEN_57 = 8'h34 == s0_data_ridx ? validArray_52 : _GEN_56; // @[Reg.scala 17:{22,22}]
  wire  _GEN_58 = 8'h35 == s0_data_ridx ? validArray_53 : _GEN_57; // @[Reg.scala 17:{22,22}]
  wire  _GEN_59 = 8'h36 == s0_data_ridx ? validArray_54 : _GEN_58; // @[Reg.scala 17:{22,22}]
  wire  _GEN_60 = 8'h37 == s0_data_ridx ? validArray_55 : _GEN_59; // @[Reg.scala 17:{22,22}]
  wire  _GEN_61 = 8'h38 == s0_data_ridx ? validArray_56 : _GEN_60; // @[Reg.scala 17:{22,22}]
  wire  _GEN_62 = 8'h39 == s0_data_ridx ? validArray_57 : _GEN_61; // @[Reg.scala 17:{22,22}]
  wire  _GEN_63 = 8'h3a == s0_data_ridx ? validArray_58 : _GEN_62; // @[Reg.scala 17:{22,22}]
  wire  _GEN_64 = 8'h3b == s0_data_ridx ? validArray_59 : _GEN_63; // @[Reg.scala 17:{22,22}]
  wire  _GEN_65 = 8'h3c == s0_data_ridx ? validArray_60 : _GEN_64; // @[Reg.scala 17:{22,22}]
  wire  _GEN_66 = 8'h3d == s0_data_ridx ? validArray_61 : _GEN_65; // @[Reg.scala 17:{22,22}]
  wire  _GEN_67 = 8'h3e == s0_data_ridx ? validArray_62 : _GEN_66; // @[Reg.scala 17:{22,22}]
  wire  _GEN_68 = 8'h3f == s0_data_ridx ? validArray_63 : _GEN_67; // @[Reg.scala 17:{22,22}]
  wire  _GEN_69 = 8'h40 == s0_data_ridx ? validArray_64 : _GEN_68; // @[Reg.scala 17:{22,22}]
  wire  _GEN_70 = 8'h41 == s0_data_ridx ? validArray_65 : _GEN_69; // @[Reg.scala 17:{22,22}]
  wire  _GEN_71 = 8'h42 == s0_data_ridx ? validArray_66 : _GEN_70; // @[Reg.scala 17:{22,22}]
  wire  _GEN_72 = 8'h43 == s0_data_ridx ? validArray_67 : _GEN_71; // @[Reg.scala 17:{22,22}]
  wire  _GEN_73 = 8'h44 == s0_data_ridx ? validArray_68 : _GEN_72; // @[Reg.scala 17:{22,22}]
  wire  _GEN_74 = 8'h45 == s0_data_ridx ? validArray_69 : _GEN_73; // @[Reg.scala 17:{22,22}]
  wire  _GEN_75 = 8'h46 == s0_data_ridx ? validArray_70 : _GEN_74; // @[Reg.scala 17:{22,22}]
  wire  _GEN_76 = 8'h47 == s0_data_ridx ? validArray_71 : _GEN_75; // @[Reg.scala 17:{22,22}]
  wire  _GEN_77 = 8'h48 == s0_data_ridx ? validArray_72 : _GEN_76; // @[Reg.scala 17:{22,22}]
  wire  _GEN_78 = 8'h49 == s0_data_ridx ? validArray_73 : _GEN_77; // @[Reg.scala 17:{22,22}]
  wire  _GEN_79 = 8'h4a == s0_data_ridx ? validArray_74 : _GEN_78; // @[Reg.scala 17:{22,22}]
  wire  _GEN_80 = 8'h4b == s0_data_ridx ? validArray_75 : _GEN_79; // @[Reg.scala 17:{22,22}]
  wire  _GEN_81 = 8'h4c == s0_data_ridx ? validArray_76 : _GEN_80; // @[Reg.scala 17:{22,22}]
  wire  _GEN_82 = 8'h4d == s0_data_ridx ? validArray_77 : _GEN_81; // @[Reg.scala 17:{22,22}]
  wire  _GEN_83 = 8'h4e == s0_data_ridx ? validArray_78 : _GEN_82; // @[Reg.scala 17:{22,22}]
  wire  _GEN_84 = 8'h4f == s0_data_ridx ? validArray_79 : _GEN_83; // @[Reg.scala 17:{22,22}]
  wire  _GEN_85 = 8'h50 == s0_data_ridx ? validArray_80 : _GEN_84; // @[Reg.scala 17:{22,22}]
  wire  _GEN_86 = 8'h51 == s0_data_ridx ? validArray_81 : _GEN_85; // @[Reg.scala 17:{22,22}]
  wire  _GEN_87 = 8'h52 == s0_data_ridx ? validArray_82 : _GEN_86; // @[Reg.scala 17:{22,22}]
  wire  _GEN_88 = 8'h53 == s0_data_ridx ? validArray_83 : _GEN_87; // @[Reg.scala 17:{22,22}]
  wire  _GEN_89 = 8'h54 == s0_data_ridx ? validArray_84 : _GEN_88; // @[Reg.scala 17:{22,22}]
  wire  _GEN_90 = 8'h55 == s0_data_ridx ? validArray_85 : _GEN_89; // @[Reg.scala 17:{22,22}]
  wire  _GEN_91 = 8'h56 == s0_data_ridx ? validArray_86 : _GEN_90; // @[Reg.scala 17:{22,22}]
  wire  _GEN_92 = 8'h57 == s0_data_ridx ? validArray_87 : _GEN_91; // @[Reg.scala 17:{22,22}]
  wire  _GEN_93 = 8'h58 == s0_data_ridx ? validArray_88 : _GEN_92; // @[Reg.scala 17:{22,22}]
  wire  _GEN_94 = 8'h59 == s0_data_ridx ? validArray_89 : _GEN_93; // @[Reg.scala 17:{22,22}]
  wire  _GEN_95 = 8'h5a == s0_data_ridx ? validArray_90 : _GEN_94; // @[Reg.scala 17:{22,22}]
  wire  _GEN_96 = 8'h5b == s0_data_ridx ? validArray_91 : _GEN_95; // @[Reg.scala 17:{22,22}]
  wire  _GEN_97 = 8'h5c == s0_data_ridx ? validArray_92 : _GEN_96; // @[Reg.scala 17:{22,22}]
  wire  _GEN_98 = 8'h5d == s0_data_ridx ? validArray_93 : _GEN_97; // @[Reg.scala 17:{22,22}]
  wire  _GEN_99 = 8'h5e == s0_data_ridx ? validArray_94 : _GEN_98; // @[Reg.scala 17:{22,22}]
  wire  _GEN_100 = 8'h5f == s0_data_ridx ? validArray_95 : _GEN_99; // @[Reg.scala 17:{22,22}]
  wire  _GEN_101 = 8'h60 == s0_data_ridx ? validArray_96 : _GEN_100; // @[Reg.scala 17:{22,22}]
  wire  _GEN_102 = 8'h61 == s0_data_ridx ? validArray_97 : _GEN_101; // @[Reg.scala 17:{22,22}]
  wire  _GEN_103 = 8'h62 == s0_data_ridx ? validArray_98 : _GEN_102; // @[Reg.scala 17:{22,22}]
  wire  _GEN_104 = 8'h63 == s0_data_ridx ? validArray_99 : _GEN_103; // @[Reg.scala 17:{22,22}]
  wire  _GEN_105 = 8'h64 == s0_data_ridx ? validArray_100 : _GEN_104; // @[Reg.scala 17:{22,22}]
  wire  _GEN_106 = 8'h65 == s0_data_ridx ? validArray_101 : _GEN_105; // @[Reg.scala 17:{22,22}]
  wire  _GEN_107 = 8'h66 == s0_data_ridx ? validArray_102 : _GEN_106; // @[Reg.scala 17:{22,22}]
  wire  _GEN_108 = 8'h67 == s0_data_ridx ? validArray_103 : _GEN_107; // @[Reg.scala 17:{22,22}]
  wire  _GEN_109 = 8'h68 == s0_data_ridx ? validArray_104 : _GEN_108; // @[Reg.scala 17:{22,22}]
  wire  _GEN_110 = 8'h69 == s0_data_ridx ? validArray_105 : _GEN_109; // @[Reg.scala 17:{22,22}]
  wire  _GEN_111 = 8'h6a == s0_data_ridx ? validArray_106 : _GEN_110; // @[Reg.scala 17:{22,22}]
  wire  _GEN_112 = 8'h6b == s0_data_ridx ? validArray_107 : _GEN_111; // @[Reg.scala 17:{22,22}]
  wire  _GEN_113 = 8'h6c == s0_data_ridx ? validArray_108 : _GEN_112; // @[Reg.scala 17:{22,22}]
  wire  _GEN_114 = 8'h6d == s0_data_ridx ? validArray_109 : _GEN_113; // @[Reg.scala 17:{22,22}]
  wire  _GEN_115 = 8'h6e == s0_data_ridx ? validArray_110 : _GEN_114; // @[Reg.scala 17:{22,22}]
  wire  _GEN_116 = 8'h6f == s0_data_ridx ? validArray_111 : _GEN_115; // @[Reg.scala 17:{22,22}]
  wire  _GEN_117 = 8'h70 == s0_data_ridx ? validArray_112 : _GEN_116; // @[Reg.scala 17:{22,22}]
  wire  _GEN_118 = 8'h71 == s0_data_ridx ? validArray_113 : _GEN_117; // @[Reg.scala 17:{22,22}]
  wire  _GEN_119 = 8'h72 == s0_data_ridx ? validArray_114 : _GEN_118; // @[Reg.scala 17:{22,22}]
  wire  _GEN_120 = 8'h73 == s0_data_ridx ? validArray_115 : _GEN_119; // @[Reg.scala 17:{22,22}]
  wire  _GEN_121 = 8'h74 == s0_data_ridx ? validArray_116 : _GEN_120; // @[Reg.scala 17:{22,22}]
  wire  _GEN_122 = 8'h75 == s0_data_ridx ? validArray_117 : _GEN_121; // @[Reg.scala 17:{22,22}]
  wire  _GEN_123 = 8'h76 == s0_data_ridx ? validArray_118 : _GEN_122; // @[Reg.scala 17:{22,22}]
  wire  _GEN_124 = 8'h77 == s0_data_ridx ? validArray_119 : _GEN_123; // @[Reg.scala 17:{22,22}]
  wire  _GEN_125 = 8'h78 == s0_data_ridx ? validArray_120 : _GEN_124; // @[Reg.scala 17:{22,22}]
  wire  _GEN_126 = 8'h79 == s0_data_ridx ? validArray_121 : _GEN_125; // @[Reg.scala 17:{22,22}]
  wire  _GEN_127 = 8'h7a == s0_data_ridx ? validArray_122 : _GEN_126; // @[Reg.scala 17:{22,22}]
  wire  _GEN_128 = 8'h7b == s0_data_ridx ? validArray_123 : _GEN_127; // @[Reg.scala 17:{22,22}]
  wire  _GEN_129 = 8'h7c == s0_data_ridx ? validArray_124 : _GEN_128; // @[Reg.scala 17:{22,22}]
  wire  _GEN_130 = 8'h7d == s0_data_ridx ? validArray_125 : _GEN_129; // @[Reg.scala 17:{22,22}]
  wire  _GEN_131 = 8'h7e == s0_data_ridx ? validArray_126 : _GEN_130; // @[Reg.scala 17:{22,22}]
  wire  _GEN_132 = 8'h7f == s0_data_ridx ? validArray_127 : _GEN_131; // @[Reg.scala 17:{22,22}]
  wire  _GEN_133 = 8'h80 == s0_data_ridx ? validArray_128 : _GEN_132; // @[Reg.scala 17:{22,22}]
  wire  _GEN_134 = 8'h81 == s0_data_ridx ? validArray_129 : _GEN_133; // @[Reg.scala 17:{22,22}]
  wire  _GEN_135 = 8'h82 == s0_data_ridx ? validArray_130 : _GEN_134; // @[Reg.scala 17:{22,22}]
  wire  _GEN_136 = 8'h83 == s0_data_ridx ? validArray_131 : _GEN_135; // @[Reg.scala 17:{22,22}]
  wire  _GEN_137 = 8'h84 == s0_data_ridx ? validArray_132 : _GEN_136; // @[Reg.scala 17:{22,22}]
  wire  _GEN_138 = 8'h85 == s0_data_ridx ? validArray_133 : _GEN_137; // @[Reg.scala 17:{22,22}]
  wire  _GEN_139 = 8'h86 == s0_data_ridx ? validArray_134 : _GEN_138; // @[Reg.scala 17:{22,22}]
  wire  _GEN_140 = 8'h87 == s0_data_ridx ? validArray_135 : _GEN_139; // @[Reg.scala 17:{22,22}]
  wire  _GEN_141 = 8'h88 == s0_data_ridx ? validArray_136 : _GEN_140; // @[Reg.scala 17:{22,22}]
  wire  _GEN_142 = 8'h89 == s0_data_ridx ? validArray_137 : _GEN_141; // @[Reg.scala 17:{22,22}]
  wire  _GEN_143 = 8'h8a == s0_data_ridx ? validArray_138 : _GEN_142; // @[Reg.scala 17:{22,22}]
  wire  _GEN_144 = 8'h8b == s0_data_ridx ? validArray_139 : _GEN_143; // @[Reg.scala 17:{22,22}]
  wire  _GEN_145 = 8'h8c == s0_data_ridx ? validArray_140 : _GEN_144; // @[Reg.scala 17:{22,22}]
  wire  _GEN_146 = 8'h8d == s0_data_ridx ? validArray_141 : _GEN_145; // @[Reg.scala 17:{22,22}]
  wire  _GEN_147 = 8'h8e == s0_data_ridx ? validArray_142 : _GEN_146; // @[Reg.scala 17:{22,22}]
  wire  _GEN_148 = 8'h8f == s0_data_ridx ? validArray_143 : _GEN_147; // @[Reg.scala 17:{22,22}]
  wire  _GEN_149 = 8'h90 == s0_data_ridx ? validArray_144 : _GEN_148; // @[Reg.scala 17:{22,22}]
  wire  _GEN_150 = 8'h91 == s0_data_ridx ? validArray_145 : _GEN_149; // @[Reg.scala 17:{22,22}]
  wire  _GEN_151 = 8'h92 == s0_data_ridx ? validArray_146 : _GEN_150; // @[Reg.scala 17:{22,22}]
  wire  _GEN_152 = 8'h93 == s0_data_ridx ? validArray_147 : _GEN_151; // @[Reg.scala 17:{22,22}]
  wire  _GEN_153 = 8'h94 == s0_data_ridx ? validArray_148 : _GEN_152; // @[Reg.scala 17:{22,22}]
  wire  _GEN_154 = 8'h95 == s0_data_ridx ? validArray_149 : _GEN_153; // @[Reg.scala 17:{22,22}]
  wire  _GEN_155 = 8'h96 == s0_data_ridx ? validArray_150 : _GEN_154; // @[Reg.scala 17:{22,22}]
  wire  _GEN_156 = 8'h97 == s0_data_ridx ? validArray_151 : _GEN_155; // @[Reg.scala 17:{22,22}]
  wire  _GEN_157 = 8'h98 == s0_data_ridx ? validArray_152 : _GEN_156; // @[Reg.scala 17:{22,22}]
  wire  _GEN_158 = 8'h99 == s0_data_ridx ? validArray_153 : _GEN_157; // @[Reg.scala 17:{22,22}]
  wire  _GEN_159 = 8'h9a == s0_data_ridx ? validArray_154 : _GEN_158; // @[Reg.scala 17:{22,22}]
  wire  _GEN_160 = 8'h9b == s0_data_ridx ? validArray_155 : _GEN_159; // @[Reg.scala 17:{22,22}]
  wire  _GEN_161 = 8'h9c == s0_data_ridx ? validArray_156 : _GEN_160; // @[Reg.scala 17:{22,22}]
  wire  _GEN_162 = 8'h9d == s0_data_ridx ? validArray_157 : _GEN_161; // @[Reg.scala 17:{22,22}]
  wire  _GEN_163 = 8'h9e == s0_data_ridx ? validArray_158 : _GEN_162; // @[Reg.scala 17:{22,22}]
  wire  _GEN_164 = 8'h9f == s0_data_ridx ? validArray_159 : _GEN_163; // @[Reg.scala 17:{22,22}]
  wire  _GEN_165 = 8'ha0 == s0_data_ridx ? validArray_160 : _GEN_164; // @[Reg.scala 17:{22,22}]
  wire  _GEN_166 = 8'ha1 == s0_data_ridx ? validArray_161 : _GEN_165; // @[Reg.scala 17:{22,22}]
  wire  _GEN_167 = 8'ha2 == s0_data_ridx ? validArray_162 : _GEN_166; // @[Reg.scala 17:{22,22}]
  wire  _GEN_168 = 8'ha3 == s0_data_ridx ? validArray_163 : _GEN_167; // @[Reg.scala 17:{22,22}]
  wire  _GEN_169 = 8'ha4 == s0_data_ridx ? validArray_164 : _GEN_168; // @[Reg.scala 17:{22,22}]
  wire  _GEN_170 = 8'ha5 == s0_data_ridx ? validArray_165 : _GEN_169; // @[Reg.scala 17:{22,22}]
  wire  _GEN_171 = 8'ha6 == s0_data_ridx ? validArray_166 : _GEN_170; // @[Reg.scala 17:{22,22}]
  wire  _GEN_172 = 8'ha7 == s0_data_ridx ? validArray_167 : _GEN_171; // @[Reg.scala 17:{22,22}]
  wire  _GEN_173 = 8'ha8 == s0_data_ridx ? validArray_168 : _GEN_172; // @[Reg.scala 17:{22,22}]
  wire  _GEN_174 = 8'ha9 == s0_data_ridx ? validArray_169 : _GEN_173; // @[Reg.scala 17:{22,22}]
  wire  _GEN_175 = 8'haa == s0_data_ridx ? validArray_170 : _GEN_174; // @[Reg.scala 17:{22,22}]
  wire  _GEN_176 = 8'hab == s0_data_ridx ? validArray_171 : _GEN_175; // @[Reg.scala 17:{22,22}]
  wire  _GEN_177 = 8'hac == s0_data_ridx ? validArray_172 : _GEN_176; // @[Reg.scala 17:{22,22}]
  wire  _GEN_178 = 8'had == s0_data_ridx ? validArray_173 : _GEN_177; // @[Reg.scala 17:{22,22}]
  wire  _GEN_179 = 8'hae == s0_data_ridx ? validArray_174 : _GEN_178; // @[Reg.scala 17:{22,22}]
  wire  _GEN_180 = 8'haf == s0_data_ridx ? validArray_175 : _GEN_179; // @[Reg.scala 17:{22,22}]
  wire  _GEN_181 = 8'hb0 == s0_data_ridx ? validArray_176 : _GEN_180; // @[Reg.scala 17:{22,22}]
  wire  _GEN_182 = 8'hb1 == s0_data_ridx ? validArray_177 : _GEN_181; // @[Reg.scala 17:{22,22}]
  wire  _GEN_183 = 8'hb2 == s0_data_ridx ? validArray_178 : _GEN_182; // @[Reg.scala 17:{22,22}]
  wire  _GEN_184 = 8'hb3 == s0_data_ridx ? validArray_179 : _GEN_183; // @[Reg.scala 17:{22,22}]
  wire  _GEN_185 = 8'hb4 == s0_data_ridx ? validArray_180 : _GEN_184; // @[Reg.scala 17:{22,22}]
  wire  _GEN_186 = 8'hb5 == s0_data_ridx ? validArray_181 : _GEN_185; // @[Reg.scala 17:{22,22}]
  wire  _GEN_187 = 8'hb6 == s0_data_ridx ? validArray_182 : _GEN_186; // @[Reg.scala 17:{22,22}]
  wire  _GEN_188 = 8'hb7 == s0_data_ridx ? validArray_183 : _GEN_187; // @[Reg.scala 17:{22,22}]
  wire  _GEN_189 = 8'hb8 == s0_data_ridx ? validArray_184 : _GEN_188; // @[Reg.scala 17:{22,22}]
  wire  _GEN_190 = 8'hb9 == s0_data_ridx ? validArray_185 : _GEN_189; // @[Reg.scala 17:{22,22}]
  wire  _GEN_191 = 8'hba == s0_data_ridx ? validArray_186 : _GEN_190; // @[Reg.scala 17:{22,22}]
  wire  _GEN_192 = 8'hbb == s0_data_ridx ? validArray_187 : _GEN_191; // @[Reg.scala 17:{22,22}]
  wire  _GEN_193 = 8'hbc == s0_data_ridx ? validArray_188 : _GEN_192; // @[Reg.scala 17:{22,22}]
  wire  _GEN_194 = 8'hbd == s0_data_ridx ? validArray_189 : _GEN_193; // @[Reg.scala 17:{22,22}]
  wire  _GEN_195 = 8'hbe == s0_data_ridx ? validArray_190 : _GEN_194; // @[Reg.scala 17:{22,22}]
  wire  _GEN_196 = 8'hbf == s0_data_ridx ? validArray_191 : _GEN_195; // @[Reg.scala 17:{22,22}]
  wire  _GEN_197 = 8'hc0 == s0_data_ridx ? validArray_192 : _GEN_196; // @[Reg.scala 17:{22,22}]
  wire  _GEN_198 = 8'hc1 == s0_data_ridx ? validArray_193 : _GEN_197; // @[Reg.scala 17:{22,22}]
  wire  _GEN_199 = 8'hc2 == s0_data_ridx ? validArray_194 : _GEN_198; // @[Reg.scala 17:{22,22}]
  wire  _GEN_200 = 8'hc3 == s0_data_ridx ? validArray_195 : _GEN_199; // @[Reg.scala 17:{22,22}]
  wire  _GEN_201 = 8'hc4 == s0_data_ridx ? validArray_196 : _GEN_200; // @[Reg.scala 17:{22,22}]
  wire  _GEN_202 = 8'hc5 == s0_data_ridx ? validArray_197 : _GEN_201; // @[Reg.scala 17:{22,22}]
  wire  _GEN_203 = 8'hc6 == s0_data_ridx ? validArray_198 : _GEN_202; // @[Reg.scala 17:{22,22}]
  wire  _GEN_204 = 8'hc7 == s0_data_ridx ? validArray_199 : _GEN_203; // @[Reg.scala 17:{22,22}]
  wire  _GEN_205 = 8'hc8 == s0_data_ridx ? validArray_200 : _GEN_204; // @[Reg.scala 17:{22,22}]
  wire  _GEN_206 = 8'hc9 == s0_data_ridx ? validArray_201 : _GEN_205; // @[Reg.scala 17:{22,22}]
  wire  _GEN_207 = 8'hca == s0_data_ridx ? validArray_202 : _GEN_206; // @[Reg.scala 17:{22,22}]
  wire  _GEN_208 = 8'hcb == s0_data_ridx ? validArray_203 : _GEN_207; // @[Reg.scala 17:{22,22}]
  wire  _GEN_209 = 8'hcc == s0_data_ridx ? validArray_204 : _GEN_208; // @[Reg.scala 17:{22,22}]
  wire  _GEN_210 = 8'hcd == s0_data_ridx ? validArray_205 : _GEN_209; // @[Reg.scala 17:{22,22}]
  wire  _GEN_211 = 8'hce == s0_data_ridx ? validArray_206 : _GEN_210; // @[Reg.scala 17:{22,22}]
  wire  _GEN_212 = 8'hcf == s0_data_ridx ? validArray_207 : _GEN_211; // @[Reg.scala 17:{22,22}]
  wire  _GEN_213 = 8'hd0 == s0_data_ridx ? validArray_208 : _GEN_212; // @[Reg.scala 17:{22,22}]
  wire  _GEN_214 = 8'hd1 == s0_data_ridx ? validArray_209 : _GEN_213; // @[Reg.scala 17:{22,22}]
  wire  _GEN_215 = 8'hd2 == s0_data_ridx ? validArray_210 : _GEN_214; // @[Reg.scala 17:{22,22}]
  wire  _GEN_216 = 8'hd3 == s0_data_ridx ? validArray_211 : _GEN_215; // @[Reg.scala 17:{22,22}]
  wire  _GEN_217 = 8'hd4 == s0_data_ridx ? validArray_212 : _GEN_216; // @[Reg.scala 17:{22,22}]
  wire  _GEN_218 = 8'hd5 == s0_data_ridx ? validArray_213 : _GEN_217; // @[Reg.scala 17:{22,22}]
  wire  _GEN_219 = 8'hd6 == s0_data_ridx ? validArray_214 : _GEN_218; // @[Reg.scala 17:{22,22}]
  wire  _GEN_220 = 8'hd7 == s0_data_ridx ? validArray_215 : _GEN_219; // @[Reg.scala 17:{22,22}]
  wire  _GEN_221 = 8'hd8 == s0_data_ridx ? validArray_216 : _GEN_220; // @[Reg.scala 17:{22,22}]
  wire  _GEN_222 = 8'hd9 == s0_data_ridx ? validArray_217 : _GEN_221; // @[Reg.scala 17:{22,22}]
  wire  _GEN_223 = 8'hda == s0_data_ridx ? validArray_218 : _GEN_222; // @[Reg.scala 17:{22,22}]
  wire  _GEN_224 = 8'hdb == s0_data_ridx ? validArray_219 : _GEN_223; // @[Reg.scala 17:{22,22}]
  wire  _GEN_225 = 8'hdc == s0_data_ridx ? validArray_220 : _GEN_224; // @[Reg.scala 17:{22,22}]
  wire  _GEN_226 = 8'hdd == s0_data_ridx ? validArray_221 : _GEN_225; // @[Reg.scala 17:{22,22}]
  wire  _GEN_227 = 8'hde == s0_data_ridx ? validArray_222 : _GEN_226; // @[Reg.scala 17:{22,22}]
  wire  _GEN_228 = 8'hdf == s0_data_ridx ? validArray_223 : _GEN_227; // @[Reg.scala 17:{22,22}]
  wire  _GEN_229 = 8'he0 == s0_data_ridx ? validArray_224 : _GEN_228; // @[Reg.scala 17:{22,22}]
  wire  _GEN_230 = 8'he1 == s0_data_ridx ? validArray_225 : _GEN_229; // @[Reg.scala 17:{22,22}]
  wire  _GEN_231 = 8'he2 == s0_data_ridx ? validArray_226 : _GEN_230; // @[Reg.scala 17:{22,22}]
  wire  _GEN_232 = 8'he3 == s0_data_ridx ? validArray_227 : _GEN_231; // @[Reg.scala 17:{22,22}]
  wire  _GEN_233 = 8'he4 == s0_data_ridx ? validArray_228 : _GEN_232; // @[Reg.scala 17:{22,22}]
  wire  _GEN_234 = 8'he5 == s0_data_ridx ? validArray_229 : _GEN_233; // @[Reg.scala 17:{22,22}]
  wire  _GEN_235 = 8'he6 == s0_data_ridx ? validArray_230 : _GEN_234; // @[Reg.scala 17:{22,22}]
  wire  _GEN_236 = 8'he7 == s0_data_ridx ? validArray_231 : _GEN_235; // @[Reg.scala 17:{22,22}]
  wire  _GEN_237 = 8'he8 == s0_data_ridx ? validArray_232 : _GEN_236; // @[Reg.scala 17:{22,22}]
  wire  _GEN_238 = 8'he9 == s0_data_ridx ? validArray_233 : _GEN_237; // @[Reg.scala 17:{22,22}]
  wire  _GEN_239 = 8'hea == s0_data_ridx ? validArray_234 : _GEN_238; // @[Reg.scala 17:{22,22}]
  wire  _GEN_240 = 8'heb == s0_data_ridx ? validArray_235 : _GEN_239; // @[Reg.scala 17:{22,22}]
  wire  _GEN_241 = 8'hec == s0_data_ridx ? validArray_236 : _GEN_240; // @[Reg.scala 17:{22,22}]
  wire  _GEN_242 = 8'hed == s0_data_ridx ? validArray_237 : _GEN_241; // @[Reg.scala 17:{22,22}]
  wire  _GEN_243 = 8'hee == s0_data_ridx ? validArray_238 : _GEN_242; // @[Reg.scala 17:{22,22}]
  wire  _GEN_244 = 8'hef == s0_data_ridx ? validArray_239 : _GEN_243; // @[Reg.scala 17:{22,22}]
  wire  _GEN_245 = 8'hf0 == s0_data_ridx ? validArray_240 : _GEN_244; // @[Reg.scala 17:{22,22}]
  wire  _GEN_246 = 8'hf1 == s0_data_ridx ? validArray_241 : _GEN_245; // @[Reg.scala 17:{22,22}]
  wire  _GEN_247 = 8'hf2 == s0_data_ridx ? validArray_242 : _GEN_246; // @[Reg.scala 17:{22,22}]
  wire  _GEN_248 = 8'hf3 == s0_data_ridx ? validArray_243 : _GEN_247; // @[Reg.scala 17:{22,22}]
  wire  _GEN_249 = 8'hf4 == s0_data_ridx ? validArray_244 : _GEN_248; // @[Reg.scala 17:{22,22}]
  wire  _GEN_250 = 8'hf5 == s0_data_ridx ? validArray_245 : _GEN_249; // @[Reg.scala 17:{22,22}]
  wire  _GEN_251 = 8'hf6 == s0_data_ridx ? validArray_246 : _GEN_250; // @[Reg.scala 17:{22,22}]
  wire  _GEN_252 = 8'hf7 == s0_data_ridx ? validArray_247 : _GEN_251; // @[Reg.scala 17:{22,22}]
  wire  _GEN_253 = 8'hf8 == s0_data_ridx ? validArray_248 : _GEN_252; // @[Reg.scala 17:{22,22}]
  wire  _GEN_254 = 8'hf9 == s0_data_ridx ? validArray_249 : _GEN_253; // @[Reg.scala 17:{22,22}]
  wire  _GEN_255 = 8'hfa == s0_data_ridx ? validArray_250 : _GEN_254; // @[Reg.scala 17:{22,22}]
  wire  _GEN_256 = 8'hfb == s0_data_ridx ? validArray_251 : _GEN_255; // @[Reg.scala 17:{22,22}]
  wire  _GEN_257 = 8'hfc == s0_data_ridx ? validArray_252 : _GEN_256; // @[Reg.scala 17:{22,22}]
  wire  _T_7 = resp_valid & shouldNotFallThru & ~lastCycleHasUpdate & io_ctrl_ubtb_enable; // @[uBTB.scala 165:60]
  wire [38:0] _io_out_resp_s1_minimal_pred_nextAddr_T_1 = s1_pc + 39'h10; // @[FrontendBundle.scala 390:52]
  wire  _io_out_resp_s1_minimal_pred_cfiOffset_T = ~_T_7; // @[FrontendBundle.scala 391:66]
  wire [2:0] _io_out_resp_s1_minimal_pred_cfiOffset_T_2 = _io_out_resp_s1_minimal_pred_cfiOffset_T ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  reg  io_out_last_stage_meta_r; // @[Reg.scala 16:16]
  wire  outMeta_ftPred = fallThruPredRAM_io_rdata; // @[uBTB.scala 160:21 170:18]
  reg  io_out_last_stage_meta_r1; // @[Reg.scala 16:16]
  wire  update_mispred = io_update_bits_mispred_mask_0 | io_update_bits_mispred_mask_1 | io_update_bits_mispred_mask_2; // @[uBTB.scala 174:60]
  wire  update_redirected = io_update_bits_from_stage == 2'h1; // @[uBTB.scala 175:53]
  reg [38:0] update__pc; // @[uBTB.scala 176:23]
  reg  update__full_pred_br_taken_mask_0; // @[uBTB.scala 176:23]
  reg  update__full_pred_br_taken_mask_1; // @[uBTB.scala 176:23]
  reg  update__full_pred_slot_valids_0; // @[uBTB.scala 176:23]
  reg  update__full_pred_slot_valids_1; // @[uBTB.scala 176:23]
  reg [38:0] update__full_pred_targets_0; // @[uBTB.scala 176:23]
  reg [38:0] update__full_pred_targets_1; // @[uBTB.scala 176:23]
  reg [2:0] update__full_pred_offsets_0; // @[uBTB.scala 176:23]
  reg [2:0] update__full_pred_offsets_1; // @[uBTB.scala 176:23]
  reg [38:0] update__full_pred_fallThroughAddr; // @[uBTB.scala 176:23]
  reg  update__full_pred_is_br_sharing; // @[uBTB.scala 176:23]
  reg [7:0] update__folded_hist_hist_23_folded_hist; // @[uBTB.scala 176:23]
  reg  update__pred_hit; // @[uBTB.scala 176:23]
  reg [511:0] update__meta; // @[uBTB.scala 176:23]
  wire  u_meta_ftPred = update__meta[0];
  wire  u_data_nextAddr_tm_0 = update__full_pred_slot_valids_0 & update__full_pred_br_taken_mask_0; // @[FrontendBundle.scala 428:69]
  wire  _u_data_nextAddr_tm_T_3 = update__full_pred_is_br_sharing & update__full_pred_br_taken_mask_1 | ~
    update__full_pred_is_br_sharing; // @[FrontendBundle.scala 430:47]
  wire  u_data_nextAddr_tm_1 = update__full_pred_slot_valids_1 & _u_data_nextAddr_tm_T_3; // @[FrontendBundle.scala 429:25]
  wire  _u_data_nextAddr_selVecOH_T_3 = ~u_data_nextAddr_tm_0; // @[FrontendBundle.scala 469:43]
  wire  u_data_nextAddr_selVecOH_1 = ~u_data_nextAddr_tm_0 & u_data_nextAddr_tm_1; // @[FrontendBundle.scala 469:75]
  wire [1:0] _u_data_nextAddr_selVecOH_T_5 = {u_data_nextAddr_tm_1,u_data_nextAddr_tm_0}; // @[FrontendBundle.scala 470:12]
  wire  u_data_nextAddr_selVecOH_2 = ~(|_u_data_nextAddr_selVecOH_T_5); // @[FrontendBundle.scala 470:8]
  wire [38:0] _u_data_nextAddr_T = u_data_nextAddr_tm_0 ? update__full_pred_targets_0 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _u_data_nextAddr_T_1 = u_data_nextAddr_selVecOH_1 ? update__full_pred_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _u_data_nextAddr_T_2 = u_data_nextAddr_selVecOH_2 ? update__full_pred_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _u_data_nextAddr_T_4 = _u_data_nextAddr_T | _u_data_nextAddr_T_1; // @[Mux.scala 27:73]
  wire [2:0] _u_data_cfiOffset_cfiIndex_bits_T_8 = u_data_nextAddr_tm_0 ? update__full_pred_offsets_0 :
    update__full_pred_offsets_1; // @[ParallelMux.scala 90:77]
  wire [2:0] _u_data_cfiOffset_cfiIndex_bits_T_20 = u_data_nextAddr_selVecOH_2 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire  _u_data_takenOnBr_T_4 = update__full_pred_slot_valids_1 & update__full_pred_is_br_sharing; // @[FrontendBundle.scala 423:48]
  wire  _u_data_takenOnBr_T_6 = ~(update__full_pred_slot_valids_0 | _u_data_takenOnBr_T_4); // @[FrontendBundle.scala 454:22]
  wire  _u_data_takenOnBr_T_33 = u_data_nextAddr_tm_0 | ~_u_data_takenOnBr_T_4; // @[FrontendBundle.scala 458:34]
  wire  _u_data_takenOnBr_T_34 = update__full_pred_slot_valids_0 & _u_data_takenOnBr_T_33; // @[FrontendBundle.scala 457:75]
  wire  _u_data_takenOnBr_T_48 = _u_data_takenOnBr_T_4 & _u_data_nextAddr_selVecOH_T_3; // @[FrontendBundle.scala 456:22]
  wire [1:0] u_data_brNumOH_hi = {_u_data_takenOnBr_T_48,_u_data_takenOnBr_T_34}; // @[uBTB.scala 52:41]
  wire [7:0] u_idx = update__pc[8:1] ^ update__folded_hist_hist_23_folded_hist; // @[uBTB.scala 184:33]
  wire  u_ftPred = &u_meta_ftPred; // @[uBTB.scala 186:32]
  wire  u_ftMisPred = u_ftPred ^ update__pred_hit; // @[uBTB.scala 187:30]
  wire  _GEN_264 = 8'h0 == u_idx | validArray_0; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_265 = 8'h1 == u_idx | validArray_1; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_266 = 8'h2 == u_idx | validArray_2; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_267 = 8'h3 == u_idx | validArray_3; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_268 = 8'h4 == u_idx | validArray_4; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_269 = 8'h5 == u_idx | validArray_5; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_270 = 8'h6 == u_idx | validArray_6; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_271 = 8'h7 == u_idx | validArray_7; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_272 = 8'h8 == u_idx | validArray_8; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_273 = 8'h9 == u_idx | validArray_9; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_274 = 8'ha == u_idx | validArray_10; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_275 = 8'hb == u_idx | validArray_11; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_276 = 8'hc == u_idx | validArray_12; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_277 = 8'hd == u_idx | validArray_13; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_278 = 8'he == u_idx | validArray_14; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_279 = 8'hf == u_idx | validArray_15; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_280 = 8'h10 == u_idx | validArray_16; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_281 = 8'h11 == u_idx | validArray_17; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_282 = 8'h12 == u_idx | validArray_18; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_283 = 8'h13 == u_idx | validArray_19; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_284 = 8'h14 == u_idx | validArray_20; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_285 = 8'h15 == u_idx | validArray_21; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_286 = 8'h16 == u_idx | validArray_22; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_287 = 8'h17 == u_idx | validArray_23; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_288 = 8'h18 == u_idx | validArray_24; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_289 = 8'h19 == u_idx | validArray_25; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_290 = 8'h1a == u_idx | validArray_26; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_291 = 8'h1b == u_idx | validArray_27; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_292 = 8'h1c == u_idx | validArray_28; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_293 = 8'h1d == u_idx | validArray_29; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_294 = 8'h1e == u_idx | validArray_30; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_295 = 8'h1f == u_idx | validArray_31; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_296 = 8'h20 == u_idx | validArray_32; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_297 = 8'h21 == u_idx | validArray_33; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_298 = 8'h22 == u_idx | validArray_34; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_299 = 8'h23 == u_idx | validArray_35; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_300 = 8'h24 == u_idx | validArray_36; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_301 = 8'h25 == u_idx | validArray_37; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_302 = 8'h26 == u_idx | validArray_38; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_303 = 8'h27 == u_idx | validArray_39; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_304 = 8'h28 == u_idx | validArray_40; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_305 = 8'h29 == u_idx | validArray_41; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_306 = 8'h2a == u_idx | validArray_42; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_307 = 8'h2b == u_idx | validArray_43; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_308 = 8'h2c == u_idx | validArray_44; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_309 = 8'h2d == u_idx | validArray_45; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_310 = 8'h2e == u_idx | validArray_46; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_311 = 8'h2f == u_idx | validArray_47; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_312 = 8'h30 == u_idx | validArray_48; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_313 = 8'h31 == u_idx | validArray_49; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_314 = 8'h32 == u_idx | validArray_50; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_315 = 8'h33 == u_idx | validArray_51; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_316 = 8'h34 == u_idx | validArray_52; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_317 = 8'h35 == u_idx | validArray_53; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_318 = 8'h36 == u_idx | validArray_54; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_319 = 8'h37 == u_idx | validArray_55; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_320 = 8'h38 == u_idx | validArray_56; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_321 = 8'h39 == u_idx | validArray_57; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_322 = 8'h3a == u_idx | validArray_58; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_323 = 8'h3b == u_idx | validArray_59; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_324 = 8'h3c == u_idx | validArray_60; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_325 = 8'h3d == u_idx | validArray_61; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_326 = 8'h3e == u_idx | validArray_62; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_327 = 8'h3f == u_idx | validArray_63; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_328 = 8'h40 == u_idx | validArray_64; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_329 = 8'h41 == u_idx | validArray_65; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_330 = 8'h42 == u_idx | validArray_66; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_331 = 8'h43 == u_idx | validArray_67; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_332 = 8'h44 == u_idx | validArray_68; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_333 = 8'h45 == u_idx | validArray_69; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_334 = 8'h46 == u_idx | validArray_70; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_335 = 8'h47 == u_idx | validArray_71; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_336 = 8'h48 == u_idx | validArray_72; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_337 = 8'h49 == u_idx | validArray_73; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_338 = 8'h4a == u_idx | validArray_74; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_339 = 8'h4b == u_idx | validArray_75; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_340 = 8'h4c == u_idx | validArray_76; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_341 = 8'h4d == u_idx | validArray_77; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_342 = 8'h4e == u_idx | validArray_78; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_343 = 8'h4f == u_idx | validArray_79; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_344 = 8'h50 == u_idx | validArray_80; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_345 = 8'h51 == u_idx | validArray_81; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_346 = 8'h52 == u_idx | validArray_82; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_347 = 8'h53 == u_idx | validArray_83; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_348 = 8'h54 == u_idx | validArray_84; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_349 = 8'h55 == u_idx | validArray_85; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_350 = 8'h56 == u_idx | validArray_86; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_351 = 8'h57 == u_idx | validArray_87; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_352 = 8'h58 == u_idx | validArray_88; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_353 = 8'h59 == u_idx | validArray_89; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_354 = 8'h5a == u_idx | validArray_90; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_355 = 8'h5b == u_idx | validArray_91; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_356 = 8'h5c == u_idx | validArray_92; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_357 = 8'h5d == u_idx | validArray_93; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_358 = 8'h5e == u_idx | validArray_94; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_359 = 8'h5f == u_idx | validArray_95; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_360 = 8'h60 == u_idx | validArray_96; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_361 = 8'h61 == u_idx | validArray_97; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_362 = 8'h62 == u_idx | validArray_98; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_363 = 8'h63 == u_idx | validArray_99; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_364 = 8'h64 == u_idx | validArray_100; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_365 = 8'h65 == u_idx | validArray_101; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_366 = 8'h66 == u_idx | validArray_102; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_367 = 8'h67 == u_idx | validArray_103; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_368 = 8'h68 == u_idx | validArray_104; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_369 = 8'h69 == u_idx | validArray_105; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_370 = 8'h6a == u_idx | validArray_106; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_371 = 8'h6b == u_idx | validArray_107; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_372 = 8'h6c == u_idx | validArray_108; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_373 = 8'h6d == u_idx | validArray_109; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_374 = 8'h6e == u_idx | validArray_110; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_375 = 8'h6f == u_idx | validArray_111; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_376 = 8'h70 == u_idx | validArray_112; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_377 = 8'h71 == u_idx | validArray_113; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_378 = 8'h72 == u_idx | validArray_114; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_379 = 8'h73 == u_idx | validArray_115; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_380 = 8'h74 == u_idx | validArray_116; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_381 = 8'h75 == u_idx | validArray_117; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_382 = 8'h76 == u_idx | validArray_118; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_383 = 8'h77 == u_idx | validArray_119; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_384 = 8'h78 == u_idx | validArray_120; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_385 = 8'h79 == u_idx | validArray_121; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_386 = 8'h7a == u_idx | validArray_122; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_387 = 8'h7b == u_idx | validArray_123; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_388 = 8'h7c == u_idx | validArray_124; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_389 = 8'h7d == u_idx | validArray_125; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_390 = 8'h7e == u_idx | validArray_126; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_391 = 8'h7f == u_idx | validArray_127; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_392 = 8'h80 == u_idx | validArray_128; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_393 = 8'h81 == u_idx | validArray_129; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_394 = 8'h82 == u_idx | validArray_130; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_395 = 8'h83 == u_idx | validArray_131; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_396 = 8'h84 == u_idx | validArray_132; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_397 = 8'h85 == u_idx | validArray_133; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_398 = 8'h86 == u_idx | validArray_134; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_399 = 8'h87 == u_idx | validArray_135; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_400 = 8'h88 == u_idx | validArray_136; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_401 = 8'h89 == u_idx | validArray_137; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_402 = 8'h8a == u_idx | validArray_138; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_403 = 8'h8b == u_idx | validArray_139; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_404 = 8'h8c == u_idx | validArray_140; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_405 = 8'h8d == u_idx | validArray_141; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_406 = 8'h8e == u_idx | validArray_142; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_407 = 8'h8f == u_idx | validArray_143; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_408 = 8'h90 == u_idx | validArray_144; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_409 = 8'h91 == u_idx | validArray_145; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_410 = 8'h92 == u_idx | validArray_146; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_411 = 8'h93 == u_idx | validArray_147; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_412 = 8'h94 == u_idx | validArray_148; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_413 = 8'h95 == u_idx | validArray_149; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_414 = 8'h96 == u_idx | validArray_150; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_415 = 8'h97 == u_idx | validArray_151; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_416 = 8'h98 == u_idx | validArray_152; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_417 = 8'h99 == u_idx | validArray_153; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_418 = 8'h9a == u_idx | validArray_154; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_419 = 8'h9b == u_idx | validArray_155; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_420 = 8'h9c == u_idx | validArray_156; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_421 = 8'h9d == u_idx | validArray_157; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_422 = 8'h9e == u_idx | validArray_158; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_423 = 8'h9f == u_idx | validArray_159; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_424 = 8'ha0 == u_idx | validArray_160; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_425 = 8'ha1 == u_idx | validArray_161; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_426 = 8'ha2 == u_idx | validArray_162; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_427 = 8'ha3 == u_idx | validArray_163; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_428 = 8'ha4 == u_idx | validArray_164; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_429 = 8'ha5 == u_idx | validArray_165; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_430 = 8'ha6 == u_idx | validArray_166; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_431 = 8'ha7 == u_idx | validArray_167; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_432 = 8'ha8 == u_idx | validArray_168; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_433 = 8'ha9 == u_idx | validArray_169; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_434 = 8'haa == u_idx | validArray_170; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_435 = 8'hab == u_idx | validArray_171; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_436 = 8'hac == u_idx | validArray_172; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_437 = 8'had == u_idx | validArray_173; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_438 = 8'hae == u_idx | validArray_174; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_439 = 8'haf == u_idx | validArray_175; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_440 = 8'hb0 == u_idx | validArray_176; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_441 = 8'hb1 == u_idx | validArray_177; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_442 = 8'hb2 == u_idx | validArray_178; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_443 = 8'hb3 == u_idx | validArray_179; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_444 = 8'hb4 == u_idx | validArray_180; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_445 = 8'hb5 == u_idx | validArray_181; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_446 = 8'hb6 == u_idx | validArray_182; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_447 = 8'hb7 == u_idx | validArray_183; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_448 = 8'hb8 == u_idx | validArray_184; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_449 = 8'hb9 == u_idx | validArray_185; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_450 = 8'hba == u_idx | validArray_186; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_451 = 8'hbb == u_idx | validArray_187; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_452 = 8'hbc == u_idx | validArray_188; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_453 = 8'hbd == u_idx | validArray_189; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_454 = 8'hbe == u_idx | validArray_190; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_455 = 8'hbf == u_idx | validArray_191; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_456 = 8'hc0 == u_idx | validArray_192; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_457 = 8'hc1 == u_idx | validArray_193; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_458 = 8'hc2 == u_idx | validArray_194; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_459 = 8'hc3 == u_idx | validArray_195; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_460 = 8'hc4 == u_idx | validArray_196; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_461 = 8'hc5 == u_idx | validArray_197; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_462 = 8'hc6 == u_idx | validArray_198; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_463 = 8'hc7 == u_idx | validArray_199; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_464 = 8'hc8 == u_idx | validArray_200; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_465 = 8'hc9 == u_idx | validArray_201; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_466 = 8'hca == u_idx | validArray_202; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_467 = 8'hcb == u_idx | validArray_203; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_468 = 8'hcc == u_idx | validArray_204; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_469 = 8'hcd == u_idx | validArray_205; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_470 = 8'hce == u_idx | validArray_206; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_471 = 8'hcf == u_idx | validArray_207; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_472 = 8'hd0 == u_idx | validArray_208; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_473 = 8'hd1 == u_idx | validArray_209; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_474 = 8'hd2 == u_idx | validArray_210; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_475 = 8'hd3 == u_idx | validArray_211; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_476 = 8'hd4 == u_idx | validArray_212; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_477 = 8'hd5 == u_idx | validArray_213; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_478 = 8'hd6 == u_idx | validArray_214; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_479 = 8'hd7 == u_idx | validArray_215; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_480 = 8'hd8 == u_idx | validArray_216; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_481 = 8'hd9 == u_idx | validArray_217; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_482 = 8'hda == u_idx | validArray_218; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_483 = 8'hdb == u_idx | validArray_219; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_484 = 8'hdc == u_idx | validArray_220; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_485 = 8'hdd == u_idx | validArray_221; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_486 = 8'hde == u_idx | validArray_222; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_487 = 8'hdf == u_idx | validArray_223; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_488 = 8'he0 == u_idx | validArray_224; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_489 = 8'he1 == u_idx | validArray_225; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_490 = 8'he2 == u_idx | validArray_226; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_491 = 8'he3 == u_idx | validArray_227; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_492 = 8'he4 == u_idx | validArray_228; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_493 = 8'he5 == u_idx | validArray_229; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_494 = 8'he6 == u_idx | validArray_230; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_495 = 8'he7 == u_idx | validArray_231; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_496 = 8'he8 == u_idx | validArray_232; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_497 = 8'he9 == u_idx | validArray_233; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_498 = 8'hea == u_idx | validArray_234; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_499 = 8'heb == u_idx | validArray_235; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_500 = 8'hec == u_idx | validArray_236; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_501 = 8'hed == u_idx | validArray_237; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_502 = 8'hee == u_idx | validArray_238; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_503 = 8'hef == u_idx | validArray_239; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_504 = 8'hf0 == u_idx | validArray_240; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_505 = 8'hf1 == u_idx | validArray_241; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_506 = 8'hf2 == u_idx | validArray_242; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_507 = 8'hf3 == u_idx | validArray_243; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_508 = 8'hf4 == u_idx | validArray_244; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_509 = 8'hf5 == u_idx | validArray_245; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_510 = 8'hf6 == u_idx | validArray_246; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_511 = 8'hf7 == u_idx | validArray_247; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_512 = 8'hf8 == u_idx | validArray_248; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_513 = 8'hf9 == u_idx | validArray_249; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_514 = 8'hfa == u_idx | validArray_250; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_515 = 8'hfb == u_idx | validArray_251; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_516 = 8'hfc == u_idx | validArray_252; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_517 = 8'hfd == u_idx | validArray_253; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_518 = 8'hfe == u_idx | validArray_254; // @[uBTB.scala 191:{23,23} 140:27]
  wire  _GEN_519 = 8'hff == u_idx | validArray_255; // @[uBTB.scala 191:{23,23} 140:27]
  reg  fallThruPredRAM_io_wen_REG; // @[uBTB.scala 194:51]
  wire  _fallThruPredRAM_io_wdata_T_4 = u_meta_ftPred + 1'h1; // @[BPU.scala 91:24]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 94:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  SRAMTemplate_7 dataMem ( // @[uBTB.scala 138:23]
    .clock(dataMem_clock),
    .reset(dataMem_reset),
    .io_rreq_valid(dataMem_io_rreq_valid),
    .io_rreq_bits_setIdx(dataMem_io_rreq_bits_setIdx),
    .io_rresp_data_0_nextAddr(dataMem_io_rresp_data_0_nextAddr),
    .io_rresp_data_0_cfiOffset(dataMem_io_rresp_data_0_cfiOffset),
    .io_rresp_data_0_taken(dataMem_io_rresp_data_0_taken),
    .io_rresp_data_0_takenOnBr(dataMem_io_rresp_data_0_takenOnBr),
    .io_rresp_data_0_brNumOH(dataMem_io_rresp_data_0_brNumOH),
    .io_wreq_valid(dataMem_io_wreq_valid),
    .io_wreq_bits_setIdx(dataMem_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_nextAddr(dataMem_io_wreq_bits_data_0_nextAddr),
    .io_wreq_bits_data_0_cfiOffset(dataMem_io_wreq_bits_data_0_cfiOffset),
    .io_wreq_bits_data_0_taken(dataMem_io_wreq_bits_data_0_taken),
    .io_wreq_bits_data_0_takenOnBr(dataMem_io_wreq_bits_data_0_takenOnBr),
    .io_wreq_bits_data_0_brNumOH(dataMem_io_wreq_bits_data_0_brNumOH)
  );
  FallThruPred fallThruPredRAM ( // @[uBTB.scala 139:31]
    .clock(fallThruPredRAM_clock),
    .reset(fallThruPredRAM_reset),
    .io_ren(fallThruPredRAM_io_ren),
    .io_ridx(fallThruPredRAM_io_ridx),
    .io_rdata(fallThruPredRAM_io_rdata),
    .io_wen(fallThruPredRAM_io_wen),
    .io_widx(fallThruPredRAM_io_widx),
    .io_wdata(fallThruPredRAM_io_wdata)
  );
  assign io_out_last_stage_meta = {{511'd0}, io_out_last_stage_meta_r1}; // @[uBTB.scala 171:26]
  assign io_out_resp_s1_minimal_pred_nextAddr = _T_7 ? dataMem_io_rresp_data_0_nextAddr :
    _io_out_resp_s1_minimal_pred_nextAddr_T_1; // @[FrontendBundle.scala 390:25]
  assign io_out_resp_s1_minimal_pred_cfiOffset = dataMem_io_rresp_data_0_cfiOffset |
    _io_out_resp_s1_minimal_pred_cfiOffset_T_2; // @[FrontendBundle.scala 391:39]
  assign io_out_resp_s1_minimal_pred_taken = dataMem_io_rresp_data_0_taken & _T_7; // @[FrontendBundle.scala 392:31]
  assign io_out_resp_s1_minimal_pred_takenOnBr = dataMem_io_rresp_data_0_takenOnBr & _T_7; // @[FrontendBundle.scala 393:39]
  assign io_out_resp_s1_minimal_pred_brNumOH = _T_7 ? dataMem_io_rresp_data_0_brNumOH : 3'h1; // @[FrontendBundle.scala 394:24]
  assign io_out_resp_s1_minimal_pred_valid = resp_valid & shouldNotFallThru & ~lastCycleHasUpdate & io_ctrl_ubtb_enable; // @[uBTB.scala 165:60]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 95:17]
  assign dataMem_clock = clock;
  assign dataMem_reset = reset;
  assign dataMem_io_rreq_valid = io_s0_fire; // @[uBTB.scala 143:26]
  assign dataMem_io_rreq_bits_setIdx = io_in_bits_s0_pc[8:1] ^ io_in_bits_folded_hist_hist_23_folded_hist; // @[uBTB.scala 137:36]
  assign dataMem_io_wreq_valid = u_valid; // @[SRAMTemplate.scala 85:20]
  assign dataMem_io_wreq_bits_setIdx = update__pc[8:1] ^ update__folded_hist_hist_23_folded_hist; // @[uBTB.scala 184:33]
  assign dataMem_io_wreq_bits_data_0_nextAddr = _u_data_nextAddr_T_4 | _u_data_nextAddr_T_2; // @[Mux.scala 27:73]
  assign dataMem_io_wreq_bits_data_0_cfiOffset = _u_data_cfiOffset_cfiIndex_bits_T_8 |
    _u_data_cfiOffset_cfiIndex_bits_T_20; // @[FrontendBundle.scala 488:60]
  assign dataMem_io_wreq_bits_data_0_taken = |_u_data_nextAddr_selVecOH_T_5; // @[FrontendBundle.scala 485:53]
  assign dataMem_io_wreq_bits_data_0_takenOnBr = _u_data_takenOnBr_T_34 & update__full_pred_br_taken_mask_0 |
    _u_data_takenOnBr_T_48 & update__full_pred_br_taken_mask_1; // @[uBTB.scala 51:109]
  assign dataMem_io_wreq_bits_data_0_brNumOH = {u_data_brNumOH_hi,_u_data_takenOnBr_T_6}; // @[uBTB.scala 52:41]
  assign fallThruPredRAM_clock = clock;
  assign fallThruPredRAM_reset = reset;
  assign fallThruPredRAM_io_ren = io_s0_fire; // @[uBTB.scala 146:26]
  assign fallThruPredRAM_io_ridx = io_in_bits_s0_pc[11:1] ^ io_in_bits_s0_pc[22:12]; // @[uBTB.scala 131:15]
  assign fallThruPredRAM_io_wen = u_ftMisPred & fallThruPredRAM_io_wen_REG; // @[uBTB.scala 194:41]
  assign fallThruPredRAM_io_widx = update__pc[11:1] ^ update__pc[22:12]; // @[uBTB.scala 131:15]
  assign fallThruPredRAM_io_wdata = u_meta_ftPred | _fallThruPredRAM_io_wdata_T_4; // @[BPU.scala 89:8]
  always @(posedge clock) begin
    if (REG_1) begin // @[BPU.scala 216:58]
      s1_pc <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 217:11]
    end else if (io_s0_fire) begin // @[Reg.scala 17:18]
      s1_pc <= io_in_bits_s0_pc; // @[Reg.scala 17:22]
    end
    REG <= reset; // @[BPU.scala 216:31]
    REG_1 <= REG & ~reset; // @[BPU.scala 216:39]
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_0 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_0 <= _GEN_264;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_1 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_1 <= _GEN_265;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_2 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_2 <= _GEN_266;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_3 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_3 <= _GEN_267;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_4 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_4 <= _GEN_268;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_5 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_5 <= _GEN_269;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_6 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_6 <= _GEN_270;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_7 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_7 <= _GEN_271;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_8 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_8 <= _GEN_272;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_9 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_9 <= _GEN_273;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_10 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_10 <= _GEN_274;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_11 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_11 <= _GEN_275;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_12 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_12 <= _GEN_276;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_13 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_13 <= _GEN_277;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_14 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_14 <= _GEN_278;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_15 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_15 <= _GEN_279;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_16 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_16 <= _GEN_280;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_17 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_17 <= _GEN_281;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_18 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_18 <= _GEN_282;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_19 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_19 <= _GEN_283;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_20 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_20 <= _GEN_284;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_21 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_21 <= _GEN_285;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_22 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_22 <= _GEN_286;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_23 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_23 <= _GEN_287;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_24 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_24 <= _GEN_288;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_25 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_25 <= _GEN_289;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_26 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_26 <= _GEN_290;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_27 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_27 <= _GEN_291;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_28 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_28 <= _GEN_292;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_29 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_29 <= _GEN_293;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_30 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_30 <= _GEN_294;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_31 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_31 <= _GEN_295;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_32 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_32 <= _GEN_296;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_33 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_33 <= _GEN_297;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_34 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_34 <= _GEN_298;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_35 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_35 <= _GEN_299;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_36 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_36 <= _GEN_300;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_37 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_37 <= _GEN_301;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_38 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_38 <= _GEN_302;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_39 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_39 <= _GEN_303;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_40 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_40 <= _GEN_304;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_41 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_41 <= _GEN_305;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_42 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_42 <= _GEN_306;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_43 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_43 <= _GEN_307;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_44 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_44 <= _GEN_308;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_45 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_45 <= _GEN_309;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_46 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_46 <= _GEN_310;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_47 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_47 <= _GEN_311;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_48 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_48 <= _GEN_312;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_49 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_49 <= _GEN_313;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_50 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_50 <= _GEN_314;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_51 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_51 <= _GEN_315;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_52 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_52 <= _GEN_316;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_53 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_53 <= _GEN_317;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_54 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_54 <= _GEN_318;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_55 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_55 <= _GEN_319;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_56 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_56 <= _GEN_320;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_57 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_57 <= _GEN_321;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_58 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_58 <= _GEN_322;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_59 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_59 <= _GEN_323;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_60 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_60 <= _GEN_324;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_61 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_61 <= _GEN_325;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_62 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_62 <= _GEN_326;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_63 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_63 <= _GEN_327;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_64 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_64 <= _GEN_328;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_65 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_65 <= _GEN_329;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_66 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_66 <= _GEN_330;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_67 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_67 <= _GEN_331;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_68 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_68 <= _GEN_332;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_69 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_69 <= _GEN_333;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_70 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_70 <= _GEN_334;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_71 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_71 <= _GEN_335;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_72 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_72 <= _GEN_336;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_73 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_73 <= _GEN_337;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_74 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_74 <= _GEN_338;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_75 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_75 <= _GEN_339;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_76 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_76 <= _GEN_340;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_77 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_77 <= _GEN_341;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_78 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_78 <= _GEN_342;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_79 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_79 <= _GEN_343;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_80 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_80 <= _GEN_344;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_81 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_81 <= _GEN_345;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_82 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_82 <= _GEN_346;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_83 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_83 <= _GEN_347;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_84 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_84 <= _GEN_348;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_85 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_85 <= _GEN_349;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_86 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_86 <= _GEN_350;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_87 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_87 <= _GEN_351;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_88 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_88 <= _GEN_352;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_89 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_89 <= _GEN_353;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_90 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_90 <= _GEN_354;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_91 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_91 <= _GEN_355;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_92 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_92 <= _GEN_356;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_93 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_93 <= _GEN_357;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_94 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_94 <= _GEN_358;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_95 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_95 <= _GEN_359;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_96 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_96 <= _GEN_360;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_97 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_97 <= _GEN_361;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_98 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_98 <= _GEN_362;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_99 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_99 <= _GEN_363;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_100 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_100 <= _GEN_364;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_101 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_101 <= _GEN_365;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_102 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_102 <= _GEN_366;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_103 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_103 <= _GEN_367;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_104 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_104 <= _GEN_368;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_105 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_105 <= _GEN_369;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_106 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_106 <= _GEN_370;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_107 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_107 <= _GEN_371;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_108 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_108 <= _GEN_372;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_109 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_109 <= _GEN_373;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_110 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_110 <= _GEN_374;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_111 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_111 <= _GEN_375;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_112 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_112 <= _GEN_376;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_113 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_113 <= _GEN_377;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_114 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_114 <= _GEN_378;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_115 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_115 <= _GEN_379;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_116 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_116 <= _GEN_380;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_117 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_117 <= _GEN_381;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_118 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_118 <= _GEN_382;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_119 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_119 <= _GEN_383;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_120 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_120 <= _GEN_384;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_121 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_121 <= _GEN_385;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_122 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_122 <= _GEN_386;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_123 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_123 <= _GEN_387;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_124 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_124 <= _GEN_388;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_125 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_125 <= _GEN_389;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_126 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_126 <= _GEN_390;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_127 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_127 <= _GEN_391;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_128 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_128 <= _GEN_392;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_129 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_129 <= _GEN_393;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_130 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_130 <= _GEN_394;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_131 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_131 <= _GEN_395;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_132 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_132 <= _GEN_396;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_133 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_133 <= _GEN_397;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_134 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_134 <= _GEN_398;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_135 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_135 <= _GEN_399;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_136 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_136 <= _GEN_400;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_137 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_137 <= _GEN_401;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_138 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_138 <= _GEN_402;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_139 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_139 <= _GEN_403;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_140 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_140 <= _GEN_404;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_141 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_141 <= _GEN_405;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_142 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_142 <= _GEN_406;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_143 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_143 <= _GEN_407;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_144 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_144 <= _GEN_408;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_145 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_145 <= _GEN_409;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_146 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_146 <= _GEN_410;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_147 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_147 <= _GEN_411;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_148 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_148 <= _GEN_412;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_149 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_149 <= _GEN_413;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_150 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_150 <= _GEN_414;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_151 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_151 <= _GEN_415;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_152 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_152 <= _GEN_416;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_153 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_153 <= _GEN_417;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_154 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_154 <= _GEN_418;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_155 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_155 <= _GEN_419;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_156 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_156 <= _GEN_420;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_157 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_157 <= _GEN_421;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_158 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_158 <= _GEN_422;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_159 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_159 <= _GEN_423;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_160 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_160 <= _GEN_424;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_161 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_161 <= _GEN_425;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_162 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_162 <= _GEN_426;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_163 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_163 <= _GEN_427;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_164 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_164 <= _GEN_428;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_165 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_165 <= _GEN_429;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_166 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_166 <= _GEN_430;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_167 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_167 <= _GEN_431;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_168 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_168 <= _GEN_432;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_169 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_169 <= _GEN_433;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_170 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_170 <= _GEN_434;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_171 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_171 <= _GEN_435;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_172 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_172 <= _GEN_436;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_173 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_173 <= _GEN_437;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_174 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_174 <= _GEN_438;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_175 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_175 <= _GEN_439;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_176 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_176 <= _GEN_440;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_177 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_177 <= _GEN_441;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_178 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_178 <= _GEN_442;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_179 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_179 <= _GEN_443;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_180 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_180 <= _GEN_444;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_181 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_181 <= _GEN_445;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_182 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_182 <= _GEN_446;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_183 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_183 <= _GEN_447;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_184 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_184 <= _GEN_448;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_185 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_185 <= _GEN_449;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_186 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_186 <= _GEN_450;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_187 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_187 <= _GEN_451;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_188 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_188 <= _GEN_452;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_189 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_189 <= _GEN_453;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_190 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_190 <= _GEN_454;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_191 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_191 <= _GEN_455;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_192 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_192 <= _GEN_456;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_193 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_193 <= _GEN_457;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_194 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_194 <= _GEN_458;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_195 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_195 <= _GEN_459;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_196 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_196 <= _GEN_460;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_197 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_197 <= _GEN_461;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_198 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_198 <= _GEN_462;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_199 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_199 <= _GEN_463;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_200 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_200 <= _GEN_464;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_201 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_201 <= _GEN_465;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_202 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_202 <= _GEN_466;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_203 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_203 <= _GEN_467;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_204 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_204 <= _GEN_468;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_205 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_205 <= _GEN_469;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_206 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_206 <= _GEN_470;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_207 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_207 <= _GEN_471;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_208 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_208 <= _GEN_472;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_209 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_209 <= _GEN_473;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_210 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_210 <= _GEN_474;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_211 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_211 <= _GEN_475;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_212 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_212 <= _GEN_476;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_213 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_213 <= _GEN_477;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_214 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_214 <= _GEN_478;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_215 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_215 <= _GEN_479;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_216 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_216 <= _GEN_480;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_217 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_217 <= _GEN_481;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_218 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_218 <= _GEN_482;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_219 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_219 <= _GEN_483;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_220 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_220 <= _GEN_484;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_221 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_221 <= _GEN_485;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_222 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_222 <= _GEN_486;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_223 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_223 <= _GEN_487;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_224 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_224 <= _GEN_488;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_225 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_225 <= _GEN_489;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_226 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_226 <= _GEN_490;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_227 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_227 <= _GEN_491;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_228 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_228 <= _GEN_492;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_229 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_229 <= _GEN_493;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_230 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_230 <= _GEN_494;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_231 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_231 <= _GEN_495;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_232 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_232 <= _GEN_496;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_233 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_233 <= _GEN_497;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_234 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_234 <= _GEN_498;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_235 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_235 <= _GEN_499;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_236 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_236 <= _GEN_500;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_237 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_237 <= _GEN_501;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_238 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_238 <= _GEN_502;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_239 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_239 <= _GEN_503;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_240 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_240 <= _GEN_504;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_241 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_241 <= _GEN_505;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_242 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_242 <= _GEN_506;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_243 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_243 <= _GEN_507;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_244 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_244 <= _GEN_508;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_245 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_245 <= _GEN_509;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_246 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_246 <= _GEN_510;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_247 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_247 <= _GEN_511;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_248 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_248 <= _GEN_512;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_249 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_249 <= _GEN_513;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_250 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_250 <= _GEN_514;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_251 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_251 <= _GEN_515;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_252 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_252 <= _GEN_516;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_253 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_253 <= _GEN_517;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_254 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_254 <= _GEN_518;
    end
    if (reset) begin // @[uBTB.scala 140:27]
      validArray_255 <= 1'h0; // @[uBTB.scala 140:27]
    end else if (u_valid) begin // @[uBTB.scala 190:18]
      validArray_255 <= _GEN_519;
    end
    lastCycleHasUpdate <= u_valid; // @[uBTB.scala 150:26 178:16]
    u_valid <= io_update_valid & (update_mispred | update_redirected); // @[uBTB.scala 177:41]
    if (_resp_valid_T_1) begin // @[Reg.scala 17:18]
      if (8'hff == s0_data_ridx) begin // @[Reg.scala 17:22]
        resp_valid <= validArray_255; // @[Reg.scala 17:22]
      end else if (8'hfe == s0_data_ridx) begin // @[Reg.scala 17:22]
        resp_valid <= validArray_254; // @[Reg.scala 17:22]
      end else if (8'hfd == s0_data_ridx) begin // @[Reg.scala 17:22]
        resp_valid <= validArray_253; // @[Reg.scala 17:22]
      end else begin
        resp_valid <= _GEN_257;
      end
    end
    if (io_s1_fire) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r <= outMeta_ftPred; // @[Reg.scala 17:22]
    end
    if (io_s2_fire) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r1 <= io_out_last_stage_meta_r; // @[Reg.scala 17:22]
    end
    update__pc <= io_update_bits_pc; // @[uBTB.scala 176:23]
    update__full_pred_br_taken_mask_0 <= io_update_bits_full_pred_br_taken_mask_0; // @[uBTB.scala 176:23]
    update__full_pred_br_taken_mask_1 <= io_update_bits_full_pred_br_taken_mask_1; // @[uBTB.scala 176:23]
    update__full_pred_slot_valids_0 <= io_update_bits_full_pred_slot_valids_0; // @[uBTB.scala 176:23]
    update__full_pred_slot_valids_1 <= io_update_bits_full_pred_slot_valids_1; // @[uBTB.scala 176:23]
    update__full_pred_targets_0 <= io_update_bits_full_pred_targets_0; // @[uBTB.scala 176:23]
    update__full_pred_targets_1 <= io_update_bits_full_pred_targets_1; // @[uBTB.scala 176:23]
    update__full_pred_offsets_0 <= io_update_bits_full_pred_offsets_0; // @[uBTB.scala 176:23]
    update__full_pred_offsets_1 <= io_update_bits_full_pred_offsets_1; // @[uBTB.scala 176:23]
    update__full_pred_fallThroughAddr <= io_update_bits_full_pred_fallThroughAddr; // @[uBTB.scala 176:23]
    update__full_pred_is_br_sharing <= io_update_bits_full_pred_is_br_sharing; // @[uBTB.scala 176:23]
    update__folded_hist_hist_23_folded_hist <= io_update_bits_folded_hist_hist_23_folded_hist; // @[uBTB.scala 176:23]
    update__pred_hit <= io_update_bits_pred_hit; // @[uBTB.scala 176:23]
    update__meta <= io_update_bits_meta; // @[uBTB.scala 176:23]
    fallThruPredRAM_io_wen_REG <= io_update_valid; // @[uBTB.scala 194:51]
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
  _RAND_1 = {1{`RANDOM}};
  REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  validArray_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  validArray_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  validArray_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  validArray_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  validArray_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  validArray_5 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  validArray_6 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  validArray_7 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  validArray_8 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  validArray_9 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  validArray_10 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  validArray_11 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  validArray_12 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  validArray_13 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  validArray_14 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  validArray_15 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  validArray_16 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  validArray_17 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  validArray_18 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  validArray_19 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  validArray_20 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  validArray_21 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  validArray_22 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  validArray_23 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  validArray_24 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  validArray_25 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  validArray_26 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  validArray_27 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  validArray_28 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  validArray_29 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  validArray_30 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  validArray_31 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  validArray_32 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  validArray_33 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  validArray_34 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  validArray_35 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  validArray_36 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  validArray_37 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  validArray_38 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  validArray_39 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  validArray_40 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  validArray_41 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  validArray_42 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  validArray_43 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  validArray_44 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  validArray_45 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  validArray_46 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  validArray_47 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  validArray_48 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  validArray_49 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  validArray_50 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  validArray_51 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  validArray_52 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  validArray_53 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  validArray_54 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  validArray_55 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  validArray_56 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  validArray_57 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  validArray_58 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  validArray_59 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  validArray_60 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  validArray_61 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  validArray_62 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  validArray_63 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  validArray_64 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  validArray_65 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  validArray_66 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  validArray_67 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  validArray_68 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  validArray_69 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  validArray_70 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  validArray_71 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  validArray_72 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  validArray_73 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  validArray_74 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  validArray_75 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  validArray_76 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  validArray_77 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  validArray_78 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  validArray_79 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  validArray_80 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  validArray_81 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  validArray_82 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  validArray_83 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  validArray_84 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  validArray_85 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  validArray_86 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  validArray_87 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  validArray_88 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  validArray_89 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  validArray_90 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  validArray_91 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  validArray_92 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  validArray_93 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  validArray_94 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  validArray_95 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  validArray_96 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  validArray_97 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  validArray_98 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  validArray_99 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  validArray_100 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  validArray_101 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  validArray_102 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  validArray_103 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  validArray_104 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  validArray_105 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  validArray_106 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  validArray_107 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  validArray_108 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  validArray_109 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  validArray_110 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  validArray_111 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  validArray_112 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  validArray_113 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  validArray_114 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  validArray_115 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  validArray_116 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  validArray_117 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  validArray_118 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  validArray_119 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  validArray_120 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  validArray_121 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  validArray_122 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  validArray_123 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  validArray_124 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  validArray_125 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  validArray_126 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  validArray_127 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  validArray_128 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  validArray_129 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  validArray_130 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  validArray_131 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  validArray_132 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  validArray_133 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  validArray_134 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  validArray_135 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  validArray_136 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  validArray_137 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  validArray_138 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  validArray_139 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  validArray_140 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  validArray_141 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  validArray_142 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  validArray_143 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  validArray_144 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  validArray_145 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  validArray_146 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  validArray_147 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  validArray_148 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  validArray_149 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  validArray_150 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  validArray_151 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  validArray_152 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  validArray_153 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  validArray_154 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  validArray_155 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  validArray_156 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  validArray_157 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  validArray_158 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  validArray_159 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  validArray_160 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  validArray_161 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  validArray_162 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  validArray_163 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  validArray_164 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  validArray_165 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  validArray_166 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  validArray_167 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  validArray_168 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  validArray_169 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  validArray_170 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  validArray_171 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  validArray_172 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  validArray_173 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  validArray_174 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  validArray_175 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  validArray_176 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  validArray_177 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  validArray_178 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  validArray_179 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  validArray_180 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  validArray_181 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  validArray_182 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  validArray_183 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  validArray_184 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  validArray_185 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  validArray_186 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  validArray_187 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  validArray_188 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  validArray_189 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  validArray_190 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  validArray_191 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  validArray_192 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  validArray_193 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  validArray_194 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  validArray_195 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  validArray_196 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  validArray_197 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  validArray_198 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  validArray_199 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  validArray_200 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  validArray_201 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  validArray_202 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  validArray_203 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  validArray_204 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  validArray_205 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  validArray_206 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  validArray_207 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  validArray_208 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  validArray_209 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  validArray_210 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  validArray_211 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  validArray_212 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  validArray_213 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  validArray_214 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  validArray_215 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  validArray_216 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  validArray_217 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  validArray_218 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  validArray_219 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  validArray_220 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  validArray_221 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  validArray_222 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  validArray_223 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  validArray_224 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  validArray_225 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  validArray_226 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  validArray_227 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  validArray_228 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  validArray_229 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  validArray_230 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  validArray_231 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  validArray_232 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  validArray_233 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  validArray_234 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  validArray_235 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  validArray_236 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  validArray_237 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  validArray_238 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  validArray_239 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  validArray_240 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  validArray_241 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  validArray_242 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  validArray_243 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  validArray_244 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  validArray_245 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  validArray_246 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  validArray_247 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  validArray_248 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  validArray_249 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  validArray_250 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  validArray_251 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  validArray_252 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  validArray_253 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  validArray_254 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  validArray_255 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  lastCycleHasUpdate = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  u_valid = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  resp_valid = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  io_out_last_stage_meta_r = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  io_out_last_stage_meta_r1 = _RAND_263[0:0];
  _RAND_264 = {2{`RANDOM}};
  update__pc = _RAND_264[38:0];
  _RAND_265 = {1{`RANDOM}};
  update__full_pred_br_taken_mask_0 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  update__full_pred_br_taken_mask_1 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  update__full_pred_slot_valids_0 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  update__full_pred_slot_valids_1 = _RAND_268[0:0];
  _RAND_269 = {2{`RANDOM}};
  update__full_pred_targets_0 = _RAND_269[38:0];
  _RAND_270 = {2{`RANDOM}};
  update__full_pred_targets_1 = _RAND_270[38:0];
  _RAND_271 = {1{`RANDOM}};
  update__full_pred_offsets_0 = _RAND_271[2:0];
  _RAND_272 = {1{`RANDOM}};
  update__full_pred_offsets_1 = _RAND_272[2:0];
  _RAND_273 = {2{`RANDOM}};
  update__full_pred_fallThroughAddr = _RAND_273[38:0];
  _RAND_274 = {1{`RANDOM}};
  update__full_pred_is_br_sharing = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  update__folded_hist_hist_23_folded_hist = _RAND_275[7:0];
  _RAND_276 = {1{`RANDOM}};
  update__pred_hit = _RAND_276[0:0];
  _RAND_277 = {16{`RANDOM}};
  update__meta = _RAND_277[511:0];
  _RAND_278 = {1{`RANDOM}};
  fallThruPredRAM_io_wen_REG = _RAND_278[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
