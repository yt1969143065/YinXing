module StatusArray_4(
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
  input         io_update_0_data_blocked,
  input         io_update_0_data_srcState_0,
  input  [6:0]  io_update_0_data_psrc_0,
  input  [1:0]  io_update_0_data_srcType_0,
  input         io_update_0_data_robIdx_flag,
  input  [6:0]  io_update_0_data_robIdx_value,
  input  [6:0]  io_update_0_data_waitForRobIdx_value,
  input         io_update_0_data_strictWait,
  input         io_update_0_data_sqIdx_flag,
  input  [4:0]  io_update_0_data_sqIdx_value,
  input         io_update_1_enable,
  input  [23:0] io_update_1_addr,
  input         io_update_1_data_blocked,
  input         io_update_1_data_srcState_0,
  input  [6:0]  io_update_1_data_psrc_0,
  input  [1:0]  io_update_1_data_srcType_0,
  input         io_update_1_data_robIdx_flag,
  input  [6:0]  io_update_1_data_robIdx_value,
  input  [6:0]  io_update_1_data_waitForRobIdx_value,
  input         io_update_1_data_strictWait,
  input         io_update_1_data_sqIdx_flag,
  input  [4:0]  io_update_1_data_sqIdx_value,
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
  output [12:0] io_wakeupMatch_0_0,
  output [12:0] io_wakeupMatch_1_0,
  output [12:0] io_wakeupMatch_2_0,
  output [12:0] io_wakeupMatch_3_0,
  output [12:0] io_wakeupMatch_4_0,
  output [12:0] io_wakeupMatch_5_0,
  output [12:0] io_wakeupMatch_6_0,
  output [12:0] io_wakeupMatch_7_0,
  output [12:0] io_wakeupMatch_8_0,
  output [12:0] io_wakeupMatch_9_0,
  output [12:0] io_wakeupMatch_10_0,
  output [12:0] io_wakeupMatch_11_0,
  output [12:0] io_wakeupMatch_12_0,
  output [12:0] io_wakeupMatch_13_0,
  output [12:0] io_wakeupMatch_14_0,
  output [12:0] io_wakeupMatch_15_0,
  output [12:0] io_wakeupMatch_16_0,
  output [12:0] io_wakeupMatch_17_0,
  output [12:0] io_wakeupMatch_18_0,
  output [12:0] io_wakeupMatch_19_0,
  output [12:0] io_wakeupMatch_20_0,
  output [12:0] io_wakeupMatch_21_0,
  output [12:0] io_wakeupMatch_22_0,
  output [12:0] io_wakeupMatch_23_0,
  input         io_issueGranted_0_valid,
  input  [23:0] io_issueGranted_0_bits,
  input         io_issueGranted_1_valid,
  input  [23:0] io_issueGranted_1_bits,
  input         io_deqResp_0_valid,
  input  [23:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success,
  input  [2:0]  io_deqResp_0_bits_resptype,
  input  [4:0]  io_deqResp_0_bits_dataInvalidSqIdx_value,
  input         io_deqResp_1_valid,
  input  [23:0] io_deqResp_1_bits_rsMask,
  input  [2:0]  io_deqResp_1_bits_resptype,
  input         io_deqResp_2_valid,
  input  [23:0] io_deqResp_2_bits_rsMask,
  input         io_deqResp_2_bits_success,
  input  [2:0]  io_deqResp_2_bits_resptype,
  input  [4:0]  io_deqResp_2_bits_dataInvalidSqIdx_value,
  input         io_deqResp_3_valid,
  input  [23:0] io_deqResp_3_bits_rsMask,
  input  [2:0]  io_deqResp_3_bits_resptype,
  input         io_stIssuePtr_flag,
  input  [4:0]  io_stIssuePtr_value,
  input         io_memWaitUpdateReq_staIssue_0_valid,
  input  [6:0]  io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value,
  input         io_memWaitUpdateReq_staIssue_1_valid,
  input  [6:0]  io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value,
  input         io_memWaitUpdateReq_stdIssue_0_valid,
  input  [4:0]  io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value,
  input         io_memWaitUpdateReq_stdIssue_1_valid,
  input  [4:0]  io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value
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
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [31:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [31:0] _RAND_331;
  reg [31:0] _RAND_332;
  reg [31:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [31:0] _RAND_349;
  reg [31:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
`endif // RANDOMIZE_REG_INIT
  reg  statusArray_0_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_0_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_0_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_0_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_0_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_0_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_0_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_0_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_0_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_0_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_1_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_1_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_1_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_1_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_1_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_1_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_1_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_1_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_1_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_1_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_2_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_2_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_2_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_2_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_2_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_2_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_2_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_2_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_2_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_2_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_3_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_3_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_3_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_3_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_3_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_3_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_3_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_3_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_3_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_3_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_4_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_4_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_4_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_4_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_4_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_4_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_4_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_4_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_4_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_4_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_5_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_5_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_5_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_5_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_5_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_5_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_5_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_5_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_5_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_5_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_6_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_6_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_6_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_6_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_6_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_6_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_6_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_6_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_6_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_6_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_7_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_7_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_7_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_7_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_7_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_7_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_7_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_7_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_7_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_7_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_8_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_8_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_8_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_8_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_8_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_8_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_8_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_8_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_8_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_8_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_9_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_9_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_9_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_9_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_9_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_9_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_9_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_9_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_9_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_9_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_10_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_10_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_10_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_10_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_10_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_10_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_10_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_10_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_10_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_10_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_11_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_11_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_11_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_11_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_11_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_11_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_11_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_11_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_11_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_11_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_12_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_12_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_12_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_12_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_12_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_12_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_12_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_12_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_12_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_12_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_13_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_13_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_13_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_13_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_13_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_13_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_13_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_13_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_13_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_13_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_14_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_14_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_14_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_14_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_14_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_14_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_14_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_14_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_14_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_14_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_15_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_15_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_15_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_15_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_15_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_15_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_15_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_15_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_15_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_15_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_16_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_16_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_16_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_16_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_16_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_16_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_16_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_16_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_16_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_16_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_16_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_16_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_16_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_16_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_16_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_17_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_17_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_17_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_17_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_17_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_17_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_17_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_17_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_17_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_17_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_17_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_17_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_17_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_17_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_17_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_18_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_18_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_18_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_18_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_18_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_18_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_18_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_18_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_18_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_18_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_18_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_18_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_18_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_18_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_18_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_19_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_19_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_19_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_19_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_19_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_19_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_19_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_19_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_19_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_19_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_19_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_19_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_19_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_19_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_19_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_20_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_20_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_20_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_20_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_20_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_20_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_20_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_20_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_20_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_20_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_20_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_20_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_20_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_20_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_20_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_21_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_21_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_21_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_21_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_21_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_21_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_21_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_21_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_21_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_21_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_21_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_21_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_21_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_21_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_21_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_22_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_22_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_22_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_22_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_22_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_22_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_22_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_22_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_22_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_22_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_22_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_22_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_22_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_22_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_22_sqIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_23_valid; // @[StatusArray.scala 106:24]
  reg  statusArray_23_scheduled; // @[StatusArray.scala 106:24]
  reg  statusArray_23_blocked; // @[StatusArray.scala 106:24]
  reg [3:0] statusArray_23_credit; // @[StatusArray.scala 106:24]
  reg  statusArray_23_srcState_0; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_23_psrc_0; // @[StatusArray.scala 106:24]
  reg [1:0] statusArray_23_srcType_0; // @[StatusArray.scala 106:24]
  reg  statusArray_23_robIdx_flag; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_23_robIdx_value; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_23_waitForSqIdx_value; // @[StatusArray.scala 106:24]
  reg [6:0] statusArray_23_waitForRobIdx_value; // @[StatusArray.scala 106:24]
  reg  statusArray_23_waitForStoreData; // @[StatusArray.scala 106:24]
  reg  statusArray_23_strictWait; // @[StatusArray.scala 106:24]
  reg  statusArray_23_sqIdx_flag; // @[StatusArray.scala 106:24]
  reg [4:0] statusArray_23_sqIdx_value; // @[StatusArray.scala 106:24]
  wire [7:0] _isFlushed_flushItself_T_1 = {statusArray_0_robIdx_flag,statusArray_0_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag = statusArray_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare = statusArray_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _isFlushed_T_2 = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 36:20]
  wire  isFlushed = statusArray_0_valid & _isFlushed_T_2; // @[StatusArray.scala 173:34]
  wire  mask__3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire  mask__2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_109 = {mask__3,mask__2,mask__1,mask__0}; // @[StatusArray.scala 154:11]
  wire  _T_110 = |_T_109; // @[StatusArray.scala 154:18]
  wire  _T_116 = mask__0 & io_deqResp_0_bits_success | mask__2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_0 = isFlushed | _T_110 & _T_116; // @[StatusArray.scala 175:32]
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
  wire  mask_1_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire  mask_1_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_151 = {mask_1_3,mask_1_2,mask_1_1,mask_1_0}; // @[StatusArray.scala 154:11]
  wire  _T_152 = |_T_151; // @[StatusArray.scala 154:18]
  wire  _T_158 = mask_1_0 & io_deqResp_0_bits_success | mask_1_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_1 = isFlushed_1 | _T_152 & _T_158; // @[StatusArray.scala 175:32]
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
  wire  mask_2_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire  mask_2_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_193 = {mask_2_3,mask_2_2,mask_2_1,mask_2_0}; // @[StatusArray.scala 154:11]
  wire  _T_194 = |_T_193; // @[StatusArray.scala 154:18]
  wire  _T_200 = mask_2_0 & io_deqResp_0_bits_success | mask_2_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_2 = isFlushed_2 | _T_194 & _T_200; // @[StatusArray.scala 175:32]
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
  wire  mask_3_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire  mask_3_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_235 = {mask_3_3,mask_3_2,mask_3_1,mask_3_0}; // @[StatusArray.scala 154:11]
  wire  _T_236 = |_T_235; // @[StatusArray.scala 154:18]
  wire  _T_242 = mask_3_0 & io_deqResp_0_bits_success | mask_3_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_3 = isFlushed_3 | _T_236 & _T_242; // @[StatusArray.scala 175:32]
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
  wire  mask_4_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire  mask_4_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_277 = {mask_4_3,mask_4_2,mask_4_1,mask_4_0}; // @[StatusArray.scala 154:11]
  wire  _T_278 = |_T_277; // @[StatusArray.scala 154:18]
  wire  _T_284 = mask_4_0 & io_deqResp_0_bits_success | mask_4_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_4 = isFlushed_4 | _T_278 & _T_284; // @[StatusArray.scala 175:32]
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
  wire  mask_5_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire  mask_5_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_319 = {mask_5_3,mask_5_2,mask_5_1,mask_5_0}; // @[StatusArray.scala 154:11]
  wire  _T_320 = |_T_319; // @[StatusArray.scala 154:18]
  wire  _T_326 = mask_5_0 & io_deqResp_0_bits_success | mask_5_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_5 = isFlushed_5 | _T_320 & _T_326; // @[StatusArray.scala 175:32]
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
  wire  mask_6_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire  mask_6_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_361 = {mask_6_3,mask_6_2,mask_6_1,mask_6_0}; // @[StatusArray.scala 154:11]
  wire  _T_362 = |_T_361; // @[StatusArray.scala 154:18]
  wire  _T_368 = mask_6_0 & io_deqResp_0_bits_success | mask_6_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_6 = isFlushed_6 | _T_362 & _T_368; // @[StatusArray.scala 175:32]
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
  wire  mask_7_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire  mask_7_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_403 = {mask_7_3,mask_7_2,mask_7_1,mask_7_0}; // @[StatusArray.scala 154:11]
  wire  _T_404 = |_T_403; // @[StatusArray.scala 154:18]
  wire  _T_410 = mask_7_0 & io_deqResp_0_bits_success | mask_7_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_7 = isFlushed_7 | _T_404 & _T_410; // @[StatusArray.scala 175:32]
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
  wire  mask_8_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire  mask_8_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire  mask_8_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire  mask_8_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[8]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_445 = {mask_8_3,mask_8_2,mask_8_1,mask_8_0}; // @[StatusArray.scala 154:11]
  wire  _T_446 = |_T_445; // @[StatusArray.scala 154:18]
  wire  _T_452 = mask_8_0 & io_deqResp_0_bits_success | mask_8_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_8 = isFlushed_8 | _T_446 & _T_452; // @[StatusArray.scala 175:32]
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
  wire  mask_9_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire  mask_9_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire  mask_9_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire  mask_9_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[9]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_487 = {mask_9_3,mask_9_2,mask_9_1,mask_9_0}; // @[StatusArray.scala 154:11]
  wire  _T_488 = |_T_487; // @[StatusArray.scala 154:18]
  wire  _T_494 = mask_9_0 & io_deqResp_0_bits_success | mask_9_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_9 = isFlushed_9 | _T_488 & _T_494; // @[StatusArray.scala 175:32]
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
  wire  mask_10_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire  mask_10_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire  mask_10_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire  mask_10_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[10]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_529 = {mask_10_3,mask_10_2,mask_10_1,mask_10_0}; // @[StatusArray.scala 154:11]
  wire  _T_530 = |_T_529; // @[StatusArray.scala 154:18]
  wire  _T_536 = mask_10_0 & io_deqResp_0_bits_success | mask_10_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_10 = isFlushed_10 | _T_530 & _T_536; // @[StatusArray.scala 175:32]
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
  wire  mask_11_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire  mask_11_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire  mask_11_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire  mask_11_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[11]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_571 = {mask_11_3,mask_11_2,mask_11_1,mask_11_0}; // @[StatusArray.scala 154:11]
  wire  _T_572 = |_T_571; // @[StatusArray.scala 154:18]
  wire  _T_578 = mask_11_0 & io_deqResp_0_bits_success | mask_11_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_11 = isFlushed_11 | _T_572 & _T_578; // @[StatusArray.scala 175:32]
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
  wire  mask_12_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire  mask_12_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire  mask_12_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire  mask_12_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[12]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_613 = {mask_12_3,mask_12_2,mask_12_1,mask_12_0}; // @[StatusArray.scala 154:11]
  wire  _T_614 = |_T_613; // @[StatusArray.scala 154:18]
  wire  _T_620 = mask_12_0 & io_deqResp_0_bits_success | mask_12_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_12 = isFlushed_12 | _T_614 & _T_620; // @[StatusArray.scala 175:32]
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
  wire  mask_13_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire  mask_13_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire  mask_13_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire  mask_13_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[13]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_655 = {mask_13_3,mask_13_2,mask_13_1,mask_13_0}; // @[StatusArray.scala 154:11]
  wire  _T_656 = |_T_655; // @[StatusArray.scala 154:18]
  wire  _T_662 = mask_13_0 & io_deqResp_0_bits_success | mask_13_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_13 = isFlushed_13 | _T_656 & _T_662; // @[StatusArray.scala 175:32]
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
  wire  mask_14_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire  mask_14_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire  mask_14_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire  mask_14_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[14]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_697 = {mask_14_3,mask_14_2,mask_14_1,mask_14_0}; // @[StatusArray.scala 154:11]
  wire  _T_698 = |_T_697; // @[StatusArray.scala 154:18]
  wire  _T_704 = mask_14_0 & io_deqResp_0_bits_success | mask_14_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_14 = isFlushed_14 | _T_698 & _T_704; // @[StatusArray.scala 175:32]
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
  wire  mask_15_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire  mask_15_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire  mask_15_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire  mask_15_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[15]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_739 = {mask_15_3,mask_15_2,mask_15_1,mask_15_0}; // @[StatusArray.scala 154:11]
  wire  _T_740 = |_T_739; // @[StatusArray.scala 154:18]
  wire  _T_746 = mask_15_0 & io_deqResp_0_bits_success | mask_15_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_15 = isFlushed_15 | _T_740 & _T_746; // @[StatusArray.scala 175:32]
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
  wire  mask_16_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire  mask_16_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire  mask_16_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire  mask_16_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[16]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_781 = {mask_16_3,mask_16_2,mask_16_1,mask_16_0}; // @[StatusArray.scala 154:11]
  wire  _T_782 = |_T_781; // @[StatusArray.scala 154:18]
  wire  _T_788 = mask_16_0 & io_deqResp_0_bits_success | mask_16_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_16 = isFlushed_16 | _T_782 & _T_788; // @[StatusArray.scala 175:32]
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
  wire  mask_17_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire  mask_17_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire  mask_17_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire  mask_17_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[17]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_823 = {mask_17_3,mask_17_2,mask_17_1,mask_17_0}; // @[StatusArray.scala 154:11]
  wire  _T_824 = |_T_823; // @[StatusArray.scala 154:18]
  wire  _T_830 = mask_17_0 & io_deqResp_0_bits_success | mask_17_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_17 = isFlushed_17 | _T_824 & _T_830; // @[StatusArray.scala 175:32]
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
  wire  mask_18_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire  mask_18_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire  mask_18_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire  mask_18_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[18]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_865 = {mask_18_3,mask_18_2,mask_18_1,mask_18_0}; // @[StatusArray.scala 154:11]
  wire  _T_866 = |_T_865; // @[StatusArray.scala 154:18]
  wire  _T_872 = mask_18_0 & io_deqResp_0_bits_success | mask_18_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_18 = isFlushed_18 | _T_866 & _T_872; // @[StatusArray.scala 175:32]
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
  wire  mask_19_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire  mask_19_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire  mask_19_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire  mask_19_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[19]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_907 = {mask_19_3,mask_19_2,mask_19_1,mask_19_0}; // @[StatusArray.scala 154:11]
  wire  _T_908 = |_T_907; // @[StatusArray.scala 154:18]
  wire  _T_914 = mask_19_0 & io_deqResp_0_bits_success | mask_19_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_19 = isFlushed_19 | _T_908 & _T_914; // @[StatusArray.scala 175:32]
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
  wire  mask_20_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire  mask_20_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire  mask_20_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire  mask_20_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[20]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_949 = {mask_20_3,mask_20_2,mask_20_1,mask_20_0}; // @[StatusArray.scala 154:11]
  wire  _T_950 = |_T_949; // @[StatusArray.scala 154:18]
  wire  _T_956 = mask_20_0 & io_deqResp_0_bits_success | mask_20_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_20 = isFlushed_20 | _T_950 & _T_956; // @[StatusArray.scala 175:32]
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
  wire  mask_21_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire  mask_21_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire  mask_21_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire  mask_21_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[21]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_991 = {mask_21_3,mask_21_2,mask_21_1,mask_21_0}; // @[StatusArray.scala 154:11]
  wire  _T_992 = |_T_991; // @[StatusArray.scala 154:18]
  wire  _T_998 = mask_21_0 & io_deqResp_0_bits_success | mask_21_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_21 = isFlushed_21 | _T_992 & _T_998; // @[StatusArray.scala 175:32]
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
  wire  mask_22_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire  mask_22_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire  mask_22_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire  mask_22_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[22]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_1033 = {mask_22_3,mask_22_2,mask_22_1,mask_22_0}; // @[StatusArray.scala 154:11]
  wire  _T_1034 = |_T_1033; // @[StatusArray.scala 154:18]
  wire  _T_1040 = mask_22_0 & io_deqResp_0_bits_success | mask_22_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_22 = isFlushed_22 | _T_1034 & _T_1040; // @[StatusArray.scala 175:32]
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
  wire  mask_23_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire  mask_23_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire  mask_23_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire  mask_23_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[23]; // @[StatusArray.scala 144:58]
  wire [3:0] _T_1075 = {mask_23_3,mask_23_2,mask_23_1,mask_23_0}; // @[StatusArray.scala 154:11]
  wire  _T_1076 = |_T_1075; // @[StatusArray.scala 154:18]
  wire  _T_1082 = mask_23_0 & io_deqResp_0_bits_success | mask_23_2 & io_deqResp_2_bits_success; // @[Mux.scala 27:73]
  wire  flushedVec_23 = isFlushed_23 | _T_1076 & _T_1082; // @[StatusArray.scala 175:32]
  wire  updateVec_23_1 = io_update_1_enable & io_update_1_addr[23]; // @[StatusArray.scala 158:57]
  wire  updateVec_23_0 = io_update_0_enable & io_update_0_addr[23]; // @[StatusArray.scala 158:57]
  wire [1:0] _T_96 = {updateVec_23_1,updateVec_23_0}; // @[StatusArray.scala 161:16]
  wire  updateValid_23 = |_T_96; // @[StatusArray.scala 161:23]
  wire  realUpdateValid_23 = updateValid_23 & ~io_redirect_valid; // @[StatusArray.scala 176:42]
  wire  statusArrayNext_23_valid = ~flushedVec_23 & (realUpdateValid_23 | statusArray_23_valid); // @[StatusArray.scala 177:40]
  wire  _hasIssued_T_3 = io_issueGranted_1_valid & io_issueGranted_1_bits[0]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_1 = io_issueGranted_0_valid & io_issueGranted_0_bits[0]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_4 = {_hasIssued_T_3,_hasIssued_T_1}; // @[StatusArray.scala 183:83]
  wire  hasIssued = |_hasIssued_T_4; // @[StatusArray.scala 183:90]
  wire  deqNotGranted = _T_110 & ~_T_116; // @[StatusArray.scala 184:38]
  wire  noCredit = statusArray_0_valid & statusArray_0_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled = statusArray_0_scheduled & ~deqNotGranted & ~noCredit; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_0_scheduled = updateValid_0 ? 1'h0 : hasIssued | keepScheduled; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond = ~statusArrayNext_0_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_118 = mask__0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_119 = mask__1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_122 = _T_118 | _T_119; // @[Mux.scala 27:73]
  wire [2:0] _T_120 = mask__2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_123 = _T_122 | _T_120; // @[Mux.scala 27:73]
  wire [2:0] _T_121 = mask__3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_124 = _T_123 | _T_121; // @[Mux.scala 27:73]
  wire  updateVal_0_blocked = updateVec__0 & io_update_0_data_blocked | updateVec__1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_0_blocked_T = updateValid_0 ? updateVal_0_blocked : statusArray_0_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_15 = updateVec__0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_16 = updateVec__1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_waitForRobIdx_value = _updateStatus_T_15 | _updateStatus_T_16; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_waitForRobIdx_value = updateValid_0 ? updateVal_0_waitForRobIdx_value :
    statusArray_0_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_2 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_0_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_3 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_2; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_0_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_1 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_4 = {_storeAddrWaitforIsIssuing_T_3,_storeAddrWaitforIsIssuing_T_1}; // @[StatusArray.scala 202:11]
  wire  _GEN_25 = updateValid_0 ? 1'h0 : statusArray_0_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_0_waitForStoreData = deqNotGranted & _T_124 == 3'h2 | _GEN_25; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_0_strictWait = updateVec__0 & io_update_0_data_strictWait | updateVec__1 & io_update_1_data_strictWait
    ; // @[Mux.scala 27:73]
  wire  statusArrayNext_0_strictWait = updateValid_0 ? updateVal_0_strictWait : statusArray_0_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing = |_storeAddrWaitforIsIssuing_T_4 & ~statusArrayNext_0_waitForStoreData & ~
    statusArrayNext_0_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_0_blocked_T_1 = ~storeAddrWaitforIsIssuing; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_0_blocked_T_2 = _statusArrayNext_0_blocked_T & _statusArrayNext_0_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_125 = mask__0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_127 = mask__2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_130 = _T_125 | _T_127; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_0_waitForSqIdx_value = deqNotGranted & _T_124 == 3'h2 ? _T_130 :
    statusArray_0_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_2 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_0_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_3 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_2; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_0_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_1 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_4 = {_storeDataWaitforIsIssuing_T_3,_storeDataWaitforIsIssuing_T_1}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing = |_storeDataWaitforIsIssuing_T_4 & statusArrayNext_0_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_0_blocked_T_3 = ~storeDataWaitforIsIssuing; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_0_blocked_T_4 = _statusArrayNext_0_blocked_T_2 & _statusArrayNext_0_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_0_sqIdx_flag = updateVec__0 & io_update_0_data_sqIdx_flag | updateVec__1 & io_update_1_data_sqIdx_flag
    ; // @[Mux.scala 27:73]
  wire  statusArrayNext_0_sqIdx_flag = updateValid_0 ? updateVal_0_sqIdx_flag : statusArray_0_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag = statusArrayNext_0_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_3 = updateVec__0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_4 = updateVec__1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_0_sqIdx_value = _updateStatus_T_3 | _updateStatus_T_4; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_0_sqIdx_value = updateValid_0 ? updateVal_0_sqIdx_value : statusArray_0_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare = statusArrayNext_0_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased = blockNotReleased_differentFlag ^ blockNotReleased_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_0_blocked_T_5 = _statusArrayNext_0_blocked_T_4 & blockNotReleased; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_0_blocked = deqNotGranted & _T_124 == 3'h2 | _statusArrayNext_0_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond = ~statusArrayNext_0_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_36 = updateVec__0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_37 = updateVec__1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_psrc_0 = _updateStatus_T_36 | _updateStatus_T_37; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1314 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12 = _T_1314 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1298 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11 = _T_1298 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1282 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10 = _T_1282 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1266 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9 = _T_1266 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1250 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8 = _T_1250 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1234 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7 = _T_1234 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1218 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6 = _T_1218 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1202 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5 = _T_1202 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1186 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4 = _T_1186 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1170 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3 = _T_1170 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1154 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2 = _T_1154 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1138 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1 = _T_1138 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1122 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0 = _T_1122 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo = {stateMatchVec_5,stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,
    stateMatchVec_0}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T = {stateMatchVec_12,stateMatchVec_11,stateMatchVec_10,stateMatchVec_9,stateMatchVec_8,
    stateMatchVec_7,stateMatchVec_6,stateMatch_lo}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 137:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_1354 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_1354; // @[StatusArray.scala 241:50]
  wire  readyVecNext_0 = &statusArrayNext_0_srcState_0 & readyVecNext_scheduledCond & readyVecNext_blockedCond; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_8 = io_issueGranted_1_valid & io_issueGranted_1_bits[1]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_6 = io_issueGranted_0_valid & io_issueGranted_0_bits[1]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_9 = {_hasIssued_T_8,_hasIssued_T_6}; // @[StatusArray.scala 183:83]
  wire  hasIssued_1 = |_hasIssued_T_9; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_1 = _T_152 & ~_T_158; // @[StatusArray.scala 184:38]
  wire  noCredit_1 = statusArray_1_valid & statusArray_1_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_1 = statusArray_1_scheduled & ~deqNotGranted_1 & ~noCredit_1; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_1_scheduled = updateValid_1 ? 1'h0 : hasIssued_1 | keepScheduled_1; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_1 = ~statusArrayNext_1_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_160 = mask_1_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_161 = mask_1_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_164 = _T_160 | _T_161; // @[Mux.scala 27:73]
  wire [2:0] _T_162 = mask_1_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_165 = _T_164 | _T_162; // @[Mux.scala 27:73]
  wire [2:0] _T_163 = mask_1_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_166 = _T_165 | _T_163; // @[Mux.scala 27:73]
  wire  updateVal_1_blocked = updateVec_1_0 & io_update_0_data_blocked | updateVec_1_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_1_blocked_T = updateValid_1 ? updateVal_1_blocked : statusArray_1_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_72 = updateVec_1_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_73 = updateVec_1_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_waitForRobIdx_value = _updateStatus_T_72 | _updateStatus_T_73; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_waitForRobIdx_value = updateValid_1 ? updateVal_1_waitForRobIdx_value :
    statusArray_1_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_11 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_1_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_12 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_11; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_9 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_1_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_10 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_9; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_13 = {_storeAddrWaitforIsIssuing_T_12,_storeAddrWaitforIsIssuing_T_10}; // @[StatusArray.scala 202:11]
  wire  _GEN_33 = updateValid_1 ? 1'h0 : statusArray_1_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_1_waitForStoreData = deqNotGranted_1 & _T_166 == 3'h2 | _GEN_33; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_1_strictWait = updateVec_1_0 & io_update_0_data_strictWait | updateVec_1_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_1_strictWait = updateValid_1 ? updateVal_1_strictWait : statusArray_1_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_1 = |_storeAddrWaitforIsIssuing_T_13 & ~statusArrayNext_1_waitForStoreData & ~
    statusArrayNext_1_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_1_blocked_T_1 = ~storeAddrWaitforIsIssuing_1; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_1_blocked_T_2 = _statusArrayNext_1_blocked_T & _statusArrayNext_1_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_167 = mask_1_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_169 = mask_1_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_172 = _T_167 | _T_169; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_1_waitForSqIdx_value = deqNotGranted_1 & _T_166 == 3'h2 ? _T_172 :
    statusArray_1_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_8 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_1_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_9 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_8; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_6 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_1_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_7 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_6; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_10 = {_storeDataWaitforIsIssuing_T_9,_storeDataWaitforIsIssuing_T_7}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_1 = |_storeDataWaitforIsIssuing_T_10 & statusArrayNext_1_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_1_blocked_T_3 = ~storeDataWaitforIsIssuing_1; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_1_blocked_T_4 = _statusArrayNext_1_blocked_T_2 & _statusArrayNext_1_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_1_sqIdx_flag = updateVec_1_0 & io_update_0_data_sqIdx_flag | updateVec_1_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_1_sqIdx_flag = updateValid_1 ? updateVal_1_sqIdx_flag : statusArray_1_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_1 = statusArrayNext_1_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_60 = updateVec_1_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_61 = updateVec_1_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_1_sqIdx_value = _updateStatus_T_60 | _updateStatus_T_61; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_1_sqIdx_value = updateValid_1 ? updateVal_1_sqIdx_value : statusArray_1_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_1 = statusArrayNext_1_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_1 = blockNotReleased_differentFlag_1 ^ blockNotReleased_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_1_blocked_T_5 = _statusArrayNext_1_blocked_T_4 & blockNotReleased_1; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_1_blocked = deqNotGranted_1 & _T_166 == 3'h2 | _statusArrayNext_1_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_1 = ~statusArrayNext_1_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_93 = updateVec_1_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_94 = updateVec_1_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_psrc_0 = _updateStatus_T_93 | _updateStatus_T_94; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1567 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_1 = _T_1567 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1551 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_1 = _T_1551 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1535 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_1 = _T_1535 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1519 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_1 = _T_1519 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1503 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_1 = _T_1503 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1487 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_1 = _T_1487 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1471 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_1 = _T_1471 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1455 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_1 = _T_1455 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1439 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_1 = _T_1439 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1423 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_1 = _T_1423 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1407 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_1 = _T_1407 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1391 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_1 = _T_1391 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1375 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_1 = _T_1375 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_1 = {stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,
    stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_1 = {stateMatchVec_12_1,stateMatchVec_11_1,stateMatchVec_10_1,stateMatchVec_9_1,
    stateMatchVec_8_1,stateMatchVec_7_1,stateMatchVec_6_1,stateMatch_lo_1}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_1; // @[StatusArray.scala 137:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1607 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1607; // @[StatusArray.scala 241:50]
  wire  readyVecNext_1 = &statusArrayNext_1_srcState_0 & readyVecNext_scheduledCond_1 & readyVecNext_blockedCond_1; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_13 = io_issueGranted_1_valid & io_issueGranted_1_bits[2]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_11 = io_issueGranted_0_valid & io_issueGranted_0_bits[2]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_14 = {_hasIssued_T_13,_hasIssued_T_11}; // @[StatusArray.scala 183:83]
  wire  hasIssued_2 = |_hasIssued_T_14; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_2 = _T_194 & ~_T_200; // @[StatusArray.scala 184:38]
  wire  noCredit_2 = statusArray_2_valid & statusArray_2_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_2 = statusArray_2_scheduled & ~deqNotGranted_2 & ~noCredit_2; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_2_scheduled = updateValid_2 ? 1'h0 : hasIssued_2 | keepScheduled_2; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_2 = ~statusArrayNext_2_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_202 = mask_2_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_203 = mask_2_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_206 = _T_202 | _T_203; // @[Mux.scala 27:73]
  wire [2:0] _T_204 = mask_2_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_207 = _T_206 | _T_204; // @[Mux.scala 27:73]
  wire [2:0] _T_205 = mask_2_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_208 = _T_207 | _T_205; // @[Mux.scala 27:73]
  wire  updateVal_2_blocked = updateVec_2_0 & io_update_0_data_blocked | updateVec_2_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_2_blocked_T = updateValid_2 ? updateVal_2_blocked : statusArray_2_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_129 = updateVec_2_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_130 = updateVec_2_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_waitForRobIdx_value = _updateStatus_T_129 | _updateStatus_T_130; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_waitForRobIdx_value = updateValid_2 ? updateVal_2_waitForRobIdx_value :
    statusArray_2_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_20 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_2_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_21 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_20; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_18 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_2_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_19 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_18; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_22 = {_storeAddrWaitforIsIssuing_T_21,_storeAddrWaitforIsIssuing_T_19}; // @[StatusArray.scala 202:11]
  wire  _GEN_41 = updateValid_2 ? 1'h0 : statusArray_2_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_2_waitForStoreData = deqNotGranted_2 & _T_208 == 3'h2 | _GEN_41; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_2_strictWait = updateVec_2_0 & io_update_0_data_strictWait | updateVec_2_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_2_strictWait = updateValid_2 ? updateVal_2_strictWait : statusArray_2_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_2 = |_storeAddrWaitforIsIssuing_T_22 & ~statusArrayNext_2_waitForStoreData & ~
    statusArrayNext_2_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_2_blocked_T_1 = ~storeAddrWaitforIsIssuing_2; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_2_blocked_T_2 = _statusArrayNext_2_blocked_T & _statusArrayNext_2_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_209 = mask_2_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_211 = mask_2_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_214 = _T_209 | _T_211; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_2_waitForSqIdx_value = deqNotGranted_2 & _T_208 == 3'h2 ? _T_214 :
    statusArray_2_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_14 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_2_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_15 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_14; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_12 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_2_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_13 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_12; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_16 = {_storeDataWaitforIsIssuing_T_15,_storeDataWaitforIsIssuing_T_13}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_2 = |_storeDataWaitforIsIssuing_T_16 & statusArrayNext_2_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_2_blocked_T_3 = ~storeDataWaitforIsIssuing_2; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_2_blocked_T_4 = _statusArrayNext_2_blocked_T_2 & _statusArrayNext_2_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_2_sqIdx_flag = updateVec_2_0 & io_update_0_data_sqIdx_flag | updateVec_2_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_2_sqIdx_flag = updateValid_2 ? updateVal_2_sqIdx_flag : statusArray_2_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_2 = statusArrayNext_2_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_117 = updateVec_2_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_118 = updateVec_2_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_2_sqIdx_value = _updateStatus_T_117 | _updateStatus_T_118; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_2_sqIdx_value = updateValid_2 ? updateVal_2_sqIdx_value : statusArray_2_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_2 = statusArrayNext_2_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_2 = blockNotReleased_differentFlag_2 ^ blockNotReleased_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_2_blocked_T_5 = _statusArrayNext_2_blocked_T_4 & blockNotReleased_2; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_2_blocked = deqNotGranted_2 & _T_208 == 3'h2 | _statusArrayNext_2_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_2 = ~statusArrayNext_2_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_150 = updateVec_2_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_151 = updateVec_2_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_psrc_0 = _updateStatus_T_150 | _updateStatus_T_151; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_1820 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_2 = _T_1820 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1804 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_2 = _T_1804 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1788 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_2 = _T_1788 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1772 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_2 = _T_1772 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1756 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_2 = _T_1756 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1740 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_2 = _T_1740 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1724 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_2 = _T_1724 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1708 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_2 = _T_1708 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1692 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_2 = _T_1692 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1676 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_2 = _T_1676 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1660 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_2 = _T_1660 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1644 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_2 = _T_1644 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1628 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_2 = _T_1628 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_2 = {stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,
    stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_2 = {stateMatchVec_12_2,stateMatchVec_11_2,stateMatchVec_10_2,stateMatchVec_9_2,
    stateMatchVec_8_2,stateMatchVec_7_2,stateMatchVec_6_2,stateMatch_lo_2}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_2; // @[StatusArray.scala 137:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1860 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1860; // @[StatusArray.scala 241:50]
  wire  readyVecNext_2 = &statusArrayNext_2_srcState_0 & readyVecNext_scheduledCond_2 & readyVecNext_blockedCond_2; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_18 = io_issueGranted_1_valid & io_issueGranted_1_bits[3]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_16 = io_issueGranted_0_valid & io_issueGranted_0_bits[3]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_19 = {_hasIssued_T_18,_hasIssued_T_16}; // @[StatusArray.scala 183:83]
  wire  hasIssued_3 = |_hasIssued_T_19; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_3 = _T_236 & ~_T_242; // @[StatusArray.scala 184:38]
  wire  noCredit_3 = statusArray_3_valid & statusArray_3_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_3 = statusArray_3_scheduled & ~deqNotGranted_3 & ~noCredit_3; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_3_scheduled = updateValid_3 ? 1'h0 : hasIssued_3 | keepScheduled_3; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_3 = ~statusArrayNext_3_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_244 = mask_3_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_245 = mask_3_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_248 = _T_244 | _T_245; // @[Mux.scala 27:73]
  wire [2:0] _T_246 = mask_3_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_249 = _T_248 | _T_246; // @[Mux.scala 27:73]
  wire [2:0] _T_247 = mask_3_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_250 = _T_249 | _T_247; // @[Mux.scala 27:73]
  wire  updateVal_3_blocked = updateVec_3_0 & io_update_0_data_blocked | updateVec_3_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_3_blocked_T = updateValid_3 ? updateVal_3_blocked : statusArray_3_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_186 = updateVec_3_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_187 = updateVec_3_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_waitForRobIdx_value = _updateStatus_T_186 | _updateStatus_T_187; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_waitForRobIdx_value = updateValid_3 ? updateVal_3_waitForRobIdx_value :
    statusArray_3_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_29 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_3_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_30 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_29; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_27 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_3_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_28 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_27; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_31 = {_storeAddrWaitforIsIssuing_T_30,_storeAddrWaitforIsIssuing_T_28}; // @[StatusArray.scala 202:11]
  wire  _GEN_49 = updateValid_3 ? 1'h0 : statusArray_3_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_3_waitForStoreData = deqNotGranted_3 & _T_250 == 3'h2 | _GEN_49; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_3_strictWait = updateVec_3_0 & io_update_0_data_strictWait | updateVec_3_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_3_strictWait = updateValid_3 ? updateVal_3_strictWait : statusArray_3_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_3 = |_storeAddrWaitforIsIssuing_T_31 & ~statusArrayNext_3_waitForStoreData & ~
    statusArrayNext_3_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_3_blocked_T_1 = ~storeAddrWaitforIsIssuing_3; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_3_blocked_T_2 = _statusArrayNext_3_blocked_T & _statusArrayNext_3_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_251 = mask_3_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_253 = mask_3_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_256 = _T_251 | _T_253; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_3_waitForSqIdx_value = deqNotGranted_3 & _T_250 == 3'h2 ? _T_256 :
    statusArray_3_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_20 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_3_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_21 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_20; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_18 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_3_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_19 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_18; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_22 = {_storeDataWaitforIsIssuing_T_21,_storeDataWaitforIsIssuing_T_19}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_3 = |_storeDataWaitforIsIssuing_T_22 & statusArrayNext_3_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_3_blocked_T_3 = ~storeDataWaitforIsIssuing_3; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_3_blocked_T_4 = _statusArrayNext_3_blocked_T_2 & _statusArrayNext_3_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_3_sqIdx_flag = updateVec_3_0 & io_update_0_data_sqIdx_flag | updateVec_3_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_3_sqIdx_flag = updateValid_3 ? updateVal_3_sqIdx_flag : statusArray_3_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_3 = statusArrayNext_3_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_174 = updateVec_3_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_175 = updateVec_3_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_3_sqIdx_value = _updateStatus_T_174 | _updateStatus_T_175; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_3_sqIdx_value = updateValid_3 ? updateVal_3_sqIdx_value : statusArray_3_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_3 = statusArrayNext_3_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_3 = blockNotReleased_differentFlag_3 ^ blockNotReleased_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_3_blocked_T_5 = _statusArrayNext_3_blocked_T_4 & blockNotReleased_3; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_3_blocked = deqNotGranted_3 & _T_250 == 3'h2 | _statusArrayNext_3_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_3 = ~statusArrayNext_3_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_207 = updateVec_3_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_208 = updateVec_3_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_psrc_0 = _updateStatus_T_207 | _updateStatus_T_208; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2073 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_3 = _T_2073 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2057 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_3 = _T_2057 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2041 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_3 = _T_2041 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2025 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_3 = _T_2025 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2009 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_3 = _T_2009 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1993 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_3 = _T_1993 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1977 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_3 = _T_1977 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1961 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_3 = _T_1961 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1945 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_3 = _T_1945 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1929 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_3 = _T_1929 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1913 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_3 = _T_1913 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1897 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_3 = _T_1897 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_1881 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_3 = _T_1881 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_3 = {stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,
    stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_3 = {stateMatchVec_12_3,stateMatchVec_11_3,stateMatchVec_10_3,stateMatchVec_9_3,
    stateMatchVec_8_3,stateMatchVec_7_3,stateMatchVec_6_3,stateMatch_lo_3}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_3; // @[StatusArray.scala 137:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2113 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_2113; // @[StatusArray.scala 241:50]
  wire  readyVecNext_3 = &statusArrayNext_3_srcState_0 & readyVecNext_scheduledCond_3 & readyVecNext_blockedCond_3; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_23 = io_issueGranted_1_valid & io_issueGranted_1_bits[4]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_21 = io_issueGranted_0_valid & io_issueGranted_0_bits[4]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_24 = {_hasIssued_T_23,_hasIssued_T_21}; // @[StatusArray.scala 183:83]
  wire  hasIssued_4 = |_hasIssued_T_24; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_4 = _T_278 & ~_T_284; // @[StatusArray.scala 184:38]
  wire  noCredit_4 = statusArray_4_valid & statusArray_4_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_4 = statusArray_4_scheduled & ~deqNotGranted_4 & ~noCredit_4; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_4_scheduled = updateValid_4 ? 1'h0 : hasIssued_4 | keepScheduled_4; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_4 = ~statusArrayNext_4_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_286 = mask_4_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_287 = mask_4_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_290 = _T_286 | _T_287; // @[Mux.scala 27:73]
  wire [2:0] _T_288 = mask_4_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_291 = _T_290 | _T_288; // @[Mux.scala 27:73]
  wire [2:0] _T_289 = mask_4_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_292 = _T_291 | _T_289; // @[Mux.scala 27:73]
  wire  updateVal_4_blocked = updateVec_4_0 & io_update_0_data_blocked | updateVec_4_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_4_blocked_T = updateValid_4 ? updateVal_4_blocked : statusArray_4_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_243 = updateVec_4_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_244 = updateVec_4_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_waitForRobIdx_value = _updateStatus_T_243 | _updateStatus_T_244; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_waitForRobIdx_value = updateValid_4 ? updateVal_4_waitForRobIdx_value :
    statusArray_4_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_38 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_4_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_39 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_38; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_36 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_4_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_37 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_36; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_40 = {_storeAddrWaitforIsIssuing_T_39,_storeAddrWaitforIsIssuing_T_37}; // @[StatusArray.scala 202:11]
  wire  _GEN_57 = updateValid_4 ? 1'h0 : statusArray_4_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_4_waitForStoreData = deqNotGranted_4 & _T_292 == 3'h2 | _GEN_57; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_4_strictWait = updateVec_4_0 & io_update_0_data_strictWait | updateVec_4_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_4_strictWait = updateValid_4 ? updateVal_4_strictWait : statusArray_4_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_4 = |_storeAddrWaitforIsIssuing_T_40 & ~statusArrayNext_4_waitForStoreData & ~
    statusArrayNext_4_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_4_blocked_T_1 = ~storeAddrWaitforIsIssuing_4; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_4_blocked_T_2 = _statusArrayNext_4_blocked_T & _statusArrayNext_4_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_293 = mask_4_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_295 = mask_4_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_298 = _T_293 | _T_295; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_4_waitForSqIdx_value = deqNotGranted_4 & _T_292 == 3'h2 ? _T_298 :
    statusArray_4_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_26 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_4_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_27 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_26; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_24 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_4_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_25 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_24; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_28 = {_storeDataWaitforIsIssuing_T_27,_storeDataWaitforIsIssuing_T_25}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_4 = |_storeDataWaitforIsIssuing_T_28 & statusArrayNext_4_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_4_blocked_T_3 = ~storeDataWaitforIsIssuing_4; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_4_blocked_T_4 = _statusArrayNext_4_blocked_T_2 & _statusArrayNext_4_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_4_sqIdx_flag = updateVec_4_0 & io_update_0_data_sqIdx_flag | updateVec_4_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_4_sqIdx_flag = updateValid_4 ? updateVal_4_sqIdx_flag : statusArray_4_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_4 = statusArrayNext_4_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_231 = updateVec_4_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_232 = updateVec_4_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_4_sqIdx_value = _updateStatus_T_231 | _updateStatus_T_232; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_4_sqIdx_value = updateValid_4 ? updateVal_4_sqIdx_value : statusArray_4_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_4 = statusArrayNext_4_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_4 = blockNotReleased_differentFlag_4 ^ blockNotReleased_compare_4; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_4_blocked_T_5 = _statusArrayNext_4_blocked_T_4 & blockNotReleased_4; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_4_blocked = deqNotGranted_4 & _T_292 == 3'h2 | _statusArrayNext_4_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_4 = ~statusArrayNext_4_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_264 = updateVec_4_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_265 = updateVec_4_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_psrc_0 = _updateStatus_T_264 | _updateStatus_T_265; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2326 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_4 = _T_2326 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2310 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_4 = _T_2310 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2294 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_4 = _T_2294 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2278 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_4 = _T_2278 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2262 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_4 = _T_2262 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2246 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_4 = _T_2246 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2230 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_4 = _T_2230 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2214 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_4 = _T_2214 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2198 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_4 = _T_2198 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2182 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_4 = _T_2182 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2166 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_4 = _T_2166 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2150 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_4 = _T_2150 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2134 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_4 = _T_2134 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_4 = {stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,
    stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_4 = {stateMatchVec_12_4,stateMatchVec_11_4,stateMatchVec_10_4,stateMatchVec_9_4,
    stateMatchVec_8_4,stateMatchVec_7_4,stateMatchVec_6_4,stateMatch_lo_4}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_4; // @[StatusArray.scala 137:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2366 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_2366; // @[StatusArray.scala 241:50]
  wire  readyVecNext_4 = &statusArrayNext_4_srcState_0 & readyVecNext_scheduledCond_4 & readyVecNext_blockedCond_4; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_28 = io_issueGranted_1_valid & io_issueGranted_1_bits[5]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_26 = io_issueGranted_0_valid & io_issueGranted_0_bits[5]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_29 = {_hasIssued_T_28,_hasIssued_T_26}; // @[StatusArray.scala 183:83]
  wire  hasIssued_5 = |_hasIssued_T_29; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_5 = _T_320 & ~_T_326; // @[StatusArray.scala 184:38]
  wire  noCredit_5 = statusArray_5_valid & statusArray_5_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_5 = statusArray_5_scheduled & ~deqNotGranted_5 & ~noCredit_5; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_5_scheduled = updateValid_5 ? 1'h0 : hasIssued_5 | keepScheduled_5; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_5 = ~statusArrayNext_5_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_328 = mask_5_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_329 = mask_5_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_332 = _T_328 | _T_329; // @[Mux.scala 27:73]
  wire [2:0] _T_330 = mask_5_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_333 = _T_332 | _T_330; // @[Mux.scala 27:73]
  wire [2:0] _T_331 = mask_5_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_334 = _T_333 | _T_331; // @[Mux.scala 27:73]
  wire  updateVal_5_blocked = updateVec_5_0 & io_update_0_data_blocked | updateVec_5_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_5_blocked_T = updateValid_5 ? updateVal_5_blocked : statusArray_5_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_300 = updateVec_5_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_301 = updateVec_5_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_waitForRobIdx_value = _updateStatus_T_300 | _updateStatus_T_301; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_waitForRobIdx_value = updateValid_5 ? updateVal_5_waitForRobIdx_value :
    statusArray_5_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_47 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_5_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_48 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_47; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_45 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_5_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_46 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_45; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_49 = {_storeAddrWaitforIsIssuing_T_48,_storeAddrWaitforIsIssuing_T_46}; // @[StatusArray.scala 202:11]
  wire  _GEN_65 = updateValid_5 ? 1'h0 : statusArray_5_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_5_waitForStoreData = deqNotGranted_5 & _T_334 == 3'h2 | _GEN_65; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_5_strictWait = updateVec_5_0 & io_update_0_data_strictWait | updateVec_5_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_5_strictWait = updateValid_5 ? updateVal_5_strictWait : statusArray_5_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_5 = |_storeAddrWaitforIsIssuing_T_49 & ~statusArrayNext_5_waitForStoreData & ~
    statusArrayNext_5_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_5_blocked_T_1 = ~storeAddrWaitforIsIssuing_5; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_5_blocked_T_2 = _statusArrayNext_5_blocked_T & _statusArrayNext_5_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_335 = mask_5_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_337 = mask_5_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_340 = _T_335 | _T_337; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_5_waitForSqIdx_value = deqNotGranted_5 & _T_334 == 3'h2 ? _T_340 :
    statusArray_5_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_32 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_5_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_33 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_32; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_30 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_5_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_31 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_30; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_34 = {_storeDataWaitforIsIssuing_T_33,_storeDataWaitforIsIssuing_T_31}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_5 = |_storeDataWaitforIsIssuing_T_34 & statusArrayNext_5_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_5_blocked_T_3 = ~storeDataWaitforIsIssuing_5; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_5_blocked_T_4 = _statusArrayNext_5_blocked_T_2 & _statusArrayNext_5_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_5_sqIdx_flag = updateVec_5_0 & io_update_0_data_sqIdx_flag | updateVec_5_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_5_sqIdx_flag = updateValid_5 ? updateVal_5_sqIdx_flag : statusArray_5_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_5 = statusArrayNext_5_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_288 = updateVec_5_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_289 = updateVec_5_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_5_sqIdx_value = _updateStatus_T_288 | _updateStatus_T_289; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_5_sqIdx_value = updateValid_5 ? updateVal_5_sqIdx_value : statusArray_5_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_5 = statusArrayNext_5_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_5 = blockNotReleased_differentFlag_5 ^ blockNotReleased_compare_5; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_5_blocked_T_5 = _statusArrayNext_5_blocked_T_4 & blockNotReleased_5; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_5_blocked = deqNotGranted_5 & _T_334 == 3'h2 | _statusArrayNext_5_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_5 = ~statusArrayNext_5_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_321 = updateVec_5_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_322 = updateVec_5_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_psrc_0 = _updateStatus_T_321 | _updateStatus_T_322; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2579 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_5 = _T_2579 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2563 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_5 = _T_2563 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2547 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_5 = _T_2547 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2531 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_5 = _T_2531 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2515 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_5 = _T_2515 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2499 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_5 = _T_2499 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2483 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_5 = _T_2483 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2467 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_5 = _T_2467 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2451 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_5 = _T_2451 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2435 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_5 = _T_2435 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2419 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_5 = _T_2419 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2403 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_5 = _T_2403 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2387 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_5 = _T_2387 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_5 = {stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,
    stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_5 = {stateMatchVec_12_5,stateMatchVec_11_5,stateMatchVec_10_5,stateMatchVec_9_5,
    stateMatchVec_8_5,stateMatchVec_7_5,stateMatchVec_6_5,stateMatch_lo_5}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_5; // @[StatusArray.scala 137:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2619 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_2619; // @[StatusArray.scala 241:50]
  wire  readyVecNext_5 = &statusArrayNext_5_srcState_0 & readyVecNext_scheduledCond_5 & readyVecNext_blockedCond_5; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_33 = io_issueGranted_1_valid & io_issueGranted_1_bits[6]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_31 = io_issueGranted_0_valid & io_issueGranted_0_bits[6]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_34 = {_hasIssued_T_33,_hasIssued_T_31}; // @[StatusArray.scala 183:83]
  wire  hasIssued_6 = |_hasIssued_T_34; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_6 = _T_362 & ~_T_368; // @[StatusArray.scala 184:38]
  wire  noCredit_6 = statusArray_6_valid & statusArray_6_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_6 = statusArray_6_scheduled & ~deqNotGranted_6 & ~noCredit_6; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_6_scheduled = updateValid_6 ? 1'h0 : hasIssued_6 | keepScheduled_6; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_6 = ~statusArrayNext_6_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_370 = mask_6_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_371 = mask_6_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_374 = _T_370 | _T_371; // @[Mux.scala 27:73]
  wire [2:0] _T_372 = mask_6_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_375 = _T_374 | _T_372; // @[Mux.scala 27:73]
  wire [2:0] _T_373 = mask_6_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_376 = _T_375 | _T_373; // @[Mux.scala 27:73]
  wire  updateVal_6_blocked = updateVec_6_0 & io_update_0_data_blocked | updateVec_6_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_6_blocked_T = updateValid_6 ? updateVal_6_blocked : statusArray_6_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_357 = updateVec_6_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_358 = updateVec_6_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_waitForRobIdx_value = _updateStatus_T_357 | _updateStatus_T_358; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_waitForRobIdx_value = updateValid_6 ? updateVal_6_waitForRobIdx_value :
    statusArray_6_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_56 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_6_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_57 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_56; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_54 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_6_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_55 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_54; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_58 = {_storeAddrWaitforIsIssuing_T_57,_storeAddrWaitforIsIssuing_T_55}; // @[StatusArray.scala 202:11]
  wire  _GEN_73 = updateValid_6 ? 1'h0 : statusArray_6_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_6_waitForStoreData = deqNotGranted_6 & _T_376 == 3'h2 | _GEN_73; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_6_strictWait = updateVec_6_0 & io_update_0_data_strictWait | updateVec_6_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_6_strictWait = updateValid_6 ? updateVal_6_strictWait : statusArray_6_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_6 = |_storeAddrWaitforIsIssuing_T_58 & ~statusArrayNext_6_waitForStoreData & ~
    statusArrayNext_6_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_6_blocked_T_1 = ~storeAddrWaitforIsIssuing_6; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_6_blocked_T_2 = _statusArrayNext_6_blocked_T & _statusArrayNext_6_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_377 = mask_6_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_379 = mask_6_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_382 = _T_377 | _T_379; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_6_waitForSqIdx_value = deqNotGranted_6 & _T_376 == 3'h2 ? _T_382 :
    statusArray_6_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_38 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_6_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_39 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_38; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_36 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_6_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_37 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_36; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_40 = {_storeDataWaitforIsIssuing_T_39,_storeDataWaitforIsIssuing_T_37}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_6 = |_storeDataWaitforIsIssuing_T_40 & statusArrayNext_6_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_6_blocked_T_3 = ~storeDataWaitforIsIssuing_6; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_6_blocked_T_4 = _statusArrayNext_6_blocked_T_2 & _statusArrayNext_6_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_6_sqIdx_flag = updateVec_6_0 & io_update_0_data_sqIdx_flag | updateVec_6_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_6_sqIdx_flag = updateValid_6 ? updateVal_6_sqIdx_flag : statusArray_6_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_6 = statusArrayNext_6_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_345 = updateVec_6_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_346 = updateVec_6_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_6_sqIdx_value = _updateStatus_T_345 | _updateStatus_T_346; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_6_sqIdx_value = updateValid_6 ? updateVal_6_sqIdx_value : statusArray_6_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_6 = statusArrayNext_6_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_6 = blockNotReleased_differentFlag_6 ^ blockNotReleased_compare_6; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_6_blocked_T_5 = _statusArrayNext_6_blocked_T_4 & blockNotReleased_6; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_6_blocked = deqNotGranted_6 & _T_376 == 3'h2 | _statusArrayNext_6_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_6 = ~statusArrayNext_6_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_378 = updateVec_6_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_379 = updateVec_6_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_psrc_0 = _updateStatus_T_378 | _updateStatus_T_379; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_2832 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_6 = _T_2832 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2816 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_6 = _T_2816 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2800 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_6 = _T_2800 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2784 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_6 = _T_2784 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2768 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_6 = _T_2768 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2752 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_6 = _T_2752 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2736 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_6 = _T_2736 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2720 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_6 = _T_2720 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2704 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_6 = _T_2704 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2688 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_6 = _T_2688 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2672 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_6 = _T_2672 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2656 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_6 = _T_2656 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2640 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_6 = _T_2640 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_6 = {stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,
    stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_6 = {stateMatchVec_12_6,stateMatchVec_11_6,stateMatchVec_10_6,stateMatchVec_9_6,
    stateMatchVec_8_6,stateMatchVec_7_6,stateMatchVec_6_6,stateMatch_lo_6}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_6; // @[StatusArray.scala 137:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2872 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_2872; // @[StatusArray.scala 241:50]
  wire  readyVecNext_6 = &statusArrayNext_6_srcState_0 & readyVecNext_scheduledCond_6 & readyVecNext_blockedCond_6; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_38 = io_issueGranted_1_valid & io_issueGranted_1_bits[7]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_36 = io_issueGranted_0_valid & io_issueGranted_0_bits[7]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_39 = {_hasIssued_T_38,_hasIssued_T_36}; // @[StatusArray.scala 183:83]
  wire  hasIssued_7 = |_hasIssued_T_39; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_7 = _T_404 & ~_T_410; // @[StatusArray.scala 184:38]
  wire  noCredit_7 = statusArray_7_valid & statusArray_7_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_7 = statusArray_7_scheduled & ~deqNotGranted_7 & ~noCredit_7; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_7_scheduled = updateValid_7 ? 1'h0 : hasIssued_7 | keepScheduled_7; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_7 = ~statusArrayNext_7_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_412 = mask_7_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_413 = mask_7_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_416 = _T_412 | _T_413; // @[Mux.scala 27:73]
  wire [2:0] _T_414 = mask_7_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_417 = _T_416 | _T_414; // @[Mux.scala 27:73]
  wire [2:0] _T_415 = mask_7_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_418 = _T_417 | _T_415; // @[Mux.scala 27:73]
  wire  updateVal_7_blocked = updateVec_7_0 & io_update_0_data_blocked | updateVec_7_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_7_blocked_T = updateValid_7 ? updateVal_7_blocked : statusArray_7_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_414 = updateVec_7_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_415 = updateVec_7_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_waitForRobIdx_value = _updateStatus_T_414 | _updateStatus_T_415; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_waitForRobIdx_value = updateValid_7 ? updateVal_7_waitForRobIdx_value :
    statusArray_7_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_65 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_7_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_66 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_65; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_63 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_7_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_64 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_63; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_67 = {_storeAddrWaitforIsIssuing_T_66,_storeAddrWaitforIsIssuing_T_64}; // @[StatusArray.scala 202:11]
  wire  _GEN_81 = updateValid_7 ? 1'h0 : statusArray_7_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_7_waitForStoreData = deqNotGranted_7 & _T_418 == 3'h2 | _GEN_81; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_7_strictWait = updateVec_7_0 & io_update_0_data_strictWait | updateVec_7_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_7_strictWait = updateValid_7 ? updateVal_7_strictWait : statusArray_7_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_7 = |_storeAddrWaitforIsIssuing_T_67 & ~statusArrayNext_7_waitForStoreData & ~
    statusArrayNext_7_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_7_blocked_T_1 = ~storeAddrWaitforIsIssuing_7; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_7_blocked_T_2 = _statusArrayNext_7_blocked_T & _statusArrayNext_7_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_419 = mask_7_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_421 = mask_7_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_424 = _T_419 | _T_421; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_7_waitForSqIdx_value = deqNotGranted_7 & _T_418 == 3'h2 ? _T_424 :
    statusArray_7_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_44 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_7_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_45 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_44; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_42 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_7_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_43 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_42; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_46 = {_storeDataWaitforIsIssuing_T_45,_storeDataWaitforIsIssuing_T_43}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_7 = |_storeDataWaitforIsIssuing_T_46 & statusArrayNext_7_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_7_blocked_T_3 = ~storeDataWaitforIsIssuing_7; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_7_blocked_T_4 = _statusArrayNext_7_blocked_T_2 & _statusArrayNext_7_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_7_sqIdx_flag = updateVec_7_0 & io_update_0_data_sqIdx_flag | updateVec_7_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_7_sqIdx_flag = updateValid_7 ? updateVal_7_sqIdx_flag : statusArray_7_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_7 = statusArrayNext_7_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_402 = updateVec_7_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_403 = updateVec_7_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_7_sqIdx_value = _updateStatus_T_402 | _updateStatus_T_403; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_7_sqIdx_value = updateValid_7 ? updateVal_7_sqIdx_value : statusArray_7_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_7 = statusArrayNext_7_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_7 = blockNotReleased_differentFlag_7 ^ blockNotReleased_compare_7; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_7_blocked_T_5 = _statusArrayNext_7_blocked_T_4 & blockNotReleased_7; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_7_blocked = deqNotGranted_7 & _T_418 == 3'h2 | _statusArrayNext_7_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_7 = ~statusArrayNext_7_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_435 = updateVec_7_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_436 = updateVec_7_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_psrc_0 = _updateStatus_T_435 | _updateStatus_T_436; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3085 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_7 = _T_3085 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3069 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_7 = _T_3069 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3053 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_7 = _T_3053 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3037 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_7 = _T_3037 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3021 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_7 = _T_3021 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3005 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_7 = _T_3005 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2989 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_7 = _T_2989 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2973 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_7 = _T_2973 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2957 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_7 = _T_2957 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2941 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_7 = _T_2941 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2925 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_7 = _T_2925 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2909 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_7 = _T_2909 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_2893 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_7 = _T_2893 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_7 = {stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,
    stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_7 = {stateMatchVec_12_7,stateMatchVec_11_7,stateMatchVec_10_7,stateMatchVec_9_7,
    stateMatchVec_8_7,stateMatchVec_7_7,stateMatchVec_6_7,stateMatch_lo_7}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_7; // @[StatusArray.scala 137:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3125 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_3125; // @[StatusArray.scala 241:50]
  wire  readyVecNext_7 = &statusArrayNext_7_srcState_0 & readyVecNext_scheduledCond_7 & readyVecNext_blockedCond_7; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_43 = io_issueGranted_1_valid & io_issueGranted_1_bits[8]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_41 = io_issueGranted_0_valid & io_issueGranted_0_bits[8]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_44 = {_hasIssued_T_43,_hasIssued_T_41}; // @[StatusArray.scala 183:83]
  wire  hasIssued_8 = |_hasIssued_T_44; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_8 = _T_446 & ~_T_452; // @[StatusArray.scala 184:38]
  wire  noCredit_8 = statusArray_8_valid & statusArray_8_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_8 = statusArray_8_scheduled & ~deqNotGranted_8 & ~noCredit_8; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_8_scheduled = updateValid_8 ? 1'h0 : hasIssued_8 | keepScheduled_8; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_8 = ~statusArrayNext_8_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_454 = mask_8_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_455 = mask_8_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_458 = _T_454 | _T_455; // @[Mux.scala 27:73]
  wire [2:0] _T_456 = mask_8_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_459 = _T_458 | _T_456; // @[Mux.scala 27:73]
  wire [2:0] _T_457 = mask_8_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_460 = _T_459 | _T_457; // @[Mux.scala 27:73]
  wire  updateVal_8_blocked = updateVec_8_0 & io_update_0_data_blocked | updateVec_8_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_8_blocked_T = updateValid_8 ? updateVal_8_blocked : statusArray_8_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_471 = updateVec_8_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_472 = updateVec_8_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_waitForRobIdx_value = _updateStatus_T_471 | _updateStatus_T_472; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_waitForRobIdx_value = updateValid_8 ? updateVal_8_waitForRobIdx_value :
    statusArray_8_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_74 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_8_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_75 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_74; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_72 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_8_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_73 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_72; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_76 = {_storeAddrWaitforIsIssuing_T_75,_storeAddrWaitforIsIssuing_T_73}; // @[StatusArray.scala 202:11]
  wire  _GEN_89 = updateValid_8 ? 1'h0 : statusArray_8_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_8_waitForStoreData = deqNotGranted_8 & _T_460 == 3'h2 | _GEN_89; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_8_strictWait = updateVec_8_0 & io_update_0_data_strictWait | updateVec_8_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_8_strictWait = updateValid_8 ? updateVal_8_strictWait : statusArray_8_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_8 = |_storeAddrWaitforIsIssuing_T_76 & ~statusArrayNext_8_waitForStoreData & ~
    statusArrayNext_8_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_8_blocked_T_1 = ~storeAddrWaitforIsIssuing_8; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_8_blocked_T_2 = _statusArrayNext_8_blocked_T & _statusArrayNext_8_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_461 = mask_8_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_463 = mask_8_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_466 = _T_461 | _T_463; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_8_waitForSqIdx_value = deqNotGranted_8 & _T_460 == 3'h2 ? _T_466 :
    statusArray_8_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_50 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_8_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_51 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_50; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_48 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_8_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_49 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_48; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_52 = {_storeDataWaitforIsIssuing_T_51,_storeDataWaitforIsIssuing_T_49}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_8 = |_storeDataWaitforIsIssuing_T_52 & statusArrayNext_8_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_8_blocked_T_3 = ~storeDataWaitforIsIssuing_8; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_8_blocked_T_4 = _statusArrayNext_8_blocked_T_2 & _statusArrayNext_8_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_8_sqIdx_flag = updateVec_8_0 & io_update_0_data_sqIdx_flag | updateVec_8_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_8_sqIdx_flag = updateValid_8 ? updateVal_8_sqIdx_flag : statusArray_8_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_8 = statusArrayNext_8_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_459 = updateVec_8_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_460 = updateVec_8_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_8_sqIdx_value = _updateStatus_T_459 | _updateStatus_T_460; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_8_sqIdx_value = updateValid_8 ? updateVal_8_sqIdx_value : statusArray_8_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_8 = statusArrayNext_8_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_8 = blockNotReleased_differentFlag_8 ^ blockNotReleased_compare_8; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_8_blocked_T_5 = _statusArrayNext_8_blocked_T_4 & blockNotReleased_8; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_8_blocked = deqNotGranted_8 & _T_460 == 3'h2 | _statusArrayNext_8_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_8 = ~statusArrayNext_8_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_492 = updateVec_8_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_493 = updateVec_8_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_psrc_0 = _updateStatus_T_492 | _updateStatus_T_493; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3338 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_8 = _T_3338 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3322 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_8 = _T_3322 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3306 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_8 = _T_3306 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3290 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_8 = _T_3290 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3274 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_8 = _T_3274 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3258 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_8 = _T_3258 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3242 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_8 = _T_3242 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3226 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_8 = _T_3226 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3210 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_8 = _T_3210 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3194 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_8 = _T_3194 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3178 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_8 = _T_3178 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3162 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_8 = _T_3162 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3146 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_8 = _T_3146 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_8 = {stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,
    stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_8 = {stateMatchVec_12_8,stateMatchVec_11_8,stateMatchVec_10_8,stateMatchVec_9_8,
    stateMatchVec_8_8,stateMatchVec_7_8,stateMatchVec_6_8,stateMatch_lo_8}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_8; // @[StatusArray.scala 137:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3378 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_3378; // @[StatusArray.scala 241:50]
  wire  readyVecNext_8 = &statusArrayNext_8_srcState_0 & readyVecNext_scheduledCond_8 & readyVecNext_blockedCond_8; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_48 = io_issueGranted_1_valid & io_issueGranted_1_bits[9]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_46 = io_issueGranted_0_valid & io_issueGranted_0_bits[9]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_49 = {_hasIssued_T_48,_hasIssued_T_46}; // @[StatusArray.scala 183:83]
  wire  hasIssued_9 = |_hasIssued_T_49; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_9 = _T_488 & ~_T_494; // @[StatusArray.scala 184:38]
  wire  noCredit_9 = statusArray_9_valid & statusArray_9_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_9 = statusArray_9_scheduled & ~deqNotGranted_9 & ~noCredit_9; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_9_scheduled = updateValid_9 ? 1'h0 : hasIssued_9 | keepScheduled_9; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_9 = ~statusArrayNext_9_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_496 = mask_9_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_497 = mask_9_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_500 = _T_496 | _T_497; // @[Mux.scala 27:73]
  wire [2:0] _T_498 = mask_9_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_501 = _T_500 | _T_498; // @[Mux.scala 27:73]
  wire [2:0] _T_499 = mask_9_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_502 = _T_501 | _T_499; // @[Mux.scala 27:73]
  wire  updateVal_9_blocked = updateVec_9_0 & io_update_0_data_blocked | updateVec_9_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_9_blocked_T = updateValid_9 ? updateVal_9_blocked : statusArray_9_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_528 = updateVec_9_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_529 = updateVec_9_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_waitForRobIdx_value = _updateStatus_T_528 | _updateStatus_T_529; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_waitForRobIdx_value = updateValid_9 ? updateVal_9_waitForRobIdx_value :
    statusArray_9_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_83 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_9_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_84 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_83; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_81 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_9_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_82 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_81; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_85 = {_storeAddrWaitforIsIssuing_T_84,_storeAddrWaitforIsIssuing_T_82}; // @[StatusArray.scala 202:11]
  wire  _GEN_97 = updateValid_9 ? 1'h0 : statusArray_9_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_9_waitForStoreData = deqNotGranted_9 & _T_502 == 3'h2 | _GEN_97; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_9_strictWait = updateVec_9_0 & io_update_0_data_strictWait | updateVec_9_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_9_strictWait = updateValid_9 ? updateVal_9_strictWait : statusArray_9_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_9 = |_storeAddrWaitforIsIssuing_T_85 & ~statusArrayNext_9_waitForStoreData & ~
    statusArrayNext_9_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_9_blocked_T_1 = ~storeAddrWaitforIsIssuing_9; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_9_blocked_T_2 = _statusArrayNext_9_blocked_T & _statusArrayNext_9_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_503 = mask_9_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_505 = mask_9_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_508 = _T_503 | _T_505; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_9_waitForSqIdx_value = deqNotGranted_9 & _T_502 == 3'h2 ? _T_508 :
    statusArray_9_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_56 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_9_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_57 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_56; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_54 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_9_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_55 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_54; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_58 = {_storeDataWaitforIsIssuing_T_57,_storeDataWaitforIsIssuing_T_55}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_9 = |_storeDataWaitforIsIssuing_T_58 & statusArrayNext_9_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_9_blocked_T_3 = ~storeDataWaitforIsIssuing_9; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_9_blocked_T_4 = _statusArrayNext_9_blocked_T_2 & _statusArrayNext_9_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_9_sqIdx_flag = updateVec_9_0 & io_update_0_data_sqIdx_flag | updateVec_9_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_9_sqIdx_flag = updateValid_9 ? updateVal_9_sqIdx_flag : statusArray_9_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_9 = statusArrayNext_9_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_516 = updateVec_9_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_517 = updateVec_9_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_9_sqIdx_value = _updateStatus_T_516 | _updateStatus_T_517; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_9_sqIdx_value = updateValid_9 ? updateVal_9_sqIdx_value : statusArray_9_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_9 = statusArrayNext_9_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_9 = blockNotReleased_differentFlag_9 ^ blockNotReleased_compare_9; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_9_blocked_T_5 = _statusArrayNext_9_blocked_T_4 & blockNotReleased_9; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_9_blocked = deqNotGranted_9 & _T_502 == 3'h2 | _statusArrayNext_9_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_9 = ~statusArrayNext_9_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_549 = updateVec_9_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_550 = updateVec_9_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_psrc_0 = _updateStatus_T_549 | _updateStatus_T_550; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3591 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_9 = _T_3591 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3575 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_9 = _T_3575 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3559 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_9 = _T_3559 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3543 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_9 = _T_3543 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3527 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_9 = _T_3527 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3511 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_9 = _T_3511 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3495 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_9 = _T_3495 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3479 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_9 = _T_3479 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3463 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_9 = _T_3463 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3447 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_9 = _T_3447 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3431 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_9 = _T_3431 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3415 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_9 = _T_3415 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3399 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_9 = _T_3399 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_9 = {stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,
    stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_9 = {stateMatchVec_12_9,stateMatchVec_11_9,stateMatchVec_10_9,stateMatchVec_9_9,
    stateMatchVec_8_9,stateMatchVec_7_9,stateMatchVec_6_9,stateMatch_lo_9}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_9; // @[StatusArray.scala 137:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3631 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_3631; // @[StatusArray.scala 241:50]
  wire  readyVecNext_9 = &statusArrayNext_9_srcState_0 & readyVecNext_scheduledCond_9 & readyVecNext_blockedCond_9; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_53 = io_issueGranted_1_valid & io_issueGranted_1_bits[10]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_51 = io_issueGranted_0_valid & io_issueGranted_0_bits[10]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_54 = {_hasIssued_T_53,_hasIssued_T_51}; // @[StatusArray.scala 183:83]
  wire  hasIssued_10 = |_hasIssued_T_54; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_10 = _T_530 & ~_T_536; // @[StatusArray.scala 184:38]
  wire  noCredit_10 = statusArray_10_valid & statusArray_10_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_10 = statusArray_10_scheduled & ~deqNotGranted_10 & ~noCredit_10; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_10_scheduled = updateValid_10 ? 1'h0 : hasIssued_10 | keepScheduled_10; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_10 = ~statusArrayNext_10_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_538 = mask_10_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_539 = mask_10_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_542 = _T_538 | _T_539; // @[Mux.scala 27:73]
  wire [2:0] _T_540 = mask_10_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_543 = _T_542 | _T_540; // @[Mux.scala 27:73]
  wire [2:0] _T_541 = mask_10_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_544 = _T_543 | _T_541; // @[Mux.scala 27:73]
  wire  updateVal_10_blocked = updateVec_10_0 & io_update_0_data_blocked | updateVec_10_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_10_blocked_T = updateValid_10 ? updateVal_10_blocked : statusArray_10_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_585 = updateVec_10_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_586 = updateVec_10_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_waitForRobIdx_value = _updateStatus_T_585 | _updateStatus_T_586; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_waitForRobIdx_value = updateValid_10 ? updateVal_10_waitForRobIdx_value :
    statusArray_10_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_92 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_10_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_93 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_92; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_90 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_10_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_91 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_90; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_94 = {_storeAddrWaitforIsIssuing_T_93,_storeAddrWaitforIsIssuing_T_91}; // @[StatusArray.scala 202:11]
  wire  _GEN_105 = updateValid_10 ? 1'h0 : statusArray_10_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_10_waitForStoreData = deqNotGranted_10 & _T_544 == 3'h2 | _GEN_105; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_10_strictWait = updateVec_10_0 & io_update_0_data_strictWait | updateVec_10_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_10_strictWait = updateValid_10 ? updateVal_10_strictWait : statusArray_10_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_10 = |_storeAddrWaitforIsIssuing_T_94 & ~statusArrayNext_10_waitForStoreData & ~
    statusArrayNext_10_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_10_blocked_T_1 = ~storeAddrWaitforIsIssuing_10; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_10_blocked_T_2 = _statusArrayNext_10_blocked_T & _statusArrayNext_10_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_545 = mask_10_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_547 = mask_10_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_550 = _T_545 | _T_547; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_10_waitForSqIdx_value = deqNotGranted_10 & _T_544 == 3'h2 ? _T_550 :
    statusArray_10_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_62 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_10_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_63 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_62; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_60 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_10_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_61 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_60; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_64 = {_storeDataWaitforIsIssuing_T_63,_storeDataWaitforIsIssuing_T_61}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_10 = |_storeDataWaitforIsIssuing_T_64 & statusArrayNext_10_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_10_blocked_T_3 = ~storeDataWaitforIsIssuing_10; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_10_blocked_T_4 = _statusArrayNext_10_blocked_T_2 & _statusArrayNext_10_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_10_sqIdx_flag = updateVec_10_0 & io_update_0_data_sqIdx_flag | updateVec_10_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_10_sqIdx_flag = updateValid_10 ? updateVal_10_sqIdx_flag : statusArray_10_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_10 = statusArrayNext_10_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_573 = updateVec_10_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_574 = updateVec_10_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_10_sqIdx_value = _updateStatus_T_573 | _updateStatus_T_574; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_10_sqIdx_value = updateValid_10 ? updateVal_10_sqIdx_value : statusArray_10_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_10 = statusArrayNext_10_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_10 = blockNotReleased_differentFlag_10 ^ blockNotReleased_compare_10; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_10_blocked_T_5 = _statusArrayNext_10_blocked_T_4 & blockNotReleased_10; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_10_blocked = deqNotGranted_10 & _T_544 == 3'h2 | _statusArrayNext_10_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_10 = ~statusArrayNext_10_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_606 = updateVec_10_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_607 = updateVec_10_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_psrc_0 = _updateStatus_T_606 | _updateStatus_T_607; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_3844 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_10 = _T_3844 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3828 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_10 = _T_3828 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3812 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_10 = _T_3812 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3796 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_10 = _T_3796 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3780 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_10 = _T_3780 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3764 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_10 = _T_3764 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3748 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_10 = _T_3748 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3732 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_10 = _T_3732 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3716 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_10 = _T_3716 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3700 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_10 = _T_3700 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3684 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_10 = _T_3684 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3668 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_10 = _T_3668 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3652 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_10 = _T_3652 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_10 = {stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,
    stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_10 = {stateMatchVec_12_10,stateMatchVec_11_10,stateMatchVec_10_10,stateMatchVec_9_10,
    stateMatchVec_8_10,stateMatchVec_7_10,stateMatchVec_6_10,stateMatch_lo_10}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_10; // @[StatusArray.scala 137:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_3884 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_3884; // @[StatusArray.scala 241:50]
  wire  readyVecNext_10 = &statusArrayNext_10_srcState_0 & readyVecNext_scheduledCond_10 & readyVecNext_blockedCond_10; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_58 = io_issueGranted_1_valid & io_issueGranted_1_bits[11]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_56 = io_issueGranted_0_valid & io_issueGranted_0_bits[11]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_59 = {_hasIssued_T_58,_hasIssued_T_56}; // @[StatusArray.scala 183:83]
  wire  hasIssued_11 = |_hasIssued_T_59; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_11 = _T_572 & ~_T_578; // @[StatusArray.scala 184:38]
  wire  noCredit_11 = statusArray_11_valid & statusArray_11_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_11 = statusArray_11_scheduled & ~deqNotGranted_11 & ~noCredit_11; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_11_scheduled = updateValid_11 ? 1'h0 : hasIssued_11 | keepScheduled_11; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_11 = ~statusArrayNext_11_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_580 = mask_11_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_581 = mask_11_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_584 = _T_580 | _T_581; // @[Mux.scala 27:73]
  wire [2:0] _T_582 = mask_11_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_585 = _T_584 | _T_582; // @[Mux.scala 27:73]
  wire [2:0] _T_583 = mask_11_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_586 = _T_585 | _T_583; // @[Mux.scala 27:73]
  wire  updateVal_11_blocked = updateVec_11_0 & io_update_0_data_blocked | updateVec_11_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_11_blocked_T = updateValid_11 ? updateVal_11_blocked : statusArray_11_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_642 = updateVec_11_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_643 = updateVec_11_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_waitForRobIdx_value = _updateStatus_T_642 | _updateStatus_T_643; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_waitForRobIdx_value = updateValid_11 ? updateVal_11_waitForRobIdx_value :
    statusArray_11_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_101 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_11_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_102 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_101; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_99 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_11_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_100 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_99; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_103 = {_storeAddrWaitforIsIssuing_T_102,_storeAddrWaitforIsIssuing_T_100}; // @[StatusArray.scala 202:11]
  wire  _GEN_113 = updateValid_11 ? 1'h0 : statusArray_11_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_11_waitForStoreData = deqNotGranted_11 & _T_586 == 3'h2 | _GEN_113; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_11_strictWait = updateVec_11_0 & io_update_0_data_strictWait | updateVec_11_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_11_strictWait = updateValid_11 ? updateVal_11_strictWait : statusArray_11_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_11 = |_storeAddrWaitforIsIssuing_T_103 & ~statusArrayNext_11_waitForStoreData & ~
    statusArrayNext_11_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_11_blocked_T_1 = ~storeAddrWaitforIsIssuing_11; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_11_blocked_T_2 = _statusArrayNext_11_blocked_T & _statusArrayNext_11_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_587 = mask_11_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_589 = mask_11_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_592 = _T_587 | _T_589; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_11_waitForSqIdx_value = deqNotGranted_11 & _T_586 == 3'h2 ? _T_592 :
    statusArray_11_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_68 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_11_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_69 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_68; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_66 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_11_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_67 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_66; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_70 = {_storeDataWaitforIsIssuing_T_69,_storeDataWaitforIsIssuing_T_67}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_11 = |_storeDataWaitforIsIssuing_T_70 & statusArrayNext_11_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_11_blocked_T_3 = ~storeDataWaitforIsIssuing_11; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_11_blocked_T_4 = _statusArrayNext_11_blocked_T_2 & _statusArrayNext_11_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_11_sqIdx_flag = updateVec_11_0 & io_update_0_data_sqIdx_flag | updateVec_11_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_11_sqIdx_flag = updateValid_11 ? updateVal_11_sqIdx_flag : statusArray_11_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_11 = statusArrayNext_11_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_630 = updateVec_11_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_631 = updateVec_11_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_11_sqIdx_value = _updateStatus_T_630 | _updateStatus_T_631; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_11_sqIdx_value = updateValid_11 ? updateVal_11_sqIdx_value : statusArray_11_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_11 = statusArrayNext_11_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_11 = blockNotReleased_differentFlag_11 ^ blockNotReleased_compare_11; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_11_blocked_T_5 = _statusArrayNext_11_blocked_T_4 & blockNotReleased_11; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_11_blocked = deqNotGranted_11 & _T_586 == 3'h2 | _statusArrayNext_11_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_11 = ~statusArrayNext_11_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_663 = updateVec_11_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_664 = updateVec_11_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_psrc_0 = _updateStatus_T_663 | _updateStatus_T_664; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4097 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_11 = _T_4097 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4081 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_11 = _T_4081 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4065 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_11 = _T_4065 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4049 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_11 = _T_4049 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4033 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_11 = _T_4033 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4017 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_11 = _T_4017 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4001 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_11 = _T_4001 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3985 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_11 = _T_3985 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3969 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_11 = _T_3969 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3953 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_11 = _T_3953 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3937 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_11 = _T_3937 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3921 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_11 = _T_3921 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_3905 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_11 = _T_3905 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_11 = {stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,
    stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_11 = {stateMatchVec_12_11,stateMatchVec_11_11,stateMatchVec_10_11,stateMatchVec_9_11,
    stateMatchVec_8_11,stateMatchVec_7_11,stateMatchVec_6_11,stateMatch_lo_11}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_11; // @[StatusArray.scala 137:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4137 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_4137; // @[StatusArray.scala 241:50]
  wire  readyVecNext_11 = &statusArrayNext_11_srcState_0 & readyVecNext_scheduledCond_11 & readyVecNext_blockedCond_11; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_63 = io_issueGranted_1_valid & io_issueGranted_1_bits[12]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_61 = io_issueGranted_0_valid & io_issueGranted_0_bits[12]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_64 = {_hasIssued_T_63,_hasIssued_T_61}; // @[StatusArray.scala 183:83]
  wire  hasIssued_12 = |_hasIssued_T_64; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_12 = _T_614 & ~_T_620; // @[StatusArray.scala 184:38]
  wire  noCredit_12 = statusArray_12_valid & statusArray_12_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_12 = statusArray_12_scheduled & ~deqNotGranted_12 & ~noCredit_12; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_12_scheduled = updateValid_12 ? 1'h0 : hasIssued_12 | keepScheduled_12; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_12 = ~statusArrayNext_12_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_622 = mask_12_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_623 = mask_12_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_626 = _T_622 | _T_623; // @[Mux.scala 27:73]
  wire [2:0] _T_624 = mask_12_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_627 = _T_626 | _T_624; // @[Mux.scala 27:73]
  wire [2:0] _T_625 = mask_12_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_628 = _T_627 | _T_625; // @[Mux.scala 27:73]
  wire  updateVal_12_blocked = updateVec_12_0 & io_update_0_data_blocked | updateVec_12_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_12_blocked_T = updateValid_12 ? updateVal_12_blocked : statusArray_12_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_699 = updateVec_12_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_700 = updateVec_12_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_waitForRobIdx_value = _updateStatus_T_699 | _updateStatus_T_700; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_waitForRobIdx_value = updateValid_12 ? updateVal_12_waitForRobIdx_value :
    statusArray_12_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_110 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_12_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_111 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_110; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_108 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_12_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_109 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_108; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_112 = {_storeAddrWaitforIsIssuing_T_111,_storeAddrWaitforIsIssuing_T_109}; // @[StatusArray.scala 202:11]
  wire  _GEN_121 = updateValid_12 ? 1'h0 : statusArray_12_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_12_waitForStoreData = deqNotGranted_12 & _T_628 == 3'h2 | _GEN_121; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_12_strictWait = updateVec_12_0 & io_update_0_data_strictWait | updateVec_12_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_12_strictWait = updateValid_12 ? updateVal_12_strictWait : statusArray_12_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_12 = |_storeAddrWaitforIsIssuing_T_112 & ~statusArrayNext_12_waitForStoreData & ~
    statusArrayNext_12_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_12_blocked_T_1 = ~storeAddrWaitforIsIssuing_12; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_12_blocked_T_2 = _statusArrayNext_12_blocked_T & _statusArrayNext_12_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_629 = mask_12_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_631 = mask_12_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_634 = _T_629 | _T_631; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_12_waitForSqIdx_value = deqNotGranted_12 & _T_628 == 3'h2 ? _T_634 :
    statusArray_12_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_74 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_12_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_75 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_74; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_72 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_12_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_73 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_72; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_76 = {_storeDataWaitforIsIssuing_T_75,_storeDataWaitforIsIssuing_T_73}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_12 = |_storeDataWaitforIsIssuing_T_76 & statusArrayNext_12_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_12_blocked_T_3 = ~storeDataWaitforIsIssuing_12; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_12_blocked_T_4 = _statusArrayNext_12_blocked_T_2 & _statusArrayNext_12_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_12_sqIdx_flag = updateVec_12_0 & io_update_0_data_sqIdx_flag | updateVec_12_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_12_sqIdx_flag = updateValid_12 ? updateVal_12_sqIdx_flag : statusArray_12_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_12 = statusArrayNext_12_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_687 = updateVec_12_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_688 = updateVec_12_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_12_sqIdx_value = _updateStatus_T_687 | _updateStatus_T_688; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_12_sqIdx_value = updateValid_12 ? updateVal_12_sqIdx_value : statusArray_12_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_12 = statusArrayNext_12_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_12 = blockNotReleased_differentFlag_12 ^ blockNotReleased_compare_12; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_12_blocked_T_5 = _statusArrayNext_12_blocked_T_4 & blockNotReleased_12; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_12_blocked = deqNotGranted_12 & _T_628 == 3'h2 | _statusArrayNext_12_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_12 = ~statusArrayNext_12_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_720 = updateVec_12_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_721 = updateVec_12_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_psrc_0 = _updateStatus_T_720 | _updateStatus_T_721; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4350 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_12 = _T_4350 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4334 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_12 = _T_4334 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4318 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_12 = _T_4318 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4302 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_12 = _T_4302 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4286 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_12 = _T_4286 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4270 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_12 = _T_4270 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4254 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_12 = _T_4254 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4238 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_12 = _T_4238 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4222 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_12 = _T_4222 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4206 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_12 = _T_4206 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4190 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_12 = _T_4190 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4174 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_12 = _T_4174 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4158 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_12 = _T_4158 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_12 = {stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,
    stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_12 = {stateMatchVec_12_12,stateMatchVec_11_12,stateMatchVec_10_12,stateMatchVec_9_12,
    stateMatchVec_8_12,stateMatchVec_7_12,stateMatchVec_6_12,stateMatch_lo_12}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_12; // @[StatusArray.scala 137:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4390 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_4390; // @[StatusArray.scala 241:50]
  wire  readyVecNext_12 = &statusArrayNext_12_srcState_0 & readyVecNext_scheduledCond_12 & readyVecNext_blockedCond_12; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_68 = io_issueGranted_1_valid & io_issueGranted_1_bits[13]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_66 = io_issueGranted_0_valid & io_issueGranted_0_bits[13]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_69 = {_hasIssued_T_68,_hasIssued_T_66}; // @[StatusArray.scala 183:83]
  wire  hasIssued_13 = |_hasIssued_T_69; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_13 = _T_656 & ~_T_662; // @[StatusArray.scala 184:38]
  wire  noCredit_13 = statusArray_13_valid & statusArray_13_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_13 = statusArray_13_scheduled & ~deqNotGranted_13 & ~noCredit_13; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_13_scheduled = updateValid_13 ? 1'h0 : hasIssued_13 | keepScheduled_13; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_13 = ~statusArrayNext_13_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_664 = mask_13_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_665 = mask_13_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_668 = _T_664 | _T_665; // @[Mux.scala 27:73]
  wire [2:0] _T_666 = mask_13_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_669 = _T_668 | _T_666; // @[Mux.scala 27:73]
  wire [2:0] _T_667 = mask_13_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_670 = _T_669 | _T_667; // @[Mux.scala 27:73]
  wire  updateVal_13_blocked = updateVec_13_0 & io_update_0_data_blocked | updateVec_13_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_13_blocked_T = updateValid_13 ? updateVal_13_blocked : statusArray_13_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_756 = updateVec_13_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_757 = updateVec_13_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_waitForRobIdx_value = _updateStatus_T_756 | _updateStatus_T_757; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_waitForRobIdx_value = updateValid_13 ? updateVal_13_waitForRobIdx_value :
    statusArray_13_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_119 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_13_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_120 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_119; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_117 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_13_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_118 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_117; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_121 = {_storeAddrWaitforIsIssuing_T_120,_storeAddrWaitforIsIssuing_T_118}; // @[StatusArray.scala 202:11]
  wire  _GEN_129 = updateValid_13 ? 1'h0 : statusArray_13_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_13_waitForStoreData = deqNotGranted_13 & _T_670 == 3'h2 | _GEN_129; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_13_strictWait = updateVec_13_0 & io_update_0_data_strictWait | updateVec_13_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_13_strictWait = updateValid_13 ? updateVal_13_strictWait : statusArray_13_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_13 = |_storeAddrWaitforIsIssuing_T_121 & ~statusArrayNext_13_waitForStoreData & ~
    statusArrayNext_13_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_13_blocked_T_1 = ~storeAddrWaitforIsIssuing_13; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_13_blocked_T_2 = _statusArrayNext_13_blocked_T & _statusArrayNext_13_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_671 = mask_13_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_673 = mask_13_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_676 = _T_671 | _T_673; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_13_waitForSqIdx_value = deqNotGranted_13 & _T_670 == 3'h2 ? _T_676 :
    statusArray_13_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_80 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_13_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_81 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_80; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_78 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_13_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_79 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_78; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_82 = {_storeDataWaitforIsIssuing_T_81,_storeDataWaitforIsIssuing_T_79}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_13 = |_storeDataWaitforIsIssuing_T_82 & statusArrayNext_13_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_13_blocked_T_3 = ~storeDataWaitforIsIssuing_13; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_13_blocked_T_4 = _statusArrayNext_13_blocked_T_2 & _statusArrayNext_13_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_13_sqIdx_flag = updateVec_13_0 & io_update_0_data_sqIdx_flag | updateVec_13_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_13_sqIdx_flag = updateValid_13 ? updateVal_13_sqIdx_flag : statusArray_13_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_13 = statusArrayNext_13_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_744 = updateVec_13_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_745 = updateVec_13_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_13_sqIdx_value = _updateStatus_T_744 | _updateStatus_T_745; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_13_sqIdx_value = updateValid_13 ? updateVal_13_sqIdx_value : statusArray_13_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_13 = statusArrayNext_13_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_13 = blockNotReleased_differentFlag_13 ^ blockNotReleased_compare_13; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_13_blocked_T_5 = _statusArrayNext_13_blocked_T_4 & blockNotReleased_13; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_13_blocked = deqNotGranted_13 & _T_670 == 3'h2 | _statusArrayNext_13_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_13 = ~statusArrayNext_13_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_777 = updateVec_13_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_778 = updateVec_13_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_psrc_0 = _updateStatus_T_777 | _updateStatus_T_778; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4603 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_13 = _T_4603 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4587 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_13 = _T_4587 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4571 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_13 = _T_4571 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4555 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_13 = _T_4555 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4539 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_13 = _T_4539 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4523 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_13 = _T_4523 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4507 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_13 = _T_4507 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4491 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_13 = _T_4491 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4475 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_13 = _T_4475 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4459 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_13 = _T_4459 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4443 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_13 = _T_4443 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4427 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_13 = _T_4427 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4411 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_13 = _T_4411 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_13 = {stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,
    stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_13 = {stateMatchVec_12_13,stateMatchVec_11_13,stateMatchVec_10_13,stateMatchVec_9_13,
    stateMatchVec_8_13,stateMatchVec_7_13,stateMatchVec_6_13,stateMatch_lo_13}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_13; // @[StatusArray.scala 137:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4643 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_4643; // @[StatusArray.scala 241:50]
  wire  readyVecNext_13 = &statusArrayNext_13_srcState_0 & readyVecNext_scheduledCond_13 & readyVecNext_blockedCond_13; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_73 = io_issueGranted_1_valid & io_issueGranted_1_bits[14]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_71 = io_issueGranted_0_valid & io_issueGranted_0_bits[14]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_74 = {_hasIssued_T_73,_hasIssued_T_71}; // @[StatusArray.scala 183:83]
  wire  hasIssued_14 = |_hasIssued_T_74; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_14 = _T_698 & ~_T_704; // @[StatusArray.scala 184:38]
  wire  noCredit_14 = statusArray_14_valid & statusArray_14_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_14 = statusArray_14_scheduled & ~deqNotGranted_14 & ~noCredit_14; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_14_scheduled = updateValid_14 ? 1'h0 : hasIssued_14 | keepScheduled_14; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_14 = ~statusArrayNext_14_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_706 = mask_14_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_707 = mask_14_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_710 = _T_706 | _T_707; // @[Mux.scala 27:73]
  wire [2:0] _T_708 = mask_14_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_711 = _T_710 | _T_708; // @[Mux.scala 27:73]
  wire [2:0] _T_709 = mask_14_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_712 = _T_711 | _T_709; // @[Mux.scala 27:73]
  wire  updateVal_14_blocked = updateVec_14_0 & io_update_0_data_blocked | updateVec_14_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_14_blocked_T = updateValid_14 ? updateVal_14_blocked : statusArray_14_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_813 = updateVec_14_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_814 = updateVec_14_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_waitForRobIdx_value = _updateStatus_T_813 | _updateStatus_T_814; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_waitForRobIdx_value = updateValid_14 ? updateVal_14_waitForRobIdx_value :
    statusArray_14_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_128 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_14_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_129 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_128; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_126 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_14_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_127 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_126; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_130 = {_storeAddrWaitforIsIssuing_T_129,_storeAddrWaitforIsIssuing_T_127}; // @[StatusArray.scala 202:11]
  wire  _GEN_137 = updateValid_14 ? 1'h0 : statusArray_14_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_14_waitForStoreData = deqNotGranted_14 & _T_712 == 3'h2 | _GEN_137; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_14_strictWait = updateVec_14_0 & io_update_0_data_strictWait | updateVec_14_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_14_strictWait = updateValid_14 ? updateVal_14_strictWait : statusArray_14_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_14 = |_storeAddrWaitforIsIssuing_T_130 & ~statusArrayNext_14_waitForStoreData & ~
    statusArrayNext_14_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_14_blocked_T_1 = ~storeAddrWaitforIsIssuing_14; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_14_blocked_T_2 = _statusArrayNext_14_blocked_T & _statusArrayNext_14_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_713 = mask_14_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_715 = mask_14_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_718 = _T_713 | _T_715; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_14_waitForSqIdx_value = deqNotGranted_14 & _T_712 == 3'h2 ? _T_718 :
    statusArray_14_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_86 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_14_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_87 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_86; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_84 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_14_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_85 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_84; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_88 = {_storeDataWaitforIsIssuing_T_87,_storeDataWaitforIsIssuing_T_85}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_14 = |_storeDataWaitforIsIssuing_T_88 & statusArrayNext_14_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_14_blocked_T_3 = ~storeDataWaitforIsIssuing_14; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_14_blocked_T_4 = _statusArrayNext_14_blocked_T_2 & _statusArrayNext_14_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_14_sqIdx_flag = updateVec_14_0 & io_update_0_data_sqIdx_flag | updateVec_14_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_14_sqIdx_flag = updateValid_14 ? updateVal_14_sqIdx_flag : statusArray_14_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_14 = statusArrayNext_14_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_801 = updateVec_14_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_802 = updateVec_14_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_14_sqIdx_value = _updateStatus_T_801 | _updateStatus_T_802; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_14_sqIdx_value = updateValid_14 ? updateVal_14_sqIdx_value : statusArray_14_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_14 = statusArrayNext_14_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_14 = blockNotReleased_differentFlag_14 ^ blockNotReleased_compare_14; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_14_blocked_T_5 = _statusArrayNext_14_blocked_T_4 & blockNotReleased_14; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_14_blocked = deqNotGranted_14 & _T_712 == 3'h2 | _statusArrayNext_14_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_14 = ~statusArrayNext_14_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_834 = updateVec_14_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_835 = updateVec_14_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_psrc_0 = _updateStatus_T_834 | _updateStatus_T_835; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_4856 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_14 = _T_4856 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4840 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_14 = _T_4840 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4824 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_14 = _T_4824 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4808 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_14 = _T_4808 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4792 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_14 = _T_4792 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4776 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_14 = _T_4776 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4760 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_14 = _T_4760 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4744 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_14 = _T_4744 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4728 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_14 = _T_4728 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4712 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_14 = _T_4712 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4696 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_14 = _T_4696 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4680 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_14 = _T_4680 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4664 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_14 = _T_4664 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_14 = {stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,
    stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_14 = {stateMatchVec_12_14,stateMatchVec_11_14,stateMatchVec_10_14,stateMatchVec_9_14,
    stateMatchVec_8_14,stateMatchVec_7_14,stateMatchVec_6_14,stateMatch_lo_14}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_14; // @[StatusArray.scala 137:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_4896 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_4896; // @[StatusArray.scala 241:50]
  wire  readyVecNext_14 = &statusArrayNext_14_srcState_0 & readyVecNext_scheduledCond_14 & readyVecNext_blockedCond_14; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_78 = io_issueGranted_1_valid & io_issueGranted_1_bits[15]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_76 = io_issueGranted_0_valid & io_issueGranted_0_bits[15]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_79 = {_hasIssued_T_78,_hasIssued_T_76}; // @[StatusArray.scala 183:83]
  wire  hasIssued_15 = |_hasIssued_T_79; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_15 = _T_740 & ~_T_746; // @[StatusArray.scala 184:38]
  wire  noCredit_15 = statusArray_15_valid & statusArray_15_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_15 = statusArray_15_scheduled & ~deqNotGranted_15 & ~noCredit_15; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_15_scheduled = updateValid_15 ? 1'h0 : hasIssued_15 | keepScheduled_15; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_15 = ~statusArrayNext_15_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_748 = mask_15_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_749 = mask_15_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_752 = _T_748 | _T_749; // @[Mux.scala 27:73]
  wire [2:0] _T_750 = mask_15_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_753 = _T_752 | _T_750; // @[Mux.scala 27:73]
  wire [2:0] _T_751 = mask_15_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_754 = _T_753 | _T_751; // @[Mux.scala 27:73]
  wire  updateVal_15_blocked = updateVec_15_0 & io_update_0_data_blocked | updateVec_15_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_15_blocked_T = updateValid_15 ? updateVal_15_blocked : statusArray_15_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_870 = updateVec_15_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_871 = updateVec_15_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_waitForRobIdx_value = _updateStatus_T_870 | _updateStatus_T_871; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_waitForRobIdx_value = updateValid_15 ? updateVal_15_waitForRobIdx_value :
    statusArray_15_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_137 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_15_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_138 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_137; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_135 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_15_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_136 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_135; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_139 = {_storeAddrWaitforIsIssuing_T_138,_storeAddrWaitforIsIssuing_T_136}; // @[StatusArray.scala 202:11]
  wire  _GEN_145 = updateValid_15 ? 1'h0 : statusArray_15_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_15_waitForStoreData = deqNotGranted_15 & _T_754 == 3'h2 | _GEN_145; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_15_strictWait = updateVec_15_0 & io_update_0_data_strictWait | updateVec_15_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_15_strictWait = updateValid_15 ? updateVal_15_strictWait : statusArray_15_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_15 = |_storeAddrWaitforIsIssuing_T_139 & ~statusArrayNext_15_waitForStoreData & ~
    statusArrayNext_15_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_15_blocked_T_1 = ~storeAddrWaitforIsIssuing_15; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_15_blocked_T_2 = _statusArrayNext_15_blocked_T & _statusArrayNext_15_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_755 = mask_15_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_757 = mask_15_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_760 = _T_755 | _T_757; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_15_waitForSqIdx_value = deqNotGranted_15 & _T_754 == 3'h2 ? _T_760 :
    statusArray_15_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_92 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_15_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_93 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_92; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_90 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_15_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_91 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_90; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_94 = {_storeDataWaitforIsIssuing_T_93,_storeDataWaitforIsIssuing_T_91}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_15 = |_storeDataWaitforIsIssuing_T_94 & statusArrayNext_15_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_15_blocked_T_3 = ~storeDataWaitforIsIssuing_15; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_15_blocked_T_4 = _statusArrayNext_15_blocked_T_2 & _statusArrayNext_15_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_15_sqIdx_flag = updateVec_15_0 & io_update_0_data_sqIdx_flag | updateVec_15_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_15_sqIdx_flag = updateValid_15 ? updateVal_15_sqIdx_flag : statusArray_15_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_15 = statusArrayNext_15_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_858 = updateVec_15_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_859 = updateVec_15_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_15_sqIdx_value = _updateStatus_T_858 | _updateStatus_T_859; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_15_sqIdx_value = updateValid_15 ? updateVal_15_sqIdx_value : statusArray_15_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_15 = statusArrayNext_15_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_15 = blockNotReleased_differentFlag_15 ^ blockNotReleased_compare_15; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_15_blocked_T_5 = _statusArrayNext_15_blocked_T_4 & blockNotReleased_15; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_15_blocked = deqNotGranted_15 & _T_754 == 3'h2 | _statusArrayNext_15_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_15 = ~statusArrayNext_15_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_891 = updateVec_15_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_892 = updateVec_15_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_psrc_0 = _updateStatus_T_891 | _updateStatus_T_892; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5109 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_15 = _T_5109 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5093 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_15 = _T_5093 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5077 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_15 = _T_5077 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5061 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_15 = _T_5061 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5045 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_15 = _T_5045 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5029 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_15 = _T_5029 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5013 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_15 = _T_5013 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4997 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_15 = _T_4997 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4981 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_15 = _T_4981 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4965 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_15 = _T_4965 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4949 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_15 = _T_4949 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4933 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_15 = _T_4933 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_4917 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_15 = _T_4917 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_15 = {stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,
    stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_15 = {stateMatchVec_12_15,stateMatchVec_11_15,stateMatchVec_10_15,stateMatchVec_9_15,
    stateMatchVec_8_15,stateMatchVec_7_15,stateMatchVec_6_15,stateMatch_lo_15}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_15; // @[StatusArray.scala 137:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5149 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_5149; // @[StatusArray.scala 241:50]
  wire  readyVecNext_15 = &statusArrayNext_15_srcState_0 & readyVecNext_scheduledCond_15 & readyVecNext_blockedCond_15; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_83 = io_issueGranted_1_valid & io_issueGranted_1_bits[16]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_81 = io_issueGranted_0_valid & io_issueGranted_0_bits[16]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_84 = {_hasIssued_T_83,_hasIssued_T_81}; // @[StatusArray.scala 183:83]
  wire  hasIssued_16 = |_hasIssued_T_84; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_16 = _T_782 & ~_T_788; // @[StatusArray.scala 184:38]
  wire  noCredit_16 = statusArray_16_valid & statusArray_16_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_16 = statusArray_16_scheduled & ~deqNotGranted_16 & ~noCredit_16; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_16_scheduled = updateValid_16 ? 1'h0 : hasIssued_16 | keepScheduled_16; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_16 = ~statusArrayNext_16_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_790 = mask_16_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_791 = mask_16_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_794 = _T_790 | _T_791; // @[Mux.scala 27:73]
  wire [2:0] _T_792 = mask_16_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_795 = _T_794 | _T_792; // @[Mux.scala 27:73]
  wire [2:0] _T_793 = mask_16_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_796 = _T_795 | _T_793; // @[Mux.scala 27:73]
  wire  updateVal_16_blocked = updateVec_16_0 & io_update_0_data_blocked | updateVec_16_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_16_blocked_T = updateValid_16 ? updateVal_16_blocked : statusArray_16_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_927 = updateVec_16_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_928 = updateVec_16_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_16_waitForRobIdx_value = _updateStatus_T_927 | _updateStatus_T_928; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_16_waitForRobIdx_value = updateValid_16 ? updateVal_16_waitForRobIdx_value :
    statusArray_16_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_146 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_16_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_147 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_146; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_144 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_16_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_145 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_144; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_148 = {_storeAddrWaitforIsIssuing_T_147,_storeAddrWaitforIsIssuing_T_145}; // @[StatusArray.scala 202:11]
  wire  _GEN_153 = updateValid_16 ? 1'h0 : statusArray_16_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_16_waitForStoreData = deqNotGranted_16 & _T_796 == 3'h2 | _GEN_153; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_16_strictWait = updateVec_16_0 & io_update_0_data_strictWait | updateVec_16_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_16_strictWait = updateValid_16 ? updateVal_16_strictWait : statusArray_16_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_16 = |_storeAddrWaitforIsIssuing_T_148 & ~statusArrayNext_16_waitForStoreData & ~
    statusArrayNext_16_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_16_blocked_T_1 = ~storeAddrWaitforIsIssuing_16; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_16_blocked_T_2 = _statusArrayNext_16_blocked_T & _statusArrayNext_16_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_797 = mask_16_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_799 = mask_16_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_802 = _T_797 | _T_799; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_16_waitForSqIdx_value = deqNotGranted_16 & _T_796 == 3'h2 ? _T_802 :
    statusArray_16_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_98 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_16_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_99 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_98; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_96 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_16_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_97 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_96; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_100 = {_storeDataWaitforIsIssuing_T_99,_storeDataWaitforIsIssuing_T_97}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_16 = |_storeDataWaitforIsIssuing_T_100 & statusArrayNext_16_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_16_blocked_T_3 = ~storeDataWaitforIsIssuing_16; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_16_blocked_T_4 = _statusArrayNext_16_blocked_T_2 & _statusArrayNext_16_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_16_sqIdx_flag = updateVec_16_0 & io_update_0_data_sqIdx_flag | updateVec_16_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_16_sqIdx_flag = updateValid_16 ? updateVal_16_sqIdx_flag : statusArray_16_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_16 = statusArrayNext_16_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_915 = updateVec_16_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_916 = updateVec_16_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_16_sqIdx_value = _updateStatus_T_915 | _updateStatus_T_916; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_16_sqIdx_value = updateValid_16 ? updateVal_16_sqIdx_value : statusArray_16_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_16 = statusArrayNext_16_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_16 = blockNotReleased_differentFlag_16 ^ blockNotReleased_compare_16; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_16_blocked_T_5 = _statusArrayNext_16_blocked_T_4 & blockNotReleased_16; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_16_blocked = deqNotGranted_16 & _T_796 == 3'h2 | _statusArrayNext_16_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_16 = ~statusArrayNext_16_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_948 = updateVec_16_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_949 = updateVec_16_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_16_psrc_0 = _updateStatus_T_948 | _updateStatus_T_949; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_16_psrc_0 = updateValid_16 ? updateVal_16_psrc_0 : statusArray_16_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5362 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_16 = _T_5362 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5346 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_16 = _T_5346 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5330 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_16 = _T_5330 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5314 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_16 = _T_5314 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5298 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_16 = _T_5298 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5282 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_16 = _T_5282 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5266 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_16 = _T_5266 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5250 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_16 = _T_5250 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5234 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_16 = _T_5234 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5218 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_16 = _T_5218 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5202 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_16 = _T_5202 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5186 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_16 = _T_5186 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5170 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_16_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_16 = _T_5170 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_16 = {stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,stateMatchVec_2_16,
    stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_16 = {stateMatchVec_12_16,stateMatchVec_11_16,stateMatchVec_10_16,stateMatchVec_9_16,
    stateMatchVec_8_16,stateMatchVec_7_16,stateMatchVec_6_16,stateMatch_lo_16}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_16 = |_stateMatch_T_16; // @[StatusArray.scala 137:52]
  wire  updateVal_16_srcState_0 = updateVec_16_0 & io_update_0_data_srcState_0 | updateVec_16_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5402 = updateValid_16 ? updateVal_16_srcState_0 : statusArray_16_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_16_srcState_0 = stateWakeupEn_0_16 | _T_5402; // @[StatusArray.scala 241:50]
  wire  readyVecNext_16 = &statusArrayNext_16_srcState_0 & readyVecNext_scheduledCond_16 & readyVecNext_blockedCond_16; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_88 = io_issueGranted_1_valid & io_issueGranted_1_bits[17]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_86 = io_issueGranted_0_valid & io_issueGranted_0_bits[17]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_89 = {_hasIssued_T_88,_hasIssued_T_86}; // @[StatusArray.scala 183:83]
  wire  hasIssued_17 = |_hasIssued_T_89; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_17 = _T_824 & ~_T_830; // @[StatusArray.scala 184:38]
  wire  noCredit_17 = statusArray_17_valid & statusArray_17_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_17 = statusArray_17_scheduled & ~deqNotGranted_17 & ~noCredit_17; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_17_scheduled = updateValid_17 ? 1'h0 : hasIssued_17 | keepScheduled_17; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_17 = ~statusArrayNext_17_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_832 = mask_17_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_833 = mask_17_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_836 = _T_832 | _T_833; // @[Mux.scala 27:73]
  wire [2:0] _T_834 = mask_17_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_837 = _T_836 | _T_834; // @[Mux.scala 27:73]
  wire [2:0] _T_835 = mask_17_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_838 = _T_837 | _T_835; // @[Mux.scala 27:73]
  wire  updateVal_17_blocked = updateVec_17_0 & io_update_0_data_blocked | updateVec_17_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_17_blocked_T = updateValid_17 ? updateVal_17_blocked : statusArray_17_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_984 = updateVec_17_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_985 = updateVec_17_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_17_waitForRobIdx_value = _updateStatus_T_984 | _updateStatus_T_985; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_17_waitForRobIdx_value = updateValid_17 ? updateVal_17_waitForRobIdx_value :
    statusArray_17_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_155 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_17_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_156 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_155; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_153 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_17_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_154 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_153; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_157 = {_storeAddrWaitforIsIssuing_T_156,_storeAddrWaitforIsIssuing_T_154}; // @[StatusArray.scala 202:11]
  wire  _GEN_161 = updateValid_17 ? 1'h0 : statusArray_17_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_17_waitForStoreData = deqNotGranted_17 & _T_838 == 3'h2 | _GEN_161; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_17_strictWait = updateVec_17_0 & io_update_0_data_strictWait | updateVec_17_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_17_strictWait = updateValid_17 ? updateVal_17_strictWait : statusArray_17_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_17 = |_storeAddrWaitforIsIssuing_T_157 & ~statusArrayNext_17_waitForStoreData & ~
    statusArrayNext_17_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_17_blocked_T_1 = ~storeAddrWaitforIsIssuing_17; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_17_blocked_T_2 = _statusArrayNext_17_blocked_T & _statusArrayNext_17_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_839 = mask_17_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_841 = mask_17_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_844 = _T_839 | _T_841; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_17_waitForSqIdx_value = deqNotGranted_17 & _T_838 == 3'h2 ? _T_844 :
    statusArray_17_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_104 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_17_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_105 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_104; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_102 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_17_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_103 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_102; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_106 = {_storeDataWaitforIsIssuing_T_105,_storeDataWaitforIsIssuing_T_103}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_17 = |_storeDataWaitforIsIssuing_T_106 & statusArrayNext_17_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_17_blocked_T_3 = ~storeDataWaitforIsIssuing_17; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_17_blocked_T_4 = _statusArrayNext_17_blocked_T_2 & _statusArrayNext_17_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_17_sqIdx_flag = updateVec_17_0 & io_update_0_data_sqIdx_flag | updateVec_17_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_17_sqIdx_flag = updateValid_17 ? updateVal_17_sqIdx_flag : statusArray_17_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_17 = statusArrayNext_17_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_972 = updateVec_17_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_973 = updateVec_17_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_17_sqIdx_value = _updateStatus_T_972 | _updateStatus_T_973; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_17_sqIdx_value = updateValid_17 ? updateVal_17_sqIdx_value : statusArray_17_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_17 = statusArrayNext_17_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_17 = blockNotReleased_differentFlag_17 ^ blockNotReleased_compare_17; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_17_blocked_T_5 = _statusArrayNext_17_blocked_T_4 & blockNotReleased_17; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_17_blocked = deqNotGranted_17 & _T_838 == 3'h2 | _statusArrayNext_17_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_17 = ~statusArrayNext_17_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1005 = updateVec_17_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1006 = updateVec_17_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_17_psrc_0 = _updateStatus_T_1005 | _updateStatus_T_1006; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_17_psrc_0 = updateValid_17 ? updateVal_17_psrc_0 : statusArray_17_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5615 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_17 = _T_5615 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5599 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_17 = _T_5599 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5583 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_17 = _T_5583 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5567 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_17 = _T_5567 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5551 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_17 = _T_5551 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5535 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_17 = _T_5535 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5519 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_17 = _T_5519 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5503 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_17 = _T_5503 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5487 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_17 = _T_5487 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5471 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_17 = _T_5471 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5455 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_17 = _T_5455 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5439 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_17 = _T_5439 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5423 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_17_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_17 = _T_5423 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_17 = {stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,stateMatchVec_2_17,
    stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_17 = {stateMatchVec_12_17,stateMatchVec_11_17,stateMatchVec_10_17,stateMatchVec_9_17,
    stateMatchVec_8_17,stateMatchVec_7_17,stateMatchVec_6_17,stateMatch_lo_17}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_17 = |_stateMatch_T_17; // @[StatusArray.scala 137:52]
  wire  updateVal_17_srcState_0 = updateVec_17_0 & io_update_0_data_srcState_0 | updateVec_17_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5655 = updateValid_17 ? updateVal_17_srcState_0 : statusArray_17_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_17_srcState_0 = stateWakeupEn_0_17 | _T_5655; // @[StatusArray.scala 241:50]
  wire  readyVecNext_17 = &statusArrayNext_17_srcState_0 & readyVecNext_scheduledCond_17 & readyVecNext_blockedCond_17; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_93 = io_issueGranted_1_valid & io_issueGranted_1_bits[18]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_91 = io_issueGranted_0_valid & io_issueGranted_0_bits[18]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_94 = {_hasIssued_T_93,_hasIssued_T_91}; // @[StatusArray.scala 183:83]
  wire  hasIssued_18 = |_hasIssued_T_94; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_18 = _T_866 & ~_T_872; // @[StatusArray.scala 184:38]
  wire  noCredit_18 = statusArray_18_valid & statusArray_18_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_18 = statusArray_18_scheduled & ~deqNotGranted_18 & ~noCredit_18; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_18_scheduled = updateValid_18 ? 1'h0 : hasIssued_18 | keepScheduled_18; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_18 = ~statusArrayNext_18_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_874 = mask_18_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_875 = mask_18_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_878 = _T_874 | _T_875; // @[Mux.scala 27:73]
  wire [2:0] _T_876 = mask_18_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_879 = _T_878 | _T_876; // @[Mux.scala 27:73]
  wire [2:0] _T_877 = mask_18_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_880 = _T_879 | _T_877; // @[Mux.scala 27:73]
  wire  updateVal_18_blocked = updateVec_18_0 & io_update_0_data_blocked | updateVec_18_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_18_blocked_T = updateValid_18 ? updateVal_18_blocked : statusArray_18_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1041 = updateVec_18_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1042 = updateVec_18_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_18_waitForRobIdx_value = _updateStatus_T_1041 | _updateStatus_T_1042; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_18_waitForRobIdx_value = updateValid_18 ? updateVal_18_waitForRobIdx_value :
    statusArray_18_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_164 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_18_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_165 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_164; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_162 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_18_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_163 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_162; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_166 = {_storeAddrWaitforIsIssuing_T_165,_storeAddrWaitforIsIssuing_T_163}; // @[StatusArray.scala 202:11]
  wire  _GEN_169 = updateValid_18 ? 1'h0 : statusArray_18_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_18_waitForStoreData = deqNotGranted_18 & _T_880 == 3'h2 | _GEN_169; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_18_strictWait = updateVec_18_0 & io_update_0_data_strictWait | updateVec_18_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_18_strictWait = updateValid_18 ? updateVal_18_strictWait : statusArray_18_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_18 = |_storeAddrWaitforIsIssuing_T_166 & ~statusArrayNext_18_waitForStoreData & ~
    statusArrayNext_18_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_18_blocked_T_1 = ~storeAddrWaitforIsIssuing_18; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_18_blocked_T_2 = _statusArrayNext_18_blocked_T & _statusArrayNext_18_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_881 = mask_18_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_883 = mask_18_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_886 = _T_881 | _T_883; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_18_waitForSqIdx_value = deqNotGranted_18 & _T_880 == 3'h2 ? _T_886 :
    statusArray_18_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_110 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_18_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_111 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_110; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_108 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_18_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_109 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_108; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_112 = {_storeDataWaitforIsIssuing_T_111,_storeDataWaitforIsIssuing_T_109}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_18 = |_storeDataWaitforIsIssuing_T_112 & statusArrayNext_18_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_18_blocked_T_3 = ~storeDataWaitforIsIssuing_18; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_18_blocked_T_4 = _statusArrayNext_18_blocked_T_2 & _statusArrayNext_18_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_18_sqIdx_flag = updateVec_18_0 & io_update_0_data_sqIdx_flag | updateVec_18_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_18_sqIdx_flag = updateValid_18 ? updateVal_18_sqIdx_flag : statusArray_18_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_18 = statusArrayNext_18_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1029 = updateVec_18_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1030 = updateVec_18_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_18_sqIdx_value = _updateStatus_T_1029 | _updateStatus_T_1030; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_18_sqIdx_value = updateValid_18 ? updateVal_18_sqIdx_value : statusArray_18_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_18 = statusArrayNext_18_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_18 = blockNotReleased_differentFlag_18 ^ blockNotReleased_compare_18; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_18_blocked_T_5 = _statusArrayNext_18_blocked_T_4 & blockNotReleased_18; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_18_blocked = deqNotGranted_18 & _T_880 == 3'h2 | _statusArrayNext_18_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_18 = ~statusArrayNext_18_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1062 = updateVec_18_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1063 = updateVec_18_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_18_psrc_0 = _updateStatus_T_1062 | _updateStatus_T_1063; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_18_psrc_0 = updateValid_18 ? updateVal_18_psrc_0 : statusArray_18_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_5868 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_18 = _T_5868 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5852 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_18 = _T_5852 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5836 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_18 = _T_5836 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5820 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_18 = _T_5820 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5804 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_18 = _T_5804 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5788 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_18 = _T_5788 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5772 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_18 = _T_5772 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5756 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_18 = _T_5756 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5740 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_18 = _T_5740 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5724 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_18 = _T_5724 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5708 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_18 = _T_5708 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5692 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_18 = _T_5692 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5676 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_18_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_18 = _T_5676 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_18 = {stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,stateMatchVec_2_18,
    stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_18 = {stateMatchVec_12_18,stateMatchVec_11_18,stateMatchVec_10_18,stateMatchVec_9_18,
    stateMatchVec_8_18,stateMatchVec_7_18,stateMatchVec_6_18,stateMatch_lo_18}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_18 = |_stateMatch_T_18; // @[StatusArray.scala 137:52]
  wire  updateVal_18_srcState_0 = updateVec_18_0 & io_update_0_data_srcState_0 | updateVec_18_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_5908 = updateValid_18 ? updateVal_18_srcState_0 : statusArray_18_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_18_srcState_0 = stateWakeupEn_0_18 | _T_5908; // @[StatusArray.scala 241:50]
  wire  readyVecNext_18 = &statusArrayNext_18_srcState_0 & readyVecNext_scheduledCond_18 & readyVecNext_blockedCond_18; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_98 = io_issueGranted_1_valid & io_issueGranted_1_bits[19]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_96 = io_issueGranted_0_valid & io_issueGranted_0_bits[19]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_99 = {_hasIssued_T_98,_hasIssued_T_96}; // @[StatusArray.scala 183:83]
  wire  hasIssued_19 = |_hasIssued_T_99; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_19 = _T_908 & ~_T_914; // @[StatusArray.scala 184:38]
  wire  noCredit_19 = statusArray_19_valid & statusArray_19_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_19 = statusArray_19_scheduled & ~deqNotGranted_19 & ~noCredit_19; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_19_scheduled = updateValid_19 ? 1'h0 : hasIssued_19 | keepScheduled_19; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_19 = ~statusArrayNext_19_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_916 = mask_19_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_917 = mask_19_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_920 = _T_916 | _T_917; // @[Mux.scala 27:73]
  wire [2:0] _T_918 = mask_19_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_921 = _T_920 | _T_918; // @[Mux.scala 27:73]
  wire [2:0] _T_919 = mask_19_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_922 = _T_921 | _T_919; // @[Mux.scala 27:73]
  wire  updateVal_19_blocked = updateVec_19_0 & io_update_0_data_blocked | updateVec_19_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_19_blocked_T = updateValid_19 ? updateVal_19_blocked : statusArray_19_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1098 = updateVec_19_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1099 = updateVec_19_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_19_waitForRobIdx_value = _updateStatus_T_1098 | _updateStatus_T_1099; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_19_waitForRobIdx_value = updateValid_19 ? updateVal_19_waitForRobIdx_value :
    statusArray_19_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_173 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_19_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_174 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_173; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_171 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_19_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_172 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_171; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_175 = {_storeAddrWaitforIsIssuing_T_174,_storeAddrWaitforIsIssuing_T_172}; // @[StatusArray.scala 202:11]
  wire  _GEN_177 = updateValid_19 ? 1'h0 : statusArray_19_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_19_waitForStoreData = deqNotGranted_19 & _T_922 == 3'h2 | _GEN_177; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_19_strictWait = updateVec_19_0 & io_update_0_data_strictWait | updateVec_19_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_19_strictWait = updateValid_19 ? updateVal_19_strictWait : statusArray_19_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_19 = |_storeAddrWaitforIsIssuing_T_175 & ~statusArrayNext_19_waitForStoreData & ~
    statusArrayNext_19_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_19_blocked_T_1 = ~storeAddrWaitforIsIssuing_19; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_19_blocked_T_2 = _statusArrayNext_19_blocked_T & _statusArrayNext_19_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_923 = mask_19_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_925 = mask_19_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_928 = _T_923 | _T_925; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_19_waitForSqIdx_value = deqNotGranted_19 & _T_922 == 3'h2 ? _T_928 :
    statusArray_19_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_116 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_19_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_117 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_116; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_114 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_19_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_115 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_114; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_118 = {_storeDataWaitforIsIssuing_T_117,_storeDataWaitforIsIssuing_T_115}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_19 = |_storeDataWaitforIsIssuing_T_118 & statusArrayNext_19_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_19_blocked_T_3 = ~storeDataWaitforIsIssuing_19; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_19_blocked_T_4 = _statusArrayNext_19_blocked_T_2 & _statusArrayNext_19_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_19_sqIdx_flag = updateVec_19_0 & io_update_0_data_sqIdx_flag | updateVec_19_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_19_sqIdx_flag = updateValid_19 ? updateVal_19_sqIdx_flag : statusArray_19_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_19 = statusArrayNext_19_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1086 = updateVec_19_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1087 = updateVec_19_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_19_sqIdx_value = _updateStatus_T_1086 | _updateStatus_T_1087; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_19_sqIdx_value = updateValid_19 ? updateVal_19_sqIdx_value : statusArray_19_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_19 = statusArrayNext_19_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_19 = blockNotReleased_differentFlag_19 ^ blockNotReleased_compare_19; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_19_blocked_T_5 = _statusArrayNext_19_blocked_T_4 & blockNotReleased_19; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_19_blocked = deqNotGranted_19 & _T_922 == 3'h2 | _statusArrayNext_19_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_19 = ~statusArrayNext_19_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1119 = updateVec_19_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1120 = updateVec_19_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_19_psrc_0 = _updateStatus_T_1119 | _updateStatus_T_1120; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_19_psrc_0 = updateValid_19 ? updateVal_19_psrc_0 : statusArray_19_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6121 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_19 = _T_6121 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6105 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_19 = _T_6105 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6089 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_19 = _T_6089 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6073 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_19 = _T_6073 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6057 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_19 = _T_6057 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6041 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_19 = _T_6041 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6025 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_19 = _T_6025 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6009 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_19 = _T_6009 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5993 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_19 = _T_5993 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5977 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_19 = _T_5977 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5961 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_19 = _T_5961 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5945 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_19 = _T_5945 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_5929 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_19_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_19 = _T_5929 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_19 = {stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,stateMatchVec_2_19,
    stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_19 = {stateMatchVec_12_19,stateMatchVec_11_19,stateMatchVec_10_19,stateMatchVec_9_19,
    stateMatchVec_8_19,stateMatchVec_7_19,stateMatchVec_6_19,stateMatch_lo_19}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_19 = |_stateMatch_T_19; // @[StatusArray.scala 137:52]
  wire  updateVal_19_srcState_0 = updateVec_19_0 & io_update_0_data_srcState_0 | updateVec_19_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6161 = updateValid_19 ? updateVal_19_srcState_0 : statusArray_19_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_19_srcState_0 = stateWakeupEn_0_19 | _T_6161; // @[StatusArray.scala 241:50]
  wire  readyVecNext_19 = &statusArrayNext_19_srcState_0 & readyVecNext_scheduledCond_19 & readyVecNext_blockedCond_19; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_103 = io_issueGranted_1_valid & io_issueGranted_1_bits[20]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_101 = io_issueGranted_0_valid & io_issueGranted_0_bits[20]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_104 = {_hasIssued_T_103,_hasIssued_T_101}; // @[StatusArray.scala 183:83]
  wire  hasIssued_20 = |_hasIssued_T_104; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_20 = _T_950 & ~_T_956; // @[StatusArray.scala 184:38]
  wire  noCredit_20 = statusArray_20_valid & statusArray_20_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_20 = statusArray_20_scheduled & ~deqNotGranted_20 & ~noCredit_20; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_20_scheduled = updateValid_20 ? 1'h0 : hasIssued_20 | keepScheduled_20; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_20 = ~statusArrayNext_20_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_958 = mask_20_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_959 = mask_20_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_962 = _T_958 | _T_959; // @[Mux.scala 27:73]
  wire [2:0] _T_960 = mask_20_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_963 = _T_962 | _T_960; // @[Mux.scala 27:73]
  wire [2:0] _T_961 = mask_20_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_964 = _T_963 | _T_961; // @[Mux.scala 27:73]
  wire  updateVal_20_blocked = updateVec_20_0 & io_update_0_data_blocked | updateVec_20_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_20_blocked_T = updateValid_20 ? updateVal_20_blocked : statusArray_20_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1155 = updateVec_20_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1156 = updateVec_20_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_20_waitForRobIdx_value = _updateStatus_T_1155 | _updateStatus_T_1156; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_20_waitForRobIdx_value = updateValid_20 ? updateVal_20_waitForRobIdx_value :
    statusArray_20_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_182 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_20_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_183 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_182; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_180 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_20_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_181 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_180; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_184 = {_storeAddrWaitforIsIssuing_T_183,_storeAddrWaitforIsIssuing_T_181}; // @[StatusArray.scala 202:11]
  wire  _GEN_185 = updateValid_20 ? 1'h0 : statusArray_20_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_20_waitForStoreData = deqNotGranted_20 & _T_964 == 3'h2 | _GEN_185; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_20_strictWait = updateVec_20_0 & io_update_0_data_strictWait | updateVec_20_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_20_strictWait = updateValid_20 ? updateVal_20_strictWait : statusArray_20_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_20 = |_storeAddrWaitforIsIssuing_T_184 & ~statusArrayNext_20_waitForStoreData & ~
    statusArrayNext_20_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_20_blocked_T_1 = ~storeAddrWaitforIsIssuing_20; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_20_blocked_T_2 = _statusArrayNext_20_blocked_T & _statusArrayNext_20_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_965 = mask_20_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_967 = mask_20_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_970 = _T_965 | _T_967; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_20_waitForSqIdx_value = deqNotGranted_20 & _T_964 == 3'h2 ? _T_970 :
    statusArray_20_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_122 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_20_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_123 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_122; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_120 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_20_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_121 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_120; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_124 = {_storeDataWaitforIsIssuing_T_123,_storeDataWaitforIsIssuing_T_121}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_20 = |_storeDataWaitforIsIssuing_T_124 & statusArrayNext_20_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_20_blocked_T_3 = ~storeDataWaitforIsIssuing_20; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_20_blocked_T_4 = _statusArrayNext_20_blocked_T_2 & _statusArrayNext_20_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_20_sqIdx_flag = updateVec_20_0 & io_update_0_data_sqIdx_flag | updateVec_20_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_20_sqIdx_flag = updateValid_20 ? updateVal_20_sqIdx_flag : statusArray_20_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_20 = statusArrayNext_20_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1143 = updateVec_20_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1144 = updateVec_20_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_20_sqIdx_value = _updateStatus_T_1143 | _updateStatus_T_1144; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_20_sqIdx_value = updateValid_20 ? updateVal_20_sqIdx_value : statusArray_20_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_20 = statusArrayNext_20_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_20 = blockNotReleased_differentFlag_20 ^ blockNotReleased_compare_20; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_20_blocked_T_5 = _statusArrayNext_20_blocked_T_4 & blockNotReleased_20; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_20_blocked = deqNotGranted_20 & _T_964 == 3'h2 | _statusArrayNext_20_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_20 = ~statusArrayNext_20_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1176 = updateVec_20_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1177 = updateVec_20_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_20_psrc_0 = _updateStatus_T_1176 | _updateStatus_T_1177; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_20_psrc_0 = updateValid_20 ? updateVal_20_psrc_0 : statusArray_20_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6374 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_20 = _T_6374 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6358 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_20 = _T_6358 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6342 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_20 = _T_6342 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6326 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_20 = _T_6326 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6310 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_20 = _T_6310 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6294 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_20 = _T_6294 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6278 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_20 = _T_6278 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6262 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_20 = _T_6262 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6246 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_20 = _T_6246 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6230 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_20 = _T_6230 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6214 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_20 = _T_6214 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6198 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_20 = _T_6198 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6182 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_20_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_20 = _T_6182 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_20 = {stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,stateMatchVec_2_20,
    stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_20 = {stateMatchVec_12_20,stateMatchVec_11_20,stateMatchVec_10_20,stateMatchVec_9_20,
    stateMatchVec_8_20,stateMatchVec_7_20,stateMatchVec_6_20,stateMatch_lo_20}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_20 = |_stateMatch_T_20; // @[StatusArray.scala 137:52]
  wire  updateVal_20_srcState_0 = updateVec_20_0 & io_update_0_data_srcState_0 | updateVec_20_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6414 = updateValid_20 ? updateVal_20_srcState_0 : statusArray_20_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_20_srcState_0 = stateWakeupEn_0_20 | _T_6414; // @[StatusArray.scala 241:50]
  wire  readyVecNext_20 = &statusArrayNext_20_srcState_0 & readyVecNext_scheduledCond_20 & readyVecNext_blockedCond_20; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_108 = io_issueGranted_1_valid & io_issueGranted_1_bits[21]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_106 = io_issueGranted_0_valid & io_issueGranted_0_bits[21]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_109 = {_hasIssued_T_108,_hasIssued_T_106}; // @[StatusArray.scala 183:83]
  wire  hasIssued_21 = |_hasIssued_T_109; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_21 = _T_992 & ~_T_998; // @[StatusArray.scala 184:38]
  wire  noCredit_21 = statusArray_21_valid & statusArray_21_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_21 = statusArray_21_scheduled & ~deqNotGranted_21 & ~noCredit_21; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_21_scheduled = updateValid_21 ? 1'h0 : hasIssued_21 | keepScheduled_21; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_21 = ~statusArrayNext_21_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_1000 = mask_21_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1001 = mask_21_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1004 = _T_1000 | _T_1001; // @[Mux.scala 27:73]
  wire [2:0] _T_1002 = mask_21_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1005 = _T_1004 | _T_1002; // @[Mux.scala 27:73]
  wire [2:0] _T_1003 = mask_21_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1006 = _T_1005 | _T_1003; // @[Mux.scala 27:73]
  wire  updateVal_21_blocked = updateVec_21_0 & io_update_0_data_blocked | updateVec_21_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_21_blocked_T = updateValid_21 ? updateVal_21_blocked : statusArray_21_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1212 = updateVec_21_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1213 = updateVec_21_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_21_waitForRobIdx_value = _updateStatus_T_1212 | _updateStatus_T_1213; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_21_waitForRobIdx_value = updateValid_21 ? updateVal_21_waitForRobIdx_value :
    statusArray_21_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_191 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_21_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_192 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_191; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_189 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_21_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_190 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_189; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_193 = {_storeAddrWaitforIsIssuing_T_192,_storeAddrWaitforIsIssuing_T_190}; // @[StatusArray.scala 202:11]
  wire  _GEN_193 = updateValid_21 ? 1'h0 : statusArray_21_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_21_waitForStoreData = deqNotGranted_21 & _T_1006 == 3'h2 | _GEN_193; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_21_strictWait = updateVec_21_0 & io_update_0_data_strictWait | updateVec_21_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_21_strictWait = updateValid_21 ? updateVal_21_strictWait : statusArray_21_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_21 = |_storeAddrWaitforIsIssuing_T_193 & ~statusArrayNext_21_waitForStoreData & ~
    statusArrayNext_21_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_21_blocked_T_1 = ~storeAddrWaitforIsIssuing_21; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_21_blocked_T_2 = _statusArrayNext_21_blocked_T & _statusArrayNext_21_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_1007 = mask_21_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1009 = mask_21_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1012 = _T_1007 | _T_1009; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_21_waitForSqIdx_value = deqNotGranted_21 & _T_1006 == 3'h2 ? _T_1012 :
    statusArray_21_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_128 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_21_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_129 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_128; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_126 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_21_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_127 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_126; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_130 = {_storeDataWaitforIsIssuing_T_129,_storeDataWaitforIsIssuing_T_127}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_21 = |_storeDataWaitforIsIssuing_T_130 & statusArrayNext_21_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_21_blocked_T_3 = ~storeDataWaitforIsIssuing_21; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_21_blocked_T_4 = _statusArrayNext_21_blocked_T_2 & _statusArrayNext_21_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_21_sqIdx_flag = updateVec_21_0 & io_update_0_data_sqIdx_flag | updateVec_21_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_21_sqIdx_flag = updateValid_21 ? updateVal_21_sqIdx_flag : statusArray_21_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_21 = statusArrayNext_21_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1200 = updateVec_21_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1201 = updateVec_21_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_21_sqIdx_value = _updateStatus_T_1200 | _updateStatus_T_1201; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_21_sqIdx_value = updateValid_21 ? updateVal_21_sqIdx_value : statusArray_21_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_21 = statusArrayNext_21_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_21 = blockNotReleased_differentFlag_21 ^ blockNotReleased_compare_21; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_21_blocked_T_5 = _statusArrayNext_21_blocked_T_4 & blockNotReleased_21; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_21_blocked = deqNotGranted_21 & _T_1006 == 3'h2 | _statusArrayNext_21_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_21 = ~statusArrayNext_21_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1233 = updateVec_21_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1234 = updateVec_21_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_21_psrc_0 = _updateStatus_T_1233 | _updateStatus_T_1234; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_21_psrc_0 = updateValid_21 ? updateVal_21_psrc_0 : statusArray_21_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6627 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_21 = _T_6627 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6611 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_21 = _T_6611 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6595 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_21 = _T_6595 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6579 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_21 = _T_6579 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6563 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_21 = _T_6563 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6547 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_21 = _T_6547 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6531 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_21 = _T_6531 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6515 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_21 = _T_6515 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6499 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_21 = _T_6499 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6483 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_21 = _T_6483 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6467 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_21 = _T_6467 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6451 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_21 = _T_6451 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6435 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_21_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_21 = _T_6435 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_21 = {stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,stateMatchVec_2_21,
    stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_21 = {stateMatchVec_12_21,stateMatchVec_11_21,stateMatchVec_10_21,stateMatchVec_9_21,
    stateMatchVec_8_21,stateMatchVec_7_21,stateMatchVec_6_21,stateMatch_lo_21}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_21 = |_stateMatch_T_21; // @[StatusArray.scala 137:52]
  wire  updateVal_21_srcState_0 = updateVec_21_0 & io_update_0_data_srcState_0 | updateVec_21_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6667 = updateValid_21 ? updateVal_21_srcState_0 : statusArray_21_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_21_srcState_0 = stateWakeupEn_0_21 | _T_6667; // @[StatusArray.scala 241:50]
  wire  readyVecNext_21 = &statusArrayNext_21_srcState_0 & readyVecNext_scheduledCond_21 & readyVecNext_blockedCond_21; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_113 = io_issueGranted_1_valid & io_issueGranted_1_bits[22]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_111 = io_issueGranted_0_valid & io_issueGranted_0_bits[22]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_114 = {_hasIssued_T_113,_hasIssued_T_111}; // @[StatusArray.scala 183:83]
  wire  hasIssued_22 = |_hasIssued_T_114; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_22 = _T_1034 & ~_T_1040; // @[StatusArray.scala 184:38]
  wire  noCredit_22 = statusArray_22_valid & statusArray_22_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_22 = statusArray_22_scheduled & ~deqNotGranted_22 & ~noCredit_22; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_22_scheduled = updateValid_22 ? 1'h0 : hasIssued_22 | keepScheduled_22; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_22 = ~statusArrayNext_22_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_1042 = mask_22_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1043 = mask_22_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1046 = _T_1042 | _T_1043; // @[Mux.scala 27:73]
  wire [2:0] _T_1044 = mask_22_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1047 = _T_1046 | _T_1044; // @[Mux.scala 27:73]
  wire [2:0] _T_1045 = mask_22_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1048 = _T_1047 | _T_1045; // @[Mux.scala 27:73]
  wire  updateVal_22_blocked = updateVec_22_0 & io_update_0_data_blocked | updateVec_22_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_22_blocked_T = updateValid_22 ? updateVal_22_blocked : statusArray_22_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1269 = updateVec_22_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1270 = updateVec_22_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_22_waitForRobIdx_value = _updateStatus_T_1269 | _updateStatus_T_1270; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_22_waitForRobIdx_value = updateValid_22 ? updateVal_22_waitForRobIdx_value :
    statusArray_22_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_200 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_22_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_201 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_200; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_198 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_22_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_199 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_198; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_202 = {_storeAddrWaitforIsIssuing_T_201,_storeAddrWaitforIsIssuing_T_199}; // @[StatusArray.scala 202:11]
  wire  _GEN_201 = updateValid_22 ? 1'h0 : statusArray_22_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_22_waitForStoreData = deqNotGranted_22 & _T_1048 == 3'h2 | _GEN_201; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_22_strictWait = updateVec_22_0 & io_update_0_data_strictWait | updateVec_22_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_22_strictWait = updateValid_22 ? updateVal_22_strictWait : statusArray_22_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_22 = |_storeAddrWaitforIsIssuing_T_202 & ~statusArrayNext_22_waitForStoreData & ~
    statusArrayNext_22_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_22_blocked_T_1 = ~storeAddrWaitforIsIssuing_22; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_22_blocked_T_2 = _statusArrayNext_22_blocked_T & _statusArrayNext_22_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_1049 = mask_22_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1051 = mask_22_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1054 = _T_1049 | _T_1051; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_22_waitForSqIdx_value = deqNotGranted_22 & _T_1048 == 3'h2 ? _T_1054 :
    statusArray_22_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_134 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_22_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_135 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_134; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_132 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_22_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_133 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_132; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_136 = {_storeDataWaitforIsIssuing_T_135,_storeDataWaitforIsIssuing_T_133}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_22 = |_storeDataWaitforIsIssuing_T_136 & statusArrayNext_22_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_22_blocked_T_3 = ~storeDataWaitforIsIssuing_22; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_22_blocked_T_4 = _statusArrayNext_22_blocked_T_2 & _statusArrayNext_22_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_22_sqIdx_flag = updateVec_22_0 & io_update_0_data_sqIdx_flag | updateVec_22_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_22_sqIdx_flag = updateValid_22 ? updateVal_22_sqIdx_flag : statusArray_22_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_22 = statusArrayNext_22_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1257 = updateVec_22_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1258 = updateVec_22_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_22_sqIdx_value = _updateStatus_T_1257 | _updateStatus_T_1258; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_22_sqIdx_value = updateValid_22 ? updateVal_22_sqIdx_value : statusArray_22_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_22 = statusArrayNext_22_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_22 = blockNotReleased_differentFlag_22 ^ blockNotReleased_compare_22; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_22_blocked_T_5 = _statusArrayNext_22_blocked_T_4 & blockNotReleased_22; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_22_blocked = deqNotGranted_22 & _T_1048 == 3'h2 | _statusArrayNext_22_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_22 = ~statusArrayNext_22_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1290 = updateVec_22_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1291 = updateVec_22_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_22_psrc_0 = _updateStatus_T_1290 | _updateStatus_T_1291; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_22_psrc_0 = updateValid_22 ? updateVal_22_psrc_0 : statusArray_22_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_6880 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_22 = _T_6880 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6864 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_22 = _T_6864 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6848 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_22 = _T_6848 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6832 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_22 = _T_6832 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6816 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_22 = _T_6816 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6800 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_22 = _T_6800 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6784 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_22 = _T_6784 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6768 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_22 = _T_6768 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6752 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_22 = _T_6752 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6736 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_22 = _T_6736 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6720 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_22 = _T_6720 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6704 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_22 = _T_6704 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6688 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_22_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_22 = _T_6688 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_22 = {stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,stateMatchVec_2_22,
    stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_22 = {stateMatchVec_12_22,stateMatchVec_11_22,stateMatchVec_10_22,stateMatchVec_9_22,
    stateMatchVec_8_22,stateMatchVec_7_22,stateMatchVec_6_22,stateMatch_lo_22}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_22 = |_stateMatch_T_22; // @[StatusArray.scala 137:52]
  wire  updateVal_22_srcState_0 = updateVec_22_0 & io_update_0_data_srcState_0 | updateVec_22_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_6920 = updateValid_22 ? updateVal_22_srcState_0 : statusArray_22_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_22_srcState_0 = stateWakeupEn_0_22 | _T_6920; // @[StatusArray.scala 241:50]
  wire  readyVecNext_22 = &statusArrayNext_22_srcState_0 & readyVecNext_scheduledCond_22 & readyVecNext_blockedCond_22; // @[StatusArray.scala 65:78]
  wire  _hasIssued_T_118 = io_issueGranted_1_valid & io_issueGranted_1_bits[23]; // @[StatusArray.scala 183:66]
  wire  _hasIssued_T_116 = io_issueGranted_0_valid & io_issueGranted_0_bits[23]; // @[StatusArray.scala 183:66]
  wire [1:0] _hasIssued_T_119 = {_hasIssued_T_118,_hasIssued_T_116}; // @[StatusArray.scala 183:83]
  wire  hasIssued_23 = |_hasIssued_T_119; // @[StatusArray.scala 183:90]
  wire  deqNotGranted_23 = _T_1076 & ~_T_1082; // @[StatusArray.scala 184:38]
  wire  noCredit_23 = statusArray_23_valid & statusArray_23_credit == 4'h1; // @[StatusArray.scala 188:35]
  wire  keepScheduled_23 = statusArray_23_scheduled & ~deqNotGranted_23 & ~noCredit_23; // @[StatusArray.scala 189:62]
  wire  statusArrayNext_23_scheduled = updateValid_23 ? 1'h0 : hasIssued_23 | keepScheduled_23; // @[StatusArray.scala 190:34]
  wire  readyVecNext_scheduledCond_23 = ~statusArrayNext_23_scheduled; // @[StatusArray.scala 61:54]
  wire [2:0] _T_1084 = mask_23_0 ? io_deqResp_0_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1085 = mask_23_1 ? io_deqResp_1_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1088 = _T_1084 | _T_1085; // @[Mux.scala 27:73]
  wire [2:0] _T_1086 = mask_23_2 ? io_deqResp_2_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1089 = _T_1088 | _T_1086; // @[Mux.scala 27:73]
  wire [2:0] _T_1087 = mask_23_3 ? io_deqResp_3_bits_resptype : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_1090 = _T_1089 | _T_1087; // @[Mux.scala 27:73]
  wire  updateVal_23_blocked = updateVec_23_0 & io_update_0_data_blocked | updateVec_23_1 & io_update_1_data_blocked; // @[Mux.scala 27:73]
  wire  _statusArrayNext_23_blocked_T = updateValid_23 ? updateVal_23_blocked : statusArray_23_blocked; // @[StatusArray.scala 207:32]
  wire [6:0] _updateStatus_T_1326 = updateVec_23_0 ? io_update_0_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1327 = updateVec_23_1 ? io_update_1_data_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_23_waitForRobIdx_value = _updateStatus_T_1326 | _updateStatus_T_1327; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_23_waitForRobIdx_value = updateValid_23 ? updateVal_23_waitForRobIdx_value :
    statusArray_23_waitForRobIdx_value; // @[StatusArray.scala 211:28 214:34]
  wire  _storeAddrWaitforIsIssuing_T_209 = io_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value ==
    statusArrayNext_23_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_210 = io_memWaitUpdateReq_staIssue_1_valid & _storeAddrWaitforIsIssuing_T_209; // @[StatusArray.scala 200:47]
  wire  _storeAddrWaitforIsIssuing_T_207 = io_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value ==
    statusArrayNext_23_waitForRobIdx_value; // @[StatusArray.scala 201:63]
  wire  _storeAddrWaitforIsIssuing_T_208 = io_memWaitUpdateReq_staIssue_0_valid & _storeAddrWaitforIsIssuing_T_207; // @[StatusArray.scala 200:47]
  wire [1:0] _storeAddrWaitforIsIssuing_T_211 = {_storeAddrWaitforIsIssuing_T_210,_storeAddrWaitforIsIssuing_T_208}; // @[StatusArray.scala 202:11]
  wire  _GEN_209 = updateValid_23 ? 1'h0 : statusArray_23_waitForStoreData; // @[StatusArray.scala 211:28 213:37]
  wire  statusArrayNext_23_waitForStoreData = deqNotGranted_23 & _T_1090 == 3'h2 | _GEN_209; // @[StatusArray.scala 217:74 220:37]
  wire  updateVal_23_strictWait = updateVec_23_0 & io_update_0_data_strictWait | updateVec_23_1 &
    io_update_1_data_strictWait; // @[Mux.scala 27:73]
  wire  statusArrayNext_23_strictWait = updateValid_23 ? updateVal_23_strictWait : statusArray_23_strictWait; // @[StatusArray.scala 211:28 212:31]
  wire  storeAddrWaitforIsIssuing_23 = |_storeAddrWaitforIsIssuing_T_211 & ~statusArrayNext_23_waitForStoreData & ~
    statusArrayNext_23_strictWait; // @[StatusArray.scala 202:54]
  wire  _statusArrayNext_23_blocked_T_1 = ~storeAddrWaitforIsIssuing_23; // @[StatusArray.scala 208:9]
  wire  _statusArrayNext_23_blocked_T_2 = _statusArrayNext_23_blocked_T & _statusArrayNext_23_blocked_T_1; // @[StatusArray.scala 207:87]
  wire [4:0] _T_1091 = mask_23_0 ? io_deqResp_0_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1093 = mask_23_2 ? io_deqResp_2_bits_dataInvalidSqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_1096 = _T_1091 | _T_1093; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_23_waitForSqIdx_value = deqNotGranted_23 & _T_1090 == 3'h2 ? _T_1096 :
    statusArray_23_waitForSqIdx_value; // @[StatusArray.scala 217:74 219:33]
  wire  _storeDataWaitforIsIssuing_T_140 = io_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value ==
    statusArrayNext_23_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_141 = io_memWaitUpdateReq_stdIssue_1_valid & _storeDataWaitforIsIssuing_T_140; // @[StatusArray.scala 204:47]
  wire  _storeDataWaitforIsIssuing_T_138 = io_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value ==
    statusArrayNext_23_waitForSqIdx_value; // @[StatusArray.scala 205:62]
  wire  _storeDataWaitforIsIssuing_T_139 = io_memWaitUpdateReq_stdIssue_0_valid & _storeDataWaitforIsIssuing_T_138; // @[StatusArray.scala 204:47]
  wire [1:0] _storeDataWaitforIsIssuing_T_142 = {_storeDataWaitforIsIssuing_T_141,_storeDataWaitforIsIssuing_T_139}; // @[StatusArray.scala 206:11]
  wire  storeDataWaitforIsIssuing_23 = |_storeDataWaitforIsIssuing_T_142 & statusArrayNext_23_waitForStoreData; // @[StatusArray.scala 206:22]
  wire  _statusArrayNext_23_blocked_T_3 = ~storeDataWaitforIsIssuing_23; // @[StatusArray.scala 209:9]
  wire  _statusArrayNext_23_blocked_T_4 = _statusArrayNext_23_blocked_T_2 & _statusArrayNext_23_blocked_T_3; // @[StatusArray.scala 208:36]
  wire  updateVal_23_sqIdx_flag = updateVec_23_0 & io_update_0_data_sqIdx_flag | updateVec_23_1 &
    io_update_1_data_sqIdx_flag; // @[Mux.scala 27:73]
  wire  statusArrayNext_23_sqIdx_flag = updateValid_23 ? updateVal_23_sqIdx_flag : statusArray_23_sqIdx_flag; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_differentFlag_23 = statusArrayNext_23_sqIdx_flag ^ io_stIssuePtr_flag; // @[CircularQueuePtr.scala 85:35]
  wire [4:0] _updateStatus_T_1314 = updateVec_23_0 ? io_update_0_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_1315 = updateVec_23_1 ? io_update_1_data_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_23_sqIdx_value = _updateStatus_T_1314 | _updateStatus_T_1315; // @[Mux.scala 27:73]
  wire [4:0] statusArrayNext_23_sqIdx_value = updateValid_23 ? updateVal_23_sqIdx_value : statusArray_23_sqIdx_value; // @[StatusArray.scala 251:28]
  wire  blockNotReleased_compare_23 = statusArrayNext_23_sqIdx_value > io_stIssuePtr_value; // @[CircularQueuePtr.scala 86:30]
  wire  blockNotReleased_23 = blockNotReleased_differentFlag_23 ^ blockNotReleased_compare_23; // @[CircularQueuePtr.scala 87:19]
  wire  _statusArrayNext_23_blocked_T_5 = _statusArrayNext_23_blocked_T_4 & blockNotReleased_23; // @[StatusArray.scala 209:36]
  wire  statusArrayNext_23_blocked = deqNotGranted_23 & _T_1090 == 3'h2 | _statusArrayNext_23_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
  wire  readyVecNext_blockedCond_23 = ~statusArrayNext_23_blocked; // @[StatusArray.scala 62:48]
  wire [6:0] _updateStatus_T_1347 = updateVec_23_0 ? io_update_0_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1348 = updateVec_23_1 ? io_update_1_data_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_23_psrc_0 = _updateStatus_T_1347 | _updateStatus_T_1348; // @[Mux.scala 27:73]
  wire [6:0] statusArrayNext_23_psrc_0 = updateValid_23 ? updateVal_23_psrc_0 : statusArray_23_psrc_0; // @[StatusArray.scala 248:27]
  wire  _T_7133 = io_wakeup_12_valid & io_wakeup_12_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_12_23 = _T_7133 & io_wakeup_12_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7117 = io_wakeup_11_valid & io_wakeup_11_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_11_23 = _T_7117 & io_wakeup_11_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7101 = io_wakeup_10_valid & io_wakeup_10_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_10_23 = _T_7101 & io_wakeup_10_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7085 = io_wakeup_9_valid & io_wakeup_9_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_9_23 = _T_7085 & io_wakeup_9_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7069 = io_wakeup_8_valid & io_wakeup_8_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_8_23 = _T_7069 & io_wakeup_8_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7053 = io_wakeup_7_valid & io_wakeup_7_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_7_23 = _T_7053 & io_wakeup_7_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7037 = io_wakeup_6_valid & io_wakeup_6_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_6_23 = _T_7037 & io_wakeup_6_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7021 = io_wakeup_5_valid & io_wakeup_5_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_5_23 = _T_7021 & io_wakeup_5_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_7005 = io_wakeup_4_valid & io_wakeup_4_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_4_23 = _T_7005 & io_wakeup_4_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6989 = io_wakeup_3_valid & io_wakeup_3_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_3_23 = _T_6989 & io_wakeup_3_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6973 = io_wakeup_2_valid & io_wakeup_2_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_2_23 = _T_6973 & io_wakeup_2_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6957 = io_wakeup_1_valid & io_wakeup_1_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_1_23 = _T_6957 & io_wakeup_1_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire  _T_6941 = io_wakeup_0_valid & io_wakeup_0_bits_pdest == statusArrayNext_23_psrc_0; // @[StatusArray.scala 122:32]
  wire  stateMatchVec_0_23 = _T_6941 & io_wakeup_0_bits_ctrl_rfWen; // @[StatusArray.scala 131:34]
  wire [5:0] stateMatch_lo_23 = {stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,stateMatchVec_2_23,
    stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 137:45]
  wire [12:0] _stateMatch_T_23 = {stateMatchVec_12_23,stateMatchVec_11_23,stateMatchVec_10_23,stateMatchVec_9_23,
    stateMatchVec_8_23,stateMatchVec_7_23,stateMatchVec_6_23,stateMatch_lo_23}; // @[StatusArray.scala 137:45]
  wire  stateWakeupEn_0_23 = |_stateMatch_T_23; // @[StatusArray.scala 137:52]
  wire  updateVal_23_srcState_0 = updateVec_23_0 & io_update_0_data_srcState_0 | updateVec_23_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_7173 = updateValid_23 ? updateVal_23_srcState_0 : statusArray_23_srcState_0; // @[StatusArray.scala 241:56]
  wire  statusArrayNext_23_srcState_0 = stateWakeupEn_0_23 | _T_7173; // @[StatusArray.scala 241:50]
  wire  readyVecNext_23 = &statusArrayNext_23_srcState_0 & readyVecNext_scheduledCond_23 & readyVecNext_blockedCond_23; // @[StatusArray.scala 65:78]
  wire [6:0] _updateStatus_T_27 = updateVec__0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_28 = updateVec__1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_0_robIdx_value = _updateStatus_T_27 | _updateStatus_T_28; // @[Mux.scala 27:73]
  wire  updateVal_0_robIdx_flag = updateVec__0 & io_update_0_data_robIdx_flag | updateVec__1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_33 = updateVec__0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_34 = updateVec__1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_0 = _updateStatus_T_33 | _updateStatus_T_34; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_84 = updateVec_1_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_85 = updateVec_1_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_1_robIdx_value = _updateStatus_T_84 | _updateStatus_T_85; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_90 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_91 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_90 | _updateStatus_T_91; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_141 = updateVec_2_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_142 = updateVec_2_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_2_robIdx_value = _updateStatus_T_141 | _updateStatus_T_142; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_147 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_148 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_147 | _updateStatus_T_148; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_198 = updateVec_3_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_199 = updateVec_3_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_3_robIdx_value = _updateStatus_T_198 | _updateStatus_T_199; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_204 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_205 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_204 | _updateStatus_T_205; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_255 = updateVec_4_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_256 = updateVec_4_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_4_robIdx_value = _updateStatus_T_255 | _updateStatus_T_256; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_261 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_262 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_261 | _updateStatus_T_262; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_312 = updateVec_5_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_313 = updateVec_5_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_5_robIdx_value = _updateStatus_T_312 | _updateStatus_T_313; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_318 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_319 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_318 | _updateStatus_T_319; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_369 = updateVec_6_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_370 = updateVec_6_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_6_robIdx_value = _updateStatus_T_369 | _updateStatus_T_370; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_375 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_376 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_375 | _updateStatus_T_376; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_426 = updateVec_7_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_427 = updateVec_7_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_7_robIdx_value = _updateStatus_T_426 | _updateStatus_T_427; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_432 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_433 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_432 | _updateStatus_T_433; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_483 = updateVec_8_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_484 = updateVec_8_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_8_robIdx_value = _updateStatus_T_483 | _updateStatus_T_484; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_489 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_490 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_489 | _updateStatus_T_490; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_540 = updateVec_9_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_541 = updateVec_9_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_9_robIdx_value = _updateStatus_T_540 | _updateStatus_T_541; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_546 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_547 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_546 | _updateStatus_T_547; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_597 = updateVec_10_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_598 = updateVec_10_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_10_robIdx_value = _updateStatus_T_597 | _updateStatus_T_598; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_603 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_604 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_603 | _updateStatus_T_604; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_654 = updateVec_11_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_655 = updateVec_11_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_11_robIdx_value = _updateStatus_T_654 | _updateStatus_T_655; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_660 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_661 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_660 | _updateStatus_T_661; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_711 = updateVec_12_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_712 = updateVec_12_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_12_robIdx_value = _updateStatus_T_711 | _updateStatus_T_712; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_717 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_718 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_717 | _updateStatus_T_718; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_768 = updateVec_13_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_769 = updateVec_13_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_13_robIdx_value = _updateStatus_T_768 | _updateStatus_T_769; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_774 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_775 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_774 | _updateStatus_T_775; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_825 = updateVec_14_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_826 = updateVec_14_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_14_robIdx_value = _updateStatus_T_825 | _updateStatus_T_826; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_831 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_832 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_831 | _updateStatus_T_832; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_882 = updateVec_15_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_883 = updateVec_15_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_15_robIdx_value = _updateStatus_T_882 | _updateStatus_T_883; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_888 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_889 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_888 | _updateStatus_T_889; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_939 = updateVec_16_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_940 = updateVec_16_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_16_robIdx_value = _updateStatus_T_939 | _updateStatus_T_940; // @[Mux.scala 27:73]
  wire  updateVal_16_robIdx_flag = updateVec_16_0 & io_update_0_data_robIdx_flag | updateVec_16_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_945 = updateVec_16_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_946 = updateVec_16_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_16_srcType_0 = _updateStatus_T_945 | _updateStatus_T_946; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_996 = updateVec_17_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_997 = updateVec_17_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_17_robIdx_value = _updateStatus_T_996 | _updateStatus_T_997; // @[Mux.scala 27:73]
  wire  updateVal_17_robIdx_flag = updateVec_17_0 & io_update_0_data_robIdx_flag | updateVec_17_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1002 = updateVec_17_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1003 = updateVec_17_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_17_srcType_0 = _updateStatus_T_1002 | _updateStatus_T_1003; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1053 = updateVec_18_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1054 = updateVec_18_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_18_robIdx_value = _updateStatus_T_1053 | _updateStatus_T_1054; // @[Mux.scala 27:73]
  wire  updateVal_18_robIdx_flag = updateVec_18_0 & io_update_0_data_robIdx_flag | updateVec_18_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1059 = updateVec_18_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1060 = updateVec_18_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_18_srcType_0 = _updateStatus_T_1059 | _updateStatus_T_1060; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1110 = updateVec_19_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1111 = updateVec_19_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_19_robIdx_value = _updateStatus_T_1110 | _updateStatus_T_1111; // @[Mux.scala 27:73]
  wire  updateVal_19_robIdx_flag = updateVec_19_0 & io_update_0_data_robIdx_flag | updateVec_19_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1116 = updateVec_19_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1117 = updateVec_19_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_19_srcType_0 = _updateStatus_T_1116 | _updateStatus_T_1117; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1167 = updateVec_20_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1168 = updateVec_20_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_20_robIdx_value = _updateStatus_T_1167 | _updateStatus_T_1168; // @[Mux.scala 27:73]
  wire  updateVal_20_robIdx_flag = updateVec_20_0 & io_update_0_data_robIdx_flag | updateVec_20_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1173 = updateVec_20_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1174 = updateVec_20_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_20_srcType_0 = _updateStatus_T_1173 | _updateStatus_T_1174; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1224 = updateVec_21_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1225 = updateVec_21_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_21_robIdx_value = _updateStatus_T_1224 | _updateStatus_T_1225; // @[Mux.scala 27:73]
  wire  updateVal_21_robIdx_flag = updateVec_21_0 & io_update_0_data_robIdx_flag | updateVec_21_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1230 = updateVec_21_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1231 = updateVec_21_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_21_srcType_0 = _updateStatus_T_1230 | _updateStatus_T_1231; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1281 = updateVec_22_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1282 = updateVec_22_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_22_robIdx_value = _updateStatus_T_1281 | _updateStatus_T_1282; // @[Mux.scala 27:73]
  wire  updateVal_22_robIdx_flag = updateVec_22_0 & io_update_0_data_robIdx_flag | updateVec_22_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1287 = updateVec_22_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1288 = updateVec_22_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_22_srcType_0 = _updateStatus_T_1287 | _updateStatus_T_1288; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1338 = updateVec_23_0 ? io_update_0_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _updateStatus_T_1339 = updateVec_23_1 ? io_update_1_data_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] updateVal_23_robIdx_value = _updateStatus_T_1338 | _updateStatus_T_1339; // @[Mux.scala 27:73]
  wire  updateVal_23_robIdx_flag = updateVec_23_0 & io_update_0_data_robIdx_flag | updateVec_23_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1344 = updateVec_23_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_1345 = updateVec_23_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_23_srcType_0 = _updateStatus_T_1344 | _updateStatus_T_1345; // @[Mux.scala 27:73]
  wire [3:0] _creditStep_T_2 = statusArray_0_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1124 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1132 = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1133 = _T_1124 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0 = _T_1122 & _T_1133; // @[StatusArray.scala 134:33]
  wire  _T_1140 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1149 = _T_1140 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1 = _T_1138 & _T_1149; // @[StatusArray.scala 134:33]
  wire  _T_1156 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1165 = _T_1156 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2 = _T_1154 & _T_1165; // @[StatusArray.scala 134:33]
  wire  _T_1172 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1181 = _T_1172 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3 = _T_1170 & _T_1181; // @[StatusArray.scala 134:33]
  wire  _T_1188 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1197 = _T_1188 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4 = _T_1186 & _T_1197; // @[StatusArray.scala 134:33]
  wire  _T_1204 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1213 = _T_1204 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5 = _T_1202 & _T_1213; // @[StatusArray.scala 134:33]
  wire  _T_1220 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1229 = _T_1220 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6 = _T_1218 & _T_1229; // @[StatusArray.scala 134:33]
  wire  _T_1236 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1245 = _T_1236 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7 = _T_1234 & _T_1245; // @[StatusArray.scala 134:33]
  wire  _T_1252 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1261 = _T_1252 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8 = _T_1250 & _T_1261; // @[StatusArray.scala 134:33]
  wire  _T_1268 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1277 = _T_1268 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9 = _T_1266 & _T_1277; // @[StatusArray.scala 134:33]
  wire  _T_1284 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1293 = _T_1284 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10 = _T_1282 & _T_1293; // @[StatusArray.scala 134:33]
  wire  _T_1300 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1309 = _T_1300 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11 = _T_1298 & _T_1309; // @[StatusArray.scala 134:33]
  wire  _T_1316 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1325 = _T_1316 & _T_1132; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12 = _T_1314 & _T_1325; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo = {dataMatchVec_5,dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi = {dataMatchVec_12,dataMatchVec_11,dataMatchVec_10,dataMatchVec_9,dataMatchVec_8,
    dataMatchVec_7,dataMatchVec_6}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_5 = statusArray_1_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1377 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1385 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1386 = _T_1377 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_1 = _T_1375 & _T_1386; // @[StatusArray.scala 134:33]
  wire  _T_1393 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1402 = _T_1393 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_1 = _T_1391 & _T_1402; // @[StatusArray.scala 134:33]
  wire  _T_1409 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1418 = _T_1409 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_1 = _T_1407 & _T_1418; // @[StatusArray.scala 134:33]
  wire  _T_1425 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1434 = _T_1425 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_1 = _T_1423 & _T_1434; // @[StatusArray.scala 134:33]
  wire  _T_1441 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1450 = _T_1441 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_1 = _T_1439 & _T_1450; // @[StatusArray.scala 134:33]
  wire  _T_1457 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1466 = _T_1457 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_1 = _T_1455 & _T_1466; // @[StatusArray.scala 134:33]
  wire  _T_1473 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1482 = _T_1473 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_1 = _T_1471 & _T_1482; // @[StatusArray.scala 134:33]
  wire  _T_1489 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1498 = _T_1489 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_1 = _T_1487 & _T_1498; // @[StatusArray.scala 134:33]
  wire  _T_1505 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1514 = _T_1505 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_1 = _T_1503 & _T_1514; // @[StatusArray.scala 134:33]
  wire  _T_1521 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1530 = _T_1521 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_1 = _T_1519 & _T_1530; // @[StatusArray.scala 134:33]
  wire  _T_1537 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1546 = _T_1537 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_1 = _T_1535 & _T_1546; // @[StatusArray.scala 134:33]
  wire  _T_1553 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1562 = _T_1553 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_1 = _T_1551 & _T_1562; // @[StatusArray.scala 134:33]
  wire  _T_1569 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1578 = _T_1569 & _T_1385; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_1 = _T_1567 & _T_1578; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_1 = {dataMatchVec_5_1,dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,
    dataMatchVec_0_1}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_1 = {dataMatchVec_12_1,dataMatchVec_11_1,dataMatchVec_10_1,dataMatchVec_9_1,dataMatchVec_8_1,
    dataMatchVec_7_1,dataMatchVec_6_1}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_8 = statusArray_2_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1630 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1638 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1639 = _T_1630 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_2 = _T_1628 & _T_1639; // @[StatusArray.scala 134:33]
  wire  _T_1646 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1655 = _T_1646 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_2 = _T_1644 & _T_1655; // @[StatusArray.scala 134:33]
  wire  _T_1662 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1671 = _T_1662 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_2 = _T_1660 & _T_1671; // @[StatusArray.scala 134:33]
  wire  _T_1678 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1687 = _T_1678 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_2 = _T_1676 & _T_1687; // @[StatusArray.scala 134:33]
  wire  _T_1694 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1703 = _T_1694 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_2 = _T_1692 & _T_1703; // @[StatusArray.scala 134:33]
  wire  _T_1710 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1719 = _T_1710 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_2 = _T_1708 & _T_1719; // @[StatusArray.scala 134:33]
  wire  _T_1726 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1735 = _T_1726 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_2 = _T_1724 & _T_1735; // @[StatusArray.scala 134:33]
  wire  _T_1742 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1751 = _T_1742 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_2 = _T_1740 & _T_1751; // @[StatusArray.scala 134:33]
  wire  _T_1758 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1767 = _T_1758 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_2 = _T_1756 & _T_1767; // @[StatusArray.scala 134:33]
  wire  _T_1774 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1783 = _T_1774 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_2 = _T_1772 & _T_1783; // @[StatusArray.scala 134:33]
  wire  _T_1790 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1799 = _T_1790 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_2 = _T_1788 & _T_1799; // @[StatusArray.scala 134:33]
  wire  _T_1806 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1815 = _T_1806 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_2 = _T_1804 & _T_1815; // @[StatusArray.scala 134:33]
  wire  _T_1822 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1831 = _T_1822 & _T_1638; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_2 = _T_1820 & _T_1831; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_2 = {dataMatchVec_5_2,dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,
    dataMatchVec_0_2}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_2 = {dataMatchVec_12_2,dataMatchVec_11_2,dataMatchVec_10_2,dataMatchVec_9_2,dataMatchVec_8_2,
    dataMatchVec_7_2,dataMatchVec_6_2}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_11 = statusArray_3_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_1883 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_1891 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_1892 = _T_1883 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_3 = _T_1881 & _T_1892; // @[StatusArray.scala 134:33]
  wire  _T_1899 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1908 = _T_1899 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_3 = _T_1897 & _T_1908; // @[StatusArray.scala 134:33]
  wire  _T_1915 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1924 = _T_1915 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_3 = _T_1913 & _T_1924; // @[StatusArray.scala 134:33]
  wire  _T_1931 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1940 = _T_1931 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_3 = _T_1929 & _T_1940; // @[StatusArray.scala 134:33]
  wire  _T_1947 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1956 = _T_1947 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_3 = _T_1945 & _T_1956; // @[StatusArray.scala 134:33]
  wire  _T_1963 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1972 = _T_1963 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_3 = _T_1961 & _T_1972; // @[StatusArray.scala 134:33]
  wire  _T_1979 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_1988 = _T_1979 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_3 = _T_1977 & _T_1988; // @[StatusArray.scala 134:33]
  wire  _T_1995 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2004 = _T_1995 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_3 = _T_1993 & _T_2004; // @[StatusArray.scala 134:33]
  wire  _T_2011 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2020 = _T_2011 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_3 = _T_2009 & _T_2020; // @[StatusArray.scala 134:33]
  wire  _T_2027 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2036 = _T_2027 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_3 = _T_2025 & _T_2036; // @[StatusArray.scala 134:33]
  wire  _T_2043 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2052 = _T_2043 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_3 = _T_2041 & _T_2052; // @[StatusArray.scala 134:33]
  wire  _T_2059 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2068 = _T_2059 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_3 = _T_2057 & _T_2068; // @[StatusArray.scala 134:33]
  wire  _T_2075 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2084 = _T_2075 & _T_1891; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_3 = _T_2073 & _T_2084; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_3 = {dataMatchVec_5_3,dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,
    dataMatchVec_0_3}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_3 = {dataMatchVec_12_3,dataMatchVec_11_3,dataMatchVec_10_3,dataMatchVec_9_3,dataMatchVec_8_3,
    dataMatchVec_7_3,dataMatchVec_6_3}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_14 = statusArray_4_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2136 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2144 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2145 = _T_2136 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_4 = _T_2134 & _T_2145; // @[StatusArray.scala 134:33]
  wire  _T_2152 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2161 = _T_2152 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_4 = _T_2150 & _T_2161; // @[StatusArray.scala 134:33]
  wire  _T_2168 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2177 = _T_2168 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_4 = _T_2166 & _T_2177; // @[StatusArray.scala 134:33]
  wire  _T_2184 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2193 = _T_2184 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_4 = _T_2182 & _T_2193; // @[StatusArray.scala 134:33]
  wire  _T_2200 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2209 = _T_2200 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_4 = _T_2198 & _T_2209; // @[StatusArray.scala 134:33]
  wire  _T_2216 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2225 = _T_2216 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_4 = _T_2214 & _T_2225; // @[StatusArray.scala 134:33]
  wire  _T_2232 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2241 = _T_2232 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_4 = _T_2230 & _T_2241; // @[StatusArray.scala 134:33]
  wire  _T_2248 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2257 = _T_2248 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_4 = _T_2246 & _T_2257; // @[StatusArray.scala 134:33]
  wire  _T_2264 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2273 = _T_2264 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_4 = _T_2262 & _T_2273; // @[StatusArray.scala 134:33]
  wire  _T_2280 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2289 = _T_2280 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_4 = _T_2278 & _T_2289; // @[StatusArray.scala 134:33]
  wire  _T_2296 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2305 = _T_2296 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_4 = _T_2294 & _T_2305; // @[StatusArray.scala 134:33]
  wire  _T_2312 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2321 = _T_2312 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_4 = _T_2310 & _T_2321; // @[StatusArray.scala 134:33]
  wire  _T_2328 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2337 = _T_2328 & _T_2144; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_4 = _T_2326 & _T_2337; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_4 = {dataMatchVec_5_4,dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,
    dataMatchVec_0_4}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_4 = {dataMatchVec_12_4,dataMatchVec_11_4,dataMatchVec_10_4,dataMatchVec_9_4,dataMatchVec_8_4,
    dataMatchVec_7_4,dataMatchVec_6_4}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_17 = statusArray_5_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2389 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2397 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2398 = _T_2389 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_5 = _T_2387 & _T_2398; // @[StatusArray.scala 134:33]
  wire  _T_2405 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2414 = _T_2405 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_5 = _T_2403 & _T_2414; // @[StatusArray.scala 134:33]
  wire  _T_2421 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2430 = _T_2421 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_5 = _T_2419 & _T_2430; // @[StatusArray.scala 134:33]
  wire  _T_2437 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2446 = _T_2437 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_5 = _T_2435 & _T_2446; // @[StatusArray.scala 134:33]
  wire  _T_2453 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2462 = _T_2453 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_5 = _T_2451 & _T_2462; // @[StatusArray.scala 134:33]
  wire  _T_2469 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2478 = _T_2469 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_5 = _T_2467 & _T_2478; // @[StatusArray.scala 134:33]
  wire  _T_2485 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2494 = _T_2485 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_5 = _T_2483 & _T_2494; // @[StatusArray.scala 134:33]
  wire  _T_2501 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2510 = _T_2501 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_5 = _T_2499 & _T_2510; // @[StatusArray.scala 134:33]
  wire  _T_2517 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2526 = _T_2517 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_5 = _T_2515 & _T_2526; // @[StatusArray.scala 134:33]
  wire  _T_2533 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2542 = _T_2533 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_5 = _T_2531 & _T_2542; // @[StatusArray.scala 134:33]
  wire  _T_2549 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2558 = _T_2549 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_5 = _T_2547 & _T_2558; // @[StatusArray.scala 134:33]
  wire  _T_2565 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2574 = _T_2565 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_5 = _T_2563 & _T_2574; // @[StatusArray.scala 134:33]
  wire  _T_2581 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2590 = _T_2581 & _T_2397; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_5 = _T_2579 & _T_2590; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_5 = {dataMatchVec_5_5,dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,
    dataMatchVec_0_5}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_5 = {dataMatchVec_12_5,dataMatchVec_11_5,dataMatchVec_10_5,dataMatchVec_9_5,dataMatchVec_8_5,
    dataMatchVec_7_5,dataMatchVec_6_5}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_20 = statusArray_6_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2642 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2650 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2651 = _T_2642 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_6 = _T_2640 & _T_2651; // @[StatusArray.scala 134:33]
  wire  _T_2658 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2667 = _T_2658 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_6 = _T_2656 & _T_2667; // @[StatusArray.scala 134:33]
  wire  _T_2674 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2683 = _T_2674 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_6 = _T_2672 & _T_2683; // @[StatusArray.scala 134:33]
  wire  _T_2690 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2699 = _T_2690 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_6 = _T_2688 & _T_2699; // @[StatusArray.scala 134:33]
  wire  _T_2706 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2715 = _T_2706 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_6 = _T_2704 & _T_2715; // @[StatusArray.scala 134:33]
  wire  _T_2722 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2731 = _T_2722 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_6 = _T_2720 & _T_2731; // @[StatusArray.scala 134:33]
  wire  _T_2738 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2747 = _T_2738 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_6 = _T_2736 & _T_2747; // @[StatusArray.scala 134:33]
  wire  _T_2754 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2763 = _T_2754 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_6 = _T_2752 & _T_2763; // @[StatusArray.scala 134:33]
  wire  _T_2770 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2779 = _T_2770 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_6 = _T_2768 & _T_2779; // @[StatusArray.scala 134:33]
  wire  _T_2786 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2795 = _T_2786 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_6 = _T_2784 & _T_2795; // @[StatusArray.scala 134:33]
  wire  _T_2802 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2811 = _T_2802 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_6 = _T_2800 & _T_2811; // @[StatusArray.scala 134:33]
  wire  _T_2818 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2827 = _T_2818 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_6 = _T_2816 & _T_2827; // @[StatusArray.scala 134:33]
  wire  _T_2834 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2843 = _T_2834 & _T_2650; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_6 = _T_2832 & _T_2843; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_6 = {dataMatchVec_5_6,dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,
    dataMatchVec_0_6}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_6 = {dataMatchVec_12_6,dataMatchVec_11_6,dataMatchVec_10_6,dataMatchVec_9_6,dataMatchVec_8_6,
    dataMatchVec_7_6,dataMatchVec_6_6}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_23 = statusArray_7_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_2895 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_2903 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_2904 = _T_2895 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_7 = _T_2893 & _T_2904; // @[StatusArray.scala 134:33]
  wire  _T_2911 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2920 = _T_2911 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_7 = _T_2909 & _T_2920; // @[StatusArray.scala 134:33]
  wire  _T_2927 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2936 = _T_2927 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_7 = _T_2925 & _T_2936; // @[StatusArray.scala 134:33]
  wire  _T_2943 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2952 = _T_2943 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_7 = _T_2941 & _T_2952; // @[StatusArray.scala 134:33]
  wire  _T_2959 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2968 = _T_2959 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_7 = _T_2957 & _T_2968; // @[StatusArray.scala 134:33]
  wire  _T_2975 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_2984 = _T_2975 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_7 = _T_2973 & _T_2984; // @[StatusArray.scala 134:33]
  wire  _T_2991 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3000 = _T_2991 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_7 = _T_2989 & _T_3000; // @[StatusArray.scala 134:33]
  wire  _T_3007 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3016 = _T_3007 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_7 = _T_3005 & _T_3016; // @[StatusArray.scala 134:33]
  wire  _T_3023 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3032 = _T_3023 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_7 = _T_3021 & _T_3032; // @[StatusArray.scala 134:33]
  wire  _T_3039 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3048 = _T_3039 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_7 = _T_3037 & _T_3048; // @[StatusArray.scala 134:33]
  wire  _T_3055 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3064 = _T_3055 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_7 = _T_3053 & _T_3064; // @[StatusArray.scala 134:33]
  wire  _T_3071 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3080 = _T_3071 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_7 = _T_3069 & _T_3080; // @[StatusArray.scala 134:33]
  wire  _T_3087 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3096 = _T_3087 & _T_2903; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_7 = _T_3085 & _T_3096; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_7 = {dataMatchVec_5_7,dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,
    dataMatchVec_0_7}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_7 = {dataMatchVec_12_7,dataMatchVec_11_7,dataMatchVec_10_7,dataMatchVec_9_7,dataMatchVec_8_7,
    dataMatchVec_7_7,dataMatchVec_6_7}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_26 = statusArray_8_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3148 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3156 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3157 = _T_3148 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_8 = _T_3146 & _T_3157; // @[StatusArray.scala 134:33]
  wire  _T_3164 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3173 = _T_3164 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_8 = _T_3162 & _T_3173; // @[StatusArray.scala 134:33]
  wire  _T_3180 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3189 = _T_3180 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_8 = _T_3178 & _T_3189; // @[StatusArray.scala 134:33]
  wire  _T_3196 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3205 = _T_3196 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_8 = _T_3194 & _T_3205; // @[StatusArray.scala 134:33]
  wire  _T_3212 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3221 = _T_3212 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_8 = _T_3210 & _T_3221; // @[StatusArray.scala 134:33]
  wire  _T_3228 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3237 = _T_3228 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_8 = _T_3226 & _T_3237; // @[StatusArray.scala 134:33]
  wire  _T_3244 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3253 = _T_3244 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_8 = _T_3242 & _T_3253; // @[StatusArray.scala 134:33]
  wire  _T_3260 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3269 = _T_3260 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_8 = _T_3258 & _T_3269; // @[StatusArray.scala 134:33]
  wire  _T_3276 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3285 = _T_3276 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_8 = _T_3274 & _T_3285; // @[StatusArray.scala 134:33]
  wire  _T_3292 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3301 = _T_3292 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_8 = _T_3290 & _T_3301; // @[StatusArray.scala 134:33]
  wire  _T_3308 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3317 = _T_3308 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_8 = _T_3306 & _T_3317; // @[StatusArray.scala 134:33]
  wire  _T_3324 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3333 = _T_3324 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_8 = _T_3322 & _T_3333; // @[StatusArray.scala 134:33]
  wire  _T_3340 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3349 = _T_3340 & _T_3156; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_8 = _T_3338 & _T_3349; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_8 = {dataMatchVec_5_8,dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,
    dataMatchVec_0_8}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_8 = {dataMatchVec_12_8,dataMatchVec_11_8,dataMatchVec_10_8,dataMatchVec_9_8,dataMatchVec_8_8,
    dataMatchVec_7_8,dataMatchVec_6_8}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_29 = statusArray_9_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3401 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3409 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3410 = _T_3401 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_9 = _T_3399 & _T_3410; // @[StatusArray.scala 134:33]
  wire  _T_3417 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3426 = _T_3417 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_9 = _T_3415 & _T_3426; // @[StatusArray.scala 134:33]
  wire  _T_3433 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3442 = _T_3433 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_9 = _T_3431 & _T_3442; // @[StatusArray.scala 134:33]
  wire  _T_3449 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3458 = _T_3449 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_9 = _T_3447 & _T_3458; // @[StatusArray.scala 134:33]
  wire  _T_3465 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3474 = _T_3465 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_9 = _T_3463 & _T_3474; // @[StatusArray.scala 134:33]
  wire  _T_3481 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3490 = _T_3481 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_9 = _T_3479 & _T_3490; // @[StatusArray.scala 134:33]
  wire  _T_3497 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3506 = _T_3497 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_9 = _T_3495 & _T_3506; // @[StatusArray.scala 134:33]
  wire  _T_3513 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3522 = _T_3513 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_9 = _T_3511 & _T_3522; // @[StatusArray.scala 134:33]
  wire  _T_3529 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3538 = _T_3529 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_9 = _T_3527 & _T_3538; // @[StatusArray.scala 134:33]
  wire  _T_3545 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3554 = _T_3545 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_9 = _T_3543 & _T_3554; // @[StatusArray.scala 134:33]
  wire  _T_3561 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3570 = _T_3561 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_9 = _T_3559 & _T_3570; // @[StatusArray.scala 134:33]
  wire  _T_3577 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3586 = _T_3577 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_9 = _T_3575 & _T_3586; // @[StatusArray.scala 134:33]
  wire  _T_3593 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3602 = _T_3593 & _T_3409; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_9 = _T_3591 & _T_3602; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_9 = {dataMatchVec_5_9,dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,
    dataMatchVec_0_9}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_9 = {dataMatchVec_12_9,dataMatchVec_11_9,dataMatchVec_10_9,dataMatchVec_9_9,dataMatchVec_8_9,
    dataMatchVec_7_9,dataMatchVec_6_9}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_32 = statusArray_10_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3654 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3662 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3663 = _T_3654 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_10 = _T_3652 & _T_3663; // @[StatusArray.scala 134:33]
  wire  _T_3670 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3679 = _T_3670 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_10 = _T_3668 & _T_3679; // @[StatusArray.scala 134:33]
  wire  _T_3686 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3695 = _T_3686 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_10 = _T_3684 & _T_3695; // @[StatusArray.scala 134:33]
  wire  _T_3702 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3711 = _T_3702 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_10 = _T_3700 & _T_3711; // @[StatusArray.scala 134:33]
  wire  _T_3718 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3727 = _T_3718 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_10 = _T_3716 & _T_3727; // @[StatusArray.scala 134:33]
  wire  _T_3734 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3743 = _T_3734 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_10 = _T_3732 & _T_3743; // @[StatusArray.scala 134:33]
  wire  _T_3750 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3759 = _T_3750 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_10 = _T_3748 & _T_3759; // @[StatusArray.scala 134:33]
  wire  _T_3766 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3775 = _T_3766 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_10 = _T_3764 & _T_3775; // @[StatusArray.scala 134:33]
  wire  _T_3782 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3791 = _T_3782 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_10 = _T_3780 & _T_3791; // @[StatusArray.scala 134:33]
  wire  _T_3798 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3807 = _T_3798 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_10 = _T_3796 & _T_3807; // @[StatusArray.scala 134:33]
  wire  _T_3814 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3823 = _T_3814 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_10 = _T_3812 & _T_3823; // @[StatusArray.scala 134:33]
  wire  _T_3830 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3839 = _T_3830 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_10 = _T_3828 & _T_3839; // @[StatusArray.scala 134:33]
  wire  _T_3846 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3855 = _T_3846 & _T_3662; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_10 = _T_3844 & _T_3855; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_10 = {dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,
    dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_10 = {dataMatchVec_12_10,dataMatchVec_11_10,dataMatchVec_10_10,dataMatchVec_9_10,
    dataMatchVec_8_10,dataMatchVec_7_10,dataMatchVec_6_10}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_35 = statusArray_11_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_3907 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_3915 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_3916 = _T_3907 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_11 = _T_3905 & _T_3916; // @[StatusArray.scala 134:33]
  wire  _T_3923 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3932 = _T_3923 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_11 = _T_3921 & _T_3932; // @[StatusArray.scala 134:33]
  wire  _T_3939 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3948 = _T_3939 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_11 = _T_3937 & _T_3948; // @[StatusArray.scala 134:33]
  wire  _T_3955 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3964 = _T_3955 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_11 = _T_3953 & _T_3964; // @[StatusArray.scala 134:33]
  wire  _T_3971 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3980 = _T_3971 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_11 = _T_3969 & _T_3980; // @[StatusArray.scala 134:33]
  wire  _T_3987 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_3996 = _T_3987 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_11 = _T_3985 & _T_3996; // @[StatusArray.scala 134:33]
  wire  _T_4003 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4012 = _T_4003 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_11 = _T_4001 & _T_4012; // @[StatusArray.scala 134:33]
  wire  _T_4019 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4028 = _T_4019 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_11 = _T_4017 & _T_4028; // @[StatusArray.scala 134:33]
  wire  _T_4035 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4044 = _T_4035 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_11 = _T_4033 & _T_4044; // @[StatusArray.scala 134:33]
  wire  _T_4051 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4060 = _T_4051 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_11 = _T_4049 & _T_4060; // @[StatusArray.scala 134:33]
  wire  _T_4067 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4076 = _T_4067 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_11 = _T_4065 & _T_4076; // @[StatusArray.scala 134:33]
  wire  _T_4083 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4092 = _T_4083 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_11 = _T_4081 & _T_4092; // @[StatusArray.scala 134:33]
  wire  _T_4099 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4108 = _T_4099 & _T_3915; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_11 = _T_4097 & _T_4108; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_11 = {dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,
    dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_11 = {dataMatchVec_12_11,dataMatchVec_11_11,dataMatchVec_10_11,dataMatchVec_9_11,
    dataMatchVec_8_11,dataMatchVec_7_11,dataMatchVec_6_11}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_38 = statusArray_12_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4160 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4168 = statusArrayNext_12_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4169 = _T_4160 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_12 = _T_4158 & _T_4169; // @[StatusArray.scala 134:33]
  wire  _T_4176 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4185 = _T_4176 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_12 = _T_4174 & _T_4185; // @[StatusArray.scala 134:33]
  wire  _T_4192 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4201 = _T_4192 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_12 = _T_4190 & _T_4201; // @[StatusArray.scala 134:33]
  wire  _T_4208 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4217 = _T_4208 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_12 = _T_4206 & _T_4217; // @[StatusArray.scala 134:33]
  wire  _T_4224 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4233 = _T_4224 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_12 = _T_4222 & _T_4233; // @[StatusArray.scala 134:33]
  wire  _T_4240 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4249 = _T_4240 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_12 = _T_4238 & _T_4249; // @[StatusArray.scala 134:33]
  wire  _T_4256 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4265 = _T_4256 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_12 = _T_4254 & _T_4265; // @[StatusArray.scala 134:33]
  wire  _T_4272 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4281 = _T_4272 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_12 = _T_4270 & _T_4281; // @[StatusArray.scala 134:33]
  wire  _T_4288 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4297 = _T_4288 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_12 = _T_4286 & _T_4297; // @[StatusArray.scala 134:33]
  wire  _T_4304 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4313 = _T_4304 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_12 = _T_4302 & _T_4313; // @[StatusArray.scala 134:33]
  wire  _T_4320 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4329 = _T_4320 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_12 = _T_4318 & _T_4329; // @[StatusArray.scala 134:33]
  wire  _T_4336 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4345 = _T_4336 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_12 = _T_4334 & _T_4345; // @[StatusArray.scala 134:33]
  wire  _T_4352 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4361 = _T_4352 & _T_4168; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_12 = _T_4350 & _T_4361; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_12 = {dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,
    dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_12 = {dataMatchVec_12_12,dataMatchVec_11_12,dataMatchVec_10_12,dataMatchVec_9_12,
    dataMatchVec_8_12,dataMatchVec_7_12,dataMatchVec_6_12}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_41 = statusArray_13_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4413 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4421 = statusArrayNext_13_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4422 = _T_4413 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_13 = _T_4411 & _T_4422; // @[StatusArray.scala 134:33]
  wire  _T_4429 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4438 = _T_4429 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_13 = _T_4427 & _T_4438; // @[StatusArray.scala 134:33]
  wire  _T_4445 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4454 = _T_4445 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_13 = _T_4443 & _T_4454; // @[StatusArray.scala 134:33]
  wire  _T_4461 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4470 = _T_4461 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_13 = _T_4459 & _T_4470; // @[StatusArray.scala 134:33]
  wire  _T_4477 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4486 = _T_4477 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_13 = _T_4475 & _T_4486; // @[StatusArray.scala 134:33]
  wire  _T_4493 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4502 = _T_4493 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_13 = _T_4491 & _T_4502; // @[StatusArray.scala 134:33]
  wire  _T_4509 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4518 = _T_4509 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_13 = _T_4507 & _T_4518; // @[StatusArray.scala 134:33]
  wire  _T_4525 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4534 = _T_4525 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_13 = _T_4523 & _T_4534; // @[StatusArray.scala 134:33]
  wire  _T_4541 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4550 = _T_4541 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_13 = _T_4539 & _T_4550; // @[StatusArray.scala 134:33]
  wire  _T_4557 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4566 = _T_4557 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_13 = _T_4555 & _T_4566; // @[StatusArray.scala 134:33]
  wire  _T_4573 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4582 = _T_4573 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_13 = _T_4571 & _T_4582; // @[StatusArray.scala 134:33]
  wire  _T_4589 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4598 = _T_4589 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_13 = _T_4587 & _T_4598; // @[StatusArray.scala 134:33]
  wire  _T_4605 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4614 = _T_4605 & _T_4421; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_13 = _T_4603 & _T_4614; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_13 = {dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,
    dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_13 = {dataMatchVec_12_13,dataMatchVec_11_13,dataMatchVec_10_13,dataMatchVec_9_13,
    dataMatchVec_8_13,dataMatchVec_7_13,dataMatchVec_6_13}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_44 = statusArray_14_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4666 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4674 = statusArrayNext_14_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4675 = _T_4666 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_14 = _T_4664 & _T_4675; // @[StatusArray.scala 134:33]
  wire  _T_4682 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4691 = _T_4682 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_14 = _T_4680 & _T_4691; // @[StatusArray.scala 134:33]
  wire  _T_4698 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4707 = _T_4698 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_14 = _T_4696 & _T_4707; // @[StatusArray.scala 134:33]
  wire  _T_4714 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4723 = _T_4714 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_14 = _T_4712 & _T_4723; // @[StatusArray.scala 134:33]
  wire  _T_4730 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4739 = _T_4730 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_14 = _T_4728 & _T_4739; // @[StatusArray.scala 134:33]
  wire  _T_4746 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4755 = _T_4746 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_14 = _T_4744 & _T_4755; // @[StatusArray.scala 134:33]
  wire  _T_4762 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4771 = _T_4762 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_14 = _T_4760 & _T_4771; // @[StatusArray.scala 134:33]
  wire  _T_4778 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4787 = _T_4778 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_14 = _T_4776 & _T_4787; // @[StatusArray.scala 134:33]
  wire  _T_4794 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4803 = _T_4794 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_14 = _T_4792 & _T_4803; // @[StatusArray.scala 134:33]
  wire  _T_4810 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4819 = _T_4810 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_14 = _T_4808 & _T_4819; // @[StatusArray.scala 134:33]
  wire  _T_4826 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4835 = _T_4826 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_14 = _T_4824 & _T_4835; // @[StatusArray.scala 134:33]
  wire  _T_4842 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4851 = _T_4842 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_14 = _T_4840 & _T_4851; // @[StatusArray.scala 134:33]
  wire  _T_4858 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4867 = _T_4858 & _T_4674; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_14 = _T_4856 & _T_4867; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_14 = {dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,
    dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_14 = {dataMatchVec_12_14,dataMatchVec_11_14,dataMatchVec_10_14,dataMatchVec_9_14,
    dataMatchVec_8_14,dataMatchVec_7_14,dataMatchVec_6_14}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_47 = statusArray_15_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_4919 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_4927 = statusArrayNext_15_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_4928 = _T_4919 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_15 = _T_4917 & _T_4928; // @[StatusArray.scala 134:33]
  wire  _T_4935 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4944 = _T_4935 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_15 = _T_4933 & _T_4944; // @[StatusArray.scala 134:33]
  wire  _T_4951 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4960 = _T_4951 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_15 = _T_4949 & _T_4960; // @[StatusArray.scala 134:33]
  wire  _T_4967 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4976 = _T_4967 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_15 = _T_4965 & _T_4976; // @[StatusArray.scala 134:33]
  wire  _T_4983 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_4992 = _T_4983 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_15 = _T_4981 & _T_4992; // @[StatusArray.scala 134:33]
  wire  _T_4999 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5008 = _T_4999 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_15 = _T_4997 & _T_5008; // @[StatusArray.scala 134:33]
  wire  _T_5015 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5024 = _T_5015 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_15 = _T_5013 & _T_5024; // @[StatusArray.scala 134:33]
  wire  _T_5031 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5040 = _T_5031 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_15 = _T_5029 & _T_5040; // @[StatusArray.scala 134:33]
  wire  _T_5047 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5056 = _T_5047 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_15 = _T_5045 & _T_5056; // @[StatusArray.scala 134:33]
  wire  _T_5063 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5072 = _T_5063 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_15 = _T_5061 & _T_5072; // @[StatusArray.scala 134:33]
  wire  _T_5079 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5088 = _T_5079 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_15 = _T_5077 & _T_5088; // @[StatusArray.scala 134:33]
  wire  _T_5095 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5104 = _T_5095 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_15 = _T_5093 & _T_5104; // @[StatusArray.scala 134:33]
  wire  _T_5111 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5120 = _T_5111 & _T_4927; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_15 = _T_5109 & _T_5120; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_15 = {dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,
    dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_15 = {dataMatchVec_12_15,dataMatchVec_11_15,dataMatchVec_10_15,dataMatchVec_9_15,
    dataMatchVec_8_15,dataMatchVec_7_15,dataMatchVec_6_15}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_50 = statusArray_16_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5172 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_16_srcType_0 = updateValid_16 ? updateVal_16_srcType_0 : statusArray_16_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5180 = statusArrayNext_16_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5181 = _T_5172 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_16 = _T_5170 & _T_5181; // @[StatusArray.scala 134:33]
  wire  _T_5188 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5197 = _T_5188 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_16 = _T_5186 & _T_5197; // @[StatusArray.scala 134:33]
  wire  _T_5204 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5213 = _T_5204 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_16 = _T_5202 & _T_5213; // @[StatusArray.scala 134:33]
  wire  _T_5220 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5229 = _T_5220 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_16 = _T_5218 & _T_5229; // @[StatusArray.scala 134:33]
  wire  _T_5236 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5245 = _T_5236 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_16 = _T_5234 & _T_5245; // @[StatusArray.scala 134:33]
  wire  _T_5252 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5261 = _T_5252 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_16 = _T_5250 & _T_5261; // @[StatusArray.scala 134:33]
  wire  _T_5268 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5277 = _T_5268 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_16 = _T_5266 & _T_5277; // @[StatusArray.scala 134:33]
  wire  _T_5284 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5293 = _T_5284 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_16 = _T_5282 & _T_5293; // @[StatusArray.scala 134:33]
  wire  _T_5300 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5309 = _T_5300 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_16 = _T_5298 & _T_5309; // @[StatusArray.scala 134:33]
  wire  _T_5316 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5325 = _T_5316 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_16 = _T_5314 & _T_5325; // @[StatusArray.scala 134:33]
  wire  _T_5332 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5341 = _T_5332 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_16 = _T_5330 & _T_5341; // @[StatusArray.scala 134:33]
  wire  _T_5348 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5357 = _T_5348 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_16 = _T_5346 & _T_5357; // @[StatusArray.scala 134:33]
  wire  _T_5364 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_16_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5373 = _T_5364 & _T_5180; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_16 = _T_5362 & _T_5373; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_16 = {dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16,dataMatchVec_2_16,
    dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_16 = {dataMatchVec_12_16,dataMatchVec_11_16,dataMatchVec_10_16,dataMatchVec_9_16,
    dataMatchVec_8_16,dataMatchVec_7_16,dataMatchVec_6_16}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_53 = statusArray_17_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5425 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_17_srcType_0 = updateValid_17 ? updateVal_17_srcType_0 : statusArray_17_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5433 = statusArrayNext_17_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5434 = _T_5425 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_17 = _T_5423 & _T_5434; // @[StatusArray.scala 134:33]
  wire  _T_5441 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5450 = _T_5441 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_17 = _T_5439 & _T_5450; // @[StatusArray.scala 134:33]
  wire  _T_5457 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5466 = _T_5457 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_17 = _T_5455 & _T_5466; // @[StatusArray.scala 134:33]
  wire  _T_5473 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5482 = _T_5473 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_17 = _T_5471 & _T_5482; // @[StatusArray.scala 134:33]
  wire  _T_5489 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5498 = _T_5489 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_17 = _T_5487 & _T_5498; // @[StatusArray.scala 134:33]
  wire  _T_5505 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5514 = _T_5505 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_17 = _T_5503 & _T_5514; // @[StatusArray.scala 134:33]
  wire  _T_5521 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5530 = _T_5521 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_17 = _T_5519 & _T_5530; // @[StatusArray.scala 134:33]
  wire  _T_5537 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5546 = _T_5537 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_17 = _T_5535 & _T_5546; // @[StatusArray.scala 134:33]
  wire  _T_5553 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5562 = _T_5553 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_17 = _T_5551 & _T_5562; // @[StatusArray.scala 134:33]
  wire  _T_5569 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5578 = _T_5569 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_17 = _T_5567 & _T_5578; // @[StatusArray.scala 134:33]
  wire  _T_5585 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5594 = _T_5585 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_17 = _T_5583 & _T_5594; // @[StatusArray.scala 134:33]
  wire  _T_5601 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5610 = _T_5601 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_17 = _T_5599 & _T_5610; // @[StatusArray.scala 134:33]
  wire  _T_5617 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_17_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5626 = _T_5617 & _T_5433; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_17 = _T_5615 & _T_5626; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_17 = {dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17,dataMatchVec_2_17,
    dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_17 = {dataMatchVec_12_17,dataMatchVec_11_17,dataMatchVec_10_17,dataMatchVec_9_17,
    dataMatchVec_8_17,dataMatchVec_7_17,dataMatchVec_6_17}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_56 = statusArray_18_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5678 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_18_srcType_0 = updateValid_18 ? updateVal_18_srcType_0 : statusArray_18_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5686 = statusArrayNext_18_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5687 = _T_5678 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_18 = _T_5676 & _T_5687; // @[StatusArray.scala 134:33]
  wire  _T_5694 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5703 = _T_5694 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_18 = _T_5692 & _T_5703; // @[StatusArray.scala 134:33]
  wire  _T_5710 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5719 = _T_5710 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_18 = _T_5708 & _T_5719; // @[StatusArray.scala 134:33]
  wire  _T_5726 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5735 = _T_5726 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_18 = _T_5724 & _T_5735; // @[StatusArray.scala 134:33]
  wire  _T_5742 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5751 = _T_5742 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_18 = _T_5740 & _T_5751; // @[StatusArray.scala 134:33]
  wire  _T_5758 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5767 = _T_5758 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_18 = _T_5756 & _T_5767; // @[StatusArray.scala 134:33]
  wire  _T_5774 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5783 = _T_5774 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_18 = _T_5772 & _T_5783; // @[StatusArray.scala 134:33]
  wire  _T_5790 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5799 = _T_5790 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_18 = _T_5788 & _T_5799; // @[StatusArray.scala 134:33]
  wire  _T_5806 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5815 = _T_5806 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_18 = _T_5804 & _T_5815; // @[StatusArray.scala 134:33]
  wire  _T_5822 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5831 = _T_5822 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_18 = _T_5820 & _T_5831; // @[StatusArray.scala 134:33]
  wire  _T_5838 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5847 = _T_5838 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_18 = _T_5836 & _T_5847; // @[StatusArray.scala 134:33]
  wire  _T_5854 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5863 = _T_5854 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_18 = _T_5852 & _T_5863; // @[StatusArray.scala 134:33]
  wire  _T_5870 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_18_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5879 = _T_5870 & _T_5686; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_18 = _T_5868 & _T_5879; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_18 = {dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18,dataMatchVec_2_18,
    dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_18 = {dataMatchVec_12_18,dataMatchVec_11_18,dataMatchVec_10_18,dataMatchVec_9_18,
    dataMatchVec_8_18,dataMatchVec_7_18,dataMatchVec_6_18}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_59 = statusArray_19_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_5931 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_19_srcType_0 = updateValid_19 ? updateVal_19_srcType_0 : statusArray_19_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_5939 = statusArrayNext_19_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_5940 = _T_5931 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_19 = _T_5929 & _T_5940; // @[StatusArray.scala 134:33]
  wire  _T_5947 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5956 = _T_5947 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_19 = _T_5945 & _T_5956; // @[StatusArray.scala 134:33]
  wire  _T_5963 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5972 = _T_5963 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_19 = _T_5961 & _T_5972; // @[StatusArray.scala 134:33]
  wire  _T_5979 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_5988 = _T_5979 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_19 = _T_5977 & _T_5988; // @[StatusArray.scala 134:33]
  wire  _T_5995 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6004 = _T_5995 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_19 = _T_5993 & _T_6004; // @[StatusArray.scala 134:33]
  wire  _T_6011 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6020 = _T_6011 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_19 = _T_6009 & _T_6020; // @[StatusArray.scala 134:33]
  wire  _T_6027 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6036 = _T_6027 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_19 = _T_6025 & _T_6036; // @[StatusArray.scala 134:33]
  wire  _T_6043 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6052 = _T_6043 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_19 = _T_6041 & _T_6052; // @[StatusArray.scala 134:33]
  wire  _T_6059 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6068 = _T_6059 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_19 = _T_6057 & _T_6068; // @[StatusArray.scala 134:33]
  wire  _T_6075 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6084 = _T_6075 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_19 = _T_6073 & _T_6084; // @[StatusArray.scala 134:33]
  wire  _T_6091 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6100 = _T_6091 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_19 = _T_6089 & _T_6100; // @[StatusArray.scala 134:33]
  wire  _T_6107 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6116 = _T_6107 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_19 = _T_6105 & _T_6116; // @[StatusArray.scala 134:33]
  wire  _T_6123 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_19_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6132 = _T_6123 & _T_5939; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_19 = _T_6121 & _T_6132; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_19 = {dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19,dataMatchVec_2_19,
    dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_19 = {dataMatchVec_12_19,dataMatchVec_11_19,dataMatchVec_10_19,dataMatchVec_9_19,
    dataMatchVec_8_19,dataMatchVec_7_19,dataMatchVec_6_19}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_62 = statusArray_20_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_6184 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_20_srcType_0 = updateValid_20 ? updateVal_20_srcType_0 : statusArray_20_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6192 = statusArrayNext_20_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6193 = _T_6184 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_20 = _T_6182 & _T_6193; // @[StatusArray.scala 134:33]
  wire  _T_6200 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6209 = _T_6200 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_20 = _T_6198 & _T_6209; // @[StatusArray.scala 134:33]
  wire  _T_6216 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6225 = _T_6216 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_20 = _T_6214 & _T_6225; // @[StatusArray.scala 134:33]
  wire  _T_6232 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6241 = _T_6232 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_20 = _T_6230 & _T_6241; // @[StatusArray.scala 134:33]
  wire  _T_6248 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6257 = _T_6248 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_20 = _T_6246 & _T_6257; // @[StatusArray.scala 134:33]
  wire  _T_6264 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6273 = _T_6264 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_20 = _T_6262 & _T_6273; // @[StatusArray.scala 134:33]
  wire  _T_6280 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6289 = _T_6280 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_20 = _T_6278 & _T_6289; // @[StatusArray.scala 134:33]
  wire  _T_6296 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6305 = _T_6296 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_20 = _T_6294 & _T_6305; // @[StatusArray.scala 134:33]
  wire  _T_6312 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6321 = _T_6312 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_20 = _T_6310 & _T_6321; // @[StatusArray.scala 134:33]
  wire  _T_6328 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6337 = _T_6328 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_20 = _T_6326 & _T_6337; // @[StatusArray.scala 134:33]
  wire  _T_6344 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6353 = _T_6344 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_20 = _T_6342 & _T_6353; // @[StatusArray.scala 134:33]
  wire  _T_6360 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6369 = _T_6360 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_20 = _T_6358 & _T_6369; // @[StatusArray.scala 134:33]
  wire  _T_6376 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_20_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6385 = _T_6376 & _T_6192; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_20 = _T_6374 & _T_6385; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_20 = {dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20,dataMatchVec_2_20,
    dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_20 = {dataMatchVec_12_20,dataMatchVec_11_20,dataMatchVec_10_20,dataMatchVec_9_20,
    dataMatchVec_8_20,dataMatchVec_7_20,dataMatchVec_6_20}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_65 = statusArray_21_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_6437 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_21_srcType_0 = updateValid_21 ? updateVal_21_srcType_0 : statusArray_21_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6445 = statusArrayNext_21_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6446 = _T_6437 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_21 = _T_6435 & _T_6446; // @[StatusArray.scala 134:33]
  wire  _T_6453 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6462 = _T_6453 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_21 = _T_6451 & _T_6462; // @[StatusArray.scala 134:33]
  wire  _T_6469 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6478 = _T_6469 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_21 = _T_6467 & _T_6478; // @[StatusArray.scala 134:33]
  wire  _T_6485 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6494 = _T_6485 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_21 = _T_6483 & _T_6494; // @[StatusArray.scala 134:33]
  wire  _T_6501 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6510 = _T_6501 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_21 = _T_6499 & _T_6510; // @[StatusArray.scala 134:33]
  wire  _T_6517 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6526 = _T_6517 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_21 = _T_6515 & _T_6526; // @[StatusArray.scala 134:33]
  wire  _T_6533 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6542 = _T_6533 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_21 = _T_6531 & _T_6542; // @[StatusArray.scala 134:33]
  wire  _T_6549 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6558 = _T_6549 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_21 = _T_6547 & _T_6558; // @[StatusArray.scala 134:33]
  wire  _T_6565 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6574 = _T_6565 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_21 = _T_6563 & _T_6574; // @[StatusArray.scala 134:33]
  wire  _T_6581 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6590 = _T_6581 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_21 = _T_6579 & _T_6590; // @[StatusArray.scala 134:33]
  wire  _T_6597 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6606 = _T_6597 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_21 = _T_6595 & _T_6606; // @[StatusArray.scala 134:33]
  wire  _T_6613 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6622 = _T_6613 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_21 = _T_6611 & _T_6622; // @[StatusArray.scala 134:33]
  wire  _T_6629 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_21_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6638 = _T_6629 & _T_6445; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_21 = _T_6627 & _T_6638; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_21 = {dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21,dataMatchVec_2_21,
    dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_21 = {dataMatchVec_12_21,dataMatchVec_11_21,dataMatchVec_10_21,dataMatchVec_9_21,
    dataMatchVec_8_21,dataMatchVec_7_21,dataMatchVec_6_21}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_68 = statusArray_22_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_6690 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_22_srcType_0 = updateValid_22 ? updateVal_22_srcType_0 : statusArray_22_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6698 = statusArrayNext_22_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6699 = _T_6690 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_22 = _T_6688 & _T_6699; // @[StatusArray.scala 134:33]
  wire  _T_6706 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6715 = _T_6706 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_22 = _T_6704 & _T_6715; // @[StatusArray.scala 134:33]
  wire  _T_6722 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6731 = _T_6722 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_22 = _T_6720 & _T_6731; // @[StatusArray.scala 134:33]
  wire  _T_6738 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6747 = _T_6738 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_22 = _T_6736 & _T_6747; // @[StatusArray.scala 134:33]
  wire  _T_6754 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6763 = _T_6754 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_22 = _T_6752 & _T_6763; // @[StatusArray.scala 134:33]
  wire  _T_6770 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6779 = _T_6770 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_22 = _T_6768 & _T_6779; // @[StatusArray.scala 134:33]
  wire  _T_6786 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6795 = _T_6786 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_22 = _T_6784 & _T_6795; // @[StatusArray.scala 134:33]
  wire  _T_6802 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6811 = _T_6802 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_22 = _T_6800 & _T_6811; // @[StatusArray.scala 134:33]
  wire  _T_6818 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6827 = _T_6818 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_22 = _T_6816 & _T_6827; // @[StatusArray.scala 134:33]
  wire  _T_6834 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6843 = _T_6834 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_22 = _T_6832 & _T_6843; // @[StatusArray.scala 134:33]
  wire  _T_6850 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6859 = _T_6850 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_22 = _T_6848 & _T_6859; // @[StatusArray.scala 134:33]
  wire  _T_6866 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6875 = _T_6866 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_22 = _T_6864 & _T_6875; // @[StatusArray.scala 134:33]
  wire  _T_6882 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_22_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6891 = _T_6882 & _T_6698; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_22 = _T_6880 & _T_6891; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_22 = {dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22,dataMatchVec_2_22,
    dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_22 = {dataMatchVec_12_22,dataMatchVec_11_22,dataMatchVec_10_22,dataMatchVec_9_22,
    dataMatchVec_8_22,dataMatchVec_7_22,dataMatchVec_6_22}; // @[StatusArray.scala 138:43]
  wire [3:0] _creditStep_T_71 = statusArray_23_credit - 4'h1; // @[StatusArray.scala 227:61]
  wire  _T_6943 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire [1:0] statusArrayNext_23_srcType_0 = updateValid_23 ? updateVal_23_srcType_0 : statusArray_23_srcType_0; // @[StatusArray.scala 249:30]
  wire  _T_6951 = statusArrayNext_23_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  _T_6952 = _T_6943 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_0_23 = _T_6941 & _T_6952; // @[StatusArray.scala 134:33]
  wire  _T_6959 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6968 = _T_6959 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_1_23 = _T_6957 & _T_6968; // @[StatusArray.scala 134:33]
  wire  _T_6975 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_6984 = _T_6975 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_2_23 = _T_6973 & _T_6984; // @[StatusArray.scala 134:33]
  wire  _T_6991 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7000 = _T_6991 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_3_23 = _T_6989 & _T_7000; // @[StatusArray.scala 134:33]
  wire  _T_7007 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7016 = _T_7007 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_4_23 = _T_7005 & _T_7016; // @[StatusArray.scala 134:33]
  wire  _T_7023 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7032 = _T_7023 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_5_23 = _T_7021 & _T_7032; // @[StatusArray.scala 134:33]
  wire  _T_7039 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7048 = _T_7039 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_6_23 = _T_7037 & _T_7048; // @[StatusArray.scala 134:33]
  wire  _T_7055 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7064 = _T_7055 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_7_23 = _T_7053 & _T_7064; // @[StatusArray.scala 134:33]
  wire  _T_7071 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7080 = _T_7071 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_8_23 = _T_7069 & _T_7080; // @[StatusArray.scala 134:33]
  wire  _T_7087 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7096 = _T_7087 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_9_23 = _T_7085 & _T_7096; // @[StatusArray.scala 134:33]
  wire  _T_7103 = io_wakeup_10_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7112 = _T_7103 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_10_23 = _T_7101 & _T_7112; // @[StatusArray.scala 134:33]
  wire  _T_7119 = io_wakeup_11_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7128 = _T_7119 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_11_23 = _T_7117 & _T_7128; // @[StatusArray.scala 134:33]
  wire  _T_7135 = io_wakeup_12_bits_ctrl_rfWen & statusArrayNext_23_psrc_0 != 7'h0; // @[StatusArray.scala 124:76]
  wire  _T_7144 = _T_7135 & _T_6951; // @[StatusArray.scala 133:40]
  wire  dataMatchVec_12_23 = _T_7133 & _T_7144; // @[StatusArray.scala 134:33]
  wire [5:0] dataMatch_lo_23 = {dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23,dataMatchVec_2_23,
    dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 138:43]
  wire [6:0] dataMatch_hi_23 = {dataMatchVec_12_23,dataMatchVec_11_23,dataMatchVec_10_23,dataMatchVec_9_23,
    dataMatchVec_8_23,dataMatchVec_7_23,dataMatchVec_6_23}; // @[StatusArray.scala 138:43]
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
      statusArray_0_scheduled <= 1'h0;
    end else begin
      statusArray_0_scheduled <= hasIssued | keepScheduled;
    end
    statusArray_0_blocked <= deqNotGranted & _T_124 == 3'h2 | _statusArrayNext_0_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_0) begin // @[StatusArray.scala 228:29]
      statusArray_0_credit <= 4'h0;
    end else if (statusArray_0_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_0_credit <= _creditStep_T_2;
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_1354; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted & _T_124 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_0_waitForSqIdx_value <= _T_130; // @[StatusArray.scala 219:33]
    end
    if (updateValid_0) begin // @[StatusArray.scala 211:28]
      statusArray_0_waitForRobIdx_value <= updateVal_0_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_0_waitForStoreData <= deqNotGranted & _T_124 == 3'h2 | _GEN_25; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_0) begin // @[StatusArray.scala 211:28]
      statusArray_0_strictWait <= updateVal_0_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_0) begin // @[StatusArray.scala 251:28]
      statusArray_0_sqIdx_flag <= updateVal_0_sqIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 251:28]
      statusArray_0_sqIdx_value <= updateVal_0_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_1_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_1_valid <= statusArrayNext_1_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_1) begin // @[StatusArray.scala 190:34]
      statusArray_1_scheduled <= 1'h0;
    end else begin
      statusArray_1_scheduled <= hasIssued_1 | keepScheduled_1;
    end
    statusArray_1_blocked <= deqNotGranted_1 & _T_166 == 3'h2 | _statusArrayNext_1_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_1) begin // @[StatusArray.scala 228:29]
      statusArray_1_credit <= 4'h0;
    end else if (statusArray_1_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_1_credit <= _creditStep_T_5;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1607; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_1 & _T_166 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_1_waitForSqIdx_value <= _T_172; // @[StatusArray.scala 219:33]
    end
    if (updateValid_1) begin // @[StatusArray.scala 211:28]
      statusArray_1_waitForRobIdx_value <= updateVal_1_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_1_waitForStoreData <= deqNotGranted_1 & _T_166 == 3'h2 | _GEN_33; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_1) begin // @[StatusArray.scala 211:28]
      statusArray_1_strictWait <= updateVal_1_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_1) begin // @[StatusArray.scala 251:28]
      statusArray_1_sqIdx_flag <= updateVal_1_sqIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 251:28]
      statusArray_1_sqIdx_value <= updateVal_1_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_2_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_2_valid <= statusArrayNext_2_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_2) begin // @[StatusArray.scala 190:34]
      statusArray_2_scheduled <= 1'h0;
    end else begin
      statusArray_2_scheduled <= hasIssued_2 | keepScheduled_2;
    end
    statusArray_2_blocked <= deqNotGranted_2 & _T_208 == 3'h2 | _statusArrayNext_2_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_2) begin // @[StatusArray.scala 228:29]
      statusArray_2_credit <= 4'h0;
    end else if (statusArray_2_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_2_credit <= _creditStep_T_8;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1860; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_2 & _T_208 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_2_waitForSqIdx_value <= _T_214; // @[StatusArray.scala 219:33]
    end
    if (updateValid_2) begin // @[StatusArray.scala 211:28]
      statusArray_2_waitForRobIdx_value <= updateVal_2_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_2_waitForStoreData <= deqNotGranted_2 & _T_208 == 3'h2 | _GEN_41; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_2) begin // @[StatusArray.scala 211:28]
      statusArray_2_strictWait <= updateVal_2_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_2) begin // @[StatusArray.scala 251:28]
      statusArray_2_sqIdx_flag <= updateVal_2_sqIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 251:28]
      statusArray_2_sqIdx_value <= updateVal_2_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_3_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_3_valid <= statusArrayNext_3_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_3) begin // @[StatusArray.scala 190:34]
      statusArray_3_scheduled <= 1'h0;
    end else begin
      statusArray_3_scheduled <= hasIssued_3 | keepScheduled_3;
    end
    statusArray_3_blocked <= deqNotGranted_3 & _T_250 == 3'h2 | _statusArrayNext_3_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_3) begin // @[StatusArray.scala 228:29]
      statusArray_3_credit <= 4'h0;
    end else if (statusArray_3_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_3_credit <= _creditStep_T_11;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_2113; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_3 & _T_250 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_3_waitForSqIdx_value <= _T_256; // @[StatusArray.scala 219:33]
    end
    if (updateValid_3) begin // @[StatusArray.scala 211:28]
      statusArray_3_waitForRobIdx_value <= updateVal_3_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_3_waitForStoreData <= deqNotGranted_3 & _T_250 == 3'h2 | _GEN_49; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_3) begin // @[StatusArray.scala 211:28]
      statusArray_3_strictWait <= updateVal_3_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_3) begin // @[StatusArray.scala 251:28]
      statusArray_3_sqIdx_flag <= updateVal_3_sqIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 251:28]
      statusArray_3_sqIdx_value <= updateVal_3_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_4_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_4_valid <= statusArrayNext_4_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_4) begin // @[StatusArray.scala 190:34]
      statusArray_4_scheduled <= 1'h0;
    end else begin
      statusArray_4_scheduled <= hasIssued_4 | keepScheduled_4;
    end
    statusArray_4_blocked <= deqNotGranted_4 & _T_292 == 3'h2 | _statusArrayNext_4_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_4) begin // @[StatusArray.scala 228:29]
      statusArray_4_credit <= 4'h0;
    end else if (statusArray_4_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_4_credit <= _creditStep_T_14;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_2366; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_4 & _T_292 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_4_waitForSqIdx_value <= _T_298; // @[StatusArray.scala 219:33]
    end
    if (updateValid_4) begin // @[StatusArray.scala 211:28]
      statusArray_4_waitForRobIdx_value <= updateVal_4_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_4_waitForStoreData <= deqNotGranted_4 & _T_292 == 3'h2 | _GEN_57; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_4) begin // @[StatusArray.scala 211:28]
      statusArray_4_strictWait <= updateVal_4_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_4) begin // @[StatusArray.scala 251:28]
      statusArray_4_sqIdx_flag <= updateVal_4_sqIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 251:28]
      statusArray_4_sqIdx_value <= updateVal_4_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_5_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_5_valid <= statusArrayNext_5_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_5) begin // @[StatusArray.scala 190:34]
      statusArray_5_scheduled <= 1'h0;
    end else begin
      statusArray_5_scheduled <= hasIssued_5 | keepScheduled_5;
    end
    statusArray_5_blocked <= deqNotGranted_5 & _T_334 == 3'h2 | _statusArrayNext_5_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_5) begin // @[StatusArray.scala 228:29]
      statusArray_5_credit <= 4'h0;
    end else if (statusArray_5_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_5_credit <= _creditStep_T_17;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_2619; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_5 & _T_334 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_5_waitForSqIdx_value <= _T_340; // @[StatusArray.scala 219:33]
    end
    if (updateValid_5) begin // @[StatusArray.scala 211:28]
      statusArray_5_waitForRobIdx_value <= updateVal_5_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_5_waitForStoreData <= deqNotGranted_5 & _T_334 == 3'h2 | _GEN_65; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_5) begin // @[StatusArray.scala 211:28]
      statusArray_5_strictWait <= updateVal_5_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_5) begin // @[StatusArray.scala 251:28]
      statusArray_5_sqIdx_flag <= updateVal_5_sqIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 251:28]
      statusArray_5_sqIdx_value <= updateVal_5_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_6_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_6_valid <= statusArrayNext_6_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_6) begin // @[StatusArray.scala 190:34]
      statusArray_6_scheduled <= 1'h0;
    end else begin
      statusArray_6_scheduled <= hasIssued_6 | keepScheduled_6;
    end
    statusArray_6_blocked <= deqNotGranted_6 & _T_376 == 3'h2 | _statusArrayNext_6_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_6) begin // @[StatusArray.scala 228:29]
      statusArray_6_credit <= 4'h0;
    end else if (statusArray_6_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_6_credit <= _creditStep_T_20;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_2872; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_6 & _T_376 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_6_waitForSqIdx_value <= _T_382; // @[StatusArray.scala 219:33]
    end
    if (updateValid_6) begin // @[StatusArray.scala 211:28]
      statusArray_6_waitForRobIdx_value <= updateVal_6_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_6_waitForStoreData <= deqNotGranted_6 & _T_376 == 3'h2 | _GEN_73; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_6) begin // @[StatusArray.scala 211:28]
      statusArray_6_strictWait <= updateVal_6_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_6) begin // @[StatusArray.scala 251:28]
      statusArray_6_sqIdx_flag <= updateVal_6_sqIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 251:28]
      statusArray_6_sqIdx_value <= updateVal_6_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_7_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_7_valid <= statusArrayNext_7_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_7) begin // @[StatusArray.scala 190:34]
      statusArray_7_scheduled <= 1'h0;
    end else begin
      statusArray_7_scheduled <= hasIssued_7 | keepScheduled_7;
    end
    statusArray_7_blocked <= deqNotGranted_7 & _T_418 == 3'h2 | _statusArrayNext_7_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_7) begin // @[StatusArray.scala 228:29]
      statusArray_7_credit <= 4'h0;
    end else if (statusArray_7_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_7_credit <= _creditStep_T_23;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_3125; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_7 & _T_418 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_7_waitForSqIdx_value <= _T_424; // @[StatusArray.scala 219:33]
    end
    if (updateValid_7) begin // @[StatusArray.scala 211:28]
      statusArray_7_waitForRobIdx_value <= updateVal_7_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_7_waitForStoreData <= deqNotGranted_7 & _T_418 == 3'h2 | _GEN_81; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_7) begin // @[StatusArray.scala 211:28]
      statusArray_7_strictWait <= updateVal_7_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_7) begin // @[StatusArray.scala 251:28]
      statusArray_7_sqIdx_flag <= updateVal_7_sqIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 251:28]
      statusArray_7_sqIdx_value <= updateVal_7_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_8_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_8_valid <= statusArrayNext_8_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_8) begin // @[StatusArray.scala 190:34]
      statusArray_8_scheduled <= 1'h0;
    end else begin
      statusArray_8_scheduled <= hasIssued_8 | keepScheduled_8;
    end
    statusArray_8_blocked <= deqNotGranted_8 & _T_460 == 3'h2 | _statusArrayNext_8_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_8) begin // @[StatusArray.scala 228:29]
      statusArray_8_credit <= 4'h0;
    end else if (statusArray_8_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_8_credit <= _creditStep_T_26;
    end
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_3378; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_8 & _T_460 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_8_waitForSqIdx_value <= _T_466; // @[StatusArray.scala 219:33]
    end
    if (updateValid_8) begin // @[StatusArray.scala 211:28]
      statusArray_8_waitForRobIdx_value <= updateVal_8_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_8_waitForStoreData <= deqNotGranted_8 & _T_460 == 3'h2 | _GEN_89; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_8) begin // @[StatusArray.scala 211:28]
      statusArray_8_strictWait <= updateVal_8_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_8) begin // @[StatusArray.scala 251:28]
      statusArray_8_sqIdx_flag <= updateVal_8_sqIdx_flag;
    end
    if (updateValid_8) begin // @[StatusArray.scala 251:28]
      statusArray_8_sqIdx_value <= updateVal_8_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_9_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_9_valid <= statusArrayNext_9_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_9) begin // @[StatusArray.scala 190:34]
      statusArray_9_scheduled <= 1'h0;
    end else begin
      statusArray_9_scheduled <= hasIssued_9 | keepScheduled_9;
    end
    statusArray_9_blocked <= deqNotGranted_9 & _T_502 == 3'h2 | _statusArrayNext_9_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_9) begin // @[StatusArray.scala 228:29]
      statusArray_9_credit <= 4'h0;
    end else if (statusArray_9_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_9_credit <= _creditStep_T_29;
    end
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_3631; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_9 & _T_502 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_9_waitForSqIdx_value <= _T_508; // @[StatusArray.scala 219:33]
    end
    if (updateValid_9) begin // @[StatusArray.scala 211:28]
      statusArray_9_waitForRobIdx_value <= updateVal_9_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_9_waitForStoreData <= deqNotGranted_9 & _T_502 == 3'h2 | _GEN_97; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_9) begin // @[StatusArray.scala 211:28]
      statusArray_9_strictWait <= updateVal_9_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_9) begin // @[StatusArray.scala 251:28]
      statusArray_9_sqIdx_flag <= updateVal_9_sqIdx_flag;
    end
    if (updateValid_9) begin // @[StatusArray.scala 251:28]
      statusArray_9_sqIdx_value <= updateVal_9_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_10_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_10_valid <= statusArrayNext_10_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_10) begin // @[StatusArray.scala 190:34]
      statusArray_10_scheduled <= 1'h0;
    end else begin
      statusArray_10_scheduled <= hasIssued_10 | keepScheduled_10;
    end
    statusArray_10_blocked <= deqNotGranted_10 & _T_544 == 3'h2 | _statusArrayNext_10_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_10) begin // @[StatusArray.scala 228:29]
      statusArray_10_credit <= 4'h0;
    end else if (statusArray_10_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_10_credit <= _creditStep_T_32;
    end
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_3884; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_10 & _T_544 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_10_waitForSqIdx_value <= _T_550; // @[StatusArray.scala 219:33]
    end
    if (updateValid_10) begin // @[StatusArray.scala 211:28]
      statusArray_10_waitForRobIdx_value <= updateVal_10_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_10_waitForStoreData <= deqNotGranted_10 & _T_544 == 3'h2 | _GEN_105; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_10) begin // @[StatusArray.scala 211:28]
      statusArray_10_strictWait <= updateVal_10_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_10) begin // @[StatusArray.scala 251:28]
      statusArray_10_sqIdx_flag <= updateVal_10_sqIdx_flag;
    end
    if (updateValid_10) begin // @[StatusArray.scala 251:28]
      statusArray_10_sqIdx_value <= updateVal_10_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_11_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_11_valid <= statusArrayNext_11_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_11) begin // @[StatusArray.scala 190:34]
      statusArray_11_scheduled <= 1'h0;
    end else begin
      statusArray_11_scheduled <= hasIssued_11 | keepScheduled_11;
    end
    statusArray_11_blocked <= deqNotGranted_11 & _T_586 == 3'h2 | _statusArrayNext_11_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_11) begin // @[StatusArray.scala 228:29]
      statusArray_11_credit <= 4'h0;
    end else if (statusArray_11_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_11_credit <= _creditStep_T_35;
    end
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_4137; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_11 & _T_586 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_11_waitForSqIdx_value <= _T_592; // @[StatusArray.scala 219:33]
    end
    if (updateValid_11) begin // @[StatusArray.scala 211:28]
      statusArray_11_waitForRobIdx_value <= updateVal_11_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_11_waitForStoreData <= deqNotGranted_11 & _T_586 == 3'h2 | _GEN_113; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_11) begin // @[StatusArray.scala 211:28]
      statusArray_11_strictWait <= updateVal_11_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_11) begin // @[StatusArray.scala 251:28]
      statusArray_11_sqIdx_flag <= updateVal_11_sqIdx_flag;
    end
    if (updateValid_11) begin // @[StatusArray.scala 251:28]
      statusArray_11_sqIdx_value <= updateVal_11_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_12_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_12_valid <= statusArrayNext_12_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_12) begin // @[StatusArray.scala 190:34]
      statusArray_12_scheduled <= 1'h0;
    end else begin
      statusArray_12_scheduled <= hasIssued_12 | keepScheduled_12;
    end
    statusArray_12_blocked <= deqNotGranted_12 & _T_628 == 3'h2 | _statusArrayNext_12_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_12) begin // @[StatusArray.scala 228:29]
      statusArray_12_credit <= 4'h0;
    end else if (statusArray_12_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_12_credit <= _creditStep_T_38;
    end
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_4390; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_12 & _T_628 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_12_waitForSqIdx_value <= _T_634; // @[StatusArray.scala 219:33]
    end
    if (updateValid_12) begin // @[StatusArray.scala 211:28]
      statusArray_12_waitForRobIdx_value <= updateVal_12_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_12_waitForStoreData <= deqNotGranted_12 & _T_628 == 3'h2 | _GEN_121; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_12) begin // @[StatusArray.scala 211:28]
      statusArray_12_strictWait <= updateVal_12_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_12) begin // @[StatusArray.scala 251:28]
      statusArray_12_sqIdx_flag <= updateVal_12_sqIdx_flag;
    end
    if (updateValid_12) begin // @[StatusArray.scala 251:28]
      statusArray_12_sqIdx_value <= updateVal_12_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_13_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_13_valid <= statusArrayNext_13_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_13) begin // @[StatusArray.scala 190:34]
      statusArray_13_scheduled <= 1'h0;
    end else begin
      statusArray_13_scheduled <= hasIssued_13 | keepScheduled_13;
    end
    statusArray_13_blocked <= deqNotGranted_13 & _T_670 == 3'h2 | _statusArrayNext_13_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_13) begin // @[StatusArray.scala 228:29]
      statusArray_13_credit <= 4'h0;
    end else if (statusArray_13_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_13_credit <= _creditStep_T_41;
    end
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_4643; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_13 & _T_670 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_13_waitForSqIdx_value <= _T_676; // @[StatusArray.scala 219:33]
    end
    if (updateValid_13) begin // @[StatusArray.scala 211:28]
      statusArray_13_waitForRobIdx_value <= updateVal_13_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_13_waitForStoreData <= deqNotGranted_13 & _T_670 == 3'h2 | _GEN_129; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_13) begin // @[StatusArray.scala 211:28]
      statusArray_13_strictWait <= updateVal_13_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_13) begin // @[StatusArray.scala 251:28]
      statusArray_13_sqIdx_flag <= updateVal_13_sqIdx_flag;
    end
    if (updateValid_13) begin // @[StatusArray.scala 251:28]
      statusArray_13_sqIdx_value <= updateVal_13_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_14_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_14_valid <= statusArrayNext_14_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_14) begin // @[StatusArray.scala 190:34]
      statusArray_14_scheduled <= 1'h0;
    end else begin
      statusArray_14_scheduled <= hasIssued_14 | keepScheduled_14;
    end
    statusArray_14_blocked <= deqNotGranted_14 & _T_712 == 3'h2 | _statusArrayNext_14_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_14) begin // @[StatusArray.scala 228:29]
      statusArray_14_credit <= 4'h0;
    end else if (statusArray_14_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_14_credit <= _creditStep_T_44;
    end
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_4896; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_14 & _T_712 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_14_waitForSqIdx_value <= _T_718; // @[StatusArray.scala 219:33]
    end
    if (updateValid_14) begin // @[StatusArray.scala 211:28]
      statusArray_14_waitForRobIdx_value <= updateVal_14_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_14_waitForStoreData <= deqNotGranted_14 & _T_712 == 3'h2 | _GEN_137; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_14) begin // @[StatusArray.scala 211:28]
      statusArray_14_strictWait <= updateVal_14_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_14) begin // @[StatusArray.scala 251:28]
      statusArray_14_sqIdx_flag <= updateVal_14_sqIdx_flag;
    end
    if (updateValid_14) begin // @[StatusArray.scala 251:28]
      statusArray_14_sqIdx_value <= updateVal_14_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_15_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_15_valid <= statusArrayNext_15_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_15) begin // @[StatusArray.scala 190:34]
      statusArray_15_scheduled <= 1'h0;
    end else begin
      statusArray_15_scheduled <= hasIssued_15 | keepScheduled_15;
    end
    statusArray_15_blocked <= deqNotGranted_15 & _T_754 == 3'h2 | _statusArrayNext_15_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_15) begin // @[StatusArray.scala 228:29]
      statusArray_15_credit <= 4'h0;
    end else if (statusArray_15_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_15_credit <= _creditStep_T_47;
    end
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_5149; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_15 & _T_754 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_15_waitForSqIdx_value <= _T_760; // @[StatusArray.scala 219:33]
    end
    if (updateValid_15) begin // @[StatusArray.scala 211:28]
      statusArray_15_waitForRobIdx_value <= updateVal_15_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_15_waitForStoreData <= deqNotGranted_15 & _T_754 == 3'h2 | _GEN_145; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_15) begin // @[StatusArray.scala 211:28]
      statusArray_15_strictWait <= updateVal_15_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_15) begin // @[StatusArray.scala 251:28]
      statusArray_15_sqIdx_flag <= updateVal_15_sqIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 251:28]
      statusArray_15_sqIdx_value <= updateVal_15_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_16_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_16_valid <= statusArrayNext_16_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_16) begin // @[StatusArray.scala 190:34]
      statusArray_16_scheduled <= 1'h0;
    end else begin
      statusArray_16_scheduled <= hasIssued_16 | keepScheduled_16;
    end
    statusArray_16_blocked <= deqNotGranted_16 & _T_796 == 3'h2 | _statusArrayNext_16_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_16) begin // @[StatusArray.scala 228:29]
      statusArray_16_credit <= 4'h0;
    end else if (statusArray_16_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_16_credit <= _creditStep_T_50;
    end
    statusArray_16_srcState_0 <= stateWakeupEn_0_16 | _T_5402; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_16 & _T_796 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_16_waitForSqIdx_value <= _T_802; // @[StatusArray.scala 219:33]
    end
    if (updateValid_16) begin // @[StatusArray.scala 211:28]
      statusArray_16_waitForRobIdx_value <= updateVal_16_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_16_waitForStoreData <= deqNotGranted_16 & _T_796 == 3'h2 | _GEN_153; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_16) begin // @[StatusArray.scala 211:28]
      statusArray_16_strictWait <= updateVal_16_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_16) begin // @[StatusArray.scala 251:28]
      statusArray_16_sqIdx_flag <= updateVal_16_sqIdx_flag;
    end
    if (updateValid_16) begin // @[StatusArray.scala 251:28]
      statusArray_16_sqIdx_value <= updateVal_16_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_17_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_17_valid <= statusArrayNext_17_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_17) begin // @[StatusArray.scala 190:34]
      statusArray_17_scheduled <= 1'h0;
    end else begin
      statusArray_17_scheduled <= hasIssued_17 | keepScheduled_17;
    end
    statusArray_17_blocked <= deqNotGranted_17 & _T_838 == 3'h2 | _statusArrayNext_17_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_17) begin // @[StatusArray.scala 228:29]
      statusArray_17_credit <= 4'h0;
    end else if (statusArray_17_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_17_credit <= _creditStep_T_53;
    end
    statusArray_17_srcState_0 <= stateWakeupEn_0_17 | _T_5655; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_17 & _T_838 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_17_waitForSqIdx_value <= _T_844; // @[StatusArray.scala 219:33]
    end
    if (updateValid_17) begin // @[StatusArray.scala 211:28]
      statusArray_17_waitForRobIdx_value <= updateVal_17_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_17_waitForStoreData <= deqNotGranted_17 & _T_838 == 3'h2 | _GEN_161; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_17) begin // @[StatusArray.scala 211:28]
      statusArray_17_strictWait <= updateVal_17_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_17) begin // @[StatusArray.scala 251:28]
      statusArray_17_sqIdx_flag <= updateVal_17_sqIdx_flag;
    end
    if (updateValid_17) begin // @[StatusArray.scala 251:28]
      statusArray_17_sqIdx_value <= updateVal_17_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_18_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_18_valid <= statusArrayNext_18_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_18) begin // @[StatusArray.scala 190:34]
      statusArray_18_scheduled <= 1'h0;
    end else begin
      statusArray_18_scheduled <= hasIssued_18 | keepScheduled_18;
    end
    statusArray_18_blocked <= deqNotGranted_18 & _T_880 == 3'h2 | _statusArrayNext_18_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_18) begin // @[StatusArray.scala 228:29]
      statusArray_18_credit <= 4'h0;
    end else if (statusArray_18_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_18_credit <= _creditStep_T_56;
    end
    statusArray_18_srcState_0 <= stateWakeupEn_0_18 | _T_5908; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_18 & _T_880 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_18_waitForSqIdx_value <= _T_886; // @[StatusArray.scala 219:33]
    end
    if (updateValid_18) begin // @[StatusArray.scala 211:28]
      statusArray_18_waitForRobIdx_value <= updateVal_18_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_18_waitForStoreData <= deqNotGranted_18 & _T_880 == 3'h2 | _GEN_169; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_18) begin // @[StatusArray.scala 211:28]
      statusArray_18_strictWait <= updateVal_18_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_18) begin // @[StatusArray.scala 251:28]
      statusArray_18_sqIdx_flag <= updateVal_18_sqIdx_flag;
    end
    if (updateValid_18) begin // @[StatusArray.scala 251:28]
      statusArray_18_sqIdx_value <= updateVal_18_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_19_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_19_valid <= statusArrayNext_19_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_19) begin // @[StatusArray.scala 190:34]
      statusArray_19_scheduled <= 1'h0;
    end else begin
      statusArray_19_scheduled <= hasIssued_19 | keepScheduled_19;
    end
    statusArray_19_blocked <= deqNotGranted_19 & _T_922 == 3'h2 | _statusArrayNext_19_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_19) begin // @[StatusArray.scala 228:29]
      statusArray_19_credit <= 4'h0;
    end else if (statusArray_19_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_19_credit <= _creditStep_T_59;
    end
    statusArray_19_srcState_0 <= stateWakeupEn_0_19 | _T_6161; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_19 & _T_922 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_19_waitForSqIdx_value <= _T_928; // @[StatusArray.scala 219:33]
    end
    if (updateValid_19) begin // @[StatusArray.scala 211:28]
      statusArray_19_waitForRobIdx_value <= updateVal_19_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_19_waitForStoreData <= deqNotGranted_19 & _T_922 == 3'h2 | _GEN_177; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_19) begin // @[StatusArray.scala 211:28]
      statusArray_19_strictWait <= updateVal_19_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_19) begin // @[StatusArray.scala 251:28]
      statusArray_19_sqIdx_flag <= updateVal_19_sqIdx_flag;
    end
    if (updateValid_19) begin // @[StatusArray.scala 251:28]
      statusArray_19_sqIdx_value <= updateVal_19_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_20_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_20_valid <= statusArrayNext_20_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_20) begin // @[StatusArray.scala 190:34]
      statusArray_20_scheduled <= 1'h0;
    end else begin
      statusArray_20_scheduled <= hasIssued_20 | keepScheduled_20;
    end
    statusArray_20_blocked <= deqNotGranted_20 & _T_964 == 3'h2 | _statusArrayNext_20_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_20) begin // @[StatusArray.scala 228:29]
      statusArray_20_credit <= 4'h0;
    end else if (statusArray_20_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_20_credit <= _creditStep_T_62;
    end
    statusArray_20_srcState_0 <= stateWakeupEn_0_20 | _T_6414; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_20 & _T_964 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_20_waitForSqIdx_value <= _T_970; // @[StatusArray.scala 219:33]
    end
    if (updateValid_20) begin // @[StatusArray.scala 211:28]
      statusArray_20_waitForRobIdx_value <= updateVal_20_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_20_waitForStoreData <= deqNotGranted_20 & _T_964 == 3'h2 | _GEN_185; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_20) begin // @[StatusArray.scala 211:28]
      statusArray_20_strictWait <= updateVal_20_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_20) begin // @[StatusArray.scala 251:28]
      statusArray_20_sqIdx_flag <= updateVal_20_sqIdx_flag;
    end
    if (updateValid_20) begin // @[StatusArray.scala 251:28]
      statusArray_20_sqIdx_value <= updateVal_20_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_21_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_21_valid <= statusArrayNext_21_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_21) begin // @[StatusArray.scala 190:34]
      statusArray_21_scheduled <= 1'h0;
    end else begin
      statusArray_21_scheduled <= hasIssued_21 | keepScheduled_21;
    end
    statusArray_21_blocked <= deqNotGranted_21 & _T_1006 == 3'h2 | _statusArrayNext_21_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_21) begin // @[StatusArray.scala 228:29]
      statusArray_21_credit <= 4'h0;
    end else if (statusArray_21_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_21_credit <= _creditStep_T_65;
    end
    statusArray_21_srcState_0 <= stateWakeupEn_0_21 | _T_6667; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_21 & _T_1006 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_21_waitForSqIdx_value <= _T_1012; // @[StatusArray.scala 219:33]
    end
    if (updateValid_21) begin // @[StatusArray.scala 211:28]
      statusArray_21_waitForRobIdx_value <= updateVal_21_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_21_waitForStoreData <= deqNotGranted_21 & _T_1006 == 3'h2 | _GEN_193; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_21) begin // @[StatusArray.scala 211:28]
      statusArray_21_strictWait <= updateVal_21_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_21) begin // @[StatusArray.scala 251:28]
      statusArray_21_sqIdx_flag <= updateVal_21_sqIdx_flag;
    end
    if (updateValid_21) begin // @[StatusArray.scala 251:28]
      statusArray_21_sqIdx_value <= updateVal_21_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_22_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_22_valid <= statusArrayNext_22_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_22) begin // @[StatusArray.scala 190:34]
      statusArray_22_scheduled <= 1'h0;
    end else begin
      statusArray_22_scheduled <= hasIssued_22 | keepScheduled_22;
    end
    statusArray_22_blocked <= deqNotGranted_22 & _T_1048 == 3'h2 | _statusArrayNext_22_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_22) begin // @[StatusArray.scala 228:29]
      statusArray_22_credit <= 4'h0;
    end else if (statusArray_22_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_22_credit <= _creditStep_T_68;
    end
    statusArray_22_srcState_0 <= stateWakeupEn_0_22 | _T_6920; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_22 & _T_1048 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_22_waitForSqIdx_value <= _T_1054; // @[StatusArray.scala 219:33]
    end
    if (updateValid_22) begin // @[StatusArray.scala 211:28]
      statusArray_22_waitForRobIdx_value <= updateVal_22_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_22_waitForStoreData <= deqNotGranted_22 & _T_1048 == 3'h2 | _GEN_201; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_22) begin // @[StatusArray.scala 211:28]
      statusArray_22_strictWait <= updateVal_22_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_22) begin // @[StatusArray.scala 251:28]
      statusArray_22_sqIdx_flag <= updateVal_22_sqIdx_flag;
    end
    if (updateValid_22) begin // @[StatusArray.scala 251:28]
      statusArray_22_sqIdx_value <= updateVal_22_sqIdx_value;
    end
    if (reset) begin // @[StatusArray.scala 109:23]
      statusArray_23_valid <= 1'h0; // @[StatusArray.scala 110:29]
    end else begin
      statusArray_23_valid <= statusArrayNext_23_valid; // @[StatusArray.scala 108:15]
    end
    if (updateValid_23) begin // @[StatusArray.scala 190:34]
      statusArray_23_scheduled <= 1'h0;
    end else begin
      statusArray_23_scheduled <= hasIssued_23 | keepScheduled_23;
    end
    statusArray_23_blocked <= deqNotGranted_23 & _T_1090 == 3'h2 | _statusArrayNext_23_blocked_T_5; // @[StatusArray.scala 207:26 217:74 218:28]
    if (updateValid_23) begin // @[StatusArray.scala 228:29]
      statusArray_23_credit <= 4'h0;
    end else if (statusArray_23_credit > 4'h0) begin // @[StatusArray.scala 227:25]
      statusArray_23_credit <= _creditStep_T_71;
    end
    statusArray_23_srcState_0 <= stateWakeupEn_0_23 | _T_7173; // @[StatusArray.scala 241:50]
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
    if (deqNotGranted_23 & _T_1090 == 3'h2) begin // @[StatusArray.scala 217:74]
      statusArray_23_waitForSqIdx_value <= _T_1096; // @[StatusArray.scala 219:33]
    end
    if (updateValid_23) begin // @[StatusArray.scala 211:28]
      statusArray_23_waitForRobIdx_value <= updateVal_23_waitForRobIdx_value; // @[StatusArray.scala 214:34]
    end
    statusArray_23_waitForStoreData <= deqNotGranted_23 & _T_1090 == 3'h2 | _GEN_209; // @[StatusArray.scala 217:74 220:37]
    if (updateValid_23) begin // @[StatusArray.scala 211:28]
      statusArray_23_strictWait <= updateVal_23_strictWait; // @[StatusArray.scala 212:31]
    end
    if (updateValid_23) begin // @[StatusArray.scala 251:28]
      statusArray_23_sqIdx_flag <= updateVal_23_sqIdx_flag;
    end
    if (updateValid_23) begin // @[StatusArray.scala 251:28]
      statusArray_23_sqIdx_value <= updateVal_23_sqIdx_value;
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
  statusArray_0_blocked = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  statusArray_0_credit = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_0_waitForSqIdx_value = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_0_waitForRobIdx_value = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_0_waitForStoreData = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_0_strictWait = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_0_sqIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_0_sqIdx_value = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_1_valid = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_1_scheduled = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_1_blocked = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_1_credit = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_1_waitForSqIdx_value = _RAND_24[4:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_1_waitForRobIdx_value = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_1_waitForStoreData = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_1_strictWait = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_1_sqIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_1_sqIdx_value = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_2_valid = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_2_scheduled = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_2_blocked = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_2_credit = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_38[6:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_2_waitForSqIdx_value = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_2_waitForRobIdx_value = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_2_waitForStoreData = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_2_strictWait = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_2_sqIdx_flag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_2_sqIdx_value = _RAND_44[4:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_3_valid = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_3_scheduled = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_3_blocked = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_3_credit = _RAND_48[3:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_3_waitForSqIdx_value = _RAND_54[4:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_3_waitForRobIdx_value = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_3_waitForStoreData = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_3_strictWait = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_3_sqIdx_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_3_sqIdx_value = _RAND_59[4:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_4_valid = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_4_scheduled = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_4_blocked = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_4_credit = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_65[6:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_4_waitForSqIdx_value = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_4_waitForRobIdx_value = _RAND_70[6:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_4_waitForStoreData = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_4_strictWait = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_4_sqIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_4_sqIdx_value = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_5_valid = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_5_scheduled = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_5_blocked = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_5_credit = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_81[1:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_83[6:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_5_waitForSqIdx_value = _RAND_84[4:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_5_waitForRobIdx_value = _RAND_85[6:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_5_waitForStoreData = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_5_strictWait = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_5_sqIdx_flag = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_5_sqIdx_value = _RAND_89[4:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_6_valid = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_6_scheduled = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_6_blocked = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_6_credit = _RAND_93[3:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_95[6:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_98[6:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_6_waitForSqIdx_value = _RAND_99[4:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_6_waitForRobIdx_value = _RAND_100[6:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_6_waitForStoreData = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_6_strictWait = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_6_sqIdx_flag = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_6_sqIdx_value = _RAND_104[4:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_7_valid = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_7_scheduled = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_7_blocked = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_7_credit = _RAND_108[3:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_110[6:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_113[6:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_7_waitForSqIdx_value = _RAND_114[4:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_7_waitForRobIdx_value = _RAND_115[6:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_7_waitForStoreData = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_7_strictWait = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_7_sqIdx_flag = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_7_sqIdx_value = _RAND_119[4:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_8_valid = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_8_scheduled = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_8_blocked = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_8_credit = _RAND_123[3:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_125[6:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_128[6:0];
  _RAND_129 = {1{`RANDOM}};
  statusArray_8_waitForSqIdx_value = _RAND_129[4:0];
  _RAND_130 = {1{`RANDOM}};
  statusArray_8_waitForRobIdx_value = _RAND_130[6:0];
  _RAND_131 = {1{`RANDOM}};
  statusArray_8_waitForStoreData = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  statusArray_8_strictWait = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  statusArray_8_sqIdx_flag = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  statusArray_8_sqIdx_value = _RAND_134[4:0];
  _RAND_135 = {1{`RANDOM}};
  statusArray_9_valid = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  statusArray_9_scheduled = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  statusArray_9_blocked = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  statusArray_9_credit = _RAND_138[3:0];
  _RAND_139 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_140[6:0];
  _RAND_141 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_143[6:0];
  _RAND_144 = {1{`RANDOM}};
  statusArray_9_waitForSqIdx_value = _RAND_144[4:0];
  _RAND_145 = {1{`RANDOM}};
  statusArray_9_waitForRobIdx_value = _RAND_145[6:0];
  _RAND_146 = {1{`RANDOM}};
  statusArray_9_waitForStoreData = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  statusArray_9_strictWait = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  statusArray_9_sqIdx_flag = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  statusArray_9_sqIdx_value = _RAND_149[4:0];
  _RAND_150 = {1{`RANDOM}};
  statusArray_10_valid = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  statusArray_10_scheduled = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  statusArray_10_blocked = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  statusArray_10_credit = _RAND_153[3:0];
  _RAND_154 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_155[6:0];
  _RAND_156 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_158[6:0];
  _RAND_159 = {1{`RANDOM}};
  statusArray_10_waitForSqIdx_value = _RAND_159[4:0];
  _RAND_160 = {1{`RANDOM}};
  statusArray_10_waitForRobIdx_value = _RAND_160[6:0];
  _RAND_161 = {1{`RANDOM}};
  statusArray_10_waitForStoreData = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  statusArray_10_strictWait = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  statusArray_10_sqIdx_flag = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  statusArray_10_sqIdx_value = _RAND_164[4:0];
  _RAND_165 = {1{`RANDOM}};
  statusArray_11_valid = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  statusArray_11_scheduled = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  statusArray_11_blocked = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  statusArray_11_credit = _RAND_168[3:0];
  _RAND_169 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_170[6:0];
  _RAND_171 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_171[1:0];
  _RAND_172 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_173[6:0];
  _RAND_174 = {1{`RANDOM}};
  statusArray_11_waitForSqIdx_value = _RAND_174[4:0];
  _RAND_175 = {1{`RANDOM}};
  statusArray_11_waitForRobIdx_value = _RAND_175[6:0];
  _RAND_176 = {1{`RANDOM}};
  statusArray_11_waitForStoreData = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  statusArray_11_strictWait = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  statusArray_11_sqIdx_flag = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  statusArray_11_sqIdx_value = _RAND_179[4:0];
  _RAND_180 = {1{`RANDOM}};
  statusArray_12_valid = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  statusArray_12_scheduled = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  statusArray_12_blocked = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  statusArray_12_credit = _RAND_183[3:0];
  _RAND_184 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_185[6:0];
  _RAND_186 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_186[1:0];
  _RAND_187 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_188[6:0];
  _RAND_189 = {1{`RANDOM}};
  statusArray_12_waitForSqIdx_value = _RAND_189[4:0];
  _RAND_190 = {1{`RANDOM}};
  statusArray_12_waitForRobIdx_value = _RAND_190[6:0];
  _RAND_191 = {1{`RANDOM}};
  statusArray_12_waitForStoreData = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  statusArray_12_strictWait = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  statusArray_12_sqIdx_flag = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  statusArray_12_sqIdx_value = _RAND_194[4:0];
  _RAND_195 = {1{`RANDOM}};
  statusArray_13_valid = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  statusArray_13_scheduled = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  statusArray_13_blocked = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  statusArray_13_credit = _RAND_198[3:0];
  _RAND_199 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_200[6:0];
  _RAND_201 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_201[1:0];
  _RAND_202 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_203[6:0];
  _RAND_204 = {1{`RANDOM}};
  statusArray_13_waitForSqIdx_value = _RAND_204[4:0];
  _RAND_205 = {1{`RANDOM}};
  statusArray_13_waitForRobIdx_value = _RAND_205[6:0];
  _RAND_206 = {1{`RANDOM}};
  statusArray_13_waitForStoreData = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  statusArray_13_strictWait = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  statusArray_13_sqIdx_flag = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  statusArray_13_sqIdx_value = _RAND_209[4:0];
  _RAND_210 = {1{`RANDOM}};
  statusArray_14_valid = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  statusArray_14_scheduled = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  statusArray_14_blocked = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  statusArray_14_credit = _RAND_213[3:0];
  _RAND_214 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_215[6:0];
  _RAND_216 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_216[1:0];
  _RAND_217 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_218[6:0];
  _RAND_219 = {1{`RANDOM}};
  statusArray_14_waitForSqIdx_value = _RAND_219[4:0];
  _RAND_220 = {1{`RANDOM}};
  statusArray_14_waitForRobIdx_value = _RAND_220[6:0];
  _RAND_221 = {1{`RANDOM}};
  statusArray_14_waitForStoreData = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  statusArray_14_strictWait = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  statusArray_14_sqIdx_flag = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  statusArray_14_sqIdx_value = _RAND_224[4:0];
  _RAND_225 = {1{`RANDOM}};
  statusArray_15_valid = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  statusArray_15_scheduled = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  statusArray_15_blocked = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  statusArray_15_credit = _RAND_228[3:0];
  _RAND_229 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_230[6:0];
  _RAND_231 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_231[1:0];
  _RAND_232 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_233[6:0];
  _RAND_234 = {1{`RANDOM}};
  statusArray_15_waitForSqIdx_value = _RAND_234[4:0];
  _RAND_235 = {1{`RANDOM}};
  statusArray_15_waitForRobIdx_value = _RAND_235[6:0];
  _RAND_236 = {1{`RANDOM}};
  statusArray_15_waitForStoreData = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  statusArray_15_strictWait = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  statusArray_15_sqIdx_flag = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  statusArray_15_sqIdx_value = _RAND_239[4:0];
  _RAND_240 = {1{`RANDOM}};
  statusArray_16_valid = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  statusArray_16_scheduled = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  statusArray_16_blocked = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  statusArray_16_credit = _RAND_243[3:0];
  _RAND_244 = {1{`RANDOM}};
  statusArray_16_srcState_0 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  statusArray_16_psrc_0 = _RAND_245[6:0];
  _RAND_246 = {1{`RANDOM}};
  statusArray_16_srcType_0 = _RAND_246[1:0];
  _RAND_247 = {1{`RANDOM}};
  statusArray_16_robIdx_flag = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  statusArray_16_robIdx_value = _RAND_248[6:0];
  _RAND_249 = {1{`RANDOM}};
  statusArray_16_waitForSqIdx_value = _RAND_249[4:0];
  _RAND_250 = {1{`RANDOM}};
  statusArray_16_waitForRobIdx_value = _RAND_250[6:0];
  _RAND_251 = {1{`RANDOM}};
  statusArray_16_waitForStoreData = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  statusArray_16_strictWait = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  statusArray_16_sqIdx_flag = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  statusArray_16_sqIdx_value = _RAND_254[4:0];
  _RAND_255 = {1{`RANDOM}};
  statusArray_17_valid = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  statusArray_17_scheduled = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  statusArray_17_blocked = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  statusArray_17_credit = _RAND_258[3:0];
  _RAND_259 = {1{`RANDOM}};
  statusArray_17_srcState_0 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  statusArray_17_psrc_0 = _RAND_260[6:0];
  _RAND_261 = {1{`RANDOM}};
  statusArray_17_srcType_0 = _RAND_261[1:0];
  _RAND_262 = {1{`RANDOM}};
  statusArray_17_robIdx_flag = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  statusArray_17_robIdx_value = _RAND_263[6:0];
  _RAND_264 = {1{`RANDOM}};
  statusArray_17_waitForSqIdx_value = _RAND_264[4:0];
  _RAND_265 = {1{`RANDOM}};
  statusArray_17_waitForRobIdx_value = _RAND_265[6:0];
  _RAND_266 = {1{`RANDOM}};
  statusArray_17_waitForStoreData = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  statusArray_17_strictWait = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  statusArray_17_sqIdx_flag = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  statusArray_17_sqIdx_value = _RAND_269[4:0];
  _RAND_270 = {1{`RANDOM}};
  statusArray_18_valid = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  statusArray_18_scheduled = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  statusArray_18_blocked = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  statusArray_18_credit = _RAND_273[3:0];
  _RAND_274 = {1{`RANDOM}};
  statusArray_18_srcState_0 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  statusArray_18_psrc_0 = _RAND_275[6:0];
  _RAND_276 = {1{`RANDOM}};
  statusArray_18_srcType_0 = _RAND_276[1:0];
  _RAND_277 = {1{`RANDOM}};
  statusArray_18_robIdx_flag = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  statusArray_18_robIdx_value = _RAND_278[6:0];
  _RAND_279 = {1{`RANDOM}};
  statusArray_18_waitForSqIdx_value = _RAND_279[4:0];
  _RAND_280 = {1{`RANDOM}};
  statusArray_18_waitForRobIdx_value = _RAND_280[6:0];
  _RAND_281 = {1{`RANDOM}};
  statusArray_18_waitForStoreData = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  statusArray_18_strictWait = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  statusArray_18_sqIdx_flag = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  statusArray_18_sqIdx_value = _RAND_284[4:0];
  _RAND_285 = {1{`RANDOM}};
  statusArray_19_valid = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  statusArray_19_scheduled = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  statusArray_19_blocked = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  statusArray_19_credit = _RAND_288[3:0];
  _RAND_289 = {1{`RANDOM}};
  statusArray_19_srcState_0 = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  statusArray_19_psrc_0 = _RAND_290[6:0];
  _RAND_291 = {1{`RANDOM}};
  statusArray_19_srcType_0 = _RAND_291[1:0];
  _RAND_292 = {1{`RANDOM}};
  statusArray_19_robIdx_flag = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  statusArray_19_robIdx_value = _RAND_293[6:0];
  _RAND_294 = {1{`RANDOM}};
  statusArray_19_waitForSqIdx_value = _RAND_294[4:0];
  _RAND_295 = {1{`RANDOM}};
  statusArray_19_waitForRobIdx_value = _RAND_295[6:0];
  _RAND_296 = {1{`RANDOM}};
  statusArray_19_waitForStoreData = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  statusArray_19_strictWait = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  statusArray_19_sqIdx_flag = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  statusArray_19_sqIdx_value = _RAND_299[4:0];
  _RAND_300 = {1{`RANDOM}};
  statusArray_20_valid = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  statusArray_20_scheduled = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  statusArray_20_blocked = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  statusArray_20_credit = _RAND_303[3:0];
  _RAND_304 = {1{`RANDOM}};
  statusArray_20_srcState_0 = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  statusArray_20_psrc_0 = _RAND_305[6:0];
  _RAND_306 = {1{`RANDOM}};
  statusArray_20_srcType_0 = _RAND_306[1:0];
  _RAND_307 = {1{`RANDOM}};
  statusArray_20_robIdx_flag = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  statusArray_20_robIdx_value = _RAND_308[6:0];
  _RAND_309 = {1{`RANDOM}};
  statusArray_20_waitForSqIdx_value = _RAND_309[4:0];
  _RAND_310 = {1{`RANDOM}};
  statusArray_20_waitForRobIdx_value = _RAND_310[6:0];
  _RAND_311 = {1{`RANDOM}};
  statusArray_20_waitForStoreData = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  statusArray_20_strictWait = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  statusArray_20_sqIdx_flag = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  statusArray_20_sqIdx_value = _RAND_314[4:0];
  _RAND_315 = {1{`RANDOM}};
  statusArray_21_valid = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  statusArray_21_scheduled = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  statusArray_21_blocked = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  statusArray_21_credit = _RAND_318[3:0];
  _RAND_319 = {1{`RANDOM}};
  statusArray_21_srcState_0 = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  statusArray_21_psrc_0 = _RAND_320[6:0];
  _RAND_321 = {1{`RANDOM}};
  statusArray_21_srcType_0 = _RAND_321[1:0];
  _RAND_322 = {1{`RANDOM}};
  statusArray_21_robIdx_flag = _RAND_322[0:0];
  _RAND_323 = {1{`RANDOM}};
  statusArray_21_robIdx_value = _RAND_323[6:0];
  _RAND_324 = {1{`RANDOM}};
  statusArray_21_waitForSqIdx_value = _RAND_324[4:0];
  _RAND_325 = {1{`RANDOM}};
  statusArray_21_waitForRobIdx_value = _RAND_325[6:0];
  _RAND_326 = {1{`RANDOM}};
  statusArray_21_waitForStoreData = _RAND_326[0:0];
  _RAND_327 = {1{`RANDOM}};
  statusArray_21_strictWait = _RAND_327[0:0];
  _RAND_328 = {1{`RANDOM}};
  statusArray_21_sqIdx_flag = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  statusArray_21_sqIdx_value = _RAND_329[4:0];
  _RAND_330 = {1{`RANDOM}};
  statusArray_22_valid = _RAND_330[0:0];
  _RAND_331 = {1{`RANDOM}};
  statusArray_22_scheduled = _RAND_331[0:0];
  _RAND_332 = {1{`RANDOM}};
  statusArray_22_blocked = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  statusArray_22_credit = _RAND_333[3:0];
  _RAND_334 = {1{`RANDOM}};
  statusArray_22_srcState_0 = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  statusArray_22_psrc_0 = _RAND_335[6:0];
  _RAND_336 = {1{`RANDOM}};
  statusArray_22_srcType_0 = _RAND_336[1:0];
  _RAND_337 = {1{`RANDOM}};
  statusArray_22_robIdx_flag = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  statusArray_22_robIdx_value = _RAND_338[6:0];
  _RAND_339 = {1{`RANDOM}};
  statusArray_22_waitForSqIdx_value = _RAND_339[4:0];
  _RAND_340 = {1{`RANDOM}};
  statusArray_22_waitForRobIdx_value = _RAND_340[6:0];
  _RAND_341 = {1{`RANDOM}};
  statusArray_22_waitForStoreData = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  statusArray_22_strictWait = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  statusArray_22_sqIdx_flag = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  statusArray_22_sqIdx_value = _RAND_344[4:0];
  _RAND_345 = {1{`RANDOM}};
  statusArray_23_valid = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  statusArray_23_scheduled = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  statusArray_23_blocked = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  statusArray_23_credit = _RAND_348[3:0];
  _RAND_349 = {1{`RANDOM}};
  statusArray_23_srcState_0 = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  statusArray_23_psrc_0 = _RAND_350[6:0];
  _RAND_351 = {1{`RANDOM}};
  statusArray_23_srcType_0 = _RAND_351[1:0];
  _RAND_352 = {1{`RANDOM}};
  statusArray_23_robIdx_flag = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  statusArray_23_robIdx_value = _RAND_353[6:0];
  _RAND_354 = {1{`RANDOM}};
  statusArray_23_waitForSqIdx_value = _RAND_354[4:0];
  _RAND_355 = {1{`RANDOM}};
  statusArray_23_waitForRobIdx_value = _RAND_355[6:0];
  _RAND_356 = {1{`RANDOM}};
  statusArray_23_waitForStoreData = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  statusArray_23_strictWait = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  statusArray_23_sqIdx_flag = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  statusArray_23_sqIdx_value = _RAND_359[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule