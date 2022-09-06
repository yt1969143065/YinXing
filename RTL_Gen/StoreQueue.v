module StoreQueue(
  input         clock,
  input         reset,
  output        io_enq_canAccept,
  input         io_enq_lqCanAccept,
  input         io_enq_req_0_valid,
  input         io_enq_req_0_bits_robIdx_flag,
  input  [6:0]  io_enq_req_0_bits_robIdx_value,
  input  [4:0]  io_enq_req_0_bits_sqIdx_value,
  input         io_enq_req_1_valid,
  input         io_enq_req_1_bits_robIdx_flag,
  input  [6:0]  io_enq_req_1_bits_robIdx_value,
  input  [4:0]  io_enq_req_1_bits_sqIdx_value,
  input         io_enq_req_2_valid,
  input         io_enq_req_2_bits_robIdx_flag,
  input  [6:0]  io_enq_req_2_bits_robIdx_value,
  input  [4:0]  io_enq_req_2_bits_sqIdx_value,
  input         io_enq_req_3_valid,
  input         io_enq_req_3_bits_robIdx_flag,
  input  [6:0]  io_enq_req_3_bits_robIdx_value,
  input  [4:0]  io_enq_req_3_bits_sqIdx_value,
  input         io_brqRedirect_valid,
  input         io_brqRedirect_bits_robIdx_flag,
  input  [6:0]  io_brqRedirect_bits_robIdx_value,
  input         io_brqRedirect_bits_level,
  input         io_storeIn_0_valid,
  input  [6:0]  io_storeIn_0_bits_uop_ctrl_fuOpType,
  input  [4:0]  io_storeIn_0_bits_uop_sqIdx_value,
  input  [38:0] io_storeIn_0_bits_vaddr,
  input  [35:0] io_storeIn_0_bits_paddr,
  input  [7:0]  io_storeIn_0_bits_mask,
  input         io_storeIn_0_bits_wlineflag,
  input         io_storeIn_0_bits_miss,
  input         io_storeIn_1_valid,
  input  [6:0]  io_storeIn_1_bits_uop_ctrl_fuOpType,
  input  [4:0]  io_storeIn_1_bits_uop_sqIdx_value,
  input  [38:0] io_storeIn_1_bits_vaddr,
  input  [35:0] io_storeIn_1_bits_paddr,
  input  [7:0]  io_storeIn_1_bits_mask,
  input         io_storeIn_1_bits_wlineflag,
  input         io_storeIn_1_bits_miss,
  input         io_storeInRe_0_mmio,
  input         io_storeInRe_1_mmio,
  input         io_storeDataIn_0_valid,
  input  [6:0]  io_storeDataIn_0_bits_uop_ctrl_fuOpType,
  input  [4:0]  io_storeDataIn_0_bits_uop_sqIdx_value,
  input  [63:0] io_storeDataIn_0_bits_data,
  input         io_storeDataIn_1_valid,
  input  [6:0]  io_storeDataIn_1_bits_uop_ctrl_fuOpType,
  input  [4:0]  io_storeDataIn_1_bits_uop_sqIdx_value,
  input  [63:0] io_storeDataIn_1_bits_data,
  input         io_sbuffer_0_ready,
  output        io_sbuffer_0_valid,
  output [35:0] io_sbuffer_0_bits_addr,
  output [63:0] io_sbuffer_0_bits_data,
  output [7:0]  io_sbuffer_0_bits_mask,
  output [38:0] io_sbuffer_0_bits_vaddr,
  output        io_sbuffer_0_bits_wline,
  input         io_sbuffer_1_ready,
  output        io_sbuffer_1_valid,
  output [35:0] io_sbuffer_1_bits_addr,
  output [63:0] io_sbuffer_1_bits_data,
  output [7:0]  io_sbuffer_1_bits_mask,
  output [38:0] io_sbuffer_1_bits_vaddr,
  output        io_sbuffer_1_bits_wline,
  input         io_mmioStout_ready,
  output        io_mmioStout_valid,
  output        io_mmioStout_bits_uop_robIdx_flag,
  output [6:0]  io_mmioStout_bits_uop_robIdx_value,
  input  [38:0] io_forward_0_vaddr,
  input  [35:0] io_forward_0_paddr,
  input         io_forward_0_valid,
  output        io_forward_0_forwardMask_0,
  output        io_forward_0_forwardMask_1,
  output        io_forward_0_forwardMask_2,
  output        io_forward_0_forwardMask_3,
  output        io_forward_0_forwardMask_4,
  output        io_forward_0_forwardMask_5,
  output        io_forward_0_forwardMask_6,
  output        io_forward_0_forwardMask_7,
  output [7:0]  io_forward_0_forwardData_0,
  output [7:0]  io_forward_0_forwardData_1,
  output [7:0]  io_forward_0_forwardData_2,
  output [7:0]  io_forward_0_forwardData_3,
  output [7:0]  io_forward_0_forwardData_4,
  output [7:0]  io_forward_0_forwardData_5,
  output [7:0]  io_forward_0_forwardData_6,
  output [7:0]  io_forward_0_forwardData_7,
  input         io_forward_0_sqIdx_flag,
  output        io_forward_0_dataInvalid,
  output        io_forward_0_matchInvalid,
  input  [31:0] io_forward_0_sqIdxMask,
  output        io_forward_0_dataInvalidFast,
  output [4:0]  io_forward_0_dataInvalidSqIdx,
  input  [38:0] io_forward_1_vaddr,
  input  [35:0] io_forward_1_paddr,
  input         io_forward_1_valid,
  output        io_forward_1_forwardMask_0,
  output        io_forward_1_forwardMask_1,
  output        io_forward_1_forwardMask_2,
  output        io_forward_1_forwardMask_3,
  output        io_forward_1_forwardMask_4,
  output        io_forward_1_forwardMask_5,
  output        io_forward_1_forwardMask_6,
  output        io_forward_1_forwardMask_7,
  output [7:0]  io_forward_1_forwardData_0,
  output [7:0]  io_forward_1_forwardData_1,
  output [7:0]  io_forward_1_forwardData_2,
  output [7:0]  io_forward_1_forwardData_3,
  output [7:0]  io_forward_1_forwardData_4,
  output [7:0]  io_forward_1_forwardData_5,
  output [7:0]  io_forward_1_forwardData_6,
  output [7:0]  io_forward_1_forwardData_7,
  input         io_forward_1_sqIdx_flag,
  output        io_forward_1_dataInvalid,
  output        io_forward_1_matchInvalid,
  input  [31:0] io_forward_1_sqIdxMask,
  output        io_forward_1_dataInvalidFast,
  output [4:0]  io_forward_1_dataInvalidSqIdx,
  input  [2:0]  io_rob_scommit,
  input         io_rob_pendingst,
  input         io_uncache_req_ready,
  output        io_uncache_req_valid,
  output [35:0] io_uncache_req_bits_addr,
  output [63:0] io_uncache_req_bits_data,
  output [7:0]  io_uncache_req_bits_mask,
  output        io_uncache_resp_ready,
  input         io_uncache_resp_valid,
  output [38:0] io_exceptionAddr_vaddr,
  output        io_sqempty,
  output        io_issuePtrExt_flag,
  output [4:0]  io_issuePtrExt_value,
  output [5:0]  io_sqCancelCnt,
  output [1:0]  io_sqDeq,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
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
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [31:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [31:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [31:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_raddr_0; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_raddr_1; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_rdata_0_mask; // @[StoreQueue.scala 91:26]
  wire [63:0] dataModule_io_rdata_0_data; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_rdata_1_mask; // @[StoreQueue.scala 91:26]
  wire [63:0] dataModule_io_rdata_1_data; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_data_wen_0; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_data_wen_1; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_data_waddr_0; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_data_waddr_1; // @[StoreQueue.scala 91:26]
  wire [63:0] dataModule_io_data_wdata_0; // @[StoreQueue.scala 91:26]
  wire [63:0] dataModule_io_data_wdata_1; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_mask_wen_0; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_mask_wen_1; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_mask_waddr_0; // @[StoreQueue.scala 91:26]
  wire [4:0] dataModule_io_mask_waddr_1; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_mask_wdata_0; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_mask_wdata_1; // @[StoreQueue.scala 91:26]
  wire [31:0] dataModule_io_needForward_0_0; // @[StoreQueue.scala 91:26]
  wire [31:0] dataModule_io_needForward_0_1; // @[StoreQueue.scala 91:26]
  wire [31:0] dataModule_io_needForward_1_0; // @[StoreQueue.scala 91:26]
  wire [31:0] dataModule_io_needForward_1_1; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_0; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_1; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_2; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_3; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_4; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_5; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_6; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_0_7; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_0; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_1; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_2; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_3; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_4; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_5; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_6; // @[StoreQueue.scala 91:26]
  wire  dataModule_io_forwardMask_1_7; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_0; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_1; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_2; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_3; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_4; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_5; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_6; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_0_7; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_0; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_1; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_2; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_3; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_4; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_5; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_6; // @[StoreQueue.scala 91:26]
  wire [7:0] dataModule_io_forwardData_1_7; // @[StoreQueue.scala 91:26]
  wire  paddrModule_clock; // @[StoreQueue.scala 98:27]
  wire [4:0] paddrModule_io_raddr_0; // @[StoreQueue.scala 98:27]
  wire [4:0] paddrModule_io_raddr_1; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_rdata_0; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_rdata_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_rlineflag_0; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_rlineflag_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_wen_0; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_wen_1; // @[StoreQueue.scala 98:27]
  wire [4:0] paddrModule_io_waddr_0; // @[StoreQueue.scala 98:27]
  wire [4:0] paddrModule_io_waddr_1; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_wdata_0; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_wdata_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_wlineflag_0; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_wlineflag_1; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_forwardMdata_0; // @[StoreQueue.scala 98:27]
  wire [35:0] paddrModule_io_forwardMdata_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_0; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_2; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_3; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_4; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_5; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_6; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_7; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_8; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_9; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_10; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_11; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_12; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_13; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_14; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_15; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_16; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_17; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_18; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_19; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_20; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_21; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_22; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_23; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_24; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_25; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_26; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_27; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_28; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_29; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_30; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_0_31; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_0; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_1; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_2; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_3; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_4; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_5; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_6; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_7; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_8; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_9; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_10; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_11; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_12; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_13; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_14; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_15; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_16; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_17; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_18; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_19; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_20; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_21; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_22; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_23; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_24; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_25; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_26; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_27; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_28; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_29; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_30; // @[StoreQueue.scala 98:27]
  wire  paddrModule_io_forwardMmask_1_31; // @[StoreQueue.scala 98:27]
  wire  vaddrModule_clock; // @[StoreQueue.scala 106:27]
  wire [4:0] vaddrModule_io_raddr_0; // @[StoreQueue.scala 106:27]
  wire [4:0] vaddrModule_io_raddr_1; // @[StoreQueue.scala 106:27]
  wire [4:0] vaddrModule_io_raddr_2; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_rdata_0; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_rdata_1; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_rdata_2; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_wen_0; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_wen_1; // @[StoreQueue.scala 106:27]
  wire [4:0] vaddrModule_io_waddr_0; // @[StoreQueue.scala 106:27]
  wire [4:0] vaddrModule_io_waddr_1; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_wdata_0; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_wdata_1; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_wlineflag_0; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_wlineflag_1; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_forwardMdata_0; // @[StoreQueue.scala 106:27]
  wire [38:0] vaddrModule_io_forwardMdata_1; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_0; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_1; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_2; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_3; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_4; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_5; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_6; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_7; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_8; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_9; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_10; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_11; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_12; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_13; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_14; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_15; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_16; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_17; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_18; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_19; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_20; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_21; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_22; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_23; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_24; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_25; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_26; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_27; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_28; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_29; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_30; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_0_31; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_0; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_1; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_2; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_3; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_4; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_5; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_6; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_7; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_8; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_9; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_10; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_11; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_12; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_13; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_14; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_15; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_16; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_17; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_18; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_19; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_20; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_21; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_22; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_23; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_24; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_25; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_26; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_27; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_28; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_29; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_30; // @[StoreQueue.scala 106:27]
  wire  vaddrModule_io_forwardMmask_1_31; // @[StoreQueue.scala 106:27]
  wire  dataBuffer_clock; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_reset; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_0_ready; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_0_valid; // @[StoreQueue.scala 114:26]
  wire [35:0] dataBuffer_io_enq_0_bits_addr; // @[StoreQueue.scala 114:26]
  wire [38:0] dataBuffer_io_enq_0_bits_vaddr; // @[StoreQueue.scala 114:26]
  wire [63:0] dataBuffer_io_enq_0_bits_data; // @[StoreQueue.scala 114:26]
  wire [7:0] dataBuffer_io_enq_0_bits_mask; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_0_bits_wline; // @[StoreQueue.scala 114:26]
  wire [4:0] dataBuffer_io_enq_0_bits_sqPtr_value; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_1_ready; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_1_valid; // @[StoreQueue.scala 114:26]
  wire [35:0] dataBuffer_io_enq_1_bits_addr; // @[StoreQueue.scala 114:26]
  wire [38:0] dataBuffer_io_enq_1_bits_vaddr; // @[StoreQueue.scala 114:26]
  wire [63:0] dataBuffer_io_enq_1_bits_data; // @[StoreQueue.scala 114:26]
  wire [7:0] dataBuffer_io_enq_1_bits_mask; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_enq_1_bits_wline; // @[StoreQueue.scala 114:26]
  wire [4:0] dataBuffer_io_enq_1_bits_sqPtr_value; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_0_ready; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_0_valid; // @[StoreQueue.scala 114:26]
  wire [35:0] dataBuffer_io_deq_0_bits_addr; // @[StoreQueue.scala 114:26]
  wire [38:0] dataBuffer_io_deq_0_bits_vaddr; // @[StoreQueue.scala 114:26]
  wire [63:0] dataBuffer_io_deq_0_bits_data; // @[StoreQueue.scala 114:26]
  wire [7:0] dataBuffer_io_deq_0_bits_mask; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_0_bits_wline; // @[StoreQueue.scala 114:26]
  wire [4:0] dataBuffer_io_deq_0_bits_sqPtr_value; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_1_ready; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_1_valid; // @[StoreQueue.scala 114:26]
  wire [35:0] dataBuffer_io_deq_1_bits_addr; // @[StoreQueue.scala 114:26]
  wire [38:0] dataBuffer_io_deq_1_bits_vaddr; // @[StoreQueue.scala 114:26]
  wire [63:0] dataBuffer_io_deq_1_bits_data; // @[StoreQueue.scala 114:26]
  wire [7:0] dataBuffer_io_deq_1_bits_mask; // @[StoreQueue.scala 114:26]
  wire  dataBuffer_io_deq_1_bits_wline; // @[StoreQueue.scala 114:26]
  wire [4:0] dataBuffer_io_deq_1_bits_sqPtr_value; // @[StoreQueue.scala 114:26]
  reg [6:0] uop_0_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_0_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_0_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_1_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_1_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_1_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_2_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_2_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_2_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_3_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_3_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_3_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_4_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_4_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_4_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_5_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_5_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_5_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_6_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_6_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_6_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_7_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_7_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_7_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_8_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_8_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_8_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_9_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_9_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_9_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_10_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_10_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_10_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_11_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_11_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_11_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_12_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_12_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_12_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_13_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_13_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_13_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_14_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_14_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_14_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_15_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_15_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_15_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_16_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_16_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_16_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_17_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_17_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_17_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_18_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_18_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_18_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_19_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_19_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_19_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_20_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_20_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_20_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_21_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_21_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_21_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_22_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_22_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_22_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_23_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_23_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_23_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_24_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_24_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_24_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_25_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_25_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_25_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_26_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_26_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_26_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_27_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_27_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_27_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_28_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_28_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_28_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_29_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_29_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_29_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_30_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_30_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_30_robIdx_value; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_31_ctrl_fuOpType; // @[StoreQueue.scala 89:16]
  reg  uop_31_robIdx_flag; // @[StoreQueue.scala 89:16]
  reg [6:0] uop_31_robIdx_value; // @[StoreQueue.scala 89:16]
  reg  allocated_0; // @[StoreQueue.scala 120:26]
  reg  allocated_1; // @[StoreQueue.scala 120:26]
  reg  allocated_2; // @[StoreQueue.scala 120:26]
  reg  allocated_3; // @[StoreQueue.scala 120:26]
  reg  allocated_4; // @[StoreQueue.scala 120:26]
  reg  allocated_5; // @[StoreQueue.scala 120:26]
  reg  allocated_6; // @[StoreQueue.scala 120:26]
  reg  allocated_7; // @[StoreQueue.scala 120:26]
  reg  allocated_8; // @[StoreQueue.scala 120:26]
  reg  allocated_9; // @[StoreQueue.scala 120:26]
  reg  allocated_10; // @[StoreQueue.scala 120:26]
  reg  allocated_11; // @[StoreQueue.scala 120:26]
  reg  allocated_12; // @[StoreQueue.scala 120:26]
  reg  allocated_13; // @[StoreQueue.scala 120:26]
  reg  allocated_14; // @[StoreQueue.scala 120:26]
  reg  allocated_15; // @[StoreQueue.scala 120:26]
  reg  allocated_16; // @[StoreQueue.scala 120:26]
  reg  allocated_17; // @[StoreQueue.scala 120:26]
  reg  allocated_18; // @[StoreQueue.scala 120:26]
  reg  allocated_19; // @[StoreQueue.scala 120:26]
  reg  allocated_20; // @[StoreQueue.scala 120:26]
  reg  allocated_21; // @[StoreQueue.scala 120:26]
  reg  allocated_22; // @[StoreQueue.scala 120:26]
  reg  allocated_23; // @[StoreQueue.scala 120:26]
  reg  allocated_24; // @[StoreQueue.scala 120:26]
  reg  allocated_25; // @[StoreQueue.scala 120:26]
  reg  allocated_26; // @[StoreQueue.scala 120:26]
  reg  allocated_27; // @[StoreQueue.scala 120:26]
  reg  allocated_28; // @[StoreQueue.scala 120:26]
  reg  allocated_29; // @[StoreQueue.scala 120:26]
  reg  allocated_30; // @[StoreQueue.scala 120:26]
  reg  allocated_31; // @[StoreQueue.scala 120:26]
  reg  addrvalid_0; // @[StoreQueue.scala 121:26]
  reg  addrvalid_1; // @[StoreQueue.scala 121:26]
  reg  addrvalid_2; // @[StoreQueue.scala 121:26]
  reg  addrvalid_3; // @[StoreQueue.scala 121:26]
  reg  addrvalid_4; // @[StoreQueue.scala 121:26]
  reg  addrvalid_5; // @[StoreQueue.scala 121:26]
  reg  addrvalid_6; // @[StoreQueue.scala 121:26]
  reg  addrvalid_7; // @[StoreQueue.scala 121:26]
  reg  addrvalid_8; // @[StoreQueue.scala 121:26]
  reg  addrvalid_9; // @[StoreQueue.scala 121:26]
  reg  addrvalid_10; // @[StoreQueue.scala 121:26]
  reg  addrvalid_11; // @[StoreQueue.scala 121:26]
  reg  addrvalid_12; // @[StoreQueue.scala 121:26]
  reg  addrvalid_13; // @[StoreQueue.scala 121:26]
  reg  addrvalid_14; // @[StoreQueue.scala 121:26]
  reg  addrvalid_15; // @[StoreQueue.scala 121:26]
  reg  addrvalid_16; // @[StoreQueue.scala 121:26]
  reg  addrvalid_17; // @[StoreQueue.scala 121:26]
  reg  addrvalid_18; // @[StoreQueue.scala 121:26]
  reg  addrvalid_19; // @[StoreQueue.scala 121:26]
  reg  addrvalid_20; // @[StoreQueue.scala 121:26]
  reg  addrvalid_21; // @[StoreQueue.scala 121:26]
  reg  addrvalid_22; // @[StoreQueue.scala 121:26]
  reg  addrvalid_23; // @[StoreQueue.scala 121:26]
  reg  addrvalid_24; // @[StoreQueue.scala 121:26]
  reg  addrvalid_25; // @[StoreQueue.scala 121:26]
  reg  addrvalid_26; // @[StoreQueue.scala 121:26]
  reg  addrvalid_27; // @[StoreQueue.scala 121:26]
  reg  addrvalid_28; // @[StoreQueue.scala 121:26]
  reg  addrvalid_29; // @[StoreQueue.scala 121:26]
  reg  addrvalid_30; // @[StoreQueue.scala 121:26]
  reg  addrvalid_31; // @[StoreQueue.scala 121:26]
  reg  datavalid_0; // @[StoreQueue.scala 122:26]
  reg  datavalid_1; // @[StoreQueue.scala 122:26]
  reg  datavalid_2; // @[StoreQueue.scala 122:26]
  reg  datavalid_3; // @[StoreQueue.scala 122:26]
  reg  datavalid_4; // @[StoreQueue.scala 122:26]
  reg  datavalid_5; // @[StoreQueue.scala 122:26]
  reg  datavalid_6; // @[StoreQueue.scala 122:26]
  reg  datavalid_7; // @[StoreQueue.scala 122:26]
  reg  datavalid_8; // @[StoreQueue.scala 122:26]
  reg  datavalid_9; // @[StoreQueue.scala 122:26]
  reg  datavalid_10; // @[StoreQueue.scala 122:26]
  reg  datavalid_11; // @[StoreQueue.scala 122:26]
  reg  datavalid_12; // @[StoreQueue.scala 122:26]
  reg  datavalid_13; // @[StoreQueue.scala 122:26]
  reg  datavalid_14; // @[StoreQueue.scala 122:26]
  reg  datavalid_15; // @[StoreQueue.scala 122:26]
  reg  datavalid_16; // @[StoreQueue.scala 122:26]
  reg  datavalid_17; // @[StoreQueue.scala 122:26]
  reg  datavalid_18; // @[StoreQueue.scala 122:26]
  reg  datavalid_19; // @[StoreQueue.scala 122:26]
  reg  datavalid_20; // @[StoreQueue.scala 122:26]
  reg  datavalid_21; // @[StoreQueue.scala 122:26]
  reg  datavalid_22; // @[StoreQueue.scala 122:26]
  reg  datavalid_23; // @[StoreQueue.scala 122:26]
  reg  datavalid_24; // @[StoreQueue.scala 122:26]
  reg  datavalid_25; // @[StoreQueue.scala 122:26]
  reg  datavalid_26; // @[StoreQueue.scala 122:26]
  reg  datavalid_27; // @[StoreQueue.scala 122:26]
  reg  datavalid_28; // @[StoreQueue.scala 122:26]
  reg  datavalid_29; // @[StoreQueue.scala 122:26]
  reg  datavalid_30; // @[StoreQueue.scala 122:26]
  reg  datavalid_31; // @[StoreQueue.scala 122:26]
  wire  allvalid_0 = addrvalid_0 & datavalid_0; // @[StoreQueue.scala 123:74]
  wire  allvalid_1 = addrvalid_1 & datavalid_1; // @[StoreQueue.scala 123:74]
  wire  allvalid_2 = addrvalid_2 & datavalid_2; // @[StoreQueue.scala 123:74]
  wire  allvalid_3 = addrvalid_3 & datavalid_3; // @[StoreQueue.scala 123:74]
  wire  allvalid_4 = addrvalid_4 & datavalid_4; // @[StoreQueue.scala 123:74]
  wire  allvalid_5 = addrvalid_5 & datavalid_5; // @[StoreQueue.scala 123:74]
  wire  allvalid_6 = addrvalid_6 & datavalid_6; // @[StoreQueue.scala 123:74]
  wire  allvalid_7 = addrvalid_7 & datavalid_7; // @[StoreQueue.scala 123:74]
  wire  allvalid_8 = addrvalid_8 & datavalid_8; // @[StoreQueue.scala 123:74]
  wire  allvalid_9 = addrvalid_9 & datavalid_9; // @[StoreQueue.scala 123:74]
  wire  allvalid_10 = addrvalid_10 & datavalid_10; // @[StoreQueue.scala 123:74]
  wire  allvalid_11 = addrvalid_11 & datavalid_11; // @[StoreQueue.scala 123:74]
  wire  allvalid_12 = addrvalid_12 & datavalid_12; // @[StoreQueue.scala 123:74]
  wire  allvalid_13 = addrvalid_13 & datavalid_13; // @[StoreQueue.scala 123:74]
  wire  allvalid_14 = addrvalid_14 & datavalid_14; // @[StoreQueue.scala 123:74]
  wire  allvalid_15 = addrvalid_15 & datavalid_15; // @[StoreQueue.scala 123:74]
  wire  allvalid_16 = addrvalid_16 & datavalid_16; // @[StoreQueue.scala 123:74]
  wire  allvalid_17 = addrvalid_17 & datavalid_17; // @[StoreQueue.scala 123:74]
  wire  allvalid_18 = addrvalid_18 & datavalid_18; // @[StoreQueue.scala 123:74]
  wire  allvalid_19 = addrvalid_19 & datavalid_19; // @[StoreQueue.scala 123:74]
  wire  allvalid_20 = addrvalid_20 & datavalid_20; // @[StoreQueue.scala 123:74]
  wire  allvalid_21 = addrvalid_21 & datavalid_21; // @[StoreQueue.scala 123:74]
  wire  allvalid_22 = addrvalid_22 & datavalid_22; // @[StoreQueue.scala 123:74]
  wire  allvalid_23 = addrvalid_23 & datavalid_23; // @[StoreQueue.scala 123:74]
  wire  allvalid_24 = addrvalid_24 & datavalid_24; // @[StoreQueue.scala 123:74]
  wire  allvalid_25 = addrvalid_25 & datavalid_25; // @[StoreQueue.scala 123:74]
  wire  allvalid_26 = addrvalid_26 & datavalid_26; // @[StoreQueue.scala 123:74]
  wire  allvalid_27 = addrvalid_27 & datavalid_27; // @[StoreQueue.scala 123:74]
  wire  allvalid_28 = addrvalid_28 & datavalid_28; // @[StoreQueue.scala 123:74]
  wire  allvalid_29 = addrvalid_29 & datavalid_29; // @[StoreQueue.scala 123:74]
  wire  allvalid_30 = addrvalid_30 & datavalid_30; // @[StoreQueue.scala 123:74]
  wire  allvalid_31 = addrvalid_31 & datavalid_31; // @[StoreQueue.scala 123:74]
  reg  committed_0; // @[StoreQueue.scala 124:22]
  reg  committed_1; // @[StoreQueue.scala 124:22]
  reg  committed_2; // @[StoreQueue.scala 124:22]
  reg  committed_3; // @[StoreQueue.scala 124:22]
  reg  committed_4; // @[StoreQueue.scala 124:22]
  reg  committed_5; // @[StoreQueue.scala 124:22]
  reg  committed_6; // @[StoreQueue.scala 124:22]
  reg  committed_7; // @[StoreQueue.scala 124:22]
  reg  committed_8; // @[StoreQueue.scala 124:22]
  reg  committed_9; // @[StoreQueue.scala 124:22]
  reg  committed_10; // @[StoreQueue.scala 124:22]
  reg  committed_11; // @[StoreQueue.scala 124:22]
  reg  committed_12; // @[StoreQueue.scala 124:22]
  reg  committed_13; // @[StoreQueue.scala 124:22]
  reg  committed_14; // @[StoreQueue.scala 124:22]
  reg  committed_15; // @[StoreQueue.scala 124:22]
  reg  committed_16; // @[StoreQueue.scala 124:22]
  reg  committed_17; // @[StoreQueue.scala 124:22]
  reg  committed_18; // @[StoreQueue.scala 124:22]
  reg  committed_19; // @[StoreQueue.scala 124:22]
  reg  committed_20; // @[StoreQueue.scala 124:22]
  reg  committed_21; // @[StoreQueue.scala 124:22]
  reg  committed_22; // @[StoreQueue.scala 124:22]
  reg  committed_23; // @[StoreQueue.scala 124:22]
  reg  committed_24; // @[StoreQueue.scala 124:22]
  reg  committed_25; // @[StoreQueue.scala 124:22]
  reg  committed_26; // @[StoreQueue.scala 124:22]
  reg  committed_27; // @[StoreQueue.scala 124:22]
  reg  committed_28; // @[StoreQueue.scala 124:22]
  reg  committed_29; // @[StoreQueue.scala 124:22]
  reg  committed_30; // @[StoreQueue.scala 124:22]
  reg  committed_31; // @[StoreQueue.scala 124:22]
  reg  pending_0; // @[StoreQueue.scala 125:20]
  reg  pending_1; // @[StoreQueue.scala 125:20]
  reg  pending_2; // @[StoreQueue.scala 125:20]
  reg  pending_3; // @[StoreQueue.scala 125:20]
  reg  pending_4; // @[StoreQueue.scala 125:20]
  reg  pending_5; // @[StoreQueue.scala 125:20]
  reg  pending_6; // @[StoreQueue.scala 125:20]
  reg  pending_7; // @[StoreQueue.scala 125:20]
  reg  pending_8; // @[StoreQueue.scala 125:20]
  reg  pending_9; // @[StoreQueue.scala 125:20]
  reg  pending_10; // @[StoreQueue.scala 125:20]
  reg  pending_11; // @[StoreQueue.scala 125:20]
  reg  pending_12; // @[StoreQueue.scala 125:20]
  reg  pending_13; // @[StoreQueue.scala 125:20]
  reg  pending_14; // @[StoreQueue.scala 125:20]
  reg  pending_15; // @[StoreQueue.scala 125:20]
  reg  pending_16; // @[StoreQueue.scala 125:20]
  reg  pending_17; // @[StoreQueue.scala 125:20]
  reg  pending_18; // @[StoreQueue.scala 125:20]
  reg  pending_19; // @[StoreQueue.scala 125:20]
  reg  pending_20; // @[StoreQueue.scala 125:20]
  reg  pending_21; // @[StoreQueue.scala 125:20]
  reg  pending_22; // @[StoreQueue.scala 125:20]
  reg  pending_23; // @[StoreQueue.scala 125:20]
  reg  pending_24; // @[StoreQueue.scala 125:20]
  reg  pending_25; // @[StoreQueue.scala 125:20]
  reg  pending_26; // @[StoreQueue.scala 125:20]
  reg  pending_27; // @[StoreQueue.scala 125:20]
  reg  pending_28; // @[StoreQueue.scala 125:20]
  reg  pending_29; // @[StoreQueue.scala 125:20]
  reg  pending_30; // @[StoreQueue.scala 125:20]
  reg  pending_31; // @[StoreQueue.scala 125:20]
  reg  mmio_0; // @[StoreQueue.scala 126:17]
  reg  mmio_1; // @[StoreQueue.scala 126:17]
  reg  mmio_2; // @[StoreQueue.scala 126:17]
  reg  mmio_3; // @[StoreQueue.scala 126:17]
  reg  mmio_4; // @[StoreQueue.scala 126:17]
  reg  mmio_5; // @[StoreQueue.scala 126:17]
  reg  mmio_6; // @[StoreQueue.scala 126:17]
  reg  mmio_7; // @[StoreQueue.scala 126:17]
  reg  mmio_8; // @[StoreQueue.scala 126:17]
  reg  mmio_9; // @[StoreQueue.scala 126:17]
  reg  mmio_10; // @[StoreQueue.scala 126:17]
  reg  mmio_11; // @[StoreQueue.scala 126:17]
  reg  mmio_12; // @[StoreQueue.scala 126:17]
  reg  mmio_13; // @[StoreQueue.scala 126:17]
  reg  mmio_14; // @[StoreQueue.scala 126:17]
  reg  mmio_15; // @[StoreQueue.scala 126:17]
  reg  mmio_16; // @[StoreQueue.scala 126:17]
  reg  mmio_17; // @[StoreQueue.scala 126:17]
  reg  mmio_18; // @[StoreQueue.scala 126:17]
  reg  mmio_19; // @[StoreQueue.scala 126:17]
  reg  mmio_20; // @[StoreQueue.scala 126:17]
  reg  mmio_21; // @[StoreQueue.scala 126:17]
  reg  mmio_22; // @[StoreQueue.scala 126:17]
  reg  mmio_23; // @[StoreQueue.scala 126:17]
  reg  mmio_24; // @[StoreQueue.scala 126:17]
  reg  mmio_25; // @[StoreQueue.scala 126:17]
  reg  mmio_26; // @[StoreQueue.scala 126:17]
  reg  mmio_27; // @[StoreQueue.scala 126:17]
  reg  mmio_28; // @[StoreQueue.scala 126:17]
  reg  mmio_29; // @[StoreQueue.scala 126:17]
  reg  mmio_30; // @[StoreQueue.scala 126:17]
  reg  mmio_31; // @[StoreQueue.scala 126:17]
  reg  enqPtrExt_0_flag; // @[StoreQueue.scala 129:26]
  reg [4:0] enqPtrExt_0_value; // @[StoreQueue.scala 129:26]
  reg  rdataPtrExt_0_flag; // @[StoreQueue.scala 130:28]
  reg [4:0] rdataPtrExt_0_value; // @[StoreQueue.scala 130:28]
  reg  rdataPtrExt_1_flag; // @[StoreQueue.scala 130:28]
  reg [4:0] rdataPtrExt_1_value; // @[StoreQueue.scala 130:28]
  reg  deqPtrExt_0_flag; // @[StoreQueue.scala 131:26]
  reg [4:0] deqPtrExt_0_value; // @[StoreQueue.scala 131:26]
  reg  deqPtrExt_1_flag; // @[StoreQueue.scala 131:26]
  reg [4:0] deqPtrExt_1_value; // @[StoreQueue.scala 131:26]
  reg  cmtPtrExt_0_flag; // @[StoreQueue.scala 132:26]
  reg [4:0] cmtPtrExt_0_value; // @[StoreQueue.scala 132:26]
  reg  cmtPtrExt_1_flag; // @[StoreQueue.scala 132:26]
  reg [4:0] cmtPtrExt_1_value; // @[StoreQueue.scala 132:26]
  reg  cmtPtrExt_2_flag; // @[StoreQueue.scala 132:26]
  reg [4:0] cmtPtrExt_2_value; // @[StoreQueue.scala 132:26]
  reg  cmtPtrExt_3_flag; // @[StoreQueue.scala 132:26]
  reg [4:0] cmtPtrExt_3_value; // @[StoreQueue.scala 132:26]
  reg  issuePtrExt_flag; // @[StoreQueue.scala 133:28]
  reg [4:0] issuePtrExt_value; // @[StoreQueue.scala 133:28]
  wire  _validCount_T = enqPtrExt_0_flag == deqPtrExt_0_flag; // @[CircularQueuePtr.scala 79:22]
  wire [4:0] _validCount_T_2 = enqPtrExt_0_value - deqPtrExt_0_value; // @[CircularQueuePtr.scala 80:21]
  wire [5:0] _GEN_13505 = {{1'd0}, enqPtrExt_0_value}; // @[CircularQueuePtr.scala 81:25]
  wire [5:0] _validCount_T_4 = 6'h20 + _GEN_13505; // @[CircularQueuePtr.scala 81:25]
  wire [5:0] _GEN_13506 = {{1'd0}, deqPtrExt_0_value}; // @[CircularQueuePtr.scala 81:41]
  wire [5:0] _validCount_T_6 = _validCount_T_4 - _GEN_13506; // @[CircularQueuePtr.scala 81:41]
  wire [5:0] validCount = enqPtrExt_0_flag == deqPtrExt_0_flag ? {{1'd0}, _validCount_T_2} : _validCount_T_6; // @[CircularQueuePtr.scala 79:8]
  wire [31:0] _deqMask_T = 32'h1 << deqPtrExt_0_value; // @[OneHot.scala 57:35]
  wire [31:0] deqMask = _deqMask_T - 32'h1; // @[BitUtils.scala 142:75]
  reg [2:0] commitCount; // @[StoreQueue.scala 146:28]
  wire  _rdataPtrExtNext_T = dataBuffer_io_enq_0_ready & dataBuffer_io_enq_0_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _rdataPtrExtNext_new_ptr_T = {rdataPtrExt_0_flag,rdataPtrExt_0_value}; // @[Cat.scala 31:58]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_2 = _rdataPtrExtNext_new_ptr_T + 6'h1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_value = _rdataPtrExtNext_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_flag = _rdataPtrExtNext_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_5 = {rdataPtrExt_1_flag,rdataPtrExt_1_value}; // @[Cat.scala 31:58]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_7 = _rdataPtrExtNext_new_ptr_T_5 + 6'h1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_1_value = _rdataPtrExtNext_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_1_flag = _rdataPtrExtNext_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 40:59]
  wire  _rdataPtrExtNext_T_1 = dataBuffer_io_enq_1_ready & dataBuffer_io_enq_1_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_12 = _rdataPtrExtNext_new_ptr_T + 6'h2; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_2_value = _rdataPtrExtNext_new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_2_flag = _rdataPtrExtNext_new_ptr_T_12[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_17 = _rdataPtrExtNext_new_ptr_T_5 + 6'h2; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_3_value = _rdataPtrExtNext_new_ptr_T_17[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_3_flag = _rdataPtrExtNext_new_ptr_T_17[5]; // @[CircularQueuePtr.scala 40:59]
  wire  _rdataPtrExtNext_T_2 = io_mmioStout_ready & io_mmioStout_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_20 = {deqPtrExt_0_flag,deqPtrExt_0_value}; // @[Cat.scala 31:58]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_22 = _rdataPtrExtNext_new_ptr_T_20 + 6'h1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_4_value = _rdataPtrExtNext_new_ptr_T_22[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_4_flag = _rdataPtrExtNext_new_ptr_T_22[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_25 = {deqPtrExt_1_flag,deqPtrExt_1_value}; // @[Cat.scala 31:58]
  wire [5:0] _rdataPtrExtNext_new_ptr_T_27 = _rdataPtrExtNext_new_ptr_T_25 + 6'h1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] rdataPtrExtNext_new_ptr_5_value = _rdataPtrExtNext_new_ptr_T_27[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  rdataPtrExtNext_new_ptr_5_flag = _rdataPtrExtNext_new_ptr_T_27[5]; // @[CircularQueuePtr.scala 40:59]
  wire [4:0] _rdataPtrExtNext_T_3_0_value = _rdataPtrExtNext_T_2 ? rdataPtrExtNext_new_ptr_4_value : rdataPtrExt_0_value
    ; // @[PriorityMuxDefault.scala 26:12]
  wire [4:0] _rdataPtrExtNext_T_3_1_value = _rdataPtrExtNext_T_2 ? rdataPtrExtNext_new_ptr_5_value : rdataPtrExt_1_value
    ; // @[PriorityMuxDefault.scala 26:12]
  wire [4:0] _rdataPtrExtNext_T_4_0_value = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_value :
    _rdataPtrExtNext_T_3_0_value; // @[PriorityMuxDefault.scala 28:12]
  wire [4:0] _rdataPtrExtNext_T_4_1_value = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_1_value :
    _rdataPtrExtNext_T_3_1_value; // @[PriorityMuxDefault.scala 28:12]
  wire  _deqPtrExtNext_T = io_sbuffer_0_ready & io_sbuffer_0_valid; // @[Decoupled.scala 50:35]
  wire  _deqPtrExtNext_T_1 = io_sbuffer_1_ready & io_sbuffer_1_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _deqPtrExtNext_new_ptr_T_12 = _rdataPtrExtNext_new_ptr_T_20 + 6'h2; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] deqPtrExtNext_new_ptr_2_value = _deqPtrExtNext_new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  deqPtrExtNext_new_ptr_2_flag = _deqPtrExtNext_new_ptr_T_12[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _deqPtrExtNext_new_ptr_T_17 = _rdataPtrExtNext_new_ptr_T_25 + 6'h2; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] deqPtrExtNext_new_ptr_3_value = _deqPtrExtNext_new_ptr_T_17[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  deqPtrExtNext_new_ptr_3_flag = _deqPtrExtNext_new_ptr_T_17[5]; // @[CircularQueuePtr.scala 40:59]
  wire  _deqPtrExtNext_T_3_0_flag = _rdataPtrExtNext_T_2 ? rdataPtrExtNext_new_ptr_4_flag : deqPtrExt_0_flag; // @[PriorityMuxDefault.scala 26:12]
  wire [4:0] _deqPtrExtNext_T_3_0_value = _rdataPtrExtNext_T_2 ? rdataPtrExtNext_new_ptr_4_value : deqPtrExt_0_value; // @[PriorityMuxDefault.scala 26:12]
  wire  _deqPtrExtNext_T_4_0_flag = _deqPtrExtNext_T ? rdataPtrExtNext_new_ptr_4_flag : _deqPtrExtNext_T_3_0_flag; // @[PriorityMuxDefault.scala 28:12]
  wire [4:0] _deqPtrExtNext_T_4_0_value = _deqPtrExtNext_T ? rdataPtrExtNext_new_ptr_4_value :
    _deqPtrExtNext_T_3_0_value; // @[PriorityMuxDefault.scala 28:12]
  wire  _io_sqDeq_T_4 = _deqPtrExtNext_T | _rdataPtrExtNext_T_2; // @[PriorityMuxDefault.scala 28:12]
  reg [1:0] io_sqDeq_REG; // @[StoreQueue.scala 157:22]
  wire [5:0] _vaddrModule_io_raddr_2_new_ptr_T = {cmtPtrExt_0_flag,cmtPtrExt_0_value}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_13507 = {{3'd0}, commitCount}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _vaddrModule_io_raddr_2_new_ptr_T_2 = _vaddrModule_io_raddr_2_new_ptr_T + _GEN_13507; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] vaddrModule_io_raddr_2_new_ptr_value = _vaddrModule_io_raddr_2_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  vaddrModule_io_raddr_2_new_ptr_flag = _vaddrModule_io_raddr_2_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire [7:0] _enqCancel_flushItself_T_1 = {io_enq_req_0_bits_robIdx_flag,io_enq_req_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _enqCancel_flushItself_T_2 = {io_brqRedirect_bits_robIdx_flag,io_brqRedirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _enqCancel_flushItself_T_3 = _enqCancel_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  enqCancel_flushItself = io_brqRedirect_bits_level & _enqCancel_flushItself_T_3; // @[Rob.scala 35:51]
  wire  enqCancel_differentFlag = io_enq_req_0_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  enqCancel_compare = io_enq_req_0_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _enqCancel_T = enqCancel_differentFlag ^ enqCancel_compare; // @[CircularQueuePtr.scala 87:19]
  wire  enqCancel_0 = io_brqRedirect_valid & (enqCancel_flushItself | _enqCancel_T); // @[Rob.scala 36:20]
  wire [7:0] _enqCancel_flushItself_T_5 = {io_enq_req_1_bits_robIdx_flag,io_enq_req_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _enqCancel_flushItself_T_7 = _enqCancel_flushItself_T_5 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  enqCancel_flushItself_1 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_7; // @[Rob.scala 35:51]
  wire  enqCancel_differentFlag_1 = io_enq_req_1_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  enqCancel_compare_1 = io_enq_req_1_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _enqCancel_T_2 = enqCancel_differentFlag_1 ^ enqCancel_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  enqCancel_1 = io_brqRedirect_valid & (enqCancel_flushItself_1 | _enqCancel_T_2); // @[Rob.scala 36:20]
  wire [7:0] _enqCancel_flushItself_T_9 = {io_enq_req_2_bits_robIdx_flag,io_enq_req_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _enqCancel_flushItself_T_11 = _enqCancel_flushItself_T_9 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  enqCancel_flushItself_2 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_11; // @[Rob.scala 35:51]
  wire  enqCancel_differentFlag_2 = io_enq_req_2_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  enqCancel_compare_2 = io_enq_req_2_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _enqCancel_T_4 = enqCancel_differentFlag_2 ^ enqCancel_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  enqCancel_2 = io_brqRedirect_valid & (enqCancel_flushItself_2 | _enqCancel_T_4); // @[Rob.scala 36:20]
  wire [7:0] _enqCancel_flushItself_T_13 = {io_enq_req_3_bits_robIdx_flag,io_enq_req_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _enqCancel_flushItself_T_15 = _enqCancel_flushItself_T_13 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  enqCancel_flushItself_3 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_15; // @[Rob.scala 35:51]
  wire  enqCancel_differentFlag_3 = io_enq_req_3_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  enqCancel_compare_3 = io_enq_req_3_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _enqCancel_T_6 = enqCancel_differentFlag_3 ^ enqCancel_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  enqCancel_3 = io_brqRedirect_valid & (enqCancel_flushItself_3 | _enqCancel_T_6); // @[Rob.scala 36:20]
  wire [6:0] _GEN_0 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_0_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_1 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_1_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_2 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_2_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_3 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_3_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_4 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_4_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_5 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_5_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_6 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_6_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_7 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_7_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_8 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_8_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_9 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_9_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_10 = 5'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_10_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_11 = 5'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_11_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_12 = 5'hc == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_12_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_13 = 5'hd == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_13_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_14 = 5'he == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_14_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_15 = 5'hf == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_15_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_16 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_16_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_17 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_17_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_18 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_18_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_19 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_19_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_20 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_20_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_21 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_21_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_22 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_22_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_23 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_23_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_24 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_24_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_25 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_25_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_26 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_26_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_27 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_27_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_28 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_28_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_29 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_29_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_30 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_30_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire [6:0] _GEN_31 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_31_robIdx_value; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_32 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_0_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_33 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_1_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_34 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_2_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_35 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_3_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_36 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_4_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_37 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_5_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_38 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_6_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_39 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_7_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_40 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_8_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_41 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_9_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_42 = 5'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_10_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_43 = 5'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_11_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_44 = 5'hc == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_12_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_45 = 5'hd == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_13_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_46 = 5'he == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_14_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_47 = 5'hf == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_15_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_48 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_16_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_49 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_17_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_50 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_18_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_51 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_19_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_52 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_20_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_53 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_21_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_54 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_22_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_55 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_23_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_56 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_24_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_57 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_25_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_58 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_26_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_59 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_27_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_60 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_28_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_61 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_29_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_62 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_30_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_63 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_31_robIdx_flag; // @[StoreQueue.scala 182:{25,25} 89:16]
  wire  _GEN_64 = 5'h0 == io_enq_req_0_bits_sqIdx_value | allocated_0; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_65 = 5'h1 == io_enq_req_0_bits_sqIdx_value | allocated_1; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_66 = 5'h2 == io_enq_req_0_bits_sqIdx_value | allocated_2; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_67 = 5'h3 == io_enq_req_0_bits_sqIdx_value | allocated_3; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_68 = 5'h4 == io_enq_req_0_bits_sqIdx_value | allocated_4; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_69 = 5'h5 == io_enq_req_0_bits_sqIdx_value | allocated_5; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_70 = 5'h6 == io_enq_req_0_bits_sqIdx_value | allocated_6; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_71 = 5'h7 == io_enq_req_0_bits_sqIdx_value | allocated_7; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_72 = 5'h8 == io_enq_req_0_bits_sqIdx_value | allocated_8; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_73 = 5'h9 == io_enq_req_0_bits_sqIdx_value | allocated_9; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_74 = 5'ha == io_enq_req_0_bits_sqIdx_value | allocated_10; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_75 = 5'hb == io_enq_req_0_bits_sqIdx_value | allocated_11; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_76 = 5'hc == io_enq_req_0_bits_sqIdx_value | allocated_12; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_77 = 5'hd == io_enq_req_0_bits_sqIdx_value | allocated_13; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_78 = 5'he == io_enq_req_0_bits_sqIdx_value | allocated_14; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_79 = 5'hf == io_enq_req_0_bits_sqIdx_value | allocated_15; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_80 = 5'h10 == io_enq_req_0_bits_sqIdx_value | allocated_16; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_81 = 5'h11 == io_enq_req_0_bits_sqIdx_value | allocated_17; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_82 = 5'h12 == io_enq_req_0_bits_sqIdx_value | allocated_18; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_83 = 5'h13 == io_enq_req_0_bits_sqIdx_value | allocated_19; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_84 = 5'h14 == io_enq_req_0_bits_sqIdx_value | allocated_20; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_85 = 5'h15 == io_enq_req_0_bits_sqIdx_value | allocated_21; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_86 = 5'h16 == io_enq_req_0_bits_sqIdx_value | allocated_22; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_87 = 5'h17 == io_enq_req_0_bits_sqIdx_value | allocated_23; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_88 = 5'h18 == io_enq_req_0_bits_sqIdx_value | allocated_24; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_89 = 5'h19 == io_enq_req_0_bits_sqIdx_value | allocated_25; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_90 = 5'h1a == io_enq_req_0_bits_sqIdx_value | allocated_26; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_91 = 5'h1b == io_enq_req_0_bits_sqIdx_value | allocated_27; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_92 = 5'h1c == io_enq_req_0_bits_sqIdx_value | allocated_28; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_93 = 5'h1d == io_enq_req_0_bits_sqIdx_value | allocated_29; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_94 = 5'h1e == io_enq_req_0_bits_sqIdx_value | allocated_30; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_95 = 5'h1f == io_enq_req_0_bits_sqIdx_value | allocated_31; // @[StoreQueue.scala 183:{24,24} 120:26]
  wire  _GEN_96 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_0; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_97 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_1; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_98 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_2; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_99 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_3; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_100 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_4; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_101 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_5; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_102 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_6; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_103 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_7; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_104 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_8; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_105 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_9; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_106 = 5'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_10; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_107 = 5'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_11; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_108 = 5'hc == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_12; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_109 = 5'hd == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_13; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_110 = 5'he == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_14; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_111 = 5'hf == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_15; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_112 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_16; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_113 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_17; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_114 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_18; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_115 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_19; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_116 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_20; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_117 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_21; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_118 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_22; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_119 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_23; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_120 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_24; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_121 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_25; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_122 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_26; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_123 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_27; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_124 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_28; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_125 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_29; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_126 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_30; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_127 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_31; // @[StoreQueue.scala 184:{24,24} 122:26]
  wire  _GEN_128 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_0; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_129 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_1; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_130 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_2; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_131 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_3; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_132 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_4; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_133 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_5; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_134 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_6; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_135 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_7; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_136 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_8; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_137 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_9; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_138 = 5'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_10; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_139 = 5'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_11; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_140 = 5'hc == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_12; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_141 = 5'hd == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_13; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_142 = 5'he == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_14; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_143 = 5'hf == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_15; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_144 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_16; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_145 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_17; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_146 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_18; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_147 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_19; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_148 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_20; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_149 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_21; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_150 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_22; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_151 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_23; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_152 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_24; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_153 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_25; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_154 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_26; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_155 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_27; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_156 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_28; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_157 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_29; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_158 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_30; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_159 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_31; // @[StoreQueue.scala 185:{24,24} 121:26]
  wire  _GEN_160 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_0; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_161 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_1; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_162 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_2; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_163 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_3; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_164 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_4; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_165 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_5; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_166 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_6; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_167 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_7; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_168 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_8; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_169 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_9; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_170 = 5'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_10; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_171 = 5'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_11; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_172 = 5'hc == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_12; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_173 = 5'hd == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_13; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_174 = 5'he == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_14; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_175 = 5'hf == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_15; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_176 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_16; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_177 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_17; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_178 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_18; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_179 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_19; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_180 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_20; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_181 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_21; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_182 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_22; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_183 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_23; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_184 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_24; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_185 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_25; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_186 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_26; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_187 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_27; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_188 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_28; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_189 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_29; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_190 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_30; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_191 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_31; // @[StoreQueue.scala 124:22 186:{24,24}]
  wire  _GEN_192 = 5'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_0; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_193 = 5'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_1; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_194 = 5'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_2; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_195 = 5'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_3; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_196 = 5'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_4; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_197 = 5'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_5; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_198 = 5'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_6; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_199 = 5'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_7; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_200 = 5'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_8; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_201 = 5'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_9; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_202 = 5'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_10; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_203 = 5'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_11; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_204 = 5'hc == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_12; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_205 = 5'hd == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_13; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_206 = 5'he == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_14; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_207 = 5'hf == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_15; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_208 = 5'h10 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_16; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_209 = 5'h11 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_17; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_210 = 5'h12 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_18; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_211 = 5'h13 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_19; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_212 = 5'h14 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_20; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_213 = 5'h15 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_21; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_214 = 5'h16 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_22; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_215 = 5'h17 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_23; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_216 = 5'h18 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_24; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_217 = 5'h19 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_25; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_218 = 5'h1a == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_26; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_219 = 5'h1b == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_27; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_220 = 5'h1c == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_28; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_221 = 5'h1d == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_29; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_222 = 5'h1e == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_30; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire  _GEN_223 = 5'h1f == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_31; // @[StoreQueue.scala 125:20 187:{22,22}]
  wire [6:0] _GEN_224 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_0 : uop_0_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_225 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1 : uop_1_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_226 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_2 : uop_2_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_227 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_3 : uop_3_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_228 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_4 : uop_4_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_229 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_5 : uop_5_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_230 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_6 : uop_6_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_231 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_7 : uop_7_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_232 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_8 : uop_8_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_233 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_9 : uop_9_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_234 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_10 : uop_10_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_235 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_11 : uop_11_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_236 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_12 : uop_12_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_237 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_13 : uop_13_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_238 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_14 : uop_14_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_239 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_15 : uop_15_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_240 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_16 : uop_16_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_241 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_17 : uop_17_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_242 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_18 : uop_18_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_243 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_19 : uop_19_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_244 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_20 : uop_20_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_245 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_21 : uop_21_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_246 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_22 : uop_22_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_247 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_23 : uop_23_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_248 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_24 : uop_24_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_249 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_25 : uop_25_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_250 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_26 : uop_26_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_251 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_27 : uop_27_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_252 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_28 : uop_28_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_253 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_29 : uop_29_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_254 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_30 : uop_30_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire [6:0] _GEN_255 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_31 : uop_31_robIdx_value; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_256 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_32 : uop_0_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_257 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_33 : uop_1_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_258 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_34 : uop_2_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_259 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_35 : uop_3_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_260 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_36 : uop_4_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_261 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_37 : uop_5_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_262 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_38 : uop_6_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_263 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_39 : uop_7_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_264 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_40 : uop_8_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_265 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_41 : uop_9_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_266 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_42 : uop_10_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_267 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_43 : uop_11_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_268 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_44 : uop_12_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_269 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_45 : uop_13_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_270 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_46 : uop_14_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_271 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_47 : uop_15_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_272 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_48 : uop_16_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_273 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_49 : uop_17_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_274 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_50 : uop_18_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_275 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_51 : uop_19_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_276 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_52 : uop_20_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_277 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_53 : uop_21_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_278 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_54 : uop_22_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_279 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_55 : uop_23_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_280 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_56 : uop_24_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_281 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_57 : uop_25_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_282 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_58 : uop_26_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_283 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_59 : uop_27_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_284 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_60 : uop_28_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_285 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_61 : uop_29_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_286 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_62 : uop_30_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_287 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_63 : uop_31_robIdx_flag; // @[StoreQueue.scala 181:43 89:16]
  wire  _GEN_288 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_64 : allocated_0; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_289 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_65 : allocated_1; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_290 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_66 : allocated_2; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_291 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_67 : allocated_3; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_292 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_68 : allocated_4; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_293 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_69 : allocated_5; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_294 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_70 : allocated_6; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_295 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_71 : allocated_7; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_296 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_72 : allocated_8; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_297 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_73 : allocated_9; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_298 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_74 : allocated_10; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_299 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_75 : allocated_11; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_300 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_76 : allocated_12; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_301 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_77 : allocated_13; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_302 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_78 : allocated_14; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_303 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_79 : allocated_15; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_304 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_80 : allocated_16; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_305 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_81 : allocated_17; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_306 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_82 : allocated_18; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_307 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_83 : allocated_19; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_308 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_84 : allocated_20; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_309 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_85 : allocated_21; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_310 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_86 : allocated_22; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_311 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_87 : allocated_23; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_312 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_88 : allocated_24; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_313 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_89 : allocated_25; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_314 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_90 : allocated_26; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_315 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_91 : allocated_27; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_316 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_92 : allocated_28; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_317 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_93 : allocated_29; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_318 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_94 : allocated_30; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_319 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_95 : allocated_31; // @[StoreQueue.scala 120:26 181:43]
  wire  _GEN_320 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_96 : datavalid_0; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_321 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_97 : datavalid_1; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_322 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_98 : datavalid_2; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_323 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_99 : datavalid_3; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_324 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_100 : datavalid_4; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_325 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_101 : datavalid_5; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_326 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_102 : datavalid_6; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_327 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_103 : datavalid_7; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_328 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_104 : datavalid_8; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_329 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_105 : datavalid_9; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_330 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_106 : datavalid_10; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_331 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_107 : datavalid_11; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_332 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_108 : datavalid_12; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_333 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_109 : datavalid_13; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_334 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_110 : datavalid_14; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_335 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_111 : datavalid_15; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_336 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_112 : datavalid_16; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_337 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_113 : datavalid_17; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_338 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_114 : datavalid_18; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_339 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_115 : datavalid_19; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_340 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_116 : datavalid_20; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_341 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_117 : datavalid_21; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_342 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_118 : datavalid_22; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_343 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_119 : datavalid_23; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_344 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_120 : datavalid_24; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_345 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_121 : datavalid_25; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_346 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_122 : datavalid_26; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_347 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_123 : datavalid_27; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_348 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_124 : datavalid_28; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_349 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_125 : datavalid_29; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_350 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_126 : datavalid_30; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_351 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_127 : datavalid_31; // @[StoreQueue.scala 122:26 181:43]
  wire  _GEN_352 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_128 : addrvalid_0; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_353 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_129 : addrvalid_1; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_354 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_130 : addrvalid_2; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_355 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_131 : addrvalid_3; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_356 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_132 : addrvalid_4; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_357 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_133 : addrvalid_5; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_358 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_134 : addrvalid_6; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_359 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_135 : addrvalid_7; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_360 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_136 : addrvalid_8; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_361 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_137 : addrvalid_9; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_362 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_138 : addrvalid_10; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_363 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_139 : addrvalid_11; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_364 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_140 : addrvalid_12; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_365 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_141 : addrvalid_13; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_366 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_142 : addrvalid_14; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_367 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_143 : addrvalid_15; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_368 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_144 : addrvalid_16; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_369 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_145 : addrvalid_17; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_370 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_146 : addrvalid_18; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_371 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_147 : addrvalid_19; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_372 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_148 : addrvalid_20; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_373 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_149 : addrvalid_21; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_374 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_150 : addrvalid_22; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_375 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_151 : addrvalid_23; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_376 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_152 : addrvalid_24; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_377 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_153 : addrvalid_25; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_378 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_154 : addrvalid_26; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_379 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_155 : addrvalid_27; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_380 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_156 : addrvalid_28; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_381 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_157 : addrvalid_29; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_382 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_158 : addrvalid_30; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_383 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_159 : addrvalid_31; // @[StoreQueue.scala 121:26 181:43]
  wire  _GEN_384 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_160 : committed_0; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_385 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_161 : committed_1; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_386 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_162 : committed_2; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_387 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_163 : committed_3; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_388 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_164 : committed_4; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_389 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_165 : committed_5; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_390 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_166 : committed_6; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_391 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_167 : committed_7; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_392 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_168 : committed_8; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_393 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_169 : committed_9; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_394 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_170 : committed_10; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_395 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_171 : committed_11; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_396 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_172 : committed_12; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_397 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_173 : committed_13; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_398 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_174 : committed_14; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_399 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_175 : committed_15; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_400 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_176 : committed_16; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_401 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_177 : committed_17; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_402 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_178 : committed_18; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_403 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_179 : committed_19; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_404 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_180 : committed_20; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_405 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_181 : committed_21; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_406 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_182 : committed_22; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_407 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_183 : committed_23; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_408 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_184 : committed_24; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_409 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_185 : committed_25; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_410 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_186 : committed_26; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_411 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_187 : committed_27; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_412 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_188 : committed_28; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_413 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_189 : committed_29; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_414 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_190 : committed_30; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_415 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_191 : committed_31; // @[StoreQueue.scala 124:22 181:43]
  wire  _GEN_416 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_192 : pending_0; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_417 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_193 : pending_1; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_418 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_194 : pending_2; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_419 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_195 : pending_3; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_420 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_196 : pending_4; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_421 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_197 : pending_5; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_422 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_198 : pending_6; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_423 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_199 : pending_7; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_424 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_200 : pending_8; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_425 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_201 : pending_9; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_426 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_202 : pending_10; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_427 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_203 : pending_11; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_428 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_204 : pending_12; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_429 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_205 : pending_13; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_430 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_206 : pending_14; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_431 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_207 : pending_15; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_432 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_208 : pending_16; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_433 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_209 : pending_17; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_434 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_210 : pending_18; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_435 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_211 : pending_19; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_436 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_212 : pending_20; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_437 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_213 : pending_21; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_438 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_214 : pending_22; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_439 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_215 : pending_23; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_440 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_216 : pending_24; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_441 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_217 : pending_25; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_442 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_218 : pending_26; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_443 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_219 : pending_27; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_444 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_220 : pending_28; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_445 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_221 : pending_29; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_446 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_222 : pending_30; // @[StoreQueue.scala 125:20 181:43]
  wire  _GEN_447 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_223 : pending_31; // @[StoreQueue.scala 125:20 181:43]
  wire [6:0] _GEN_448 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_224; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_449 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_225; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_450 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_226; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_451 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_227; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_452 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_228; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_453 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_229; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_454 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_230; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_455 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_231; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_456 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_232; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_457 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_233; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_458 = 5'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_234; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_459 = 5'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_235; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_460 = 5'hc == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_236; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_461 = 5'hd == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_237; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_462 = 5'he == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_238; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_463 = 5'hf == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_239; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_464 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_240; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_465 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_241; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_466 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_242; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_467 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_243; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_468 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_244; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_469 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_245; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_470 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_246; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_471 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_247; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_472 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_248; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_473 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_249; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_474 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_250; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_475 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_251; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_476 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_252; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_477 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_253; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_478 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_254; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_479 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_255; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_480 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_256; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_481 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_257; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_482 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_258; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_483 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_259; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_484 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_260; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_485 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_261; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_486 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_262; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_487 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_263; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_488 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_264; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_489 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_265; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_490 = 5'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_266; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_491 = 5'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_267; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_492 = 5'hc == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_268; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_493 = 5'hd == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_269; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_494 = 5'he == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_270; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_495 = 5'hf == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_271; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_496 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_272; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_497 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_273; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_498 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_274; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_499 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_275; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_500 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_276; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_501 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_277; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_502 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_278; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_503 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_279; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_504 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_280; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_505 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_281; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_506 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_282; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_507 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_283; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_508 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_284; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_509 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_285; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_510 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_286; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_511 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_287; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_512 = 5'h0 == io_enq_req_1_bits_sqIdx_value | _GEN_288; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_513 = 5'h1 == io_enq_req_1_bits_sqIdx_value | _GEN_289; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_514 = 5'h2 == io_enq_req_1_bits_sqIdx_value | _GEN_290; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_515 = 5'h3 == io_enq_req_1_bits_sqIdx_value | _GEN_291; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_516 = 5'h4 == io_enq_req_1_bits_sqIdx_value | _GEN_292; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_517 = 5'h5 == io_enq_req_1_bits_sqIdx_value | _GEN_293; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_518 = 5'h6 == io_enq_req_1_bits_sqIdx_value | _GEN_294; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_519 = 5'h7 == io_enq_req_1_bits_sqIdx_value | _GEN_295; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_520 = 5'h8 == io_enq_req_1_bits_sqIdx_value | _GEN_296; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_521 = 5'h9 == io_enq_req_1_bits_sqIdx_value | _GEN_297; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_522 = 5'ha == io_enq_req_1_bits_sqIdx_value | _GEN_298; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_523 = 5'hb == io_enq_req_1_bits_sqIdx_value | _GEN_299; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_524 = 5'hc == io_enq_req_1_bits_sqIdx_value | _GEN_300; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_525 = 5'hd == io_enq_req_1_bits_sqIdx_value | _GEN_301; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_526 = 5'he == io_enq_req_1_bits_sqIdx_value | _GEN_302; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_527 = 5'hf == io_enq_req_1_bits_sqIdx_value | _GEN_303; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_528 = 5'h10 == io_enq_req_1_bits_sqIdx_value | _GEN_304; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_529 = 5'h11 == io_enq_req_1_bits_sqIdx_value | _GEN_305; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_530 = 5'h12 == io_enq_req_1_bits_sqIdx_value | _GEN_306; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_531 = 5'h13 == io_enq_req_1_bits_sqIdx_value | _GEN_307; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_532 = 5'h14 == io_enq_req_1_bits_sqIdx_value | _GEN_308; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_533 = 5'h15 == io_enq_req_1_bits_sqIdx_value | _GEN_309; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_534 = 5'h16 == io_enq_req_1_bits_sqIdx_value | _GEN_310; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_535 = 5'h17 == io_enq_req_1_bits_sqIdx_value | _GEN_311; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_536 = 5'h18 == io_enq_req_1_bits_sqIdx_value | _GEN_312; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_537 = 5'h19 == io_enq_req_1_bits_sqIdx_value | _GEN_313; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_538 = 5'h1a == io_enq_req_1_bits_sqIdx_value | _GEN_314; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_539 = 5'h1b == io_enq_req_1_bits_sqIdx_value | _GEN_315; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_540 = 5'h1c == io_enq_req_1_bits_sqIdx_value | _GEN_316; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_541 = 5'h1d == io_enq_req_1_bits_sqIdx_value | _GEN_317; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_542 = 5'h1e == io_enq_req_1_bits_sqIdx_value | _GEN_318; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_543 = 5'h1f == io_enq_req_1_bits_sqIdx_value | _GEN_319; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_544 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_320; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_545 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_321; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_546 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_322; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_547 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_323; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_548 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_324; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_549 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_325; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_550 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_326; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_551 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_327; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_552 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_328; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_553 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_329; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_554 = 5'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_330; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_555 = 5'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_331; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_556 = 5'hc == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_332; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_557 = 5'hd == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_333; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_558 = 5'he == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_334; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_559 = 5'hf == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_335; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_560 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_336; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_561 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_337; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_562 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_338; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_563 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_339; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_564 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_340; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_565 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_341; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_566 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_342; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_567 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_343; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_568 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_344; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_569 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_345; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_570 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_346; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_571 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_347; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_572 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_348; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_573 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_349; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_574 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_350; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_575 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_351; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_576 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_352; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_577 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_353; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_578 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_354; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_579 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_355; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_580 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_356; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_581 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_357; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_582 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_358; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_583 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_359; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_584 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_360; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_585 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_361; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_586 = 5'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_362; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_587 = 5'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_363; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_588 = 5'hc == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_364; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_589 = 5'hd == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_365; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_590 = 5'he == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_366; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_591 = 5'hf == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_367; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_592 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_368; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_593 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_369; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_594 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_370; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_595 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_371; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_596 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_372; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_597 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_373; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_598 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_374; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_599 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_375; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_600 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_376; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_601 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_377; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_602 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_378; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_603 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_379; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_604 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_380; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_605 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_381; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_606 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_382; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_607 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_383; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_608 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_384; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_609 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_385; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_610 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_386; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_611 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_387; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_612 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_388; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_613 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_389; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_614 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_390; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_615 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_391; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_616 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_392; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_617 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_393; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_618 = 5'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_394; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_619 = 5'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_395; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_620 = 5'hc == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_396; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_621 = 5'hd == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_397; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_622 = 5'he == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_398; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_623 = 5'hf == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_399; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_624 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_400; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_625 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_401; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_626 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_402; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_627 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_403; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_628 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_404; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_629 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_405; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_630 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_406; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_631 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_407; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_632 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_408; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_633 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_409; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_634 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_410; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_635 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_411; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_636 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_412; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_637 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_413; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_638 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_414; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_639 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_415; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_640 = 5'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_416; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_641 = 5'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_417; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_642 = 5'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_418; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_643 = 5'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_419; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_644 = 5'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_420; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_645 = 5'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_421; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_646 = 5'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_422; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_647 = 5'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_423; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_648 = 5'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_424; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_649 = 5'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_425; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_650 = 5'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_426; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_651 = 5'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_427; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_652 = 5'hc == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_428; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_653 = 5'hd == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_429; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_654 = 5'he == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_430; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_655 = 5'hf == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_431; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_656 = 5'h10 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_432; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_657 = 5'h11 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_433; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_658 = 5'h12 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_434; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_659 = 5'h13 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_435; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_660 = 5'h14 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_436; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_661 = 5'h15 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_437; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_662 = 5'h16 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_438; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_663 = 5'h17 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_439; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_664 = 5'h18 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_440; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_665 = 5'h19 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_441; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_666 = 5'h1a == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_442; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_667 = 5'h1b == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_443; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_668 = 5'h1c == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_444; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_669 = 5'h1d == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_445; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_670 = 5'h1e == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_446; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_671 = 5'h1f == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_447; // @[StoreQueue.scala 187:{22,22}]
  wire [6:0] _GEN_676 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_448 : _GEN_224; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_677 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_449 : _GEN_225; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_678 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_450 : _GEN_226; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_679 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_451 : _GEN_227; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_680 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_452 : _GEN_228; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_681 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_453 : _GEN_229; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_682 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_454 : _GEN_230; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_683 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_455 : _GEN_231; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_684 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_456 : _GEN_232; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_685 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_457 : _GEN_233; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_686 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_458 : _GEN_234; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_687 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_459 : _GEN_235; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_688 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_460 : _GEN_236; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_689 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_461 : _GEN_237; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_690 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_462 : _GEN_238; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_691 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_463 : _GEN_239; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_692 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_464 : _GEN_240; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_693 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_465 : _GEN_241; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_694 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_466 : _GEN_242; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_695 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_467 : _GEN_243; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_696 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_468 : _GEN_244; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_697 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_469 : _GEN_245; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_698 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_470 : _GEN_246; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_699 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_471 : _GEN_247; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_700 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_472 : _GEN_248; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_701 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_473 : _GEN_249; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_702 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_474 : _GEN_250; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_703 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_475 : _GEN_251; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_704 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_476 : _GEN_252; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_705 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_477 : _GEN_253; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_706 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_478 : _GEN_254; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_707 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_479 : _GEN_255; // @[StoreQueue.scala 181:43]
  wire  _GEN_708 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_480 : _GEN_256; // @[StoreQueue.scala 181:43]
  wire  _GEN_709 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_481 : _GEN_257; // @[StoreQueue.scala 181:43]
  wire  _GEN_710 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_482 : _GEN_258; // @[StoreQueue.scala 181:43]
  wire  _GEN_711 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_483 : _GEN_259; // @[StoreQueue.scala 181:43]
  wire  _GEN_712 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_484 : _GEN_260; // @[StoreQueue.scala 181:43]
  wire  _GEN_713 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_485 : _GEN_261; // @[StoreQueue.scala 181:43]
  wire  _GEN_714 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_486 : _GEN_262; // @[StoreQueue.scala 181:43]
  wire  _GEN_715 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_487 : _GEN_263; // @[StoreQueue.scala 181:43]
  wire  _GEN_716 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_488 : _GEN_264; // @[StoreQueue.scala 181:43]
  wire  _GEN_717 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_489 : _GEN_265; // @[StoreQueue.scala 181:43]
  wire  _GEN_718 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_490 : _GEN_266; // @[StoreQueue.scala 181:43]
  wire  _GEN_719 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_491 : _GEN_267; // @[StoreQueue.scala 181:43]
  wire  _GEN_720 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_492 : _GEN_268; // @[StoreQueue.scala 181:43]
  wire  _GEN_721 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_493 : _GEN_269; // @[StoreQueue.scala 181:43]
  wire  _GEN_722 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_494 : _GEN_270; // @[StoreQueue.scala 181:43]
  wire  _GEN_723 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_495 : _GEN_271; // @[StoreQueue.scala 181:43]
  wire  _GEN_724 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_496 : _GEN_272; // @[StoreQueue.scala 181:43]
  wire  _GEN_725 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_497 : _GEN_273; // @[StoreQueue.scala 181:43]
  wire  _GEN_726 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_498 : _GEN_274; // @[StoreQueue.scala 181:43]
  wire  _GEN_727 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_499 : _GEN_275; // @[StoreQueue.scala 181:43]
  wire  _GEN_728 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_500 : _GEN_276; // @[StoreQueue.scala 181:43]
  wire  _GEN_729 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_501 : _GEN_277; // @[StoreQueue.scala 181:43]
  wire  _GEN_730 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_502 : _GEN_278; // @[StoreQueue.scala 181:43]
  wire  _GEN_731 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_503 : _GEN_279; // @[StoreQueue.scala 181:43]
  wire  _GEN_732 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_504 : _GEN_280; // @[StoreQueue.scala 181:43]
  wire  _GEN_733 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_505 : _GEN_281; // @[StoreQueue.scala 181:43]
  wire  _GEN_734 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_506 : _GEN_282; // @[StoreQueue.scala 181:43]
  wire  _GEN_735 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_507 : _GEN_283; // @[StoreQueue.scala 181:43]
  wire  _GEN_736 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_508 : _GEN_284; // @[StoreQueue.scala 181:43]
  wire  _GEN_737 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_509 : _GEN_285; // @[StoreQueue.scala 181:43]
  wire  _GEN_738 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_510 : _GEN_286; // @[StoreQueue.scala 181:43]
  wire  _GEN_739 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_511 : _GEN_287; // @[StoreQueue.scala 181:43]
  wire  _GEN_740 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_512 : _GEN_288; // @[StoreQueue.scala 181:43]
  wire  _GEN_741 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_513 : _GEN_289; // @[StoreQueue.scala 181:43]
  wire  _GEN_742 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_514 : _GEN_290; // @[StoreQueue.scala 181:43]
  wire  _GEN_743 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_515 : _GEN_291; // @[StoreQueue.scala 181:43]
  wire  _GEN_744 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_516 : _GEN_292; // @[StoreQueue.scala 181:43]
  wire  _GEN_745 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_517 : _GEN_293; // @[StoreQueue.scala 181:43]
  wire  _GEN_746 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_518 : _GEN_294; // @[StoreQueue.scala 181:43]
  wire  _GEN_747 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_519 : _GEN_295; // @[StoreQueue.scala 181:43]
  wire  _GEN_748 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_520 : _GEN_296; // @[StoreQueue.scala 181:43]
  wire  _GEN_749 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_521 : _GEN_297; // @[StoreQueue.scala 181:43]
  wire  _GEN_750 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_522 : _GEN_298; // @[StoreQueue.scala 181:43]
  wire  _GEN_751 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_523 : _GEN_299; // @[StoreQueue.scala 181:43]
  wire  _GEN_752 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_524 : _GEN_300; // @[StoreQueue.scala 181:43]
  wire  _GEN_753 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_525 : _GEN_301; // @[StoreQueue.scala 181:43]
  wire  _GEN_754 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_526 : _GEN_302; // @[StoreQueue.scala 181:43]
  wire  _GEN_755 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_527 : _GEN_303; // @[StoreQueue.scala 181:43]
  wire  _GEN_756 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_528 : _GEN_304; // @[StoreQueue.scala 181:43]
  wire  _GEN_757 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_529 : _GEN_305; // @[StoreQueue.scala 181:43]
  wire  _GEN_758 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_530 : _GEN_306; // @[StoreQueue.scala 181:43]
  wire  _GEN_759 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_531 : _GEN_307; // @[StoreQueue.scala 181:43]
  wire  _GEN_760 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_532 : _GEN_308; // @[StoreQueue.scala 181:43]
  wire  _GEN_761 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_533 : _GEN_309; // @[StoreQueue.scala 181:43]
  wire  _GEN_762 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_534 : _GEN_310; // @[StoreQueue.scala 181:43]
  wire  _GEN_763 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_535 : _GEN_311; // @[StoreQueue.scala 181:43]
  wire  _GEN_764 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_536 : _GEN_312; // @[StoreQueue.scala 181:43]
  wire  _GEN_765 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_537 : _GEN_313; // @[StoreQueue.scala 181:43]
  wire  _GEN_766 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_538 : _GEN_314; // @[StoreQueue.scala 181:43]
  wire  _GEN_767 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_539 : _GEN_315; // @[StoreQueue.scala 181:43]
  wire  _GEN_768 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_540 : _GEN_316; // @[StoreQueue.scala 181:43]
  wire  _GEN_769 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_541 : _GEN_317; // @[StoreQueue.scala 181:43]
  wire  _GEN_770 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_542 : _GEN_318; // @[StoreQueue.scala 181:43]
  wire  _GEN_771 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_543 : _GEN_319; // @[StoreQueue.scala 181:43]
  wire  _GEN_772 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_544 : _GEN_320; // @[StoreQueue.scala 181:43]
  wire  _GEN_773 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_545 : _GEN_321; // @[StoreQueue.scala 181:43]
  wire  _GEN_774 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_546 : _GEN_322; // @[StoreQueue.scala 181:43]
  wire  _GEN_775 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_547 : _GEN_323; // @[StoreQueue.scala 181:43]
  wire  _GEN_776 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_548 : _GEN_324; // @[StoreQueue.scala 181:43]
  wire  _GEN_777 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_549 : _GEN_325; // @[StoreQueue.scala 181:43]
  wire  _GEN_778 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_550 : _GEN_326; // @[StoreQueue.scala 181:43]
  wire  _GEN_779 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_551 : _GEN_327; // @[StoreQueue.scala 181:43]
  wire  _GEN_780 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_552 : _GEN_328; // @[StoreQueue.scala 181:43]
  wire  _GEN_781 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_553 : _GEN_329; // @[StoreQueue.scala 181:43]
  wire  _GEN_782 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_554 : _GEN_330; // @[StoreQueue.scala 181:43]
  wire  _GEN_783 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_555 : _GEN_331; // @[StoreQueue.scala 181:43]
  wire  _GEN_784 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_556 : _GEN_332; // @[StoreQueue.scala 181:43]
  wire  _GEN_785 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_557 : _GEN_333; // @[StoreQueue.scala 181:43]
  wire  _GEN_786 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_558 : _GEN_334; // @[StoreQueue.scala 181:43]
  wire  _GEN_787 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_559 : _GEN_335; // @[StoreQueue.scala 181:43]
  wire  _GEN_788 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_560 : _GEN_336; // @[StoreQueue.scala 181:43]
  wire  _GEN_789 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_561 : _GEN_337; // @[StoreQueue.scala 181:43]
  wire  _GEN_790 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_562 : _GEN_338; // @[StoreQueue.scala 181:43]
  wire  _GEN_791 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_563 : _GEN_339; // @[StoreQueue.scala 181:43]
  wire  _GEN_792 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_564 : _GEN_340; // @[StoreQueue.scala 181:43]
  wire  _GEN_793 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_565 : _GEN_341; // @[StoreQueue.scala 181:43]
  wire  _GEN_794 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_566 : _GEN_342; // @[StoreQueue.scala 181:43]
  wire  _GEN_795 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_567 : _GEN_343; // @[StoreQueue.scala 181:43]
  wire  _GEN_796 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_568 : _GEN_344; // @[StoreQueue.scala 181:43]
  wire  _GEN_797 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_569 : _GEN_345; // @[StoreQueue.scala 181:43]
  wire  _GEN_798 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_570 : _GEN_346; // @[StoreQueue.scala 181:43]
  wire  _GEN_799 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_571 : _GEN_347; // @[StoreQueue.scala 181:43]
  wire  _GEN_800 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_572 : _GEN_348; // @[StoreQueue.scala 181:43]
  wire  _GEN_801 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_573 : _GEN_349; // @[StoreQueue.scala 181:43]
  wire  _GEN_802 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_574 : _GEN_350; // @[StoreQueue.scala 181:43]
  wire  _GEN_803 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_575 : _GEN_351; // @[StoreQueue.scala 181:43]
  wire  _GEN_804 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_576 : _GEN_352; // @[StoreQueue.scala 181:43]
  wire  _GEN_805 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_577 : _GEN_353; // @[StoreQueue.scala 181:43]
  wire  _GEN_806 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_578 : _GEN_354; // @[StoreQueue.scala 181:43]
  wire  _GEN_807 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_579 : _GEN_355; // @[StoreQueue.scala 181:43]
  wire  _GEN_808 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_580 : _GEN_356; // @[StoreQueue.scala 181:43]
  wire  _GEN_809 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_581 : _GEN_357; // @[StoreQueue.scala 181:43]
  wire  _GEN_810 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_582 : _GEN_358; // @[StoreQueue.scala 181:43]
  wire  _GEN_811 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_583 : _GEN_359; // @[StoreQueue.scala 181:43]
  wire  _GEN_812 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_584 : _GEN_360; // @[StoreQueue.scala 181:43]
  wire  _GEN_813 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_585 : _GEN_361; // @[StoreQueue.scala 181:43]
  wire  _GEN_814 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_586 : _GEN_362; // @[StoreQueue.scala 181:43]
  wire  _GEN_815 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_587 : _GEN_363; // @[StoreQueue.scala 181:43]
  wire  _GEN_816 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_588 : _GEN_364; // @[StoreQueue.scala 181:43]
  wire  _GEN_817 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_589 : _GEN_365; // @[StoreQueue.scala 181:43]
  wire  _GEN_818 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_590 : _GEN_366; // @[StoreQueue.scala 181:43]
  wire  _GEN_819 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_591 : _GEN_367; // @[StoreQueue.scala 181:43]
  wire  _GEN_820 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_592 : _GEN_368; // @[StoreQueue.scala 181:43]
  wire  _GEN_821 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_593 : _GEN_369; // @[StoreQueue.scala 181:43]
  wire  _GEN_822 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_594 : _GEN_370; // @[StoreQueue.scala 181:43]
  wire  _GEN_823 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_595 : _GEN_371; // @[StoreQueue.scala 181:43]
  wire  _GEN_824 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_596 : _GEN_372; // @[StoreQueue.scala 181:43]
  wire  _GEN_825 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_597 : _GEN_373; // @[StoreQueue.scala 181:43]
  wire  _GEN_826 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_598 : _GEN_374; // @[StoreQueue.scala 181:43]
  wire  _GEN_827 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_599 : _GEN_375; // @[StoreQueue.scala 181:43]
  wire  _GEN_828 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_600 : _GEN_376; // @[StoreQueue.scala 181:43]
  wire  _GEN_829 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_601 : _GEN_377; // @[StoreQueue.scala 181:43]
  wire  _GEN_830 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_602 : _GEN_378; // @[StoreQueue.scala 181:43]
  wire  _GEN_831 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_603 : _GEN_379; // @[StoreQueue.scala 181:43]
  wire  _GEN_832 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_604 : _GEN_380; // @[StoreQueue.scala 181:43]
  wire  _GEN_833 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_605 : _GEN_381; // @[StoreQueue.scala 181:43]
  wire  _GEN_834 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_606 : _GEN_382; // @[StoreQueue.scala 181:43]
  wire  _GEN_835 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_607 : _GEN_383; // @[StoreQueue.scala 181:43]
  wire  _GEN_836 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_608 : _GEN_384; // @[StoreQueue.scala 181:43]
  wire  _GEN_837 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_609 : _GEN_385; // @[StoreQueue.scala 181:43]
  wire  _GEN_838 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_610 : _GEN_386; // @[StoreQueue.scala 181:43]
  wire  _GEN_839 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_611 : _GEN_387; // @[StoreQueue.scala 181:43]
  wire  _GEN_840 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_612 : _GEN_388; // @[StoreQueue.scala 181:43]
  wire  _GEN_841 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_613 : _GEN_389; // @[StoreQueue.scala 181:43]
  wire  _GEN_842 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_614 : _GEN_390; // @[StoreQueue.scala 181:43]
  wire  _GEN_843 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_615 : _GEN_391; // @[StoreQueue.scala 181:43]
  wire  _GEN_844 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_616 : _GEN_392; // @[StoreQueue.scala 181:43]
  wire  _GEN_845 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_617 : _GEN_393; // @[StoreQueue.scala 181:43]
  wire  _GEN_846 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_618 : _GEN_394; // @[StoreQueue.scala 181:43]
  wire  _GEN_847 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_619 : _GEN_395; // @[StoreQueue.scala 181:43]
  wire  _GEN_848 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_620 : _GEN_396; // @[StoreQueue.scala 181:43]
  wire  _GEN_849 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_621 : _GEN_397; // @[StoreQueue.scala 181:43]
  wire  _GEN_850 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_622 : _GEN_398; // @[StoreQueue.scala 181:43]
  wire  _GEN_851 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_623 : _GEN_399; // @[StoreQueue.scala 181:43]
  wire  _GEN_852 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_624 : _GEN_400; // @[StoreQueue.scala 181:43]
  wire  _GEN_853 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_625 : _GEN_401; // @[StoreQueue.scala 181:43]
  wire  _GEN_854 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_626 : _GEN_402; // @[StoreQueue.scala 181:43]
  wire  _GEN_855 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_627 : _GEN_403; // @[StoreQueue.scala 181:43]
  wire  _GEN_856 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_628 : _GEN_404; // @[StoreQueue.scala 181:43]
  wire  _GEN_857 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_629 : _GEN_405; // @[StoreQueue.scala 181:43]
  wire  _GEN_858 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_630 : _GEN_406; // @[StoreQueue.scala 181:43]
  wire  _GEN_859 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_631 : _GEN_407; // @[StoreQueue.scala 181:43]
  wire  _GEN_860 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_632 : _GEN_408; // @[StoreQueue.scala 181:43]
  wire  _GEN_861 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_633 : _GEN_409; // @[StoreQueue.scala 181:43]
  wire  _GEN_862 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_634 : _GEN_410; // @[StoreQueue.scala 181:43]
  wire  _GEN_863 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_635 : _GEN_411; // @[StoreQueue.scala 181:43]
  wire  _GEN_864 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_636 : _GEN_412; // @[StoreQueue.scala 181:43]
  wire  _GEN_865 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_637 : _GEN_413; // @[StoreQueue.scala 181:43]
  wire  _GEN_866 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_638 : _GEN_414; // @[StoreQueue.scala 181:43]
  wire  _GEN_867 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_639 : _GEN_415; // @[StoreQueue.scala 181:43]
  wire  _GEN_868 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_640 : _GEN_416; // @[StoreQueue.scala 181:43]
  wire  _GEN_869 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_641 : _GEN_417; // @[StoreQueue.scala 181:43]
  wire  _GEN_870 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_642 : _GEN_418; // @[StoreQueue.scala 181:43]
  wire  _GEN_871 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_643 : _GEN_419; // @[StoreQueue.scala 181:43]
  wire  _GEN_872 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_644 : _GEN_420; // @[StoreQueue.scala 181:43]
  wire  _GEN_873 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_645 : _GEN_421; // @[StoreQueue.scala 181:43]
  wire  _GEN_874 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_646 : _GEN_422; // @[StoreQueue.scala 181:43]
  wire  _GEN_875 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_647 : _GEN_423; // @[StoreQueue.scala 181:43]
  wire  _GEN_876 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_648 : _GEN_424; // @[StoreQueue.scala 181:43]
  wire  _GEN_877 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_649 : _GEN_425; // @[StoreQueue.scala 181:43]
  wire  _GEN_878 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_650 : _GEN_426; // @[StoreQueue.scala 181:43]
  wire  _GEN_879 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_651 : _GEN_427; // @[StoreQueue.scala 181:43]
  wire  _GEN_880 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_652 : _GEN_428; // @[StoreQueue.scala 181:43]
  wire  _GEN_881 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_653 : _GEN_429; // @[StoreQueue.scala 181:43]
  wire  _GEN_882 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_654 : _GEN_430; // @[StoreQueue.scala 181:43]
  wire  _GEN_883 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_655 : _GEN_431; // @[StoreQueue.scala 181:43]
  wire  _GEN_884 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_656 : _GEN_432; // @[StoreQueue.scala 181:43]
  wire  _GEN_885 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_657 : _GEN_433; // @[StoreQueue.scala 181:43]
  wire  _GEN_886 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_658 : _GEN_434; // @[StoreQueue.scala 181:43]
  wire  _GEN_887 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_659 : _GEN_435; // @[StoreQueue.scala 181:43]
  wire  _GEN_888 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_660 : _GEN_436; // @[StoreQueue.scala 181:43]
  wire  _GEN_889 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_661 : _GEN_437; // @[StoreQueue.scala 181:43]
  wire  _GEN_890 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_662 : _GEN_438; // @[StoreQueue.scala 181:43]
  wire  _GEN_891 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_663 : _GEN_439; // @[StoreQueue.scala 181:43]
  wire  _GEN_892 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_664 : _GEN_440; // @[StoreQueue.scala 181:43]
  wire  _GEN_893 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_665 : _GEN_441; // @[StoreQueue.scala 181:43]
  wire  _GEN_894 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_666 : _GEN_442; // @[StoreQueue.scala 181:43]
  wire  _GEN_895 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_667 : _GEN_443; // @[StoreQueue.scala 181:43]
  wire  _GEN_896 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_668 : _GEN_444; // @[StoreQueue.scala 181:43]
  wire  _GEN_897 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_669 : _GEN_445; // @[StoreQueue.scala 181:43]
  wire  _GEN_898 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_670 : _GEN_446; // @[StoreQueue.scala 181:43]
  wire  _GEN_899 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_671 : _GEN_447; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_904 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_676; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_905 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_677; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_906 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_678; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_907 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_679; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_908 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_680; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_909 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_681; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_910 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_682; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_911 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_683; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_912 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_684; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_913 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_685; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_914 = 5'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_686; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_915 = 5'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_687; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_916 = 5'hc == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_688; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_917 = 5'hd == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_689; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_918 = 5'he == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_690; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_919 = 5'hf == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_691; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_920 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_692; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_921 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_693; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_922 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_694; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_923 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_695; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_924 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_696; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_925 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_697; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_926 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_698; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_927 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_699; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_928 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_700; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_929 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_701; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_930 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_702; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_931 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_703; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_932 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_704; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_933 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_705; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_934 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_706; // @[StoreQueue.scala 182:{25,25}]
  wire [6:0] _GEN_935 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_707; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_936 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_708; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_937 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_709; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_938 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_710; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_939 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_711; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_940 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_712; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_941 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_713; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_942 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_714; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_943 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_715; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_944 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_716; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_945 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_717; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_946 = 5'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_718; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_947 = 5'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_719; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_948 = 5'hc == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_720; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_949 = 5'hd == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_721; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_950 = 5'he == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_722; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_951 = 5'hf == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_723; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_952 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_724; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_953 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_725; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_954 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_726; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_955 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_727; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_956 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_728; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_957 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_729; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_958 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_730; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_959 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_731; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_960 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_732; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_961 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_733; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_962 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_734; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_963 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_735; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_964 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_736; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_965 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_737; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_966 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_738; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_967 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_739; // @[StoreQueue.scala 182:{25,25}]
  wire  _GEN_968 = 5'h0 == io_enq_req_2_bits_sqIdx_value | _GEN_740; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_969 = 5'h1 == io_enq_req_2_bits_sqIdx_value | _GEN_741; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_970 = 5'h2 == io_enq_req_2_bits_sqIdx_value | _GEN_742; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_971 = 5'h3 == io_enq_req_2_bits_sqIdx_value | _GEN_743; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_972 = 5'h4 == io_enq_req_2_bits_sqIdx_value | _GEN_744; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_973 = 5'h5 == io_enq_req_2_bits_sqIdx_value | _GEN_745; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_974 = 5'h6 == io_enq_req_2_bits_sqIdx_value | _GEN_746; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_975 = 5'h7 == io_enq_req_2_bits_sqIdx_value | _GEN_747; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_976 = 5'h8 == io_enq_req_2_bits_sqIdx_value | _GEN_748; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_977 = 5'h9 == io_enq_req_2_bits_sqIdx_value | _GEN_749; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_978 = 5'ha == io_enq_req_2_bits_sqIdx_value | _GEN_750; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_979 = 5'hb == io_enq_req_2_bits_sqIdx_value | _GEN_751; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_980 = 5'hc == io_enq_req_2_bits_sqIdx_value | _GEN_752; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_981 = 5'hd == io_enq_req_2_bits_sqIdx_value | _GEN_753; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_982 = 5'he == io_enq_req_2_bits_sqIdx_value | _GEN_754; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_983 = 5'hf == io_enq_req_2_bits_sqIdx_value | _GEN_755; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_984 = 5'h10 == io_enq_req_2_bits_sqIdx_value | _GEN_756; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_985 = 5'h11 == io_enq_req_2_bits_sqIdx_value | _GEN_757; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_986 = 5'h12 == io_enq_req_2_bits_sqIdx_value | _GEN_758; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_987 = 5'h13 == io_enq_req_2_bits_sqIdx_value | _GEN_759; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_988 = 5'h14 == io_enq_req_2_bits_sqIdx_value | _GEN_760; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_989 = 5'h15 == io_enq_req_2_bits_sqIdx_value | _GEN_761; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_990 = 5'h16 == io_enq_req_2_bits_sqIdx_value | _GEN_762; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_991 = 5'h17 == io_enq_req_2_bits_sqIdx_value | _GEN_763; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_992 = 5'h18 == io_enq_req_2_bits_sqIdx_value | _GEN_764; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_993 = 5'h19 == io_enq_req_2_bits_sqIdx_value | _GEN_765; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_994 = 5'h1a == io_enq_req_2_bits_sqIdx_value | _GEN_766; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_995 = 5'h1b == io_enq_req_2_bits_sqIdx_value | _GEN_767; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_996 = 5'h1c == io_enq_req_2_bits_sqIdx_value | _GEN_768; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_997 = 5'h1d == io_enq_req_2_bits_sqIdx_value | _GEN_769; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_998 = 5'h1e == io_enq_req_2_bits_sqIdx_value | _GEN_770; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_999 = 5'h1f == io_enq_req_2_bits_sqIdx_value | _GEN_771; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1000 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_772; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1001 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_773; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1002 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_774; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1003 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_775; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1004 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_776; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1005 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_777; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1006 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_778; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1007 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_779; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1008 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_780; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1009 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_781; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1010 = 5'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_782; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1011 = 5'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_783; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1012 = 5'hc == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_784; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1013 = 5'hd == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_785; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1014 = 5'he == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_786; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1015 = 5'hf == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_787; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1016 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_788; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1017 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_789; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1018 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_790; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1019 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_791; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1020 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_792; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1021 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_793; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1022 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_794; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1023 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_795; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1024 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_796; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1025 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_797; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1026 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_798; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1027 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_799; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1028 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_800; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1029 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_801; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1030 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_802; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1031 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_803; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1032 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_804; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1033 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_805; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1034 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_806; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1035 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_807; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1036 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_808; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1037 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_809; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1038 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_810; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1039 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_811; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1040 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_812; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1041 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_813; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1042 = 5'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_814; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1043 = 5'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_815; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1044 = 5'hc == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_816; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1045 = 5'hd == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_817; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1046 = 5'he == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_818; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1047 = 5'hf == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_819; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1048 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_820; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1049 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_821; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1050 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_822; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1051 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_823; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1052 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_824; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1053 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_825; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1054 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_826; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1055 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_827; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1056 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_828; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1057 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_829; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1058 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_830; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1059 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_831; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1060 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_832; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1061 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_833; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1062 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_834; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1063 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_835; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1064 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_836; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1065 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_837; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1066 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_838; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1067 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_839; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1068 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_840; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1069 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_841; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1070 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_842; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1071 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_843; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1072 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_844; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1073 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_845; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1074 = 5'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_846; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1075 = 5'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_847; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1076 = 5'hc == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_848; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1077 = 5'hd == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_849; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1078 = 5'he == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_850; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1079 = 5'hf == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_851; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1080 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_852; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1081 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_853; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1082 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_854; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1083 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_855; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1084 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_856; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1085 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_857; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1086 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_858; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1087 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_859; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1088 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_860; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1089 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_861; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1090 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_862; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1091 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_863; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1092 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_864; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1093 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_865; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1094 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_866; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1095 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_867; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1096 = 5'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_868; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1097 = 5'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_869; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1098 = 5'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_870; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1099 = 5'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_871; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1100 = 5'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_872; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1101 = 5'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_873; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1102 = 5'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_874; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1103 = 5'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_875; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1104 = 5'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_876; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1105 = 5'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_877; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1106 = 5'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_878; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1107 = 5'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_879; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1108 = 5'hc == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_880; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1109 = 5'hd == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_881; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1110 = 5'he == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_882; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1111 = 5'hf == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_883; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1112 = 5'h10 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_884; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1113 = 5'h11 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_885; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1114 = 5'h12 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_886; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1115 = 5'h13 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_887; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1116 = 5'h14 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_888; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1117 = 5'h15 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_889; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1118 = 5'h16 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_890; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1119 = 5'h17 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_891; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1120 = 5'h18 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_892; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1121 = 5'h19 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_893; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1122 = 5'h1a == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_894; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1123 = 5'h1b == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_895; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1124 = 5'h1c == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_896; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1125 = 5'h1d == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_897; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1126 = 5'h1e == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_898; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1127 = 5'h1f == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_899; // @[StoreQueue.scala 187:{22,22}]
  wire [6:0] _GEN_1132 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_904 : _GEN_676; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1133 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_905 : _GEN_677; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1134 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_906 : _GEN_678; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1135 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_907 : _GEN_679; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1136 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_908 : _GEN_680; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1137 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_909 : _GEN_681; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1138 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_910 : _GEN_682; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1139 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_911 : _GEN_683; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1140 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_912 : _GEN_684; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1141 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_913 : _GEN_685; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1142 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_914 : _GEN_686; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1143 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_915 : _GEN_687; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1144 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_916 : _GEN_688; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1145 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_917 : _GEN_689; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1146 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_918 : _GEN_690; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1147 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_919 : _GEN_691; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1148 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_920 : _GEN_692; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1149 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_921 : _GEN_693; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1150 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_922 : _GEN_694; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1151 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_923 : _GEN_695; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1152 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_924 : _GEN_696; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1153 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_925 : _GEN_697; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1154 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_926 : _GEN_698; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1155 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_927 : _GEN_699; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1156 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_928 : _GEN_700; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1157 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_929 : _GEN_701; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1158 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_930 : _GEN_702; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1159 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_931 : _GEN_703; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1160 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_932 : _GEN_704; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1161 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_933 : _GEN_705; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1162 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_934 : _GEN_706; // @[StoreQueue.scala 181:43]
  wire [6:0] _GEN_1163 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_935 : _GEN_707; // @[StoreQueue.scala 181:43]
  wire  _GEN_1164 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_936 : _GEN_708; // @[StoreQueue.scala 181:43]
  wire  _GEN_1165 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_937 : _GEN_709; // @[StoreQueue.scala 181:43]
  wire  _GEN_1166 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_938 : _GEN_710; // @[StoreQueue.scala 181:43]
  wire  _GEN_1167 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_939 : _GEN_711; // @[StoreQueue.scala 181:43]
  wire  _GEN_1168 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_940 : _GEN_712; // @[StoreQueue.scala 181:43]
  wire  _GEN_1169 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_941 : _GEN_713; // @[StoreQueue.scala 181:43]
  wire  _GEN_1170 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_942 : _GEN_714; // @[StoreQueue.scala 181:43]
  wire  _GEN_1171 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_943 : _GEN_715; // @[StoreQueue.scala 181:43]
  wire  _GEN_1172 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_944 : _GEN_716; // @[StoreQueue.scala 181:43]
  wire  _GEN_1173 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_945 : _GEN_717; // @[StoreQueue.scala 181:43]
  wire  _GEN_1174 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_946 : _GEN_718; // @[StoreQueue.scala 181:43]
  wire  _GEN_1175 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_947 : _GEN_719; // @[StoreQueue.scala 181:43]
  wire  _GEN_1176 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_948 : _GEN_720; // @[StoreQueue.scala 181:43]
  wire  _GEN_1177 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_949 : _GEN_721; // @[StoreQueue.scala 181:43]
  wire  _GEN_1178 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_950 : _GEN_722; // @[StoreQueue.scala 181:43]
  wire  _GEN_1179 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_951 : _GEN_723; // @[StoreQueue.scala 181:43]
  wire  _GEN_1180 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_952 : _GEN_724; // @[StoreQueue.scala 181:43]
  wire  _GEN_1181 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_953 : _GEN_725; // @[StoreQueue.scala 181:43]
  wire  _GEN_1182 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_954 : _GEN_726; // @[StoreQueue.scala 181:43]
  wire  _GEN_1183 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_955 : _GEN_727; // @[StoreQueue.scala 181:43]
  wire  _GEN_1184 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_956 : _GEN_728; // @[StoreQueue.scala 181:43]
  wire  _GEN_1185 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_957 : _GEN_729; // @[StoreQueue.scala 181:43]
  wire  _GEN_1186 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_958 : _GEN_730; // @[StoreQueue.scala 181:43]
  wire  _GEN_1187 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_959 : _GEN_731; // @[StoreQueue.scala 181:43]
  wire  _GEN_1188 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_960 : _GEN_732; // @[StoreQueue.scala 181:43]
  wire  _GEN_1189 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_961 : _GEN_733; // @[StoreQueue.scala 181:43]
  wire  _GEN_1190 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_962 : _GEN_734; // @[StoreQueue.scala 181:43]
  wire  _GEN_1191 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_963 : _GEN_735; // @[StoreQueue.scala 181:43]
  wire  _GEN_1192 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_964 : _GEN_736; // @[StoreQueue.scala 181:43]
  wire  _GEN_1193 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_965 : _GEN_737; // @[StoreQueue.scala 181:43]
  wire  _GEN_1194 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_966 : _GEN_738; // @[StoreQueue.scala 181:43]
  wire  _GEN_1195 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_967 : _GEN_739; // @[StoreQueue.scala 181:43]
  wire  _GEN_1196 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_968 : _GEN_740; // @[StoreQueue.scala 181:43]
  wire  _GEN_1197 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_969 : _GEN_741; // @[StoreQueue.scala 181:43]
  wire  _GEN_1198 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_970 : _GEN_742; // @[StoreQueue.scala 181:43]
  wire  _GEN_1199 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_971 : _GEN_743; // @[StoreQueue.scala 181:43]
  wire  _GEN_1200 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_972 : _GEN_744; // @[StoreQueue.scala 181:43]
  wire  _GEN_1201 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_973 : _GEN_745; // @[StoreQueue.scala 181:43]
  wire  _GEN_1202 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_974 : _GEN_746; // @[StoreQueue.scala 181:43]
  wire  _GEN_1203 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_975 : _GEN_747; // @[StoreQueue.scala 181:43]
  wire  _GEN_1204 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_976 : _GEN_748; // @[StoreQueue.scala 181:43]
  wire  _GEN_1205 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_977 : _GEN_749; // @[StoreQueue.scala 181:43]
  wire  _GEN_1206 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_978 : _GEN_750; // @[StoreQueue.scala 181:43]
  wire  _GEN_1207 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_979 : _GEN_751; // @[StoreQueue.scala 181:43]
  wire  _GEN_1208 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_980 : _GEN_752; // @[StoreQueue.scala 181:43]
  wire  _GEN_1209 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_981 : _GEN_753; // @[StoreQueue.scala 181:43]
  wire  _GEN_1210 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_982 : _GEN_754; // @[StoreQueue.scala 181:43]
  wire  _GEN_1211 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_983 : _GEN_755; // @[StoreQueue.scala 181:43]
  wire  _GEN_1212 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_984 : _GEN_756; // @[StoreQueue.scala 181:43]
  wire  _GEN_1213 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_985 : _GEN_757; // @[StoreQueue.scala 181:43]
  wire  _GEN_1214 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_986 : _GEN_758; // @[StoreQueue.scala 181:43]
  wire  _GEN_1215 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_987 : _GEN_759; // @[StoreQueue.scala 181:43]
  wire  _GEN_1216 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_988 : _GEN_760; // @[StoreQueue.scala 181:43]
  wire  _GEN_1217 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_989 : _GEN_761; // @[StoreQueue.scala 181:43]
  wire  _GEN_1218 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_990 : _GEN_762; // @[StoreQueue.scala 181:43]
  wire  _GEN_1219 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_991 : _GEN_763; // @[StoreQueue.scala 181:43]
  wire  _GEN_1220 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_992 : _GEN_764; // @[StoreQueue.scala 181:43]
  wire  _GEN_1221 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_993 : _GEN_765; // @[StoreQueue.scala 181:43]
  wire  _GEN_1222 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_994 : _GEN_766; // @[StoreQueue.scala 181:43]
  wire  _GEN_1223 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_995 : _GEN_767; // @[StoreQueue.scala 181:43]
  wire  _GEN_1224 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_996 : _GEN_768; // @[StoreQueue.scala 181:43]
  wire  _GEN_1225 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_997 : _GEN_769; // @[StoreQueue.scala 181:43]
  wire  _GEN_1226 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_998 : _GEN_770; // @[StoreQueue.scala 181:43]
  wire  _GEN_1227 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_999 : _GEN_771; // @[StoreQueue.scala 181:43]
  wire  _GEN_1228 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1000 : _GEN_772; // @[StoreQueue.scala 181:43]
  wire  _GEN_1229 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1001 : _GEN_773; // @[StoreQueue.scala 181:43]
  wire  _GEN_1230 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1002 : _GEN_774; // @[StoreQueue.scala 181:43]
  wire  _GEN_1231 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1003 : _GEN_775; // @[StoreQueue.scala 181:43]
  wire  _GEN_1232 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1004 : _GEN_776; // @[StoreQueue.scala 181:43]
  wire  _GEN_1233 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1005 : _GEN_777; // @[StoreQueue.scala 181:43]
  wire  _GEN_1234 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1006 : _GEN_778; // @[StoreQueue.scala 181:43]
  wire  _GEN_1235 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1007 : _GEN_779; // @[StoreQueue.scala 181:43]
  wire  _GEN_1236 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1008 : _GEN_780; // @[StoreQueue.scala 181:43]
  wire  _GEN_1237 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1009 : _GEN_781; // @[StoreQueue.scala 181:43]
  wire  _GEN_1238 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1010 : _GEN_782; // @[StoreQueue.scala 181:43]
  wire  _GEN_1239 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1011 : _GEN_783; // @[StoreQueue.scala 181:43]
  wire  _GEN_1240 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1012 : _GEN_784; // @[StoreQueue.scala 181:43]
  wire  _GEN_1241 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1013 : _GEN_785; // @[StoreQueue.scala 181:43]
  wire  _GEN_1242 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1014 : _GEN_786; // @[StoreQueue.scala 181:43]
  wire  _GEN_1243 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1015 : _GEN_787; // @[StoreQueue.scala 181:43]
  wire  _GEN_1244 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1016 : _GEN_788; // @[StoreQueue.scala 181:43]
  wire  _GEN_1245 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1017 : _GEN_789; // @[StoreQueue.scala 181:43]
  wire  _GEN_1246 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1018 : _GEN_790; // @[StoreQueue.scala 181:43]
  wire  _GEN_1247 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1019 : _GEN_791; // @[StoreQueue.scala 181:43]
  wire  _GEN_1248 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1020 : _GEN_792; // @[StoreQueue.scala 181:43]
  wire  _GEN_1249 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1021 : _GEN_793; // @[StoreQueue.scala 181:43]
  wire  _GEN_1250 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1022 : _GEN_794; // @[StoreQueue.scala 181:43]
  wire  _GEN_1251 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1023 : _GEN_795; // @[StoreQueue.scala 181:43]
  wire  _GEN_1252 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1024 : _GEN_796; // @[StoreQueue.scala 181:43]
  wire  _GEN_1253 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1025 : _GEN_797; // @[StoreQueue.scala 181:43]
  wire  _GEN_1254 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1026 : _GEN_798; // @[StoreQueue.scala 181:43]
  wire  _GEN_1255 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1027 : _GEN_799; // @[StoreQueue.scala 181:43]
  wire  _GEN_1256 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1028 : _GEN_800; // @[StoreQueue.scala 181:43]
  wire  _GEN_1257 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1029 : _GEN_801; // @[StoreQueue.scala 181:43]
  wire  _GEN_1258 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1030 : _GEN_802; // @[StoreQueue.scala 181:43]
  wire  _GEN_1259 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1031 : _GEN_803; // @[StoreQueue.scala 181:43]
  wire  _GEN_1260 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1032 : _GEN_804; // @[StoreQueue.scala 181:43]
  wire  _GEN_1261 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1033 : _GEN_805; // @[StoreQueue.scala 181:43]
  wire  _GEN_1262 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1034 : _GEN_806; // @[StoreQueue.scala 181:43]
  wire  _GEN_1263 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1035 : _GEN_807; // @[StoreQueue.scala 181:43]
  wire  _GEN_1264 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1036 : _GEN_808; // @[StoreQueue.scala 181:43]
  wire  _GEN_1265 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1037 : _GEN_809; // @[StoreQueue.scala 181:43]
  wire  _GEN_1266 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1038 : _GEN_810; // @[StoreQueue.scala 181:43]
  wire  _GEN_1267 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1039 : _GEN_811; // @[StoreQueue.scala 181:43]
  wire  _GEN_1268 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1040 : _GEN_812; // @[StoreQueue.scala 181:43]
  wire  _GEN_1269 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1041 : _GEN_813; // @[StoreQueue.scala 181:43]
  wire  _GEN_1270 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1042 : _GEN_814; // @[StoreQueue.scala 181:43]
  wire  _GEN_1271 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1043 : _GEN_815; // @[StoreQueue.scala 181:43]
  wire  _GEN_1272 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1044 : _GEN_816; // @[StoreQueue.scala 181:43]
  wire  _GEN_1273 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1045 : _GEN_817; // @[StoreQueue.scala 181:43]
  wire  _GEN_1274 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1046 : _GEN_818; // @[StoreQueue.scala 181:43]
  wire  _GEN_1275 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1047 : _GEN_819; // @[StoreQueue.scala 181:43]
  wire  _GEN_1276 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1048 : _GEN_820; // @[StoreQueue.scala 181:43]
  wire  _GEN_1277 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1049 : _GEN_821; // @[StoreQueue.scala 181:43]
  wire  _GEN_1278 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1050 : _GEN_822; // @[StoreQueue.scala 181:43]
  wire  _GEN_1279 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1051 : _GEN_823; // @[StoreQueue.scala 181:43]
  wire  _GEN_1280 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1052 : _GEN_824; // @[StoreQueue.scala 181:43]
  wire  _GEN_1281 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1053 : _GEN_825; // @[StoreQueue.scala 181:43]
  wire  _GEN_1282 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1054 : _GEN_826; // @[StoreQueue.scala 181:43]
  wire  _GEN_1283 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1055 : _GEN_827; // @[StoreQueue.scala 181:43]
  wire  _GEN_1284 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1056 : _GEN_828; // @[StoreQueue.scala 181:43]
  wire  _GEN_1285 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1057 : _GEN_829; // @[StoreQueue.scala 181:43]
  wire  _GEN_1286 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1058 : _GEN_830; // @[StoreQueue.scala 181:43]
  wire  _GEN_1287 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1059 : _GEN_831; // @[StoreQueue.scala 181:43]
  wire  _GEN_1288 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1060 : _GEN_832; // @[StoreQueue.scala 181:43]
  wire  _GEN_1289 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1061 : _GEN_833; // @[StoreQueue.scala 181:43]
  wire  _GEN_1290 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1062 : _GEN_834; // @[StoreQueue.scala 181:43]
  wire  _GEN_1291 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1063 : _GEN_835; // @[StoreQueue.scala 181:43]
  wire  _GEN_1292 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1064 : _GEN_836; // @[StoreQueue.scala 181:43]
  wire  _GEN_1293 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1065 : _GEN_837; // @[StoreQueue.scala 181:43]
  wire  _GEN_1294 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1066 : _GEN_838; // @[StoreQueue.scala 181:43]
  wire  _GEN_1295 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1067 : _GEN_839; // @[StoreQueue.scala 181:43]
  wire  _GEN_1296 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1068 : _GEN_840; // @[StoreQueue.scala 181:43]
  wire  _GEN_1297 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1069 : _GEN_841; // @[StoreQueue.scala 181:43]
  wire  _GEN_1298 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1070 : _GEN_842; // @[StoreQueue.scala 181:43]
  wire  _GEN_1299 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1071 : _GEN_843; // @[StoreQueue.scala 181:43]
  wire  _GEN_1300 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1072 : _GEN_844; // @[StoreQueue.scala 181:43]
  wire  _GEN_1301 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1073 : _GEN_845; // @[StoreQueue.scala 181:43]
  wire  _GEN_1302 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1074 : _GEN_846; // @[StoreQueue.scala 181:43]
  wire  _GEN_1303 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1075 : _GEN_847; // @[StoreQueue.scala 181:43]
  wire  _GEN_1304 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1076 : _GEN_848; // @[StoreQueue.scala 181:43]
  wire  _GEN_1305 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1077 : _GEN_849; // @[StoreQueue.scala 181:43]
  wire  _GEN_1306 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1078 : _GEN_850; // @[StoreQueue.scala 181:43]
  wire  _GEN_1307 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1079 : _GEN_851; // @[StoreQueue.scala 181:43]
  wire  _GEN_1308 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1080 : _GEN_852; // @[StoreQueue.scala 181:43]
  wire  _GEN_1309 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1081 : _GEN_853; // @[StoreQueue.scala 181:43]
  wire  _GEN_1310 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1082 : _GEN_854; // @[StoreQueue.scala 181:43]
  wire  _GEN_1311 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1083 : _GEN_855; // @[StoreQueue.scala 181:43]
  wire  _GEN_1312 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1084 : _GEN_856; // @[StoreQueue.scala 181:43]
  wire  _GEN_1313 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1085 : _GEN_857; // @[StoreQueue.scala 181:43]
  wire  _GEN_1314 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1086 : _GEN_858; // @[StoreQueue.scala 181:43]
  wire  _GEN_1315 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1087 : _GEN_859; // @[StoreQueue.scala 181:43]
  wire  _GEN_1316 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1088 : _GEN_860; // @[StoreQueue.scala 181:43]
  wire  _GEN_1317 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1089 : _GEN_861; // @[StoreQueue.scala 181:43]
  wire  _GEN_1318 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1090 : _GEN_862; // @[StoreQueue.scala 181:43]
  wire  _GEN_1319 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1091 : _GEN_863; // @[StoreQueue.scala 181:43]
  wire  _GEN_1320 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1092 : _GEN_864; // @[StoreQueue.scala 181:43]
  wire  _GEN_1321 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1093 : _GEN_865; // @[StoreQueue.scala 181:43]
  wire  _GEN_1322 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1094 : _GEN_866; // @[StoreQueue.scala 181:43]
  wire  _GEN_1323 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1095 : _GEN_867; // @[StoreQueue.scala 181:43]
  wire  _GEN_1324 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1096 : _GEN_868; // @[StoreQueue.scala 181:43]
  wire  _GEN_1325 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1097 : _GEN_869; // @[StoreQueue.scala 181:43]
  wire  _GEN_1326 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1098 : _GEN_870; // @[StoreQueue.scala 181:43]
  wire  _GEN_1327 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1099 : _GEN_871; // @[StoreQueue.scala 181:43]
  wire  _GEN_1328 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1100 : _GEN_872; // @[StoreQueue.scala 181:43]
  wire  _GEN_1329 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1101 : _GEN_873; // @[StoreQueue.scala 181:43]
  wire  _GEN_1330 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1102 : _GEN_874; // @[StoreQueue.scala 181:43]
  wire  _GEN_1331 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1103 : _GEN_875; // @[StoreQueue.scala 181:43]
  wire  _GEN_1332 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1104 : _GEN_876; // @[StoreQueue.scala 181:43]
  wire  _GEN_1333 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1105 : _GEN_877; // @[StoreQueue.scala 181:43]
  wire  _GEN_1334 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1106 : _GEN_878; // @[StoreQueue.scala 181:43]
  wire  _GEN_1335 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1107 : _GEN_879; // @[StoreQueue.scala 181:43]
  wire  _GEN_1336 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1108 : _GEN_880; // @[StoreQueue.scala 181:43]
  wire  _GEN_1337 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1109 : _GEN_881; // @[StoreQueue.scala 181:43]
  wire  _GEN_1338 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1110 : _GEN_882; // @[StoreQueue.scala 181:43]
  wire  _GEN_1339 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1111 : _GEN_883; // @[StoreQueue.scala 181:43]
  wire  _GEN_1340 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1112 : _GEN_884; // @[StoreQueue.scala 181:43]
  wire  _GEN_1341 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1113 : _GEN_885; // @[StoreQueue.scala 181:43]
  wire  _GEN_1342 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1114 : _GEN_886; // @[StoreQueue.scala 181:43]
  wire  _GEN_1343 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1115 : _GEN_887; // @[StoreQueue.scala 181:43]
  wire  _GEN_1344 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1116 : _GEN_888; // @[StoreQueue.scala 181:43]
  wire  _GEN_1345 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1117 : _GEN_889; // @[StoreQueue.scala 181:43]
  wire  _GEN_1346 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1118 : _GEN_890; // @[StoreQueue.scala 181:43]
  wire  _GEN_1347 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1119 : _GEN_891; // @[StoreQueue.scala 181:43]
  wire  _GEN_1348 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1120 : _GEN_892; // @[StoreQueue.scala 181:43]
  wire  _GEN_1349 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1121 : _GEN_893; // @[StoreQueue.scala 181:43]
  wire  _GEN_1350 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1122 : _GEN_894; // @[StoreQueue.scala 181:43]
  wire  _GEN_1351 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1123 : _GEN_895; // @[StoreQueue.scala 181:43]
  wire  _GEN_1352 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1124 : _GEN_896; // @[StoreQueue.scala 181:43]
  wire  _GEN_1353 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1125 : _GEN_897; // @[StoreQueue.scala 181:43]
  wire  _GEN_1354 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1126 : _GEN_898; // @[StoreQueue.scala 181:43]
  wire  _GEN_1355 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_1127 : _GEN_899; // @[StoreQueue.scala 181:43]
  wire  _GEN_1424 = 5'h0 == io_enq_req_3_bits_sqIdx_value | _GEN_1196; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1425 = 5'h1 == io_enq_req_3_bits_sqIdx_value | _GEN_1197; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1426 = 5'h2 == io_enq_req_3_bits_sqIdx_value | _GEN_1198; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1427 = 5'h3 == io_enq_req_3_bits_sqIdx_value | _GEN_1199; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1428 = 5'h4 == io_enq_req_3_bits_sqIdx_value | _GEN_1200; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1429 = 5'h5 == io_enq_req_3_bits_sqIdx_value | _GEN_1201; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1430 = 5'h6 == io_enq_req_3_bits_sqIdx_value | _GEN_1202; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1431 = 5'h7 == io_enq_req_3_bits_sqIdx_value | _GEN_1203; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1432 = 5'h8 == io_enq_req_3_bits_sqIdx_value | _GEN_1204; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1433 = 5'h9 == io_enq_req_3_bits_sqIdx_value | _GEN_1205; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1434 = 5'ha == io_enq_req_3_bits_sqIdx_value | _GEN_1206; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1435 = 5'hb == io_enq_req_3_bits_sqIdx_value | _GEN_1207; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1436 = 5'hc == io_enq_req_3_bits_sqIdx_value | _GEN_1208; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1437 = 5'hd == io_enq_req_3_bits_sqIdx_value | _GEN_1209; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1438 = 5'he == io_enq_req_3_bits_sqIdx_value | _GEN_1210; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1439 = 5'hf == io_enq_req_3_bits_sqIdx_value | _GEN_1211; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1440 = 5'h10 == io_enq_req_3_bits_sqIdx_value | _GEN_1212; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1441 = 5'h11 == io_enq_req_3_bits_sqIdx_value | _GEN_1213; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1442 = 5'h12 == io_enq_req_3_bits_sqIdx_value | _GEN_1214; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1443 = 5'h13 == io_enq_req_3_bits_sqIdx_value | _GEN_1215; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1444 = 5'h14 == io_enq_req_3_bits_sqIdx_value | _GEN_1216; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1445 = 5'h15 == io_enq_req_3_bits_sqIdx_value | _GEN_1217; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1446 = 5'h16 == io_enq_req_3_bits_sqIdx_value | _GEN_1218; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1447 = 5'h17 == io_enq_req_3_bits_sqIdx_value | _GEN_1219; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1448 = 5'h18 == io_enq_req_3_bits_sqIdx_value | _GEN_1220; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1449 = 5'h19 == io_enq_req_3_bits_sqIdx_value | _GEN_1221; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1450 = 5'h1a == io_enq_req_3_bits_sqIdx_value | _GEN_1222; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1451 = 5'h1b == io_enq_req_3_bits_sqIdx_value | _GEN_1223; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1452 = 5'h1c == io_enq_req_3_bits_sqIdx_value | _GEN_1224; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1453 = 5'h1d == io_enq_req_3_bits_sqIdx_value | _GEN_1225; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1454 = 5'h1e == io_enq_req_3_bits_sqIdx_value | _GEN_1226; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1455 = 5'h1f == io_enq_req_3_bits_sqIdx_value | _GEN_1227; // @[StoreQueue.scala 183:{24,24}]
  wire  _GEN_1456 = 5'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1228; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1457 = 5'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1229; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1458 = 5'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1230; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1459 = 5'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1231; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1460 = 5'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1232; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1461 = 5'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1233; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1462 = 5'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1234; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1463 = 5'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1235; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1464 = 5'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1236; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1465 = 5'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1237; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1466 = 5'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1238; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1467 = 5'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1239; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1468 = 5'hc == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1240; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1469 = 5'hd == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1241; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1470 = 5'he == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1242; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1471 = 5'hf == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1243; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1472 = 5'h10 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1244; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1473 = 5'h11 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1245; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1474 = 5'h12 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1246; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1475 = 5'h13 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1247; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1476 = 5'h14 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1248; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1477 = 5'h15 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1249; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1478 = 5'h16 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1250; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1479 = 5'h17 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1251; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1480 = 5'h18 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1252; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1481 = 5'h19 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1253; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1482 = 5'h1a == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1254; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1483 = 5'h1b == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1255; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1484 = 5'h1c == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1256; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1485 = 5'h1d == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1257; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1486 = 5'h1e == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1258; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1487 = 5'h1f == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1259; // @[StoreQueue.scala 184:{24,24}]
  wire  _GEN_1488 = 5'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1260; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1489 = 5'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1261; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1490 = 5'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1262; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1491 = 5'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1263; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1492 = 5'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1264; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1493 = 5'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1265; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1494 = 5'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1266; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1495 = 5'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1267; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1496 = 5'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1268; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1497 = 5'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1269; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1498 = 5'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1270; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1499 = 5'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1271; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1500 = 5'hc == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1272; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1501 = 5'hd == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1273; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1502 = 5'he == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1274; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1503 = 5'hf == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1275; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1504 = 5'h10 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1276; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1505 = 5'h11 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1277; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1506 = 5'h12 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1278; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1507 = 5'h13 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1279; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1508 = 5'h14 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1280; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1509 = 5'h15 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1281; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1510 = 5'h16 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1282; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1511 = 5'h17 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1283; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1512 = 5'h18 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1284; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1513 = 5'h19 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1285; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1514 = 5'h1a == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1286; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1515 = 5'h1b == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1287; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1516 = 5'h1c == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1288; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1517 = 5'h1d == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1289; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1518 = 5'h1e == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1290; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1519 = 5'h1f == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1291; // @[StoreQueue.scala 185:{24,24}]
  wire  _GEN_1520 = 5'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1292; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1521 = 5'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1293; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1522 = 5'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1294; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1523 = 5'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1295; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1524 = 5'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1296; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1525 = 5'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1297; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1526 = 5'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1298; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1527 = 5'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1299; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1528 = 5'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1300; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1529 = 5'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1301; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1530 = 5'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1302; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1531 = 5'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1303; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1532 = 5'hc == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1304; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1533 = 5'hd == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1305; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1534 = 5'he == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1306; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1535 = 5'hf == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1307; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1536 = 5'h10 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1308; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1537 = 5'h11 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1309; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1538 = 5'h12 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1310; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1539 = 5'h13 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1311; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1540 = 5'h14 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1312; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1541 = 5'h15 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1313; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1542 = 5'h16 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1314; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1543 = 5'h17 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1315; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1544 = 5'h18 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1316; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1545 = 5'h19 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1317; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1546 = 5'h1a == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1318; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1547 = 5'h1b == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1319; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1548 = 5'h1c == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1320; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1549 = 5'h1d == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1321; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1550 = 5'h1e == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1322; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1551 = 5'h1f == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1323; // @[StoreQueue.scala 186:{24,24}]
  wire  _GEN_1552 = 5'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1324; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1553 = 5'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1325; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1554 = 5'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1326; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1555 = 5'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1327; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1556 = 5'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1328; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1557 = 5'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1329; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1558 = 5'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1330; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1559 = 5'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1331; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1560 = 5'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1332; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1561 = 5'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1333; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1562 = 5'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1334; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1563 = 5'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1335; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1564 = 5'hc == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1336; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1565 = 5'hd == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1337; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1566 = 5'he == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1338; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1567 = 5'hf == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1339; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1568 = 5'h10 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1340; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1569 = 5'h11 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1341; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1570 = 5'h12 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1342; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1571 = 5'h13 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1343; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1572 = 5'h14 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1344; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1573 = 5'h15 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1345; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1574 = 5'h16 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1346; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1575 = 5'h17 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1347; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1576 = 5'h18 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1348; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1577 = 5'h19 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1349; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1578 = 5'h1a == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1350; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1579 = 5'h1b == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1351; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1580 = 5'h1c == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1352; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1581 = 5'h1d == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1353; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1582 = 5'h1e == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1354; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1583 = 5'h1f == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_1355; // @[StoreQueue.scala 187:{22,22}]
  wire  _GEN_1652 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1424 : _GEN_1196; // @[StoreQueue.scala 181:43]
  wire  _GEN_1653 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1425 : _GEN_1197; // @[StoreQueue.scala 181:43]
  wire  _GEN_1654 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1426 : _GEN_1198; // @[StoreQueue.scala 181:43]
  wire  _GEN_1655 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1427 : _GEN_1199; // @[StoreQueue.scala 181:43]
  wire  _GEN_1656 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1428 : _GEN_1200; // @[StoreQueue.scala 181:43]
  wire  _GEN_1657 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1429 : _GEN_1201; // @[StoreQueue.scala 181:43]
  wire  _GEN_1658 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1430 : _GEN_1202; // @[StoreQueue.scala 181:43]
  wire  _GEN_1659 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1431 : _GEN_1203; // @[StoreQueue.scala 181:43]
  wire  _GEN_1660 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1432 : _GEN_1204; // @[StoreQueue.scala 181:43]
  wire  _GEN_1661 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1433 : _GEN_1205; // @[StoreQueue.scala 181:43]
  wire  _GEN_1662 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1434 : _GEN_1206; // @[StoreQueue.scala 181:43]
  wire  _GEN_1663 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1435 : _GEN_1207; // @[StoreQueue.scala 181:43]
  wire  _GEN_1664 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1436 : _GEN_1208; // @[StoreQueue.scala 181:43]
  wire  _GEN_1665 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1437 : _GEN_1209; // @[StoreQueue.scala 181:43]
  wire  _GEN_1666 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1438 : _GEN_1210; // @[StoreQueue.scala 181:43]
  wire  _GEN_1667 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1439 : _GEN_1211; // @[StoreQueue.scala 181:43]
  wire  _GEN_1668 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1440 : _GEN_1212; // @[StoreQueue.scala 181:43]
  wire  _GEN_1669 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1441 : _GEN_1213; // @[StoreQueue.scala 181:43]
  wire  _GEN_1670 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1442 : _GEN_1214; // @[StoreQueue.scala 181:43]
  wire  _GEN_1671 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1443 : _GEN_1215; // @[StoreQueue.scala 181:43]
  wire  _GEN_1672 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1444 : _GEN_1216; // @[StoreQueue.scala 181:43]
  wire  _GEN_1673 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1445 : _GEN_1217; // @[StoreQueue.scala 181:43]
  wire  _GEN_1674 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1446 : _GEN_1218; // @[StoreQueue.scala 181:43]
  wire  _GEN_1675 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1447 : _GEN_1219; // @[StoreQueue.scala 181:43]
  wire  _GEN_1676 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1448 : _GEN_1220; // @[StoreQueue.scala 181:43]
  wire  _GEN_1677 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1449 : _GEN_1221; // @[StoreQueue.scala 181:43]
  wire  _GEN_1678 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1450 : _GEN_1222; // @[StoreQueue.scala 181:43]
  wire  _GEN_1679 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1451 : _GEN_1223; // @[StoreQueue.scala 181:43]
  wire  _GEN_1680 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1452 : _GEN_1224; // @[StoreQueue.scala 181:43]
  wire  _GEN_1681 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1453 : _GEN_1225; // @[StoreQueue.scala 181:43]
  wire  _GEN_1682 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1454 : _GEN_1226; // @[StoreQueue.scala 181:43]
  wire  _GEN_1683 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1455 : _GEN_1227; // @[StoreQueue.scala 181:43]
  wire  _GEN_1684 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1456 : _GEN_1228; // @[StoreQueue.scala 181:43]
  wire  _GEN_1685 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1457 : _GEN_1229; // @[StoreQueue.scala 181:43]
  wire  _GEN_1686 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1458 : _GEN_1230; // @[StoreQueue.scala 181:43]
  wire  _GEN_1687 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1459 : _GEN_1231; // @[StoreQueue.scala 181:43]
  wire  _GEN_1688 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1460 : _GEN_1232; // @[StoreQueue.scala 181:43]
  wire  _GEN_1689 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1461 : _GEN_1233; // @[StoreQueue.scala 181:43]
  wire  _GEN_1690 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1462 : _GEN_1234; // @[StoreQueue.scala 181:43]
  wire  _GEN_1691 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1463 : _GEN_1235; // @[StoreQueue.scala 181:43]
  wire  _GEN_1692 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1464 : _GEN_1236; // @[StoreQueue.scala 181:43]
  wire  _GEN_1693 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1465 : _GEN_1237; // @[StoreQueue.scala 181:43]
  wire  _GEN_1694 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1466 : _GEN_1238; // @[StoreQueue.scala 181:43]
  wire  _GEN_1695 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1467 : _GEN_1239; // @[StoreQueue.scala 181:43]
  wire  _GEN_1696 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1468 : _GEN_1240; // @[StoreQueue.scala 181:43]
  wire  _GEN_1697 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1469 : _GEN_1241; // @[StoreQueue.scala 181:43]
  wire  _GEN_1698 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1470 : _GEN_1242; // @[StoreQueue.scala 181:43]
  wire  _GEN_1699 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1471 : _GEN_1243; // @[StoreQueue.scala 181:43]
  wire  _GEN_1700 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1472 : _GEN_1244; // @[StoreQueue.scala 181:43]
  wire  _GEN_1701 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1473 : _GEN_1245; // @[StoreQueue.scala 181:43]
  wire  _GEN_1702 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1474 : _GEN_1246; // @[StoreQueue.scala 181:43]
  wire  _GEN_1703 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1475 : _GEN_1247; // @[StoreQueue.scala 181:43]
  wire  _GEN_1704 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1476 : _GEN_1248; // @[StoreQueue.scala 181:43]
  wire  _GEN_1705 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1477 : _GEN_1249; // @[StoreQueue.scala 181:43]
  wire  _GEN_1706 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1478 : _GEN_1250; // @[StoreQueue.scala 181:43]
  wire  _GEN_1707 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1479 : _GEN_1251; // @[StoreQueue.scala 181:43]
  wire  _GEN_1708 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1480 : _GEN_1252; // @[StoreQueue.scala 181:43]
  wire  _GEN_1709 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1481 : _GEN_1253; // @[StoreQueue.scala 181:43]
  wire  _GEN_1710 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1482 : _GEN_1254; // @[StoreQueue.scala 181:43]
  wire  _GEN_1711 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1483 : _GEN_1255; // @[StoreQueue.scala 181:43]
  wire  _GEN_1712 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1484 : _GEN_1256; // @[StoreQueue.scala 181:43]
  wire  _GEN_1713 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1485 : _GEN_1257; // @[StoreQueue.scala 181:43]
  wire  _GEN_1714 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1486 : _GEN_1258; // @[StoreQueue.scala 181:43]
  wire  _GEN_1715 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1487 : _GEN_1259; // @[StoreQueue.scala 181:43]
  wire  _GEN_1716 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1488 : _GEN_1260; // @[StoreQueue.scala 181:43]
  wire  _GEN_1717 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1489 : _GEN_1261; // @[StoreQueue.scala 181:43]
  wire  _GEN_1718 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1490 : _GEN_1262; // @[StoreQueue.scala 181:43]
  wire  _GEN_1719 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1491 : _GEN_1263; // @[StoreQueue.scala 181:43]
  wire  _GEN_1720 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1492 : _GEN_1264; // @[StoreQueue.scala 181:43]
  wire  _GEN_1721 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1493 : _GEN_1265; // @[StoreQueue.scala 181:43]
  wire  _GEN_1722 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1494 : _GEN_1266; // @[StoreQueue.scala 181:43]
  wire  _GEN_1723 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1495 : _GEN_1267; // @[StoreQueue.scala 181:43]
  wire  _GEN_1724 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1496 : _GEN_1268; // @[StoreQueue.scala 181:43]
  wire  _GEN_1725 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1497 : _GEN_1269; // @[StoreQueue.scala 181:43]
  wire  _GEN_1726 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1498 : _GEN_1270; // @[StoreQueue.scala 181:43]
  wire  _GEN_1727 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1499 : _GEN_1271; // @[StoreQueue.scala 181:43]
  wire  _GEN_1728 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1500 : _GEN_1272; // @[StoreQueue.scala 181:43]
  wire  _GEN_1729 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1501 : _GEN_1273; // @[StoreQueue.scala 181:43]
  wire  _GEN_1730 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1502 : _GEN_1274; // @[StoreQueue.scala 181:43]
  wire  _GEN_1731 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1503 : _GEN_1275; // @[StoreQueue.scala 181:43]
  wire  _GEN_1732 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1504 : _GEN_1276; // @[StoreQueue.scala 181:43]
  wire  _GEN_1733 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1505 : _GEN_1277; // @[StoreQueue.scala 181:43]
  wire  _GEN_1734 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1506 : _GEN_1278; // @[StoreQueue.scala 181:43]
  wire  _GEN_1735 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1507 : _GEN_1279; // @[StoreQueue.scala 181:43]
  wire  _GEN_1736 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1508 : _GEN_1280; // @[StoreQueue.scala 181:43]
  wire  _GEN_1737 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1509 : _GEN_1281; // @[StoreQueue.scala 181:43]
  wire  _GEN_1738 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1510 : _GEN_1282; // @[StoreQueue.scala 181:43]
  wire  _GEN_1739 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1511 : _GEN_1283; // @[StoreQueue.scala 181:43]
  wire  _GEN_1740 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1512 : _GEN_1284; // @[StoreQueue.scala 181:43]
  wire  _GEN_1741 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1513 : _GEN_1285; // @[StoreQueue.scala 181:43]
  wire  _GEN_1742 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1514 : _GEN_1286; // @[StoreQueue.scala 181:43]
  wire  _GEN_1743 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1515 : _GEN_1287; // @[StoreQueue.scala 181:43]
  wire  _GEN_1744 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1516 : _GEN_1288; // @[StoreQueue.scala 181:43]
  wire  _GEN_1745 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1517 : _GEN_1289; // @[StoreQueue.scala 181:43]
  wire  _GEN_1746 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1518 : _GEN_1290; // @[StoreQueue.scala 181:43]
  wire  _GEN_1747 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1519 : _GEN_1291; // @[StoreQueue.scala 181:43]
  wire  _GEN_1748 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1520 : _GEN_1292; // @[StoreQueue.scala 181:43]
  wire  _GEN_1749 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1521 : _GEN_1293; // @[StoreQueue.scala 181:43]
  wire  _GEN_1750 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1522 : _GEN_1294; // @[StoreQueue.scala 181:43]
  wire  _GEN_1751 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1523 : _GEN_1295; // @[StoreQueue.scala 181:43]
  wire  _GEN_1752 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1524 : _GEN_1296; // @[StoreQueue.scala 181:43]
  wire  _GEN_1753 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1525 : _GEN_1297; // @[StoreQueue.scala 181:43]
  wire  _GEN_1754 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1526 : _GEN_1298; // @[StoreQueue.scala 181:43]
  wire  _GEN_1755 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1527 : _GEN_1299; // @[StoreQueue.scala 181:43]
  wire  _GEN_1756 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1528 : _GEN_1300; // @[StoreQueue.scala 181:43]
  wire  _GEN_1757 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1529 : _GEN_1301; // @[StoreQueue.scala 181:43]
  wire  _GEN_1758 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1530 : _GEN_1302; // @[StoreQueue.scala 181:43]
  wire  _GEN_1759 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1531 : _GEN_1303; // @[StoreQueue.scala 181:43]
  wire  _GEN_1760 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1532 : _GEN_1304; // @[StoreQueue.scala 181:43]
  wire  _GEN_1761 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1533 : _GEN_1305; // @[StoreQueue.scala 181:43]
  wire  _GEN_1762 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1534 : _GEN_1306; // @[StoreQueue.scala 181:43]
  wire  _GEN_1763 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1535 : _GEN_1307; // @[StoreQueue.scala 181:43]
  wire  _GEN_1764 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1536 : _GEN_1308; // @[StoreQueue.scala 181:43]
  wire  _GEN_1765 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1537 : _GEN_1309; // @[StoreQueue.scala 181:43]
  wire  _GEN_1766 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1538 : _GEN_1310; // @[StoreQueue.scala 181:43]
  wire  _GEN_1767 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1539 : _GEN_1311; // @[StoreQueue.scala 181:43]
  wire  _GEN_1768 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1540 : _GEN_1312; // @[StoreQueue.scala 181:43]
  wire  _GEN_1769 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1541 : _GEN_1313; // @[StoreQueue.scala 181:43]
  wire  _GEN_1770 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1542 : _GEN_1314; // @[StoreQueue.scala 181:43]
  wire  _GEN_1771 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1543 : _GEN_1315; // @[StoreQueue.scala 181:43]
  wire  _GEN_1772 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1544 : _GEN_1316; // @[StoreQueue.scala 181:43]
  wire  _GEN_1773 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1545 : _GEN_1317; // @[StoreQueue.scala 181:43]
  wire  _GEN_1774 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1546 : _GEN_1318; // @[StoreQueue.scala 181:43]
  wire  _GEN_1775 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1547 : _GEN_1319; // @[StoreQueue.scala 181:43]
  wire  _GEN_1776 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1548 : _GEN_1320; // @[StoreQueue.scala 181:43]
  wire  _GEN_1777 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1549 : _GEN_1321; // @[StoreQueue.scala 181:43]
  wire  _GEN_1778 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1550 : _GEN_1322; // @[StoreQueue.scala 181:43]
  wire  _GEN_1779 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1551 : _GEN_1323; // @[StoreQueue.scala 181:43]
  wire  _GEN_1780 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1552 : _GEN_1324; // @[StoreQueue.scala 181:43]
  wire  _GEN_1781 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1553 : _GEN_1325; // @[StoreQueue.scala 181:43]
  wire  _GEN_1782 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1554 : _GEN_1326; // @[StoreQueue.scala 181:43]
  wire  _GEN_1783 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1555 : _GEN_1327; // @[StoreQueue.scala 181:43]
  wire  _GEN_1784 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1556 : _GEN_1328; // @[StoreQueue.scala 181:43]
  wire  _GEN_1785 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1557 : _GEN_1329; // @[StoreQueue.scala 181:43]
  wire  _GEN_1786 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1558 : _GEN_1330; // @[StoreQueue.scala 181:43]
  wire  _GEN_1787 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1559 : _GEN_1331; // @[StoreQueue.scala 181:43]
  wire  _GEN_1788 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1560 : _GEN_1332; // @[StoreQueue.scala 181:43]
  wire  _GEN_1789 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1561 : _GEN_1333; // @[StoreQueue.scala 181:43]
  wire  _GEN_1790 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1562 : _GEN_1334; // @[StoreQueue.scala 181:43]
  wire  _GEN_1791 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1563 : _GEN_1335; // @[StoreQueue.scala 181:43]
  wire  _GEN_1792 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1564 : _GEN_1336; // @[StoreQueue.scala 181:43]
  wire  _GEN_1793 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1565 : _GEN_1337; // @[StoreQueue.scala 181:43]
  wire  _GEN_1794 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1566 : _GEN_1338; // @[StoreQueue.scala 181:43]
  wire  _GEN_1795 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1567 : _GEN_1339; // @[StoreQueue.scala 181:43]
  wire  _GEN_1796 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1568 : _GEN_1340; // @[StoreQueue.scala 181:43]
  wire  _GEN_1797 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1569 : _GEN_1341; // @[StoreQueue.scala 181:43]
  wire  _GEN_1798 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1570 : _GEN_1342; // @[StoreQueue.scala 181:43]
  wire  _GEN_1799 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1571 : _GEN_1343; // @[StoreQueue.scala 181:43]
  wire  _GEN_1800 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1572 : _GEN_1344; // @[StoreQueue.scala 181:43]
  wire  _GEN_1801 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1573 : _GEN_1345; // @[StoreQueue.scala 181:43]
  wire  _GEN_1802 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1574 : _GEN_1346; // @[StoreQueue.scala 181:43]
  wire  _GEN_1803 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1575 : _GEN_1347; // @[StoreQueue.scala 181:43]
  wire  _GEN_1804 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1576 : _GEN_1348; // @[StoreQueue.scala 181:43]
  wire  _GEN_1805 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1577 : _GEN_1349; // @[StoreQueue.scala 181:43]
  wire  _GEN_1806 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1578 : _GEN_1350; // @[StoreQueue.scala 181:43]
  wire  _GEN_1807 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1579 : _GEN_1351; // @[StoreQueue.scala 181:43]
  wire  _GEN_1808 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1580 : _GEN_1352; // @[StoreQueue.scala 181:43]
  wire  _GEN_1809 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1581 : _GEN_1353; // @[StoreQueue.scala 181:43]
  wire  _GEN_1810 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1582 : _GEN_1354; // @[StoreQueue.scala 181:43]
  wire  _GEN_1811 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_1583 : _GEN_1355; // @[StoreQueue.scala 181:43]
  wire [5:0] _issueLookupVec_new_ptr_T = {issuePtrExt_flag,issuePtrExt_value}; // @[Cat.scala 31:58]
  wire [6:0] _issueLookupVec_new_ptr_T_1 = {{1'd0}, _issueLookupVec_new_ptr_T}; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] issueLookupVec_0_value = _issueLookupVec_new_ptr_T_1[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  issueLookupVec_0_flag = _issueLookupVec_new_ptr_T_1[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _issueLookupVec_new_ptr_T_7 = _issueLookupVec_new_ptr_T + 6'h1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] issueLookupVec_1_value = _issueLookupVec_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  issueLookupVec_1_flag = _issueLookupVec_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _issueLookupVec_new_ptr_T_12 = _issueLookupVec_new_ptr_T + 6'h2; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] issueLookupVec_2_value = _issueLookupVec_new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  issueLookupVec_2_flag = _issueLookupVec_new_ptr_T_12[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _issueLookupVec_new_ptr_T_17 = _issueLookupVec_new_ptr_T + 6'h3; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] issueLookupVec_3_value = _issueLookupVec_new_ptr_T_17[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  issueLookupVec_3_flag = _issueLookupVec_new_ptr_T_17[5]; // @[CircularQueuePtr.scala 40:59]
  wire  _GEN_1817 = 5'h1 == issueLookupVec_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1818 = 5'h2 == issueLookupVec_0_value ? allocated_2 : _GEN_1817; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1819 = 5'h3 == issueLookupVec_0_value ? allocated_3 : _GEN_1818; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1820 = 5'h4 == issueLookupVec_0_value ? allocated_4 : _GEN_1819; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1821 = 5'h5 == issueLookupVec_0_value ? allocated_5 : _GEN_1820; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1822 = 5'h6 == issueLookupVec_0_value ? allocated_6 : _GEN_1821; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1823 = 5'h7 == issueLookupVec_0_value ? allocated_7 : _GEN_1822; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1824 = 5'h8 == issueLookupVec_0_value ? allocated_8 : _GEN_1823; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1825 = 5'h9 == issueLookupVec_0_value ? allocated_9 : _GEN_1824; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1826 = 5'ha == issueLookupVec_0_value ? allocated_10 : _GEN_1825; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1827 = 5'hb == issueLookupVec_0_value ? allocated_11 : _GEN_1826; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1828 = 5'hc == issueLookupVec_0_value ? allocated_12 : _GEN_1827; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1829 = 5'hd == issueLookupVec_0_value ? allocated_13 : _GEN_1828; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1830 = 5'he == issueLookupVec_0_value ? allocated_14 : _GEN_1829; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1831 = 5'hf == issueLookupVec_0_value ? allocated_15 : _GEN_1830; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1832 = 5'h10 == issueLookupVec_0_value ? allocated_16 : _GEN_1831; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1833 = 5'h11 == issueLookupVec_0_value ? allocated_17 : _GEN_1832; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1834 = 5'h12 == issueLookupVec_0_value ? allocated_18 : _GEN_1833; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1835 = 5'h13 == issueLookupVec_0_value ? allocated_19 : _GEN_1834; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1836 = 5'h14 == issueLookupVec_0_value ? allocated_20 : _GEN_1835; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1837 = 5'h15 == issueLookupVec_0_value ? allocated_21 : _GEN_1836; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1838 = 5'h16 == issueLookupVec_0_value ? allocated_22 : _GEN_1837; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1839 = 5'h17 == issueLookupVec_0_value ? allocated_23 : _GEN_1838; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1840 = 5'h18 == issueLookupVec_0_value ? allocated_24 : _GEN_1839; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1841 = 5'h19 == issueLookupVec_0_value ? allocated_25 : _GEN_1840; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1842 = 5'h1a == issueLookupVec_0_value ? allocated_26 : _GEN_1841; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1843 = 5'h1b == issueLookupVec_0_value ? allocated_27 : _GEN_1842; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1844 = 5'h1c == issueLookupVec_0_value ? allocated_28 : _GEN_1843; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1845 = 5'h1d == issueLookupVec_0_value ? allocated_29 : _GEN_1844; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1846 = 5'h1e == issueLookupVec_0_value ? allocated_30 : _GEN_1845; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1847 = 5'h1f == issueLookupVec_0_value ? allocated_31 : _GEN_1846; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1849 = 5'h1 == issueLookupVec_0_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1850 = 5'h2 == issueLookupVec_0_value ? addrvalid_2 : _GEN_1849; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1851 = 5'h3 == issueLookupVec_0_value ? addrvalid_3 : _GEN_1850; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1852 = 5'h4 == issueLookupVec_0_value ? addrvalid_4 : _GEN_1851; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1853 = 5'h5 == issueLookupVec_0_value ? addrvalid_5 : _GEN_1852; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1854 = 5'h6 == issueLookupVec_0_value ? addrvalid_6 : _GEN_1853; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1855 = 5'h7 == issueLookupVec_0_value ? addrvalid_7 : _GEN_1854; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1856 = 5'h8 == issueLookupVec_0_value ? addrvalid_8 : _GEN_1855; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1857 = 5'h9 == issueLookupVec_0_value ? addrvalid_9 : _GEN_1856; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1858 = 5'ha == issueLookupVec_0_value ? addrvalid_10 : _GEN_1857; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1859 = 5'hb == issueLookupVec_0_value ? addrvalid_11 : _GEN_1858; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1860 = 5'hc == issueLookupVec_0_value ? addrvalid_12 : _GEN_1859; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1861 = 5'hd == issueLookupVec_0_value ? addrvalid_13 : _GEN_1860; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1862 = 5'he == issueLookupVec_0_value ? addrvalid_14 : _GEN_1861; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1863 = 5'hf == issueLookupVec_0_value ? addrvalid_15 : _GEN_1862; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1864 = 5'h10 == issueLookupVec_0_value ? addrvalid_16 : _GEN_1863; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1865 = 5'h11 == issueLookupVec_0_value ? addrvalid_17 : _GEN_1864; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1866 = 5'h12 == issueLookupVec_0_value ? addrvalid_18 : _GEN_1865; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1867 = 5'h13 == issueLookupVec_0_value ? addrvalid_19 : _GEN_1866; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1868 = 5'h14 == issueLookupVec_0_value ? addrvalid_20 : _GEN_1867; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1869 = 5'h15 == issueLookupVec_0_value ? addrvalid_21 : _GEN_1868; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1870 = 5'h16 == issueLookupVec_0_value ? addrvalid_22 : _GEN_1869; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1871 = 5'h17 == issueLookupVec_0_value ? addrvalid_23 : _GEN_1870; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1872 = 5'h18 == issueLookupVec_0_value ? addrvalid_24 : _GEN_1871; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1873 = 5'h19 == issueLookupVec_0_value ? addrvalid_25 : _GEN_1872; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1874 = 5'h1a == issueLookupVec_0_value ? addrvalid_26 : _GEN_1873; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1875 = 5'h1b == issueLookupVec_0_value ? addrvalid_27 : _GEN_1874; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1876 = 5'h1c == issueLookupVec_0_value ? addrvalid_28 : _GEN_1875; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1877 = 5'h1d == issueLookupVec_0_value ? addrvalid_29 : _GEN_1876; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1878 = 5'h1e == issueLookupVec_0_value ? addrvalid_30 : _GEN_1877; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1879 = 5'h1f == issueLookupVec_0_value ? addrvalid_31 : _GEN_1878; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1881 = 5'h1 == issueLookupVec_0_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1882 = 5'h2 == issueLookupVec_0_value ? datavalid_2 : _GEN_1881; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1883 = 5'h3 == issueLookupVec_0_value ? datavalid_3 : _GEN_1882; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1884 = 5'h4 == issueLookupVec_0_value ? datavalid_4 : _GEN_1883; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1885 = 5'h5 == issueLookupVec_0_value ? datavalid_5 : _GEN_1884; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1886 = 5'h6 == issueLookupVec_0_value ? datavalid_6 : _GEN_1885; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1887 = 5'h7 == issueLookupVec_0_value ? datavalid_7 : _GEN_1886; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1888 = 5'h8 == issueLookupVec_0_value ? datavalid_8 : _GEN_1887; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1889 = 5'h9 == issueLookupVec_0_value ? datavalid_9 : _GEN_1888; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1890 = 5'ha == issueLookupVec_0_value ? datavalid_10 : _GEN_1889; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1891 = 5'hb == issueLookupVec_0_value ? datavalid_11 : _GEN_1890; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1892 = 5'hc == issueLookupVec_0_value ? datavalid_12 : _GEN_1891; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1893 = 5'hd == issueLookupVec_0_value ? datavalid_13 : _GEN_1892; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1894 = 5'he == issueLookupVec_0_value ? datavalid_14 : _GEN_1893; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1895 = 5'hf == issueLookupVec_0_value ? datavalid_15 : _GEN_1894; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1896 = 5'h10 == issueLookupVec_0_value ? datavalid_16 : _GEN_1895; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1897 = 5'h11 == issueLookupVec_0_value ? datavalid_17 : _GEN_1896; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1898 = 5'h12 == issueLookupVec_0_value ? datavalid_18 : _GEN_1897; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1899 = 5'h13 == issueLookupVec_0_value ? datavalid_19 : _GEN_1898; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1900 = 5'h14 == issueLookupVec_0_value ? datavalid_20 : _GEN_1899; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1901 = 5'h15 == issueLookupVec_0_value ? datavalid_21 : _GEN_1900; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1902 = 5'h16 == issueLookupVec_0_value ? datavalid_22 : _GEN_1901; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1903 = 5'h17 == issueLookupVec_0_value ? datavalid_23 : _GEN_1902; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1904 = 5'h18 == issueLookupVec_0_value ? datavalid_24 : _GEN_1903; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1905 = 5'h19 == issueLookupVec_0_value ? datavalid_25 : _GEN_1904; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1906 = 5'h1a == issueLookupVec_0_value ? datavalid_26 : _GEN_1905; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1907 = 5'h1b == issueLookupVec_0_value ? datavalid_27 : _GEN_1906; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1908 = 5'h1c == issueLookupVec_0_value ? datavalid_28 : _GEN_1907; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1909 = 5'h1d == issueLookupVec_0_value ? datavalid_29 : _GEN_1908; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1910 = 5'h1e == issueLookupVec_0_value ? datavalid_30 : _GEN_1909; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1911 = 5'h1f == issueLookupVec_0_value ? datavalid_31 : _GEN_1910; // @[StoreQueue.scala 203:{92,92}]
  wire [5:0] _issueLookup_T_2 = {issueLookupVec_0_flag,issueLookupVec_0_value}; // @[CircularQueuePtr.scala 64:50]
  wire [5:0] _issueLookup_T_3 = {enqPtrExt_0_flag,enqPtrExt_0_value}; // @[CircularQueuePtr.scala 64:70]
  wire  _issueLookup_T_4 = _issueLookup_T_2 != _issueLookup_T_3; // @[CircularQueuePtr.scala 64:52]
  wire  issueLookup_0 = _GEN_1847 & _GEN_1879 & _GEN_1911 & _issueLookup_T_4; // @[StoreQueue.scala 203:116]
  wire  _GEN_1913 = 5'h1 == issueLookupVec_1_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1914 = 5'h2 == issueLookupVec_1_value ? allocated_2 : _GEN_1913; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1915 = 5'h3 == issueLookupVec_1_value ? allocated_3 : _GEN_1914; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1916 = 5'h4 == issueLookupVec_1_value ? allocated_4 : _GEN_1915; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1917 = 5'h5 == issueLookupVec_1_value ? allocated_5 : _GEN_1916; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1918 = 5'h6 == issueLookupVec_1_value ? allocated_6 : _GEN_1917; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1919 = 5'h7 == issueLookupVec_1_value ? allocated_7 : _GEN_1918; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1920 = 5'h8 == issueLookupVec_1_value ? allocated_8 : _GEN_1919; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1921 = 5'h9 == issueLookupVec_1_value ? allocated_9 : _GEN_1920; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1922 = 5'ha == issueLookupVec_1_value ? allocated_10 : _GEN_1921; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1923 = 5'hb == issueLookupVec_1_value ? allocated_11 : _GEN_1922; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1924 = 5'hc == issueLookupVec_1_value ? allocated_12 : _GEN_1923; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1925 = 5'hd == issueLookupVec_1_value ? allocated_13 : _GEN_1924; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1926 = 5'he == issueLookupVec_1_value ? allocated_14 : _GEN_1925; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1927 = 5'hf == issueLookupVec_1_value ? allocated_15 : _GEN_1926; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1928 = 5'h10 == issueLookupVec_1_value ? allocated_16 : _GEN_1927; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1929 = 5'h11 == issueLookupVec_1_value ? allocated_17 : _GEN_1928; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1930 = 5'h12 == issueLookupVec_1_value ? allocated_18 : _GEN_1929; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1931 = 5'h13 == issueLookupVec_1_value ? allocated_19 : _GEN_1930; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1932 = 5'h14 == issueLookupVec_1_value ? allocated_20 : _GEN_1931; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1933 = 5'h15 == issueLookupVec_1_value ? allocated_21 : _GEN_1932; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1934 = 5'h16 == issueLookupVec_1_value ? allocated_22 : _GEN_1933; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1935 = 5'h17 == issueLookupVec_1_value ? allocated_23 : _GEN_1934; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1936 = 5'h18 == issueLookupVec_1_value ? allocated_24 : _GEN_1935; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1937 = 5'h19 == issueLookupVec_1_value ? allocated_25 : _GEN_1936; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1938 = 5'h1a == issueLookupVec_1_value ? allocated_26 : _GEN_1937; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1939 = 5'h1b == issueLookupVec_1_value ? allocated_27 : _GEN_1938; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1940 = 5'h1c == issueLookupVec_1_value ? allocated_28 : _GEN_1939; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1941 = 5'h1d == issueLookupVec_1_value ? allocated_29 : _GEN_1940; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1942 = 5'h1e == issueLookupVec_1_value ? allocated_30 : _GEN_1941; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1943 = 5'h1f == issueLookupVec_1_value ? allocated_31 : _GEN_1942; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1945 = 5'h1 == issueLookupVec_1_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1946 = 5'h2 == issueLookupVec_1_value ? addrvalid_2 : _GEN_1945; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1947 = 5'h3 == issueLookupVec_1_value ? addrvalid_3 : _GEN_1946; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1948 = 5'h4 == issueLookupVec_1_value ? addrvalid_4 : _GEN_1947; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1949 = 5'h5 == issueLookupVec_1_value ? addrvalid_5 : _GEN_1948; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1950 = 5'h6 == issueLookupVec_1_value ? addrvalid_6 : _GEN_1949; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1951 = 5'h7 == issueLookupVec_1_value ? addrvalid_7 : _GEN_1950; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1952 = 5'h8 == issueLookupVec_1_value ? addrvalid_8 : _GEN_1951; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1953 = 5'h9 == issueLookupVec_1_value ? addrvalid_9 : _GEN_1952; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1954 = 5'ha == issueLookupVec_1_value ? addrvalid_10 : _GEN_1953; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1955 = 5'hb == issueLookupVec_1_value ? addrvalid_11 : _GEN_1954; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1956 = 5'hc == issueLookupVec_1_value ? addrvalid_12 : _GEN_1955; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1957 = 5'hd == issueLookupVec_1_value ? addrvalid_13 : _GEN_1956; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1958 = 5'he == issueLookupVec_1_value ? addrvalid_14 : _GEN_1957; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1959 = 5'hf == issueLookupVec_1_value ? addrvalid_15 : _GEN_1958; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1960 = 5'h10 == issueLookupVec_1_value ? addrvalid_16 : _GEN_1959; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1961 = 5'h11 == issueLookupVec_1_value ? addrvalid_17 : _GEN_1960; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1962 = 5'h12 == issueLookupVec_1_value ? addrvalid_18 : _GEN_1961; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1963 = 5'h13 == issueLookupVec_1_value ? addrvalid_19 : _GEN_1962; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1964 = 5'h14 == issueLookupVec_1_value ? addrvalid_20 : _GEN_1963; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1965 = 5'h15 == issueLookupVec_1_value ? addrvalid_21 : _GEN_1964; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1966 = 5'h16 == issueLookupVec_1_value ? addrvalid_22 : _GEN_1965; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1967 = 5'h17 == issueLookupVec_1_value ? addrvalid_23 : _GEN_1966; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1968 = 5'h18 == issueLookupVec_1_value ? addrvalid_24 : _GEN_1967; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1969 = 5'h19 == issueLookupVec_1_value ? addrvalid_25 : _GEN_1968; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1970 = 5'h1a == issueLookupVec_1_value ? addrvalid_26 : _GEN_1969; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1971 = 5'h1b == issueLookupVec_1_value ? addrvalid_27 : _GEN_1970; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1972 = 5'h1c == issueLookupVec_1_value ? addrvalid_28 : _GEN_1971; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1973 = 5'h1d == issueLookupVec_1_value ? addrvalid_29 : _GEN_1972; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1974 = 5'h1e == issueLookupVec_1_value ? addrvalid_30 : _GEN_1973; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1975 = 5'h1f == issueLookupVec_1_value ? addrvalid_31 : _GEN_1974; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_1977 = 5'h1 == issueLookupVec_1_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1978 = 5'h2 == issueLookupVec_1_value ? datavalid_2 : _GEN_1977; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1979 = 5'h3 == issueLookupVec_1_value ? datavalid_3 : _GEN_1978; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1980 = 5'h4 == issueLookupVec_1_value ? datavalid_4 : _GEN_1979; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1981 = 5'h5 == issueLookupVec_1_value ? datavalid_5 : _GEN_1980; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1982 = 5'h6 == issueLookupVec_1_value ? datavalid_6 : _GEN_1981; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1983 = 5'h7 == issueLookupVec_1_value ? datavalid_7 : _GEN_1982; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1984 = 5'h8 == issueLookupVec_1_value ? datavalid_8 : _GEN_1983; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1985 = 5'h9 == issueLookupVec_1_value ? datavalid_9 : _GEN_1984; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1986 = 5'ha == issueLookupVec_1_value ? datavalid_10 : _GEN_1985; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1987 = 5'hb == issueLookupVec_1_value ? datavalid_11 : _GEN_1986; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1988 = 5'hc == issueLookupVec_1_value ? datavalid_12 : _GEN_1987; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1989 = 5'hd == issueLookupVec_1_value ? datavalid_13 : _GEN_1988; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1990 = 5'he == issueLookupVec_1_value ? datavalid_14 : _GEN_1989; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1991 = 5'hf == issueLookupVec_1_value ? datavalid_15 : _GEN_1990; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1992 = 5'h10 == issueLookupVec_1_value ? datavalid_16 : _GEN_1991; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1993 = 5'h11 == issueLookupVec_1_value ? datavalid_17 : _GEN_1992; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1994 = 5'h12 == issueLookupVec_1_value ? datavalid_18 : _GEN_1993; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1995 = 5'h13 == issueLookupVec_1_value ? datavalid_19 : _GEN_1994; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1996 = 5'h14 == issueLookupVec_1_value ? datavalid_20 : _GEN_1995; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1997 = 5'h15 == issueLookupVec_1_value ? datavalid_21 : _GEN_1996; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1998 = 5'h16 == issueLookupVec_1_value ? datavalid_22 : _GEN_1997; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_1999 = 5'h17 == issueLookupVec_1_value ? datavalid_23 : _GEN_1998; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2000 = 5'h18 == issueLookupVec_1_value ? datavalid_24 : _GEN_1999; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2001 = 5'h19 == issueLookupVec_1_value ? datavalid_25 : _GEN_2000; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2002 = 5'h1a == issueLookupVec_1_value ? datavalid_26 : _GEN_2001; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2003 = 5'h1b == issueLookupVec_1_value ? datavalid_27 : _GEN_2002; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2004 = 5'h1c == issueLookupVec_1_value ? datavalid_28 : _GEN_2003; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2005 = 5'h1d == issueLookupVec_1_value ? datavalid_29 : _GEN_2004; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2006 = 5'h1e == issueLookupVec_1_value ? datavalid_30 : _GEN_2005; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2007 = 5'h1f == issueLookupVec_1_value ? datavalid_31 : _GEN_2006; // @[StoreQueue.scala 203:{92,92}]
  wire [5:0] _issueLookup_T_7 = {issueLookupVec_1_flag,issueLookupVec_1_value}; // @[CircularQueuePtr.scala 64:50]
  wire  _issueLookup_T_9 = _issueLookup_T_7 != _issueLookup_T_3; // @[CircularQueuePtr.scala 64:52]
  wire  issueLookup_1 = _GEN_1943 & _GEN_1975 & _GEN_2007 & _issueLookup_T_9; // @[StoreQueue.scala 203:116]
  wire  _GEN_2009 = 5'h1 == issueLookupVec_2_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2010 = 5'h2 == issueLookupVec_2_value ? allocated_2 : _GEN_2009; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2011 = 5'h3 == issueLookupVec_2_value ? allocated_3 : _GEN_2010; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2012 = 5'h4 == issueLookupVec_2_value ? allocated_4 : _GEN_2011; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2013 = 5'h5 == issueLookupVec_2_value ? allocated_5 : _GEN_2012; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2014 = 5'h6 == issueLookupVec_2_value ? allocated_6 : _GEN_2013; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2015 = 5'h7 == issueLookupVec_2_value ? allocated_7 : _GEN_2014; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2016 = 5'h8 == issueLookupVec_2_value ? allocated_8 : _GEN_2015; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2017 = 5'h9 == issueLookupVec_2_value ? allocated_9 : _GEN_2016; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2018 = 5'ha == issueLookupVec_2_value ? allocated_10 : _GEN_2017; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2019 = 5'hb == issueLookupVec_2_value ? allocated_11 : _GEN_2018; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2020 = 5'hc == issueLookupVec_2_value ? allocated_12 : _GEN_2019; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2021 = 5'hd == issueLookupVec_2_value ? allocated_13 : _GEN_2020; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2022 = 5'he == issueLookupVec_2_value ? allocated_14 : _GEN_2021; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2023 = 5'hf == issueLookupVec_2_value ? allocated_15 : _GEN_2022; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2024 = 5'h10 == issueLookupVec_2_value ? allocated_16 : _GEN_2023; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2025 = 5'h11 == issueLookupVec_2_value ? allocated_17 : _GEN_2024; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2026 = 5'h12 == issueLookupVec_2_value ? allocated_18 : _GEN_2025; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2027 = 5'h13 == issueLookupVec_2_value ? allocated_19 : _GEN_2026; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2028 = 5'h14 == issueLookupVec_2_value ? allocated_20 : _GEN_2027; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2029 = 5'h15 == issueLookupVec_2_value ? allocated_21 : _GEN_2028; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2030 = 5'h16 == issueLookupVec_2_value ? allocated_22 : _GEN_2029; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2031 = 5'h17 == issueLookupVec_2_value ? allocated_23 : _GEN_2030; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2032 = 5'h18 == issueLookupVec_2_value ? allocated_24 : _GEN_2031; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2033 = 5'h19 == issueLookupVec_2_value ? allocated_25 : _GEN_2032; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2034 = 5'h1a == issueLookupVec_2_value ? allocated_26 : _GEN_2033; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2035 = 5'h1b == issueLookupVec_2_value ? allocated_27 : _GEN_2034; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2036 = 5'h1c == issueLookupVec_2_value ? allocated_28 : _GEN_2035; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2037 = 5'h1d == issueLookupVec_2_value ? allocated_29 : _GEN_2036; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2038 = 5'h1e == issueLookupVec_2_value ? allocated_30 : _GEN_2037; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2039 = 5'h1f == issueLookupVec_2_value ? allocated_31 : _GEN_2038; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2041 = 5'h1 == issueLookupVec_2_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2042 = 5'h2 == issueLookupVec_2_value ? addrvalid_2 : _GEN_2041; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2043 = 5'h3 == issueLookupVec_2_value ? addrvalid_3 : _GEN_2042; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2044 = 5'h4 == issueLookupVec_2_value ? addrvalid_4 : _GEN_2043; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2045 = 5'h5 == issueLookupVec_2_value ? addrvalid_5 : _GEN_2044; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2046 = 5'h6 == issueLookupVec_2_value ? addrvalid_6 : _GEN_2045; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2047 = 5'h7 == issueLookupVec_2_value ? addrvalid_7 : _GEN_2046; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2048 = 5'h8 == issueLookupVec_2_value ? addrvalid_8 : _GEN_2047; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2049 = 5'h9 == issueLookupVec_2_value ? addrvalid_9 : _GEN_2048; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2050 = 5'ha == issueLookupVec_2_value ? addrvalid_10 : _GEN_2049; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2051 = 5'hb == issueLookupVec_2_value ? addrvalid_11 : _GEN_2050; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2052 = 5'hc == issueLookupVec_2_value ? addrvalid_12 : _GEN_2051; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2053 = 5'hd == issueLookupVec_2_value ? addrvalid_13 : _GEN_2052; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2054 = 5'he == issueLookupVec_2_value ? addrvalid_14 : _GEN_2053; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2055 = 5'hf == issueLookupVec_2_value ? addrvalid_15 : _GEN_2054; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2056 = 5'h10 == issueLookupVec_2_value ? addrvalid_16 : _GEN_2055; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2057 = 5'h11 == issueLookupVec_2_value ? addrvalid_17 : _GEN_2056; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2058 = 5'h12 == issueLookupVec_2_value ? addrvalid_18 : _GEN_2057; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2059 = 5'h13 == issueLookupVec_2_value ? addrvalid_19 : _GEN_2058; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2060 = 5'h14 == issueLookupVec_2_value ? addrvalid_20 : _GEN_2059; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2061 = 5'h15 == issueLookupVec_2_value ? addrvalid_21 : _GEN_2060; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2062 = 5'h16 == issueLookupVec_2_value ? addrvalid_22 : _GEN_2061; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2063 = 5'h17 == issueLookupVec_2_value ? addrvalid_23 : _GEN_2062; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2064 = 5'h18 == issueLookupVec_2_value ? addrvalid_24 : _GEN_2063; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2065 = 5'h19 == issueLookupVec_2_value ? addrvalid_25 : _GEN_2064; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2066 = 5'h1a == issueLookupVec_2_value ? addrvalid_26 : _GEN_2065; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2067 = 5'h1b == issueLookupVec_2_value ? addrvalid_27 : _GEN_2066; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2068 = 5'h1c == issueLookupVec_2_value ? addrvalid_28 : _GEN_2067; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2069 = 5'h1d == issueLookupVec_2_value ? addrvalid_29 : _GEN_2068; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2070 = 5'h1e == issueLookupVec_2_value ? addrvalid_30 : _GEN_2069; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2071 = 5'h1f == issueLookupVec_2_value ? addrvalid_31 : _GEN_2070; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2073 = 5'h1 == issueLookupVec_2_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2074 = 5'h2 == issueLookupVec_2_value ? datavalid_2 : _GEN_2073; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2075 = 5'h3 == issueLookupVec_2_value ? datavalid_3 : _GEN_2074; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2076 = 5'h4 == issueLookupVec_2_value ? datavalid_4 : _GEN_2075; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2077 = 5'h5 == issueLookupVec_2_value ? datavalid_5 : _GEN_2076; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2078 = 5'h6 == issueLookupVec_2_value ? datavalid_6 : _GEN_2077; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2079 = 5'h7 == issueLookupVec_2_value ? datavalid_7 : _GEN_2078; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2080 = 5'h8 == issueLookupVec_2_value ? datavalid_8 : _GEN_2079; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2081 = 5'h9 == issueLookupVec_2_value ? datavalid_9 : _GEN_2080; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2082 = 5'ha == issueLookupVec_2_value ? datavalid_10 : _GEN_2081; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2083 = 5'hb == issueLookupVec_2_value ? datavalid_11 : _GEN_2082; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2084 = 5'hc == issueLookupVec_2_value ? datavalid_12 : _GEN_2083; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2085 = 5'hd == issueLookupVec_2_value ? datavalid_13 : _GEN_2084; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2086 = 5'he == issueLookupVec_2_value ? datavalid_14 : _GEN_2085; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2087 = 5'hf == issueLookupVec_2_value ? datavalid_15 : _GEN_2086; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2088 = 5'h10 == issueLookupVec_2_value ? datavalid_16 : _GEN_2087; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2089 = 5'h11 == issueLookupVec_2_value ? datavalid_17 : _GEN_2088; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2090 = 5'h12 == issueLookupVec_2_value ? datavalid_18 : _GEN_2089; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2091 = 5'h13 == issueLookupVec_2_value ? datavalid_19 : _GEN_2090; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2092 = 5'h14 == issueLookupVec_2_value ? datavalid_20 : _GEN_2091; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2093 = 5'h15 == issueLookupVec_2_value ? datavalid_21 : _GEN_2092; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2094 = 5'h16 == issueLookupVec_2_value ? datavalid_22 : _GEN_2093; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2095 = 5'h17 == issueLookupVec_2_value ? datavalid_23 : _GEN_2094; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2096 = 5'h18 == issueLookupVec_2_value ? datavalid_24 : _GEN_2095; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2097 = 5'h19 == issueLookupVec_2_value ? datavalid_25 : _GEN_2096; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2098 = 5'h1a == issueLookupVec_2_value ? datavalid_26 : _GEN_2097; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2099 = 5'h1b == issueLookupVec_2_value ? datavalid_27 : _GEN_2098; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2100 = 5'h1c == issueLookupVec_2_value ? datavalid_28 : _GEN_2099; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2101 = 5'h1d == issueLookupVec_2_value ? datavalid_29 : _GEN_2100; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2102 = 5'h1e == issueLookupVec_2_value ? datavalid_30 : _GEN_2101; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2103 = 5'h1f == issueLookupVec_2_value ? datavalid_31 : _GEN_2102; // @[StoreQueue.scala 203:{92,92}]
  wire [5:0] _issueLookup_T_12 = {issueLookupVec_2_flag,issueLookupVec_2_value}; // @[CircularQueuePtr.scala 64:50]
  wire  _issueLookup_T_14 = _issueLookup_T_12 != _issueLookup_T_3; // @[CircularQueuePtr.scala 64:52]
  wire  issueLookup_2 = _GEN_2039 & _GEN_2071 & _GEN_2103 & _issueLookup_T_14; // @[StoreQueue.scala 203:116]
  wire  _GEN_2105 = 5'h1 == issueLookupVec_3_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2106 = 5'h2 == issueLookupVec_3_value ? allocated_2 : _GEN_2105; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2107 = 5'h3 == issueLookupVec_3_value ? allocated_3 : _GEN_2106; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2108 = 5'h4 == issueLookupVec_3_value ? allocated_4 : _GEN_2107; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2109 = 5'h5 == issueLookupVec_3_value ? allocated_5 : _GEN_2108; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2110 = 5'h6 == issueLookupVec_3_value ? allocated_6 : _GEN_2109; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2111 = 5'h7 == issueLookupVec_3_value ? allocated_7 : _GEN_2110; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2112 = 5'h8 == issueLookupVec_3_value ? allocated_8 : _GEN_2111; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2113 = 5'h9 == issueLookupVec_3_value ? allocated_9 : _GEN_2112; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2114 = 5'ha == issueLookupVec_3_value ? allocated_10 : _GEN_2113; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2115 = 5'hb == issueLookupVec_3_value ? allocated_11 : _GEN_2114; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2116 = 5'hc == issueLookupVec_3_value ? allocated_12 : _GEN_2115; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2117 = 5'hd == issueLookupVec_3_value ? allocated_13 : _GEN_2116; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2118 = 5'he == issueLookupVec_3_value ? allocated_14 : _GEN_2117; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2119 = 5'hf == issueLookupVec_3_value ? allocated_15 : _GEN_2118; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2120 = 5'h10 == issueLookupVec_3_value ? allocated_16 : _GEN_2119; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2121 = 5'h11 == issueLookupVec_3_value ? allocated_17 : _GEN_2120; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2122 = 5'h12 == issueLookupVec_3_value ? allocated_18 : _GEN_2121; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2123 = 5'h13 == issueLookupVec_3_value ? allocated_19 : _GEN_2122; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2124 = 5'h14 == issueLookupVec_3_value ? allocated_20 : _GEN_2123; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2125 = 5'h15 == issueLookupVec_3_value ? allocated_21 : _GEN_2124; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2126 = 5'h16 == issueLookupVec_3_value ? allocated_22 : _GEN_2125; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2127 = 5'h17 == issueLookupVec_3_value ? allocated_23 : _GEN_2126; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2128 = 5'h18 == issueLookupVec_3_value ? allocated_24 : _GEN_2127; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2129 = 5'h19 == issueLookupVec_3_value ? allocated_25 : _GEN_2128; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2130 = 5'h1a == issueLookupVec_3_value ? allocated_26 : _GEN_2129; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2131 = 5'h1b == issueLookupVec_3_value ? allocated_27 : _GEN_2130; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2132 = 5'h1c == issueLookupVec_3_value ? allocated_28 : _GEN_2131; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2133 = 5'h1d == issueLookupVec_3_value ? allocated_29 : _GEN_2132; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2134 = 5'h1e == issueLookupVec_3_value ? allocated_30 : _GEN_2133; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2135 = 5'h1f == issueLookupVec_3_value ? allocated_31 : _GEN_2134; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2137 = 5'h1 == issueLookupVec_3_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2138 = 5'h2 == issueLookupVec_3_value ? addrvalid_2 : _GEN_2137; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2139 = 5'h3 == issueLookupVec_3_value ? addrvalid_3 : _GEN_2138; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2140 = 5'h4 == issueLookupVec_3_value ? addrvalid_4 : _GEN_2139; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2141 = 5'h5 == issueLookupVec_3_value ? addrvalid_5 : _GEN_2140; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2142 = 5'h6 == issueLookupVec_3_value ? addrvalid_6 : _GEN_2141; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2143 = 5'h7 == issueLookupVec_3_value ? addrvalid_7 : _GEN_2142; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2144 = 5'h8 == issueLookupVec_3_value ? addrvalid_8 : _GEN_2143; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2145 = 5'h9 == issueLookupVec_3_value ? addrvalid_9 : _GEN_2144; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2146 = 5'ha == issueLookupVec_3_value ? addrvalid_10 : _GEN_2145; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2147 = 5'hb == issueLookupVec_3_value ? addrvalid_11 : _GEN_2146; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2148 = 5'hc == issueLookupVec_3_value ? addrvalid_12 : _GEN_2147; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2149 = 5'hd == issueLookupVec_3_value ? addrvalid_13 : _GEN_2148; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2150 = 5'he == issueLookupVec_3_value ? addrvalid_14 : _GEN_2149; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2151 = 5'hf == issueLookupVec_3_value ? addrvalid_15 : _GEN_2150; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2152 = 5'h10 == issueLookupVec_3_value ? addrvalid_16 : _GEN_2151; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2153 = 5'h11 == issueLookupVec_3_value ? addrvalid_17 : _GEN_2152; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2154 = 5'h12 == issueLookupVec_3_value ? addrvalid_18 : _GEN_2153; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2155 = 5'h13 == issueLookupVec_3_value ? addrvalid_19 : _GEN_2154; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2156 = 5'h14 == issueLookupVec_3_value ? addrvalid_20 : _GEN_2155; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2157 = 5'h15 == issueLookupVec_3_value ? addrvalid_21 : _GEN_2156; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2158 = 5'h16 == issueLookupVec_3_value ? addrvalid_22 : _GEN_2157; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2159 = 5'h17 == issueLookupVec_3_value ? addrvalid_23 : _GEN_2158; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2160 = 5'h18 == issueLookupVec_3_value ? addrvalid_24 : _GEN_2159; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2161 = 5'h19 == issueLookupVec_3_value ? addrvalid_25 : _GEN_2160; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2162 = 5'h1a == issueLookupVec_3_value ? addrvalid_26 : _GEN_2161; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2163 = 5'h1b == issueLookupVec_3_value ? addrvalid_27 : _GEN_2162; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2164 = 5'h1c == issueLookupVec_3_value ? addrvalid_28 : _GEN_2163; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2165 = 5'h1d == issueLookupVec_3_value ? addrvalid_29 : _GEN_2164; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2166 = 5'h1e == issueLookupVec_3_value ? addrvalid_30 : _GEN_2165; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2167 = 5'h1f == issueLookupVec_3_value ? addrvalid_31 : _GEN_2166; // @[StoreQueue.scala 203:{68,68}]
  wire  _GEN_2169 = 5'h1 == issueLookupVec_3_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2170 = 5'h2 == issueLookupVec_3_value ? datavalid_2 : _GEN_2169; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2171 = 5'h3 == issueLookupVec_3_value ? datavalid_3 : _GEN_2170; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2172 = 5'h4 == issueLookupVec_3_value ? datavalid_4 : _GEN_2171; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2173 = 5'h5 == issueLookupVec_3_value ? datavalid_5 : _GEN_2172; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2174 = 5'h6 == issueLookupVec_3_value ? datavalid_6 : _GEN_2173; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2175 = 5'h7 == issueLookupVec_3_value ? datavalid_7 : _GEN_2174; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2176 = 5'h8 == issueLookupVec_3_value ? datavalid_8 : _GEN_2175; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2177 = 5'h9 == issueLookupVec_3_value ? datavalid_9 : _GEN_2176; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2178 = 5'ha == issueLookupVec_3_value ? datavalid_10 : _GEN_2177; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2179 = 5'hb == issueLookupVec_3_value ? datavalid_11 : _GEN_2178; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2180 = 5'hc == issueLookupVec_3_value ? datavalid_12 : _GEN_2179; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2181 = 5'hd == issueLookupVec_3_value ? datavalid_13 : _GEN_2180; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2182 = 5'he == issueLookupVec_3_value ? datavalid_14 : _GEN_2181; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2183 = 5'hf == issueLookupVec_3_value ? datavalid_15 : _GEN_2182; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2184 = 5'h10 == issueLookupVec_3_value ? datavalid_16 : _GEN_2183; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2185 = 5'h11 == issueLookupVec_3_value ? datavalid_17 : _GEN_2184; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2186 = 5'h12 == issueLookupVec_3_value ? datavalid_18 : _GEN_2185; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2187 = 5'h13 == issueLookupVec_3_value ? datavalid_19 : _GEN_2186; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2188 = 5'h14 == issueLookupVec_3_value ? datavalid_20 : _GEN_2187; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2189 = 5'h15 == issueLookupVec_3_value ? datavalid_21 : _GEN_2188; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2190 = 5'h16 == issueLookupVec_3_value ? datavalid_22 : _GEN_2189; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2191 = 5'h17 == issueLookupVec_3_value ? datavalid_23 : _GEN_2190; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2192 = 5'h18 == issueLookupVec_3_value ? datavalid_24 : _GEN_2191; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2193 = 5'h19 == issueLookupVec_3_value ? datavalid_25 : _GEN_2192; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2194 = 5'h1a == issueLookupVec_3_value ? datavalid_26 : _GEN_2193; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2195 = 5'h1b == issueLookupVec_3_value ? datavalid_27 : _GEN_2194; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2196 = 5'h1c == issueLookupVec_3_value ? datavalid_28 : _GEN_2195; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2197 = 5'h1d == issueLookupVec_3_value ? datavalid_29 : _GEN_2196; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2198 = 5'h1e == issueLookupVec_3_value ? datavalid_30 : _GEN_2197; // @[StoreQueue.scala 203:{92,92}]
  wire  _GEN_2199 = 5'h1f == issueLookupVec_3_value ? datavalid_31 : _GEN_2198; // @[StoreQueue.scala 203:{92,92}]
  wire [5:0] _issueLookup_T_17 = {issueLookupVec_3_flag,issueLookupVec_3_value}; // @[CircularQueuePtr.scala 64:50]
  wire  _issueLookup_T_19 = _issueLookup_T_17 != _issueLookup_T_3; // @[CircularQueuePtr.scala 64:52]
  wire  issueLookup_3 = _GEN_2135 & _GEN_2167 & _GEN_2199 & _issueLookup_T_19; // @[StoreQueue.scala 203:116]
  wire  _nextIssuePtr_T = ~issueLookup_0; // @[StoreQueue.scala 204:76]
  wire  _nextIssuePtr_T_1 = ~issueLookup_1; // @[StoreQueue.scala 204:76]
  wire  _nextIssuePtr_T_2 = ~issueLookup_2; // @[StoreQueue.scala 204:76]
  wire  _nextIssuePtr_T_3 = ~issueLookup_3; // @[StoreQueue.scala 204:76]
  wire [2:0] _nextIssuePtr_T_4 = _nextIssuePtr_T_3 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _nextIssuePtr_T_5 = _nextIssuePtr_T_2 ? 3'h2 : _nextIssuePtr_T_4; // @[Mux.scala 47:70]
  wire [2:0] _nextIssuePtr_T_6 = _nextIssuePtr_T_1 ? 3'h1 : _nextIssuePtr_T_5; // @[Mux.scala 47:70]
  wire [2:0] _nextIssuePtr_T_7 = _nextIssuePtr_T ? 3'h0 : _nextIssuePtr_T_6; // @[Mux.scala 47:70]
  wire [5:0] _GEN_13641 = {{3'd0}, _nextIssuePtr_T_7}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _nextIssuePtr_new_ptr_T_2 = _issueLookupVec_new_ptr_T + _GEN_13641; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] nextIssuePtr_value = _nextIssuePtr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  nextIssuePtr_flag = _nextIssuePtr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire  issuePtrExt_differentFlag = cmtPtrExt_0_flag ^ deqPtrExt_0_flag; // @[CircularQueuePtr.scala 85:35]
  wire  issuePtrExt_compare = cmtPtrExt_0_value > deqPtrExt_0_value; // @[CircularQueuePtr.scala 86:30]
  wire  _issuePtrExt_T = issuePtrExt_differentFlag ^ issuePtrExt_compare; // @[CircularQueuePtr.scala 87:19]
  wire  addr_valid = ~io_storeIn_0_bits_miss; // @[StoreQueue.scala 239:24]
  wire  _GEN_2202 = 5'h0 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1716; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2203 = 5'h1 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1717; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2204 = 5'h2 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1718; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2205 = 5'h3 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1719; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2206 = 5'h4 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1720; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2207 = 5'h5 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1721; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2208 = 5'h6 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1722; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2209 = 5'h7 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1723; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2210 = 5'h8 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1724; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2211 = 5'h9 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1725; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2212 = 5'ha == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1726; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2213 = 5'hb == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1727; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2214 = 5'hc == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1728; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2215 = 5'hd == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1729; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2216 = 5'he == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1730; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2217 = 5'hf == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1731; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2218 = 5'h10 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1732; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2219 = 5'h11 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1733; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2220 = 5'h12 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1734; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2221 = 5'h13 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1735; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2222 = 5'h14 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1736; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2223 = 5'h15 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1737; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2224 = 5'h16 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1738; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2225 = 5'h17 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1739; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2226 = 5'h18 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1740; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2227 = 5'h19 == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1741; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2228 = 5'h1a == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1742; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2229 = 5'h1b == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1743; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2230 = 5'h1c == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1744; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2231 = 5'h1d == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1745; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2232 = 5'h1e == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1746; // @[StoreQueue.scala 240:{28,28}]
  wire  _GEN_2233 = 5'h1f == io_storeIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_1747; // @[StoreQueue.scala 240:{28,28}]
  wire [6:0] _GEN_3130 = 5'h0 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_0_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3131 = 5'h1 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_1_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3132 = 5'h2 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_2_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3133 = 5'h3 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_3_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3134 = 5'h4 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_4_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3135 = 5'h5 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_5_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3136 = 5'h6 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_6_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3137 = 5'h7 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_7_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3138 = 5'h8 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_8_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3139 = 5'h9 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_9_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3140 = 5'ha == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_10_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3141 = 5'hb == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_11_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3142 = 5'hc == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_12_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3143 = 5'hd == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_13_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3144 = 5'he == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_14_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3145 = 5'hf == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_15_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3146 = 5'h10 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_16_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3147 = 5'h11 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_17_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3148 = 5'h12 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_18_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3149 = 5'h13 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_19_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3150 = 5'h14 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_20_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3151 = 5'h15 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_21_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3152 = 5'h16 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_22_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3153 = 5'h17 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_23_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3154 = 5'h18 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_24_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3155 = 5'h19 == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_25_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3156 = 5'h1a == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_26_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3157 = 5'h1b == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_27_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3158 = 5'h1c == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_28_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3159 = 5'h1d == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_29_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3160 = 5'h1e == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_30_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire [6:0] _GEN_3161 = 5'h1f == io_storeIn_0_bits_uop_sqIdx_value ? io_storeIn_0_bits_uop_ctrl_fuOpType :
    uop_31_ctrl_fuOpType; // @[StoreQueue.scala 261:{27,27} 89:16]
  wire  _GEN_3674 = io_storeIn_0_valid ? _GEN_2202 : _GEN_1716; // @[StoreQueue.scala 238:33]
  wire  _GEN_3675 = io_storeIn_0_valid ? _GEN_2203 : _GEN_1717; // @[StoreQueue.scala 238:33]
  wire  _GEN_3676 = io_storeIn_0_valid ? _GEN_2204 : _GEN_1718; // @[StoreQueue.scala 238:33]
  wire  _GEN_3677 = io_storeIn_0_valid ? _GEN_2205 : _GEN_1719; // @[StoreQueue.scala 238:33]
  wire  _GEN_3678 = io_storeIn_0_valid ? _GEN_2206 : _GEN_1720; // @[StoreQueue.scala 238:33]
  wire  _GEN_3679 = io_storeIn_0_valid ? _GEN_2207 : _GEN_1721; // @[StoreQueue.scala 238:33]
  wire  _GEN_3680 = io_storeIn_0_valid ? _GEN_2208 : _GEN_1722; // @[StoreQueue.scala 238:33]
  wire  _GEN_3681 = io_storeIn_0_valid ? _GEN_2209 : _GEN_1723; // @[StoreQueue.scala 238:33]
  wire  _GEN_3682 = io_storeIn_0_valid ? _GEN_2210 : _GEN_1724; // @[StoreQueue.scala 238:33]
  wire  _GEN_3683 = io_storeIn_0_valid ? _GEN_2211 : _GEN_1725; // @[StoreQueue.scala 238:33]
  wire  _GEN_3684 = io_storeIn_0_valid ? _GEN_2212 : _GEN_1726; // @[StoreQueue.scala 238:33]
  wire  _GEN_3685 = io_storeIn_0_valid ? _GEN_2213 : _GEN_1727; // @[StoreQueue.scala 238:33]
  wire  _GEN_3686 = io_storeIn_0_valid ? _GEN_2214 : _GEN_1728; // @[StoreQueue.scala 238:33]
  wire  _GEN_3687 = io_storeIn_0_valid ? _GEN_2215 : _GEN_1729; // @[StoreQueue.scala 238:33]
  wire  _GEN_3688 = io_storeIn_0_valid ? _GEN_2216 : _GEN_1730; // @[StoreQueue.scala 238:33]
  wire  _GEN_3689 = io_storeIn_0_valid ? _GEN_2217 : _GEN_1731; // @[StoreQueue.scala 238:33]
  wire  _GEN_3690 = io_storeIn_0_valid ? _GEN_2218 : _GEN_1732; // @[StoreQueue.scala 238:33]
  wire  _GEN_3691 = io_storeIn_0_valid ? _GEN_2219 : _GEN_1733; // @[StoreQueue.scala 238:33]
  wire  _GEN_3692 = io_storeIn_0_valid ? _GEN_2220 : _GEN_1734; // @[StoreQueue.scala 238:33]
  wire  _GEN_3693 = io_storeIn_0_valid ? _GEN_2221 : _GEN_1735; // @[StoreQueue.scala 238:33]
  wire  _GEN_3694 = io_storeIn_0_valid ? _GEN_2222 : _GEN_1736; // @[StoreQueue.scala 238:33]
  wire  _GEN_3695 = io_storeIn_0_valid ? _GEN_2223 : _GEN_1737; // @[StoreQueue.scala 238:33]
  wire  _GEN_3696 = io_storeIn_0_valid ? _GEN_2224 : _GEN_1738; // @[StoreQueue.scala 238:33]
  wire  _GEN_3697 = io_storeIn_0_valid ? _GEN_2225 : _GEN_1739; // @[StoreQueue.scala 238:33]
  wire  _GEN_3698 = io_storeIn_0_valid ? _GEN_2226 : _GEN_1740; // @[StoreQueue.scala 238:33]
  wire  _GEN_3699 = io_storeIn_0_valid ? _GEN_2227 : _GEN_1741; // @[StoreQueue.scala 238:33]
  wire  _GEN_3700 = io_storeIn_0_valid ? _GEN_2228 : _GEN_1742; // @[StoreQueue.scala 238:33]
  wire  _GEN_3701 = io_storeIn_0_valid ? _GEN_2229 : _GEN_1743; // @[StoreQueue.scala 238:33]
  wire  _GEN_3702 = io_storeIn_0_valid ? _GEN_2230 : _GEN_1744; // @[StoreQueue.scala 238:33]
  wire  _GEN_3703 = io_storeIn_0_valid ? _GEN_2231 : _GEN_1745; // @[StoreQueue.scala 238:33]
  wire  _GEN_3704 = io_storeIn_0_valid ? _GEN_2232 : _GEN_1746; // @[StoreQueue.scala 238:33]
  wire  _GEN_3705 = io_storeIn_0_valid ? _GEN_2233 : _GEN_1747; // @[StoreQueue.scala 238:33]
  wire [6:0] _GEN_4608 = io_storeIn_0_valid ? _GEN_3130 : uop_0_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4609 = io_storeIn_0_valid ? _GEN_3131 : uop_1_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4610 = io_storeIn_0_valid ? _GEN_3132 : uop_2_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4611 = io_storeIn_0_valid ? _GEN_3133 : uop_3_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4612 = io_storeIn_0_valid ? _GEN_3134 : uop_4_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4613 = io_storeIn_0_valid ? _GEN_3135 : uop_5_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4614 = io_storeIn_0_valid ? _GEN_3136 : uop_6_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4615 = io_storeIn_0_valid ? _GEN_3137 : uop_7_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4616 = io_storeIn_0_valid ? _GEN_3138 : uop_8_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4617 = io_storeIn_0_valid ? _GEN_3139 : uop_9_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4618 = io_storeIn_0_valid ? _GEN_3140 : uop_10_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4619 = io_storeIn_0_valid ? _GEN_3141 : uop_11_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4620 = io_storeIn_0_valid ? _GEN_3142 : uop_12_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4621 = io_storeIn_0_valid ? _GEN_3143 : uop_13_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4622 = io_storeIn_0_valid ? _GEN_3144 : uop_14_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4623 = io_storeIn_0_valid ? _GEN_3145 : uop_15_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4624 = io_storeIn_0_valid ? _GEN_3146 : uop_16_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4625 = io_storeIn_0_valid ? _GEN_3147 : uop_17_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4626 = io_storeIn_0_valid ? _GEN_3148 : uop_18_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4627 = io_storeIn_0_valid ? _GEN_3149 : uop_19_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4628 = io_storeIn_0_valid ? _GEN_3150 : uop_20_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4629 = io_storeIn_0_valid ? _GEN_3151 : uop_21_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4630 = io_storeIn_0_valid ? _GEN_3152 : uop_22_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4631 = io_storeIn_0_valid ? _GEN_3153 : uop_23_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4632 = io_storeIn_0_valid ? _GEN_3154 : uop_24_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4633 = io_storeIn_0_valid ? _GEN_3155 : uop_25_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4634 = io_storeIn_0_valid ? _GEN_3156 : uop_26_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4635 = io_storeIn_0_valid ? _GEN_3157 : uop_27_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4636 = io_storeIn_0_valid ? _GEN_3158 : uop_28_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4637 = io_storeIn_0_valid ? _GEN_3159 : uop_29_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4638 = io_storeIn_0_valid ? _GEN_3160 : uop_30_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  wire [6:0] _GEN_4639 = io_storeIn_0_valid ? _GEN_3161 : uop_31_ctrl_fuOpType; // @[StoreQueue.scala 238:33 89:16]
  reg  storeInFireReg; // @[StoreQueue.scala 274:33]
  reg [4:0] stWbIndexReg; // @[StoreQueue.scala 275:31]
  wire  _GEN_5152 = 5'h0 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1780; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5153 = 5'h1 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1781; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5154 = 5'h2 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1782; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5155 = 5'h3 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1783; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5156 = 5'h4 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1784; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5157 = 5'h5 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1785; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5158 = 5'h6 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1786; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5159 = 5'h7 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1787; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5160 = 5'h8 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1788; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5161 = 5'h9 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1789; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5162 = 5'ha == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1790; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5163 = 5'hb == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1791; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5164 = 5'hc == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1792; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5165 = 5'hd == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1793; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5166 = 5'he == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1794; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5167 = 5'hf == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1795; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5168 = 5'h10 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1796; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5169 = 5'h11 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1797; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5170 = 5'h12 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1798; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5171 = 5'h13 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1799; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5172 = 5'h14 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1800; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5173 = 5'h15 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1801; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5174 = 5'h16 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1802; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5175 = 5'h17 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1803; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5176 = 5'h18 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1804; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5177 = 5'h19 == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1805; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5178 = 5'h1a == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1806; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5179 = 5'h1b == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1807; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5180 = 5'h1c == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1808; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5181 = 5'h1d == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1809; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5182 = 5'h1e == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1810; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5183 = 5'h1f == stWbIndexReg ? io_storeInRe_0_mmio : _GEN_1811; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_5184 = 5'h0 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_0; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5185 = 5'h1 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_1; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5186 = 5'h2 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_2; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5187 = 5'h3 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_3; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5188 = 5'h4 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_4; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5189 = 5'h5 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_5; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5190 = 5'h6 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_6; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5191 = 5'h7 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_7; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5192 = 5'h8 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_8; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5193 = 5'h9 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_9; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5194 = 5'ha == stWbIndexReg ? io_storeInRe_0_mmio : mmio_10; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5195 = 5'hb == stWbIndexReg ? io_storeInRe_0_mmio : mmio_11; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5196 = 5'hc == stWbIndexReg ? io_storeInRe_0_mmio : mmio_12; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5197 = 5'hd == stWbIndexReg ? io_storeInRe_0_mmio : mmio_13; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5198 = 5'he == stWbIndexReg ? io_storeInRe_0_mmio : mmio_14; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5199 = 5'hf == stWbIndexReg ? io_storeInRe_0_mmio : mmio_15; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5200 = 5'h10 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_16; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5201 = 5'h11 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_17; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5202 = 5'h12 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_18; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5203 = 5'h13 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_19; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5204 = 5'h14 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_20; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5205 = 5'h15 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_21; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5206 = 5'h16 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_22; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5207 = 5'h17 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_23; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5208 = 5'h18 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_24; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5209 = 5'h19 == stWbIndexReg ? io_storeInRe_0_mmio : mmio_25; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5210 = 5'h1a == stWbIndexReg ? io_storeInRe_0_mmio : mmio_26; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5211 = 5'h1b == stWbIndexReg ? io_storeInRe_0_mmio : mmio_27; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5212 = 5'h1c == stWbIndexReg ? io_storeInRe_0_mmio : mmio_28; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5213 = 5'h1d == stWbIndexReg ? io_storeInRe_0_mmio : mmio_29; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5214 = 5'h1e == stWbIndexReg ? io_storeInRe_0_mmio : mmio_30; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5215 = 5'h1f == stWbIndexReg ? io_storeInRe_0_mmio : mmio_31; // @[StoreQueue.scala 126:17 278:{26,26}]
  wire  _GEN_5216 = storeInFireReg ? _GEN_5152 : _GEN_1780; // @[StoreQueue.scala 276:27]
  wire  _GEN_5217 = storeInFireReg ? _GEN_5153 : _GEN_1781; // @[StoreQueue.scala 276:27]
  wire  _GEN_5218 = storeInFireReg ? _GEN_5154 : _GEN_1782; // @[StoreQueue.scala 276:27]
  wire  _GEN_5219 = storeInFireReg ? _GEN_5155 : _GEN_1783; // @[StoreQueue.scala 276:27]
  wire  _GEN_5220 = storeInFireReg ? _GEN_5156 : _GEN_1784; // @[StoreQueue.scala 276:27]
  wire  _GEN_5221 = storeInFireReg ? _GEN_5157 : _GEN_1785; // @[StoreQueue.scala 276:27]
  wire  _GEN_5222 = storeInFireReg ? _GEN_5158 : _GEN_1786; // @[StoreQueue.scala 276:27]
  wire  _GEN_5223 = storeInFireReg ? _GEN_5159 : _GEN_1787; // @[StoreQueue.scala 276:27]
  wire  _GEN_5224 = storeInFireReg ? _GEN_5160 : _GEN_1788; // @[StoreQueue.scala 276:27]
  wire  _GEN_5225 = storeInFireReg ? _GEN_5161 : _GEN_1789; // @[StoreQueue.scala 276:27]
  wire  _GEN_5226 = storeInFireReg ? _GEN_5162 : _GEN_1790; // @[StoreQueue.scala 276:27]
  wire  _GEN_5227 = storeInFireReg ? _GEN_5163 : _GEN_1791; // @[StoreQueue.scala 276:27]
  wire  _GEN_5228 = storeInFireReg ? _GEN_5164 : _GEN_1792; // @[StoreQueue.scala 276:27]
  wire  _GEN_5229 = storeInFireReg ? _GEN_5165 : _GEN_1793; // @[StoreQueue.scala 276:27]
  wire  _GEN_5230 = storeInFireReg ? _GEN_5166 : _GEN_1794; // @[StoreQueue.scala 276:27]
  wire  _GEN_5231 = storeInFireReg ? _GEN_5167 : _GEN_1795; // @[StoreQueue.scala 276:27]
  wire  _GEN_5232 = storeInFireReg ? _GEN_5168 : _GEN_1796; // @[StoreQueue.scala 276:27]
  wire  _GEN_5233 = storeInFireReg ? _GEN_5169 : _GEN_1797; // @[StoreQueue.scala 276:27]
  wire  _GEN_5234 = storeInFireReg ? _GEN_5170 : _GEN_1798; // @[StoreQueue.scala 276:27]
  wire  _GEN_5235 = storeInFireReg ? _GEN_5171 : _GEN_1799; // @[StoreQueue.scala 276:27]
  wire  _GEN_5236 = storeInFireReg ? _GEN_5172 : _GEN_1800; // @[StoreQueue.scala 276:27]
  wire  _GEN_5237 = storeInFireReg ? _GEN_5173 : _GEN_1801; // @[StoreQueue.scala 276:27]
  wire  _GEN_5238 = storeInFireReg ? _GEN_5174 : _GEN_1802; // @[StoreQueue.scala 276:27]
  wire  _GEN_5239 = storeInFireReg ? _GEN_5175 : _GEN_1803; // @[StoreQueue.scala 276:27]
  wire  _GEN_5240 = storeInFireReg ? _GEN_5176 : _GEN_1804; // @[StoreQueue.scala 276:27]
  wire  _GEN_5241 = storeInFireReg ? _GEN_5177 : _GEN_1805; // @[StoreQueue.scala 276:27]
  wire  _GEN_5242 = storeInFireReg ? _GEN_5178 : _GEN_1806; // @[StoreQueue.scala 276:27]
  wire  _GEN_5243 = storeInFireReg ? _GEN_5179 : _GEN_1807; // @[StoreQueue.scala 276:27]
  wire  _GEN_5244 = storeInFireReg ? _GEN_5180 : _GEN_1808; // @[StoreQueue.scala 276:27]
  wire  _GEN_5245 = storeInFireReg ? _GEN_5181 : _GEN_1809; // @[StoreQueue.scala 276:27]
  wire  _GEN_5246 = storeInFireReg ? _GEN_5182 : _GEN_1810; // @[StoreQueue.scala 276:27]
  wire  _GEN_5247 = storeInFireReg ? _GEN_5183 : _GEN_1811; // @[StoreQueue.scala 276:27]
  wire  _GEN_5248 = storeInFireReg ? _GEN_5184 : mmio_0; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5249 = storeInFireReg ? _GEN_5185 : mmio_1; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5250 = storeInFireReg ? _GEN_5186 : mmio_2; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5251 = storeInFireReg ? _GEN_5187 : mmio_3; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5252 = storeInFireReg ? _GEN_5188 : mmio_4; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5253 = storeInFireReg ? _GEN_5189 : mmio_5; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5254 = storeInFireReg ? _GEN_5190 : mmio_6; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5255 = storeInFireReg ? _GEN_5191 : mmio_7; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5256 = storeInFireReg ? _GEN_5192 : mmio_8; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5257 = storeInFireReg ? _GEN_5193 : mmio_9; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5258 = storeInFireReg ? _GEN_5194 : mmio_10; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5259 = storeInFireReg ? _GEN_5195 : mmio_11; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5260 = storeInFireReg ? _GEN_5196 : mmio_12; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5261 = storeInFireReg ? _GEN_5197 : mmio_13; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5262 = storeInFireReg ? _GEN_5198 : mmio_14; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5263 = storeInFireReg ? _GEN_5199 : mmio_15; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5264 = storeInFireReg ? _GEN_5200 : mmio_16; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5265 = storeInFireReg ? _GEN_5201 : mmio_17; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5266 = storeInFireReg ? _GEN_5202 : mmio_18; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5267 = storeInFireReg ? _GEN_5203 : mmio_19; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5268 = storeInFireReg ? _GEN_5204 : mmio_20; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5269 = storeInFireReg ? _GEN_5205 : mmio_21; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5270 = storeInFireReg ? _GEN_5206 : mmio_22; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5271 = storeInFireReg ? _GEN_5207 : mmio_23; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5272 = storeInFireReg ? _GEN_5208 : mmio_24; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5273 = storeInFireReg ? _GEN_5209 : mmio_25; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5274 = storeInFireReg ? _GEN_5210 : mmio_26; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5275 = storeInFireReg ? _GEN_5211 : mmio_27; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5276 = storeInFireReg ? _GEN_5212 : mmio_28; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5277 = storeInFireReg ? _GEN_5213 : mmio_29; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5278 = storeInFireReg ? _GEN_5214 : mmio_30; // @[StoreQueue.scala 126:17 276:27]
  wire  _GEN_5279 = storeInFireReg ? _GEN_5215 : mmio_31; // @[StoreQueue.scala 126:17 276:27]
  wire  addr_valid_1 = ~io_storeIn_1_bits_miss; // @[StoreQueue.scala 239:24]
  reg  storeInFireReg_1; // @[StoreQueue.scala 274:33]
  reg [4:0] stWbIndexReg_1; // @[StoreQueue.scala 275:31]
  wire  _GEN_8294 = 5'h0 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5216; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8295 = 5'h1 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5217; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8296 = 5'h2 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5218; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8297 = 5'h3 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5219; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8298 = 5'h4 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5220; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8299 = 5'h5 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5221; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8300 = 5'h6 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5222; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8301 = 5'h7 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5223; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8302 = 5'h8 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5224; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8303 = 5'h9 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5225; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8304 = 5'ha == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5226; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8305 = 5'hb == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5227; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8306 = 5'hc == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5228; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8307 = 5'hd == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5229; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8308 = 5'he == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5230; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8309 = 5'hf == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5231; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8310 = 5'h10 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5232; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8311 = 5'h11 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5233; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8312 = 5'h12 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5234; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8313 = 5'h13 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5235; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8314 = 5'h14 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5236; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8315 = 5'h15 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5237; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8316 = 5'h16 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5238; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8317 = 5'h17 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5239; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8318 = 5'h18 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5240; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8319 = 5'h19 == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5241; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8320 = 5'h1a == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5242; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8321 = 5'h1b == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5243; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8322 = 5'h1c == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5244; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8323 = 5'h1d == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5245; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8324 = 5'h1e == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5246; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8325 = 5'h1f == stWbIndexReg_1 ? io_storeInRe_1_mmio : _GEN_5247; // @[StoreQueue.scala 277:{29,29}]
  wire  _GEN_8358 = storeInFireReg_1 ? _GEN_8294 : _GEN_5216; // @[StoreQueue.scala 276:27]
  wire  _GEN_8359 = storeInFireReg_1 ? _GEN_8295 : _GEN_5217; // @[StoreQueue.scala 276:27]
  wire  _GEN_8360 = storeInFireReg_1 ? _GEN_8296 : _GEN_5218; // @[StoreQueue.scala 276:27]
  wire  _GEN_8361 = storeInFireReg_1 ? _GEN_8297 : _GEN_5219; // @[StoreQueue.scala 276:27]
  wire  _GEN_8362 = storeInFireReg_1 ? _GEN_8298 : _GEN_5220; // @[StoreQueue.scala 276:27]
  wire  _GEN_8363 = storeInFireReg_1 ? _GEN_8299 : _GEN_5221; // @[StoreQueue.scala 276:27]
  wire  _GEN_8364 = storeInFireReg_1 ? _GEN_8300 : _GEN_5222; // @[StoreQueue.scala 276:27]
  wire  _GEN_8365 = storeInFireReg_1 ? _GEN_8301 : _GEN_5223; // @[StoreQueue.scala 276:27]
  wire  _GEN_8366 = storeInFireReg_1 ? _GEN_8302 : _GEN_5224; // @[StoreQueue.scala 276:27]
  wire  _GEN_8367 = storeInFireReg_1 ? _GEN_8303 : _GEN_5225; // @[StoreQueue.scala 276:27]
  wire  _GEN_8368 = storeInFireReg_1 ? _GEN_8304 : _GEN_5226; // @[StoreQueue.scala 276:27]
  wire  _GEN_8369 = storeInFireReg_1 ? _GEN_8305 : _GEN_5227; // @[StoreQueue.scala 276:27]
  wire  _GEN_8370 = storeInFireReg_1 ? _GEN_8306 : _GEN_5228; // @[StoreQueue.scala 276:27]
  wire  _GEN_8371 = storeInFireReg_1 ? _GEN_8307 : _GEN_5229; // @[StoreQueue.scala 276:27]
  wire  _GEN_8372 = storeInFireReg_1 ? _GEN_8308 : _GEN_5230; // @[StoreQueue.scala 276:27]
  wire  _GEN_8373 = storeInFireReg_1 ? _GEN_8309 : _GEN_5231; // @[StoreQueue.scala 276:27]
  wire  _GEN_8374 = storeInFireReg_1 ? _GEN_8310 : _GEN_5232; // @[StoreQueue.scala 276:27]
  wire  _GEN_8375 = storeInFireReg_1 ? _GEN_8311 : _GEN_5233; // @[StoreQueue.scala 276:27]
  wire  _GEN_8376 = storeInFireReg_1 ? _GEN_8312 : _GEN_5234; // @[StoreQueue.scala 276:27]
  wire  _GEN_8377 = storeInFireReg_1 ? _GEN_8313 : _GEN_5235; // @[StoreQueue.scala 276:27]
  wire  _GEN_8378 = storeInFireReg_1 ? _GEN_8314 : _GEN_5236; // @[StoreQueue.scala 276:27]
  wire  _GEN_8379 = storeInFireReg_1 ? _GEN_8315 : _GEN_5237; // @[StoreQueue.scala 276:27]
  wire  _GEN_8380 = storeInFireReg_1 ? _GEN_8316 : _GEN_5238; // @[StoreQueue.scala 276:27]
  wire  _GEN_8381 = storeInFireReg_1 ? _GEN_8317 : _GEN_5239; // @[StoreQueue.scala 276:27]
  wire  _GEN_8382 = storeInFireReg_1 ? _GEN_8318 : _GEN_5240; // @[StoreQueue.scala 276:27]
  wire  _GEN_8383 = storeInFireReg_1 ? _GEN_8319 : _GEN_5241; // @[StoreQueue.scala 276:27]
  wire  _GEN_8384 = storeInFireReg_1 ? _GEN_8320 : _GEN_5242; // @[StoreQueue.scala 276:27]
  wire  _GEN_8385 = storeInFireReg_1 ? _GEN_8321 : _GEN_5243; // @[StoreQueue.scala 276:27]
  wire  _GEN_8386 = storeInFireReg_1 ? _GEN_8322 : _GEN_5244; // @[StoreQueue.scala 276:27]
  wire  _GEN_8387 = storeInFireReg_1 ? _GEN_8323 : _GEN_5245; // @[StoreQueue.scala 276:27]
  wire  _GEN_8388 = storeInFireReg_1 ? _GEN_8324 : _GEN_5246; // @[StoreQueue.scala 276:27]
  wire  _GEN_8389 = storeInFireReg_1 ? _GEN_8325 : _GEN_5247; // @[StoreQueue.scala 276:27]
  wire  _GEN_8486 = 5'h0 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1684; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8487 = 5'h1 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1685; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8488 = 5'h2 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1686; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8489 = 5'h3 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1687; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8490 = 5'h4 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1688; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8491 = 5'h5 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1689; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8492 = 5'h6 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1690; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8493 = 5'h7 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1691; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8494 = 5'h8 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1692; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8495 = 5'h9 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1693; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8496 = 5'ha == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1694; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8497 = 5'hb == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1695; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8498 = 5'hc == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1696; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8499 = 5'hd == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1697; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8500 = 5'he == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1698; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8501 = 5'hf == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1699; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8502 = 5'h10 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1700; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8503 = 5'h11 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1701; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8504 = 5'h12 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1702; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8505 = 5'h13 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1703; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8506 = 5'h14 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1704; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8507 = 5'h15 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1705; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8508 = 5'h16 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1706; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8509 = 5'h17 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1707; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8510 = 5'h18 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1708; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8511 = 5'h19 == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1709; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8512 = 5'h1a == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1710; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8513 = 5'h1b == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1711; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8514 = 5'h1c == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1712; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8515 = 5'h1d == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1713; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8516 = 5'h1e == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1714; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8517 = 5'h1f == io_storeDataIn_0_bits_uop_sqIdx_value | _GEN_1715; // @[StoreQueue.scala 291:{28,28}]
  wire [63:0] _dataModule_io_data_wdata_0_T_5 = {io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _dataModule_io_data_wdata_0_T_8 = {io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0],
    io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _dataModule_io_data_wdata_0_T_10 = {io_storeDataIn_0_bits_data[31:0],io_storeDataIn_0_bits_data[31:0]}; // @[Cat.scala 31:58]
  wire  _dataModule_io_data_wdata_0_T_11 = 2'h0 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_0_T_12 = 2'h1 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_0_T_13 = 2'h2 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_0_T_14 = 2'h3 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire [63:0] _dataModule_io_data_wdata_0_T_15 = _dataModule_io_data_wdata_0_T_11 ? _dataModule_io_data_wdata_0_T_5 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_16 = _dataModule_io_data_wdata_0_T_12 ? _dataModule_io_data_wdata_0_T_8 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_17 = _dataModule_io_data_wdata_0_T_13 ? _dataModule_io_data_wdata_0_T_10 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_18 = _dataModule_io_data_wdata_0_T_14 ? io_storeDataIn_0_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_19 = _dataModule_io_data_wdata_0_T_15 | _dataModule_io_data_wdata_0_T_16; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_20 = _dataModule_io_data_wdata_0_T_19 | _dataModule_io_data_wdata_0_T_17; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_0_T_21 = _dataModule_io_data_wdata_0_T_20 | _dataModule_io_data_wdata_0_T_18; // @[Mux.scala 27:73]
  wire  _GEN_8550 = io_storeDataIn_0_valid ? _GEN_8486 : _GEN_1684; // @[StoreQueue.scala 290:37]
  wire  _GEN_8551 = io_storeDataIn_0_valid ? _GEN_8487 : _GEN_1685; // @[StoreQueue.scala 290:37]
  wire  _GEN_8552 = io_storeDataIn_0_valid ? _GEN_8488 : _GEN_1686; // @[StoreQueue.scala 290:37]
  wire  _GEN_8553 = io_storeDataIn_0_valid ? _GEN_8489 : _GEN_1687; // @[StoreQueue.scala 290:37]
  wire  _GEN_8554 = io_storeDataIn_0_valid ? _GEN_8490 : _GEN_1688; // @[StoreQueue.scala 290:37]
  wire  _GEN_8555 = io_storeDataIn_0_valid ? _GEN_8491 : _GEN_1689; // @[StoreQueue.scala 290:37]
  wire  _GEN_8556 = io_storeDataIn_0_valid ? _GEN_8492 : _GEN_1690; // @[StoreQueue.scala 290:37]
  wire  _GEN_8557 = io_storeDataIn_0_valid ? _GEN_8493 : _GEN_1691; // @[StoreQueue.scala 290:37]
  wire  _GEN_8558 = io_storeDataIn_0_valid ? _GEN_8494 : _GEN_1692; // @[StoreQueue.scala 290:37]
  wire  _GEN_8559 = io_storeDataIn_0_valid ? _GEN_8495 : _GEN_1693; // @[StoreQueue.scala 290:37]
  wire  _GEN_8560 = io_storeDataIn_0_valid ? _GEN_8496 : _GEN_1694; // @[StoreQueue.scala 290:37]
  wire  _GEN_8561 = io_storeDataIn_0_valid ? _GEN_8497 : _GEN_1695; // @[StoreQueue.scala 290:37]
  wire  _GEN_8562 = io_storeDataIn_0_valid ? _GEN_8498 : _GEN_1696; // @[StoreQueue.scala 290:37]
  wire  _GEN_8563 = io_storeDataIn_0_valid ? _GEN_8499 : _GEN_1697; // @[StoreQueue.scala 290:37]
  wire  _GEN_8564 = io_storeDataIn_0_valid ? _GEN_8500 : _GEN_1698; // @[StoreQueue.scala 290:37]
  wire  _GEN_8565 = io_storeDataIn_0_valid ? _GEN_8501 : _GEN_1699; // @[StoreQueue.scala 290:37]
  wire  _GEN_8566 = io_storeDataIn_0_valid ? _GEN_8502 : _GEN_1700; // @[StoreQueue.scala 290:37]
  wire  _GEN_8567 = io_storeDataIn_0_valid ? _GEN_8503 : _GEN_1701; // @[StoreQueue.scala 290:37]
  wire  _GEN_8568 = io_storeDataIn_0_valid ? _GEN_8504 : _GEN_1702; // @[StoreQueue.scala 290:37]
  wire  _GEN_8569 = io_storeDataIn_0_valid ? _GEN_8505 : _GEN_1703; // @[StoreQueue.scala 290:37]
  wire  _GEN_8570 = io_storeDataIn_0_valid ? _GEN_8506 : _GEN_1704; // @[StoreQueue.scala 290:37]
  wire  _GEN_8571 = io_storeDataIn_0_valid ? _GEN_8507 : _GEN_1705; // @[StoreQueue.scala 290:37]
  wire  _GEN_8572 = io_storeDataIn_0_valid ? _GEN_8508 : _GEN_1706; // @[StoreQueue.scala 290:37]
  wire  _GEN_8573 = io_storeDataIn_0_valid ? _GEN_8509 : _GEN_1707; // @[StoreQueue.scala 290:37]
  wire  _GEN_8574 = io_storeDataIn_0_valid ? _GEN_8510 : _GEN_1708; // @[StoreQueue.scala 290:37]
  wire  _GEN_8575 = io_storeDataIn_0_valid ? _GEN_8511 : _GEN_1709; // @[StoreQueue.scala 290:37]
  wire  _GEN_8576 = io_storeDataIn_0_valid ? _GEN_8512 : _GEN_1710; // @[StoreQueue.scala 290:37]
  wire  _GEN_8577 = io_storeDataIn_0_valid ? _GEN_8513 : _GEN_1711; // @[StoreQueue.scala 290:37]
  wire  _GEN_8578 = io_storeDataIn_0_valid ? _GEN_8514 : _GEN_1712; // @[StoreQueue.scala 290:37]
  wire  _GEN_8579 = io_storeDataIn_0_valid ? _GEN_8515 : _GEN_1713; // @[StoreQueue.scala 290:37]
  wire  _GEN_8580 = io_storeDataIn_0_valid ? _GEN_8516 : _GEN_1714; // @[StoreQueue.scala 290:37]
  wire  _GEN_8581 = io_storeDataIn_0_valid ? _GEN_8517 : _GEN_1715; // @[StoreQueue.scala 290:37]
  wire  _GEN_8617 = 5'h0 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8550; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8618 = 5'h1 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8551; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8619 = 5'h2 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8552; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8620 = 5'h3 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8553; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8621 = 5'h4 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8554; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8622 = 5'h5 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8555; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8623 = 5'h6 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8556; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8624 = 5'h7 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8557; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8625 = 5'h8 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8558; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8626 = 5'h9 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8559; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8627 = 5'ha == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8560; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8628 = 5'hb == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8561; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8629 = 5'hc == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8562; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8630 = 5'hd == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8563; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8631 = 5'he == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8564; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8632 = 5'hf == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8565; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8633 = 5'h10 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8566; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8634 = 5'h11 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8567; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8635 = 5'h12 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8568; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8636 = 5'h13 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8569; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8637 = 5'h14 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8570; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8638 = 5'h15 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8571; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8639 = 5'h16 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8572; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8640 = 5'h17 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8573; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8641 = 5'h18 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8574; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8642 = 5'h19 == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8575; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8643 = 5'h1a == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8576; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8644 = 5'h1b == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8577; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8645 = 5'h1c == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8578; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8646 = 5'h1d == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8579; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8647 = 5'h1e == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8580; // @[StoreQueue.scala 291:{28,28}]
  wire  _GEN_8648 = 5'h1f == io_storeDataIn_1_bits_uop_sqIdx_value | _GEN_8581; // @[StoreQueue.scala 291:{28,28}]
  wire [63:0] _dataModule_io_data_wdata_1_T_5 = {io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] _dataModule_io_data_wdata_1_T_8 = {io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0],
    io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _dataModule_io_data_wdata_1_T_10 = {io_storeDataIn_1_bits_data[31:0],io_storeDataIn_1_bits_data[31:0]}; // @[Cat.scala 31:58]
  wire  _dataModule_io_data_wdata_1_T_11 = 2'h0 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_1_T_12 = 2'h1 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_1_T_13 = 2'h2 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire  _dataModule_io_data_wdata_1_T_14 = 2'h3 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 25:34]
  wire [63:0] _dataModule_io_data_wdata_1_T_15 = _dataModule_io_data_wdata_1_T_11 ? _dataModule_io_data_wdata_1_T_5 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_16 = _dataModule_io_data_wdata_1_T_12 ? _dataModule_io_data_wdata_1_T_8 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_17 = _dataModule_io_data_wdata_1_T_13 ? _dataModule_io_data_wdata_1_T_10 : 64'h0
    ; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_18 = _dataModule_io_data_wdata_1_T_14 ? io_storeDataIn_1_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_19 = _dataModule_io_data_wdata_1_T_15 | _dataModule_io_data_wdata_1_T_16; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_20 = _dataModule_io_data_wdata_1_T_19 | _dataModule_io_data_wdata_1_T_17; // @[Mux.scala 27:73]
  wire [63:0] _dataModule_io_data_wdata_1_T_21 = _dataModule_io_data_wdata_1_T_20 | _dataModule_io_data_wdata_1_T_18; // @[Mux.scala 27:73]
  wire  differentFlag = deqPtrExt_0_flag != io_forward_0_sqIdx_flag; // @[StoreQueue.scala 325:43]
  wire  addrValidVec__0 = addrvalid_0 & allocated_0; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__1 = addrvalid_1 & allocated_1; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__2 = addrvalid_2 & allocated_2; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__3 = addrvalid_3 & allocated_3; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__4 = addrvalid_4 & allocated_4; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__5 = addrvalid_5 & allocated_5; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__6 = addrvalid_6 & allocated_6; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__7 = addrvalid_7 & allocated_7; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__8 = addrvalid_8 & allocated_8; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__9 = addrvalid_9 & allocated_9; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__10 = addrvalid_10 & allocated_10; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__11 = addrvalid_11 & allocated_11; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__12 = addrvalid_12 & allocated_12; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__13 = addrvalid_13 & allocated_13; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__14 = addrvalid_14 & allocated_14; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__15 = addrvalid_15 & allocated_15; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__16 = addrvalid_16 & allocated_16; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__17 = addrvalid_17 & allocated_17; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__18 = addrvalid_18 & allocated_18; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__19 = addrvalid_19 & allocated_19; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__20 = addrvalid_20 & allocated_20; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__21 = addrvalid_21 & allocated_21; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__22 = addrvalid_22 & allocated_22; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__23 = addrvalid_23 & allocated_23; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__24 = addrvalid_24 & allocated_24; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__25 = addrvalid_25 & allocated_25; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__26 = addrvalid_26 & allocated_26; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__27 = addrvalid_27 & allocated_27; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__28 = addrvalid_28 & allocated_28; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__29 = addrvalid_29 & allocated_29; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__30 = addrvalid_30 & allocated_30; // @[StoreQueue.scala 328:88]
  wire  addrValidVec__31 = addrvalid_31 & allocated_31; // @[StoreQueue.scala 328:88]
  wire  allValidVec__0 = allvalid_0 & allocated_0; // @[StoreQueue.scala 330:103]
  wire  allValidVec__1 = allvalid_1 & allocated_1; // @[StoreQueue.scala 330:103]
  wire  allValidVec__2 = allvalid_2 & allocated_2; // @[StoreQueue.scala 330:103]
  wire  allValidVec__3 = allvalid_3 & allocated_3; // @[StoreQueue.scala 330:103]
  wire  allValidVec__4 = allvalid_4 & allocated_4; // @[StoreQueue.scala 330:103]
  wire  allValidVec__5 = allvalid_5 & allocated_5; // @[StoreQueue.scala 330:103]
  wire  allValidVec__6 = allvalid_6 & allocated_6; // @[StoreQueue.scala 330:103]
  wire  allValidVec__7 = allvalid_7 & allocated_7; // @[StoreQueue.scala 330:103]
  wire  allValidVec__8 = allvalid_8 & allocated_8; // @[StoreQueue.scala 330:103]
  wire  allValidVec__9 = allvalid_9 & allocated_9; // @[StoreQueue.scala 330:103]
  wire  allValidVec__10 = allvalid_10 & allocated_10; // @[StoreQueue.scala 330:103]
  wire  allValidVec__11 = allvalid_11 & allocated_11; // @[StoreQueue.scala 330:103]
  wire  allValidVec__12 = allvalid_12 & allocated_12; // @[StoreQueue.scala 330:103]
  wire  allValidVec__13 = allvalid_13 & allocated_13; // @[StoreQueue.scala 330:103]
  wire  allValidVec__14 = allvalid_14 & allocated_14; // @[StoreQueue.scala 330:103]
  wire  allValidVec__15 = allvalid_15 & allocated_15; // @[StoreQueue.scala 330:103]
  wire  allValidVec__16 = allvalid_16 & allocated_16; // @[StoreQueue.scala 330:103]
  wire  allValidVec__17 = allvalid_17 & allocated_17; // @[StoreQueue.scala 330:103]
  wire  allValidVec__18 = allvalid_18 & allocated_18; // @[StoreQueue.scala 330:103]
  wire  allValidVec__19 = allvalid_19 & allocated_19; // @[StoreQueue.scala 330:103]
  wire  allValidVec__20 = allvalid_20 & allocated_20; // @[StoreQueue.scala 330:103]
  wire  allValidVec__21 = allvalid_21 & allocated_21; // @[StoreQueue.scala 330:103]
  wire  allValidVec__22 = allvalid_22 & allocated_22; // @[StoreQueue.scala 330:103]
  wire  allValidVec__23 = allvalid_23 & allocated_23; // @[StoreQueue.scala 330:103]
  wire  allValidVec__24 = allvalid_24 & allocated_24; // @[StoreQueue.scala 330:103]
  wire  allValidVec__25 = allvalid_25 & allocated_25; // @[StoreQueue.scala 330:103]
  wire  allValidVec__26 = allvalid_26 & allocated_26; // @[StoreQueue.scala 330:103]
  wire  allValidVec__27 = allvalid_27 & allocated_27; // @[StoreQueue.scala 330:103]
  wire  allValidVec__28 = allvalid_28 & allocated_28; // @[StoreQueue.scala 330:103]
  wire  allValidVec__29 = allvalid_29 & allocated_29; // @[StoreQueue.scala 330:103]
  wire  allValidVec__30 = allvalid_30 & allocated_30; // @[StoreQueue.scala 330:103]
  wire  allValidVec__31 = allvalid_31 & allocated_31; // @[StoreQueue.scala 330:103]
  wire [31:0] _canForward1_T = ~deqMask; // @[StoreQueue.scala 331:42]
  wire [31:0] _canForward1_T_1 = deqMask ^ io_forward_0_sqIdxMask; // @[StoreQueue.scala 331:60]
  wire [31:0] _canForward1_T_2 = differentFlag ? _canForward1_T : _canForward1_T_1; // @[StoreQueue.scala 331:26]
  wire [7:0] canForward1_lo_lo = {allValidVec__7,allValidVec__6,allValidVec__5,allValidVec__4,allValidVec__3,
    allValidVec__2,allValidVec__1,allValidVec__0}; // @[StoreQueue.scala 331:89]
  wire [15:0] canForward1_lo = {allValidVec__15,allValidVec__14,allValidVec__13,allValidVec__12,allValidVec__11,
    allValidVec__10,allValidVec__9,allValidVec__8,canForward1_lo_lo}; // @[StoreQueue.scala 331:89]
  wire [7:0] canForward1_hi_lo = {allValidVec__23,allValidVec__22,allValidVec__21,allValidVec__20,allValidVec__19,
    allValidVec__18,allValidVec__17,allValidVec__16}; // @[StoreQueue.scala 331:89]
  wire [31:0] _canForward1_T_3 = {allValidVec__31,allValidVec__30,allValidVec__29,allValidVec__28,allValidVec__27,
    allValidVec__26,allValidVec__25,allValidVec__24,canForward1_hi_lo,canForward1_lo}; // @[StoreQueue.scala 331:89]
  wire [31:0] canForward1 = _canForward1_T_2 & _canForward1_T_3; // @[StoreQueue.scala 331:75]
  wire [31:0] _canForward2_T = differentFlag ? io_forward_0_sqIdxMask : 32'h0; // @[StoreQueue.scala 332:26]
  wire [31:0] canForward2 = _canForward2_T & _canForward1_T_3; // @[StoreQueue.scala 332:78]
  wire [31:0] _needForward_T_1 = _canForward1_T | io_forward_0_sqIdxMask; // @[StoreQueue.scala 333:51]
  wire [31:0] needForward = differentFlag ? _needForward_T_1 : _canForward1_T_1; // @[StoreQueue.scala 333:26]
  wire [7:0] dataModule_io_needForward_0_0_lo_lo = {vaddrModule_io_forwardMmask_0_7,vaddrModule_io_forwardMmask_0_6,
    vaddrModule_io_forwardMmask_0_5,vaddrModule_io_forwardMmask_0_4,vaddrModule_io_forwardMmask_0_3,
    vaddrModule_io_forwardMmask_0_2,vaddrModule_io_forwardMmask_0_1,vaddrModule_io_forwardMmask_0_0}; // @[StoreQueue.scala 340:85]
  wire [15:0] dataModule_io_needForward_0_0_lo = {vaddrModule_io_forwardMmask_0_15,vaddrModule_io_forwardMmask_0_14,
    vaddrModule_io_forwardMmask_0_13,vaddrModule_io_forwardMmask_0_12,vaddrModule_io_forwardMmask_0_11,
    vaddrModule_io_forwardMmask_0_10,vaddrModule_io_forwardMmask_0_9,vaddrModule_io_forwardMmask_0_8,
    dataModule_io_needForward_0_0_lo_lo}; // @[StoreQueue.scala 340:85]
  wire [7:0] dataModule_io_needForward_0_0_hi_lo = {vaddrModule_io_forwardMmask_0_23,vaddrModule_io_forwardMmask_0_22,
    vaddrModule_io_forwardMmask_0_21,vaddrModule_io_forwardMmask_0_20,vaddrModule_io_forwardMmask_0_19,
    vaddrModule_io_forwardMmask_0_18,vaddrModule_io_forwardMmask_0_17,vaddrModule_io_forwardMmask_0_16}; // @[StoreQueue.scala 340:85]
  wire [15:0] dataModule_io_needForward_0_0_hi = {vaddrModule_io_forwardMmask_0_31,vaddrModule_io_forwardMmask_0_30,
    vaddrModule_io_forwardMmask_0_29,vaddrModule_io_forwardMmask_0_28,vaddrModule_io_forwardMmask_0_27,
    vaddrModule_io_forwardMmask_0_26,vaddrModule_io_forwardMmask_0_25,vaddrModule_io_forwardMmask_0_24,
    dataModule_io_needForward_0_0_hi_lo}; // @[StoreQueue.scala 340:85]
  wire [31:0] _dataModule_io_needForward_0_0_T = {vaddrModule_io_forwardMmask_0_31,vaddrModule_io_forwardMmask_0_30,
    vaddrModule_io_forwardMmask_0_29,vaddrModule_io_forwardMmask_0_28,vaddrModule_io_forwardMmask_0_27,
    vaddrModule_io_forwardMmask_0_26,vaddrModule_io_forwardMmask_0_25,vaddrModule_io_forwardMmask_0_24,
    dataModule_io_needForward_0_0_hi_lo,dataModule_io_needForward_0_0_lo}; // @[StoreQueue.scala 340:85]
  wire [7:0] vpmaskNotEqual_lo_lo = {paddrModule_io_forwardMmask_0_7,paddrModule_io_forwardMmask_0_6,
    paddrModule_io_forwardMmask_0_5,paddrModule_io_forwardMmask_0_4,paddrModule_io_forwardMmask_0_3,
    paddrModule_io_forwardMmask_0_2,paddrModule_io_forwardMmask_0_1,paddrModule_io_forwardMmask_0_0}; // @[StoreQueue.scala 351:47]
  wire [15:0] vpmaskNotEqual_lo = {paddrModule_io_forwardMmask_0_15,paddrModule_io_forwardMmask_0_14,
    paddrModule_io_forwardMmask_0_13,paddrModule_io_forwardMmask_0_12,paddrModule_io_forwardMmask_0_11,
    paddrModule_io_forwardMmask_0_10,paddrModule_io_forwardMmask_0_9,paddrModule_io_forwardMmask_0_8,
    vpmaskNotEqual_lo_lo}; // @[StoreQueue.scala 351:47]
  wire [7:0] vpmaskNotEqual_hi_lo = {paddrModule_io_forwardMmask_0_23,paddrModule_io_forwardMmask_0_22,
    paddrModule_io_forwardMmask_0_21,paddrModule_io_forwardMmask_0_20,paddrModule_io_forwardMmask_0_19,
    paddrModule_io_forwardMmask_0_18,paddrModule_io_forwardMmask_0_17,paddrModule_io_forwardMmask_0_16}; // @[StoreQueue.scala 351:47]
  wire [15:0] vpmaskNotEqual_hi = {paddrModule_io_forwardMmask_0_31,paddrModule_io_forwardMmask_0_30,
    paddrModule_io_forwardMmask_0_29,paddrModule_io_forwardMmask_0_28,paddrModule_io_forwardMmask_0_27,
    paddrModule_io_forwardMmask_0_26,paddrModule_io_forwardMmask_0_25,paddrModule_io_forwardMmask_0_24,
    vpmaskNotEqual_hi_lo}; // @[StoreQueue.scala 351:47]
  reg [31:0] vpmaskNotEqual_REG; // @[StoreQueue.scala 351:15]
  reg [31:0] vpmaskNotEqual_REG_1; // @[StoreQueue.scala 351:64]
  wire [31:0] _vpmaskNotEqual_T_2 = vpmaskNotEqual_REG ^ vpmaskNotEqual_REG_1; // @[StoreQueue.scala 351:55]
  reg [31:0] vpmaskNotEqual_REG_2; // @[StoreQueue.scala 352:14]
  wire [31:0] _vpmaskNotEqual_T_3 = _vpmaskNotEqual_T_2 & vpmaskNotEqual_REG_2; // @[StoreQueue.scala 351:105]
  wire [7:0] vpmaskNotEqual_lo_lo_2 = {addrValidVec__7,addrValidVec__6,addrValidVec__5,addrValidVec__4,addrValidVec__3,
    addrValidVec__2,addrValidVec__1,addrValidVec__0}; // @[StoreQueue.scala 353:28]
  wire [15:0] vpmaskNotEqual_lo_2 = {addrValidVec__15,addrValidVec__14,addrValidVec__13,addrValidVec__12,
    addrValidVec__11,addrValidVec__10,addrValidVec__9,addrValidVec__8,vpmaskNotEqual_lo_lo_2}; // @[StoreQueue.scala 353:28]
  wire [7:0] vpmaskNotEqual_hi_lo_2 = {addrValidVec__23,addrValidVec__22,addrValidVec__21,addrValidVec__20,
    addrValidVec__19,addrValidVec__18,addrValidVec__17,addrValidVec__16}; // @[StoreQueue.scala 353:28]
  wire [15:0] vpmaskNotEqual_hi_2 = {addrValidVec__31,addrValidVec__30,addrValidVec__29,addrValidVec__28,
    addrValidVec__27,addrValidVec__26,addrValidVec__25,addrValidVec__24,vpmaskNotEqual_hi_lo_2}; // @[StoreQueue.scala 353:28]
  wire [31:0] _vpmaskNotEqual_T_4 = {addrValidVec__31,addrValidVec__30,addrValidVec__29,addrValidVec__28,
    addrValidVec__27,addrValidVec__26,addrValidVec__25,addrValidVec__24,vpmaskNotEqual_hi_lo_2,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 353:28]
  reg [31:0] vpmaskNotEqual_REG_3; // @[StoreQueue.scala 353:14]
  wire [31:0] _vpmaskNotEqual_T_5 = _vpmaskNotEqual_T_3 & vpmaskNotEqual_REG_3; // @[StoreQueue.scala 352:28]
  wire  vpmaskNotEqual = _vpmaskNotEqual_T_5 != 32'h0; // @[StoreQueue.scala 354:7]
  reg  vaddrMatchFailed_REG; // @[StoreQueue.scala 355:53]
  wire [7:0] io_forward_0_dataInvalidFast_lo_lo_1 = {datavalid_7,datavalid_6,datavalid_5,datavalid_4,datavalid_3,
    datavalid_2,datavalid_1,datavalid_0}; // @[StoreQueue.scala 375:75]
  wire [15:0] io_forward_0_dataInvalidFast_lo_1 = {datavalid_15,datavalid_14,datavalid_13,datavalid_12,datavalid_11,
    datavalid_10,datavalid_9,datavalid_8,io_forward_0_dataInvalidFast_lo_lo_1}; // @[StoreQueue.scala 375:75]
  wire [7:0] io_forward_0_dataInvalidFast_hi_lo_1 = {datavalid_23,datavalid_22,datavalid_21,datavalid_20,datavalid_19,
    datavalid_18,datavalid_17,datavalid_16}; // @[StoreQueue.scala 375:75]
  wire [31:0] _io_forward_0_dataInvalidFast_T_1 = {datavalid_31,datavalid_30,datavalid_29,datavalid_28,datavalid_27,
    datavalid_26,datavalid_25,datavalid_24,io_forward_0_dataInvalidFast_hi_lo_1,io_forward_0_dataInvalidFast_lo_1}; // @[StoreQueue.scala 375:75]
  wire [31:0] _io_forward_0_dataInvalidFast_T_2 = ~_io_forward_0_dataInvalidFast_T_1; // @[StoreQueue.scala 375:61]
  wire [31:0] _io_forward_0_dataInvalidFast_T_3 = _vpmaskNotEqual_T_4 & _io_forward_0_dataInvalidFast_T_2; // @[StoreQueue.scala 375:59]
  wire [31:0] _io_forward_0_dataInvalidFast_T_5 = _io_forward_0_dataInvalidFast_T_3 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 375:82]
  wire [31:0] _io_forward_0_dataInvalidFast_T_6 = _io_forward_0_dataInvalidFast_T_5 & needForward; // @[StoreQueue.scala 375:122]
  wire [4:0] _dataInvalidSqIdxReg_T_39 = _io_forward_0_dataInvalidFast_T_6[30] ? 5'h1e : 5'h1f; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_40 = _io_forward_0_dataInvalidFast_T_6[29] ? 5'h1d : _dataInvalidSqIdxReg_T_39; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_41 = _io_forward_0_dataInvalidFast_T_6[28] ? 5'h1c : _dataInvalidSqIdxReg_T_40; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_42 = _io_forward_0_dataInvalidFast_T_6[27] ? 5'h1b : _dataInvalidSqIdxReg_T_41; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_43 = _io_forward_0_dataInvalidFast_T_6[26] ? 5'h1a : _dataInvalidSqIdxReg_T_42; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_44 = _io_forward_0_dataInvalidFast_T_6[25] ? 5'h19 : _dataInvalidSqIdxReg_T_43; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_45 = _io_forward_0_dataInvalidFast_T_6[24] ? 5'h18 : _dataInvalidSqIdxReg_T_44; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_46 = _io_forward_0_dataInvalidFast_T_6[23] ? 5'h17 : _dataInvalidSqIdxReg_T_45; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_47 = _io_forward_0_dataInvalidFast_T_6[22] ? 5'h16 : _dataInvalidSqIdxReg_T_46; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_48 = _io_forward_0_dataInvalidFast_T_6[21] ? 5'h15 : _dataInvalidSqIdxReg_T_47; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_49 = _io_forward_0_dataInvalidFast_T_6[20] ? 5'h14 : _dataInvalidSqIdxReg_T_48; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_50 = _io_forward_0_dataInvalidFast_T_6[19] ? 5'h13 : _dataInvalidSqIdxReg_T_49; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_51 = _io_forward_0_dataInvalidFast_T_6[18] ? 5'h12 : _dataInvalidSqIdxReg_T_50; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_52 = _io_forward_0_dataInvalidFast_T_6[17] ? 5'h11 : _dataInvalidSqIdxReg_T_51; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_53 = _io_forward_0_dataInvalidFast_T_6[16] ? 5'h10 : _dataInvalidSqIdxReg_T_52; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_54 = _io_forward_0_dataInvalidFast_T_6[15] ? 5'hf : _dataInvalidSqIdxReg_T_53; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_55 = _io_forward_0_dataInvalidFast_T_6[14] ? 5'he : _dataInvalidSqIdxReg_T_54; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_56 = _io_forward_0_dataInvalidFast_T_6[13] ? 5'hd : _dataInvalidSqIdxReg_T_55; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_57 = _io_forward_0_dataInvalidFast_T_6[12] ? 5'hc : _dataInvalidSqIdxReg_T_56; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_58 = _io_forward_0_dataInvalidFast_T_6[11] ? 5'hb : _dataInvalidSqIdxReg_T_57; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_59 = _io_forward_0_dataInvalidFast_T_6[10] ? 5'ha : _dataInvalidSqIdxReg_T_58; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_60 = _io_forward_0_dataInvalidFast_T_6[9] ? 5'h9 : _dataInvalidSqIdxReg_T_59; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_61 = _io_forward_0_dataInvalidFast_T_6[8] ? 5'h8 : _dataInvalidSqIdxReg_T_60; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_62 = _io_forward_0_dataInvalidFast_T_6[7] ? 5'h7 : _dataInvalidSqIdxReg_T_61; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_63 = _io_forward_0_dataInvalidFast_T_6[6] ? 5'h6 : _dataInvalidSqIdxReg_T_62; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_64 = _io_forward_0_dataInvalidFast_T_6[5] ? 5'h5 : _dataInvalidSqIdxReg_T_63; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_65 = _io_forward_0_dataInvalidFast_T_6[4] ? 5'h4 : _dataInvalidSqIdxReg_T_64; // @[Mux.scala 47:70]
  reg [4:0] dataInvalidSqIdxReg; // @[StoreQueue.scala 376:38]
  reg  io_forward_0_dataInvalid_REG; // @[StoreQueue.scala 378:41]
  wire  differentFlag_1 = deqPtrExt_0_flag != io_forward_1_sqIdx_flag; // @[StoreQueue.scala 325:43]
  wire [31:0] _canForward1_T_5 = deqMask ^ io_forward_1_sqIdxMask; // @[StoreQueue.scala 331:60]
  wire [31:0] _canForward1_T_6 = differentFlag_1 ? _canForward1_T : _canForward1_T_5; // @[StoreQueue.scala 331:26]
  wire [31:0] canForward1_1 = _canForward1_T_6 & _canForward1_T_3; // @[StoreQueue.scala 331:75]
  wire [31:0] _canForward2_T_2 = differentFlag_1 ? io_forward_1_sqIdxMask : 32'h0; // @[StoreQueue.scala 332:26]
  wire [31:0] canForward2_1 = _canForward2_T_2 & _canForward1_T_3; // @[StoreQueue.scala 332:78]
  wire [31:0] _needForward_T_4 = _canForward1_T | io_forward_1_sqIdxMask; // @[StoreQueue.scala 333:51]
  wire [31:0] needForward_1 = differentFlag_1 ? _needForward_T_4 : _canForward1_T_5; // @[StoreQueue.scala 333:26]
  wire [7:0] dataModule_io_needForward_1_0_lo_lo = {vaddrModule_io_forwardMmask_1_7,vaddrModule_io_forwardMmask_1_6,
    vaddrModule_io_forwardMmask_1_5,vaddrModule_io_forwardMmask_1_4,vaddrModule_io_forwardMmask_1_3,
    vaddrModule_io_forwardMmask_1_2,vaddrModule_io_forwardMmask_1_1,vaddrModule_io_forwardMmask_1_0}; // @[StoreQueue.scala 340:85]
  wire [15:0] dataModule_io_needForward_1_0_lo = {vaddrModule_io_forwardMmask_1_15,vaddrModule_io_forwardMmask_1_14,
    vaddrModule_io_forwardMmask_1_13,vaddrModule_io_forwardMmask_1_12,vaddrModule_io_forwardMmask_1_11,
    vaddrModule_io_forwardMmask_1_10,vaddrModule_io_forwardMmask_1_9,vaddrModule_io_forwardMmask_1_8,
    dataModule_io_needForward_1_0_lo_lo}; // @[StoreQueue.scala 340:85]
  wire [7:0] dataModule_io_needForward_1_0_hi_lo = {vaddrModule_io_forwardMmask_1_23,vaddrModule_io_forwardMmask_1_22,
    vaddrModule_io_forwardMmask_1_21,vaddrModule_io_forwardMmask_1_20,vaddrModule_io_forwardMmask_1_19,
    vaddrModule_io_forwardMmask_1_18,vaddrModule_io_forwardMmask_1_17,vaddrModule_io_forwardMmask_1_16}; // @[StoreQueue.scala 340:85]
  wire [15:0] dataModule_io_needForward_1_0_hi = {vaddrModule_io_forwardMmask_1_31,vaddrModule_io_forwardMmask_1_30,
    vaddrModule_io_forwardMmask_1_29,vaddrModule_io_forwardMmask_1_28,vaddrModule_io_forwardMmask_1_27,
    vaddrModule_io_forwardMmask_1_26,vaddrModule_io_forwardMmask_1_25,vaddrModule_io_forwardMmask_1_24,
    dataModule_io_needForward_1_0_hi_lo}; // @[StoreQueue.scala 340:85]
  wire [31:0] _dataModule_io_needForward_1_0_T = {vaddrModule_io_forwardMmask_1_31,vaddrModule_io_forwardMmask_1_30,
    vaddrModule_io_forwardMmask_1_29,vaddrModule_io_forwardMmask_1_28,vaddrModule_io_forwardMmask_1_27,
    vaddrModule_io_forwardMmask_1_26,vaddrModule_io_forwardMmask_1_25,vaddrModule_io_forwardMmask_1_24,
    dataModule_io_needForward_1_0_hi_lo,dataModule_io_needForward_1_0_lo}; // @[StoreQueue.scala 340:85]
  wire [7:0] vpmaskNotEqual_lo_lo_3 = {paddrModule_io_forwardMmask_1_7,paddrModule_io_forwardMmask_1_6,
    paddrModule_io_forwardMmask_1_5,paddrModule_io_forwardMmask_1_4,paddrModule_io_forwardMmask_1_3,
    paddrModule_io_forwardMmask_1_2,paddrModule_io_forwardMmask_1_1,paddrModule_io_forwardMmask_1_0}; // @[StoreQueue.scala 351:47]
  wire [15:0] vpmaskNotEqual_lo_3 = {paddrModule_io_forwardMmask_1_15,paddrModule_io_forwardMmask_1_14,
    paddrModule_io_forwardMmask_1_13,paddrModule_io_forwardMmask_1_12,paddrModule_io_forwardMmask_1_11,
    paddrModule_io_forwardMmask_1_10,paddrModule_io_forwardMmask_1_9,paddrModule_io_forwardMmask_1_8,
    vpmaskNotEqual_lo_lo_3}; // @[StoreQueue.scala 351:47]
  wire [7:0] vpmaskNotEqual_hi_lo_3 = {paddrModule_io_forwardMmask_1_23,paddrModule_io_forwardMmask_1_22,
    paddrModule_io_forwardMmask_1_21,paddrModule_io_forwardMmask_1_20,paddrModule_io_forwardMmask_1_19,
    paddrModule_io_forwardMmask_1_18,paddrModule_io_forwardMmask_1_17,paddrModule_io_forwardMmask_1_16}; // @[StoreQueue.scala 351:47]
  wire [15:0] vpmaskNotEqual_hi_3 = {paddrModule_io_forwardMmask_1_31,paddrModule_io_forwardMmask_1_30,
    paddrModule_io_forwardMmask_1_29,paddrModule_io_forwardMmask_1_28,paddrModule_io_forwardMmask_1_27,
    paddrModule_io_forwardMmask_1_26,paddrModule_io_forwardMmask_1_25,paddrModule_io_forwardMmask_1_24,
    vpmaskNotEqual_hi_lo_3}; // @[StoreQueue.scala 351:47]
  reg [31:0] vpmaskNotEqual_REG_4; // @[StoreQueue.scala 351:15]
  reg [31:0] vpmaskNotEqual_REG_5; // @[StoreQueue.scala 351:64]
  wire [31:0] _vpmaskNotEqual_T_8 = vpmaskNotEqual_REG_4 ^ vpmaskNotEqual_REG_5; // @[StoreQueue.scala 351:55]
  reg [31:0] vpmaskNotEqual_REG_6; // @[StoreQueue.scala 352:14]
  wire [31:0] _vpmaskNotEqual_T_9 = _vpmaskNotEqual_T_8 & vpmaskNotEqual_REG_6; // @[StoreQueue.scala 351:105]
  reg [31:0] vpmaskNotEqual_REG_7; // @[StoreQueue.scala 353:14]
  wire [31:0] _vpmaskNotEqual_T_11 = _vpmaskNotEqual_T_9 & vpmaskNotEqual_REG_7; // @[StoreQueue.scala 352:28]
  wire  vpmaskNotEqual_1 = _vpmaskNotEqual_T_11 != 32'h0; // @[StoreQueue.scala 354:7]
  reg  vaddrMatchFailed_REG_1; // @[StoreQueue.scala 355:53]
  wire [31:0] _io_forward_1_dataInvalidFast_T_5 = _io_forward_0_dataInvalidFast_T_3 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 375:82]
  wire [31:0] _io_forward_1_dataInvalidFast_T_6 = _io_forward_1_dataInvalidFast_T_5 & needForward_1; // @[StoreQueue.scala 375:122]
  wire [4:0] _dataInvalidSqIdxReg_T_109 = _io_forward_1_dataInvalidFast_T_6[30] ? 5'h1e : 5'h1f; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_110 = _io_forward_1_dataInvalidFast_T_6[29] ? 5'h1d : _dataInvalidSqIdxReg_T_109; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_111 = _io_forward_1_dataInvalidFast_T_6[28] ? 5'h1c : _dataInvalidSqIdxReg_T_110; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_112 = _io_forward_1_dataInvalidFast_T_6[27] ? 5'h1b : _dataInvalidSqIdxReg_T_111; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_113 = _io_forward_1_dataInvalidFast_T_6[26] ? 5'h1a : _dataInvalidSqIdxReg_T_112; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_114 = _io_forward_1_dataInvalidFast_T_6[25] ? 5'h19 : _dataInvalidSqIdxReg_T_113; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_115 = _io_forward_1_dataInvalidFast_T_6[24] ? 5'h18 : _dataInvalidSqIdxReg_T_114; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_116 = _io_forward_1_dataInvalidFast_T_6[23] ? 5'h17 : _dataInvalidSqIdxReg_T_115; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_117 = _io_forward_1_dataInvalidFast_T_6[22] ? 5'h16 : _dataInvalidSqIdxReg_T_116; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_118 = _io_forward_1_dataInvalidFast_T_6[21] ? 5'h15 : _dataInvalidSqIdxReg_T_117; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_119 = _io_forward_1_dataInvalidFast_T_6[20] ? 5'h14 : _dataInvalidSqIdxReg_T_118; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_120 = _io_forward_1_dataInvalidFast_T_6[19] ? 5'h13 : _dataInvalidSqIdxReg_T_119; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_121 = _io_forward_1_dataInvalidFast_T_6[18] ? 5'h12 : _dataInvalidSqIdxReg_T_120; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_122 = _io_forward_1_dataInvalidFast_T_6[17] ? 5'h11 : _dataInvalidSqIdxReg_T_121; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_123 = _io_forward_1_dataInvalidFast_T_6[16] ? 5'h10 : _dataInvalidSqIdxReg_T_122; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_124 = _io_forward_1_dataInvalidFast_T_6[15] ? 5'hf : _dataInvalidSqIdxReg_T_123; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_125 = _io_forward_1_dataInvalidFast_T_6[14] ? 5'he : _dataInvalidSqIdxReg_T_124; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_126 = _io_forward_1_dataInvalidFast_T_6[13] ? 5'hd : _dataInvalidSqIdxReg_T_125; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_127 = _io_forward_1_dataInvalidFast_T_6[12] ? 5'hc : _dataInvalidSqIdxReg_T_126; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_128 = _io_forward_1_dataInvalidFast_T_6[11] ? 5'hb : _dataInvalidSqIdxReg_T_127; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_129 = _io_forward_1_dataInvalidFast_T_6[10] ? 5'ha : _dataInvalidSqIdxReg_T_128; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_130 = _io_forward_1_dataInvalidFast_T_6[9] ? 5'h9 : _dataInvalidSqIdxReg_T_129; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_131 = _io_forward_1_dataInvalidFast_T_6[8] ? 5'h8 : _dataInvalidSqIdxReg_T_130; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_132 = _io_forward_1_dataInvalidFast_T_6[7] ? 5'h7 : _dataInvalidSqIdxReg_T_131; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_133 = _io_forward_1_dataInvalidFast_T_6[6] ? 5'h6 : _dataInvalidSqIdxReg_T_132; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_134 = _io_forward_1_dataInvalidFast_T_6[5] ? 5'h5 : _dataInvalidSqIdxReg_T_133; // @[Mux.scala 47:70]
  wire [4:0] _dataInvalidSqIdxReg_T_135 = _io_forward_1_dataInvalidFast_T_6[4] ? 5'h4 : _dataInvalidSqIdxReg_T_134; // @[Mux.scala 47:70]
  reg [4:0] dataInvalidSqIdxReg_1; // @[StoreQueue.scala 376:38]
  reg  io_forward_1_dataInvalid_REG; // @[StoreQueue.scala 378:41]
  reg [2:0] uncacheState; // @[StoreQueue.scala 398:29]
  wire  _GEN_8749 = 5'h1 == deqPtrExt_0_value ? pending_1 : pending_0; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8750 = 5'h2 == deqPtrExt_0_value ? pending_2 : _GEN_8749; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8751 = 5'h3 == deqPtrExt_0_value ? pending_3 : _GEN_8750; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8752 = 5'h4 == deqPtrExt_0_value ? pending_4 : _GEN_8751; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8753 = 5'h5 == deqPtrExt_0_value ? pending_5 : _GEN_8752; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8754 = 5'h6 == deqPtrExt_0_value ? pending_6 : _GEN_8753; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8755 = 5'h7 == deqPtrExt_0_value ? pending_7 : _GEN_8754; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8756 = 5'h8 == deqPtrExt_0_value ? pending_8 : _GEN_8755; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8757 = 5'h9 == deqPtrExt_0_value ? pending_9 : _GEN_8756; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8758 = 5'ha == deqPtrExt_0_value ? pending_10 : _GEN_8757; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8759 = 5'hb == deqPtrExt_0_value ? pending_11 : _GEN_8758; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8760 = 5'hc == deqPtrExt_0_value ? pending_12 : _GEN_8759; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8761 = 5'hd == deqPtrExt_0_value ? pending_13 : _GEN_8760; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8762 = 5'he == deqPtrExt_0_value ? pending_14 : _GEN_8761; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8763 = 5'hf == deqPtrExt_0_value ? pending_15 : _GEN_8762; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8764 = 5'h10 == deqPtrExt_0_value ? pending_16 : _GEN_8763; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8765 = 5'h11 == deqPtrExt_0_value ? pending_17 : _GEN_8764; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8766 = 5'h12 == deqPtrExt_0_value ? pending_18 : _GEN_8765; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8767 = 5'h13 == deqPtrExt_0_value ? pending_19 : _GEN_8766; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8768 = 5'h14 == deqPtrExt_0_value ? pending_20 : _GEN_8767; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8769 = 5'h15 == deqPtrExt_0_value ? pending_21 : _GEN_8768; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8770 = 5'h16 == deqPtrExt_0_value ? pending_22 : _GEN_8769; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8771 = 5'h17 == deqPtrExt_0_value ? pending_23 : _GEN_8770; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8772 = 5'h18 == deqPtrExt_0_value ? pending_24 : _GEN_8771; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8773 = 5'h19 == deqPtrExt_0_value ? pending_25 : _GEN_8772; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8774 = 5'h1a == deqPtrExt_0_value ? pending_26 : _GEN_8773; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8775 = 5'h1b == deqPtrExt_0_value ? pending_27 : _GEN_8774; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8776 = 5'h1c == deqPtrExt_0_value ? pending_28 : _GEN_8775; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8777 = 5'h1d == deqPtrExt_0_value ? pending_29 : _GEN_8776; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8778 = 5'h1e == deqPtrExt_0_value ? pending_30 : _GEN_8777; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8779 = 5'h1f == deqPtrExt_0_value ? pending_31 : _GEN_8778; // @[StoreQueue.scala 401:{37,37}]
  wire  _GEN_8781 = 5'h1 == deqPtrExt_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8782 = 5'h2 == deqPtrExt_0_value ? allocated_2 : _GEN_8781; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8783 = 5'h3 == deqPtrExt_0_value ? allocated_3 : _GEN_8782; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8784 = 5'h4 == deqPtrExt_0_value ? allocated_4 : _GEN_8783; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8785 = 5'h5 == deqPtrExt_0_value ? allocated_5 : _GEN_8784; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8786 = 5'h6 == deqPtrExt_0_value ? allocated_6 : _GEN_8785; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8787 = 5'h7 == deqPtrExt_0_value ? allocated_7 : _GEN_8786; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8788 = 5'h8 == deqPtrExt_0_value ? allocated_8 : _GEN_8787; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8789 = 5'h9 == deqPtrExt_0_value ? allocated_9 : _GEN_8788; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8790 = 5'ha == deqPtrExt_0_value ? allocated_10 : _GEN_8789; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8791 = 5'hb == deqPtrExt_0_value ? allocated_11 : _GEN_8790; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8792 = 5'hc == deqPtrExt_0_value ? allocated_12 : _GEN_8791; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8793 = 5'hd == deqPtrExt_0_value ? allocated_13 : _GEN_8792; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8794 = 5'he == deqPtrExt_0_value ? allocated_14 : _GEN_8793; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8795 = 5'hf == deqPtrExt_0_value ? allocated_15 : _GEN_8794; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8796 = 5'h10 == deqPtrExt_0_value ? allocated_16 : _GEN_8795; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8797 = 5'h11 == deqPtrExt_0_value ? allocated_17 : _GEN_8796; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8798 = 5'h12 == deqPtrExt_0_value ? allocated_18 : _GEN_8797; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8799 = 5'h13 == deqPtrExt_0_value ? allocated_19 : _GEN_8798; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8800 = 5'h14 == deqPtrExt_0_value ? allocated_20 : _GEN_8799; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8801 = 5'h15 == deqPtrExt_0_value ? allocated_21 : _GEN_8800; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8802 = 5'h16 == deqPtrExt_0_value ? allocated_22 : _GEN_8801; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8803 = 5'h17 == deqPtrExt_0_value ? allocated_23 : _GEN_8802; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8804 = 5'h18 == deqPtrExt_0_value ? allocated_24 : _GEN_8803; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8805 = 5'h19 == deqPtrExt_0_value ? allocated_25 : _GEN_8804; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8806 = 5'h1a == deqPtrExt_0_value ? allocated_26 : _GEN_8805; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8807 = 5'h1b == deqPtrExt_0_value ? allocated_27 : _GEN_8806; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8808 = 5'h1c == deqPtrExt_0_value ? allocated_28 : _GEN_8807; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8809 = 5'h1d == deqPtrExt_0_value ? allocated_29 : _GEN_8808; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8810 = 5'h1e == deqPtrExt_0_value ? allocated_30 : _GEN_8809; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8811 = 5'h1f == deqPtrExt_0_value ? allocated_31 : _GEN_8810; // @[StoreQueue.scala 401:{56,56}]
  wire  _GEN_8813 = 5'h1 == deqPtrExt_0_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8814 = 5'h2 == deqPtrExt_0_value ? datavalid_2 : _GEN_8813; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8815 = 5'h3 == deqPtrExt_0_value ? datavalid_3 : _GEN_8814; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8816 = 5'h4 == deqPtrExt_0_value ? datavalid_4 : _GEN_8815; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8817 = 5'h5 == deqPtrExt_0_value ? datavalid_5 : _GEN_8816; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8818 = 5'h6 == deqPtrExt_0_value ? datavalid_6 : _GEN_8817; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8819 = 5'h7 == deqPtrExt_0_value ? datavalid_7 : _GEN_8818; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8820 = 5'h8 == deqPtrExt_0_value ? datavalid_8 : _GEN_8819; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8821 = 5'h9 == deqPtrExt_0_value ? datavalid_9 : _GEN_8820; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8822 = 5'ha == deqPtrExt_0_value ? datavalid_10 : _GEN_8821; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8823 = 5'hb == deqPtrExt_0_value ? datavalid_11 : _GEN_8822; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8824 = 5'hc == deqPtrExt_0_value ? datavalid_12 : _GEN_8823; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8825 = 5'hd == deqPtrExt_0_value ? datavalid_13 : _GEN_8824; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8826 = 5'he == deqPtrExt_0_value ? datavalid_14 : _GEN_8825; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8827 = 5'hf == deqPtrExt_0_value ? datavalid_15 : _GEN_8826; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8828 = 5'h10 == deqPtrExt_0_value ? datavalid_16 : _GEN_8827; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8829 = 5'h11 == deqPtrExt_0_value ? datavalid_17 : _GEN_8828; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8830 = 5'h12 == deqPtrExt_0_value ? datavalid_18 : _GEN_8829; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8831 = 5'h13 == deqPtrExt_0_value ? datavalid_19 : _GEN_8830; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8832 = 5'h14 == deqPtrExt_0_value ? datavalid_20 : _GEN_8831; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8833 = 5'h15 == deqPtrExt_0_value ? datavalid_21 : _GEN_8832; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8834 = 5'h16 == deqPtrExt_0_value ? datavalid_22 : _GEN_8833; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8835 = 5'h17 == deqPtrExt_0_value ? datavalid_23 : _GEN_8834; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8836 = 5'h18 == deqPtrExt_0_value ? datavalid_24 : _GEN_8835; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8837 = 5'h19 == deqPtrExt_0_value ? datavalid_25 : _GEN_8836; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8838 = 5'h1a == deqPtrExt_0_value ? datavalid_26 : _GEN_8837; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8839 = 5'h1b == deqPtrExt_0_value ? datavalid_27 : _GEN_8838; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8840 = 5'h1c == deqPtrExt_0_value ? datavalid_28 : _GEN_8839; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8841 = 5'h1d == deqPtrExt_0_value ? datavalid_29 : _GEN_8840; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8842 = 5'h1e == deqPtrExt_0_value ? datavalid_30 : _GEN_8841; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8843 = 5'h1f == deqPtrExt_0_value ? datavalid_31 : _GEN_8842; // @[StoreQueue.scala 401:{77,77}]
  wire  _GEN_8845 = 5'h1 == deqPtrExt_0_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8846 = 5'h2 == deqPtrExt_0_value ? addrvalid_2 : _GEN_8845; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8847 = 5'h3 == deqPtrExt_0_value ? addrvalid_3 : _GEN_8846; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8848 = 5'h4 == deqPtrExt_0_value ? addrvalid_4 : _GEN_8847; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8849 = 5'h5 == deqPtrExt_0_value ? addrvalid_5 : _GEN_8848; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8850 = 5'h6 == deqPtrExt_0_value ? addrvalid_6 : _GEN_8849; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8851 = 5'h7 == deqPtrExt_0_value ? addrvalid_7 : _GEN_8850; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8852 = 5'h8 == deqPtrExt_0_value ? addrvalid_8 : _GEN_8851; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8853 = 5'h9 == deqPtrExt_0_value ? addrvalid_9 : _GEN_8852; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8854 = 5'ha == deqPtrExt_0_value ? addrvalid_10 : _GEN_8853; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8855 = 5'hb == deqPtrExt_0_value ? addrvalid_11 : _GEN_8854; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8856 = 5'hc == deqPtrExt_0_value ? addrvalid_12 : _GEN_8855; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8857 = 5'hd == deqPtrExt_0_value ? addrvalid_13 : _GEN_8856; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8858 = 5'he == deqPtrExt_0_value ? addrvalid_14 : _GEN_8857; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8859 = 5'hf == deqPtrExt_0_value ? addrvalid_15 : _GEN_8858; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8860 = 5'h10 == deqPtrExt_0_value ? addrvalid_16 : _GEN_8859; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8861 = 5'h11 == deqPtrExt_0_value ? addrvalid_17 : _GEN_8860; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8862 = 5'h12 == deqPtrExt_0_value ? addrvalid_18 : _GEN_8861; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8863 = 5'h13 == deqPtrExt_0_value ? addrvalid_19 : _GEN_8862; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8864 = 5'h14 == deqPtrExt_0_value ? addrvalid_20 : _GEN_8863; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8865 = 5'h15 == deqPtrExt_0_value ? addrvalid_21 : _GEN_8864; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8866 = 5'h16 == deqPtrExt_0_value ? addrvalid_22 : _GEN_8865; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8867 = 5'h17 == deqPtrExt_0_value ? addrvalid_23 : _GEN_8866; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8868 = 5'h18 == deqPtrExt_0_value ? addrvalid_24 : _GEN_8867; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8869 = 5'h19 == deqPtrExt_0_value ? addrvalid_25 : _GEN_8868; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8870 = 5'h1a == deqPtrExt_0_value ? addrvalid_26 : _GEN_8869; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8871 = 5'h1b == deqPtrExt_0_value ? addrvalid_27 : _GEN_8870; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8872 = 5'h1c == deqPtrExt_0_value ? addrvalid_28 : _GEN_8871; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8873 = 5'h1d == deqPtrExt_0_value ? addrvalid_29 : _GEN_8872; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8874 = 5'h1e == deqPtrExt_0_value ? addrvalid_30 : _GEN_8873; // @[StoreQueue.scala 401:{98,98}]
  wire  _GEN_8875 = 5'h1f == deqPtrExt_0_value ? addrvalid_31 : _GEN_8874; // @[StoreQueue.scala 401:{98,98}]
  reg  REG_6; // @[StoreQueue.scala 401:19]
  wire  _T_47 = io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_49 = io_uncache_resp_ready & io_uncache_resp_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_8878 = _T_49 ? 3'h3 : uncacheState; // @[StoreQueue.scala 411:36 412:22 398:29]
  wire [2:0] _GEN_8879 = _rdataPtrExtNext_T_2 ? 3'h4 : uncacheState; // @[StoreQueue.scala 416:34 417:22 398:29]
  wire  _T_53 = commitCount > 3'h0; // @[StoreQueue.scala 421:24]
  wire [2:0] _GEN_8880 = commitCount > 3'h0 ? 3'h0 : uncacheState; // @[StoreQueue.scala 421:31 422:22 398:29]
  wire [2:0] _GEN_8881 = 3'h4 == uncacheState ? _GEN_8880 : uncacheState; // @[StoreQueue.scala 399:24 398:29]
  wire [2:0] _GEN_8882 = 3'h3 == uncacheState ? _GEN_8879 : _GEN_8881; // @[StoreQueue.scala 399:24]
  wire [6:0] _GEN_8887 = 5'h1 == deqPtrExt_0_value ? uop_1_ctrl_fuOpType : uop_0_ctrl_fuOpType; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8888 = 5'h2 == deqPtrExt_0_value ? uop_2_ctrl_fuOpType : _GEN_8887; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8889 = 5'h3 == deqPtrExt_0_value ? uop_3_ctrl_fuOpType : _GEN_8888; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8890 = 5'h4 == deqPtrExt_0_value ? uop_4_ctrl_fuOpType : _GEN_8889; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8891 = 5'h5 == deqPtrExt_0_value ? uop_5_ctrl_fuOpType : _GEN_8890; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8892 = 5'h6 == deqPtrExt_0_value ? uop_6_ctrl_fuOpType : _GEN_8891; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8893 = 5'h7 == deqPtrExt_0_value ? uop_7_ctrl_fuOpType : _GEN_8892; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8894 = 5'h8 == deqPtrExt_0_value ? uop_8_ctrl_fuOpType : _GEN_8893; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8895 = 5'h9 == deqPtrExt_0_value ? uop_9_ctrl_fuOpType : _GEN_8894; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8896 = 5'ha == deqPtrExt_0_value ? uop_10_ctrl_fuOpType : _GEN_8895; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8897 = 5'hb == deqPtrExt_0_value ? uop_11_ctrl_fuOpType : _GEN_8896; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8898 = 5'hc == deqPtrExt_0_value ? uop_12_ctrl_fuOpType : _GEN_8897; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8899 = 5'hd == deqPtrExt_0_value ? uop_13_ctrl_fuOpType : _GEN_8898; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8900 = 5'he == deqPtrExt_0_value ? uop_14_ctrl_fuOpType : _GEN_8899; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8901 = 5'hf == deqPtrExt_0_value ? uop_15_ctrl_fuOpType : _GEN_8900; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8902 = 5'h10 == deqPtrExt_0_value ? uop_16_ctrl_fuOpType : _GEN_8901; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8903 = 5'h11 == deqPtrExt_0_value ? uop_17_ctrl_fuOpType : _GEN_8902; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8904 = 5'h12 == deqPtrExt_0_value ? uop_18_ctrl_fuOpType : _GEN_8903; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8905 = 5'h13 == deqPtrExt_0_value ? uop_19_ctrl_fuOpType : _GEN_8904; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8906 = 5'h14 == deqPtrExt_0_value ? uop_20_ctrl_fuOpType : _GEN_8905; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8907 = 5'h15 == deqPtrExt_0_value ? uop_21_ctrl_fuOpType : _GEN_8906; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8908 = 5'h16 == deqPtrExt_0_value ? uop_22_ctrl_fuOpType : _GEN_8907; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8909 = 5'h17 == deqPtrExt_0_value ? uop_23_ctrl_fuOpType : _GEN_8908; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8910 = 5'h18 == deqPtrExt_0_value ? uop_24_ctrl_fuOpType : _GEN_8909; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8911 = 5'h19 == deqPtrExt_0_value ? uop_25_ctrl_fuOpType : _GEN_8910; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8912 = 5'h1a == deqPtrExt_0_value ? uop_26_ctrl_fuOpType : _GEN_8911; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8913 = 5'h1b == deqPtrExt_0_value ? uop_27_ctrl_fuOpType : _GEN_8912; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8914 = 5'h1c == deqPtrExt_0_value ? uop_28_ctrl_fuOpType : _GEN_8913; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8915 = 5'h1d == deqPtrExt_0_value ? uop_29_ctrl_fuOpType : _GEN_8914; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8916 = 5'h1e == deqPtrExt_0_value ? uop_30_ctrl_fuOpType : _GEN_8915; // @[package.scala 403:{35,35}]
  wire [6:0] _GEN_8917 = 5'h1f == deqPtrExt_0_value ? uop_31_ctrl_fuOpType : _GEN_8916; // @[package.scala 403:{35,35}]
  reg  REG_7; // @[StoreQueue.scala 438:15]
  wire [6:0] _GEN_9402 = 5'h1 == deqPtrExt_0_value ? uop_1_robIdx_value : uop_0_robIdx_value; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9403 = 5'h2 == deqPtrExt_0_value ? uop_2_robIdx_value : _GEN_9402; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9404 = 5'h3 == deqPtrExt_0_value ? uop_3_robIdx_value : _GEN_9403; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9405 = 5'h4 == deqPtrExt_0_value ? uop_4_robIdx_value : _GEN_9404; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9406 = 5'h5 == deqPtrExt_0_value ? uop_5_robIdx_value : _GEN_9405; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9407 = 5'h6 == deqPtrExt_0_value ? uop_6_robIdx_value : _GEN_9406; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9408 = 5'h7 == deqPtrExt_0_value ? uop_7_robIdx_value : _GEN_9407; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9409 = 5'h8 == deqPtrExt_0_value ? uop_8_robIdx_value : _GEN_9408; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9410 = 5'h9 == deqPtrExt_0_value ? uop_9_robIdx_value : _GEN_9409; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9411 = 5'ha == deqPtrExt_0_value ? uop_10_robIdx_value : _GEN_9410; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9412 = 5'hb == deqPtrExt_0_value ? uop_11_robIdx_value : _GEN_9411; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9413 = 5'hc == deqPtrExt_0_value ? uop_12_robIdx_value : _GEN_9412; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9414 = 5'hd == deqPtrExt_0_value ? uop_13_robIdx_value : _GEN_9413; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9415 = 5'he == deqPtrExt_0_value ? uop_14_robIdx_value : _GEN_9414; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9416 = 5'hf == deqPtrExt_0_value ? uop_15_robIdx_value : _GEN_9415; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9417 = 5'h10 == deqPtrExt_0_value ? uop_16_robIdx_value : _GEN_9416; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9418 = 5'h11 == deqPtrExt_0_value ? uop_17_robIdx_value : _GEN_9417; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9419 = 5'h12 == deqPtrExt_0_value ? uop_18_robIdx_value : _GEN_9418; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9420 = 5'h13 == deqPtrExt_0_value ? uop_19_robIdx_value : _GEN_9419; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9421 = 5'h14 == deqPtrExt_0_value ? uop_20_robIdx_value : _GEN_9420; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9422 = 5'h15 == deqPtrExt_0_value ? uop_21_robIdx_value : _GEN_9421; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9423 = 5'h16 == deqPtrExt_0_value ? uop_22_robIdx_value : _GEN_9422; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9424 = 5'h17 == deqPtrExt_0_value ? uop_23_robIdx_value : _GEN_9423; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9425 = 5'h18 == deqPtrExt_0_value ? uop_24_robIdx_value : _GEN_9424; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9426 = 5'h19 == deqPtrExt_0_value ? uop_25_robIdx_value : _GEN_9425; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9427 = 5'h1a == deqPtrExt_0_value ? uop_26_robIdx_value : _GEN_9426; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9428 = 5'h1b == deqPtrExt_0_value ? uop_27_robIdx_value : _GEN_9427; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9429 = 5'h1c == deqPtrExt_0_value ? uop_28_robIdx_value : _GEN_9428; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9430 = 5'h1d == deqPtrExt_0_value ? uop_29_robIdx_value : _GEN_9429; // @[StoreQueue.scala 465:{25,25}]
  wire [6:0] _GEN_9431 = 5'h1e == deqPtrExt_0_value ? uop_30_robIdx_value : _GEN_9430; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9434 = 5'h1 == deqPtrExt_0_value ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9435 = 5'h2 == deqPtrExt_0_value ? uop_2_robIdx_flag : _GEN_9434; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9436 = 5'h3 == deqPtrExt_0_value ? uop_3_robIdx_flag : _GEN_9435; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9437 = 5'h4 == deqPtrExt_0_value ? uop_4_robIdx_flag : _GEN_9436; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9438 = 5'h5 == deqPtrExt_0_value ? uop_5_robIdx_flag : _GEN_9437; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9439 = 5'h6 == deqPtrExt_0_value ? uop_6_robIdx_flag : _GEN_9438; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9440 = 5'h7 == deqPtrExt_0_value ? uop_7_robIdx_flag : _GEN_9439; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9441 = 5'h8 == deqPtrExt_0_value ? uop_8_robIdx_flag : _GEN_9440; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9442 = 5'h9 == deqPtrExt_0_value ? uop_9_robIdx_flag : _GEN_9441; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9443 = 5'ha == deqPtrExt_0_value ? uop_10_robIdx_flag : _GEN_9442; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9444 = 5'hb == deqPtrExt_0_value ? uop_11_robIdx_flag : _GEN_9443; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9445 = 5'hc == deqPtrExt_0_value ? uop_12_robIdx_flag : _GEN_9444; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9446 = 5'hd == deqPtrExt_0_value ? uop_13_robIdx_flag : _GEN_9445; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9447 = 5'he == deqPtrExt_0_value ? uop_14_robIdx_flag : _GEN_9446; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9448 = 5'hf == deqPtrExt_0_value ? uop_15_robIdx_flag : _GEN_9447; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9449 = 5'h10 == deqPtrExt_0_value ? uop_16_robIdx_flag : _GEN_9448; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9450 = 5'h11 == deqPtrExt_0_value ? uop_17_robIdx_flag : _GEN_9449; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9451 = 5'h12 == deqPtrExt_0_value ? uop_18_robIdx_flag : _GEN_9450; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9452 = 5'h13 == deqPtrExt_0_value ? uop_19_robIdx_flag : _GEN_9451; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9453 = 5'h14 == deqPtrExt_0_value ? uop_20_robIdx_flag : _GEN_9452; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9454 = 5'h15 == deqPtrExt_0_value ? uop_21_robIdx_flag : _GEN_9453; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9455 = 5'h16 == deqPtrExt_0_value ? uop_22_robIdx_flag : _GEN_9454; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9456 = 5'h17 == deqPtrExt_0_value ? uop_23_robIdx_flag : _GEN_9455; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9457 = 5'h18 == deqPtrExt_0_value ? uop_24_robIdx_flag : _GEN_9456; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9458 = 5'h19 == deqPtrExt_0_value ? uop_25_robIdx_flag : _GEN_9457; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9459 = 5'h1a == deqPtrExt_0_value ? uop_26_robIdx_flag : _GEN_9458; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9460 = 5'h1b == deqPtrExt_0_value ? uop_27_robIdx_flag : _GEN_9459; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9461 = 5'h1c == deqPtrExt_0_value ? uop_28_robIdx_flag : _GEN_9460; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9462 = 5'h1d == deqPtrExt_0_value ? uop_29_robIdx_flag : _GEN_9461; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_9463 = 5'h1e == deqPtrExt_0_value ? uop_30_robIdx_flag : _GEN_9462; // @[StoreQueue.scala 465:{25,25}]
  wire  _GEN_12761 = 5'h0 == deqPtrExt_0_value ? 1'h0 : _GEN_1652; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12762 = 5'h1 == deqPtrExt_0_value ? 1'h0 : _GEN_1653; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12763 = 5'h2 == deqPtrExt_0_value ? 1'h0 : _GEN_1654; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12764 = 5'h3 == deqPtrExt_0_value ? 1'h0 : _GEN_1655; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12765 = 5'h4 == deqPtrExt_0_value ? 1'h0 : _GEN_1656; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12766 = 5'h5 == deqPtrExt_0_value ? 1'h0 : _GEN_1657; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12767 = 5'h6 == deqPtrExt_0_value ? 1'h0 : _GEN_1658; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12768 = 5'h7 == deqPtrExt_0_value ? 1'h0 : _GEN_1659; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12769 = 5'h8 == deqPtrExt_0_value ? 1'h0 : _GEN_1660; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12770 = 5'h9 == deqPtrExt_0_value ? 1'h0 : _GEN_1661; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12771 = 5'ha == deqPtrExt_0_value ? 1'h0 : _GEN_1662; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12772 = 5'hb == deqPtrExt_0_value ? 1'h0 : _GEN_1663; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12773 = 5'hc == deqPtrExt_0_value ? 1'h0 : _GEN_1664; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12774 = 5'hd == deqPtrExt_0_value ? 1'h0 : _GEN_1665; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12775 = 5'he == deqPtrExt_0_value ? 1'h0 : _GEN_1666; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12776 = 5'hf == deqPtrExt_0_value ? 1'h0 : _GEN_1667; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12777 = 5'h10 == deqPtrExt_0_value ? 1'h0 : _GEN_1668; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12778 = 5'h11 == deqPtrExt_0_value ? 1'h0 : _GEN_1669; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12779 = 5'h12 == deqPtrExt_0_value ? 1'h0 : _GEN_1670; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12780 = 5'h13 == deqPtrExt_0_value ? 1'h0 : _GEN_1671; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12781 = 5'h14 == deqPtrExt_0_value ? 1'h0 : _GEN_1672; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12782 = 5'h15 == deqPtrExt_0_value ? 1'h0 : _GEN_1673; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12783 = 5'h16 == deqPtrExt_0_value ? 1'h0 : _GEN_1674; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12784 = 5'h17 == deqPtrExt_0_value ? 1'h0 : _GEN_1675; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12785 = 5'h18 == deqPtrExt_0_value ? 1'h0 : _GEN_1676; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12786 = 5'h19 == deqPtrExt_0_value ? 1'h0 : _GEN_1677; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12787 = 5'h1a == deqPtrExt_0_value ? 1'h0 : _GEN_1678; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12788 = 5'h1b == deqPtrExt_0_value ? 1'h0 : _GEN_1679; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12789 = 5'h1c == deqPtrExt_0_value ? 1'h0 : _GEN_1680; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12790 = 5'h1d == deqPtrExt_0_value ? 1'h0 : _GEN_1681; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12791 = 5'h1e == deqPtrExt_0_value ? 1'h0 : _GEN_1682; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12792 = 5'h1f == deqPtrExt_0_value ? 1'h0 : _GEN_1683; // @[StoreQueue.scala 478:{23,23}]
  wire  _GEN_12793 = _rdataPtrExtNext_T_2 ? _GEN_12761 : _GEN_1652; // @[StoreQueue.scala 477:30]
  wire  _GEN_12794 = _rdataPtrExtNext_T_2 ? _GEN_12762 : _GEN_1653; // @[StoreQueue.scala 477:30]
  wire  _GEN_12795 = _rdataPtrExtNext_T_2 ? _GEN_12763 : _GEN_1654; // @[StoreQueue.scala 477:30]
  wire  _GEN_12796 = _rdataPtrExtNext_T_2 ? _GEN_12764 : _GEN_1655; // @[StoreQueue.scala 477:30]
  wire  _GEN_12797 = _rdataPtrExtNext_T_2 ? _GEN_12765 : _GEN_1656; // @[StoreQueue.scala 477:30]
  wire  _GEN_12798 = _rdataPtrExtNext_T_2 ? _GEN_12766 : _GEN_1657; // @[StoreQueue.scala 477:30]
  wire  _GEN_12799 = _rdataPtrExtNext_T_2 ? _GEN_12767 : _GEN_1658; // @[StoreQueue.scala 477:30]
  wire  _GEN_12800 = _rdataPtrExtNext_T_2 ? _GEN_12768 : _GEN_1659; // @[StoreQueue.scala 477:30]
  wire  _GEN_12801 = _rdataPtrExtNext_T_2 ? _GEN_12769 : _GEN_1660; // @[StoreQueue.scala 477:30]
  wire  _GEN_12802 = _rdataPtrExtNext_T_2 ? _GEN_12770 : _GEN_1661; // @[StoreQueue.scala 477:30]
  wire  _GEN_12803 = _rdataPtrExtNext_T_2 ? _GEN_12771 : _GEN_1662; // @[StoreQueue.scala 477:30]
  wire  _GEN_12804 = _rdataPtrExtNext_T_2 ? _GEN_12772 : _GEN_1663; // @[StoreQueue.scala 477:30]
  wire  _GEN_12805 = _rdataPtrExtNext_T_2 ? _GEN_12773 : _GEN_1664; // @[StoreQueue.scala 477:30]
  wire  _GEN_12806 = _rdataPtrExtNext_T_2 ? _GEN_12774 : _GEN_1665; // @[StoreQueue.scala 477:30]
  wire  _GEN_12807 = _rdataPtrExtNext_T_2 ? _GEN_12775 : _GEN_1666; // @[StoreQueue.scala 477:30]
  wire  _GEN_12808 = _rdataPtrExtNext_T_2 ? _GEN_12776 : _GEN_1667; // @[StoreQueue.scala 477:30]
  wire  _GEN_12809 = _rdataPtrExtNext_T_2 ? _GEN_12777 : _GEN_1668; // @[StoreQueue.scala 477:30]
  wire  _GEN_12810 = _rdataPtrExtNext_T_2 ? _GEN_12778 : _GEN_1669; // @[StoreQueue.scala 477:30]
  wire  _GEN_12811 = _rdataPtrExtNext_T_2 ? _GEN_12779 : _GEN_1670; // @[StoreQueue.scala 477:30]
  wire  _GEN_12812 = _rdataPtrExtNext_T_2 ? _GEN_12780 : _GEN_1671; // @[StoreQueue.scala 477:30]
  wire  _GEN_12813 = _rdataPtrExtNext_T_2 ? _GEN_12781 : _GEN_1672; // @[StoreQueue.scala 477:30]
  wire  _GEN_12814 = _rdataPtrExtNext_T_2 ? _GEN_12782 : _GEN_1673; // @[StoreQueue.scala 477:30]
  wire  _GEN_12815 = _rdataPtrExtNext_T_2 ? _GEN_12783 : _GEN_1674; // @[StoreQueue.scala 477:30]
  wire  _GEN_12816 = _rdataPtrExtNext_T_2 ? _GEN_12784 : _GEN_1675; // @[StoreQueue.scala 477:30]
  wire  _GEN_12817 = _rdataPtrExtNext_T_2 ? _GEN_12785 : _GEN_1676; // @[StoreQueue.scala 477:30]
  wire  _GEN_12818 = _rdataPtrExtNext_T_2 ? _GEN_12786 : _GEN_1677; // @[StoreQueue.scala 477:30]
  wire  _GEN_12819 = _rdataPtrExtNext_T_2 ? _GEN_12787 : _GEN_1678; // @[StoreQueue.scala 477:30]
  wire  _GEN_12820 = _rdataPtrExtNext_T_2 ? _GEN_12788 : _GEN_1679; // @[StoreQueue.scala 477:30]
  wire  _GEN_12821 = _rdataPtrExtNext_T_2 ? _GEN_12789 : _GEN_1680; // @[StoreQueue.scala 477:30]
  wire  _GEN_12822 = _rdataPtrExtNext_T_2 ? _GEN_12790 : _GEN_1681; // @[StoreQueue.scala 477:30]
  wire  _GEN_12823 = _rdataPtrExtNext_T_2 ? _GEN_12791 : _GEN_1682; // @[StoreQueue.scala 477:30]
  wire  _GEN_12824 = _rdataPtrExtNext_T_2 ? _GEN_12792 : _GEN_1683; // @[StoreQueue.scala 477:30]
  wire  _GEN_12825 = 5'h0 == cmtPtrExt_0_value | _GEN_1748; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12826 = 5'h1 == cmtPtrExt_0_value | _GEN_1749; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12827 = 5'h2 == cmtPtrExt_0_value | _GEN_1750; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12828 = 5'h3 == cmtPtrExt_0_value | _GEN_1751; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12829 = 5'h4 == cmtPtrExt_0_value | _GEN_1752; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12830 = 5'h5 == cmtPtrExt_0_value | _GEN_1753; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12831 = 5'h6 == cmtPtrExt_0_value | _GEN_1754; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12832 = 5'h7 == cmtPtrExt_0_value | _GEN_1755; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12833 = 5'h8 == cmtPtrExt_0_value | _GEN_1756; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12834 = 5'h9 == cmtPtrExt_0_value | _GEN_1757; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12835 = 5'ha == cmtPtrExt_0_value | _GEN_1758; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12836 = 5'hb == cmtPtrExt_0_value | _GEN_1759; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12837 = 5'hc == cmtPtrExt_0_value | _GEN_1760; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12838 = 5'hd == cmtPtrExt_0_value | _GEN_1761; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12839 = 5'he == cmtPtrExt_0_value | _GEN_1762; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12840 = 5'hf == cmtPtrExt_0_value | _GEN_1763; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12841 = 5'h10 == cmtPtrExt_0_value | _GEN_1764; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12842 = 5'h11 == cmtPtrExt_0_value | _GEN_1765; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12843 = 5'h12 == cmtPtrExt_0_value | _GEN_1766; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12844 = 5'h13 == cmtPtrExt_0_value | _GEN_1767; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12845 = 5'h14 == cmtPtrExt_0_value | _GEN_1768; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12846 = 5'h15 == cmtPtrExt_0_value | _GEN_1769; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12847 = 5'h16 == cmtPtrExt_0_value | _GEN_1770; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12848 = 5'h17 == cmtPtrExt_0_value | _GEN_1771; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12849 = 5'h18 == cmtPtrExt_0_value | _GEN_1772; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12850 = 5'h19 == cmtPtrExt_0_value | _GEN_1773; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12851 = 5'h1a == cmtPtrExt_0_value | _GEN_1774; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12852 = 5'h1b == cmtPtrExt_0_value | _GEN_1775; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12853 = 5'h1c == cmtPtrExt_0_value | _GEN_1776; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12854 = 5'h1d == cmtPtrExt_0_value | _GEN_1777; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12855 = 5'h1e == cmtPtrExt_0_value | _GEN_1778; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12856 = 5'h1f == cmtPtrExt_0_value | _GEN_1779; // @[StoreQueue.scala 495:{41,41}]
  wire  _GEN_12857 = uncacheState == 3'h0 ? _GEN_12825 : _GEN_1748; // @[StoreQueue.scala 494:38]
  wire  _GEN_12858 = uncacheState == 3'h0 ? _GEN_12826 : _GEN_1749; // @[StoreQueue.scala 494:38]
  wire  _GEN_12859 = uncacheState == 3'h0 ? _GEN_12827 : _GEN_1750; // @[StoreQueue.scala 494:38]
  wire  _GEN_12860 = uncacheState == 3'h0 ? _GEN_12828 : _GEN_1751; // @[StoreQueue.scala 494:38]
  wire  _GEN_12861 = uncacheState == 3'h0 ? _GEN_12829 : _GEN_1752; // @[StoreQueue.scala 494:38]
  wire  _GEN_12862 = uncacheState == 3'h0 ? _GEN_12830 : _GEN_1753; // @[StoreQueue.scala 494:38]
  wire  _GEN_12863 = uncacheState == 3'h0 ? _GEN_12831 : _GEN_1754; // @[StoreQueue.scala 494:38]
  wire  _GEN_12864 = uncacheState == 3'h0 ? _GEN_12832 : _GEN_1755; // @[StoreQueue.scala 494:38]
  wire  _GEN_12865 = uncacheState == 3'h0 ? _GEN_12833 : _GEN_1756; // @[StoreQueue.scala 494:38]
  wire  _GEN_12866 = uncacheState == 3'h0 ? _GEN_12834 : _GEN_1757; // @[StoreQueue.scala 494:38]
  wire  _GEN_12867 = uncacheState == 3'h0 ? _GEN_12835 : _GEN_1758; // @[StoreQueue.scala 494:38]
  wire  _GEN_12868 = uncacheState == 3'h0 ? _GEN_12836 : _GEN_1759; // @[StoreQueue.scala 494:38]
  wire  _GEN_12869 = uncacheState == 3'h0 ? _GEN_12837 : _GEN_1760; // @[StoreQueue.scala 494:38]
  wire  _GEN_12870 = uncacheState == 3'h0 ? _GEN_12838 : _GEN_1761; // @[StoreQueue.scala 494:38]
  wire  _GEN_12871 = uncacheState == 3'h0 ? _GEN_12839 : _GEN_1762; // @[StoreQueue.scala 494:38]
  wire  _GEN_12872 = uncacheState == 3'h0 ? _GEN_12840 : _GEN_1763; // @[StoreQueue.scala 494:38]
  wire  _GEN_12873 = uncacheState == 3'h0 ? _GEN_12841 : _GEN_1764; // @[StoreQueue.scala 494:38]
  wire  _GEN_12874 = uncacheState == 3'h0 ? _GEN_12842 : _GEN_1765; // @[StoreQueue.scala 494:38]
  wire  _GEN_12875 = uncacheState == 3'h0 ? _GEN_12843 : _GEN_1766; // @[StoreQueue.scala 494:38]
  wire  _GEN_12876 = uncacheState == 3'h0 ? _GEN_12844 : _GEN_1767; // @[StoreQueue.scala 494:38]
  wire  _GEN_12877 = uncacheState == 3'h0 ? _GEN_12845 : _GEN_1768; // @[StoreQueue.scala 494:38]
  wire  _GEN_12878 = uncacheState == 3'h0 ? _GEN_12846 : _GEN_1769; // @[StoreQueue.scala 494:38]
  wire  _GEN_12879 = uncacheState == 3'h0 ? _GEN_12847 : _GEN_1770; // @[StoreQueue.scala 494:38]
  wire  _GEN_12880 = uncacheState == 3'h0 ? _GEN_12848 : _GEN_1771; // @[StoreQueue.scala 494:38]
  wire  _GEN_12881 = uncacheState == 3'h0 ? _GEN_12849 : _GEN_1772; // @[StoreQueue.scala 494:38]
  wire  _GEN_12882 = uncacheState == 3'h0 ? _GEN_12850 : _GEN_1773; // @[StoreQueue.scala 494:38]
  wire  _GEN_12883 = uncacheState == 3'h0 ? _GEN_12851 : _GEN_1774; // @[StoreQueue.scala 494:38]
  wire  _GEN_12884 = uncacheState == 3'h0 ? _GEN_12852 : _GEN_1775; // @[StoreQueue.scala 494:38]
  wire  _GEN_12885 = uncacheState == 3'h0 ? _GEN_12853 : _GEN_1776; // @[StoreQueue.scala 494:38]
  wire  _GEN_12886 = uncacheState == 3'h0 ? _GEN_12854 : _GEN_1777; // @[StoreQueue.scala 494:38]
  wire  _GEN_12887 = uncacheState == 3'h0 ? _GEN_12855 : _GEN_1778; // @[StoreQueue.scala 494:38]
  wire  _GEN_12888 = uncacheState == 3'h0 ? _GEN_12856 : _GEN_1779; // @[StoreQueue.scala 494:38]
  wire  _GEN_12889 = _T_53 ? _GEN_12857 : _GEN_1748; // @[StoreQueue.scala 490:30]
  wire  _GEN_12890 = _T_53 ? _GEN_12858 : _GEN_1749; // @[StoreQueue.scala 490:30]
  wire  _GEN_12891 = _T_53 ? _GEN_12859 : _GEN_1750; // @[StoreQueue.scala 490:30]
  wire  _GEN_12892 = _T_53 ? _GEN_12860 : _GEN_1751; // @[StoreQueue.scala 490:30]
  wire  _GEN_12893 = _T_53 ? _GEN_12861 : _GEN_1752; // @[StoreQueue.scala 490:30]
  wire  _GEN_12894 = _T_53 ? _GEN_12862 : _GEN_1753; // @[StoreQueue.scala 490:30]
  wire  _GEN_12895 = _T_53 ? _GEN_12863 : _GEN_1754; // @[StoreQueue.scala 490:30]
  wire  _GEN_12896 = _T_53 ? _GEN_12864 : _GEN_1755; // @[StoreQueue.scala 490:30]
  wire  _GEN_12897 = _T_53 ? _GEN_12865 : _GEN_1756; // @[StoreQueue.scala 490:30]
  wire  _GEN_12898 = _T_53 ? _GEN_12866 : _GEN_1757; // @[StoreQueue.scala 490:30]
  wire  _GEN_12899 = _T_53 ? _GEN_12867 : _GEN_1758; // @[StoreQueue.scala 490:30]
  wire  _GEN_12900 = _T_53 ? _GEN_12868 : _GEN_1759; // @[StoreQueue.scala 490:30]
  wire  _GEN_12901 = _T_53 ? _GEN_12869 : _GEN_1760; // @[StoreQueue.scala 490:30]
  wire  _GEN_12902 = _T_53 ? _GEN_12870 : _GEN_1761; // @[StoreQueue.scala 490:30]
  wire  _GEN_12903 = _T_53 ? _GEN_12871 : _GEN_1762; // @[StoreQueue.scala 490:30]
  wire  _GEN_12904 = _T_53 ? _GEN_12872 : _GEN_1763; // @[StoreQueue.scala 490:30]
  wire  _GEN_12905 = _T_53 ? _GEN_12873 : _GEN_1764; // @[StoreQueue.scala 490:30]
  wire  _GEN_12906 = _T_53 ? _GEN_12874 : _GEN_1765; // @[StoreQueue.scala 490:30]
  wire  _GEN_12907 = _T_53 ? _GEN_12875 : _GEN_1766; // @[StoreQueue.scala 490:30]
  wire  _GEN_12908 = _T_53 ? _GEN_12876 : _GEN_1767; // @[StoreQueue.scala 490:30]
  wire  _GEN_12909 = _T_53 ? _GEN_12877 : _GEN_1768; // @[StoreQueue.scala 490:30]
  wire  _GEN_12910 = _T_53 ? _GEN_12878 : _GEN_1769; // @[StoreQueue.scala 490:30]
  wire  _GEN_12911 = _T_53 ? _GEN_12879 : _GEN_1770; // @[StoreQueue.scala 490:30]
  wire  _GEN_12912 = _T_53 ? _GEN_12880 : _GEN_1771; // @[StoreQueue.scala 490:30]
  wire  _GEN_12913 = _T_53 ? _GEN_12881 : _GEN_1772; // @[StoreQueue.scala 490:30]
  wire  _GEN_12914 = _T_53 ? _GEN_12882 : _GEN_1773; // @[StoreQueue.scala 490:30]
  wire  _GEN_12915 = _T_53 ? _GEN_12883 : _GEN_1774; // @[StoreQueue.scala 490:30]
  wire  _GEN_12916 = _T_53 ? _GEN_12884 : _GEN_1775; // @[StoreQueue.scala 490:30]
  wire  _GEN_12917 = _T_53 ? _GEN_12885 : _GEN_1776; // @[StoreQueue.scala 490:30]
  wire  _GEN_12918 = _T_53 ? _GEN_12886 : _GEN_1777; // @[StoreQueue.scala 490:30]
  wire  _GEN_12919 = _T_53 ? _GEN_12887 : _GEN_1778; // @[StoreQueue.scala 490:30]
  wire  _GEN_12920 = _T_53 ? _GEN_12888 : _GEN_1779; // @[StoreQueue.scala 490:30]
  wire  _GEN_12921 = 5'h0 == cmtPtrExt_1_value | _GEN_12889; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12922 = 5'h1 == cmtPtrExt_1_value | _GEN_12890; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12923 = 5'h2 == cmtPtrExt_1_value | _GEN_12891; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12924 = 5'h3 == cmtPtrExt_1_value | _GEN_12892; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12925 = 5'h4 == cmtPtrExt_1_value | _GEN_12893; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12926 = 5'h5 == cmtPtrExt_1_value | _GEN_12894; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12927 = 5'h6 == cmtPtrExt_1_value | _GEN_12895; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12928 = 5'h7 == cmtPtrExt_1_value | _GEN_12896; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12929 = 5'h8 == cmtPtrExt_1_value | _GEN_12897; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12930 = 5'h9 == cmtPtrExt_1_value | _GEN_12898; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12931 = 5'ha == cmtPtrExt_1_value | _GEN_12899; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12932 = 5'hb == cmtPtrExt_1_value | _GEN_12900; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12933 = 5'hc == cmtPtrExt_1_value | _GEN_12901; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12934 = 5'hd == cmtPtrExt_1_value | _GEN_12902; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12935 = 5'he == cmtPtrExt_1_value | _GEN_12903; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12936 = 5'hf == cmtPtrExt_1_value | _GEN_12904; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12937 = 5'h10 == cmtPtrExt_1_value | _GEN_12905; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12938 = 5'h11 == cmtPtrExt_1_value | _GEN_12906; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12939 = 5'h12 == cmtPtrExt_1_value | _GEN_12907; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12940 = 5'h13 == cmtPtrExt_1_value | _GEN_12908; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12941 = 5'h14 == cmtPtrExt_1_value | _GEN_12909; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12942 = 5'h15 == cmtPtrExt_1_value | _GEN_12910; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12943 = 5'h16 == cmtPtrExt_1_value | _GEN_12911; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12944 = 5'h17 == cmtPtrExt_1_value | _GEN_12912; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12945 = 5'h18 == cmtPtrExt_1_value | _GEN_12913; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12946 = 5'h19 == cmtPtrExt_1_value | _GEN_12914; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12947 = 5'h1a == cmtPtrExt_1_value | _GEN_12915; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12948 = 5'h1b == cmtPtrExt_1_value | _GEN_12916; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12949 = 5'h1c == cmtPtrExt_1_value | _GEN_12917; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12950 = 5'h1d == cmtPtrExt_1_value | _GEN_12918; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12951 = 5'h1e == cmtPtrExt_1_value | _GEN_12919; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12952 = 5'h1f == cmtPtrExt_1_value | _GEN_12920; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12953 = commitCount > 3'h1 ? _GEN_12921 : _GEN_12889; // @[StoreQueue.scala 490:30]
  wire  _GEN_12954 = commitCount > 3'h1 ? _GEN_12922 : _GEN_12890; // @[StoreQueue.scala 490:30]
  wire  _GEN_12955 = commitCount > 3'h1 ? _GEN_12923 : _GEN_12891; // @[StoreQueue.scala 490:30]
  wire  _GEN_12956 = commitCount > 3'h1 ? _GEN_12924 : _GEN_12892; // @[StoreQueue.scala 490:30]
  wire  _GEN_12957 = commitCount > 3'h1 ? _GEN_12925 : _GEN_12893; // @[StoreQueue.scala 490:30]
  wire  _GEN_12958 = commitCount > 3'h1 ? _GEN_12926 : _GEN_12894; // @[StoreQueue.scala 490:30]
  wire  _GEN_12959 = commitCount > 3'h1 ? _GEN_12927 : _GEN_12895; // @[StoreQueue.scala 490:30]
  wire  _GEN_12960 = commitCount > 3'h1 ? _GEN_12928 : _GEN_12896; // @[StoreQueue.scala 490:30]
  wire  _GEN_12961 = commitCount > 3'h1 ? _GEN_12929 : _GEN_12897; // @[StoreQueue.scala 490:30]
  wire  _GEN_12962 = commitCount > 3'h1 ? _GEN_12930 : _GEN_12898; // @[StoreQueue.scala 490:30]
  wire  _GEN_12963 = commitCount > 3'h1 ? _GEN_12931 : _GEN_12899; // @[StoreQueue.scala 490:30]
  wire  _GEN_12964 = commitCount > 3'h1 ? _GEN_12932 : _GEN_12900; // @[StoreQueue.scala 490:30]
  wire  _GEN_12965 = commitCount > 3'h1 ? _GEN_12933 : _GEN_12901; // @[StoreQueue.scala 490:30]
  wire  _GEN_12966 = commitCount > 3'h1 ? _GEN_12934 : _GEN_12902; // @[StoreQueue.scala 490:30]
  wire  _GEN_12967 = commitCount > 3'h1 ? _GEN_12935 : _GEN_12903; // @[StoreQueue.scala 490:30]
  wire  _GEN_12968 = commitCount > 3'h1 ? _GEN_12936 : _GEN_12904; // @[StoreQueue.scala 490:30]
  wire  _GEN_12969 = commitCount > 3'h1 ? _GEN_12937 : _GEN_12905; // @[StoreQueue.scala 490:30]
  wire  _GEN_12970 = commitCount > 3'h1 ? _GEN_12938 : _GEN_12906; // @[StoreQueue.scala 490:30]
  wire  _GEN_12971 = commitCount > 3'h1 ? _GEN_12939 : _GEN_12907; // @[StoreQueue.scala 490:30]
  wire  _GEN_12972 = commitCount > 3'h1 ? _GEN_12940 : _GEN_12908; // @[StoreQueue.scala 490:30]
  wire  _GEN_12973 = commitCount > 3'h1 ? _GEN_12941 : _GEN_12909; // @[StoreQueue.scala 490:30]
  wire  _GEN_12974 = commitCount > 3'h1 ? _GEN_12942 : _GEN_12910; // @[StoreQueue.scala 490:30]
  wire  _GEN_12975 = commitCount > 3'h1 ? _GEN_12943 : _GEN_12911; // @[StoreQueue.scala 490:30]
  wire  _GEN_12976 = commitCount > 3'h1 ? _GEN_12944 : _GEN_12912; // @[StoreQueue.scala 490:30]
  wire  _GEN_12977 = commitCount > 3'h1 ? _GEN_12945 : _GEN_12913; // @[StoreQueue.scala 490:30]
  wire  _GEN_12978 = commitCount > 3'h1 ? _GEN_12946 : _GEN_12914; // @[StoreQueue.scala 490:30]
  wire  _GEN_12979 = commitCount > 3'h1 ? _GEN_12947 : _GEN_12915; // @[StoreQueue.scala 490:30]
  wire  _GEN_12980 = commitCount > 3'h1 ? _GEN_12948 : _GEN_12916; // @[StoreQueue.scala 490:30]
  wire  _GEN_12981 = commitCount > 3'h1 ? _GEN_12949 : _GEN_12917; // @[StoreQueue.scala 490:30]
  wire  _GEN_12982 = commitCount > 3'h1 ? _GEN_12950 : _GEN_12918; // @[StoreQueue.scala 490:30]
  wire  _GEN_12983 = commitCount > 3'h1 ? _GEN_12951 : _GEN_12919; // @[StoreQueue.scala 490:30]
  wire  _GEN_12984 = commitCount > 3'h1 ? _GEN_12952 : _GEN_12920; // @[StoreQueue.scala 490:30]
  wire  _GEN_12985 = 5'h0 == cmtPtrExt_2_value | _GEN_12953; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12986 = 5'h1 == cmtPtrExt_2_value | _GEN_12954; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12987 = 5'h2 == cmtPtrExt_2_value | _GEN_12955; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12988 = 5'h3 == cmtPtrExt_2_value | _GEN_12956; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12989 = 5'h4 == cmtPtrExt_2_value | _GEN_12957; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12990 = 5'h5 == cmtPtrExt_2_value | _GEN_12958; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12991 = 5'h6 == cmtPtrExt_2_value | _GEN_12959; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12992 = 5'h7 == cmtPtrExt_2_value | _GEN_12960; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12993 = 5'h8 == cmtPtrExt_2_value | _GEN_12961; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12994 = 5'h9 == cmtPtrExt_2_value | _GEN_12962; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12995 = 5'ha == cmtPtrExt_2_value | _GEN_12963; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12996 = 5'hb == cmtPtrExt_2_value | _GEN_12964; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12997 = 5'hc == cmtPtrExt_2_value | _GEN_12965; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12998 = 5'hd == cmtPtrExt_2_value | _GEN_12966; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_12999 = 5'he == cmtPtrExt_2_value | _GEN_12967; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13000 = 5'hf == cmtPtrExt_2_value | _GEN_12968; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13001 = 5'h10 == cmtPtrExt_2_value | _GEN_12969; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13002 = 5'h11 == cmtPtrExt_2_value | _GEN_12970; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13003 = 5'h12 == cmtPtrExt_2_value | _GEN_12971; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13004 = 5'h13 == cmtPtrExt_2_value | _GEN_12972; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13005 = 5'h14 == cmtPtrExt_2_value | _GEN_12973; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13006 = 5'h15 == cmtPtrExt_2_value | _GEN_12974; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13007 = 5'h16 == cmtPtrExt_2_value | _GEN_12975; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13008 = 5'h17 == cmtPtrExt_2_value | _GEN_12976; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13009 = 5'h18 == cmtPtrExt_2_value | _GEN_12977; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13010 = 5'h19 == cmtPtrExt_2_value | _GEN_12978; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13011 = 5'h1a == cmtPtrExt_2_value | _GEN_12979; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13012 = 5'h1b == cmtPtrExt_2_value | _GEN_12980; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13013 = 5'h1c == cmtPtrExt_2_value | _GEN_12981; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13014 = 5'h1d == cmtPtrExt_2_value | _GEN_12982; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13015 = 5'h1e == cmtPtrExt_2_value | _GEN_12983; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13016 = 5'h1f == cmtPtrExt_2_value | _GEN_12984; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13017 = commitCount > 3'h2 ? _GEN_12985 : _GEN_12953; // @[StoreQueue.scala 490:30]
  wire  _GEN_13018 = commitCount > 3'h2 ? _GEN_12986 : _GEN_12954; // @[StoreQueue.scala 490:30]
  wire  _GEN_13019 = commitCount > 3'h2 ? _GEN_12987 : _GEN_12955; // @[StoreQueue.scala 490:30]
  wire  _GEN_13020 = commitCount > 3'h2 ? _GEN_12988 : _GEN_12956; // @[StoreQueue.scala 490:30]
  wire  _GEN_13021 = commitCount > 3'h2 ? _GEN_12989 : _GEN_12957; // @[StoreQueue.scala 490:30]
  wire  _GEN_13022 = commitCount > 3'h2 ? _GEN_12990 : _GEN_12958; // @[StoreQueue.scala 490:30]
  wire  _GEN_13023 = commitCount > 3'h2 ? _GEN_12991 : _GEN_12959; // @[StoreQueue.scala 490:30]
  wire  _GEN_13024 = commitCount > 3'h2 ? _GEN_12992 : _GEN_12960; // @[StoreQueue.scala 490:30]
  wire  _GEN_13025 = commitCount > 3'h2 ? _GEN_12993 : _GEN_12961; // @[StoreQueue.scala 490:30]
  wire  _GEN_13026 = commitCount > 3'h2 ? _GEN_12994 : _GEN_12962; // @[StoreQueue.scala 490:30]
  wire  _GEN_13027 = commitCount > 3'h2 ? _GEN_12995 : _GEN_12963; // @[StoreQueue.scala 490:30]
  wire  _GEN_13028 = commitCount > 3'h2 ? _GEN_12996 : _GEN_12964; // @[StoreQueue.scala 490:30]
  wire  _GEN_13029 = commitCount > 3'h2 ? _GEN_12997 : _GEN_12965; // @[StoreQueue.scala 490:30]
  wire  _GEN_13030 = commitCount > 3'h2 ? _GEN_12998 : _GEN_12966; // @[StoreQueue.scala 490:30]
  wire  _GEN_13031 = commitCount > 3'h2 ? _GEN_12999 : _GEN_12967; // @[StoreQueue.scala 490:30]
  wire  _GEN_13032 = commitCount > 3'h2 ? _GEN_13000 : _GEN_12968; // @[StoreQueue.scala 490:30]
  wire  _GEN_13033 = commitCount > 3'h2 ? _GEN_13001 : _GEN_12969; // @[StoreQueue.scala 490:30]
  wire  _GEN_13034 = commitCount > 3'h2 ? _GEN_13002 : _GEN_12970; // @[StoreQueue.scala 490:30]
  wire  _GEN_13035 = commitCount > 3'h2 ? _GEN_13003 : _GEN_12971; // @[StoreQueue.scala 490:30]
  wire  _GEN_13036 = commitCount > 3'h2 ? _GEN_13004 : _GEN_12972; // @[StoreQueue.scala 490:30]
  wire  _GEN_13037 = commitCount > 3'h2 ? _GEN_13005 : _GEN_12973; // @[StoreQueue.scala 490:30]
  wire  _GEN_13038 = commitCount > 3'h2 ? _GEN_13006 : _GEN_12974; // @[StoreQueue.scala 490:30]
  wire  _GEN_13039 = commitCount > 3'h2 ? _GEN_13007 : _GEN_12975; // @[StoreQueue.scala 490:30]
  wire  _GEN_13040 = commitCount > 3'h2 ? _GEN_13008 : _GEN_12976; // @[StoreQueue.scala 490:30]
  wire  _GEN_13041 = commitCount > 3'h2 ? _GEN_13009 : _GEN_12977; // @[StoreQueue.scala 490:30]
  wire  _GEN_13042 = commitCount > 3'h2 ? _GEN_13010 : _GEN_12978; // @[StoreQueue.scala 490:30]
  wire  _GEN_13043 = commitCount > 3'h2 ? _GEN_13011 : _GEN_12979; // @[StoreQueue.scala 490:30]
  wire  _GEN_13044 = commitCount > 3'h2 ? _GEN_13012 : _GEN_12980; // @[StoreQueue.scala 490:30]
  wire  _GEN_13045 = commitCount > 3'h2 ? _GEN_13013 : _GEN_12981; // @[StoreQueue.scala 490:30]
  wire  _GEN_13046 = commitCount > 3'h2 ? _GEN_13014 : _GEN_12982; // @[StoreQueue.scala 490:30]
  wire  _GEN_13047 = commitCount > 3'h2 ? _GEN_13015 : _GEN_12983; // @[StoreQueue.scala 490:30]
  wire  _GEN_13048 = commitCount > 3'h2 ? _GEN_13016 : _GEN_12984; // @[StoreQueue.scala 490:30]
  wire  _GEN_13049 = 5'h0 == cmtPtrExt_3_value | _GEN_13017; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13050 = 5'h1 == cmtPtrExt_3_value | _GEN_13018; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13051 = 5'h2 == cmtPtrExt_3_value | _GEN_13019; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13052 = 5'h3 == cmtPtrExt_3_value | _GEN_13020; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13053 = 5'h4 == cmtPtrExt_3_value | _GEN_13021; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13054 = 5'h5 == cmtPtrExt_3_value | _GEN_13022; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13055 = 5'h6 == cmtPtrExt_3_value | _GEN_13023; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13056 = 5'h7 == cmtPtrExt_3_value | _GEN_13024; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13057 = 5'h8 == cmtPtrExt_3_value | _GEN_13025; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13058 = 5'h9 == cmtPtrExt_3_value | _GEN_13026; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13059 = 5'ha == cmtPtrExt_3_value | _GEN_13027; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13060 = 5'hb == cmtPtrExt_3_value | _GEN_13028; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13061 = 5'hc == cmtPtrExt_3_value | _GEN_13029; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13062 = 5'hd == cmtPtrExt_3_value | _GEN_13030; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13063 = 5'he == cmtPtrExt_3_value | _GEN_13031; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13064 = 5'hf == cmtPtrExt_3_value | _GEN_13032; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13065 = 5'h10 == cmtPtrExt_3_value | _GEN_13033; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13066 = 5'h11 == cmtPtrExt_3_value | _GEN_13034; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13067 = 5'h12 == cmtPtrExt_3_value | _GEN_13035; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13068 = 5'h13 == cmtPtrExt_3_value | _GEN_13036; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13069 = 5'h14 == cmtPtrExt_3_value | _GEN_13037; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13070 = 5'h15 == cmtPtrExt_3_value | _GEN_13038; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13071 = 5'h16 == cmtPtrExt_3_value | _GEN_13039; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13072 = 5'h17 == cmtPtrExt_3_value | _GEN_13040; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13073 = 5'h18 == cmtPtrExt_3_value | _GEN_13041; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13074 = 5'h19 == cmtPtrExt_3_value | _GEN_13042; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13075 = 5'h1a == cmtPtrExt_3_value | _GEN_13043; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13076 = 5'h1b == cmtPtrExt_3_value | _GEN_13044; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13077 = 5'h1c == cmtPtrExt_3_value | _GEN_13045; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13078 = 5'h1d == cmtPtrExt_3_value | _GEN_13046; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13079 = 5'h1e == cmtPtrExt_3_value | _GEN_13047; // @[StoreQueue.scala 498:{39,39}]
  wire  _GEN_13080 = 5'h1f == cmtPtrExt_3_value | _GEN_13048; // @[StoreQueue.scala 498:{39,39}]
  wire [5:0] _new_ptr_T_5 = {cmtPtrExt_1_flag,cmtPtrExt_1_value}; // @[Cat.scala 31:58]
  wire [5:0] _new_ptr_T_7 = _new_ptr_T_5 + _GEN_13507; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] new_ptr_1_value = _new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  new_ptr_1_flag = _new_ptr_T_7[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _new_ptr_T_10 = {cmtPtrExt_2_flag,cmtPtrExt_2_value}; // @[Cat.scala 31:58]
  wire [5:0] _new_ptr_T_12 = _new_ptr_T_10 + _GEN_13507; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] new_ptr_2_value = _new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  new_ptr_2_flag = _new_ptr_T_12[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _new_ptr_T_15 = {cmtPtrExt_3_flag,cmtPtrExt_3_value}; // @[Cat.scala 31:58]
  wire [5:0] _new_ptr_T_17 = _new_ptr_T_15 + _GEN_13507; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] new_ptr_3_value = _new_ptr_T_17[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  new_ptr_3_flag = _new_ptr_T_17[5]; // @[CircularQueuePtr.scala 40:59]
  wire  _GEN_13114 = 5'h1 == rdataPtrExt_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13115 = 5'h2 == rdataPtrExt_0_value ? allocated_2 : _GEN_13114; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13116 = 5'h3 == rdataPtrExt_0_value ? allocated_3 : _GEN_13115; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13117 = 5'h4 == rdataPtrExt_0_value ? allocated_4 : _GEN_13116; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13118 = 5'h5 == rdataPtrExt_0_value ? allocated_5 : _GEN_13117; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13119 = 5'h6 == rdataPtrExt_0_value ? allocated_6 : _GEN_13118; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13120 = 5'h7 == rdataPtrExt_0_value ? allocated_7 : _GEN_13119; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13121 = 5'h8 == rdataPtrExt_0_value ? allocated_8 : _GEN_13120; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13122 = 5'h9 == rdataPtrExt_0_value ? allocated_9 : _GEN_13121; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13123 = 5'ha == rdataPtrExt_0_value ? allocated_10 : _GEN_13122; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13124 = 5'hb == rdataPtrExt_0_value ? allocated_11 : _GEN_13123; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13125 = 5'hc == rdataPtrExt_0_value ? allocated_12 : _GEN_13124; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13126 = 5'hd == rdataPtrExt_0_value ? allocated_13 : _GEN_13125; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13127 = 5'he == rdataPtrExt_0_value ? allocated_14 : _GEN_13126; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13128 = 5'hf == rdataPtrExt_0_value ? allocated_15 : _GEN_13127; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13129 = 5'h10 == rdataPtrExt_0_value ? allocated_16 : _GEN_13128; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13130 = 5'h11 == rdataPtrExt_0_value ? allocated_17 : _GEN_13129; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13131 = 5'h12 == rdataPtrExt_0_value ? allocated_18 : _GEN_13130; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13132 = 5'h13 == rdataPtrExt_0_value ? allocated_19 : _GEN_13131; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13133 = 5'h14 == rdataPtrExt_0_value ? allocated_20 : _GEN_13132; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13134 = 5'h15 == rdataPtrExt_0_value ? allocated_21 : _GEN_13133; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13135 = 5'h16 == rdataPtrExt_0_value ? allocated_22 : _GEN_13134; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13136 = 5'h17 == rdataPtrExt_0_value ? allocated_23 : _GEN_13135; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13137 = 5'h18 == rdataPtrExt_0_value ? allocated_24 : _GEN_13136; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13138 = 5'h19 == rdataPtrExt_0_value ? allocated_25 : _GEN_13137; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13139 = 5'h1a == rdataPtrExt_0_value ? allocated_26 : _GEN_13138; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13140 = 5'h1b == rdataPtrExt_0_value ? allocated_27 : _GEN_13139; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13141 = 5'h1c == rdataPtrExt_0_value ? allocated_28 : _GEN_13140; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13142 = 5'h1d == rdataPtrExt_0_value ? allocated_29 : _GEN_13141; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13143 = 5'h1e == rdataPtrExt_0_value ? allocated_30 : _GEN_13142; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13144 = 5'h1f == rdataPtrExt_0_value ? allocated_31 : _GEN_13143; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13146 = 5'h1 == rdataPtrExt_0_value ? committed_1 : committed_0; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13147 = 5'h2 == rdataPtrExt_0_value ? committed_2 : _GEN_13146; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13148 = 5'h3 == rdataPtrExt_0_value ? committed_3 : _GEN_13147; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13149 = 5'h4 == rdataPtrExt_0_value ? committed_4 : _GEN_13148; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13150 = 5'h5 == rdataPtrExt_0_value ? committed_5 : _GEN_13149; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13151 = 5'h6 == rdataPtrExt_0_value ? committed_6 : _GEN_13150; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13152 = 5'h7 == rdataPtrExt_0_value ? committed_7 : _GEN_13151; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13153 = 5'h8 == rdataPtrExt_0_value ? committed_8 : _GEN_13152; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13154 = 5'h9 == rdataPtrExt_0_value ? committed_9 : _GEN_13153; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13155 = 5'ha == rdataPtrExt_0_value ? committed_10 : _GEN_13154; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13156 = 5'hb == rdataPtrExt_0_value ? committed_11 : _GEN_13155; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13157 = 5'hc == rdataPtrExt_0_value ? committed_12 : _GEN_13156; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13158 = 5'hd == rdataPtrExt_0_value ? committed_13 : _GEN_13157; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13159 = 5'he == rdataPtrExt_0_value ? committed_14 : _GEN_13158; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13160 = 5'hf == rdataPtrExt_0_value ? committed_15 : _GEN_13159; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13161 = 5'h10 == rdataPtrExt_0_value ? committed_16 : _GEN_13160; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13162 = 5'h11 == rdataPtrExt_0_value ? committed_17 : _GEN_13161; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13163 = 5'h12 == rdataPtrExt_0_value ? committed_18 : _GEN_13162; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13164 = 5'h13 == rdataPtrExt_0_value ? committed_19 : _GEN_13163; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13165 = 5'h14 == rdataPtrExt_0_value ? committed_20 : _GEN_13164; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13166 = 5'h15 == rdataPtrExt_0_value ? committed_21 : _GEN_13165; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13167 = 5'h16 == rdataPtrExt_0_value ? committed_22 : _GEN_13166; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13168 = 5'h17 == rdataPtrExt_0_value ? committed_23 : _GEN_13167; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13169 = 5'h18 == rdataPtrExt_0_value ? committed_24 : _GEN_13168; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13170 = 5'h19 == rdataPtrExt_0_value ? committed_25 : _GEN_13169; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13171 = 5'h1a == rdataPtrExt_0_value ? committed_26 : _GEN_13170; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13172 = 5'h1b == rdataPtrExt_0_value ? committed_27 : _GEN_13171; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13173 = 5'h1c == rdataPtrExt_0_value ? committed_28 : _GEN_13172; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13174 = 5'h1d == rdataPtrExt_0_value ? committed_29 : _GEN_13173; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13175 = 5'h1e == rdataPtrExt_0_value ? committed_30 : _GEN_13174; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13176 = 5'h1f == rdataPtrExt_0_value ? committed_31 : _GEN_13175; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13178 = 5'h1 == rdataPtrExt_0_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13179 = 5'h2 == rdataPtrExt_0_value ? mmio_2 : _GEN_13178; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13180 = 5'h3 == rdataPtrExt_0_value ? mmio_3 : _GEN_13179; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13181 = 5'h4 == rdataPtrExt_0_value ? mmio_4 : _GEN_13180; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13182 = 5'h5 == rdataPtrExt_0_value ? mmio_5 : _GEN_13181; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13183 = 5'h6 == rdataPtrExt_0_value ? mmio_6 : _GEN_13182; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13184 = 5'h7 == rdataPtrExt_0_value ? mmio_7 : _GEN_13183; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13185 = 5'h8 == rdataPtrExt_0_value ? mmio_8 : _GEN_13184; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13186 = 5'h9 == rdataPtrExt_0_value ? mmio_9 : _GEN_13185; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13187 = 5'ha == rdataPtrExt_0_value ? mmio_10 : _GEN_13186; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13188 = 5'hb == rdataPtrExt_0_value ? mmio_11 : _GEN_13187; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13189 = 5'hc == rdataPtrExt_0_value ? mmio_12 : _GEN_13188; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13190 = 5'hd == rdataPtrExt_0_value ? mmio_13 : _GEN_13189; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13191 = 5'he == rdataPtrExt_0_value ? mmio_14 : _GEN_13190; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13192 = 5'hf == rdataPtrExt_0_value ? mmio_15 : _GEN_13191; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13193 = 5'h10 == rdataPtrExt_0_value ? mmio_16 : _GEN_13192; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13194 = 5'h11 == rdataPtrExt_0_value ? mmio_17 : _GEN_13193; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13195 = 5'h12 == rdataPtrExt_0_value ? mmio_18 : _GEN_13194; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13196 = 5'h13 == rdataPtrExt_0_value ? mmio_19 : _GEN_13195; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13197 = 5'h14 == rdataPtrExt_0_value ? mmio_20 : _GEN_13196; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13198 = 5'h15 == rdataPtrExt_0_value ? mmio_21 : _GEN_13197; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13199 = 5'h16 == rdataPtrExt_0_value ? mmio_22 : _GEN_13198; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13200 = 5'h17 == rdataPtrExt_0_value ? mmio_23 : _GEN_13199; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13201 = 5'h18 == rdataPtrExt_0_value ? mmio_24 : _GEN_13200; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13202 = 5'h19 == rdataPtrExt_0_value ? mmio_25 : _GEN_13201; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13203 = 5'h1a == rdataPtrExt_0_value ? mmio_26 : _GEN_13202; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13204 = 5'h1b == rdataPtrExt_0_value ? mmio_27 : _GEN_13203; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13205 = 5'h1c == rdataPtrExt_0_value ? mmio_28 : _GEN_13204; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13206 = 5'h1d == rdataPtrExt_0_value ? mmio_29 : _GEN_13205; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13207 = 5'h1e == rdataPtrExt_0_value ? mmio_30 : _GEN_13206; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13208 = 5'h1f == rdataPtrExt_0_value ? mmio_31 : _GEN_13207; // @[StoreQueue.scala 514:{71,71}]
  wire  _GEN_13242 = 5'h1 == rdataPtrExt_1_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13243 = 5'h2 == rdataPtrExt_1_value ? allocated_2 : _GEN_13242; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13244 = 5'h3 == rdataPtrExt_1_value ? allocated_3 : _GEN_13243; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13245 = 5'h4 == rdataPtrExt_1_value ? allocated_4 : _GEN_13244; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13246 = 5'h5 == rdataPtrExt_1_value ? allocated_5 : _GEN_13245; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13247 = 5'h6 == rdataPtrExt_1_value ? allocated_6 : _GEN_13246; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13248 = 5'h7 == rdataPtrExt_1_value ? allocated_7 : _GEN_13247; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13249 = 5'h8 == rdataPtrExt_1_value ? allocated_8 : _GEN_13248; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13250 = 5'h9 == rdataPtrExt_1_value ? allocated_9 : _GEN_13249; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13251 = 5'ha == rdataPtrExt_1_value ? allocated_10 : _GEN_13250; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13252 = 5'hb == rdataPtrExt_1_value ? allocated_11 : _GEN_13251; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13253 = 5'hc == rdataPtrExt_1_value ? allocated_12 : _GEN_13252; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13254 = 5'hd == rdataPtrExt_1_value ? allocated_13 : _GEN_13253; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13255 = 5'he == rdataPtrExt_1_value ? allocated_14 : _GEN_13254; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13256 = 5'hf == rdataPtrExt_1_value ? allocated_15 : _GEN_13255; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13257 = 5'h10 == rdataPtrExt_1_value ? allocated_16 : _GEN_13256; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13258 = 5'h11 == rdataPtrExt_1_value ? allocated_17 : _GEN_13257; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13259 = 5'h12 == rdataPtrExt_1_value ? allocated_18 : _GEN_13258; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13260 = 5'h13 == rdataPtrExt_1_value ? allocated_19 : _GEN_13259; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13261 = 5'h14 == rdataPtrExt_1_value ? allocated_20 : _GEN_13260; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13262 = 5'h15 == rdataPtrExt_1_value ? allocated_21 : _GEN_13261; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13263 = 5'h16 == rdataPtrExt_1_value ? allocated_22 : _GEN_13262; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13264 = 5'h17 == rdataPtrExt_1_value ? allocated_23 : _GEN_13263; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13265 = 5'h18 == rdataPtrExt_1_value ? allocated_24 : _GEN_13264; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13266 = 5'h19 == rdataPtrExt_1_value ? allocated_25 : _GEN_13265; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13267 = 5'h1a == rdataPtrExt_1_value ? allocated_26 : _GEN_13266; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13268 = 5'h1b == rdataPtrExt_1_value ? allocated_27 : _GEN_13267; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13269 = 5'h1c == rdataPtrExt_1_value ? allocated_28 : _GEN_13268; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13270 = 5'h1d == rdataPtrExt_1_value ? allocated_29 : _GEN_13269; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13271 = 5'h1e == rdataPtrExt_1_value ? allocated_30 : _GEN_13270; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13272 = 5'h1f == rdataPtrExt_1_value ? allocated_31 : _GEN_13271; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13274 = 5'h1 == rdataPtrExt_1_value ? committed_1 : committed_0; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13275 = 5'h2 == rdataPtrExt_1_value ? committed_2 : _GEN_13274; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13276 = 5'h3 == rdataPtrExt_1_value ? committed_3 : _GEN_13275; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13277 = 5'h4 == rdataPtrExt_1_value ? committed_4 : _GEN_13276; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13278 = 5'h5 == rdataPtrExt_1_value ? committed_5 : _GEN_13277; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13279 = 5'h6 == rdataPtrExt_1_value ? committed_6 : _GEN_13278; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13280 = 5'h7 == rdataPtrExt_1_value ? committed_7 : _GEN_13279; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13281 = 5'h8 == rdataPtrExt_1_value ? committed_8 : _GEN_13280; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13282 = 5'h9 == rdataPtrExt_1_value ? committed_9 : _GEN_13281; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13283 = 5'ha == rdataPtrExt_1_value ? committed_10 : _GEN_13282; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13284 = 5'hb == rdataPtrExt_1_value ? committed_11 : _GEN_13283; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13285 = 5'hc == rdataPtrExt_1_value ? committed_12 : _GEN_13284; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13286 = 5'hd == rdataPtrExt_1_value ? committed_13 : _GEN_13285; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13287 = 5'he == rdataPtrExt_1_value ? committed_14 : _GEN_13286; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13288 = 5'hf == rdataPtrExt_1_value ? committed_15 : _GEN_13287; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13289 = 5'h10 == rdataPtrExt_1_value ? committed_16 : _GEN_13288; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13290 = 5'h11 == rdataPtrExt_1_value ? committed_17 : _GEN_13289; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13291 = 5'h12 == rdataPtrExt_1_value ? committed_18 : _GEN_13290; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13292 = 5'h13 == rdataPtrExt_1_value ? committed_19 : _GEN_13291; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13293 = 5'h14 == rdataPtrExt_1_value ? committed_20 : _GEN_13292; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13294 = 5'h15 == rdataPtrExt_1_value ? committed_21 : _GEN_13293; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13295 = 5'h16 == rdataPtrExt_1_value ? committed_22 : _GEN_13294; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13296 = 5'h17 == rdataPtrExt_1_value ? committed_23 : _GEN_13295; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13297 = 5'h18 == rdataPtrExt_1_value ? committed_24 : _GEN_13296; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13298 = 5'h19 == rdataPtrExt_1_value ? committed_25 : _GEN_13297; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13299 = 5'h1a == rdataPtrExt_1_value ? committed_26 : _GEN_13298; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13300 = 5'h1b == rdataPtrExt_1_value ? committed_27 : _GEN_13299; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13301 = 5'h1c == rdataPtrExt_1_value ? committed_28 : _GEN_13300; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13302 = 5'h1d == rdataPtrExt_1_value ? committed_29 : _GEN_13301; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13303 = 5'h1e == rdataPtrExt_1_value ? committed_30 : _GEN_13302; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13304 = 5'h1f == rdataPtrExt_1_value ? committed_31 : _GEN_13303; // @[StoreQueue.scala 514:{50,50}]
  wire  _GEN_13337 = 5'h0 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12793; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13338 = 5'h1 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12794; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13339 = 5'h2 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12795; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13340 = 5'h3 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12796; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13341 = 5'h4 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12797; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13342 = 5'h5 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12798; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13343 = 5'h6 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12799; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13344 = 5'h7 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12800; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13345 = 5'h8 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12801; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13346 = 5'h9 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12802; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13347 = 5'ha == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12803; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13348 = 5'hb == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12804; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13349 = 5'hc == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12805; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13350 = 5'hd == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12806; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13351 = 5'he == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12807; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13352 = 5'hf == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12808; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13353 = 5'h10 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12809; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13354 = 5'h11 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12810; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13355 = 5'h12 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12811; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13356 = 5'h13 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12812; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13357 = 5'h14 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12813; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13358 = 5'h15 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12814; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13359 = 5'h16 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12815; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13360 = 5'h17 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12816; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13361 = 5'h18 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12817; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13362 = 5'h19 == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12818; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13363 = 5'h1a == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12819; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13364 = 5'h1b == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12820; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13365 = 5'h1c == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12821; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13366 = 5'h1d == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12822; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13367 = 5'h1e == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12823; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13368 = 5'h1f == dataBuffer_io_deq_0_bits_sqPtr_value ? 1'h0 : _GEN_12824; // @[StoreQueue.scala 542:{22,22}]
  wire  _GEN_13369 = _deqPtrExtNext_T ? _GEN_13337 : _GEN_12793; // @[StoreQueue.scala 541:33]
  wire  _GEN_13370 = _deqPtrExtNext_T ? _GEN_13338 : _GEN_12794; // @[StoreQueue.scala 541:33]
  wire  _GEN_13371 = _deqPtrExtNext_T ? _GEN_13339 : _GEN_12795; // @[StoreQueue.scala 541:33]
  wire  _GEN_13372 = _deqPtrExtNext_T ? _GEN_13340 : _GEN_12796; // @[StoreQueue.scala 541:33]
  wire  _GEN_13373 = _deqPtrExtNext_T ? _GEN_13341 : _GEN_12797; // @[StoreQueue.scala 541:33]
  wire  _GEN_13374 = _deqPtrExtNext_T ? _GEN_13342 : _GEN_12798; // @[StoreQueue.scala 541:33]
  wire  _GEN_13375 = _deqPtrExtNext_T ? _GEN_13343 : _GEN_12799; // @[StoreQueue.scala 541:33]
  wire  _GEN_13376 = _deqPtrExtNext_T ? _GEN_13344 : _GEN_12800; // @[StoreQueue.scala 541:33]
  wire  _GEN_13377 = _deqPtrExtNext_T ? _GEN_13345 : _GEN_12801; // @[StoreQueue.scala 541:33]
  wire  _GEN_13378 = _deqPtrExtNext_T ? _GEN_13346 : _GEN_12802; // @[StoreQueue.scala 541:33]
  wire  _GEN_13379 = _deqPtrExtNext_T ? _GEN_13347 : _GEN_12803; // @[StoreQueue.scala 541:33]
  wire  _GEN_13380 = _deqPtrExtNext_T ? _GEN_13348 : _GEN_12804; // @[StoreQueue.scala 541:33]
  wire  _GEN_13381 = _deqPtrExtNext_T ? _GEN_13349 : _GEN_12805; // @[StoreQueue.scala 541:33]
  wire  _GEN_13382 = _deqPtrExtNext_T ? _GEN_13350 : _GEN_12806; // @[StoreQueue.scala 541:33]
  wire  _GEN_13383 = _deqPtrExtNext_T ? _GEN_13351 : _GEN_12807; // @[StoreQueue.scala 541:33]
  wire  _GEN_13384 = _deqPtrExtNext_T ? _GEN_13352 : _GEN_12808; // @[StoreQueue.scala 541:33]
  wire  _GEN_13385 = _deqPtrExtNext_T ? _GEN_13353 : _GEN_12809; // @[StoreQueue.scala 541:33]
  wire  _GEN_13386 = _deqPtrExtNext_T ? _GEN_13354 : _GEN_12810; // @[StoreQueue.scala 541:33]
  wire  _GEN_13387 = _deqPtrExtNext_T ? _GEN_13355 : _GEN_12811; // @[StoreQueue.scala 541:33]
  wire  _GEN_13388 = _deqPtrExtNext_T ? _GEN_13356 : _GEN_12812; // @[StoreQueue.scala 541:33]
  wire  _GEN_13389 = _deqPtrExtNext_T ? _GEN_13357 : _GEN_12813; // @[StoreQueue.scala 541:33]
  wire  _GEN_13390 = _deqPtrExtNext_T ? _GEN_13358 : _GEN_12814; // @[StoreQueue.scala 541:33]
  wire  _GEN_13391 = _deqPtrExtNext_T ? _GEN_13359 : _GEN_12815; // @[StoreQueue.scala 541:33]
  wire  _GEN_13392 = _deqPtrExtNext_T ? _GEN_13360 : _GEN_12816; // @[StoreQueue.scala 541:33]
  wire  _GEN_13393 = _deqPtrExtNext_T ? _GEN_13361 : _GEN_12817; // @[StoreQueue.scala 541:33]
  wire  _GEN_13394 = _deqPtrExtNext_T ? _GEN_13362 : _GEN_12818; // @[StoreQueue.scala 541:33]
  wire  _GEN_13395 = _deqPtrExtNext_T ? _GEN_13363 : _GEN_12819; // @[StoreQueue.scala 541:33]
  wire  _GEN_13396 = _deqPtrExtNext_T ? _GEN_13364 : _GEN_12820; // @[StoreQueue.scala 541:33]
  wire  _GEN_13397 = _deqPtrExtNext_T ? _GEN_13365 : _GEN_12821; // @[StoreQueue.scala 541:33]
  wire  _GEN_13398 = _deqPtrExtNext_T ? _GEN_13366 : _GEN_12822; // @[StoreQueue.scala 541:33]
  wire  _GEN_13399 = _deqPtrExtNext_T ? _GEN_13367 : _GEN_12823; // @[StoreQueue.scala 541:33]
  wire  _GEN_13400 = _deqPtrExtNext_T ? _GEN_13368 : _GEN_12824; // @[StoreQueue.scala 541:33]
  wire [7:0] _needCancel_0_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_0_flushItself_T_3 = _needCancel_0_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_0_flushItself = io_brqRedirect_bits_level & _needCancel_0_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_0_differentFlag = uop_0_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_0_compare = uop_0_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_0_T = needCancel_0_differentFlag ^ needCancel_0_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_0_T_2 = io_brqRedirect_valid & (needCancel_0_flushItself | _needCancel_0_T); // @[Rob.scala 36:20]
  wire  needCancel_0 = _needCancel_0_T_2 & allocated_0 & ~committed_0; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_1_flushItself_T_1 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_1_flushItself_T_3 = _needCancel_1_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_1_flushItself = io_brqRedirect_bits_level & _needCancel_1_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_1_differentFlag = uop_1_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_1_compare = uop_1_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_1_T = needCancel_1_differentFlag ^ needCancel_1_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_1_T_2 = io_brqRedirect_valid & (needCancel_1_flushItself | _needCancel_1_T); // @[Rob.scala 36:20]
  wire  needCancel_1 = _needCancel_1_T_2 & allocated_1 & ~committed_1; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_2_flushItself_T_1 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_2_flushItself_T_3 = _needCancel_2_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_2_flushItself = io_brqRedirect_bits_level & _needCancel_2_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_2_differentFlag = uop_2_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_2_compare = uop_2_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_2_T = needCancel_2_differentFlag ^ needCancel_2_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_2_T_2 = io_brqRedirect_valid & (needCancel_2_flushItself | _needCancel_2_T); // @[Rob.scala 36:20]
  wire  needCancel_2 = _needCancel_2_T_2 & allocated_2 & ~committed_2; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_3_flushItself_T_1 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_3_flushItself_T_3 = _needCancel_3_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_3_flushItself = io_brqRedirect_bits_level & _needCancel_3_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_3_differentFlag = uop_3_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_3_compare = uop_3_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_3_T = needCancel_3_differentFlag ^ needCancel_3_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_3_T_2 = io_brqRedirect_valid & (needCancel_3_flushItself | _needCancel_3_T); // @[Rob.scala 36:20]
  wire  needCancel_3 = _needCancel_3_T_2 & allocated_3 & ~committed_3; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_4_flushItself_T_1 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_4_flushItself_T_3 = _needCancel_4_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_4_flushItself = io_brqRedirect_bits_level & _needCancel_4_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_4_differentFlag = uop_4_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_4_compare = uop_4_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_4_T = needCancel_4_differentFlag ^ needCancel_4_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_4_T_2 = io_brqRedirect_valid & (needCancel_4_flushItself | _needCancel_4_T); // @[Rob.scala 36:20]
  wire  needCancel_4 = _needCancel_4_T_2 & allocated_4 & ~committed_4; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_5_flushItself_T_1 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_5_flushItself_T_3 = _needCancel_5_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_5_flushItself = io_brqRedirect_bits_level & _needCancel_5_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_5_differentFlag = uop_5_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_5_compare = uop_5_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_5_T = needCancel_5_differentFlag ^ needCancel_5_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_5_T_2 = io_brqRedirect_valid & (needCancel_5_flushItself | _needCancel_5_T); // @[Rob.scala 36:20]
  wire  needCancel_5 = _needCancel_5_T_2 & allocated_5 & ~committed_5; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_6_flushItself_T_1 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_6_flushItself_T_3 = _needCancel_6_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_6_flushItself = io_brqRedirect_bits_level & _needCancel_6_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_6_differentFlag = uop_6_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_6_compare = uop_6_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_6_T = needCancel_6_differentFlag ^ needCancel_6_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_6_T_2 = io_brqRedirect_valid & (needCancel_6_flushItself | _needCancel_6_T); // @[Rob.scala 36:20]
  wire  needCancel_6 = _needCancel_6_T_2 & allocated_6 & ~committed_6; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_7_flushItself_T_1 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_7_flushItself_T_3 = _needCancel_7_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_7_flushItself = io_brqRedirect_bits_level & _needCancel_7_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_7_differentFlag = uop_7_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_7_compare = uop_7_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_7_T = needCancel_7_differentFlag ^ needCancel_7_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_7_T_2 = io_brqRedirect_valid & (needCancel_7_flushItself | _needCancel_7_T); // @[Rob.scala 36:20]
  wire  needCancel_7 = _needCancel_7_T_2 & allocated_7 & ~committed_7; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_8_flushItself_T_1 = {uop_8_robIdx_flag,uop_8_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_8_flushItself_T_3 = _needCancel_8_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_8_flushItself = io_brqRedirect_bits_level & _needCancel_8_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_8_differentFlag = uop_8_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_8_compare = uop_8_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_8_T = needCancel_8_differentFlag ^ needCancel_8_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_8_T_2 = io_brqRedirect_valid & (needCancel_8_flushItself | _needCancel_8_T); // @[Rob.scala 36:20]
  wire  needCancel_8 = _needCancel_8_T_2 & allocated_8 & ~committed_8; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_9_flushItself_T_1 = {uop_9_robIdx_flag,uop_9_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_9_flushItself_T_3 = _needCancel_9_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_9_flushItself = io_brqRedirect_bits_level & _needCancel_9_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_9_differentFlag = uop_9_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_9_compare = uop_9_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_9_T = needCancel_9_differentFlag ^ needCancel_9_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_9_T_2 = io_brqRedirect_valid & (needCancel_9_flushItself | _needCancel_9_T); // @[Rob.scala 36:20]
  wire  needCancel_9 = _needCancel_9_T_2 & allocated_9 & ~committed_9; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_10_flushItself_T_1 = {uop_10_robIdx_flag,uop_10_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_10_flushItself_T_3 = _needCancel_10_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_10_flushItself = io_brqRedirect_bits_level & _needCancel_10_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_10_differentFlag = uop_10_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_10_compare = uop_10_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_10_T = needCancel_10_differentFlag ^ needCancel_10_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_10_T_2 = io_brqRedirect_valid & (needCancel_10_flushItself | _needCancel_10_T); // @[Rob.scala 36:20]
  wire  needCancel_10 = _needCancel_10_T_2 & allocated_10 & ~committed_10; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_11_flushItself_T_1 = {uop_11_robIdx_flag,uop_11_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_11_flushItself_T_3 = _needCancel_11_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_11_flushItself = io_brqRedirect_bits_level & _needCancel_11_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_11_differentFlag = uop_11_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_11_compare = uop_11_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_11_T = needCancel_11_differentFlag ^ needCancel_11_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_11_T_2 = io_brqRedirect_valid & (needCancel_11_flushItself | _needCancel_11_T); // @[Rob.scala 36:20]
  wire  needCancel_11 = _needCancel_11_T_2 & allocated_11 & ~committed_11; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_12_flushItself_T_1 = {uop_12_robIdx_flag,uop_12_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_12_flushItself_T_3 = _needCancel_12_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_12_flushItself = io_brqRedirect_bits_level & _needCancel_12_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_12_differentFlag = uop_12_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_12_compare = uop_12_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_12_T = needCancel_12_differentFlag ^ needCancel_12_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_12_T_2 = io_brqRedirect_valid & (needCancel_12_flushItself | _needCancel_12_T); // @[Rob.scala 36:20]
  wire  needCancel_12 = _needCancel_12_T_2 & allocated_12 & ~committed_12; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_13_flushItself_T_1 = {uop_13_robIdx_flag,uop_13_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_13_flushItself_T_3 = _needCancel_13_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_13_flushItself = io_brqRedirect_bits_level & _needCancel_13_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_13_differentFlag = uop_13_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_13_compare = uop_13_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_13_T = needCancel_13_differentFlag ^ needCancel_13_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_13_T_2 = io_brqRedirect_valid & (needCancel_13_flushItself | _needCancel_13_T); // @[Rob.scala 36:20]
  wire  needCancel_13 = _needCancel_13_T_2 & allocated_13 & ~committed_13; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_14_flushItself_T_1 = {uop_14_robIdx_flag,uop_14_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_14_flushItself_T_3 = _needCancel_14_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_14_flushItself = io_brqRedirect_bits_level & _needCancel_14_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_14_differentFlag = uop_14_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_14_compare = uop_14_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_14_T = needCancel_14_differentFlag ^ needCancel_14_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_14_T_2 = io_brqRedirect_valid & (needCancel_14_flushItself | _needCancel_14_T); // @[Rob.scala 36:20]
  wire  needCancel_14 = _needCancel_14_T_2 & allocated_14 & ~committed_14; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_15_flushItself_T_1 = {uop_15_robIdx_flag,uop_15_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_15_flushItself_T_3 = _needCancel_15_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_15_flushItself = io_brqRedirect_bits_level & _needCancel_15_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_15_differentFlag = uop_15_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_15_compare = uop_15_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_15_T = needCancel_15_differentFlag ^ needCancel_15_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_15_T_2 = io_brqRedirect_valid & (needCancel_15_flushItself | _needCancel_15_T); // @[Rob.scala 36:20]
  wire  needCancel_15 = _needCancel_15_T_2 & allocated_15 & ~committed_15; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_16_flushItself_T_1 = {uop_16_robIdx_flag,uop_16_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_16_flushItself_T_3 = _needCancel_16_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_16_flushItself = io_brqRedirect_bits_level & _needCancel_16_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_16_differentFlag = uop_16_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_16_compare = uop_16_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_16_T = needCancel_16_differentFlag ^ needCancel_16_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_16_T_2 = io_brqRedirect_valid & (needCancel_16_flushItself | _needCancel_16_T); // @[Rob.scala 36:20]
  wire  needCancel_16 = _needCancel_16_T_2 & allocated_16 & ~committed_16; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_17_flushItself_T_1 = {uop_17_robIdx_flag,uop_17_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_17_flushItself_T_3 = _needCancel_17_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_17_flushItself = io_brqRedirect_bits_level & _needCancel_17_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_17_differentFlag = uop_17_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_17_compare = uop_17_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_17_T = needCancel_17_differentFlag ^ needCancel_17_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_17_T_2 = io_brqRedirect_valid & (needCancel_17_flushItself | _needCancel_17_T); // @[Rob.scala 36:20]
  wire  needCancel_17 = _needCancel_17_T_2 & allocated_17 & ~committed_17; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_18_flushItself_T_1 = {uop_18_robIdx_flag,uop_18_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_18_flushItself_T_3 = _needCancel_18_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_18_flushItself = io_brqRedirect_bits_level & _needCancel_18_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_18_differentFlag = uop_18_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_18_compare = uop_18_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_18_T = needCancel_18_differentFlag ^ needCancel_18_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_18_T_2 = io_brqRedirect_valid & (needCancel_18_flushItself | _needCancel_18_T); // @[Rob.scala 36:20]
  wire  needCancel_18 = _needCancel_18_T_2 & allocated_18 & ~committed_18; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_19_flushItself_T_1 = {uop_19_robIdx_flag,uop_19_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_19_flushItself_T_3 = _needCancel_19_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_19_flushItself = io_brqRedirect_bits_level & _needCancel_19_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_19_differentFlag = uop_19_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_19_compare = uop_19_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_19_T = needCancel_19_differentFlag ^ needCancel_19_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_19_T_2 = io_brqRedirect_valid & (needCancel_19_flushItself | _needCancel_19_T); // @[Rob.scala 36:20]
  wire  needCancel_19 = _needCancel_19_T_2 & allocated_19 & ~committed_19; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_20_flushItself_T_1 = {uop_20_robIdx_flag,uop_20_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_20_flushItself_T_3 = _needCancel_20_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_20_flushItself = io_brqRedirect_bits_level & _needCancel_20_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_20_differentFlag = uop_20_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_20_compare = uop_20_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_20_T = needCancel_20_differentFlag ^ needCancel_20_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_20_T_2 = io_brqRedirect_valid & (needCancel_20_flushItself | _needCancel_20_T); // @[Rob.scala 36:20]
  wire  needCancel_20 = _needCancel_20_T_2 & allocated_20 & ~committed_20; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_21_flushItself_T_1 = {uop_21_robIdx_flag,uop_21_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_21_flushItself_T_3 = _needCancel_21_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_21_flushItself = io_brqRedirect_bits_level & _needCancel_21_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_21_differentFlag = uop_21_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_21_compare = uop_21_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_21_T = needCancel_21_differentFlag ^ needCancel_21_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_21_T_2 = io_brqRedirect_valid & (needCancel_21_flushItself | _needCancel_21_T); // @[Rob.scala 36:20]
  wire  needCancel_21 = _needCancel_21_T_2 & allocated_21 & ~committed_21; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_22_flushItself_T_1 = {uop_22_robIdx_flag,uop_22_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_22_flushItself_T_3 = _needCancel_22_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_22_flushItself = io_brqRedirect_bits_level & _needCancel_22_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_22_differentFlag = uop_22_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_22_compare = uop_22_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_22_T = needCancel_22_differentFlag ^ needCancel_22_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_22_T_2 = io_brqRedirect_valid & (needCancel_22_flushItself | _needCancel_22_T); // @[Rob.scala 36:20]
  wire  needCancel_22 = _needCancel_22_T_2 & allocated_22 & ~committed_22; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_23_flushItself_T_1 = {uop_23_robIdx_flag,uop_23_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_23_flushItself_T_3 = _needCancel_23_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_23_flushItself = io_brqRedirect_bits_level & _needCancel_23_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_23_differentFlag = uop_23_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_23_compare = uop_23_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_23_T = needCancel_23_differentFlag ^ needCancel_23_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_23_T_2 = io_brqRedirect_valid & (needCancel_23_flushItself | _needCancel_23_T); // @[Rob.scala 36:20]
  wire  needCancel_23 = _needCancel_23_T_2 & allocated_23 & ~committed_23; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_24_flushItself_T_1 = {uop_24_robIdx_flag,uop_24_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_24_flushItself_T_3 = _needCancel_24_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_24_flushItself = io_brqRedirect_bits_level & _needCancel_24_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_24_differentFlag = uop_24_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_24_compare = uop_24_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_24_T = needCancel_24_differentFlag ^ needCancel_24_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_24_T_2 = io_brqRedirect_valid & (needCancel_24_flushItself | _needCancel_24_T); // @[Rob.scala 36:20]
  wire  needCancel_24 = _needCancel_24_T_2 & allocated_24 & ~committed_24; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_25_flushItself_T_1 = {uop_25_robIdx_flag,uop_25_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_25_flushItself_T_3 = _needCancel_25_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_25_flushItself = io_brqRedirect_bits_level & _needCancel_25_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_25_differentFlag = uop_25_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_25_compare = uop_25_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_25_T = needCancel_25_differentFlag ^ needCancel_25_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_25_T_2 = io_brqRedirect_valid & (needCancel_25_flushItself | _needCancel_25_T); // @[Rob.scala 36:20]
  wire  needCancel_25 = _needCancel_25_T_2 & allocated_25 & ~committed_25; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_26_flushItself_T_1 = {uop_26_robIdx_flag,uop_26_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_26_flushItself_T_3 = _needCancel_26_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_26_flushItself = io_brqRedirect_bits_level & _needCancel_26_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_26_differentFlag = uop_26_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_26_compare = uop_26_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_26_T = needCancel_26_differentFlag ^ needCancel_26_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_26_T_2 = io_brqRedirect_valid & (needCancel_26_flushItself | _needCancel_26_T); // @[Rob.scala 36:20]
  wire  needCancel_26 = _needCancel_26_T_2 & allocated_26 & ~committed_26; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_27_flushItself_T_1 = {uop_27_robIdx_flag,uop_27_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_27_flushItself_T_3 = _needCancel_27_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_27_flushItself = io_brqRedirect_bits_level & _needCancel_27_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_27_differentFlag = uop_27_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_27_compare = uop_27_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_27_T = needCancel_27_differentFlag ^ needCancel_27_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_27_T_2 = io_brqRedirect_valid & (needCancel_27_flushItself | _needCancel_27_T); // @[Rob.scala 36:20]
  wire  needCancel_27 = _needCancel_27_T_2 & allocated_27 & ~committed_27; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_28_flushItself_T_1 = {uop_28_robIdx_flag,uop_28_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_28_flushItself_T_3 = _needCancel_28_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_28_flushItself = io_brqRedirect_bits_level & _needCancel_28_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_28_differentFlag = uop_28_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_28_compare = uop_28_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_28_T = needCancel_28_differentFlag ^ needCancel_28_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_28_T_2 = io_brqRedirect_valid & (needCancel_28_flushItself | _needCancel_28_T); // @[Rob.scala 36:20]
  wire  needCancel_28 = _needCancel_28_T_2 & allocated_28 & ~committed_28; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_29_flushItself_T_1 = {uop_29_robIdx_flag,uop_29_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_29_flushItself_T_3 = _needCancel_29_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_29_flushItself = io_brqRedirect_bits_level & _needCancel_29_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_29_differentFlag = uop_29_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_29_compare = uop_29_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_29_T = needCancel_29_differentFlag ^ needCancel_29_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_29_T_2 = io_brqRedirect_valid & (needCancel_29_flushItself | _needCancel_29_T); // @[Rob.scala 36:20]
  wire  needCancel_29 = _needCancel_29_T_2 & allocated_29 & ~committed_29; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_30_flushItself_T_1 = {uop_30_robIdx_flag,uop_30_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_30_flushItself_T_3 = _needCancel_30_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_30_flushItself = io_brqRedirect_bits_level & _needCancel_30_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_30_differentFlag = uop_30_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_30_compare = uop_30_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_30_T = needCancel_30_differentFlag ^ needCancel_30_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_30_T_2 = io_brqRedirect_valid & (needCancel_30_flushItself | _needCancel_30_T); // @[Rob.scala 36:20]
  wire  needCancel_30 = _needCancel_30_T_2 & allocated_30 & ~committed_30; // @[StoreQueue.scala 586:78]
  wire [7:0] _needCancel_31_flushItself_T_1 = {uop_31_robIdx_flag,uop_31_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _needCancel_31_flushItself_T_3 = _needCancel_31_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  needCancel_31_flushItself = io_brqRedirect_bits_level & _needCancel_31_flushItself_T_3; // @[Rob.scala 35:51]
  wire  needCancel_31_differentFlag = uop_31_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  needCancel_31_compare = uop_31_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _needCancel_31_T = needCancel_31_differentFlag ^ needCancel_31_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _needCancel_31_T_2 = io_brqRedirect_valid & (needCancel_31_flushItself | _needCancel_31_T); // @[Rob.scala 36:20]
  wire  needCancel_31 = _needCancel_31_T_2 & allocated_31 & ~committed_31; // @[StoreQueue.scala 586:78]
  reg  lastEnqCancel_REG_0; // @[StoreQueue.scala 595:39]
  reg  lastEnqCancel_REG_1; // @[StoreQueue.scala 595:39]
  reg  lastEnqCancel_REG_2; // @[StoreQueue.scala 595:39]
  reg  lastEnqCancel_REG_3; // @[StoreQueue.scala 595:39]
  wire [1:0] _lastEnqCancel_T_4 = lastEnqCancel_REG_0 + lastEnqCancel_REG_1; // @[Bitwise.scala 48:55]
  wire [1:0] _lastEnqCancel_T_6 = lastEnqCancel_REG_2 + lastEnqCancel_REG_3; // @[Bitwise.scala 48:55]
  wire [2:0] lastEnqCancel = _lastEnqCancel_T_4 + _lastEnqCancel_T_6; // @[Bitwise.scala 48:55]
  reg  lastCycleRedirect; // @[StoreQueue.scala 596:34]
  reg  lastCycleCancelCount_REG_0; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_1; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_2; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_3; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_4; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_5; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_6; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_7; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_8; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_9; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_10; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_11; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_12; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_13; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_14; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_15; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_16; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_17; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_18; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_19; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_20; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_21; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_22; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_23; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_24; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_25; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_26; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_27; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_28; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_29; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_30; // @[StoreQueue.scala 597:46]
  reg  lastCycleCancelCount_REG_31; // @[StoreQueue.scala 597:46]
  wire [1:0] _lastCycleCancelCount_T = lastCycleCancelCount_REG_0 + lastCycleCancelCount_REG_1; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_2 = lastCycleCancelCount_REG_2 + lastCycleCancelCount_REG_3; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_4 = _lastCycleCancelCount_T + _lastCycleCancelCount_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_6 = lastCycleCancelCount_REG_4 + lastCycleCancelCount_REG_5; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_8 = lastCycleCancelCount_REG_6 + lastCycleCancelCount_REG_7; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_10 = _lastCycleCancelCount_T_6 + _lastCycleCancelCount_T_8; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_12 = _lastCycleCancelCount_T_4 + _lastCycleCancelCount_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_14 = lastCycleCancelCount_REG_8 + lastCycleCancelCount_REG_9; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_16 = lastCycleCancelCount_REG_10 + lastCycleCancelCount_REG_11; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_18 = _lastCycleCancelCount_T_14 + _lastCycleCancelCount_T_16; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_20 = lastCycleCancelCount_REG_12 + lastCycleCancelCount_REG_13; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_22 = lastCycleCancelCount_REG_14 + lastCycleCancelCount_REG_15; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_24 = _lastCycleCancelCount_T_20 + _lastCycleCancelCount_T_22; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_26 = _lastCycleCancelCount_T_18 + _lastCycleCancelCount_T_24; // @[Bitwise.scala 48:55]
  wire [4:0] _lastCycleCancelCount_T_28 = _lastCycleCancelCount_T_12 + _lastCycleCancelCount_T_26; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_30 = lastCycleCancelCount_REG_16 + lastCycleCancelCount_REG_17; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_32 = lastCycleCancelCount_REG_18 + lastCycleCancelCount_REG_19; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_34 = _lastCycleCancelCount_T_30 + _lastCycleCancelCount_T_32; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_36 = lastCycleCancelCount_REG_20 + lastCycleCancelCount_REG_21; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_38 = lastCycleCancelCount_REG_22 + lastCycleCancelCount_REG_23; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_40 = _lastCycleCancelCount_T_36 + _lastCycleCancelCount_T_38; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_42 = _lastCycleCancelCount_T_34 + _lastCycleCancelCount_T_40; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_44 = lastCycleCancelCount_REG_24 + lastCycleCancelCount_REG_25; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_46 = lastCycleCancelCount_REG_26 + lastCycleCancelCount_REG_27; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_48 = _lastCycleCancelCount_T_44 + _lastCycleCancelCount_T_46; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_50 = lastCycleCancelCount_REG_28 + lastCycleCancelCount_REG_29; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_52 = lastCycleCancelCount_REG_30 + lastCycleCancelCount_REG_31; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_54 = _lastCycleCancelCount_T_50 + _lastCycleCancelCount_T_52; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_56 = _lastCycleCancelCount_T_48 + _lastCycleCancelCount_T_54; // @[Bitwise.scala 48:55]
  wire [4:0] _lastCycleCancelCount_T_58 = _lastCycleCancelCount_T_42 + _lastCycleCancelCount_T_56; // @[Bitwise.scala 48:55]
  wire [5:0] lastCycleCancelCount = _lastCycleCancelCount_T_28 + _lastCycleCancelCount_T_58; // @[Bitwise.scala 48:55]
  wire [1:0] _enqNumber_T_1 = io_enq_req_0_valid + io_enq_req_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _enqNumber_T_3 = io_enq_req_2_valid + io_enq_req_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _enqNumber_T_5 = _enqNumber_T_1 + _enqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [2:0] enqNumber = io_enq_canAccept & io_enq_lqCanAccept ? _enqNumber_T_5 : 3'h0; // @[StoreQueue.scala 598:22]
  wire [5:0] _GEN_13838 = {{3'd0}, lastEnqCancel}; // @[StoreQueue.scala 601:66]
  wire [5:0] _T_102 = lastCycleCancelCount + _GEN_13838; // @[StoreQueue.scala 601:66]
  wire [5:0] _flipped_new_ptr_T_1 = 6'h20 - _T_102; // @[CircularQueuePtr.scala 55:50]
  wire [5:0] _flipped_new_ptr_new_ptr_T_2 = _issueLookup_T_3 + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] flipped_new_ptr_value = _flipped_new_ptr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  flipped_new_ptr_flag = _flipped_new_ptr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire  new_ptr_4_flag = ~flipped_new_ptr_flag; // @[CircularQueuePtr.scala 57:21]
  wire [5:0] _GEN_13842 = {{3'd0}, enqNumber}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _new_ptr_T_22 = _issueLookup_T_3 + _GEN_13842; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] new_ptr_8_value = _new_ptr_T_22[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  new_ptr_8_flag = _new_ptr_T_22[5]; // @[CircularQueuePtr.scala 40:59]
  reg [5:0] io_sqCancelCnt_REG; // @[StoreQueue.scala 612:28]
  reg  io_sqempty_REG; // @[StoreQueue.scala 618:24]
  wire  _T_113 = ~io_mmioStout_ready; // @[StoreQueue.scala 629:65]
  wire [5:0] _T_152 = 6'h20 / 3'h4; // @[StoreQueue.scala 639:89]
  wire [5:0] _T_172 = 6'h20 / 2'h2; // @[StoreQueue.scala 640:163]
  wire [7:0] _T_193 = 6'h20 * 2'h3; // @[StoreQueue.scala 641:163]
  wire [7:0] _T_194 = _T_193 / 3'h4; // @[StoreQueue.scala 641:167]
  wire [7:0] _GEN_13863 = {{2'd0}, validCount}; // @[StoreQueue.scala 641:143]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  SQDataModule dataModule ( // @[StoreQueue.scala 91:26]
    .clock(dataModule_clock),
    .io_raddr_0(dataModule_io_raddr_0),
    .io_raddr_1(dataModule_io_raddr_1),
    .io_rdata_0_mask(dataModule_io_rdata_0_mask),
    .io_rdata_0_data(dataModule_io_rdata_0_data),
    .io_rdata_1_mask(dataModule_io_rdata_1_mask),
    .io_rdata_1_data(dataModule_io_rdata_1_data),
    .io_data_wen_0(dataModule_io_data_wen_0),
    .io_data_wen_1(dataModule_io_data_wen_1),
    .io_data_waddr_0(dataModule_io_data_waddr_0),
    .io_data_waddr_1(dataModule_io_data_waddr_1),
    .io_data_wdata_0(dataModule_io_data_wdata_0),
    .io_data_wdata_1(dataModule_io_data_wdata_1),
    .io_mask_wen_0(dataModule_io_mask_wen_0),
    .io_mask_wen_1(dataModule_io_mask_wen_1),
    .io_mask_waddr_0(dataModule_io_mask_waddr_0),
    .io_mask_waddr_1(dataModule_io_mask_waddr_1),
    .io_mask_wdata_0(dataModule_io_mask_wdata_0),
    .io_mask_wdata_1(dataModule_io_mask_wdata_1),
    .io_needForward_0_0(dataModule_io_needForward_0_0),
    .io_needForward_0_1(dataModule_io_needForward_0_1),
    .io_needForward_1_0(dataModule_io_needForward_1_0),
    .io_needForward_1_1(dataModule_io_needForward_1_1),
    .io_forwardMask_0_0(dataModule_io_forwardMask_0_0),
    .io_forwardMask_0_1(dataModule_io_forwardMask_0_1),
    .io_forwardMask_0_2(dataModule_io_forwardMask_0_2),
    .io_forwardMask_0_3(dataModule_io_forwardMask_0_3),
    .io_forwardMask_0_4(dataModule_io_forwardMask_0_4),
    .io_forwardMask_0_5(dataModule_io_forwardMask_0_5),
    .io_forwardMask_0_6(dataModule_io_forwardMask_0_6),
    .io_forwardMask_0_7(dataModule_io_forwardMask_0_7),
    .io_forwardMask_1_0(dataModule_io_forwardMask_1_0),
    .io_forwardMask_1_1(dataModule_io_forwardMask_1_1),
    .io_forwardMask_1_2(dataModule_io_forwardMask_1_2),
    .io_forwardMask_1_3(dataModule_io_forwardMask_1_3),
    .io_forwardMask_1_4(dataModule_io_forwardMask_1_4),
    .io_forwardMask_1_5(dataModule_io_forwardMask_1_5),
    .io_forwardMask_1_6(dataModule_io_forwardMask_1_6),
    .io_forwardMask_1_7(dataModule_io_forwardMask_1_7),
    .io_forwardData_0_0(dataModule_io_forwardData_0_0),
    .io_forwardData_0_1(dataModule_io_forwardData_0_1),
    .io_forwardData_0_2(dataModule_io_forwardData_0_2),
    .io_forwardData_0_3(dataModule_io_forwardData_0_3),
    .io_forwardData_0_4(dataModule_io_forwardData_0_4),
    .io_forwardData_0_5(dataModule_io_forwardData_0_5),
    .io_forwardData_0_6(dataModule_io_forwardData_0_6),
    .io_forwardData_0_7(dataModule_io_forwardData_0_7),
    .io_forwardData_1_0(dataModule_io_forwardData_1_0),
    .io_forwardData_1_1(dataModule_io_forwardData_1_1),
    .io_forwardData_1_2(dataModule_io_forwardData_1_2),
    .io_forwardData_1_3(dataModule_io_forwardData_1_3),
    .io_forwardData_1_4(dataModule_io_forwardData_1_4),
    .io_forwardData_1_5(dataModule_io_forwardData_1_5),
    .io_forwardData_1_6(dataModule_io_forwardData_1_6),
    .io_forwardData_1_7(dataModule_io_forwardData_1_7)
  );
  SQAddrModule paddrModule ( // @[StoreQueue.scala 98:27]
    .clock(paddrModule_clock),
    .io_raddr_0(paddrModule_io_raddr_0),
    .io_raddr_1(paddrModule_io_raddr_1),
    .io_rdata_0(paddrModule_io_rdata_0),
    .io_rdata_1(paddrModule_io_rdata_1),
    .io_rlineflag_0(paddrModule_io_rlineflag_0),
    .io_rlineflag_1(paddrModule_io_rlineflag_1),
    .io_wen_0(paddrModule_io_wen_0),
    .io_wen_1(paddrModule_io_wen_1),
    .io_waddr_0(paddrModule_io_waddr_0),
    .io_waddr_1(paddrModule_io_waddr_1),
    .io_wdata_0(paddrModule_io_wdata_0),
    .io_wdata_1(paddrModule_io_wdata_1),
    .io_wlineflag_0(paddrModule_io_wlineflag_0),
    .io_wlineflag_1(paddrModule_io_wlineflag_1),
    .io_forwardMdata_0(paddrModule_io_forwardMdata_0),
    .io_forwardMdata_1(paddrModule_io_forwardMdata_1),
    .io_forwardMmask_0_0(paddrModule_io_forwardMmask_0_0),
    .io_forwardMmask_0_1(paddrModule_io_forwardMmask_0_1),
    .io_forwardMmask_0_2(paddrModule_io_forwardMmask_0_2),
    .io_forwardMmask_0_3(paddrModule_io_forwardMmask_0_3),
    .io_forwardMmask_0_4(paddrModule_io_forwardMmask_0_4),
    .io_forwardMmask_0_5(paddrModule_io_forwardMmask_0_5),
    .io_forwardMmask_0_6(paddrModule_io_forwardMmask_0_6),
    .io_forwardMmask_0_7(paddrModule_io_forwardMmask_0_7),
    .io_forwardMmask_0_8(paddrModule_io_forwardMmask_0_8),
    .io_forwardMmask_0_9(paddrModule_io_forwardMmask_0_9),
    .io_forwardMmask_0_10(paddrModule_io_forwardMmask_0_10),
    .io_forwardMmask_0_11(paddrModule_io_forwardMmask_0_11),
    .io_forwardMmask_0_12(paddrModule_io_forwardMmask_0_12),
    .io_forwardMmask_0_13(paddrModule_io_forwardMmask_0_13),
    .io_forwardMmask_0_14(paddrModule_io_forwardMmask_0_14),
    .io_forwardMmask_0_15(paddrModule_io_forwardMmask_0_15),
    .io_forwardMmask_0_16(paddrModule_io_forwardMmask_0_16),
    .io_forwardMmask_0_17(paddrModule_io_forwardMmask_0_17),
    .io_forwardMmask_0_18(paddrModule_io_forwardMmask_0_18),
    .io_forwardMmask_0_19(paddrModule_io_forwardMmask_0_19),
    .io_forwardMmask_0_20(paddrModule_io_forwardMmask_0_20),
    .io_forwardMmask_0_21(paddrModule_io_forwardMmask_0_21),
    .io_forwardMmask_0_22(paddrModule_io_forwardMmask_0_22),
    .io_forwardMmask_0_23(paddrModule_io_forwardMmask_0_23),
    .io_forwardMmask_0_24(paddrModule_io_forwardMmask_0_24),
    .io_forwardMmask_0_25(paddrModule_io_forwardMmask_0_25),
    .io_forwardMmask_0_26(paddrModule_io_forwardMmask_0_26),
    .io_forwardMmask_0_27(paddrModule_io_forwardMmask_0_27),
    .io_forwardMmask_0_28(paddrModule_io_forwardMmask_0_28),
    .io_forwardMmask_0_29(paddrModule_io_forwardMmask_0_29),
    .io_forwardMmask_0_30(paddrModule_io_forwardMmask_0_30),
    .io_forwardMmask_0_31(paddrModule_io_forwardMmask_0_31),
    .io_forwardMmask_1_0(paddrModule_io_forwardMmask_1_0),
    .io_forwardMmask_1_1(paddrModule_io_forwardMmask_1_1),
    .io_forwardMmask_1_2(paddrModule_io_forwardMmask_1_2),
    .io_forwardMmask_1_3(paddrModule_io_forwardMmask_1_3),
    .io_forwardMmask_1_4(paddrModule_io_forwardMmask_1_4),
    .io_forwardMmask_1_5(paddrModule_io_forwardMmask_1_5),
    .io_forwardMmask_1_6(paddrModule_io_forwardMmask_1_6),
    .io_forwardMmask_1_7(paddrModule_io_forwardMmask_1_7),
    .io_forwardMmask_1_8(paddrModule_io_forwardMmask_1_8),
    .io_forwardMmask_1_9(paddrModule_io_forwardMmask_1_9),
    .io_forwardMmask_1_10(paddrModule_io_forwardMmask_1_10),
    .io_forwardMmask_1_11(paddrModule_io_forwardMmask_1_11),
    .io_forwardMmask_1_12(paddrModule_io_forwardMmask_1_12),
    .io_forwardMmask_1_13(paddrModule_io_forwardMmask_1_13),
    .io_forwardMmask_1_14(paddrModule_io_forwardMmask_1_14),
    .io_forwardMmask_1_15(paddrModule_io_forwardMmask_1_15),
    .io_forwardMmask_1_16(paddrModule_io_forwardMmask_1_16),
    .io_forwardMmask_1_17(paddrModule_io_forwardMmask_1_17),
    .io_forwardMmask_1_18(paddrModule_io_forwardMmask_1_18),
    .io_forwardMmask_1_19(paddrModule_io_forwardMmask_1_19),
    .io_forwardMmask_1_20(paddrModule_io_forwardMmask_1_20),
    .io_forwardMmask_1_21(paddrModule_io_forwardMmask_1_21),
    .io_forwardMmask_1_22(paddrModule_io_forwardMmask_1_22),
    .io_forwardMmask_1_23(paddrModule_io_forwardMmask_1_23),
    .io_forwardMmask_1_24(paddrModule_io_forwardMmask_1_24),
    .io_forwardMmask_1_25(paddrModule_io_forwardMmask_1_25),
    .io_forwardMmask_1_26(paddrModule_io_forwardMmask_1_26),
    .io_forwardMmask_1_27(paddrModule_io_forwardMmask_1_27),
    .io_forwardMmask_1_28(paddrModule_io_forwardMmask_1_28),
    .io_forwardMmask_1_29(paddrModule_io_forwardMmask_1_29),
    .io_forwardMmask_1_30(paddrModule_io_forwardMmask_1_30),
    .io_forwardMmask_1_31(paddrModule_io_forwardMmask_1_31)
  );
  SQAddrModule_1 vaddrModule ( // @[StoreQueue.scala 106:27]
    .clock(vaddrModule_clock),
    .io_raddr_0(vaddrModule_io_raddr_0),
    .io_raddr_1(vaddrModule_io_raddr_1),
    .io_raddr_2(vaddrModule_io_raddr_2),
    .io_rdata_0(vaddrModule_io_rdata_0),
    .io_rdata_1(vaddrModule_io_rdata_1),
    .io_rdata_2(vaddrModule_io_rdata_2),
    .io_wen_0(vaddrModule_io_wen_0),
    .io_wen_1(vaddrModule_io_wen_1),
    .io_waddr_0(vaddrModule_io_waddr_0),
    .io_waddr_1(vaddrModule_io_waddr_1),
    .io_wdata_0(vaddrModule_io_wdata_0),
    .io_wdata_1(vaddrModule_io_wdata_1),
    .io_wlineflag_0(vaddrModule_io_wlineflag_0),
    .io_wlineflag_1(vaddrModule_io_wlineflag_1),
    .io_forwardMdata_0(vaddrModule_io_forwardMdata_0),
    .io_forwardMdata_1(vaddrModule_io_forwardMdata_1),
    .io_forwardMmask_0_0(vaddrModule_io_forwardMmask_0_0),
    .io_forwardMmask_0_1(vaddrModule_io_forwardMmask_0_1),
    .io_forwardMmask_0_2(vaddrModule_io_forwardMmask_0_2),
    .io_forwardMmask_0_3(vaddrModule_io_forwardMmask_0_3),
    .io_forwardMmask_0_4(vaddrModule_io_forwardMmask_0_4),
    .io_forwardMmask_0_5(vaddrModule_io_forwardMmask_0_5),
    .io_forwardMmask_0_6(vaddrModule_io_forwardMmask_0_6),
    .io_forwardMmask_0_7(vaddrModule_io_forwardMmask_0_7),
    .io_forwardMmask_0_8(vaddrModule_io_forwardMmask_0_8),
    .io_forwardMmask_0_9(vaddrModule_io_forwardMmask_0_9),
    .io_forwardMmask_0_10(vaddrModule_io_forwardMmask_0_10),
    .io_forwardMmask_0_11(vaddrModule_io_forwardMmask_0_11),
    .io_forwardMmask_0_12(vaddrModule_io_forwardMmask_0_12),
    .io_forwardMmask_0_13(vaddrModule_io_forwardMmask_0_13),
    .io_forwardMmask_0_14(vaddrModule_io_forwardMmask_0_14),
    .io_forwardMmask_0_15(vaddrModule_io_forwardMmask_0_15),
    .io_forwardMmask_0_16(vaddrModule_io_forwardMmask_0_16),
    .io_forwardMmask_0_17(vaddrModule_io_forwardMmask_0_17),
    .io_forwardMmask_0_18(vaddrModule_io_forwardMmask_0_18),
    .io_forwardMmask_0_19(vaddrModule_io_forwardMmask_0_19),
    .io_forwardMmask_0_20(vaddrModule_io_forwardMmask_0_20),
    .io_forwardMmask_0_21(vaddrModule_io_forwardMmask_0_21),
    .io_forwardMmask_0_22(vaddrModule_io_forwardMmask_0_22),
    .io_forwardMmask_0_23(vaddrModule_io_forwardMmask_0_23),
    .io_forwardMmask_0_24(vaddrModule_io_forwardMmask_0_24),
    .io_forwardMmask_0_25(vaddrModule_io_forwardMmask_0_25),
    .io_forwardMmask_0_26(vaddrModule_io_forwardMmask_0_26),
    .io_forwardMmask_0_27(vaddrModule_io_forwardMmask_0_27),
    .io_forwardMmask_0_28(vaddrModule_io_forwardMmask_0_28),
    .io_forwardMmask_0_29(vaddrModule_io_forwardMmask_0_29),
    .io_forwardMmask_0_30(vaddrModule_io_forwardMmask_0_30),
    .io_forwardMmask_0_31(vaddrModule_io_forwardMmask_0_31),
    .io_forwardMmask_1_0(vaddrModule_io_forwardMmask_1_0),
    .io_forwardMmask_1_1(vaddrModule_io_forwardMmask_1_1),
    .io_forwardMmask_1_2(vaddrModule_io_forwardMmask_1_2),
    .io_forwardMmask_1_3(vaddrModule_io_forwardMmask_1_3),
    .io_forwardMmask_1_4(vaddrModule_io_forwardMmask_1_4),
    .io_forwardMmask_1_5(vaddrModule_io_forwardMmask_1_5),
    .io_forwardMmask_1_6(vaddrModule_io_forwardMmask_1_6),
    .io_forwardMmask_1_7(vaddrModule_io_forwardMmask_1_7),
    .io_forwardMmask_1_8(vaddrModule_io_forwardMmask_1_8),
    .io_forwardMmask_1_9(vaddrModule_io_forwardMmask_1_9),
    .io_forwardMmask_1_10(vaddrModule_io_forwardMmask_1_10),
    .io_forwardMmask_1_11(vaddrModule_io_forwardMmask_1_11),
    .io_forwardMmask_1_12(vaddrModule_io_forwardMmask_1_12),
    .io_forwardMmask_1_13(vaddrModule_io_forwardMmask_1_13),
    .io_forwardMmask_1_14(vaddrModule_io_forwardMmask_1_14),
    .io_forwardMmask_1_15(vaddrModule_io_forwardMmask_1_15),
    .io_forwardMmask_1_16(vaddrModule_io_forwardMmask_1_16),
    .io_forwardMmask_1_17(vaddrModule_io_forwardMmask_1_17),
    .io_forwardMmask_1_18(vaddrModule_io_forwardMmask_1_18),
    .io_forwardMmask_1_19(vaddrModule_io_forwardMmask_1_19),
    .io_forwardMmask_1_20(vaddrModule_io_forwardMmask_1_20),
    .io_forwardMmask_1_21(vaddrModule_io_forwardMmask_1_21),
    .io_forwardMmask_1_22(vaddrModule_io_forwardMmask_1_22),
    .io_forwardMmask_1_23(vaddrModule_io_forwardMmask_1_23),
    .io_forwardMmask_1_24(vaddrModule_io_forwardMmask_1_24),
    .io_forwardMmask_1_25(vaddrModule_io_forwardMmask_1_25),
    .io_forwardMmask_1_26(vaddrModule_io_forwardMmask_1_26),
    .io_forwardMmask_1_27(vaddrModule_io_forwardMmask_1_27),
    .io_forwardMmask_1_28(vaddrModule_io_forwardMmask_1_28),
    .io_forwardMmask_1_29(vaddrModule_io_forwardMmask_1_29),
    .io_forwardMmask_1_30(vaddrModule_io_forwardMmask_1_30),
    .io_forwardMmask_1_31(vaddrModule_io_forwardMmask_1_31)
  );
  DatamoduleResultBuffer dataBuffer ( // @[StoreQueue.scala 114:26]
    .clock(dataBuffer_clock),
    .reset(dataBuffer_reset),
    .io_enq_0_ready(dataBuffer_io_enq_0_ready),
    .io_enq_0_valid(dataBuffer_io_enq_0_valid),
    .io_enq_0_bits_addr(dataBuffer_io_enq_0_bits_addr),
    .io_enq_0_bits_vaddr(dataBuffer_io_enq_0_bits_vaddr),
    .io_enq_0_bits_data(dataBuffer_io_enq_0_bits_data),
    .io_enq_0_bits_mask(dataBuffer_io_enq_0_bits_mask),
    .io_enq_0_bits_wline(dataBuffer_io_enq_0_bits_wline),
    .io_enq_0_bits_sqPtr_value(dataBuffer_io_enq_0_bits_sqPtr_value),
    .io_enq_1_ready(dataBuffer_io_enq_1_ready),
    .io_enq_1_valid(dataBuffer_io_enq_1_valid),
    .io_enq_1_bits_addr(dataBuffer_io_enq_1_bits_addr),
    .io_enq_1_bits_vaddr(dataBuffer_io_enq_1_bits_vaddr),
    .io_enq_1_bits_data(dataBuffer_io_enq_1_bits_data),
    .io_enq_1_bits_mask(dataBuffer_io_enq_1_bits_mask),
    .io_enq_1_bits_wline(dataBuffer_io_enq_1_bits_wline),
    .io_enq_1_bits_sqPtr_value(dataBuffer_io_enq_1_bits_sqPtr_value),
    .io_deq_0_ready(dataBuffer_io_deq_0_ready),
    .io_deq_0_valid(dataBuffer_io_deq_0_valid),
    .io_deq_0_bits_addr(dataBuffer_io_deq_0_bits_addr),
    .io_deq_0_bits_vaddr(dataBuffer_io_deq_0_bits_vaddr),
    .io_deq_0_bits_data(dataBuffer_io_deq_0_bits_data),
    .io_deq_0_bits_mask(dataBuffer_io_deq_0_bits_mask),
    .io_deq_0_bits_wline(dataBuffer_io_deq_0_bits_wline),
    .io_deq_0_bits_sqPtr_value(dataBuffer_io_deq_0_bits_sqPtr_value),
    .io_deq_1_ready(dataBuffer_io_deq_1_ready),
    .io_deq_1_valid(dataBuffer_io_deq_1_valid),
    .io_deq_1_bits_addr(dataBuffer_io_deq_1_bits_addr),
    .io_deq_1_bits_vaddr(dataBuffer_io_deq_1_bits_vaddr),
    .io_deq_1_bits_data(dataBuffer_io_deq_1_bits_data),
    .io_deq_1_bits_mask(dataBuffer_io_deq_1_bits_mask),
    .io_deq_1_bits_wline(dataBuffer_io_deq_1_bits_wline),
    .io_deq_1_bits_sqPtr_value(dataBuffer_io_deq_1_bits_sqPtr_value)
  );
  assign io_enq_canAccept = validCount <= 6'h1e; // @[StoreQueue.scala 141:33]
  assign io_sbuffer_0_valid = dataBuffer_io_deq_0_valid; // @[StoreQueue.scala 527:25]
  assign io_sbuffer_0_bits_addr = dataBuffer_io_deq_0_bits_addr; // @[StoreQueue.scala 532:30]
  assign io_sbuffer_0_bits_data = dataBuffer_io_deq_0_bits_data; // @[StoreQueue.scala 534:30]
  assign io_sbuffer_0_bits_mask = dataBuffer_io_deq_0_bits_mask; // @[StoreQueue.scala 535:30]
  assign io_sbuffer_0_bits_vaddr = dataBuffer_io_deq_0_bits_vaddr; // @[StoreQueue.scala 533:30]
  assign io_sbuffer_0_bits_wline = dataBuffer_io_deq_0_bits_wline; // @[StoreQueue.scala 536:30]
  assign io_sbuffer_1_valid = dataBuffer_io_deq_1_valid; // @[StoreQueue.scala 527:25]
  assign io_sbuffer_1_bits_addr = dataBuffer_io_deq_1_bits_addr; // @[StoreQueue.scala 532:30]
  assign io_sbuffer_1_bits_data = dataBuffer_io_deq_1_bits_data; // @[StoreQueue.scala 534:30]
  assign io_sbuffer_1_bits_mask = dataBuffer_io_deq_1_bits_mask; // @[StoreQueue.scala 535:30]
  assign io_sbuffer_1_bits_vaddr = dataBuffer_io_deq_1_bits_vaddr; // @[StoreQueue.scala 533:30]
  assign io_sbuffer_1_bits_wline = dataBuffer_io_deq_1_bits_wline; // @[StoreQueue.scala 536:30]
  assign io_mmioStout_valid = uncacheState == 3'h3; // @[StoreQueue.scala 464:38]
  assign io_mmioStout_bits_uop_robIdx_flag = 5'h1f == deqPtrExt_0_value ? uop_31_robIdx_flag : _GEN_9463; // @[StoreQueue.scala 465:{25,25}]
  assign io_mmioStout_bits_uop_robIdx_value = 5'h1f == deqPtrExt_0_value ? uop_31_robIdx_value : _GEN_9431; // @[StoreQueue.scala 465:{25,25}]
  assign io_forward_0_forwardMask_0 = dataModule_io_forwardMask_0_0; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_1 = dataModule_io_forwardMask_0_1; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_2 = dataModule_io_forwardMask_0_2; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_3 = dataModule_io_forwardMask_0_3; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_4 = dataModule_io_forwardMask_0_4; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_5 = dataModule_io_forwardMask_0_5; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_6 = dataModule_io_forwardMask_0_6; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardMask_7 = dataModule_io_forwardMask_0_7; // @[StoreQueue.scala 370:31]
  assign io_forward_0_forwardData_0 = dataModule_io_forwardData_0_0; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_1 = dataModule_io_forwardData_0_1; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_2 = dataModule_io_forwardData_0_2; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_3 = dataModule_io_forwardData_0_3; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_4 = dataModule_io_forwardData_0_4; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_5 = dataModule_io_forwardData_0_5; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_6 = dataModule_io_forwardData_0_6; // @[StoreQueue.scala 371:31]
  assign io_forward_0_forwardData_7 = dataModule_io_forwardData_0_7; // @[StoreQueue.scala 371:31]
  assign io_forward_0_dataInvalid = io_forward_0_dataInvalid_REG; // @[StoreQueue.scala 378:31]
  assign io_forward_0_matchInvalid = vpmaskNotEqual & vaddrMatchFailed_REG; // @[StoreQueue.scala 355:43]
  assign io_forward_0_dataInvalidFast = |_io_forward_0_dataInvalidFast_T_6; // @[StoreQueue.scala 375:137]
  assign io_forward_0_dataInvalidSqIdx = dataInvalidSqIdxReg; // @[StoreQueue.scala 383:36]
  assign io_forward_1_forwardMask_0 = dataModule_io_forwardMask_1_0; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_1 = dataModule_io_forwardMask_1_1; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_2 = dataModule_io_forwardMask_1_2; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_3 = dataModule_io_forwardMask_1_3; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_4 = dataModule_io_forwardMask_1_4; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_5 = dataModule_io_forwardMask_1_5; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_6 = dataModule_io_forwardMask_1_6; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardMask_7 = dataModule_io_forwardMask_1_7; // @[StoreQueue.scala 370:31]
  assign io_forward_1_forwardData_0 = dataModule_io_forwardData_1_0; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_1 = dataModule_io_forwardData_1_1; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_2 = dataModule_io_forwardData_1_2; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_3 = dataModule_io_forwardData_1_3; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_4 = dataModule_io_forwardData_1_4; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_5 = dataModule_io_forwardData_1_5; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_6 = dataModule_io_forwardData_1_6; // @[StoreQueue.scala 371:31]
  assign io_forward_1_forwardData_7 = dataModule_io_forwardData_1_7; // @[StoreQueue.scala 371:31]
  assign io_forward_1_dataInvalid = io_forward_1_dataInvalid_REG; // @[StoreQueue.scala 378:31]
  assign io_forward_1_matchInvalid = vpmaskNotEqual_1 & vaddrMatchFailed_REG_1; // @[StoreQueue.scala 355:43]
  assign io_forward_1_dataInvalidFast = |_io_forward_1_dataInvalidFast_T_6; // @[StoreQueue.scala 375:137]
  assign io_forward_1_dataInvalidSqIdx = dataInvalidSqIdxReg_1; // @[StoreQueue.scala 383:36]
  assign io_uncache_req_valid = uncacheState == 3'h1; // @[StoreQueue.scala 426:40]
  assign io_uncache_req_bits_addr = paddrModule_io_rdata_0; // @[StoreQueue.scala 429:28 438:60]
  assign io_uncache_req_bits_data = REG_7 ? {{28'd0}, paddrModule_io_rdata_0} : dataModule_io_rdata_0_data; // @[StoreQueue.scala 430:28 438:60 440:30]
  assign io_uncache_req_bits_mask = dataModule_io_rdata_0_mask; // @[StoreQueue.scala 431:28 438:60]
  assign io_uncache_resp_ready = 1'h1; // @[StoreQueue.scala 461:25]
  assign io_exceptionAddr_vaddr = vaddrModule_io_rdata_2; // @[StoreQueue.scala 580:26]
  assign io_sqempty = io_sqempty_REG; // @[StoreQueue.scala 618:14]
  assign io_issuePtrExt_flag = issuePtrExt_flag; // @[StoreQueue.scala 216:18]
  assign io_issuePtrExt_value = issuePtrExt_value; // @[StoreQueue.scala 216:18]
  assign io_sqCancelCnt = io_sqCancelCnt_REG; // @[StoreQueue.scala 612:18]
  assign io_sqDeq = io_sqDeq_REG; // @[StoreQueue.scala 157:12]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign dataModule_clock = clock;
  assign dataModule_io_raddr_0 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_2_value : _rdataPtrExtNext_T_4_0_value; // @[PriorityMuxDefault.scala 28:12]
  assign dataModule_io_raddr_1 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_3_value : _rdataPtrExtNext_T_4_1_value; // @[PriorityMuxDefault.scala 28:12]
  assign dataModule_io_data_wen_0 = io_storeDataIn_0_valid; // @[StoreQueue.scala 288:31 290:37 298:33]
  assign dataModule_io_data_wen_1 = io_storeDataIn_1_valid; // @[StoreQueue.scala 288:31 290:37 298:33]
  assign dataModule_io_data_waddr_0 = io_storeDataIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 290:37 293:35]
  assign dataModule_io_data_waddr_1 = io_storeDataIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 290:37 293:35]
  assign dataModule_io_data_wdata_0 = io_storeDataIn_0_bits_uop_ctrl_fuOpType == 7'h7 ? 64'h0 :
    _dataModule_io_data_wdata_0_T_21; // @[StoreQueue.scala 294:41]
  assign dataModule_io_data_wdata_1 = io_storeDataIn_1_bits_uop_ctrl_fuOpType == 7'h7 ? 64'h0 :
    _dataModule_io_data_wdata_1_T_21; // @[StoreQueue.scala 294:41]
  assign dataModule_io_mask_wen_0 = io_storeIn_0_valid & addr_valid; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign dataModule_io_mask_wen_1 = io_storeIn_1_valid & addr_valid_1; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign dataModule_io_mask_waddr_0 = io_storeIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign dataModule_io_mask_waddr_1 = io_storeIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign dataModule_io_mask_wdata_0 = io_storeIn_0_bits_mask; // @[StoreQueue.scala 238:33 244:35]
  assign dataModule_io_mask_wdata_1 = io_storeIn_1_bits_mask; // @[StoreQueue.scala 238:33 244:35]
  assign dataModule_io_needForward_0_0 = canForward1 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 340:52]
  assign dataModule_io_needForward_0_1 = canForward2 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 341:52]
  assign dataModule_io_needForward_1_0 = canForward1_1 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 340:52]
  assign dataModule_io_needForward_1_1 = canForward2_1 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 341:52]
  assign paddrModule_clock = clock;
  assign paddrModule_io_raddr_0 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_2_value : _rdataPtrExtNext_T_4_0_value; // @[PriorityMuxDefault.scala 28:12]
  assign paddrModule_io_raddr_1 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_3_value : _rdataPtrExtNext_T_4_1_value; // @[PriorityMuxDefault.scala 28:12]
  assign paddrModule_io_wen_0 = io_storeIn_0_valid & addr_valid; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign paddrModule_io_wen_1 = io_storeIn_1_valid & addr_valid_1; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign paddrModule_io_waddr_0 = io_storeIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign paddrModule_io_waddr_1 = io_storeIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign paddrModule_io_wdata_0 = io_storeIn_0_bits_paddr; // @[StoreQueue.scala 238:33 248:31]
  assign paddrModule_io_wdata_1 = io_storeIn_1_bits_paddr; // @[StoreQueue.scala 238:33 248:31]
  assign paddrModule_io_wlineflag_0 = io_storeIn_0_bits_wlineflag; // @[StoreQueue.scala 238:33 249:35]
  assign paddrModule_io_wlineflag_1 = io_storeIn_1_bits_wlineflag; // @[StoreQueue.scala 238:33 249:35]
  assign paddrModule_io_forwardMdata_0 = io_forward_0_paddr; // @[StoreQueue.scala 344:36]
  assign paddrModule_io_forwardMdata_1 = io_forward_1_paddr; // @[StoreQueue.scala 344:36]
  assign vaddrModule_clock = clock;
  assign vaddrModule_io_raddr_0 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_2_value : _rdataPtrExtNext_T_4_0_value; // @[PriorityMuxDefault.scala 28:12]
  assign vaddrModule_io_raddr_1 = _rdataPtrExtNext_T_1 ? rdataPtrExtNext_new_ptr_3_value : _rdataPtrExtNext_T_4_1_value; // @[PriorityMuxDefault.scala 28:12]
  assign vaddrModule_io_raddr_2 = _vaddrModule_io_raddr_2_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  assign vaddrModule_io_wen_0 = io_storeIn_0_valid & addr_valid; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign vaddrModule_io_wen_1 = io_storeIn_1_valid & addr_valid_1; // @[StoreQueue.scala 236:31 238:33 245:33]
  assign vaddrModule_io_waddr_0 = io_storeIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign vaddrModule_io_waddr_1 = io_storeIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 238:33 243:35]
  assign vaddrModule_io_wdata_0 = io_storeIn_0_bits_vaddr; // @[StoreQueue.scala 238:33 253:31]
  assign vaddrModule_io_wdata_1 = io_storeIn_1_bits_vaddr; // @[StoreQueue.scala 238:33 253:31]
  assign vaddrModule_io_wlineflag_0 = io_storeIn_0_bits_wlineflag; // @[StoreQueue.scala 238:33 249:35]
  assign vaddrModule_io_wlineflag_1 = io_storeIn_1_bits_wlineflag; // @[StoreQueue.scala 238:33 249:35]
  assign vaddrModule_io_forwardMdata_0 = io_forward_0_vaddr; // @[StoreQueue.scala 343:36]
  assign vaddrModule_io_forwardMdata_1 = io_forward_1_vaddr; // @[StoreQueue.scala 343:36]
  assign dataBuffer_clock = clock;
  assign dataBuffer_reset = reset;
  assign dataBuffer_io_enq_0_valid = _GEN_13144 & _GEN_13176 & ~_GEN_13208; // @[StoreQueue.scala 514:68]
  assign dataBuffer_io_enq_0_bits_addr = paddrModule_io_rdata_0; // @[StoreQueue.scala 517:37]
  assign dataBuffer_io_enq_0_bits_vaddr = vaddrModule_io_rdata_0; // @[StoreQueue.scala 518:37]
  assign dataBuffer_io_enq_0_bits_data = dataModule_io_rdata_0_data; // @[StoreQueue.scala 519:37]
  assign dataBuffer_io_enq_0_bits_mask = dataModule_io_rdata_0_mask; // @[StoreQueue.scala 520:37]
  assign dataBuffer_io_enq_0_bits_wline = paddrModule_io_rlineflag_0; // @[StoreQueue.scala 521:37]
  assign dataBuffer_io_enq_0_bits_sqPtr_value = rdataPtrExt_0_value; // @[StoreQueue.scala 522:37]
  assign dataBuffer_io_enq_1_valid = _GEN_13272 & _GEN_13304 & ~_GEN_13208; // @[StoreQueue.scala 514:68]
  assign dataBuffer_io_enq_1_bits_addr = paddrModule_io_rdata_1; // @[StoreQueue.scala 517:37]
  assign dataBuffer_io_enq_1_bits_vaddr = vaddrModule_io_rdata_1; // @[StoreQueue.scala 518:37]
  assign dataBuffer_io_enq_1_bits_data = dataModule_io_rdata_1_data; // @[StoreQueue.scala 519:37]
  assign dataBuffer_io_enq_1_bits_mask = dataModule_io_rdata_1_mask; // @[StoreQueue.scala 520:37]
  assign dataBuffer_io_enq_1_bits_wline = paddrModule_io_rlineflag_1; // @[StoreQueue.scala 521:37]
  assign dataBuffer_io_enq_1_bits_sqPtr_value = rdataPtrExt_1_value; // @[StoreQueue.scala 522:37]
  assign dataBuffer_io_deq_0_ready = io_sbuffer_0_ready; // @[StoreQueue.scala 528:32]
  assign dataBuffer_io_deq_1_ready = io_sbuffer_1_ready; // @[StoreQueue.scala 528:32]
  always @(posedge clock) begin
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h0 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_0_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_0_ctrl_fuOpType <= _GEN_4608;
      end
    end else begin
      uop_0_ctrl_fuOpType <= _GEN_4608;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_0_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_0_robIdx_flag <= _GEN_1164;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_1164;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_0_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_0_robIdx_value <= _GEN_1132;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_1132;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_1_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_1_ctrl_fuOpType <= _GEN_4609;
      end
    end else begin
      uop_1_ctrl_fuOpType <= _GEN_4609;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_1_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_1_robIdx_flag <= _GEN_1165;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_1165;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_1_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_1_robIdx_value <= _GEN_1133;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_1133;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h2 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_2_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_2_ctrl_fuOpType <= _GEN_4610;
      end
    end else begin
      uop_2_ctrl_fuOpType <= _GEN_4610;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_2_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_2_robIdx_flag <= _GEN_1166;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_1166;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_2_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_2_robIdx_value <= _GEN_1134;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_1134;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h3 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_3_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_3_ctrl_fuOpType <= _GEN_4611;
      end
    end else begin
      uop_3_ctrl_fuOpType <= _GEN_4611;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_3_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_3_robIdx_flag <= _GEN_1167;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_1167;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_3_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_3_robIdx_value <= _GEN_1135;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_1135;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h4 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_4_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_4_ctrl_fuOpType <= _GEN_4612;
      end
    end else begin
      uop_4_ctrl_fuOpType <= _GEN_4612;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_4_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_4_robIdx_flag <= _GEN_1168;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_1168;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_4_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_4_robIdx_value <= _GEN_1136;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_1136;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h5 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_5_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_5_ctrl_fuOpType <= _GEN_4613;
      end
    end else begin
      uop_5_ctrl_fuOpType <= _GEN_4613;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_5_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_5_robIdx_flag <= _GEN_1169;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_1169;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_5_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_5_robIdx_value <= _GEN_1137;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_1137;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h6 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_6_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_6_ctrl_fuOpType <= _GEN_4614;
      end
    end else begin
      uop_6_ctrl_fuOpType <= _GEN_4614;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_6_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_6_robIdx_flag <= _GEN_1170;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_1170;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_6_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_6_robIdx_value <= _GEN_1138;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_1138;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h7 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_7_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_7_ctrl_fuOpType <= _GEN_4615;
      end
    end else begin
      uop_7_ctrl_fuOpType <= _GEN_4615;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_7_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_7_robIdx_flag <= _GEN_1171;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_1171;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_7_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_7_robIdx_value <= _GEN_1139;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_1139;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h8 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_8_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_8_ctrl_fuOpType <= _GEN_4616;
      end
    end else begin
      uop_8_ctrl_fuOpType <= _GEN_4616;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_8_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_8_robIdx_flag <= _GEN_1172;
      end
    end else begin
      uop_8_robIdx_flag <= _GEN_1172;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_8_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_8_robIdx_value <= _GEN_1140;
      end
    end else begin
      uop_8_robIdx_value <= _GEN_1140;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h9 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_9_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_9_ctrl_fuOpType <= _GEN_4617;
      end
    end else begin
      uop_9_ctrl_fuOpType <= _GEN_4617;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_9_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_9_robIdx_flag <= _GEN_1173;
      end
    end else begin
      uop_9_robIdx_flag <= _GEN_1173;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_9_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_9_robIdx_value <= _GEN_1141;
      end
    end else begin
      uop_9_robIdx_value <= _GEN_1141;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'ha == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_10_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_10_ctrl_fuOpType <= _GEN_4618;
      end
    end else begin
      uop_10_ctrl_fuOpType <= _GEN_4618;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_10_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_10_robIdx_flag <= _GEN_1174;
      end
    end else begin
      uop_10_robIdx_flag <= _GEN_1174;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_10_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_10_robIdx_value <= _GEN_1142;
      end
    end else begin
      uop_10_robIdx_value <= _GEN_1142;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hb == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_11_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_11_ctrl_fuOpType <= _GEN_4619;
      end
    end else begin
      uop_11_ctrl_fuOpType <= _GEN_4619;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_11_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_11_robIdx_flag <= _GEN_1175;
      end
    end else begin
      uop_11_robIdx_flag <= _GEN_1175;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_11_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_11_robIdx_value <= _GEN_1143;
      end
    end else begin
      uop_11_robIdx_value <= _GEN_1143;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hc == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_12_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_12_ctrl_fuOpType <= _GEN_4620;
      end
    end else begin
      uop_12_ctrl_fuOpType <= _GEN_4620;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hc == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_12_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_12_robIdx_flag <= _GEN_1176;
      end
    end else begin
      uop_12_robIdx_flag <= _GEN_1176;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hc == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_12_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_12_robIdx_value <= _GEN_1144;
      end
    end else begin
      uop_12_robIdx_value <= _GEN_1144;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hd == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_13_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_13_ctrl_fuOpType <= _GEN_4621;
      end
    end else begin
      uop_13_ctrl_fuOpType <= _GEN_4621;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hd == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_13_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_13_robIdx_flag <= _GEN_1177;
      end
    end else begin
      uop_13_robIdx_flag <= _GEN_1177;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hd == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_13_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_13_robIdx_value <= _GEN_1145;
      end
    end else begin
      uop_13_robIdx_value <= _GEN_1145;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'he == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_14_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_14_ctrl_fuOpType <= _GEN_4622;
      end
    end else begin
      uop_14_ctrl_fuOpType <= _GEN_4622;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'he == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_14_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_14_robIdx_flag <= _GEN_1178;
      end
    end else begin
      uop_14_robIdx_flag <= _GEN_1178;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'he == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_14_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_14_robIdx_value <= _GEN_1146;
      end
    end else begin
      uop_14_robIdx_value <= _GEN_1146;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hf == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_15_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_15_ctrl_fuOpType <= _GEN_4623;
      end
    end else begin
      uop_15_ctrl_fuOpType <= _GEN_4623;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hf == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_15_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_15_robIdx_flag <= _GEN_1179;
      end
    end else begin
      uop_15_robIdx_flag <= _GEN_1179;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'hf == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_15_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_15_robIdx_value <= _GEN_1147;
      end
    end else begin
      uop_15_robIdx_value <= _GEN_1147;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h10 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_16_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_16_ctrl_fuOpType <= _GEN_4624;
      end
    end else begin
      uop_16_ctrl_fuOpType <= _GEN_4624;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h10 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_16_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_16_robIdx_flag <= _GEN_1180;
      end
    end else begin
      uop_16_robIdx_flag <= _GEN_1180;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h10 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_16_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_16_robIdx_value <= _GEN_1148;
      end
    end else begin
      uop_16_robIdx_value <= _GEN_1148;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h11 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_17_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_17_ctrl_fuOpType <= _GEN_4625;
      end
    end else begin
      uop_17_ctrl_fuOpType <= _GEN_4625;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h11 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_17_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_17_robIdx_flag <= _GEN_1181;
      end
    end else begin
      uop_17_robIdx_flag <= _GEN_1181;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h11 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_17_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_17_robIdx_value <= _GEN_1149;
      end
    end else begin
      uop_17_robIdx_value <= _GEN_1149;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h12 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_18_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_18_ctrl_fuOpType <= _GEN_4626;
      end
    end else begin
      uop_18_ctrl_fuOpType <= _GEN_4626;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h12 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_18_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_18_robIdx_flag <= _GEN_1182;
      end
    end else begin
      uop_18_robIdx_flag <= _GEN_1182;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h12 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_18_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_18_robIdx_value <= _GEN_1150;
      end
    end else begin
      uop_18_robIdx_value <= _GEN_1150;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h13 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_19_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_19_ctrl_fuOpType <= _GEN_4627;
      end
    end else begin
      uop_19_ctrl_fuOpType <= _GEN_4627;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h13 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_19_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_19_robIdx_flag <= _GEN_1183;
      end
    end else begin
      uop_19_robIdx_flag <= _GEN_1183;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h13 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_19_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_19_robIdx_value <= _GEN_1151;
      end
    end else begin
      uop_19_robIdx_value <= _GEN_1151;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h14 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_20_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_20_ctrl_fuOpType <= _GEN_4628;
      end
    end else begin
      uop_20_ctrl_fuOpType <= _GEN_4628;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h14 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_20_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_20_robIdx_flag <= _GEN_1184;
      end
    end else begin
      uop_20_robIdx_flag <= _GEN_1184;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h14 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_20_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_20_robIdx_value <= _GEN_1152;
      end
    end else begin
      uop_20_robIdx_value <= _GEN_1152;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h15 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_21_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_21_ctrl_fuOpType <= _GEN_4629;
      end
    end else begin
      uop_21_ctrl_fuOpType <= _GEN_4629;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h15 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_21_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_21_robIdx_flag <= _GEN_1185;
      end
    end else begin
      uop_21_robIdx_flag <= _GEN_1185;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h15 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_21_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_21_robIdx_value <= _GEN_1153;
      end
    end else begin
      uop_21_robIdx_value <= _GEN_1153;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h16 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_22_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_22_ctrl_fuOpType <= _GEN_4630;
      end
    end else begin
      uop_22_ctrl_fuOpType <= _GEN_4630;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h16 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_22_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_22_robIdx_flag <= _GEN_1186;
      end
    end else begin
      uop_22_robIdx_flag <= _GEN_1186;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h16 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_22_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_22_robIdx_value <= _GEN_1154;
      end
    end else begin
      uop_22_robIdx_value <= _GEN_1154;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h17 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_23_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_23_ctrl_fuOpType <= _GEN_4631;
      end
    end else begin
      uop_23_ctrl_fuOpType <= _GEN_4631;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h17 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_23_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_23_robIdx_flag <= _GEN_1187;
      end
    end else begin
      uop_23_robIdx_flag <= _GEN_1187;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h17 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_23_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_23_robIdx_value <= _GEN_1155;
      end
    end else begin
      uop_23_robIdx_value <= _GEN_1155;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h18 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_24_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_24_ctrl_fuOpType <= _GEN_4632;
      end
    end else begin
      uop_24_ctrl_fuOpType <= _GEN_4632;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h18 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_24_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_24_robIdx_flag <= _GEN_1188;
      end
    end else begin
      uop_24_robIdx_flag <= _GEN_1188;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h18 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_24_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_24_robIdx_value <= _GEN_1156;
      end
    end else begin
      uop_24_robIdx_value <= _GEN_1156;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h19 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_25_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_25_ctrl_fuOpType <= _GEN_4633;
      end
    end else begin
      uop_25_ctrl_fuOpType <= _GEN_4633;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h19 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_25_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_25_robIdx_flag <= _GEN_1189;
      end
    end else begin
      uop_25_robIdx_flag <= _GEN_1189;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h19 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_25_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_25_robIdx_value <= _GEN_1157;
      end
    end else begin
      uop_25_robIdx_value <= _GEN_1157;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1a == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_26_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_26_ctrl_fuOpType <= _GEN_4634;
      end
    end else begin
      uop_26_ctrl_fuOpType <= _GEN_4634;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1a == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_26_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_26_robIdx_flag <= _GEN_1190;
      end
    end else begin
      uop_26_robIdx_flag <= _GEN_1190;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1a == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_26_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_26_robIdx_value <= _GEN_1158;
      end
    end else begin
      uop_26_robIdx_value <= _GEN_1158;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1b == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_27_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_27_ctrl_fuOpType <= _GEN_4635;
      end
    end else begin
      uop_27_ctrl_fuOpType <= _GEN_4635;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1b == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_27_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_27_robIdx_flag <= _GEN_1191;
      end
    end else begin
      uop_27_robIdx_flag <= _GEN_1191;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1b == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_27_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_27_robIdx_value <= _GEN_1159;
      end
    end else begin
      uop_27_robIdx_value <= _GEN_1159;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1c == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_28_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_28_ctrl_fuOpType <= _GEN_4636;
      end
    end else begin
      uop_28_ctrl_fuOpType <= _GEN_4636;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1c == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_28_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_28_robIdx_flag <= _GEN_1192;
      end
    end else begin
      uop_28_robIdx_flag <= _GEN_1192;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1c == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_28_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_28_robIdx_value <= _GEN_1160;
      end
    end else begin
      uop_28_robIdx_value <= _GEN_1160;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1d == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_29_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_29_ctrl_fuOpType <= _GEN_4637;
      end
    end else begin
      uop_29_ctrl_fuOpType <= _GEN_4637;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1d == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_29_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_29_robIdx_flag <= _GEN_1193;
      end
    end else begin
      uop_29_robIdx_flag <= _GEN_1193;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1d == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_29_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_29_robIdx_value <= _GEN_1161;
      end
    end else begin
      uop_29_robIdx_value <= _GEN_1161;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1e == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_30_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_30_ctrl_fuOpType <= _GEN_4638;
      end
    end else begin
      uop_30_ctrl_fuOpType <= _GEN_4638;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1e == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_30_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_30_robIdx_flag <= _GEN_1194;
      end
    end else begin
      uop_30_robIdx_flag <= _GEN_1194;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1e == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_30_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_30_robIdx_value <= _GEN_1162;
      end
    end else begin
      uop_30_robIdx_value <= _GEN_1162;
    end
    if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1f == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 261:27]
        uop_31_ctrl_fuOpType <= io_storeIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 261:27]
      end else begin
        uop_31_ctrl_fuOpType <= _GEN_4639;
      end
    end else begin
      uop_31_ctrl_fuOpType <= _GEN_4639;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1f == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_31_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 182:25]
      end else begin
        uop_31_robIdx_flag <= _GEN_1195;
      end
    end else begin
      uop_31_robIdx_flag <= _GEN_1195;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      if (5'h1f == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 182:25]
        uop_31_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 182:25]
      end else begin
        uop_31_robIdx_value <= _GEN_1163;
      end
    end else begin
      uop_31_robIdx_value <= _GEN_1163;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_0 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_0) begin // @[StoreQueue.scala 587:26]
      allocated_0 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h0 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_0 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_0 <= _GEN_13369;
      end
    end else begin
      allocated_0 <= _GEN_13369;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_1 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_1) begin // @[StoreQueue.scala 587:26]
      allocated_1 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_1 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_1 <= _GEN_13370;
      end
    end else begin
      allocated_1 <= _GEN_13370;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_2 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_2) begin // @[StoreQueue.scala 587:26]
      allocated_2 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h2 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_2 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_2 <= _GEN_13371;
      end
    end else begin
      allocated_2 <= _GEN_13371;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_3 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_3) begin // @[StoreQueue.scala 587:26]
      allocated_3 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h3 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_3 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_3 <= _GEN_13372;
      end
    end else begin
      allocated_3 <= _GEN_13372;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_4 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_4) begin // @[StoreQueue.scala 587:26]
      allocated_4 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h4 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_4 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_4 <= _GEN_13373;
      end
    end else begin
      allocated_4 <= _GEN_13373;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_5 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_5) begin // @[StoreQueue.scala 587:26]
      allocated_5 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h5 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_5 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_5 <= _GEN_13374;
      end
    end else begin
      allocated_5 <= _GEN_13374;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_6 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_6) begin // @[StoreQueue.scala 587:26]
      allocated_6 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h6 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_6 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_6 <= _GEN_13375;
      end
    end else begin
      allocated_6 <= _GEN_13375;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_7 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_7) begin // @[StoreQueue.scala 587:26]
      allocated_7 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h7 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_7 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_7 <= _GEN_13376;
      end
    end else begin
      allocated_7 <= _GEN_13376;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_8 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_8) begin // @[StoreQueue.scala 587:26]
      allocated_8 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h8 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_8 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_8 <= _GEN_13377;
      end
    end else begin
      allocated_8 <= _GEN_13377;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_9 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_9) begin // @[StoreQueue.scala 587:26]
      allocated_9 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h9 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_9 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_9 <= _GEN_13378;
      end
    end else begin
      allocated_9 <= _GEN_13378;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_10 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_10) begin // @[StoreQueue.scala 587:26]
      allocated_10 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'ha == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_10 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_10 <= _GEN_13379;
      end
    end else begin
      allocated_10 <= _GEN_13379;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_11 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_11) begin // @[StoreQueue.scala 587:26]
      allocated_11 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'hb == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_11 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_11 <= _GEN_13380;
      end
    end else begin
      allocated_11 <= _GEN_13380;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_12 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_12) begin // @[StoreQueue.scala 587:26]
      allocated_12 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'hc == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_12 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_12 <= _GEN_13381;
      end
    end else begin
      allocated_12 <= _GEN_13381;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_13 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_13) begin // @[StoreQueue.scala 587:26]
      allocated_13 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'hd == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_13 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_13 <= _GEN_13382;
      end
    end else begin
      allocated_13 <= _GEN_13382;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_14 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_14) begin // @[StoreQueue.scala 587:26]
      allocated_14 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'he == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_14 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_14 <= _GEN_13383;
      end
    end else begin
      allocated_14 <= _GEN_13383;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_15 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_15) begin // @[StoreQueue.scala 587:26]
      allocated_15 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'hf == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_15 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_15 <= _GEN_13384;
      end
    end else begin
      allocated_15 <= _GEN_13384;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_16 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_16) begin // @[StoreQueue.scala 587:26]
      allocated_16 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h10 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_16 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_16 <= _GEN_13385;
      end
    end else begin
      allocated_16 <= _GEN_13385;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_17 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_17) begin // @[StoreQueue.scala 587:26]
      allocated_17 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h11 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_17 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_17 <= _GEN_13386;
      end
    end else begin
      allocated_17 <= _GEN_13386;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_18 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_18) begin // @[StoreQueue.scala 587:26]
      allocated_18 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h12 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_18 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_18 <= _GEN_13387;
      end
    end else begin
      allocated_18 <= _GEN_13387;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_19 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_19) begin // @[StoreQueue.scala 587:26]
      allocated_19 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h13 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_19 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_19 <= _GEN_13388;
      end
    end else begin
      allocated_19 <= _GEN_13388;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_20 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_20) begin // @[StoreQueue.scala 587:26]
      allocated_20 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h14 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_20 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_20 <= _GEN_13389;
      end
    end else begin
      allocated_20 <= _GEN_13389;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_21 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_21) begin // @[StoreQueue.scala 587:26]
      allocated_21 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h15 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_21 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_21 <= _GEN_13390;
      end
    end else begin
      allocated_21 <= _GEN_13390;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_22 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_22) begin // @[StoreQueue.scala 587:26]
      allocated_22 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h16 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_22 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_22 <= _GEN_13391;
      end
    end else begin
      allocated_22 <= _GEN_13391;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_23 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_23) begin // @[StoreQueue.scala 587:26]
      allocated_23 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h17 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_23 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_23 <= _GEN_13392;
      end
    end else begin
      allocated_23 <= _GEN_13392;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_24 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_24) begin // @[StoreQueue.scala 587:26]
      allocated_24 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h18 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_24 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_24 <= _GEN_13393;
      end
    end else begin
      allocated_24 <= _GEN_13393;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_25 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_25) begin // @[StoreQueue.scala 587:26]
      allocated_25 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h19 == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_25 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_25 <= _GEN_13394;
      end
    end else begin
      allocated_25 <= _GEN_13394;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_26 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_26) begin // @[StoreQueue.scala 587:26]
      allocated_26 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1a == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_26 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_26 <= _GEN_13395;
      end
    end else begin
      allocated_26 <= _GEN_13395;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_27 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_27) begin // @[StoreQueue.scala 587:26]
      allocated_27 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1b == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_27 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_27 <= _GEN_13396;
      end
    end else begin
      allocated_27 <= _GEN_13396;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_28 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_28) begin // @[StoreQueue.scala 587:26]
      allocated_28 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1c == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_28 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_28 <= _GEN_13397;
      end
    end else begin
      allocated_28 <= _GEN_13397;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_29 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_29) begin // @[StoreQueue.scala 587:26]
      allocated_29 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1d == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_29 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_29 <= _GEN_13398;
      end
    end else begin
      allocated_29 <= _GEN_13398;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_30 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_30) begin // @[StoreQueue.scala 587:26]
      allocated_30 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1e == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_30 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_30 <= _GEN_13399;
      end
    end else begin
      allocated_30 <= _GEN_13399;
    end
    if (reset) begin // @[StoreQueue.scala 120:26]
      allocated_31 <= 1'h0; // @[StoreQueue.scala 120:26]
    end else if (needCancel_31) begin // @[StoreQueue.scala 587:26]
      allocated_31 <= 1'h0; // @[StoreQueue.scala 588:20]
    end else if (_deqPtrExtNext_T_1) begin // @[StoreQueue.scala 541:33]
      if (5'h1f == dataBuffer_io_deq_1_bits_sqPtr_value) begin // @[StoreQueue.scala 542:22]
        allocated_31 <= 1'h0; // @[StoreQueue.scala 542:22]
      end else begin
        allocated_31 <= _GEN_13400;
      end
    end else begin
      allocated_31 <= _GEN_13400;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_0 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h0 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_0 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_0 <= _GEN_3674;
      end
    end else begin
      addrvalid_0 <= _GEN_3674;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_1 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_1 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_1 <= _GEN_3675;
      end
    end else begin
      addrvalid_1 <= _GEN_3675;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_2 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h2 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_2 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_2 <= _GEN_3676;
      end
    end else begin
      addrvalid_2 <= _GEN_3676;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_3 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h3 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_3 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_3 <= _GEN_3677;
      end
    end else begin
      addrvalid_3 <= _GEN_3677;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_4 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h4 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_4 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_4 <= _GEN_3678;
      end
    end else begin
      addrvalid_4 <= _GEN_3678;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_5 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h5 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_5 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_5 <= _GEN_3679;
      end
    end else begin
      addrvalid_5 <= _GEN_3679;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_6 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h6 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_6 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_6 <= _GEN_3680;
      end
    end else begin
      addrvalid_6 <= _GEN_3680;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_7 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h7 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_7 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_7 <= _GEN_3681;
      end
    end else begin
      addrvalid_7 <= _GEN_3681;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_8 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h8 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_8 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_8 <= _GEN_3682;
      end
    end else begin
      addrvalid_8 <= _GEN_3682;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_9 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h9 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_9 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_9 <= _GEN_3683;
      end
    end else begin
      addrvalid_9 <= _GEN_3683;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_10 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'ha == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_10 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_10 <= _GEN_3684;
      end
    end else begin
      addrvalid_10 <= _GEN_3684;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_11 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hb == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_11 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_11 <= _GEN_3685;
      end
    end else begin
      addrvalid_11 <= _GEN_3685;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_12 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hc == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_12 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_12 <= _GEN_3686;
      end
    end else begin
      addrvalid_12 <= _GEN_3686;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_13 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hd == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_13 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_13 <= _GEN_3687;
      end
    end else begin
      addrvalid_13 <= _GEN_3687;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_14 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'he == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_14 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_14 <= _GEN_3688;
      end
    end else begin
      addrvalid_14 <= _GEN_3688;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_15 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'hf == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_15 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_15 <= _GEN_3689;
      end
    end else begin
      addrvalid_15 <= _GEN_3689;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_16 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h10 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_16 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_16 <= _GEN_3690;
      end
    end else begin
      addrvalid_16 <= _GEN_3690;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_17 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h11 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_17 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_17 <= _GEN_3691;
      end
    end else begin
      addrvalid_17 <= _GEN_3691;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_18 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h12 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_18 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_18 <= _GEN_3692;
      end
    end else begin
      addrvalid_18 <= _GEN_3692;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_19 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h13 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_19 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_19 <= _GEN_3693;
      end
    end else begin
      addrvalid_19 <= _GEN_3693;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_20 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h14 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_20 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_20 <= _GEN_3694;
      end
    end else begin
      addrvalid_20 <= _GEN_3694;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_21 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h15 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_21 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_21 <= _GEN_3695;
      end
    end else begin
      addrvalid_21 <= _GEN_3695;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_22 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h16 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_22 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_22 <= _GEN_3696;
      end
    end else begin
      addrvalid_22 <= _GEN_3696;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_23 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h17 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_23 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_23 <= _GEN_3697;
      end
    end else begin
      addrvalid_23 <= _GEN_3697;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_24 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h18 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_24 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_24 <= _GEN_3698;
      end
    end else begin
      addrvalid_24 <= _GEN_3698;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_25 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h19 == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_25 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_25 <= _GEN_3699;
      end
    end else begin
      addrvalid_25 <= _GEN_3699;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_26 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1a == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_26 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_26 <= _GEN_3700;
      end
    end else begin
      addrvalid_26 <= _GEN_3700;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_27 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1b == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_27 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_27 <= _GEN_3701;
      end
    end else begin
      addrvalid_27 <= _GEN_3701;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_28 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1c == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_28 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_28 <= _GEN_3702;
      end
    end else begin
      addrvalid_28 <= _GEN_3702;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_29 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1d == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_29 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_29 <= _GEN_3703;
      end
    end else begin
      addrvalid_29 <= _GEN_3703;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_30 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1e == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_30 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_30 <= _GEN_3704;
      end
    end else begin
      addrvalid_30 <= _GEN_3704;
    end
    if (reset) begin // @[StoreQueue.scala 121:26]
      addrvalid_31 <= 1'h0; // @[StoreQueue.scala 121:26]
    end else if (io_storeIn_1_valid) begin // @[StoreQueue.scala 238:33]
      if (5'h1f == io_storeIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 240:28]
        addrvalid_31 <= addr_valid_1; // @[StoreQueue.scala 240:28]
      end else begin
        addrvalid_31 <= _GEN_3705;
      end
    end else begin
      addrvalid_31 <= _GEN_3705;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_0 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_0 <= _GEN_8617;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_0 <= _GEN_8486;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_0 <= _GEN_1456;
    end else begin
      datavalid_0 <= _GEN_1228;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_1 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_1 <= _GEN_8618;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_1 <= _GEN_8487;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_1 <= _GEN_1457;
    end else begin
      datavalid_1 <= _GEN_1229;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_2 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_2 <= _GEN_8619;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_2 <= _GEN_8488;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_2 <= _GEN_1458;
    end else begin
      datavalid_2 <= _GEN_1230;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_3 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_3 <= _GEN_8620;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_3 <= _GEN_8489;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_3 <= _GEN_1459;
    end else begin
      datavalid_3 <= _GEN_1231;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_4 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_4 <= _GEN_8621;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_4 <= _GEN_8490;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_4 <= _GEN_1460;
    end else begin
      datavalid_4 <= _GEN_1232;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_5 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_5 <= _GEN_8622;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_5 <= _GEN_8491;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_5 <= _GEN_1461;
    end else begin
      datavalid_5 <= _GEN_1233;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_6 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_6 <= _GEN_8623;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_6 <= _GEN_8492;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_6 <= _GEN_1462;
    end else begin
      datavalid_6 <= _GEN_1234;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_7 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_7 <= _GEN_8624;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_7 <= _GEN_8493;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_7 <= _GEN_1463;
    end else begin
      datavalid_7 <= _GEN_1235;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_8 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_8 <= _GEN_8625;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_8 <= _GEN_8494;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_8 <= _GEN_1464;
    end else begin
      datavalid_8 <= _GEN_1236;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_9 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_9 <= _GEN_8626;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_9 <= _GEN_8495;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_9 <= _GEN_1465;
    end else begin
      datavalid_9 <= _GEN_1237;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_10 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_10 <= _GEN_8627;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_10 <= _GEN_8496;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_10 <= _GEN_1466;
    end else begin
      datavalid_10 <= _GEN_1238;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_11 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_11 <= _GEN_8628;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_11 <= _GEN_8497;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_11 <= _GEN_1467;
    end else begin
      datavalid_11 <= _GEN_1239;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_12 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_12 <= _GEN_8629;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_12 <= _GEN_8498;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_12 <= _GEN_1468;
    end else begin
      datavalid_12 <= _GEN_1240;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_13 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_13 <= _GEN_8630;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_13 <= _GEN_8499;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_13 <= _GEN_1469;
    end else begin
      datavalid_13 <= _GEN_1241;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_14 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_14 <= _GEN_8631;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_14 <= _GEN_8500;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_14 <= _GEN_1470;
    end else begin
      datavalid_14 <= _GEN_1242;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_15 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_15 <= _GEN_8632;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_15 <= _GEN_8501;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_15 <= _GEN_1471;
    end else begin
      datavalid_15 <= _GEN_1243;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_16 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_16 <= _GEN_8633;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_16 <= _GEN_8502;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_16 <= _GEN_1472;
    end else begin
      datavalid_16 <= _GEN_1244;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_17 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_17 <= _GEN_8634;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_17 <= _GEN_8503;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_17 <= _GEN_1473;
    end else begin
      datavalid_17 <= _GEN_1245;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_18 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_18 <= _GEN_8635;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_18 <= _GEN_8504;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_18 <= _GEN_1474;
    end else begin
      datavalid_18 <= _GEN_1246;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_19 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_19 <= _GEN_8636;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_19 <= _GEN_8505;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_19 <= _GEN_1475;
    end else begin
      datavalid_19 <= _GEN_1247;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_20 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_20 <= _GEN_8637;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_20 <= _GEN_8506;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_20 <= _GEN_1476;
    end else begin
      datavalid_20 <= _GEN_1248;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_21 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_21 <= _GEN_8638;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_21 <= _GEN_8507;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_21 <= _GEN_1477;
    end else begin
      datavalid_21 <= _GEN_1249;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_22 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_22 <= _GEN_8639;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_22 <= _GEN_8508;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_22 <= _GEN_1478;
    end else begin
      datavalid_22 <= _GEN_1250;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_23 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_23 <= _GEN_8640;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_23 <= _GEN_8509;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_23 <= _GEN_1479;
    end else begin
      datavalid_23 <= _GEN_1251;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_24 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_24 <= _GEN_8641;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_24 <= _GEN_8510;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_24 <= _GEN_1480;
    end else begin
      datavalid_24 <= _GEN_1252;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_25 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_25 <= _GEN_8642;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_25 <= _GEN_8511;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_25 <= _GEN_1481;
    end else begin
      datavalid_25 <= _GEN_1253;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_26 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_26 <= _GEN_8643;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_26 <= _GEN_8512;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_26 <= _GEN_1482;
    end else begin
      datavalid_26 <= _GEN_1254;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_27 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_27 <= _GEN_8644;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_27 <= _GEN_8513;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_27 <= _GEN_1483;
    end else begin
      datavalid_27 <= _GEN_1255;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_28 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_28 <= _GEN_8645;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_28 <= _GEN_8514;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_28 <= _GEN_1484;
    end else begin
      datavalid_28 <= _GEN_1256;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_29 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_29 <= _GEN_8646;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_29 <= _GEN_8515;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_29 <= _GEN_1485;
    end else begin
      datavalid_29 <= _GEN_1257;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_30 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_30 <= _GEN_8647;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_30 <= _GEN_8516;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_30 <= _GEN_1486;
    end else begin
      datavalid_30 <= _GEN_1258;
    end
    if (reset) begin // @[StoreQueue.scala 122:26]
      datavalid_31 <= 1'h0; // @[StoreQueue.scala 122:26]
    end else if (io_storeDataIn_1_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_31 <= _GEN_8648;
    end else if (io_storeDataIn_0_valid) begin // @[StoreQueue.scala 290:37]
      datavalid_31 <= _GEN_8517;
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 181:43]
      datavalid_31 <= _GEN_1487;
    end else begin
      datavalid_31 <= _GEN_1259;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_0 <= _GEN_13049;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_0 <= _GEN_12985;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_0 <= _GEN_12921;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_0 <= _GEN_12857;
    end else begin
      committed_0 <= _GEN_1748;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_1 <= _GEN_13050;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_1 <= _GEN_12986;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_1 <= _GEN_12922;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_1 <= _GEN_12858;
    end else begin
      committed_1 <= _GEN_1749;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_2 <= _GEN_13051;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_2 <= _GEN_12987;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_2 <= _GEN_12923;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_2 <= _GEN_12859;
    end else begin
      committed_2 <= _GEN_1750;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_3 <= _GEN_13052;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_3 <= _GEN_12988;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_3 <= _GEN_12924;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_3 <= _GEN_12860;
    end else begin
      committed_3 <= _GEN_1751;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_4 <= _GEN_13053;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_4 <= _GEN_12989;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_4 <= _GEN_12925;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_4 <= _GEN_12861;
    end else begin
      committed_4 <= _GEN_1752;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_5 <= _GEN_13054;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_5 <= _GEN_12990;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_5 <= _GEN_12926;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_5 <= _GEN_12862;
    end else begin
      committed_5 <= _GEN_1753;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_6 <= _GEN_13055;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_6 <= _GEN_12991;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_6 <= _GEN_12927;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_6 <= _GEN_12863;
    end else begin
      committed_6 <= _GEN_1754;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_7 <= _GEN_13056;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_7 <= _GEN_12992;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_7 <= _GEN_12928;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_7 <= _GEN_12864;
    end else begin
      committed_7 <= _GEN_1755;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_8 <= _GEN_13057;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_8 <= _GEN_12993;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_8 <= _GEN_12929;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_8 <= _GEN_12865;
    end else begin
      committed_8 <= _GEN_1756;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_9 <= _GEN_13058;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_9 <= _GEN_12994;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_9 <= _GEN_12930;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_9 <= _GEN_12866;
    end else begin
      committed_9 <= _GEN_1757;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_10 <= _GEN_13059;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_10 <= _GEN_12995;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_10 <= _GEN_12931;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_10 <= _GEN_12867;
    end else begin
      committed_10 <= _GEN_1758;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_11 <= _GEN_13060;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_11 <= _GEN_12996;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_11 <= _GEN_12932;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_11 <= _GEN_12868;
    end else begin
      committed_11 <= _GEN_1759;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_12 <= _GEN_13061;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_12 <= _GEN_12997;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_12 <= _GEN_12933;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_12 <= _GEN_12869;
    end else begin
      committed_12 <= _GEN_1760;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_13 <= _GEN_13062;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_13 <= _GEN_12998;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_13 <= _GEN_12934;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_13 <= _GEN_12870;
    end else begin
      committed_13 <= _GEN_1761;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_14 <= _GEN_13063;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_14 <= _GEN_12999;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_14 <= _GEN_12935;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_14 <= _GEN_12871;
    end else begin
      committed_14 <= _GEN_1762;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_15 <= _GEN_13064;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_15 <= _GEN_13000;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_15 <= _GEN_12936;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_15 <= _GEN_12872;
    end else begin
      committed_15 <= _GEN_1763;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_16 <= _GEN_13065;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_16 <= _GEN_13001;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_16 <= _GEN_12937;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_16 <= _GEN_12873;
    end else begin
      committed_16 <= _GEN_1764;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_17 <= _GEN_13066;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_17 <= _GEN_13002;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_17 <= _GEN_12938;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_17 <= _GEN_12874;
    end else begin
      committed_17 <= _GEN_1765;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_18 <= _GEN_13067;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_18 <= _GEN_13003;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_18 <= _GEN_12939;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_18 <= _GEN_12875;
    end else begin
      committed_18 <= _GEN_1766;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_19 <= _GEN_13068;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_19 <= _GEN_13004;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_19 <= _GEN_12940;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_19 <= _GEN_12876;
    end else begin
      committed_19 <= _GEN_1767;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_20 <= _GEN_13069;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_20 <= _GEN_13005;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_20 <= _GEN_12941;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_20 <= _GEN_12877;
    end else begin
      committed_20 <= _GEN_1768;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_21 <= _GEN_13070;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_21 <= _GEN_13006;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_21 <= _GEN_12942;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_21 <= _GEN_12878;
    end else begin
      committed_21 <= _GEN_1769;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_22 <= _GEN_13071;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_22 <= _GEN_13007;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_22 <= _GEN_12943;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_22 <= _GEN_12879;
    end else begin
      committed_22 <= _GEN_1770;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_23 <= _GEN_13072;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_23 <= _GEN_13008;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_23 <= _GEN_12944;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_23 <= _GEN_12880;
    end else begin
      committed_23 <= _GEN_1771;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_24 <= _GEN_13073;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_24 <= _GEN_13009;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_24 <= _GEN_12945;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_24 <= _GEN_12881;
    end else begin
      committed_24 <= _GEN_1772;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_25 <= _GEN_13074;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_25 <= _GEN_13010;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_25 <= _GEN_12946;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_25 <= _GEN_12882;
    end else begin
      committed_25 <= _GEN_1773;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_26 <= _GEN_13075;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_26 <= _GEN_13011;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_26 <= _GEN_12947;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_26 <= _GEN_12883;
    end else begin
      committed_26 <= _GEN_1774;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_27 <= _GEN_13076;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_27 <= _GEN_13012;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_27 <= _GEN_12948;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_27 <= _GEN_12884;
    end else begin
      committed_27 <= _GEN_1775;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_28 <= _GEN_13077;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_28 <= _GEN_13013;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_28 <= _GEN_12949;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_28 <= _GEN_12885;
    end else begin
      committed_28 <= _GEN_1776;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_29 <= _GEN_13078;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_29 <= _GEN_13014;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_29 <= _GEN_12950;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_29 <= _GEN_12886;
    end else begin
      committed_29 <= _GEN_1777;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_30 <= _GEN_13079;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_30 <= _GEN_13015;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_30 <= _GEN_12951;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_30 <= _GEN_12887;
    end else begin
      committed_30 <= _GEN_1778;
    end
    if (commitCount > 3'h3) begin // @[StoreQueue.scala 490:30]
      committed_31 <= _GEN_13080;
    end else if (commitCount > 3'h2) begin // @[StoreQueue.scala 490:30]
      committed_31 <= _GEN_13016;
    end else if (commitCount > 3'h1) begin // @[StoreQueue.scala 490:30]
      committed_31 <= _GEN_12952;
    end else if (_T_53) begin // @[StoreQueue.scala 490:30]
      committed_31 <= _GEN_12888;
    end else begin
      committed_31 <= _GEN_1779;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h0 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_0 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_0 <= _GEN_8358;
      end
    end else begin
      pending_0 <= _GEN_8358;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_1 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_1 <= _GEN_8359;
      end
    end else begin
      pending_1 <= _GEN_8359;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h2 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_2 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_2 <= _GEN_8360;
      end
    end else begin
      pending_2 <= _GEN_8360;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h3 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_3 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_3 <= _GEN_8361;
      end
    end else begin
      pending_3 <= _GEN_8361;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h4 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_4 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_4 <= _GEN_8362;
      end
    end else begin
      pending_4 <= _GEN_8362;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h5 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_5 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_5 <= _GEN_8363;
      end
    end else begin
      pending_5 <= _GEN_8363;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h6 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_6 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_6 <= _GEN_8364;
      end
    end else begin
      pending_6 <= _GEN_8364;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h7 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_7 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_7 <= _GEN_8365;
      end
    end else begin
      pending_7 <= _GEN_8365;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h8 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_8 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_8 <= _GEN_8366;
      end
    end else begin
      pending_8 <= _GEN_8366;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h9 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_9 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_9 <= _GEN_8367;
      end
    end else begin
      pending_9 <= _GEN_8367;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'ha == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_10 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_10 <= _GEN_8368;
      end
    end else begin
      pending_10 <= _GEN_8368;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'hb == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_11 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_11 <= _GEN_8369;
      end
    end else begin
      pending_11 <= _GEN_8369;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'hc == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_12 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_12 <= _GEN_8370;
      end
    end else begin
      pending_12 <= _GEN_8370;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'hd == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_13 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_13 <= _GEN_8371;
      end
    end else begin
      pending_13 <= _GEN_8371;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'he == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_14 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_14 <= _GEN_8372;
      end
    end else begin
      pending_14 <= _GEN_8372;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'hf == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_15 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_15 <= _GEN_8373;
      end
    end else begin
      pending_15 <= _GEN_8373;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h10 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_16 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_16 <= _GEN_8374;
      end
    end else begin
      pending_16 <= _GEN_8374;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h11 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_17 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_17 <= _GEN_8375;
      end
    end else begin
      pending_17 <= _GEN_8375;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h12 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_18 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_18 <= _GEN_8376;
      end
    end else begin
      pending_18 <= _GEN_8376;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h13 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_19 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_19 <= _GEN_8377;
      end
    end else begin
      pending_19 <= _GEN_8377;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h14 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_20 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_20 <= _GEN_8378;
      end
    end else begin
      pending_20 <= _GEN_8378;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h15 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_21 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_21 <= _GEN_8379;
      end
    end else begin
      pending_21 <= _GEN_8379;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h16 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_22 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_22 <= _GEN_8380;
      end
    end else begin
      pending_22 <= _GEN_8380;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h17 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_23 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_23 <= _GEN_8381;
      end
    end else begin
      pending_23 <= _GEN_8381;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h18 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_24 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_24 <= _GEN_8382;
      end
    end else begin
      pending_24 <= _GEN_8382;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h19 == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_25 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_25 <= _GEN_8383;
      end
    end else begin
      pending_25 <= _GEN_8383;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1a == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_26 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_26 <= _GEN_8384;
      end
    end else begin
      pending_26 <= _GEN_8384;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1b == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_27 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_27 <= _GEN_8385;
      end
    end else begin
      pending_27 <= _GEN_8385;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1c == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_28 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_28 <= _GEN_8386;
      end
    end else begin
      pending_28 <= _GEN_8386;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1d == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_29 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_29 <= _GEN_8387;
      end
    end else begin
      pending_29 <= _GEN_8387;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1e == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_30 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_30 <= _GEN_8388;
      end
    end else begin
      pending_30 <= _GEN_8388;
    end
    if (_T_47) begin // @[StoreQueue.scala 447:30]
      if (5'h1f == deqPtrExt_0_value) begin // @[StoreQueue.scala 449:21]
        pending_31 <= 1'h0; // @[StoreQueue.scala 449:21]
      end else begin
        pending_31 <= _GEN_8389;
      end
    end else begin
      pending_31 <= _GEN_8389;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h0 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_0 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_0 <= _GEN_5248;
      end
    end else begin
      mmio_0 <= _GEN_5248;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_1 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_1 <= _GEN_5249;
      end
    end else begin
      mmio_1 <= _GEN_5249;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h2 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_2 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_2 <= _GEN_5250;
      end
    end else begin
      mmio_2 <= _GEN_5250;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h3 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_3 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_3 <= _GEN_5251;
      end
    end else begin
      mmio_3 <= _GEN_5251;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h4 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_4 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_4 <= _GEN_5252;
      end
    end else begin
      mmio_4 <= _GEN_5252;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h5 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_5 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_5 <= _GEN_5253;
      end
    end else begin
      mmio_5 <= _GEN_5253;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h6 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_6 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_6 <= _GEN_5254;
      end
    end else begin
      mmio_6 <= _GEN_5254;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h7 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_7 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_7 <= _GEN_5255;
      end
    end else begin
      mmio_7 <= _GEN_5255;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h8 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_8 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_8 <= _GEN_5256;
      end
    end else begin
      mmio_8 <= _GEN_5256;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h9 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_9 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_9 <= _GEN_5257;
      end
    end else begin
      mmio_9 <= _GEN_5257;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'ha == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_10 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_10 <= _GEN_5258;
      end
    end else begin
      mmio_10 <= _GEN_5258;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'hb == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_11 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_11 <= _GEN_5259;
      end
    end else begin
      mmio_11 <= _GEN_5259;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'hc == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_12 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_12 <= _GEN_5260;
      end
    end else begin
      mmio_12 <= _GEN_5260;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'hd == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_13 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_13 <= _GEN_5261;
      end
    end else begin
      mmio_13 <= _GEN_5261;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'he == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_14 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_14 <= _GEN_5262;
      end
    end else begin
      mmio_14 <= _GEN_5262;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'hf == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_15 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_15 <= _GEN_5263;
      end
    end else begin
      mmio_15 <= _GEN_5263;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h10 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_16 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_16 <= _GEN_5264;
      end
    end else begin
      mmio_16 <= _GEN_5264;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h11 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_17 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_17 <= _GEN_5265;
      end
    end else begin
      mmio_17 <= _GEN_5265;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h12 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_18 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_18 <= _GEN_5266;
      end
    end else begin
      mmio_18 <= _GEN_5266;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h13 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_19 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_19 <= _GEN_5267;
      end
    end else begin
      mmio_19 <= _GEN_5267;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h14 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_20 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_20 <= _GEN_5268;
      end
    end else begin
      mmio_20 <= _GEN_5268;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h15 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_21 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_21 <= _GEN_5269;
      end
    end else begin
      mmio_21 <= _GEN_5269;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h16 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_22 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_22 <= _GEN_5270;
      end
    end else begin
      mmio_22 <= _GEN_5270;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h17 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_23 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_23 <= _GEN_5271;
      end
    end else begin
      mmio_23 <= _GEN_5271;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h18 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_24 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_24 <= _GEN_5272;
      end
    end else begin
      mmio_24 <= _GEN_5272;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h19 == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_25 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_25 <= _GEN_5273;
      end
    end else begin
      mmio_25 <= _GEN_5273;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1a == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_26 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_26 <= _GEN_5274;
      end
    end else begin
      mmio_26 <= _GEN_5274;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1b == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_27 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_27 <= _GEN_5275;
      end
    end else begin
      mmio_27 <= _GEN_5275;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1c == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_28 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_28 <= _GEN_5276;
      end
    end else begin
      mmio_28 <= _GEN_5276;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1d == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_29 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_29 <= _GEN_5277;
      end
    end else begin
      mmio_29 <= _GEN_5277;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1e == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_30 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_30 <= _GEN_5278;
      end
    end else begin
      mmio_30 <= _GEN_5278;
    end
    if (storeInFireReg_1) begin // @[StoreQueue.scala 276:27]
      if (5'h1f == stWbIndexReg_1) begin // @[StoreQueue.scala 278:26]
        mmio_31 <= io_storeInRe_1_mmio; // @[StoreQueue.scala 278:26]
      end else begin
        mmio_31 <= _GEN_5279;
      end
    end else begin
      mmio_31 <= _GEN_5279;
    end
    if (reset) begin // @[StoreQueue.scala 129:26]
      enqPtrExt_0_flag <= 1'h0; // @[StoreQueue.scala 129:26]
    end else if (lastCycleRedirect) begin // @[StoreQueue.scala 599:28]
      enqPtrExt_0_flag <= new_ptr_4_flag; // @[StoreQueue.scala 601:15]
    end else begin
      enqPtrExt_0_flag <= new_ptr_8_flag; // @[StoreQueue.scala 603:15]
    end
    if (reset) begin // @[StoreQueue.scala 129:26]
      enqPtrExt_0_value <= 5'h0; // @[StoreQueue.scala 129:26]
    end else if (lastCycleRedirect) begin // @[StoreQueue.scala 599:28]
      enqPtrExt_0_value <= flipped_new_ptr_value; // @[StoreQueue.scala 601:15]
    end else begin
      enqPtrExt_0_value <= new_ptr_8_value; // @[StoreQueue.scala 603:15]
    end
    if (reset) begin // @[StoreQueue.scala 130:28]
      rdataPtrExt_0_flag <= 1'h0; // @[StoreQueue.scala 130:28]
    end else if (_rdataPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_0_flag <= rdataPtrExtNext_new_ptr_2_flag;
    end else if (_rdataPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_0_flag <= rdataPtrExtNext_new_ptr_flag;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      rdataPtrExt_0_flag <= rdataPtrExtNext_new_ptr_4_flag;
    end
    if (reset) begin // @[StoreQueue.scala 130:28]
      rdataPtrExt_0_value <= 5'h0; // @[StoreQueue.scala 130:28]
    end else if (_rdataPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_0_value <= rdataPtrExtNext_new_ptr_2_value;
    end else if (_rdataPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_0_value <= rdataPtrExtNext_new_ptr_value;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      rdataPtrExt_0_value <= rdataPtrExtNext_new_ptr_4_value;
    end
    if (reset) begin // @[StoreQueue.scala 130:28]
      rdataPtrExt_1_flag <= 1'h0; // @[StoreQueue.scala 130:28]
    end else if (_rdataPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_1_flag <= rdataPtrExtNext_new_ptr_3_flag;
    end else if (_rdataPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_1_flag <= rdataPtrExtNext_new_ptr_1_flag;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      rdataPtrExt_1_flag <= rdataPtrExtNext_new_ptr_5_flag;
    end
    if (reset) begin // @[StoreQueue.scala 130:28]
      rdataPtrExt_1_value <= 5'h1; // @[StoreQueue.scala 130:28]
    end else if (_rdataPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_1_value <= rdataPtrExtNext_new_ptr_3_value;
    end else if (_rdataPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      rdataPtrExt_1_value <= rdataPtrExtNext_new_ptr_1_value;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      rdataPtrExt_1_value <= rdataPtrExtNext_new_ptr_5_value;
    end
    if (reset) begin // @[StoreQueue.scala 131:26]
      deqPtrExt_0_flag <= 1'h0; // @[StoreQueue.scala 131:26]
    end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_0_flag <= deqPtrExtNext_new_ptr_2_flag;
    end else if (_deqPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_0_flag <= rdataPtrExtNext_new_ptr_4_flag;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      deqPtrExt_0_flag <= rdataPtrExtNext_new_ptr_4_flag;
    end
    if (reset) begin // @[StoreQueue.scala 131:26]
      deqPtrExt_0_value <= 5'h0; // @[StoreQueue.scala 131:26]
    end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_0_value <= deqPtrExtNext_new_ptr_2_value;
    end else if (_deqPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_0_value <= rdataPtrExtNext_new_ptr_4_value;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      deqPtrExt_0_value <= rdataPtrExtNext_new_ptr_4_value;
    end
    if (reset) begin // @[StoreQueue.scala 131:26]
      deqPtrExt_1_flag <= 1'h0; // @[StoreQueue.scala 131:26]
    end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_1_flag <= deqPtrExtNext_new_ptr_3_flag;
    end else if (_deqPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_1_flag <= rdataPtrExtNext_new_ptr_5_flag;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      deqPtrExt_1_flag <= rdataPtrExtNext_new_ptr_5_flag;
    end
    if (reset) begin // @[StoreQueue.scala 131:26]
      deqPtrExt_1_value <= 5'h1; // @[StoreQueue.scala 131:26]
    end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_1_value <= deqPtrExtNext_new_ptr_3_value;
    end else if (_deqPtrExtNext_T) begin // @[PriorityMuxDefault.scala 28:12]
      deqPtrExt_1_value <= rdataPtrExtNext_new_ptr_5_value;
    end else if (_rdataPtrExtNext_T_2) begin // @[PriorityMuxDefault.scala 26:12]
      deqPtrExt_1_value <= rdataPtrExtNext_new_ptr_5_value;
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_0_flag <= 1'h0; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_0_flag <= vaddrModule_io_raddr_2_new_ptr_flag; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_0_value <= 5'h0; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_0_value <= vaddrModule_io_raddr_2_new_ptr_value; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_1_flag <= 1'h0; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_1_flag <= new_ptr_1_flag; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_1_value <= 5'h1; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_1_value <= new_ptr_1_value; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_2_flag <= 1'h0; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_2_flag <= new_ptr_2_flag; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_2_value <= 5'h2; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_2_value <= new_ptr_2_value; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_3_flag <= 1'h0; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_3_flag <= new_ptr_3_flag; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 132:26]
      cmtPtrExt_3_value <= 5'h3; // @[StoreQueue.scala 132:26]
    end else begin
      cmtPtrExt_3_value <= new_ptr_3_value; // @[StoreQueue.scala 502:13]
    end
    if (reset) begin // @[StoreQueue.scala 133:28]
      issuePtrExt_flag <= 1'h0; // @[StoreQueue.scala 133:28]
    end else if (io_brqRedirect_valid) begin // @[StoreQueue.scala 207:31]
      if (_issuePtrExt_T) begin // @[StoreQueue.scala 208:23]
        issuePtrExt_flag <= cmtPtrExt_0_flag;
      end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
        issuePtrExt_flag <= deqPtrExtNext_new_ptr_2_flag;
      end else begin
        issuePtrExt_flag <= _deqPtrExtNext_T_4_0_flag;
      end
    end else begin
      issuePtrExt_flag <= nextIssuePtr_flag; // @[StoreQueue.scala 205:15]
    end
    if (reset) begin // @[StoreQueue.scala 133:28]
      issuePtrExt_value <= 5'h0; // @[StoreQueue.scala 133:28]
    end else if (io_brqRedirect_valid) begin // @[StoreQueue.scala 207:31]
      if (_issuePtrExt_T) begin // @[StoreQueue.scala 208:23]
        issuePtrExt_value <= cmtPtrExt_0_value;
      end else if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
        issuePtrExt_value <= deqPtrExtNext_new_ptr_2_value;
      end else begin
        issuePtrExt_value <= _deqPtrExtNext_T_4_0_value;
      end
    end else begin
      issuePtrExt_value <= nextIssuePtr_value; // @[StoreQueue.scala 205:15]
    end
    commitCount <= io_rob_scommit; // @[StoreQueue.scala 146:28]
    if (_deqPtrExtNext_T_1) begin // @[PriorityMuxDefault.scala 28:12]
      io_sqDeq_REG <= 2'h2;
    end else begin
      io_sqDeq_REG <= {{1'd0}, _io_sqDeq_T_4};
    end
    storeInFireReg <= io_storeIn_0_valid & addr_valid; // @[StoreQueue.scala 274:55]
    stWbIndexReg <= io_storeIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 275:31]
    storeInFireReg_1 <= io_storeIn_1_valid & addr_valid_1; // @[StoreQueue.scala 274:55]
    stWbIndexReg_1 <= io_storeIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 275:31]
    vpmaskNotEqual_REG <= {vpmaskNotEqual_hi,vpmaskNotEqual_lo}; // @[StoreQueue.scala 351:47]
    vpmaskNotEqual_REG_1 <= {dataModule_io_needForward_0_0_hi,dataModule_io_needForward_0_0_lo}; // @[StoreQueue.scala 351:96]
    if (differentFlag) begin // @[StoreQueue.scala 333:26]
      vpmaskNotEqual_REG_2 <= _needForward_T_1;
    end else begin
      vpmaskNotEqual_REG_2 <= _canForward1_T_1;
    end
    vpmaskNotEqual_REG_3 <= {vpmaskNotEqual_hi_2,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 353:28]
    vaddrMatchFailed_REG <= io_forward_0_valid; // @[StoreQueue.scala 355:53]
    if (_io_forward_0_dataInvalidFast_T_6[0]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg <= 5'h0;
    end else if (_io_forward_0_dataInvalidFast_T_6[1]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg <= 5'h1;
    end else if (_io_forward_0_dataInvalidFast_T_6[2]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg <= 5'h2;
    end else if (_io_forward_0_dataInvalidFast_T_6[3]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg <= 5'h3;
    end else begin
      dataInvalidSqIdxReg <= _dataInvalidSqIdxReg_T_65;
    end
    io_forward_0_dataInvalid_REG <= io_forward_0_dataInvalidFast; // @[StoreQueue.scala 378:41]
    vpmaskNotEqual_REG_4 <= {vpmaskNotEqual_hi_3,vpmaskNotEqual_lo_3}; // @[StoreQueue.scala 351:47]
    vpmaskNotEqual_REG_5 <= {dataModule_io_needForward_1_0_hi,dataModule_io_needForward_1_0_lo}; // @[StoreQueue.scala 351:96]
    if (differentFlag_1) begin // @[StoreQueue.scala 333:26]
      vpmaskNotEqual_REG_6 <= _needForward_T_4;
    end else begin
      vpmaskNotEqual_REG_6 <= _canForward1_T_5;
    end
    vpmaskNotEqual_REG_7 <= {vpmaskNotEqual_hi_2,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 353:28]
    vaddrMatchFailed_REG_1 <= io_forward_1_valid; // @[StoreQueue.scala 355:53]
    if (_io_forward_1_dataInvalidFast_T_6[0]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg_1 <= 5'h0;
    end else if (_io_forward_1_dataInvalidFast_T_6[1]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg_1 <= 5'h1;
    end else if (_io_forward_1_dataInvalidFast_T_6[2]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg_1 <= 5'h2;
    end else if (_io_forward_1_dataInvalidFast_T_6[3]) begin // @[Mux.scala 47:70]
      dataInvalidSqIdxReg_1 <= 5'h3;
    end else begin
      dataInvalidSqIdxReg_1 <= _dataInvalidSqIdxReg_T_135;
    end
    io_forward_1_dataInvalid_REG <= io_forward_1_dataInvalidFast; // @[StoreQueue.scala 378:41]
    if (reset) begin // @[StoreQueue.scala 398:29]
      uncacheState <= 3'h0; // @[StoreQueue.scala 398:29]
    end else if (3'h0 == uncacheState) begin // @[StoreQueue.scala 399:24]
      if (REG_6) begin // @[StoreQueue.scala 401:121]
        uncacheState <= 3'h1; // @[StoreQueue.scala 402:22]
      end
    end else if (3'h1 == uncacheState) begin // @[StoreQueue.scala 399:24]
      if (_T_47) begin // @[StoreQueue.scala 406:35]
        uncacheState <= 3'h2; // @[StoreQueue.scala 407:22]
      end
    end else if (3'h2 == uncacheState) begin // @[StoreQueue.scala 399:24]
      uncacheState <= _GEN_8878;
    end else begin
      uncacheState <= _GEN_8882;
    end
    REG_6 <= io_rob_pendingst & _GEN_8779 & _GEN_8811 & _GEN_8843 & _GEN_8875; // @[StoreQueue.scala 401:98]
    REG_7 <= _GEN_8917[3:2] == 2'h3; // @[package.scala 403:42]
    lastEnqCancel_REG_0 <= io_enq_req_0_valid & enqCancel_0; // @[StoreQueue.scala 595:88]
    lastEnqCancel_REG_1 <= io_enq_req_1_valid & enqCancel_1; // @[StoreQueue.scala 595:88]
    lastEnqCancel_REG_2 <= io_enq_req_2_valid & enqCancel_2; // @[StoreQueue.scala 595:88]
    lastEnqCancel_REG_3 <= io_enq_req_3_valid & enqCancel_3; // @[StoreQueue.scala 595:88]
    lastCycleRedirect <= io_brqRedirect_valid; // @[StoreQueue.scala 596:34]
    lastCycleCancelCount_REG_0 <= _needCancel_0_T_2 & allocated_0 & ~committed_0; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_1 <= _needCancel_1_T_2 & allocated_1 & ~committed_1; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_2 <= _needCancel_2_T_2 & allocated_2 & ~committed_2; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_3 <= _needCancel_3_T_2 & allocated_3 & ~committed_3; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_4 <= _needCancel_4_T_2 & allocated_4 & ~committed_4; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_5 <= _needCancel_5_T_2 & allocated_5 & ~committed_5; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_6 <= _needCancel_6_T_2 & allocated_6 & ~committed_6; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_7 <= _needCancel_7_T_2 & allocated_7 & ~committed_7; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_8 <= _needCancel_8_T_2 & allocated_8 & ~committed_8; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_9 <= _needCancel_9_T_2 & allocated_9 & ~committed_9; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_10 <= _needCancel_10_T_2 & allocated_10 & ~committed_10; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_11 <= _needCancel_11_T_2 & allocated_11 & ~committed_11; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_12 <= _needCancel_12_T_2 & allocated_12 & ~committed_12; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_13 <= _needCancel_13_T_2 & allocated_13 & ~committed_13; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_14 <= _needCancel_14_T_2 & allocated_14 & ~committed_14; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_15 <= _needCancel_15_T_2 & allocated_15 & ~committed_15; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_16 <= _needCancel_16_T_2 & allocated_16 & ~committed_16; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_17 <= _needCancel_17_T_2 & allocated_17 & ~committed_17; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_18 <= _needCancel_18_T_2 & allocated_18 & ~committed_18; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_19 <= _needCancel_19_T_2 & allocated_19 & ~committed_19; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_20 <= _needCancel_20_T_2 & allocated_20 & ~committed_20; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_21 <= _needCancel_21_T_2 & allocated_21 & ~committed_21; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_22 <= _needCancel_22_T_2 & allocated_22 & ~committed_22; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_23 <= _needCancel_23_T_2 & allocated_23 & ~committed_23; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_24 <= _needCancel_24_T_2 & allocated_24 & ~committed_24; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_25 <= _needCancel_25_T_2 & allocated_25 & ~committed_25; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_26 <= _needCancel_26_T_2 & allocated_26 & ~committed_26; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_27 <= _needCancel_27_T_2 & allocated_27 & ~committed_27; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_28 <= _needCancel_28_T_2 & allocated_28 & ~committed_28; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_29 <= _needCancel_29_T_2 & allocated_29 & ~committed_29; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_30 <= _needCancel_30_T_2 & allocated_30 & ~committed_30; // @[StoreQueue.scala 586:78]
    lastCycleCancelCount_REG_31 <= _needCancel_31_T_2 & allocated_31 & ~committed_31; // @[StoreQueue.scala 586:78]
    io_sqCancelCnt_REG <= lastCycleCancelCount + _GEN_13838; // @[StoreQueue.scala 612:50]
    io_sqempty_REG <= enqPtrExt_0_value == deqPtrExt_0_value & _validCount_T; // @[StoreQueue.scala 619:47]
    io_perf_0_value_REG <= uncacheState != 3'h0; // @[StoreQueue.scala 635:38]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= io_mmioStout_ready & io_mmioStout_valid; // @[Decoupled.scala 50:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= io_mmioStout_valid & _T_113; // @[StoreQueue.scala 638:44]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= validCount < _T_152; // @[StoreQueue.scala 639:70]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= validCount > _T_152 & validCount <= _T_172; // @[StoreQueue.scala 640:96]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= validCount > _T_172 & _GEN_13863 <= _T_194; // @[StoreQueue.scala 641:96]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= _GEN_13863 > _T_194; // @[StoreQueue.scala 642:70]
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
  _RAND_0 = {1{`RANDOM}};
  uop_0_ctrl_fuOpType = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  uop_0_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  uop_0_robIdx_value = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  uop_1_ctrl_fuOpType = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  uop_1_robIdx_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  uop_2_ctrl_fuOpType = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  uop_3_ctrl_fuOpType = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  uop_4_ctrl_fuOpType = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  uop_5_ctrl_fuOpType = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  uop_6_ctrl_fuOpType = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  uop_7_ctrl_fuOpType = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  uop_8_ctrl_fuOpType = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  uop_8_robIdx_flag = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  uop_8_robIdx_value = _RAND_26[6:0];
  _RAND_27 = {1{`RANDOM}};
  uop_9_ctrl_fuOpType = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  uop_9_robIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  uop_9_robIdx_value = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  uop_10_ctrl_fuOpType = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  uop_10_robIdx_flag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  uop_10_robIdx_value = _RAND_32[6:0];
  _RAND_33 = {1{`RANDOM}};
  uop_11_ctrl_fuOpType = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  uop_11_robIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  uop_11_robIdx_value = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  uop_12_ctrl_fuOpType = _RAND_36[6:0];
  _RAND_37 = {1{`RANDOM}};
  uop_12_robIdx_flag = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  uop_12_robIdx_value = _RAND_38[6:0];
  _RAND_39 = {1{`RANDOM}};
  uop_13_ctrl_fuOpType = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  uop_13_robIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_13_robIdx_value = _RAND_41[6:0];
  _RAND_42 = {1{`RANDOM}};
  uop_14_ctrl_fuOpType = _RAND_42[6:0];
  _RAND_43 = {1{`RANDOM}};
  uop_14_robIdx_flag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  uop_14_robIdx_value = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  uop_15_ctrl_fuOpType = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  uop_15_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  uop_15_robIdx_value = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  uop_16_ctrl_fuOpType = _RAND_48[6:0];
  _RAND_49 = {1{`RANDOM}};
  uop_16_robIdx_flag = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  uop_16_robIdx_value = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  uop_17_ctrl_fuOpType = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  uop_17_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  uop_17_robIdx_value = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  uop_18_ctrl_fuOpType = _RAND_54[6:0];
  _RAND_55 = {1{`RANDOM}};
  uop_18_robIdx_flag = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  uop_18_robIdx_value = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  uop_19_ctrl_fuOpType = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  uop_19_robIdx_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  uop_19_robIdx_value = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  uop_20_ctrl_fuOpType = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  uop_20_robIdx_flag = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  uop_20_robIdx_value = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  uop_21_ctrl_fuOpType = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  uop_21_robIdx_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  uop_21_robIdx_value = _RAND_65[6:0];
  _RAND_66 = {1{`RANDOM}};
  uop_22_ctrl_fuOpType = _RAND_66[6:0];
  _RAND_67 = {1{`RANDOM}};
  uop_22_robIdx_flag = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  uop_22_robIdx_value = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  uop_23_ctrl_fuOpType = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  uop_23_robIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  uop_23_robIdx_value = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  uop_24_ctrl_fuOpType = _RAND_72[6:0];
  _RAND_73 = {1{`RANDOM}};
  uop_24_robIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  uop_24_robIdx_value = _RAND_74[6:0];
  _RAND_75 = {1{`RANDOM}};
  uop_25_ctrl_fuOpType = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  uop_25_robIdx_flag = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  uop_25_robIdx_value = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  uop_26_ctrl_fuOpType = _RAND_78[6:0];
  _RAND_79 = {1{`RANDOM}};
  uop_26_robIdx_flag = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  uop_26_robIdx_value = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  uop_27_ctrl_fuOpType = _RAND_81[6:0];
  _RAND_82 = {1{`RANDOM}};
  uop_27_robIdx_flag = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  uop_27_robIdx_value = _RAND_83[6:0];
  _RAND_84 = {1{`RANDOM}};
  uop_28_ctrl_fuOpType = _RAND_84[6:0];
  _RAND_85 = {1{`RANDOM}};
  uop_28_robIdx_flag = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  uop_28_robIdx_value = _RAND_86[6:0];
  _RAND_87 = {1{`RANDOM}};
  uop_29_ctrl_fuOpType = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  uop_29_robIdx_flag = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  uop_29_robIdx_value = _RAND_89[6:0];
  _RAND_90 = {1{`RANDOM}};
  uop_30_ctrl_fuOpType = _RAND_90[6:0];
  _RAND_91 = {1{`RANDOM}};
  uop_30_robIdx_flag = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  uop_30_robIdx_value = _RAND_92[6:0];
  _RAND_93 = {1{`RANDOM}};
  uop_31_ctrl_fuOpType = _RAND_93[6:0];
  _RAND_94 = {1{`RANDOM}};
  uop_31_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  uop_31_robIdx_value = _RAND_95[6:0];
  _RAND_96 = {1{`RANDOM}};
  allocated_0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  allocated_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  allocated_2 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  allocated_3 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  allocated_4 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  allocated_5 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  allocated_6 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  allocated_7 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  allocated_8 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  allocated_9 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  allocated_10 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  allocated_11 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  allocated_12 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  allocated_13 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  allocated_14 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  allocated_15 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  allocated_16 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  allocated_17 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  allocated_18 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  allocated_19 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  allocated_20 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  allocated_21 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  allocated_22 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  allocated_23 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  allocated_24 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  allocated_25 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  allocated_26 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  allocated_27 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  allocated_28 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  allocated_29 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  allocated_30 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  allocated_31 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  addrvalid_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  addrvalid_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  addrvalid_2 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  addrvalid_3 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  addrvalid_4 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  addrvalid_5 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  addrvalid_6 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  addrvalid_7 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  addrvalid_8 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  addrvalid_9 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  addrvalid_10 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  addrvalid_11 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  addrvalid_12 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  addrvalid_13 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  addrvalid_14 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  addrvalid_15 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  addrvalid_16 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  addrvalid_17 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  addrvalid_18 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  addrvalid_19 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  addrvalid_20 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  addrvalid_21 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  addrvalid_22 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  addrvalid_23 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  addrvalid_24 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  addrvalid_25 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  addrvalid_26 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  addrvalid_27 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  addrvalid_28 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  addrvalid_29 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  addrvalid_30 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  addrvalid_31 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  datavalid_0 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  datavalid_1 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  datavalid_2 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  datavalid_3 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  datavalid_4 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  datavalid_5 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  datavalid_6 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  datavalid_7 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  datavalid_8 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  datavalid_9 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  datavalid_10 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  datavalid_11 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  datavalid_12 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  datavalid_13 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  datavalid_14 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  datavalid_15 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  datavalid_16 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  datavalid_17 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  datavalid_18 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  datavalid_19 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  datavalid_20 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  datavalid_21 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  datavalid_22 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  datavalid_23 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  datavalid_24 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  datavalid_25 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  datavalid_26 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  datavalid_27 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  datavalid_28 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  datavalid_29 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  datavalid_30 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  datavalid_31 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  committed_0 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  committed_1 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  committed_2 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  committed_3 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  committed_4 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  committed_5 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  committed_6 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  committed_7 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  committed_8 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  committed_9 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  committed_10 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  committed_11 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  committed_12 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  committed_13 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  committed_14 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  committed_15 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  committed_16 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  committed_17 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  committed_18 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  committed_19 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  committed_20 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  committed_21 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  committed_22 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  committed_23 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  committed_24 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  committed_25 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  committed_26 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  committed_27 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  committed_28 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  committed_29 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  committed_30 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  committed_31 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  pending_0 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  pending_1 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  pending_2 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  pending_3 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  pending_4 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  pending_5 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  pending_6 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  pending_7 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  pending_8 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  pending_9 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  pending_10 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  pending_11 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  pending_12 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  pending_13 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  pending_14 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  pending_15 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  pending_16 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  pending_17 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  pending_18 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  pending_19 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  pending_20 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  pending_21 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  pending_22 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  pending_23 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  pending_24 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  pending_25 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  pending_26 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  pending_27 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  pending_28 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  pending_29 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  pending_30 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  pending_31 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  mmio_0 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  mmio_1 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  mmio_2 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  mmio_3 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  mmio_4 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  mmio_5 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  mmio_6 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  mmio_7 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  mmio_8 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  mmio_9 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  mmio_10 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  mmio_11 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  mmio_12 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  mmio_13 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  mmio_14 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  mmio_15 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  mmio_16 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  mmio_17 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  mmio_18 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  mmio_19 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  mmio_20 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  mmio_21 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  mmio_22 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  mmio_23 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  mmio_24 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  mmio_25 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  mmio_26 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  mmio_27 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  mmio_28 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  mmio_29 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  mmio_30 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  mmio_31 = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  enqPtrExt_0_flag = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  enqPtrExt_0_value = _RAND_289[4:0];
  _RAND_290 = {1{`RANDOM}};
  rdataPtrExt_0_flag = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  rdataPtrExt_0_value = _RAND_291[4:0];
  _RAND_292 = {1{`RANDOM}};
  rdataPtrExt_1_flag = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  rdataPtrExt_1_value = _RAND_293[4:0];
  _RAND_294 = {1{`RANDOM}};
  deqPtrExt_0_flag = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  deqPtrExt_0_value = _RAND_295[4:0];
  _RAND_296 = {1{`RANDOM}};
  deqPtrExt_1_flag = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  deqPtrExt_1_value = _RAND_297[4:0];
  _RAND_298 = {1{`RANDOM}};
  cmtPtrExt_0_flag = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  cmtPtrExt_0_value = _RAND_299[4:0];
  _RAND_300 = {1{`RANDOM}};
  cmtPtrExt_1_flag = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  cmtPtrExt_1_value = _RAND_301[4:0];
  _RAND_302 = {1{`RANDOM}};
  cmtPtrExt_2_flag = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  cmtPtrExt_2_value = _RAND_303[4:0];
  _RAND_304 = {1{`RANDOM}};
  cmtPtrExt_3_flag = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  cmtPtrExt_3_value = _RAND_305[4:0];
  _RAND_306 = {1{`RANDOM}};
  issuePtrExt_flag = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  issuePtrExt_value = _RAND_307[4:0];
  _RAND_308 = {1{`RANDOM}};
  commitCount = _RAND_308[2:0];
  _RAND_309 = {1{`RANDOM}};
  io_sqDeq_REG = _RAND_309[1:0];
  _RAND_310 = {1{`RANDOM}};
  storeInFireReg = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  stWbIndexReg = _RAND_311[4:0];
  _RAND_312 = {1{`RANDOM}};
  storeInFireReg_1 = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  stWbIndexReg_1 = _RAND_313[4:0];
  _RAND_314 = {1{`RANDOM}};
  vpmaskNotEqual_REG = _RAND_314[31:0];
  _RAND_315 = {1{`RANDOM}};
  vpmaskNotEqual_REG_1 = _RAND_315[31:0];
  _RAND_316 = {1{`RANDOM}};
  vpmaskNotEqual_REG_2 = _RAND_316[31:0];
  _RAND_317 = {1{`RANDOM}};
  vpmaskNotEqual_REG_3 = _RAND_317[31:0];
  _RAND_318 = {1{`RANDOM}};
  vaddrMatchFailed_REG = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  dataInvalidSqIdxReg = _RAND_319[4:0];
  _RAND_320 = {1{`RANDOM}};
  io_forward_0_dataInvalid_REG = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  vpmaskNotEqual_REG_4 = _RAND_321[31:0];
  _RAND_322 = {1{`RANDOM}};
  vpmaskNotEqual_REG_5 = _RAND_322[31:0];
  _RAND_323 = {1{`RANDOM}};
  vpmaskNotEqual_REG_6 = _RAND_323[31:0];
  _RAND_324 = {1{`RANDOM}};
  vpmaskNotEqual_REG_7 = _RAND_324[31:0];
  _RAND_325 = {1{`RANDOM}};
  vaddrMatchFailed_REG_1 = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  dataInvalidSqIdxReg_1 = _RAND_326[4:0];
  _RAND_327 = {1{`RANDOM}};
  io_forward_1_dataInvalid_REG = _RAND_327[0:0];
  _RAND_328 = {1{`RANDOM}};
  uncacheState = _RAND_328[2:0];
  _RAND_329 = {1{`RANDOM}};
  REG_6 = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  REG_7 = _RAND_330[0:0];
  _RAND_331 = {1{`RANDOM}};
  lastEnqCancel_REG_0 = _RAND_331[0:0];
  _RAND_332 = {1{`RANDOM}};
  lastEnqCancel_REG_1 = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  lastEnqCancel_REG_2 = _RAND_333[0:0];
  _RAND_334 = {1{`RANDOM}};
  lastEnqCancel_REG_3 = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  lastCycleRedirect = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  lastCycleCancelCount_REG_0 = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  lastCycleCancelCount_REG_1 = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  lastCycleCancelCount_REG_2 = _RAND_338[0:0];
  _RAND_339 = {1{`RANDOM}};
  lastCycleCancelCount_REG_3 = _RAND_339[0:0];
  _RAND_340 = {1{`RANDOM}};
  lastCycleCancelCount_REG_4 = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  lastCycleCancelCount_REG_5 = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  lastCycleCancelCount_REG_6 = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  lastCycleCancelCount_REG_7 = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  lastCycleCancelCount_REG_8 = _RAND_344[0:0];
  _RAND_345 = {1{`RANDOM}};
  lastCycleCancelCount_REG_9 = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  lastCycleCancelCount_REG_10 = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  lastCycleCancelCount_REG_11 = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  lastCycleCancelCount_REG_12 = _RAND_348[0:0];
  _RAND_349 = {1{`RANDOM}};
  lastCycleCancelCount_REG_13 = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  lastCycleCancelCount_REG_14 = _RAND_350[0:0];
  _RAND_351 = {1{`RANDOM}};
  lastCycleCancelCount_REG_15 = _RAND_351[0:0];
  _RAND_352 = {1{`RANDOM}};
  lastCycleCancelCount_REG_16 = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  lastCycleCancelCount_REG_17 = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  lastCycleCancelCount_REG_18 = _RAND_354[0:0];
  _RAND_355 = {1{`RANDOM}};
  lastCycleCancelCount_REG_19 = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  lastCycleCancelCount_REG_20 = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  lastCycleCancelCount_REG_21 = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  lastCycleCancelCount_REG_22 = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  lastCycleCancelCount_REG_23 = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  lastCycleCancelCount_REG_24 = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  lastCycleCancelCount_REG_25 = _RAND_361[0:0];
  _RAND_362 = {1{`RANDOM}};
  lastCycleCancelCount_REG_26 = _RAND_362[0:0];
  _RAND_363 = {1{`RANDOM}};
  lastCycleCancelCount_REG_27 = _RAND_363[0:0];
  _RAND_364 = {1{`RANDOM}};
  lastCycleCancelCount_REG_28 = _RAND_364[0:0];
  _RAND_365 = {1{`RANDOM}};
  lastCycleCancelCount_REG_29 = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  lastCycleCancelCount_REG_30 = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  lastCycleCancelCount_REG_31 = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  io_sqCancelCnt_REG = _RAND_368[5:0];
  _RAND_369 = {1{`RANDOM}};
  io_sqempty_REG = _RAND_369[0:0];
  _RAND_370 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_371[0:0];
  _RAND_372 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_372[0:0];
  _RAND_373 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_373[0:0];
  _RAND_374 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_374[0:0];
  _RAND_375 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_375[0:0];
  _RAND_376 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_377[0:0];
  _RAND_378 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_378[0:0];
  _RAND_379 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_379[0:0];
  _RAND_380 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_380[0:0];
  _RAND_381 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_381[0:0];
  _RAND_382 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_382[0:0];
  _RAND_383 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_383[0:0];
  _RAND_384 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_384[0:0];
  _RAND_385 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_385[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
