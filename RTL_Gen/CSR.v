module CSR(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  input         io_redirectIn_valid,
  input  [7:0]  csrio_hartId,
  input  [5:0]  csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  csrio_perf_perfEventsLsu_7_value,
  input  [5:0]  csrio_perf_perfEventsHc_0_value,
  input  [5:0]  csrio_perf_perfEventsHc_1_value,
  input  [5:0]  csrio_perf_perfEventsHc_2_value,
  input  [5:0]  csrio_perf_perfEventsHc_3_value,
  input  [5:0]  csrio_perf_perfEventsHc_4_value,
  input  [5:0]  csrio_perf_perfEventsHc_5_value,
  input  [5:0]  csrio_perf_perfEventsHc_6_value,
  input  [5:0]  csrio_perf_perfEventsHc_7_value,
  input  [5:0]  csrio_perf_perfEventsHc_8_value,
  input  [5:0]  csrio_perf_perfEventsHc_9_value,
  input  [5:0]  csrio_perf_perfEventsHc_10_value,
  input  [5:0]  csrio_perf_perfEventsHc_11_value,
  input  [5:0]  csrio_perf_perfEventsHc_12_value,
  input  [5:0]  csrio_perf_perfEventsHc_13_value,
  input  [5:0]  csrio_perf_perfEventsHc_14_value,
  input  [5:0]  csrio_perf_perfEventsHc_15_value,
  input  [5:0]  csrio_perf_perfEventsHc_16_value,
  input  [5:0]  csrio_perf_perfEventsHc_17_value,
  input  [5:0]  csrio_perf_perfEventsHc_18_value,
  input  [5:0]  csrio_perf_perfEventsHc_19_value,
  input  [5:0]  csrio_perf_perfEventsHc_20_value,
  input  [5:0]  csrio_perf_perfEventsHc_21_value,
  input  [5:0]  csrio_perf_perfEventsHc_22_value,
  input  [5:0]  csrio_perf_perfEventsHc_23_value,
  input  [5:0]  csrio_perf_perfEventsHc_24_value,
  input  [5:0]  csrio_perf_perfEventsHc_25_value,
  input  [5:0]  csrio_perf_perfEventsHc_26_value,
  input  [5:0]  csrio_perf_perfEventsHc_27_value,
  input  [5:0]  csrio_perf_perfEventsHc_28_value,
  input  [5:0]  csrio_perf_perfEventsHc_29_value,
  input  [5:0]  csrio_perf_perfEventsHc_30_value,
  input  [5:0]  csrio_perf_perfEventsHc_31_value,
  input  [5:0]  csrio_perf_perfEventsHc_32_value,
  input  [5:0]  csrio_perf_perfEventsHc_33_value,
  input  [5:0]  csrio_perf_perfEventsHc_34_value,
  input  [5:0]  csrio_perf_perfEventsHc_35_value,
  input  [5:0]  csrio_perf_perfEventsHc_36_value,
  input  [5:0]  csrio_perf_perfEventsHc_37_value,
  input  [5:0]  csrio_perf_perfEventsHc_38_value,
  input  [5:0]  csrio_perf_perfEventsHc_39_value,
  input  [5:0]  csrio_perf_perfEventsHc_40_value,
  input  [5:0]  csrio_perf_perfEventsHc_41_value,
  input  [5:0]  csrio_perf_perfEventsHc_42_value,
  input  [5:0]  csrio_perf_perfEventsHc_43_value,
  input  [5:0]  csrio_perf_perfEventsHc_44_value,
  input  [5:0]  csrio_perf_perfEventsHc_45_value,
  input  [5:0]  csrio_perf_perfEventsHc_46_value,
  input  [5:0]  csrio_perf_perfEventsHc_47_value,
  input  [5:0]  csrio_perf_perfEventsHc_48_value,
  input  [5:0]  csrio_perf_perfEventsHc_49_value,
  input  [2:0]  csrio_perf_retiredInstr,
  output        csrio_isPerfCnt,
  input         csrio_fpu_fflags_valid,
  input  [4:0]  csrio_fpu_fflags_bits,
  input         csrio_fpu_dirty_fs,
  output [2:0]  csrio_fpu_frm,
  input         csrio_exception_valid,
  input  [38:0] csrio_exception_bits_uop_cf_pc,
  input         csrio_exception_bits_uop_cf_exceptionVec_0,
  input         csrio_exception_bits_uop_cf_exceptionVec_1,
  input         csrio_exception_bits_uop_cf_exceptionVec_2,
  input         csrio_exception_bits_uop_cf_exceptionVec_3,
  input         csrio_exception_bits_uop_cf_exceptionVec_4,
  input         csrio_exception_bits_uop_cf_exceptionVec_5,
  input         csrio_exception_bits_uop_cf_exceptionVec_6,
  input         csrio_exception_bits_uop_cf_exceptionVec_7,
  input         csrio_exception_bits_uop_cf_exceptionVec_8,
  input         csrio_exception_bits_uop_cf_exceptionVec_9,
  input         csrio_exception_bits_uop_cf_exceptionVec_11,
  input         csrio_exception_bits_uop_cf_exceptionVec_12,
  input         csrio_exception_bits_uop_cf_exceptionVec_13,
  input         csrio_exception_bits_uop_cf_exceptionVec_15,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         csrio_exception_bits_uop_ctrl_singleStep,
  input         csrio_exception_bits_isInterrupt,
  output        csrio_isXRet,
  output [38:0] csrio_trapTarget,
  output        csrio_interrupt,
  output        csrio_wfi_event,
  input  [38:0] csrio_memExceptionVAddr,
  input         csrio_externalInterrupt_mtip,
  input         csrio_externalInterrupt_msip,
  input         csrio_externalInterrupt_meip,
  input         csrio_externalInterrupt_seip,
  input         csrio_externalInterrupt_debug,
  output        csrio_tlb_satp_changed,
  output [3:0]  csrio_tlb_satp_mode,
  output [15:0] csrio_tlb_satp_asid,
  output [43:0] csrio_tlb_satp_ppn,
  output        csrio_tlb_priv_mxr,
  output        csrio_tlb_priv_sum,
  output [1:0]  csrio_tlb_priv_imode,
  output [1:0]  csrio_tlb_priv_dmode,
  output        csrio_disableSfence,
  output        csrio_customCtrl_l1I_pf_enable,
  output        csrio_customCtrl_lvpred_disable,
  output        csrio_customCtrl_no_spec_load,
  output        csrio_customCtrl_storeset_wait_store,
  output [4:0]  csrio_customCtrl_lvpred_timeout,
  output        csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        csrio_customCtrl_bp_ctrl_btb_enable,
  output        csrio_customCtrl_bp_ctrl_tage_enable,
  output        csrio_customCtrl_bp_ctrl_sc_enable,
  output        csrio_customCtrl_bp_ctrl_ras_enable,
  output [3:0]  csrio_customCtrl_sbuffer_threshold,
  output        csrio_customCtrl_ldld_vio_check_enable,
  output        csrio_customCtrl_soft_prefetch_enable,
  output        csrio_customCtrl_cache_error_enable,
  output        csrio_customCtrl_svinval_enable,
  output        csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] csrio_customCtrl_distribute_csr_waddr,
  output [63:0] csrio_customCtrl_distribute_csr_wdata,
  output        csrio_customCtrl_singlestep,
  output        csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_trigger_enable_0,
  output        csrio_customCtrl_trigger_enable_1,
  output        csrio_customCtrl_trigger_enable_2,
  output        csrio_customCtrl_trigger_enable_3,
  output        csrio_customCtrl_trigger_enable_4,
  output        csrio_customCtrl_trigger_enable_5,
  output        csrio_customCtrl_trigger_enable_6,
  output        csrio_customCtrl_trigger_enable_7,
  output        csrio_customCtrl_trigger_enable_8,
  output        csrio_customCtrl_trigger_enable_9,
  input         csrio_distributedUpdate_0_wvalid,
  input  [11:0] csrio_distributedUpdate_0_waddr,
  input  [63:0] csrio_distributedUpdate_0_wdata,
  input         csrio_distributedUpdate_1_wvalid,
  input  [11:0] csrio_distributedUpdate_1_waddr,
  input  [63:0] csrio_distributedUpdate_1_wdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
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
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
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
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [63:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [63:0] _RAND_92;
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
  reg [63:0] _RAND_123;
  reg [63:0] _RAND_124;
  reg [63:0] _RAND_125;
  reg [63:0] _RAND_126;
  reg [63:0] _RAND_127;
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
  reg [63:0] _RAND_130;
  reg [63:0] _RAND_131;
  reg [63:0] _RAND_132;
  reg [63:0] _RAND_133;
  reg [63:0] _RAND_134;
  reg [63:0] _RAND_135;
  reg [63:0] _RAND_136;
  reg [63:0] _RAND_137;
  reg [63:0] _RAND_138;
  reg [63:0] _RAND_139;
  reg [63:0] _RAND_140;
  reg [63:0] _RAND_141;
  reg [63:0] _RAND_142;
  reg [63:0] _RAND_143;
  reg [63:0] _RAND_144;
  reg [63:0] _RAND_145;
  reg [63:0] _RAND_146;
  reg [63:0] _RAND_147;
  reg [63:0] _RAND_148;
  reg [63:0] _RAND_149;
  reg [63:0] _RAND_150;
  reg [63:0] _RAND_151;
  reg [63:0] _RAND_152;
  reg [63:0] _RAND_153;
  reg [63:0] _RAND_154;
  reg [63:0] _RAND_155;
  reg [63:0] _RAND_156;
  reg [63:0] _RAND_157;
  reg [63:0] _RAND_158;
  reg [63:0] _RAND_159;
  reg [63:0] _RAND_160;
  reg [63:0] _RAND_161;
  reg [63:0] _RAND_162;
  reg [63:0] _RAND_163;
  reg [63:0] _RAND_164;
  reg [63:0] _RAND_165;
  reg [63:0] _RAND_166;
  reg [63:0] _RAND_167;
  reg [63:0] _RAND_168;
  reg [63:0] _RAND_169;
  reg [63:0] _RAND_170;
  reg [63:0] _RAND_171;
  reg [63:0] _RAND_172;
  reg [63:0] _RAND_173;
  reg [63:0] _RAND_174;
  reg [63:0] _RAND_175;
  reg [63:0] _RAND_176;
  reg [63:0] _RAND_177;
  reg [63:0] _RAND_178;
  reg [63:0] _RAND_179;
  reg [63:0] _RAND_180;
  reg [63:0] _RAND_181;
  reg [63:0] _RAND_182;
  reg [63:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [63:0] _RAND_185;
  reg [63:0] _RAND_186;
  reg [63:0] _RAND_187;
  reg [63:0] _RAND_188;
  reg [63:0] _RAND_189;
  reg [63:0] _RAND_190;
  reg [63:0] _RAND_191;
  reg [63:0] _RAND_192;
  reg [63:0] _RAND_193;
  reg [63:0] _RAND_194;
  reg [63:0] _RAND_195;
  reg [63:0] _RAND_196;
  reg [63:0] _RAND_197;
  reg [63:0] _RAND_198;
  reg [63:0] _RAND_199;
  reg [63:0] _RAND_200;
  reg [63:0] _RAND_201;
  reg [63:0] _RAND_202;
  reg [63:0] _RAND_203;
  reg [63:0] _RAND_204;
  reg [63:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [63:0] _RAND_214;
  reg [63:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [63:0] _RAND_218;
  reg [63:0] _RAND_219;
  reg [63:0] _RAND_220;
  reg [63:0] _RAND_221;
  reg [63:0] _RAND_222;
  reg [63:0] _RAND_223;
  reg [63:0] _RAND_224;
  reg [63:0] _RAND_225;
  reg [63:0] _RAND_226;
  reg [63:0] _RAND_227;
  reg [63:0] _RAND_228;
`endif // RANDOMIZE_REG_INIT
  wire  hpm_hc_clock; // @[PerfCounterUtils.scala 252:21]
  wire [63:0] hpm_hc_io_hpm_event_0; // @[PerfCounterUtils.scala 252:21]
  wire [63:0] hpm_hc_io_hpm_event_1; // @[PerfCounterUtils.scala 252:21]
  wire [63:0] hpm_hc_io_hpm_event_2; // @[PerfCounterUtils.scala 252:21]
  wire [63:0] hpm_hc_io_hpm_event_3; // @[PerfCounterUtils.scala 252:21]
  wire [63:0] hpm_hc_io_hpm_event_4; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_0_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_1_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_2_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_3_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_4_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_5_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_6_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_7_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_8_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_9_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_10_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_11_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_12_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_13_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_14_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_15_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_16_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_17_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_18_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_19_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_20_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_21_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_22_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_23_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_24_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_25_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_26_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_27_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_28_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_29_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_30_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_31_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_32_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_33_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_34_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_35_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_36_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_37_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_38_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_39_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_40_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_41_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_42_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_43_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_44_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_45_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_46_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_47_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_48_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_events_sets_49_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_perf_0_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_perf_1_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_perf_2_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_perf_3_value; // @[PerfCounterUtils.scala 252:21]
  wire [5:0] hpm_hc_io_perf_4_value; // @[PerfCounterUtils.scala 252:21]
  wire  delay_clock; // @[Hold.scala 94:23]
  wire  delay_io_in; // @[Hold.scala 94:23]
  wire  delay_io_out; // @[Hold.scala 94:23]
  wire  delayedUpdate0_delay_clock; // @[Hold.scala 94:23]
  wire  delayedUpdate0_delay_io_in_wvalid; // @[Hold.scala 94:23]
  wire [11:0] delayedUpdate0_delay_io_in_waddr; // @[Hold.scala 94:23]
  wire [63:0] delayedUpdate0_delay_io_in_wdata; // @[Hold.scala 94:23]
  wire  delayedUpdate0_delay_io_out_wvalid; // @[Hold.scala 94:23]
  wire [11:0] delayedUpdate0_delay_io_out_waddr; // @[Hold.scala 94:23]
  wire [63:0] delayedUpdate0_delay_io_out_wdata; // @[Hold.scala 94:23]
  wire  delayedUpdate1_delay_clock; // @[Hold.scala 94:23]
  wire  delayedUpdate1_delay_io_in_wvalid; // @[Hold.scala 94:23]
  wire [11:0] delayedUpdate1_delay_io_in_waddr; // @[Hold.scala 94:23]
  wire [63:0] delayedUpdate1_delay_io_in_wdata; // @[Hold.scala 94:23]
  wire  delayedUpdate1_delay_io_out_wvalid; // @[Hold.scala 94:23]
  wire [11:0] delayedUpdate1_delay_io_out_waddr; // @[Hold.scala 94:23]
  wire [63:0] delayedUpdate1_delay_io_out_wdata; // @[Hold.scala 94:23]
  wire  difftest_io_clock; // @[CSR.scala 1192:26]
  wire [7:0] difftest_io_coreid; // @[CSR.scala 1192:26]
  wire [31:0] difftest_io_intrNO; // @[CSR.scala 1192:26]
  wire [31:0] difftest_io_cause; // @[CSR.scala 1192:26]
  wire [63:0] difftest_io_exceptionPC; // @[CSR.scala 1192:26]
  wire [31:0] difftest_io_exceptionInst; // @[CSR.scala 1192:26]
  wire  difftest_1_io_clock; // @[CSR.scala 1205:26]
  wire [7:0] difftest_1_io_coreid; // @[CSR.scala 1205:26]
  wire [1:0] difftest_1_io_priviledgeMode; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mstatus; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_sstatus; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mepc; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_sepc; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mtval; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_stval; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mtvec; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_stvec; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mcause; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_scause; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_satp; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mip; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mie; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mscratch; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_sscratch; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_mideleg; // @[CSR.scala 1205:26]
  wire [63:0] difftest_1_io_medeleg; // @[CSR.scala 1205:26]
  wire  difftest_2_io_clock; // @[CSR.scala 1229:26]
  wire [7:0] difftest_2_io_coreid; // @[CSR.scala 1229:26]
  wire  difftest_2_io_debugMode; // @[CSR.scala 1229:26]
  wire [63:0] difftest_2_io_dcsr; // @[CSR.scala 1229:26]
  wire [63:0] difftest_2_io_dpc; // @[CSR.scala 1229:26]
  wire [63:0] difftest_2_io_dscratch0; // @[CSR.scala 1229:26]
  wire [63:0] difftest_2_io_dscratch1; // @[CSR.scala 1229:26]
  reg [31:0] dcsr; // @[CSR.scala 221:21]
  reg [63:0] dpc; // @[CSR.scala 222:16]
  reg [63:0] dscratch; // @[CSR.scala 223:21]
  reg [63:0] dscratch1; // @[CSR.scala 224:22]
  reg  debugMode; // @[CSR.scala 225:26]
  reg  debugIntrEnable; // @[CSR.scala 226:32]
  wire [1:0] dcsrData_prv = dcsr[1:0]; // @[CSR.scala 252:28]
  wire  dcsrData_step = dcsr[2]; // @[CSR.scala 252:28]
  wire  dcsrData_nmip = dcsr[3]; // @[CSR.scala 252:28]
  wire  dcsrData_mprven = dcsr[4]; // @[CSR.scala 252:28]
  wire  dcsrData_v = dcsr[5]; // @[CSR.scala 252:28]
  wire [2:0] dcsrData_cause = dcsr[8:6]; // @[CSR.scala 252:28]
  wire  dcsrData_stoptime = dcsr[9]; // @[CSR.scala 252:28]
  wire  dcsrData_stopcycle = dcsr[10]; // @[CSR.scala 252:28]
  wire  dcsrData_stepie = dcsr[11]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreaku = dcsr[12]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreaks = dcsr[13]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreakh = dcsr[14]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreakm = dcsr[15]; // @[CSR.scala 252:28]
  wire [11:0] dcsrData_zero3 = dcsr[27:16]; // @[CSR.scala 252:28]
  wire [1:0] dcsrData_zero4 = dcsr[29:28]; // @[CSR.scala 252:28]
  wire [1:0] dcsrData_xdebugver = dcsr[31:30]; // @[CSR.scala 252:28]
  wire  _csrio_customCtrl_singlestep_T = ~debugMode; // @[CSR.scala 260:51]
  reg [63:0] tdata1Phy_0; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_1; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_2; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_3; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_4; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_5; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_6; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_7; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_8; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_9; // @[CSR.scala 273:26]
  reg [63:0] tdata2Phy_0; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_1; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_2; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_3; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_4; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_5; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_6; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_7; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_8; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_9; // @[CSR.scala 274:22]
  reg [3:0] tselectPhy; // @[CSR.scala 275:27]
  reg [63:0] tControlPhy; // @[CSR.scala 281:28]
  reg  triggerAction; // @[CSR.scala 282:30]
  wire [63:0] _GEN_1 = 4'h1 == tselectPhy ? tdata1Phy_1 : tdata1Phy_0; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_2 = 4'h2 == tselectPhy ? tdata1Phy_2 : _GEN_1; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_3 = 4'h3 == tselectPhy ? tdata1Phy_3 : _GEN_2; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_4 = 4'h4 == tselectPhy ? tdata1Phy_4 : _GEN_3; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_5 = 4'h5 == tselectPhy ? tdata1Phy_5 : _GEN_4; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_6 = 4'h6 == tselectPhy ? tdata1Phy_6 : _GEN_5; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_7 = 4'h7 == tselectPhy ? tdata1Phy_7 : _GEN_6; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_8 = 4'h8 == tselectPhy ? tdata1Phy_8 : _GEN_7; // @[CSR.scala 283:{14,14}]
  wire [63:0] tdata1Wire = 4'h9 == tselectPhy ? tdata1Phy_9 : _GEN_8; // @[CSR.scala 283:{14,14}]
  wire [63:0] _GEN_11 = 4'h1 == tselectPhy ? tdata2Phy_1 : tdata2Phy_0; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_12 = 4'h2 == tselectPhy ? tdata2Phy_2 : _GEN_11; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_13 = 4'h3 == tselectPhy ? tdata2Phy_3 : _GEN_12; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_14 = 4'h4 == tselectPhy ? tdata2Phy_4 : _GEN_13; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_15 = 4'h5 == tselectPhy ? tdata2Phy_5 : _GEN_14; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_16 = 4'h6 == tselectPhy ? tdata2Phy_6 : _GEN_15; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_17 = 4'h7 == tselectPhy ? tdata2Phy_7 : _GEN_16; // @[CSR.scala 284:{14,14}]
  wire [63:0] _GEN_18 = 4'h8 == tselectPhy ? tdata2Phy_8 : _GEN_17; // @[CSR.scala 284:{14,14}]
  wire [63:0] tdata2Wire = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 284:{14,14}]
  wire [1:0] _csrio_customCtrl_frontend_trigger_t_bits_addr_T_5 = 4'h6 == tselectPhy ? 2'h2 : {{1'd0}, 4'h1 ==
    tselectPhy}; // @[Mux.scala 81:58]
  wire [1:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_5 = 4'h4 == tselectPhy ? 2'h2 : {{1'd0}, 4'h3 == tselectPhy}; // @[Mux.scala 81:58]
  wire [1:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_7 = 4'h5 == tselectPhy ? 2'h3 :
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_5; // @[Mux.scala 81:58]
  wire [2:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_9 = 4'h7 == tselectPhy ? 3'h4 : {{1'd0},
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_7}; // @[Mux.scala 81:58]
  reg [63:0] mtvec; // @[CSR.scala 375:22]
  reg [63:0] mcounteren; // @[CSR.scala 376:27]
  reg [63:0] mcause; // @[CSR.scala 377:23]
  reg [63:0] mtval; // @[CSR.scala 378:22]
  reg [63:0] mepc; // @[CSR.scala 379:17]
  reg [63:0] mie; // @[CSR.scala 383:20]
  reg [63:0] mipReg; // @[CSR.scala 385:24]
  wire [11:0] _mip_T = {csrio_externalInterrupt_meip,1'h0,csrio_externalInterrupt_seip,1'h0,csrio_externalInterrupt_mtip
    ,1'h0,2'h0,csrio_externalInterrupt_msip,3'h0}; // @[CSR.scala 387:22]
  wire [63:0] _GEN_580 = {{52'd0}, _mip_T}; // @[CSR.scala 387:29]
  wire [63:0] _mip_T_1 = _GEN_580 | mipReg; // @[CSR.scala 387:29]
  wire  mip_s_u = _mip_T_1[0]; // @[CSR.scala 387:47]
  wire  mip_s_s = _mip_T_1[1]; // @[CSR.scala 387:47]
  wire  mip_s_h = _mip_T_1[2]; // @[CSR.scala 387:47]
  wire  mip_s_m = _mip_T_1[3]; // @[CSR.scala 387:47]
  wire  mip_t_u = _mip_T_1[4]; // @[CSR.scala 387:47]
  wire  mip_t_s = _mip_T_1[5]; // @[CSR.scala 387:47]
  wire  mip_t_h = _mip_T_1[6]; // @[CSR.scala 387:47]
  wire  mip_t_m = _mip_T_1[7]; // @[CSR.scala 387:47]
  wire  mip_e_u = _mip_T_1[8]; // @[CSR.scala 387:47]
  wire  mip_e_s = _mip_T_1[9]; // @[CSR.scala 387:47]
  wire  mip_e_h = _mip_T_1[10]; // @[CSR.scala 387:47]
  wire  mip_e_m = _mip_T_1[11]; // @[CSR.scala 387:47]
  reg [63:0] misa; // @[CSR.scala 396:21]
  reg [63:0] mhartid; // @[CSR.scala 404:24]
  reg [63:0] mstatus; // @[CSR.scala 406:24]
  wire  mstatusStruct_ie_u = mstatus[0]; // @[CSR.scala 428:39]
  wire  mstatusStruct_ie_s = mstatus[1]; // @[CSR.scala 428:39]
  wire  mstatusStruct_ie_h = mstatus[2]; // @[CSR.scala 428:39]
  wire  mstatusStruct_ie_m = mstatus[3]; // @[CSR.scala 428:39]
  wire  mstatusStruct_pie_u = mstatus[4]; // @[CSR.scala 428:39]
  wire  mstatusStruct_pie_s = mstatus[5]; // @[CSR.scala 428:39]
  wire  mstatusStruct_pie_h = mstatus[6]; // @[CSR.scala 428:39]
  wire  mstatusStruct_pie_m = mstatus[7]; // @[CSR.scala 428:39]
  wire  mstatusStruct_spp = mstatus[8]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_hpp = mstatus[10:9]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_mpp = mstatus[12:11]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_fs = mstatus[14:13]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_xs = mstatus[16:15]; // @[CSR.scala 428:39]
  wire  mstatusStruct_mprv = mstatus[17]; // @[CSR.scala 428:39]
  wire  mstatusStruct_sum = mstatus[18]; // @[CSR.scala 428:39]
  wire  mstatusStruct_mxr = mstatus[19]; // @[CSR.scala 428:39]
  wire  mstatusStruct_tvm = mstatus[20]; // @[CSR.scala 428:39]
  wire  mstatusStruct_tw = mstatus[21]; // @[CSR.scala 428:39]
  wire  mstatusStruct_tsr = mstatus[22]; // @[CSR.scala 428:39]
  wire [8:0] mstatusStruct_pad0 = mstatus[31:23]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_uxl = mstatus[33:32]; // @[CSR.scala 428:39]
  wire [1:0] mstatusStruct_sxl = mstatus[35:34]; // @[CSR.scala 428:39]
  wire  mstatusStruct_sbe = mstatus[36]; // @[CSR.scala 428:39]
  wire  mstatusStruct_mbe = mstatus[37]; // @[CSR.scala 428:39]
  wire [24:0] mstatusStruct_pad1 = mstatus[62:38]; // @[CSR.scala 428:39]
  wire  mstatusStruct_sd = mstatus[63]; // @[CSR.scala 428:39]
  reg [63:0] medeleg; // @[CSR.scala 452:24]
  reg [63:0] mideleg; // @[CSR.scala 453:24]
  reg [63:0] mscratch; // @[CSR.scala 454:25]
  reg [63:0] cfgMerged__0; // @[PMP.scala 290:28]
  reg [63:0] cfgMerged__1; // @[PMP.scala 290:28]
  wire [127:0] _cfgs_T = {cfgMerged__1,cfgMerged__0}; // @[PMP.scala 291:44]
  wire [1:0] cfgs__0_a = _cfgs_T[4:3]; // @[PMP.scala 291:44]
  wire  cfgs__0_l = _cfgs_T[7]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__1_a = _cfgs_T[12:11]; // @[PMP.scala 291:44]
  wire  cfgs__1_l = _cfgs_T[15]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__2_a = _cfgs_T[20:19]; // @[PMP.scala 291:44]
  wire  cfgs__2_l = _cfgs_T[23]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__3_a = _cfgs_T[28:27]; // @[PMP.scala 291:44]
  wire  cfgs__3_l = _cfgs_T[31]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__4_a = _cfgs_T[36:35]; // @[PMP.scala 291:44]
  wire  cfgs__4_l = _cfgs_T[39]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__5_a = _cfgs_T[44:43]; // @[PMP.scala 291:44]
  wire  cfgs__5_l = _cfgs_T[47]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__6_a = _cfgs_T[52:51]; // @[PMP.scala 291:44]
  wire  cfgs__6_l = _cfgs_T[55]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__7_a = _cfgs_T[60:59]; // @[PMP.scala 291:44]
  wire  cfgs__7_l = _cfgs_T[63]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__8_a = _cfgs_T[68:67]; // @[PMP.scala 291:44]
  wire  cfgs__8_l = _cfgs_T[71]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__9_a = _cfgs_T[76:75]; // @[PMP.scala 291:44]
  wire  cfgs__9_l = _cfgs_T[79]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__10_a = _cfgs_T[84:83]; // @[PMP.scala 291:44]
  wire  cfgs__10_l = _cfgs_T[87]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__11_a = _cfgs_T[92:91]; // @[PMP.scala 291:44]
  wire  cfgs__11_l = _cfgs_T[95]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__12_a = _cfgs_T[100:99]; // @[PMP.scala 291:44]
  wire  cfgs__12_l = _cfgs_T[103]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__13_a = _cfgs_T[108:107]; // @[PMP.scala 291:44]
  wire  cfgs__13_l = _cfgs_T[111]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__14_a = _cfgs_T[116:115]; // @[PMP.scala 291:44]
  wire  cfgs__14_l = _cfgs_T[119]; // @[PMP.scala 291:44]
  wire [1:0] cfgs__15_a = _cfgs_T[124:123]; // @[PMP.scala 291:44]
  wire  cfgs__15_l = _cfgs_T[127]; // @[PMP.scala 291:44]
  reg [33:0] addr_1_0; // @[PMP.scala 292:23]
  reg [33:0] addr_1_1; // @[PMP.scala 292:23]
  reg [33:0] addr_1_2; // @[PMP.scala 292:23]
  reg [33:0] addr_1_3; // @[PMP.scala 292:23]
  reg [33:0] addr_1_4; // @[PMP.scala 292:23]
  reg [33:0] addr_1_5; // @[PMP.scala 292:23]
  reg [33:0] addr_1_6; // @[PMP.scala 292:23]
  reg [33:0] addr_1_7; // @[PMP.scala 292:23]
  reg [33:0] addr_1_8; // @[PMP.scala 292:23]
  reg [33:0] addr_1_9; // @[PMP.scala 292:23]
  reg [33:0] addr_1_10; // @[PMP.scala 292:23]
  reg [33:0] addr_1_11; // @[PMP.scala 292:23]
  reg [33:0] addr_1_12; // @[PMP.scala 292:23]
  reg [33:0] addr_1_13; // @[PMP.scala 292:23]
  reg [33:0] addr_1_14; // @[PMP.scala 292:23]
  reg [33:0] addr_1_15; // @[PMP.scala 292:23]
  reg [63:0] cfgMerged_1_0; // @[PMP.scala 290:28]
  reg [63:0] cfgMerged_1_1; // @[PMP.scala 290:28]
  wire [127:0] _cfgs_T_113 = {cfgMerged_1_1,cfgMerged_1_0}; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_0_a = _cfgs_T_113[4:3]; // @[PMP.scala 291:44]
  wire  cfgs_1_0_l = _cfgs_T_113[7]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_1_a = _cfgs_T_113[12:11]; // @[PMP.scala 291:44]
  wire  cfgs_1_1_l = _cfgs_T_113[15]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_2_a = _cfgs_T_113[20:19]; // @[PMP.scala 291:44]
  wire  cfgs_1_2_l = _cfgs_T_113[23]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_3_a = _cfgs_T_113[28:27]; // @[PMP.scala 291:44]
  wire  cfgs_1_3_l = _cfgs_T_113[31]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_4_a = _cfgs_T_113[36:35]; // @[PMP.scala 291:44]
  wire  cfgs_1_4_l = _cfgs_T_113[39]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_5_a = _cfgs_T_113[44:43]; // @[PMP.scala 291:44]
  wire  cfgs_1_5_l = _cfgs_T_113[47]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_6_a = _cfgs_T_113[52:51]; // @[PMP.scala 291:44]
  wire  cfgs_1_6_l = _cfgs_T_113[55]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_7_a = _cfgs_T_113[60:59]; // @[PMP.scala 291:44]
  wire  cfgs_1_7_l = _cfgs_T_113[63]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_8_a = _cfgs_T_113[68:67]; // @[PMP.scala 291:44]
  wire  cfgs_1_8_l = _cfgs_T_113[71]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_9_a = _cfgs_T_113[76:75]; // @[PMP.scala 291:44]
  wire  cfgs_1_9_l = _cfgs_T_113[79]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_10_a = _cfgs_T_113[84:83]; // @[PMP.scala 291:44]
  wire  cfgs_1_10_l = _cfgs_T_113[87]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_11_a = _cfgs_T_113[92:91]; // @[PMP.scala 291:44]
  wire  cfgs_1_11_l = _cfgs_T_113[95]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_12_a = _cfgs_T_113[100:99]; // @[PMP.scala 291:44]
  wire  cfgs_1_12_l = _cfgs_T_113[103]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_13_a = _cfgs_T_113[108:107]; // @[PMP.scala 291:44]
  wire  cfgs_1_13_l = _cfgs_T_113[111]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_14_a = _cfgs_T_113[116:115]; // @[PMP.scala 291:44]
  wire  cfgs_1_14_l = _cfgs_T_113[119]; // @[PMP.scala 291:44]
  wire [1:0] cfgs_1_15_a = _cfgs_T_113[124:123]; // @[PMP.scala 291:44]
  wire  cfgs_1_15_l = _cfgs_T_113[127]; // @[PMP.scala 291:44]
  reg [33:0] addr_3_0; // @[PMP.scala 292:23]
  reg [33:0] addr_3_1; // @[PMP.scala 292:23]
  reg [33:0] addr_3_2; // @[PMP.scala 292:23]
  reg [33:0] addr_3_3; // @[PMP.scala 292:23]
  reg [33:0] addr_3_4; // @[PMP.scala 292:23]
  reg [33:0] addr_3_5; // @[PMP.scala 292:23]
  reg [33:0] addr_3_6; // @[PMP.scala 292:23]
  reg [33:0] addr_3_7; // @[PMP.scala 292:23]
  reg [33:0] addr_3_8; // @[PMP.scala 292:23]
  reg [33:0] addr_3_9; // @[PMP.scala 292:23]
  reg [33:0] addr_3_10; // @[PMP.scala 292:23]
  reg [33:0] addr_3_11; // @[PMP.scala 292:23]
  reg [33:0] addr_3_12; // @[PMP.scala 292:23]
  reg [33:0] addr_3_13; // @[PMP.scala 292:23]
  reg [33:0] addr_3_14; // @[PMP.scala 292:23]
  reg [33:0] addr_3_15; // @[PMP.scala 292:23]
  reg [63:0] stvec; // @[CSR.scala 476:22]
  wire [63:0] sieMask = 64'h222 & mideleg; // @[CSR.scala 478:26]
  reg [63:0] satp; // @[CSR.scala 481:90]
  reg [63:0] sepc; // @[CSR.scala 487:21]
  reg [63:0] scause; // @[CSR.scala 490:23]
  reg [63:0] stval; // @[CSR.scala 491:18]
  reg [63:0] sscratch; // @[CSR.scala 492:25]
  reg [63:0] scounteren; // @[CSR.scala 493:27]
  reg [63:0] sbpctl; // @[CSR.scala 497:23]
  reg [63:0] spfctl; // @[CSR.scala 508:23]
  reg [63:0] sdsid; // @[CSR.scala 517:22]
  reg [63:0] slvpredctl; // @[CSR.scala 521:27]
  reg [63:0] smblockctl; // @[CSR.scala 535:27]
  reg [63:0] srnctl; // @[CSR.scala 548:23]
  wire [15:0] sa_asid = satp[59:44]; // @[Bundle.scala 398:35]
  wire [3:0] sa_mode = satp[63:60]; // @[Bundle.scala 398:35]
  reg [15:0] tlbBundle_satp_changed_REG; // @[Hold.scala 73:21]
  reg [63:0] fcsr; // @[CSR.scala 567:21]
  reg [1:0] priviledgeMode; // @[CSR.scala 605:31]
  wire [3:0] priviledgeModeOH = 4'h1 << priviledgeMode; // @[OneHot.scala 57:35]
  reg  perfEventscounten_0; // @[CSR.scala 611:34]
  reg  perfEventscounten_1; // @[CSR.scala 611:34]
  reg  perfEventscounten_2; // @[CSR.scala 611:34]
  reg  perfEventscounten_3; // @[CSR.scala 611:34]
  reg  perfEventscounten_4; // @[CSR.scala 611:34]
  reg  perfEventscounten_5; // @[CSR.scala 611:34]
  reg  perfEventscounten_6; // @[CSR.scala 611:34]
  reg  perfEventscounten_7; // @[CSR.scala 611:34]
  reg  perfEventscounten_8; // @[CSR.scala 611:34]
  reg  perfEventscounten_9; // @[CSR.scala 611:34]
  reg  perfEventscounten_10; // @[CSR.scala 611:34]
  reg  perfEventscounten_11; // @[CSR.scala 611:34]
  reg  perfEventscounten_12; // @[CSR.scala 611:34]
  reg  perfEventscounten_13; // @[CSR.scala 611:34]
  reg  perfEventscounten_14; // @[CSR.scala 611:34]
  reg  perfEventscounten_15; // @[CSR.scala 611:34]
  reg  perfEventscounten_16; // @[CSR.scala 611:34]
  reg  perfEventscounten_17; // @[CSR.scala 611:34]
  reg  perfEventscounten_18; // @[CSR.scala 611:34]
  reg  perfEventscounten_19; // @[CSR.scala 611:34]
  reg  perfEventscounten_20; // @[CSR.scala 611:34]
  reg  perfEventscounten_21; // @[CSR.scala 611:34]
  reg  perfEventscounten_22; // @[CSR.scala 611:34]
  reg  perfEventscounten_23; // @[CSR.scala 611:34]
  reg  perfEventscounten_24; // @[CSR.scala 611:34]
  reg  perfEventscounten_25; // @[CSR.scala 611:34]
  reg  perfEventscounten_26; // @[CSR.scala 611:34]
  reg  perfEventscounten_27; // @[CSR.scala 611:34]
  reg  perfEventscounten_28; // @[CSR.scala 611:34]
  reg [63:0] perfCnts_0; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_1; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_2; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_3; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_4; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_5; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_6; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_7; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_8; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_9; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_10; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_11; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_12; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_13; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_14; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_15; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_16; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_17; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_18; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_19; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_20; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_21; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_22; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_23; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_24; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_25; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_26; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_27; // @[CSR.scala 612:49]
  reg [63:0] perfCnts_28; // @[CSR.scala 612:49]
  reg [63:0] perfEvents_0; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_1; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_2; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_3; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_4; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_5; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_6; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_7; // @[CSR.scala 613:40]
  reg [63:0] perfEvents_8; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_9; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_10; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_11; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_12; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_13; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_14; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_15; // @[CSR.scala 614:40]
  reg [63:0] perfEvents_16; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_17; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_18; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_19; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_20; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_21; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_22; // @[CSR.scala 615:40]
  reg [63:0] perfEvents_23; // @[CSR.scala 615:40]
  reg [63:0] csrevents_0; // @[CSR.scala 616:40]
  reg [63:0] csrevents_1; // @[CSR.scala 616:40]
  reg [63:0] csrevents_2; // @[CSR.scala 616:40]
  reg [63:0] csrevents_3; // @[CSR.scala 616:40]
  reg [63:0] csrevents_4; // @[CSR.scala 616:40]
  wire [3:0] _perfEventscounten_0_T_3 = {perfEvents_0[62],perfEvents_0[61],perfEvents_0[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_0_T_4 = _perfEventscounten_0_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_1_T_3 = {perfEvents_1[62],perfEvents_1[61],perfEvents_1[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_1_T_4 = _perfEventscounten_1_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_2_T_3 = {perfEvents_2[62],perfEvents_2[61],perfEvents_2[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_2_T_4 = _perfEventscounten_2_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_3_T_3 = {perfEvents_3[62],perfEvents_3[61],perfEvents_3[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_3_T_4 = _perfEventscounten_3_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_4_T_3 = {perfEvents_4[62],perfEvents_4[61],perfEvents_4[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_4_T_4 = _perfEventscounten_4_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_5_T_3 = {perfEvents_5[62],perfEvents_5[61],perfEvents_5[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_5_T_4 = _perfEventscounten_5_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_6_T_3 = {perfEvents_6[62],perfEvents_6[61],perfEvents_6[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_6_T_4 = _perfEventscounten_6_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_7_T_3 = {perfEvents_7[62],perfEvents_7[61],perfEvents_7[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_7_T_4 = _perfEventscounten_7_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_8_T_3 = {perfEvents_8[62],perfEvents_8[61],perfEvents_8[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_8_T_4 = _perfEventscounten_8_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_9_T_3 = {perfEvents_9[62],perfEvents_9[61],perfEvents_9[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_9_T_4 = _perfEventscounten_9_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_10_T_3 = {perfEvents_10[62],perfEvents_10[61],perfEvents_10[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_10_T_4 = _perfEventscounten_10_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_11_T_3 = {perfEvents_11[62],perfEvents_11[61],perfEvents_11[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_11_T_4 = _perfEventscounten_11_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_12_T_3 = {perfEvents_12[62],perfEvents_12[61],perfEvents_12[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_12_T_4 = _perfEventscounten_12_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_13_T_3 = {perfEvents_13[62],perfEvents_13[61],perfEvents_13[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_13_T_4 = _perfEventscounten_13_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_14_T_3 = {perfEvents_14[62],perfEvents_14[61],perfEvents_14[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_14_T_4 = _perfEventscounten_14_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_15_T_3 = {perfEvents_15[62],perfEvents_15[61],perfEvents_15[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_15_T_4 = _perfEventscounten_15_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_16_T_3 = {perfEvents_16[62],perfEvents_16[61],perfEvents_16[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_16_T_4 = _perfEventscounten_16_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_17_T_3 = {perfEvents_17[62],perfEvents_17[61],perfEvents_17[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_17_T_4 = _perfEventscounten_17_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_18_T_3 = {perfEvents_18[62],perfEvents_18[61],perfEvents_18[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_18_T_4 = _perfEventscounten_18_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_19_T_3 = {perfEvents_19[62],perfEvents_19[61],perfEvents_19[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_19_T_4 = _perfEventscounten_19_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_20_T_3 = {perfEvents_20[62],perfEvents_20[61],perfEvents_20[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_20_T_4 = _perfEventscounten_20_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_21_T_3 = {perfEvents_21[62],perfEvents_21[61],perfEvents_21[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_21_T_4 = _perfEventscounten_21_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_22_T_3 = {perfEvents_22[62],perfEvents_22[61],perfEvents_22[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_22_T_4 = _perfEventscounten_22_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_23_T_3 = {perfEvents_23[62],perfEvents_23[61],perfEvents_23[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_23_T_4 = _perfEventscounten_23_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_24_T_3 = {csrevents_0[62],csrevents_0[61],csrevents_0[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_24_T_4 = _perfEventscounten_24_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_25_T_3 = {csrevents_1[62],csrevents_1[61],csrevents_1[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_25_T_4 = _perfEventscounten_25_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_26_T_3 = {csrevents_2[62],csrevents_2[61],csrevents_2[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_26_T_4 = _perfEventscounten_26_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_27_T_3 = {csrevents_3[62],csrevents_3[61],csrevents_3[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_27_T_4 = _perfEventscounten_27_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  wire [3:0] _perfEventscounten_28_T_3 = {csrevents_4[62],csrevents_4[61],csrevents_4[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_28_T_4 = _perfEventscounten_28_T_3 & priviledgeModeOH; // @[CSR.scala 618:94]
  reg [63:0] mcountinhibit; // @[CSR.scala 628:30]
  reg [63:0] mcycle; // @[CSR.scala 629:23]
  wire [63:0] _mcycle_T_1 = mcycle + 64'h1; // @[CSR.scala 630:20]
  reg [63:0] minstret; // @[CSR.scala 631:25]
  reg [2:0] minstret_REG; // @[CSR.scala 636:33]
  wire [63:0] _GEN_581 = {{61'd0}, minstret_REG}; // @[CSR.scala 636:24]
  wire [63:0] _minstret_T_1 = minstret + _GEN_581; // @[CSR.scala 636:24]
  wire [63:0] _GEN_582 = {{58'd0}, csrio_perf_perfEventsFrontend_0_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_0_T_4 = perfCnts_0 + _GEN_582; // @[CSR.scala 638:93]
  wire [63:0] _GEN_583 = {{58'd0}, csrio_perf_perfEventsFrontend_1_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_1_T_4 = perfCnts_1 + _GEN_583; // @[CSR.scala 638:93]
  wire [63:0] _GEN_584 = {{58'd0}, csrio_perf_perfEventsFrontend_2_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_2_T_4 = perfCnts_2 + _GEN_584; // @[CSR.scala 638:93]
  wire [63:0] _GEN_585 = {{58'd0}, csrio_perf_perfEventsFrontend_3_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_3_T_4 = perfCnts_3 + _GEN_585; // @[CSR.scala 638:93]
  wire [63:0] _GEN_586 = {{58'd0}, csrio_perf_perfEventsFrontend_4_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_4_T_4 = perfCnts_4 + _GEN_586; // @[CSR.scala 638:93]
  wire [63:0] _GEN_587 = {{58'd0}, csrio_perf_perfEventsFrontend_5_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_5_T_4 = perfCnts_5 + _GEN_587; // @[CSR.scala 638:93]
  wire [63:0] _GEN_588 = {{58'd0}, csrio_perf_perfEventsFrontend_6_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_6_T_4 = perfCnts_6 + _GEN_588; // @[CSR.scala 638:93]
  wire [63:0] _GEN_589 = {{58'd0}, csrio_perf_perfEventsFrontend_7_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_7_T_4 = perfCnts_7 + _GEN_589; // @[CSR.scala 638:93]
  wire [63:0] _GEN_590 = {{58'd0}, csrio_perf_perfEventsCtrl_0_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_8_T_4 = perfCnts_8 + _GEN_590; // @[CSR.scala 638:93]
  wire [63:0] _GEN_591 = {{58'd0}, csrio_perf_perfEventsCtrl_1_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_9_T_4 = perfCnts_9 + _GEN_591; // @[CSR.scala 638:93]
  wire [63:0] _GEN_592 = {{58'd0}, csrio_perf_perfEventsCtrl_2_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_10_T_4 = perfCnts_10 + _GEN_592; // @[CSR.scala 638:93]
  wire [63:0] _GEN_593 = {{58'd0}, csrio_perf_perfEventsCtrl_3_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_11_T_4 = perfCnts_11 + _GEN_593; // @[CSR.scala 638:93]
  wire [63:0] _GEN_594 = {{58'd0}, csrio_perf_perfEventsCtrl_4_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_12_T_4 = perfCnts_12 + _GEN_594; // @[CSR.scala 638:93]
  wire [63:0] _GEN_595 = {{58'd0}, csrio_perf_perfEventsCtrl_5_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_13_T_4 = perfCnts_13 + _GEN_595; // @[CSR.scala 638:93]
  wire [63:0] _GEN_596 = {{58'd0}, csrio_perf_perfEventsCtrl_6_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_14_T_4 = perfCnts_14 + _GEN_596; // @[CSR.scala 638:93]
  wire [63:0] _GEN_597 = {{58'd0}, csrio_perf_perfEventsCtrl_7_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_15_T_4 = perfCnts_15 + _GEN_597; // @[CSR.scala 638:93]
  wire [63:0] _GEN_598 = {{58'd0}, csrio_perf_perfEventsLsu_0_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_16_T_4 = perfCnts_16 + _GEN_598; // @[CSR.scala 638:93]
  wire [63:0] _GEN_599 = {{58'd0}, csrio_perf_perfEventsLsu_1_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_17_T_4 = perfCnts_17 + _GEN_599; // @[CSR.scala 638:93]
  wire [63:0] _GEN_600 = {{58'd0}, csrio_perf_perfEventsLsu_2_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_18_T_4 = perfCnts_18 + _GEN_600; // @[CSR.scala 638:93]
  wire [63:0] _GEN_601 = {{58'd0}, csrio_perf_perfEventsLsu_3_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_19_T_4 = perfCnts_19 + _GEN_601; // @[CSR.scala 638:93]
  wire [63:0] _GEN_602 = {{58'd0}, csrio_perf_perfEventsLsu_4_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_20_T_4 = perfCnts_20 + _GEN_602; // @[CSR.scala 638:93]
  wire [63:0] _GEN_603 = {{58'd0}, csrio_perf_perfEventsLsu_5_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_21_T_4 = perfCnts_21 + _GEN_603; // @[CSR.scala 638:93]
  wire [63:0] _GEN_604 = {{58'd0}, csrio_perf_perfEventsLsu_6_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_22_T_4 = perfCnts_22 + _GEN_604; // @[CSR.scala 638:93]
  wire [63:0] _GEN_605 = {{58'd0}, csrio_perf_perfEventsLsu_7_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_23_T_4 = perfCnts_23 + _GEN_605; // @[CSR.scala 638:93]
  wire [63:0] _GEN_606 = {{58'd0}, hpm_hc_io_perf_0_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_24_T_4 = perfCnts_24 + _GEN_606; // @[CSR.scala 638:93]
  wire [63:0] _GEN_607 = {{58'd0}, hpm_hc_io_perf_1_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_25_T_4 = perfCnts_25 + _GEN_607; // @[CSR.scala 638:93]
  wire [63:0] _GEN_608 = {{58'd0}, hpm_hc_io_perf_2_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_26_T_4 = perfCnts_26 + _GEN_608; // @[CSR.scala 638:93]
  wire [63:0] _GEN_609 = {{58'd0}, hpm_hc_io_perf_3_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_27_T_4 = perfCnts_27 + _GEN_609; // @[CSR.scala 638:93]
  wire [63:0] _GEN_610 = {{58'd0}, hpm_hc_io_perf_4_value}; // @[CSR.scala 638:93]
  wire [63:0] _perfCnts_28_T_4 = perfCnts_28 + _GEN_610; // @[CSR.scala 638:93]
  wire [5:0] lo = {mip_t_s,mip_t_u,mip_s_m,mip_s_h,mip_s_s,mip_s_u}; // @[CSR.scala 674:27]
  wire [11:0] _T_83 = {mip_e_m,mip_e_h,mip_e_s,mip_e_u,mip_t_m,mip_t_h,lo}; // @[CSR.scala 674:27]
  reg [63:0] REG; // @[CSR.scala 744:20]
  reg [63:0] REG_1; // @[CSR.scala 744:20]
  reg [63:0] REG_2; // @[CSR.scala 744:20]
  reg [63:0] REG_3; // @[CSR.scala 744:20]
  reg [63:0] REG_4; // @[CSR.scala 744:20]
  reg [63:0] REG_5; // @[CSR.scala 744:20]
  reg [63:0] REG_6; // @[CSR.scala 744:20]
  reg [63:0] REG_7; // @[CSR.scala 744:20]
  reg [63:0] REG_8; // @[CSR.scala 744:20]
  reg [63:0] REG_9; // @[CSR.scala 744:20]
  reg [63:0] REG_10; // @[CSR.scala 744:20]
  reg [63:0] REG_11; // @[CSR.scala 744:20]
  reg [63:0] REG_12; // @[CSR.scala 744:20]
  reg [63:0] REG_13; // @[CSR.scala 744:20]
  reg [63:0] REG_14; // @[CSR.scala 744:20]
  reg [63:0] REG_15; // @[CSR.scala 744:20]
  reg [63:0] REG_16; // @[CSR.scala 744:20]
  reg [63:0] REG_17; // @[CSR.scala 744:20]
  reg [63:0] REG_18; // @[CSR.scala 744:20]
  reg [63:0] REG_19; // @[CSR.scala 744:20]
  reg [63:0] REG_20; // @[CSR.scala 744:20]
  wire [11:0] addr_4 = io_in_bits_uop_ctrl_imm[11:0]; // @[CSR.scala 760:18]
  wire [63:0] csri = {59'h0,io_in_bits_uop_ctrl_imm[16:12]}; // @[Cat.scala 31:58]
  wire  _rdata_T_330 = 12'hb06 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_493 = _rdata_T_330 ? perfCnts_3 : 64'h0; // @[Mux.scala 27:73]
  wire  _rdata_T_331 = 12'h329 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_494 = _rdata_T_331 ? perfEvents_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_656 = _rdata_T_493 | _rdata_T_494; // @[Mux.scala 27:73]
  wire  _rdata_T_332 = 12'h7cb == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_2 = {{30'd0}, addr_3_3}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_4 = _rdata_T_2 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_6 = {_rdata_T_2[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_7 = cfgs_1_3_a[1] ? _rdata_T_4 : _rdata_T_6; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_495 = _rdata_T_332 ? _rdata_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_657 = _rdata_T_656 | _rdata_T_495; // @[Mux.scala 27:73]
  wire  _rdata_T_333 = 12'h7a4 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_496 = _rdata_T_333 ? 64'h2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_658 = _rdata_T_657 | _rdata_T_496; // @[Mux.scala 27:73]
  wire  _rdata_T_334 = 12'hf12 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_497 = _rdata_T_334 ? 64'h19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_659 = _rdata_T_658 | _rdata_T_497; // @[Mux.scala 27:73]
  wire  _rdata_T_335 = 12'hb15 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_498 = _rdata_T_335 ? perfCnts_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_660 = _rdata_T_659 | _rdata_T_498; // @[Mux.scala 27:73]
  wire  _rdata_T_336 = 12'h7b3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_499 = _rdata_T_336 ? dscratch1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_661 = _rdata_T_660 | _rdata_T_499; // @[Mux.scala 27:73]
  wire  _rdata_T_337 = 12'h5ce == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_500 = _rdata_T_337 ? REG_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_662 = _rdata_T_661 | _rdata_T_500; // @[Mux.scala 27:73]
  wire  _rdata_T_338 = 12'h5d9 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_501 = _rdata_T_338 ? REG_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_663 = _rdata_T_662 | _rdata_T_501; // @[Mux.scala 27:73]
  wire  _rdata_T_339 = 12'h180 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_14 = satp & 64'h8ffff00000ffffff; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_502 = _rdata_T_339 ? _rdata_T_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_664 = _rdata_T_663 | _rdata_T_502; // @[Mux.scala 27:73]
  wire  _rdata_T_340 = 12'h7cf == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_15 = {{30'd0}, addr_3_7}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_17 = _rdata_T_15 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_19 = {_rdata_T_15[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_20 = cfgs_1_7_a[1] ? _rdata_T_17 : _rdata_T_19; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_503 = _rdata_T_340 ? _rdata_T_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_665 = _rdata_T_664 | _rdata_T_503; // @[Mux.scala 27:73]
  wire  _rdata_T_341 = 12'h32e == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_504 = _rdata_T_341 ? perfEvents_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_666 = _rdata_T_665 | _rdata_T_504; // @[Mux.scala 27:73]
  wire  _rdata_T_342 = 12'h3b1 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_22 = {{30'd0}, addr_1_1}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_24 = _rdata_T_22 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_26 = {_rdata_T_22[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_27 = cfgs__1_a[1] ? _rdata_T_24 : _rdata_T_26; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_505 = _rdata_T_342 ? _rdata_T_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_667 = _rdata_T_666 | _rdata_T_505; // @[Mux.scala 27:73]
  wire  _rdata_T_343 = 12'h7a2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_506 = _rdata_T_343 ? tdata2Wire : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_668 = _rdata_T_667 | _rdata_T_506; // @[Mux.scala 27:73]
  wire  _rdata_T_344 = 12'hb1c == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_507 = _rdata_T_344 ? perfCnts_25 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_669 = _rdata_T_668 | _rdata_T_507; // @[Mux.scala 27:73]
  wire  _rdata_T_345 = 12'h3a2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_508 = _rdata_T_345 ? cfgMerged__1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_670 = _rdata_T_669 | _rdata_T_508; // @[Mux.scala 27:73]
  wire  _rdata_T_346 = 12'h33d == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_509 = _rdata_T_346 ? csrevents_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_671 = _rdata_T_670 | _rdata_T_509; // @[Mux.scala 27:73]
  wire  _rdata_T_347 = 12'h5c3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_510 = _rdata_T_347 ? smblockctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_672 = _rdata_T_671 | _rdata_T_510; // @[Mux.scala 27:73]
  wire  _rdata_T_348 = 12'h140 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_511 = _rdata_T_348 ? sscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_673 = _rdata_T_672 | _rdata_T_511; // @[Mux.scala 27:73]
  wire  _rdata_T_349 = 12'hb09 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_512 = _rdata_T_349 ? perfCnts_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_674 = _rdata_T_673 | _rdata_T_512; // @[Mux.scala 27:73]
  wire  _rdata_T_350 = 12'hb03 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_513 = _rdata_T_350 ? perfCnts_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_675 = _rdata_T_674 | _rdata_T_513; // @[Mux.scala 27:73]
  wire  _rdata_T_351 = 12'h5ca == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_514 = _rdata_T_351 ? REG_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_676 = _rdata_T_675 | _rdata_T_514; // @[Mux.scala 27:73]
  wire  _rdata_T_352 = 12'h7c8 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_37 = {{30'd0}, addr_3_0}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_39 = _rdata_T_37 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_41 = {_rdata_T_37[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_42 = cfgs_1_0_a[1] ? _rdata_T_39 : _rdata_T_41; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_515 = _rdata_T_352 ? _rdata_T_42 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_677 = _rdata_T_676 | _rdata_T_515; // @[Mux.scala 27:73]
  wire  _rdata_T_353 = 12'h3b5 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_43 = {{30'd0}, addr_1_5}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_45 = _rdata_T_43 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_47 = {_rdata_T_43[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_48 = cfgs__5_a[1] ? _rdata_T_45 : _rdata_T_47; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_516 = _rdata_T_353 ? _rdata_T_48 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_678 = _rdata_T_677 | _rdata_T_516; // @[Mux.scala 27:73]
  wire  _rdata_T_354 = 12'h331 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_517 = _rdata_T_354 ? perfEvents_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_679 = _rdata_T_678 | _rdata_T_517; // @[Mux.scala 27:73]
  wire  _rdata_T_355 = 12'h5c7 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_518 = _rdata_T_355 ? REG_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_680 = _rdata_T_679 | _rdata_T_518; // @[Mux.scala 27:73]
  wire  _rdata_T_356 = 12'h302 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_519 = _rdata_T_356 ? medeleg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_681 = _rdata_T_680 | _rdata_T_519; // @[Mux.scala 27:73]
  wire  _rdata_T_357 = 12'h5d6 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_520 = _rdata_T_357 ? REG_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_682 = _rdata_T_681 | _rdata_T_520; // @[Mux.scala 27:73]
  wire  _rdata_T_358 = 12'h105 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_53 = stvec & 64'hfffffffffffffffd; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_521 = _rdata_T_358 ? _rdata_T_53 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_683 = _rdata_T_682 | _rdata_T_521; // @[Mux.scala 27:73]
  wire  _rdata_T_359 = 12'hb0d == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_522 = _rdata_T_359 ? perfCnts_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_684 = _rdata_T_683 | _rdata_T_522; // @[Mux.scala 27:73]
  wire  _rdata_T_360 = 12'h7d7 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_55 = {{30'd0}, addr_3_15}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_57 = _rdata_T_55 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_59 = {_rdata_T_55[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_60 = cfgs_1_15_a[1] ? _rdata_T_57 : _rdata_T_59; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_523 = _rdata_T_360 ? _rdata_T_60 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_685 = _rdata_T_684 | _rdata_T_523; // @[Mux.scala 27:73]
  wire  _rdata_T_361 = 12'h5d1 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_524 = _rdata_T_361 ? REG_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_686 = _rdata_T_685 | _rdata_T_524; // @[Mux.scala 27:73]
  wire  _rdata_T_362 = 12'h141 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_62 = sepc & 64'hfffffffffffffffe; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_525 = _rdata_T_362 ? _rdata_T_62 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_687 = _rdata_T_686 | _rdata_T_525; // @[Mux.scala 27:73]
  wire  _rdata_T_363 = 12'h342 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_526 = _rdata_T_363 ? mcause : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_688 = _rdata_T_687 | _rdata_T_526; // @[Mux.scala 27:73]
  wire  _rdata_T_364 = 12'h326 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_527 = _rdata_T_364 ? perfEvents_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_689 = _rdata_T_688 | _rdata_T_527; // @[Mux.scala 27:73]
  wire  _rdata_T_365 = 12'h335 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_528 = _rdata_T_365 ? perfEvents_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_690 = _rdata_T_689 | _rdata_T_528; // @[Mux.scala 27:73]
  wire  _rdata_T_366 = 12'hb11 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_529 = _rdata_T_366 ? perfCnts_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_691 = _rdata_T_690 | _rdata_T_529; // @[Mux.scala 27:73]
  wire  _rdata_T_367 = 12'h3bc == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_67 = {{30'd0}, addr_1_12}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_69 = _rdata_T_67 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_71 = {_rdata_T_67[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_72 = cfgs__12_a[1] ? _rdata_T_69 : _rdata_T_71; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_530 = _rdata_T_367 ? _rdata_T_72 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_692 = _rdata_T_691 | _rdata_T_530; // @[Mux.scala 27:73]
  wire  _rdata_T_368 = 12'h306 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_531 = _rdata_T_368 ? mcounteren : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_693 = _rdata_T_692 | _rdata_T_531; // @[Mux.scala 27:73]
  wire  _rdata_T_369 = 12'h7d2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_74 = {{30'd0}, addr_3_10}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_76 = _rdata_T_74 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_78 = {_rdata_T_74[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_79 = cfgs_1_10_a[1] ? _rdata_T_76 : _rdata_T_78; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_532 = _rdata_T_369 ? _rdata_T_79 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_694 = _rdata_T_693 | _rdata_T_532; // @[Mux.scala 27:73]
  wire  _rdata_T_370 = 12'h1 == addr_4; // @[LookupTree.scala 25:34]
  wire [4:0] _rdata_T_533 = _rdata_T_370 ? fcsr[4:0] : 5'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_611 = {{59'd0}, _rdata_T_533}; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_695 = _rdata_T_694 | _GEN_611; // @[Mux.scala 27:73]
  wire  _rdata_T_371 = 12'hf11 == addr_4; // @[LookupTree.scala 25:34]
  wire  _rdata_T_372 = 12'h32a == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_535 = _rdata_T_372 ? perfEvents_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_697 = _rdata_T_695 | _rdata_T_535; // @[Mux.scala 27:73]
  wire  _rdata_T_373 = 12'h9c0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_536 = _rdata_T_373 ? sdsid : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_698 = _rdata_T_697 | _rdata_T_536; // @[Mux.scala 27:73]
  wire  _rdata_T_374 = 12'h7d0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_85 = {{30'd0}, addr_3_8}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_87 = _rdata_T_85 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_89 = {_rdata_T_85[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_90 = cfgs_1_8_a[1] ? _rdata_T_87 : _rdata_T_89; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_537 = _rdata_T_374 ? _rdata_T_90 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_699 = _rdata_T_698 | _rdata_T_537; // @[Mux.scala 27:73]
  wire  _rdata_T_375 = 12'h3bd == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_91 = {{30'd0}, addr_1_13}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_93 = _rdata_T_91 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_95 = {_rdata_T_91[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_96 = cfgs__13_a[1] ? _rdata_T_93 : _rdata_T_95; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_538 = _rdata_T_375 ? _rdata_T_96 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_700 = _rdata_T_699 | _rdata_T_538; // @[Mux.scala 27:73]
  wire  _rdata_T_376 = 12'h339 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_539 = _rdata_T_376 ? perfEvents_22 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_701 = _rdata_T_700 | _rdata_T_539; // @[Mux.scala 27:73]
  wire  _rdata_T_377 = 12'h3b8 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_98 = {{30'd0}, addr_1_8}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_100 = _rdata_T_98 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_102 = {_rdata_T_98[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_103 = cfgs__8_a[1] ? _rdata_T_100 : _rdata_T_102; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_540 = _rdata_T_377 ? _rdata_T_103 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_702 = _rdata_T_701 | _rdata_T_540; // @[Mux.scala 27:73]
  wire  _rdata_T_378 = 12'h104 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_104 = mie & sieMask; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_541 = _rdata_T_378 ? _rdata_T_104 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_703 = _rdata_T_702 | _rdata_T_541; // @[Mux.scala 27:73]
  wire  _rdata_T_379 = 12'h334 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_542 = _rdata_T_379 ? perfEvents_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_704 = _rdata_T_703 | _rdata_T_542; // @[Mux.scala 27:73]
  wire  _rdata_T_380 = 12'h5cf == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_543 = _rdata_T_380 ? REG_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_705 = _rdata_T_704 | _rdata_T_543; // @[Mux.scala 27:73]
  wire  _rdata_T_381 = 12'h32f == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_544 = _rdata_T_381 ? perfEvents_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_706 = _rdata_T_705 | _rdata_T_544; // @[Mux.scala 27:73]
  wire  _rdata_T_382 = 12'h7b0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_108 = {{32'd0}, dcsr}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_545 = _rdata_T_382 ? _rdata_T_108 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_707 = _rdata_T_706 | _rdata_T_545; // @[Mux.scala 27:73]
  wire  _rdata_T_383 = 12'hb0a == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_546 = _rdata_T_383 ? perfCnts_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_708 = _rdata_T_707 | _rdata_T_546; // @[Mux.scala 27:73]
  wire  _rdata_T_384 = 12'hb04 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_547 = _rdata_T_384 ? perfCnts_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_709 = _rdata_T_708 | _rdata_T_547; // @[Mux.scala 27:73]
  wire  _rdata_T_385 = 12'h33e == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_548 = _rdata_T_385 ? csrevents_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_710 = _rdata_T_709 | _rdata_T_548; // @[Mux.scala 27:73]
  wire  _rdata_T_386 = 12'h144 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _GEN_612 = {{52'd0}, _T_83}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_112 = _GEN_612 & sieMask; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_549 = _rdata_T_386 ? _rdata_T_112 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_711 = _rdata_T_710 | _rdata_T_549; // @[Mux.scala 27:73]
  wire  _rdata_T_387 = 12'hb18 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_550 = _rdata_T_387 ? perfCnts_21 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_712 = _rdata_T_711 | _rdata_T_550; // @[Mux.scala 27:73]
  wire  _rdata_T_388 = 12'h3b4 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_114 = {{30'd0}, addr_1_4}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_116 = _rdata_T_114 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_118 = {_rdata_T_114[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_119 = cfgs__4_a[1] ? _rdata_T_116 : _rdata_T_118; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_551 = _rdata_T_388 ? _rdata_T_119 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_713 = _rdata_T_712 | _rdata_T_551; // @[Mux.scala 27:73]
  wire  _rdata_T_389 = 12'h7a1 == addr_4; // @[LookupTree.scala 25:34]
  wire [12:0] _rdata_T_124 = {triggerAction, 12'h0}; // @[CSR.scala 292:32]
  wire [63:0] _GEN_613 = {{51'd0}, _rdata_T_124}; // @[CSR.scala 292:15]
  wire [63:0] _rdata_T_125 = tdata1Wire | _GEN_613; // @[CSR.scala 292:15]
  wire [63:0] _rdata_T_552 = _rdata_T_389 ? _rdata_T_125 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_714 = _rdata_T_713 | _rdata_T_552; // @[Mux.scala 27:73]
  wire  _rdata_T_390 = 12'hb19 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_553 = _rdata_T_390 ? perfCnts_22 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_715 = _rdata_T_714 | _rdata_T_553; // @[Mux.scala 27:73]
  wire  _rdata_T_391 = 12'h7b2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_554 = _rdata_T_391 ? dscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_716 = _rdata_T_715 | _rdata_T_554; // @[Mux.scala 27:73]
  wire  _rdata_T_392 = 12'h100 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_128 = mstatus & 64'h80000003000de122; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_555 = _rdata_T_392 ? _rdata_T_128 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_717 = _rdata_T_716 | _rdata_T_555; // @[Mux.scala 27:73]
  wire  _rdata_T_393 = 12'h5d5 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_556 = _rdata_T_393 ? REG_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_718 = _rdata_T_717 | _rdata_T_556; // @[Mux.scala 27:73]
  wire  _rdata_T_394 = 12'hb0e == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_557 = _rdata_T_394 ? perfCnts_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_719 = _rdata_T_718 | _rdata_T_557; // @[Mux.scala 27:73]
  wire  _rdata_T_395 = 12'h5c6 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_558 = _rdata_T_395 ? REG_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_720 = _rdata_T_719 | _rdata_T_558; // @[Mux.scala 27:73]
  wire  _rdata_T_396 = 12'hb14 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_559 = _rdata_T_396 ? perfCnts_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_721 = _rdata_T_720 | _rdata_T_559; // @[Mux.scala 27:73]
  wire  _rdata_T_397 = 12'hb1d == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_560 = _rdata_T_397 ? perfCnts_26 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_722 = _rdata_T_721 | _rdata_T_560; // @[Mux.scala 27:73]
  wire  _rdata_T_398 = 12'h7d6 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_134 = {{30'd0}, addr_3_14}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_136 = _rdata_T_134 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_138 = {_rdata_T_134[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_139 = cfgs_1_14_a[1] ? _rdata_T_136 : _rdata_T_138; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_561 = _rdata_T_398 ? _rdata_T_139 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_723 = _rdata_T_722 | _rdata_T_561; // @[Mux.scala 27:73]
  wire  _rdata_T_399 = 12'h7c0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_562 = _rdata_T_399 ? cfgMerged_1_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_724 = _rdata_T_723 | _rdata_T_562; // @[Mux.scala 27:73]
  wire  _rdata_T_400 = 12'h2 == addr_4; // @[LookupTree.scala 25:34]
  wire [2:0] _rdata_T_563 = _rdata_T_400 ? fcsr[7:5] : 3'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_614 = {{61'd0}, _rdata_T_563}; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_725 = _rdata_T_724 | _GEN_614; // @[Mux.scala 27:73]
  wire  _rdata_T_401 = 12'h325 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_564 = _rdata_T_401 ? perfEvents_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_726 = _rdata_T_725 | _rdata_T_564; // @[Mux.scala 27:73]
  wire  _rdata_T_402 = 12'h3b9 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_144 = {{30'd0}, addr_1_9}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_146 = _rdata_T_144 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_148 = {_rdata_T_144[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_149 = cfgs__9_a[1] ? _rdata_T_146 : _rdata_T_148; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_565 = _rdata_T_402 ? _rdata_T_149 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_727 = _rdata_T_726 | _rdata_T_565; // @[Mux.scala 27:73]
  wire  _rdata_T_403 = 12'h305 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_150 = mtvec & 64'hfffffffffffffffd; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_566 = _rdata_T_403 ? _rdata_T_150 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_728 = _rdata_T_727 | _rdata_T_566; // @[Mux.scala 27:73]
  wire  _rdata_T_404 = 12'h7cc == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_151 = {{30'd0}, addr_3_4}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_153 = _rdata_T_151 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_155 = {_rdata_T_151[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_156 = cfgs_1_4_a[1] ? _rdata_T_153 : _rdata_T_155; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_567 = _rdata_T_404 ? _rdata_T_156 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_729 = _rdata_T_728 | _rdata_T_567; // @[Mux.scala 27:73]
  wire  _rdata_T_405 = 12'h7d1 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_157 = {{30'd0}, addr_3_9}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_159 = _rdata_T_157 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_161 = {_rdata_T_157[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_162 = cfgs_1_9_a[1] ? _rdata_T_159 : _rdata_T_161; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_568 = _rdata_T_405 ? _rdata_T_162 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_730 = _rdata_T_729 | _rdata_T_568; // @[Mux.scala 27:73]
  wire  _rdata_T_406 = 12'h338 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_569 = _rdata_T_406 ? perfEvents_21 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_731 = _rdata_T_730 | _rdata_T_569; // @[Mux.scala 27:73]
  wire  _rdata_T_407 = 12'h5cb == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_570 = _rdata_T_407 ? REG_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_732 = _rdata_T_731 | _rdata_T_570; // @[Mux.scala 27:73]
  wire  _rdata_T_408 = 12'h333 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_571 = _rdata_T_408 ? perfEvents_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_733 = _rdata_T_732 | _rdata_T_571; // @[Mux.scala 27:73]
  wire  _rdata_T_409 = 12'h304 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_572 = _rdata_T_409 ? mie : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_734 = _rdata_T_733 | _rdata_T_572; // @[Mux.scala 27:73]
  wire  _rdata_T_410 = 12'h33a == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_573 = _rdata_T_410 ? perfEvents_23 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_735 = _rdata_T_734 | _rdata_T_573; // @[Mux.scala 27:73]
  wire  _rdata_T_411 = 12'h3be == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_168 = {{30'd0}, addr_1_14}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_170 = _rdata_T_168 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_172 = {_rdata_T_168[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_173 = cfgs__14_a[1] ? _rdata_T_170 : _rdata_T_172; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_574 = _rdata_T_411 ? _rdata_T_173 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_736 = _rdata_T_735 | _rdata_T_574; // @[Mux.scala 27:73]
  wire  _rdata_T_412 = 12'h5d0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_575 = _rdata_T_412 ? REG_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_737 = _rdata_T_736 | _rdata_T_575; // @[Mux.scala 27:73]
  wire  _rdata_T_413 = 12'hb0b == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_576 = _rdata_T_413 ? perfCnts_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_738 = _rdata_T_737 | _rdata_T_576; // @[Mux.scala 27:73]
  wire  _rdata_T_414 = 12'h7cd == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_176 = {{30'd0}, addr_3_5}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_178 = _rdata_T_176 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_180 = {_rdata_T_176[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_181 = cfgs_1_5_a[1] ? _rdata_T_178 : _rdata_T_180; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_577 = _rdata_T_414 ? _rdata_T_181 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_739 = _rdata_T_738 | _rdata_T_577; // @[Mux.scala 27:73]
  wire  _rdata_T_415 = 12'h324 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_578 = _rdata_T_415 ? perfEvents_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_740 = _rdata_T_739 | _rdata_T_578; // @[Mux.scala 27:73]
  wire  _rdata_T_416 = 12'h3b3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_183 = {{30'd0}, addr_1_3}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_185 = _rdata_T_183 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_187 = {_rdata_T_183[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_188 = cfgs__3_a[1] ? _rdata_T_185 : _rdata_T_187; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_579 = _rdata_T_416 ? _rdata_T_188 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_741 = _rdata_T_740 | _rdata_T_579; // @[Mux.scala 27:73]
  wire  _rdata_T_417 = 12'h33f == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_580 = _rdata_T_417 ? csrevents_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_742 = _rdata_T_741 | _rdata_T_580; // @[Mux.scala 27:73]
  wire  _rdata_T_418 = 12'h5d4 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_581 = _rdata_T_418 ? REG_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_743 = _rdata_T_742 | _rdata_T_581; // @[Mux.scala 27:73]
  wire  _rdata_T_419 = 12'hb17 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_582 = _rdata_T_419 ? perfCnts_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_744 = _rdata_T_743 | _rdata_T_582; // @[Mux.scala 27:73]
  wire  _rdata_T_420 = 12'h7b1 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_583 = _rdata_T_420 ? dpc : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_745 = _rdata_T_744 | _rdata_T_583; // @[Mux.scala 27:73]
  wire  _rdata_T_421 = 12'hb08 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_584 = _rdata_T_421 ? perfCnts_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_746 = _rdata_T_745 | _rdata_T_584; // @[Mux.scala 27:73]
  wire  _rdata_T_422 = 12'h32b == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_585 = _rdata_T_422 ? perfEvents_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_747 = _rdata_T_746 | _rdata_T_585; // @[Mux.scala 27:73]
  wire  _rdata_T_423 = 12'h330 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_586 = _rdata_T_423 ? perfEvents_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_748 = _rdata_T_747 | _rdata_T_586; // @[Mux.scala 27:73]
  wire  _rdata_T_424 = 12'h143 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_587 = _rdata_T_424 ? stval : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_749 = _rdata_T_748 | _rdata_T_587; // @[Mux.scala 27:73]
  wire  _rdata_T_425 = 12'h7c9 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_197 = {{30'd0}, addr_3_1}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_199 = _rdata_T_197 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_201 = {_rdata_T_197[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_202 = cfgs_1_1_a[1] ? _rdata_T_199 : _rdata_T_201; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_588 = _rdata_T_425 ? _rdata_T_202 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_750 = _rdata_T_749 | _rdata_T_588; // @[Mux.scala 27:73]
  wire  _rdata_T_426 = 12'h301 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_589 = _rdata_T_426 ? misa : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_751 = _rdata_T_750 | _rdata_T_589; // @[Mux.scala 27:73]
  wire  _rdata_T_427 = 12'hf15 == addr_4; // @[LookupTree.scala 25:34]
  wire  _rdata_T_428 = 12'hb1a == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_591 = _rdata_T_428 ? perfCnts_23 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_753 = _rdata_T_751 | _rdata_T_591; // @[Mux.scala 27:73]
  wire  _rdata_T_429 = 12'h7a0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_206 = {{60'd0}, tselectPhy}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_592 = _rdata_T_429 ? _rdata_T_206 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_754 = _rdata_T_753 | _rdata_T_592; // @[Mux.scala 27:73]
  wire  _rdata_T_430 = 12'h5c2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_593 = _rdata_T_430 ? slvpredctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_755 = _rdata_T_754 | _rdata_T_593; // @[Mux.scala 27:73]
  wire  _rdata_T_431 = 12'h3bf == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_208 = {{30'd0}, addr_1_15}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_210 = _rdata_T_208 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_212 = {_rdata_T_208[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_213 = cfgs__15_a[1] ? _rdata_T_210 : _rdata_T_212; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_594 = _rdata_T_431 ? _rdata_T_213 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_756 = _rdata_T_755 | _rdata_T_594; // @[Mux.scala 27:73]
  wire  _rdata_T_432 = 12'h300 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_214 = mstatus & 64'h8000000f007ff9bb; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_595 = _rdata_T_432 ? _rdata_T_214 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_757 = _rdata_T_756 | _rdata_T_595; // @[Mux.scala 27:73]
  wire  _rdata_T_433 = 12'h33b == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_596 = _rdata_T_433 ? csrevents_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_758 = _rdata_T_757 | _rdata_T_596; // @[Mux.scala 27:73]
  wire  _rdata_T_434 = 12'hb13 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_597 = _rdata_T_434 ? perfCnts_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_759 = _rdata_T_758 | _rdata_T_597; // @[Mux.scala 27:73]
  wire  _rdata_T_435 = 12'h5c5 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_598 = _rdata_T_435 ? REG : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_760 = _rdata_T_759 | _rdata_T_598; // @[Mux.scala 27:73]
  wire  _rdata_T_436 = 12'h3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_599 = _rdata_T_436 ? fcsr : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_761 = _rdata_T_760 | _rdata_T_599; // @[Mux.scala 27:73]
  wire  _rdata_T_437 = 12'h5d8 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_600 = _rdata_T_437 ? REG_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_762 = _rdata_T_761 | _rdata_T_600; // @[Mux.scala 27:73]
  wire  _rdata_T_438 = 12'h7d5 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_220 = {{30'd0}, addr_3_13}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_222 = _rdata_T_220 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_224 = {_rdata_T_220[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_225 = cfgs_1_13_a[1] ? _rdata_T_222 : _rdata_T_224; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_601 = _rdata_T_438 ? _rdata_T_225 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_763 = _rdata_T_762 | _rdata_T_601; // @[Mux.scala 27:73]
  wire  _rdata_T_439 = 12'hb00 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_602 = _rdata_T_439 ? mcycle : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_764 = _rdata_T_763 | _rdata_T_602; // @[Mux.scala 27:73]
  wire  _rdata_T_440 = 12'h3b0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_227 = {{30'd0}, addr_1_0}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_229 = _rdata_T_227 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_231 = {_rdata_T_227[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_232 = cfgs__0_a[1] ? _rdata_T_229 : _rdata_T_231; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_603 = _rdata_T_440 ? _rdata_T_232 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_765 = _rdata_T_764 | _rdata_T_603; // @[Mux.scala 27:73]
  wire  _rdata_T_441 = 12'h32c == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_604 = _rdata_T_441 ? perfEvents_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_766 = _rdata_T_765 | _rdata_T_604; // @[Mux.scala 27:73]
  wire  _rdata_T_442 = 12'h5c0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_605 = _rdata_T_442 ? sbpctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_767 = _rdata_T_766 | _rdata_T_605; // @[Mux.scala 27:73]
  wire  _rdata_T_443 = 12'hb1e == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_606 = _rdata_T_443 ? perfCnts_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_768 = _rdata_T_767 | _rdata_T_606; // @[Mux.scala 27:73]
  wire  _rdata_T_444 = 12'h337 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_607 = _rdata_T_444 ? perfEvents_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_769 = _rdata_T_768 | _rdata_T_607; // @[Mux.scala 27:73]
  wire  _rdata_T_445 = 12'h344 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_608 = _rdata_T_445 ? _GEN_612 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_770 = _rdata_T_769 | _rdata_T_608; // @[Mux.scala 27:73]
  wire  _rdata_T_446 = 12'h3ba == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_238 = {{30'd0}, addr_1_10}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_240 = _rdata_T_238 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_242 = {_rdata_T_238[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_243 = cfgs__10_a[1] ? _rdata_T_240 : _rdata_T_242; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_609 = _rdata_T_446 ? _rdata_T_243 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_771 = _rdata_T_770 | _rdata_T_609; // @[Mux.scala 27:73]
  wire  _rdata_T_447 = 12'hb05 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_610 = _rdata_T_447 ? perfCnts_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_772 = _rdata_T_771 | _rdata_T_610; // @[Mux.scala 27:73]
  wire  _rdata_T_448 = 12'h5cc == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_611 = _rdata_T_448 ? REG_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_773 = _rdata_T_772 | _rdata_T_611; // @[Mux.scala 27:73]
  wire  _rdata_T_449 = 12'hb0f == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_612 = _rdata_T_449 ? perfCnts_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_774 = _rdata_T_773 | _rdata_T_612; // @[Mux.scala 27:73]
  wire  _rdata_T_450 = 12'h3b7 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_247 = {{30'd0}, addr_1_7}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_249 = _rdata_T_247 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_251 = {_rdata_T_247[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_252 = cfgs__7_a[1] ? _rdata_T_249 : _rdata_T_251; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_613 = _rdata_T_450 ? _rdata_T_252 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_775 = _rdata_T_774 | _rdata_T_613; // @[Mux.scala 27:73]
  wire  _rdata_T_451 = 12'h328 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_614 = _rdata_T_451 ? perfEvents_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_776 = _rdata_T_775 | _rdata_T_614; // @[Mux.scala 27:73]
  wire  _rdata_T_452 = 12'hb16 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_615 = _rdata_T_452 ? perfCnts_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_777 = _rdata_T_776 | _rdata_T_615; // @[Mux.scala 27:73]
  wire  _rdata_T_453 = 12'hb1b == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_616 = _rdata_T_453 ? perfCnts_24 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_778 = _rdata_T_777 | _rdata_T_616; // @[Mux.scala 27:73]
  wire  _rdata_T_454 = 12'h5cd == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_617 = _rdata_T_454 ? REG_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_779 = _rdata_T_778 | _rdata_T_617; // @[Mux.scala 27:73]
  wire  _rdata_T_455 = 12'hb02 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_618 = _rdata_T_455 ? minstret : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_780 = _rdata_T_779 | _rdata_T_618; // @[Mux.scala 27:73]
  wire  _rdata_T_456 = 12'hb0c == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_619 = _rdata_T_456 ? perfCnts_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_781 = _rdata_T_780 | _rdata_T_619; // @[Mux.scala 27:73]
  wire  _rdata_T_457 = 12'h303 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_620 = _rdata_T_457 ? mideleg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_782 = _rdata_T_781 | _rdata_T_620; // @[Mux.scala 27:73]
  wire  _rdata_T_458 = 12'h7ce == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_260 = {{30'd0}, addr_3_6}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_262 = _rdata_T_260 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_264 = {_rdata_T_260[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_265 = cfgs_1_6_a[1] ? _rdata_T_262 : _rdata_T_264; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_621 = _rdata_T_458 ? _rdata_T_265 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_783 = _rdata_T_782 | _rdata_T_621; // @[Mux.scala 27:73]
  wire  _rdata_T_459 = 12'h32d == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_622 = _rdata_T_459 ? perfEvents_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_784 = _rdata_T_783 | _rdata_T_622; // @[Mux.scala 27:73]
  wire  _rdata_T_460 = 12'h5c4 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_623 = _rdata_T_460 ? srnctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_785 = _rdata_T_784 | _rdata_T_623; // @[Mux.scala 27:73]
  wire  _rdata_T_461 = 12'h5c9 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_624 = _rdata_T_461 ? REG_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_786 = _rdata_T_785 | _rdata_T_624; // @[Mux.scala 27:73]
  wire  _rdata_T_462 = 12'h3b2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_269 = {{30'd0}, addr_1_2}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_271 = _rdata_T_269 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_273 = {_rdata_T_269[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_274 = cfgs__2_a[1] ? _rdata_T_271 : _rdata_T_273; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_625 = _rdata_T_462 ? _rdata_T_274 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_787 = _rdata_T_786 | _rdata_T_625; // @[Mux.scala 27:73]
  wire  _rdata_T_463 = 12'hb07 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_626 = _rdata_T_463 ? perfCnts_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_788 = _rdata_T_787 | _rdata_T_626; // @[Mux.scala 27:73]
  wire  _rdata_T_464 = 12'h7d4 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_276 = {{30'd0}, addr_3_12}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_278 = _rdata_T_276 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_280 = {_rdata_T_276[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_281 = cfgs_1_12_a[1] ? _rdata_T_278 : _rdata_T_280; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_627 = _rdata_T_464 ? _rdata_T_281 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_789 = _rdata_T_788 | _rdata_T_627; // @[Mux.scala 27:73]
  wire  _rdata_T_465 = 12'hf13 == addr_4; // @[LookupTree.scala 25:34]
  wire  _rdata_T_466 = 12'h5d3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_629 = _rdata_T_466 ? REG_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_791 = _rdata_T_789 | _rdata_T_629; // @[Mux.scala 27:73]
  wire  _rdata_T_467 = 12'h340 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_630 = _rdata_T_467 ? mscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_792 = _rdata_T_791 | _rdata_T_630; // @[Mux.scala 27:73]
  wire  _rdata_T_468 = 12'h7ca == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_285 = {{30'd0}, addr_3_2}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_287 = _rdata_T_285 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_289 = {_rdata_T_285[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_290 = cfgs_1_2_a[1] ? _rdata_T_287 : _rdata_T_289; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_631 = _rdata_T_468 ? _rdata_T_290 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_793 = _rdata_T_792 | _rdata_T_631; // @[Mux.scala 27:73]
  wire  _rdata_T_469 = 12'h320 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_632 = _rdata_T_469 ? mcountinhibit : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_794 = _rdata_T_793 | _rdata_T_632; // @[Mux.scala 27:73]
  wire  _rdata_T_470 = 12'h7d3 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_292 = {{30'd0}, addr_3_11}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_294 = _rdata_T_292 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_296 = {_rdata_T_292[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_297 = cfgs_1_11_a[1] ? _rdata_T_294 : _rdata_T_296; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_633 = _rdata_T_470 ? _rdata_T_297 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_795 = _rdata_T_794 | _rdata_T_633; // @[Mux.scala 27:73]
  wire  _rdata_T_471 = 12'h7a5 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_634 = _rdata_T_471 ? tControlPhy : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_796 = _rdata_T_795 | _rdata_T_634; // @[Mux.scala 27:73]
  wire  _rdata_T_472 = 12'hf14 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_635 = _rdata_T_472 ? mhartid : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_797 = _rdata_T_796 | _rdata_T_635; // @[Mux.scala 27:73]
  wire  _rdata_T_473 = 12'h341 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_300 = mepc & 64'hfffffffffffffffe; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_636 = _rdata_T_473 ? _rdata_T_300 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_798 = _rdata_T_797 | _rdata_T_636; // @[Mux.scala 27:73]
  wire  _rdata_T_474 = 12'h3b6 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_301 = {{30'd0}, addr_1_6}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_303 = _rdata_T_301 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_305 = {_rdata_T_301[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_306 = cfgs__6_a[1] ? _rdata_T_303 : _rdata_T_305; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_637 = _rdata_T_474 ? _rdata_T_306 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_799 = _rdata_T_798 | _rdata_T_637; // @[Mux.scala 27:73]
  wire  _rdata_T_475 = 12'h343 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_638 = _rdata_T_475 ? mtval : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_800 = _rdata_T_799 | _rdata_T_638; // @[Mux.scala 27:73]
  wire  _rdata_T_476 = 12'h106 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_639 = _rdata_T_476 ? scounteren : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_801 = _rdata_T_800 | _rdata_T_639; // @[Mux.scala 27:73]
  wire  _rdata_T_477 = 12'h332 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_640 = _rdata_T_477 ? perfEvents_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_802 = _rdata_T_801 | _rdata_T_640; // @[Mux.scala 27:73]
  wire  _rdata_T_478 = 12'h7c2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_641 = _rdata_T_478 ? cfgMerged_1_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_803 = _rdata_T_802 | _rdata_T_641; // @[Mux.scala 27:73]
  wire  _rdata_T_479 = 12'h5c8 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_642 = _rdata_T_479 ? REG_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_804 = _rdata_T_803 | _rdata_T_642; // @[Mux.scala 27:73]
  wire  _rdata_T_480 = 12'h5d7 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_643 = _rdata_T_480 ? REG_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_805 = _rdata_T_804 | _rdata_T_643; // @[Mux.scala 27:73]
  wire  _rdata_T_481 = 12'h327 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_644 = _rdata_T_481 ? perfEvents_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_806 = _rdata_T_805 | _rdata_T_644; // @[Mux.scala 27:73]
  wire  _rdata_T_482 = 12'h33c == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_645 = _rdata_T_482 ? csrevents_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_807 = _rdata_T_806 | _rdata_T_645; // @[Mux.scala 27:73]
  wire  _rdata_T_483 = 12'h5c1 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_646 = _rdata_T_483 ? spfctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_808 = _rdata_T_807 | _rdata_T_646; // @[Mux.scala 27:73]
  wire  _rdata_T_484 = 12'h3bb == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_316 = {{30'd0}, addr_1_11}; // @[RegMap.scala 50:93]
  wire [63:0] _rdata_T_318 = _rdata_T_316 | 64'h1ff; // @[PMP.scala 106:10]
  wire [63:0] _rdata_T_320 = {_rdata_T_316[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_321 = cfgs__11_a[1] ? _rdata_T_318 : _rdata_T_320; // @[PMP.scala 92:10]
  wire [63:0] _rdata_T_647 = _rdata_T_484 ? _rdata_T_321 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_809 = _rdata_T_808 | _rdata_T_647; // @[Mux.scala 27:73]
  wire  _rdata_T_485 = 12'h3a0 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_648 = _rdata_T_485 ? cfgMerged__0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_810 = _rdata_T_809 | _rdata_T_648; // @[Mux.scala 27:73]
  wire  _rdata_T_486 = 12'hb1f == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_649 = _rdata_T_486 ? perfCnts_28 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_811 = _rdata_T_810 | _rdata_T_649; // @[Mux.scala 27:73]
  wire  _rdata_T_487 = 12'h336 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_650 = _rdata_T_487 ? perfEvents_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_812 = _rdata_T_811 | _rdata_T_650; // @[Mux.scala 27:73]
  wire  _rdata_T_488 = 12'h142 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_651 = _rdata_T_488 ? scause : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_813 = _rdata_T_812 | _rdata_T_651; // @[Mux.scala 27:73]
  wire  _rdata_T_489 = 12'h323 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_652 = _rdata_T_489 ? perfEvents_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_814 = _rdata_T_813 | _rdata_T_652; // @[Mux.scala 27:73]
  wire  _rdata_T_490 = 12'hb10 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_653 = _rdata_T_490 ? perfCnts_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_815 = _rdata_T_814 | _rdata_T_653; // @[Mux.scala 27:73]
  wire  _rdata_T_491 = 12'h5d2 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_654 = _rdata_T_491 ? REG_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_816 = _rdata_T_815 | _rdata_T_654; // @[Mux.scala 27:73]
  wire  _rdata_T_492 = 12'hb12 == addr_4; // @[LookupTree.scala 25:34]
  wire [63:0] _rdata_T_655 = _rdata_T_492 ? perfCnts_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] rdata = _rdata_T_816 | _rdata_T_655; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T = rdata | io_in_bits_src_0; // @[CSR.scala 765:30]
  wire [63:0] _wdata_T_1 = ~io_in_bits_src_0; // @[CSR.scala 766:33]
  wire [63:0] _wdata_T_2 = rdata & _wdata_T_1; // @[CSR.scala 766:30]
  wire [63:0] _wdata_T_3 = rdata | csri; // @[CSR.scala 768:30]
  wire [63:0] _wdata_T_4 = ~csri; // @[CSR.scala 769:33]
  wire [63:0] _wdata_T_5 = rdata & _wdata_T_4; // @[CSR.scala 769:30]
  wire  _wdata_T_6 = 7'h1 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _wdata_T_7 = 7'h2 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _wdata_T_8 = 7'h3 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _wdata_T_9 = 7'h5 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _wdata_T_10 = 7'h6 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire  _wdata_T_11 = 7'h7 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 25:34]
  wire [63:0] _wdata_T_12 = _wdata_T_6 ? io_in_bits_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_13 = _wdata_T_7 ? _wdata_T : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_14 = _wdata_T_8 ? _wdata_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_15 = _wdata_T_9 ? csri : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_16 = _wdata_T_10 ? _wdata_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_17 = _wdata_T_11 ? _wdata_T_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_18 = _wdata_T_12 | _wdata_T_13; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_19 = _wdata_T_18 | _wdata_T_14; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_20 = _wdata_T_19 | _wdata_T_15; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_21 = _wdata_T_20 | _wdata_T_16; // @[Mux.scala 27:73]
  wire [63:0] wdata = _wdata_T_21 | _wdata_T_17; // @[Mux.scala 27:73]
  wire  _addrInPerfCnt_T_5 = addr_4 >= 12'h320 & addr_4 <= 12'h33f; // @[CSR.scala 773:31]
  wire  _addrInPerfCnt_T_6 = addr_4 >= 12'hb00 & addr_4 <= 12'hb1f | _addrInPerfCnt_T_5; // @[CSR.scala 772:71]
  wire  _addrInPerfCnt_T_7 = addr_4 == 12'h344; // @[CSR.scala 774:10]
  wire  addrInPerfCnt = _addrInPerfCnt_T_6 | _addrInPerfCnt_T_7; // @[CSR.scala 773:58]
  wire  _csrio_isPerfCnt_T_1 = io_in_bits_uop_ctrl_fuOpType != 7'h0; // @[CSR.scala 775:53]
  wire  satpLegalMode = wdata[63:60] == 4'h0 | wdata[63:60] == 4'h8; // @[CSR.scala 778:67]
  wire  _tvmNotPermit_T = priviledgeMode == 2'h1; // @[CSR.scala 781:38]
  wire  tvmNotPermit = priviledgeMode == 2'h1 & mstatusStruct_tvm; // @[CSR.scala 781:48]
  wire  _accessPermitted_T = addr_4 == 12'h180; // @[CSR.scala 782:32]
  wire  accessPermitted = ~(addr_4 == 12'h180 & tvmNotPermit); // @[CSR.scala 782:25]
  wire  _wen_T_1 = io_in_valid & _csrio_isPerfCnt_T_1; // @[CSR.scala 786:19]
  wire  wen = io_in_valid & _csrio_isPerfCnt_T_1 & (addr_4 != 12'h180 | satpLegalMode); // @[CSR.scala 786:45]
  wire  dcsrPermitted_isDebugReg = addr_4[11:4] == 8'h7b; // @[CSRConst.scala 249:34]
  wire  dcsrPermitted = dcsrPermitted_isDebugReg ? debugMode : 1'h1; // @[CSRConst.scala 250:8]
  wire [1:0] modePermitted_lowestAccessPrivilegeLevel = addr_4[9:8]; // @[CSRConst.scala 238:42]
  wire  _modePermitted_T = priviledgeMode >= modePermitted_lowestAccessPrivilegeLevel; // @[CSRConst.scala 239:10]
  wire  modePermitted = _modePermitted_T & dcsrPermitted; // @[CSR.scala 789:79]
  wire [11:0] _perfcntPermitted_index_T = addr_4 & 12'h1f; // @[CSRConst.scala 243:31]
  wire [4095:0] perfcntPermitted_index = 4096'h1 << _perfcntPermitted_index_T; // @[OneHot.scala 57:35]
  wire  _perfcntPermitted_T = priviledgeMode == 2'h3; // @[CSRConst.scala 244:14]
  wire [4095:0] _GEN_615 = {{4032'd0}, mcounteren}; // @[CSRConst.scala 244:60]
  wire [4095:0] _perfcntPermitted_T_2 = perfcntPermitted_index & _GEN_615; // @[CSRConst.scala 244:60]
  wire [4095:0] _GEN_617 = {{4032'd0}, scounteren}; // @[CSRConst.scala 244:93]
  wire [4095:0] _perfcntPermitted_T_5 = _perfcntPermitted_T_2 & _GEN_617; // @[CSRConst.scala 244:93]
  wire  _perfcntPermitted_T_7 = _tvmNotPermit_T ? _perfcntPermitted_T_2 != 4096'h0 : _perfcntPermitted_T_5 != 4096'h0; // @[CSRConst.scala 244:36]
  wire  perfcntPermitted = priviledgeMode == 2'h3 | _perfcntPermitted_T_7; // @[CSRConst.scala 244:8]
  wire  _permitted_T = addrInPerfCnt ? perfcntPermitted : modePermitted; // @[CSR.scala 791:22]
  wire  permitted = _permitted_T & accessPermitted; // @[CSR.scala 791:71]
  wire  _T_269 = wen & permitted; // @[CSR.scala 793:51]
  wire  _T_300 = addr_4 == 12'h7a2; // @[RegMap.scala 52:65]
  wire  _T_408 = addr_4 == 12'h7a1; // @[RegMap.scala 52:65]
  wire [63:0] _perfEvents_6_T = wdata & 64'hf87fff3fcff3fcff; // @[BitUtils.scala 36:14]
  wire [63:0] _perfEvents_6_T_2 = perfEvents_6 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_6_T_3 = _perfEvents_6_T | _perfEvents_6_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_3_mask_3_T = cfgs_1_4_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_3_mask_3_T_2 = cfgs_1_3_l | cfgs_1_4_l & _addr_3_mask_3_T; // @[PMP.scala 61:51]
  wire  _addr_3_mask_3_T_3 = ~_addr_3_mask_3_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_3_T_8 = _addr_3_mask_3_T_3 ? wdata : {{30'd0}, addr_3_3}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_23 = _T_269 & addr_4 == 12'h7cb ? _addr_3_T_8 : {{30'd0}, addr_3_3}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_26 = _T_269 & addr_4 == 12'h5ce ? wdata : REG_19; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _GEN_27 = _T_269 & addr_4 == 12'h5d9 ? wdata : REG_4; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _satp_T = wdata & 64'h8ffff00000ffffff; // @[BitUtils.scala 36:14]
  wire [63:0] _satp_T_2 = satp & 64'h70000fffff000000; // @[BitUtils.scala 36:37]
  wire [63:0] _satp_T_3 = _satp_T | _satp_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_7_mask_7_T = cfgs_1_8_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_7_mask_7_T_2 = cfgs_1_7_l | cfgs_1_8_l & _addr_7_mask_7_T; // @[PMP.scala 61:51]
  wire  _addr_7_mask_7_T_3 = ~_addr_7_mask_7_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_7_T_8 = _addr_7_mask_7_T_3 ? wdata : {{30'd0}, addr_3_7}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_30 = _T_269 & addr_4 == 12'h7cf ? _addr_7_T_8 : {{30'd0}, addr_3_7}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_11_T_2 = perfEvents_11 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_11_T_3 = _perfEvents_6_T | _perfEvents_11_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_1_mask_1_T = cfgs__2_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_1_mask_1_T_2 = cfgs__1_l | cfgs__2_l & _addr_1_mask_1_T; // @[PMP.scala 61:51]
  wire  _addr_1_mask_1_T_3 = ~_addr_1_mask_1_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_1_T_8 = _addr_1_mask_1_T_3 ? wdata : {{30'd0}, addr_1_1}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_33 = _T_269 & addr_4 == 12'h3b1 ? _addr_1_T_8 : {{30'd0}, addr_1_1}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  cfgMerged_1_cfg_wm_tmp_r = wdata[0]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_w = wdata[1]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_x = wdata[2]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_a = wdata[4:3]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_atomic = wdata[5]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_c = wdata[6]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_l = wdata[7]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_0_a_T_1 = |cfgMerged_1_cfg_wm_tmp_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_0_a_T_2 = {cfgMerged_1_cfg_wm_tmp_a[1],_cfgMerged_1_cfgVec_0_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__0_a = ~cfgMerged_1_cfg_wm_tmp_l ? _cfgMerged_1_cfgVec_0_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__0_w = ~cfgMerged_1_cfg_wm_tmp_l ? cfgMerged_1_cfg_wm_tmp_w & cfgMerged_1_cfg_wm_tmp_r :
    cfgMerged_1_cfg_wm_tmp_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_1_r = wdata[8]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_w = wdata[9]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_x = wdata[10]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_1_a = wdata[12:11]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_atomic = wdata[13]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_c = wdata[14]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_l = wdata[15]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_1_a_T_1 = |cfgMerged_1_cfg_wm_tmp_1_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_1_a_T_2 = {cfgMerged_1_cfg_wm_tmp_1_a[1],_cfgMerged_1_cfgVec_1_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__1_a = ~cfgMerged_1_cfg_wm_tmp_1_l ? _cfgMerged_1_cfgVec_1_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_1_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__1_w = ~cfgMerged_1_cfg_wm_tmp_1_l ? cfgMerged_1_cfg_wm_tmp_1_w &
    cfgMerged_1_cfg_wm_tmp_1_r : cfgMerged_1_cfg_wm_tmp_1_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_2_r = wdata[16]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_w = wdata[17]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_x = wdata[18]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_2_a = wdata[20:19]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_atomic = wdata[21]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_c = wdata[22]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_l = wdata[23]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_2_a_T_1 = |cfgMerged_1_cfg_wm_tmp_2_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_2_a_T_2 = {cfgMerged_1_cfg_wm_tmp_2_a[1],_cfgMerged_1_cfgVec_2_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__2_a = ~cfgMerged_1_cfg_wm_tmp_2_l ? _cfgMerged_1_cfgVec_2_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_2_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__2_w = ~cfgMerged_1_cfg_wm_tmp_2_l ? cfgMerged_1_cfg_wm_tmp_2_w &
    cfgMerged_1_cfg_wm_tmp_2_r : cfgMerged_1_cfg_wm_tmp_2_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_3_r = wdata[24]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_w = wdata[25]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_x = wdata[26]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_3_a = wdata[28:27]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_atomic = wdata[29]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_c = wdata[30]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_l = wdata[31]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_3_a_T_1 = |cfgMerged_1_cfg_wm_tmp_3_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_3_a_T_2 = {cfgMerged_1_cfg_wm_tmp_3_a[1],_cfgMerged_1_cfgVec_3_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__3_a = ~cfgMerged_1_cfg_wm_tmp_3_l ? _cfgMerged_1_cfgVec_3_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_3_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__3_w = ~cfgMerged_1_cfg_wm_tmp_3_l ? cfgMerged_1_cfg_wm_tmp_3_w &
    cfgMerged_1_cfg_wm_tmp_3_r : cfgMerged_1_cfg_wm_tmp_3_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_4_r = wdata[32]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_w = wdata[33]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_x = wdata[34]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_4_a = wdata[36:35]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_atomic = wdata[37]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_c = wdata[38]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_l = wdata[39]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_4_a_T_1 = |cfgMerged_1_cfg_wm_tmp_4_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_4_a_T_2 = {cfgMerged_1_cfg_wm_tmp_4_a[1],_cfgMerged_1_cfgVec_4_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__4_a = ~cfgMerged_1_cfg_wm_tmp_4_l ? _cfgMerged_1_cfgVec_4_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_4_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__4_w = ~cfgMerged_1_cfg_wm_tmp_4_l ? cfgMerged_1_cfg_wm_tmp_4_w &
    cfgMerged_1_cfg_wm_tmp_4_r : cfgMerged_1_cfg_wm_tmp_4_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_5_r = wdata[40]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_w = wdata[41]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_x = wdata[42]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_5_a = wdata[44:43]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_atomic = wdata[45]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_c = wdata[46]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_l = wdata[47]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_5_a_T_1 = |cfgMerged_1_cfg_wm_tmp_5_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_5_a_T_2 = {cfgMerged_1_cfg_wm_tmp_5_a[1],_cfgMerged_1_cfgVec_5_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__5_a = ~cfgMerged_1_cfg_wm_tmp_5_l ? _cfgMerged_1_cfgVec_5_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_5_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__5_w = ~cfgMerged_1_cfg_wm_tmp_5_l ? cfgMerged_1_cfg_wm_tmp_5_w &
    cfgMerged_1_cfg_wm_tmp_5_r : cfgMerged_1_cfg_wm_tmp_5_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_6_r = wdata[48]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_w = wdata[49]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_x = wdata[50]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_6_a = wdata[52:51]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_atomic = wdata[53]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_c = wdata[54]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_l = wdata[55]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_6_a_T_1 = |cfgMerged_1_cfg_wm_tmp_6_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_6_a_T_2 = {cfgMerged_1_cfg_wm_tmp_6_a[1],_cfgMerged_1_cfgVec_6_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__6_a = ~cfgMerged_1_cfg_wm_tmp_6_l ? _cfgMerged_1_cfgVec_6_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_6_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__6_w = ~cfgMerged_1_cfg_wm_tmp_6_l ? cfgMerged_1_cfg_wm_tmp_6_w &
    cfgMerged_1_cfg_wm_tmp_6_r : cfgMerged_1_cfg_wm_tmp_6_w; // @[PMP.scala 74:17 75:29 76:21]
  wire  cfgMerged_1_cfg_wm_tmp_7_r = wdata[56]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_w = wdata[57]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_x = wdata[58]; // @[PMP.scala 73:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_7_a = wdata[60:59]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_atomic = wdata[61]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_c = wdata[62]; // @[PMP.scala 73:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_l = wdata[63]; // @[PMP.scala 73:61]
  wire  _cfgMerged_1_cfgVec_7_a_T_1 = |cfgMerged_1_cfg_wm_tmp_7_a; // @[PMP.scala 77:80]
  wire [1:0] _cfgMerged_1_cfgVec_7_a_T_2 = {cfgMerged_1_cfg_wm_tmp_7_a[1],_cfgMerged_1_cfgVec_7_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__7_a = ~cfgMerged_1_cfg_wm_tmp_7_l ? _cfgMerged_1_cfgVec_7_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_7_a; // @[PMP.scala 74:17 75:29 77:41]
  wire  cfgMerged_1_cfgVec__7_w = ~cfgMerged_1_cfg_wm_tmp_7_l ? cfgMerged_1_cfg_wm_tmp_7_w &
    cfgMerged_1_cfg_wm_tmp_7_r : cfgMerged_1_cfg_wm_tmp_7_w; // @[PMP.scala 74:17 75:29 76:21]
  wire [7:0] cfgMerged_1_lo_lo_lo = {cfgMerged_1_cfg_wm_tmp_l,cfgMerged_1_cfg_wm_tmp_c,cfgMerged_1_cfg_wm_tmp_atomic,
    cfgMerged_1_cfgVec__0_a,cfgMerged_1_cfg_wm_tmp_x,cfgMerged_1_cfgVec__0_w,cfgMerged_1_cfg_wm_tmp_r}; // @[PMP.scala 83:12]
  wire [15:0] cfgMerged_1_lo_lo = {cfgMerged_1_cfg_wm_tmp_1_l,cfgMerged_1_cfg_wm_tmp_1_c,
    cfgMerged_1_cfg_wm_tmp_1_atomic,cfgMerged_1_cfgVec__1_a,cfgMerged_1_cfg_wm_tmp_1_x,cfgMerged_1_cfgVec__1_w,
    cfgMerged_1_cfg_wm_tmp_1_r,cfgMerged_1_lo_lo_lo}; // @[PMP.scala 83:12]
  wire [7:0] cfgMerged_1_lo_hi_lo = {cfgMerged_1_cfg_wm_tmp_2_l,cfgMerged_1_cfg_wm_tmp_2_c,
    cfgMerged_1_cfg_wm_tmp_2_atomic,cfgMerged_1_cfgVec__2_a,cfgMerged_1_cfg_wm_tmp_2_x,cfgMerged_1_cfgVec__2_w,
    cfgMerged_1_cfg_wm_tmp_2_r}; // @[PMP.scala 83:12]
  wire [31:0] cfgMerged_1_lo = {cfgMerged_1_cfg_wm_tmp_3_l,cfgMerged_1_cfg_wm_tmp_3_c,cfgMerged_1_cfg_wm_tmp_3_atomic
    ,cfgMerged_1_cfgVec__3_a,cfgMerged_1_cfg_wm_tmp_3_x,cfgMerged_1_cfgVec__3_w,cfgMerged_1_cfg_wm_tmp_3_r,
    cfgMerged_1_lo_hi_lo,cfgMerged_1_lo_lo}; // @[PMP.scala 83:12]
  wire [7:0] cfgMerged_1_hi_lo_lo = {cfgMerged_1_cfg_wm_tmp_4_l,cfgMerged_1_cfg_wm_tmp_4_c,
    cfgMerged_1_cfg_wm_tmp_4_atomic,cfgMerged_1_cfgVec__4_a,cfgMerged_1_cfg_wm_tmp_4_x,cfgMerged_1_cfgVec__4_w,
    cfgMerged_1_cfg_wm_tmp_4_r}; // @[PMP.scala 83:12]
  wire [15:0] cfgMerged_1_hi_lo = {cfgMerged_1_cfg_wm_tmp_5_l,cfgMerged_1_cfg_wm_tmp_5_c,
    cfgMerged_1_cfg_wm_tmp_5_atomic,cfgMerged_1_cfgVec__5_a,cfgMerged_1_cfg_wm_tmp_5_x,cfgMerged_1_cfgVec__5_w,
    cfgMerged_1_cfg_wm_tmp_5_r,cfgMerged_1_hi_lo_lo}; // @[PMP.scala 83:12]
  wire [7:0] cfgMerged_1_hi_hi_lo = {cfgMerged_1_cfg_wm_tmp_6_l,cfgMerged_1_cfg_wm_tmp_6_c,
    cfgMerged_1_cfg_wm_tmp_6_atomic,cfgMerged_1_cfgVec__6_a,cfgMerged_1_cfg_wm_tmp_6_x,cfgMerged_1_cfgVec__6_w,
    cfgMerged_1_cfg_wm_tmp_6_r}; // @[PMP.scala 83:12]
  wire [63:0] _cfgMerged_1_T_20 = {cfgMerged_1_cfg_wm_tmp_7_l,cfgMerged_1_cfg_wm_tmp_7_c,
    cfgMerged_1_cfg_wm_tmp_7_atomic,cfgMerged_1_cfgVec__7_a,cfgMerged_1_cfg_wm_tmp_7_x,cfgMerged_1_cfgVec__7_w,
    cfgMerged_1_cfg_wm_tmp_7_r,cfgMerged_1_hi_hi_lo,cfgMerged_1_hi_lo,cfgMerged_1_lo}; // @[PMP.scala 83:12]
  wire [63:0] _perfEvents_26_T_2 = csrevents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_26_T_3 = _perfEvents_6_T | _perfEvents_26_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_112 = _T_269 & addr_4 == 12'h5ca ? wdata : REG_9; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_0_mask_0_T = cfgs_1_1_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_0_mask_0_T_2 = cfgs_1_0_l | cfgs_1_1_l & _addr_0_mask_0_T; // @[PMP.scala 61:51]
  wire  _addr_0_mask_0_T_3 = ~_addr_0_mask_0_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_0_T_8 = _addr_0_mask_0_T_3 ? wdata : {{30'd0}, addr_3_0}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_114 = _T_269 & addr_4 == 12'h7c8 ? _addr_0_T_8 : {{30'd0}, addr_3_0}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_5_mask_5_T = cfgs__6_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_5_mask_5_T_2 = cfgs__5_l | cfgs__6_l & _addr_5_mask_5_T; // @[PMP.scala 61:51]
  wire  _addr_5_mask_5_T_3 = ~_addr_5_mask_5_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_5_T_8 = _addr_5_mask_5_T_3 ? wdata : {{30'd0}, addr_1_5}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_116 = _T_269 & addr_4 == 12'h3b5 ? _addr_5_T_8 : {{30'd0}, addr_1_5}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_14_T_2 = perfEvents_14 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_14_T_3 = _perfEvents_6_T | _perfEvents_14_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_118 = _T_269 & addr_4 == 12'h5c7 ? wdata : REG_16; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _T_334 = addr_4 == 12'h302; // @[RegMap.scala 52:65]
  wire [63:0] _medeleg_T = wdata & 64'hf3ff; // @[BitUtils.scala 36:14]
  wire [63:0] _medeleg_T_2 = medeleg & 64'hffffffffffff0c00; // @[BitUtils.scala 36:37]
  wire [63:0] _medeleg_T_3 = _medeleg_T | _medeleg_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_120 = _T_269 & addr_4 == 12'h5d6 ? wdata : REG_11; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _stvec_T = wdata & 64'hfffffffffffffffd; // @[BitUtils.scala 36:14]
  wire [63:0] _stvec_T_2 = stvec & 64'h2; // @[BitUtils.scala 36:37]
  wire [63:0] _stvec_T_3 = _stvec_T | _stvec_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_15_mask_15_T = ~cfgs_1_15_l; // @[PMP.scala 256:17]
  wire [63:0] _addr_15_T_5 = _addr_15_mask_15_T ? wdata : {{30'd0}, addr_3_15}; // @[PMP.scala 257:8]
  wire [63:0] _GEN_124 = _T_269 & addr_4 == 12'h7d7 ? _addr_15_T_5 : {{30'd0}, addr_3_15}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_125 = _T_269 & addr_4 == 12'h5d1 ? wdata : REG_18; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _sepc_T = wdata & 64'hfffffffffffffffe; // @[BitUtils.scala 36:14]
  wire [63:0] _sepc_T_2 = sepc & 64'h1; // @[BitUtils.scala 36:37]
  wire [63:0] _sepc_T_3 = _sepc_T | _sepc_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_126 = _T_269 & addr_4 == 12'h141 ? _sepc_T_3 : sepc; // @[CSR.scala 487:21 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_127 = _T_269 & addr_4 == 12'h342 ? wdata : mcause; // @[CSR.scala 377:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_3_T_2 = perfEvents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_3_T_3 = _perfEvents_6_T | _perfEvents_3_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_18_T_2 = perfEvents_18 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_18_T_3 = _perfEvents_6_T | _perfEvents_18_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_12_mask_12_T = cfgs__13_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_12_mask_12_T_2 = cfgs__12_l | cfgs__13_l & _addr_12_mask_12_T; // @[PMP.scala 61:51]
  wire  _addr_12_mask_12_T_3 = ~_addr_12_mask_12_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_12_T_8 = _addr_12_mask_12_T_3 ? wdata : {{30'd0}, addr_1_12}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_132 = _T_269 & addr_4 == 12'h3bc ? _addr_12_T_8 : {{30'd0}, addr_1_12}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_10_mask_10_T = cfgs_1_11_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_10_mask_10_T_2 = cfgs_1_10_l | cfgs_1_11_l & _addr_10_mask_10_T; // @[PMP.scala 61:51]
  wire  _addr_10_mask_10_T_3 = ~_addr_10_mask_10_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_10_T_8 = _addr_10_mask_10_T_3 ? wdata : {{30'd0}, addr_3_10}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_135 = _T_269 & addr_4 == 12'h7d2 ? _addr_10_T_8 : {{30'd0}, addr_3_10}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _T_370 = addr_4 == 12'h1; // @[RegMap.scala 52:65]
  wire [55:0] fcsr_fcsrOld_reserved = fcsr[63:8]; // @[CSR.scala 580:32]
  wire [4:0] fcsr_fcsrNew_fflags = wdata[4:0]; // @[CSR.scala 586:30]
  wire [63:0] _fcsr_T_4 = {fcsr_fcsrOld_reserved,fcsr[7:5],fcsr_fcsrNew_fflags}; // @[CSR.scala 588:13]
  wire [63:0] _GEN_137 = _T_269 & addr_4 == 12'h1 ? _fcsr_T_4 : fcsr; // @[RegMap.scala 52:{72,76} CSR.scala 567:21]
  wire [63:0] _perfEvents_7_T_2 = perfEvents_7 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_7_T_3 = _perfEvents_6_T | _perfEvents_7_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_8_mask_8_T = cfgs_1_9_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_8_mask_8_T_2 = cfgs_1_8_l | cfgs_1_9_l & _addr_8_mask_8_T; // @[PMP.scala 61:51]
  wire  _addr_8_mask_8_T_3 = ~_addr_8_mask_8_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_8_T_8 = _addr_8_mask_8_T_3 ? wdata : {{30'd0}, addr_3_8}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_141 = _T_269 & addr_4 == 12'h7d0 ? _addr_8_T_8 : {{30'd0}, addr_3_8}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_13_mask_13_T = cfgs__14_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_13_mask_13_T_2 = cfgs__13_l | cfgs__14_l & _addr_13_mask_13_T; // @[PMP.scala 61:51]
  wire  _addr_13_mask_13_T_3 = ~_addr_13_mask_13_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_13_T_8 = _addr_13_mask_13_T_3 ? wdata : {{30'd0}, addr_1_13}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_143 = _T_269 & addr_4 == 12'h3bd ? _addr_13_T_8 : {{30'd0}, addr_1_13}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_22_T_2 = perfEvents_22 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_22_T_3 = _perfEvents_6_T | _perfEvents_22_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_8_mask_8_T_10 = cfgs__9_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_8_mask_8_T_12 = cfgs__8_l | cfgs__9_l & _addr_8_mask_8_T_10; // @[PMP.scala 61:51]
  wire  _addr_8_mask_8_T_13 = ~_addr_8_mask_8_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_8_T_17 = _addr_8_mask_8_T_13 ? wdata : {{30'd0}, addr_1_8}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_146 = _T_269 & addr_4 == 12'h3b8 ? _addr_8_T_17 : {{30'd0}, addr_1_8}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _mie_T = wdata & sieMask; // @[BitUtils.scala 36:14]
  wire [63:0] _mie_T_1 = ~sieMask; // @[BitUtils.scala 36:39]
  wire [63:0] _mie_T_2 = mie & _mie_T_1; // @[BitUtils.scala 36:37]
  wire [63:0] _mie_T_3 = _mie_T | _mie_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_17_T_2 = perfEvents_17 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_17_T_3 = _perfEvents_6_T | _perfEvents_17_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_149 = _T_269 & addr_4 == 12'h5cf ? wdata : REG_12; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _perfEvents_12_T_2 = perfEvents_12 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_12_T_3 = _perfEvents_6_T | _perfEvents_12_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _dcsr_T = wdata & 64'hb817; // @[BitUtils.scala 36:14]
  wire [63:0] _dcsr_T_2 = _rdata_T_108 & 64'hffffffffffff47e8; // @[BitUtils.scala 36:37]
  wire [63:0] _dcsr_T_3 = _dcsr_T | _dcsr_T_2; // @[BitUtils.scala 36:26]
  wire [1:0] dcsr_dcsrOld_prv = _dcsr_T_3[1:0]; // @[CSR.scala 255:41]
  wire  _dcsr_dcsrNew_T_2 = dcsr_dcsrOld_prv[0] | dcsr_dcsrOld_prv[1]; // @[CSR.scala 256:42]
  wire [63:0] _GEN_619 = {{63'd0}, _dcsr_dcsrNew_T_2}; // @[CSR.scala 256:24]
  wire [63:0] dcsr_dcsrNew = _dcsr_T_3 | _GEN_619; // @[CSR.scala 256:24]
  wire [63:0] _GEN_151 = _T_269 & addr_4 == 12'h7b0 ? dcsr_dcsrNew : {{32'd0}, dcsr}; // @[CSR.scala 221:21 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_27_T_2 = csrevents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_27_T_3 = _perfEvents_6_T | _perfEvents_27_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_4_mask_4_T = cfgs__5_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_4_mask_4_T_2 = cfgs__4_l | cfgs__5_l & _addr_4_mask_4_T; // @[PMP.scala 61:51]
  wire  _addr_4_mask_4_T_3 = ~_addr_4_mask_4_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_4_T_8 = _addr_4_mask_4_T_3 ? wdata : {{30'd0}, addr_1_4}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_157 = _T_269 & addr_4 == 12'h3b4 ? _addr_4_T_8 : {{30'd0}, addr_1_4}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  tDummy1_wdata_wire_u = wdata[3]; // @[CSR.scala 296:45]
  wire  tDummy1_wdata_wire_s = wdata[4]; // @[CSR.scala 296:45]
  wire  tDummy1_wdata_wire_m = wdata[6]; // @[CSR.scala 296:45]
  wire [3:0] tDummy1_wdata_wire_matchType = wdata[10:7]; // @[CSR.scala 296:45]
  wire  tDummy1_wdata_wire_chain = wdata[11]; // @[CSR.scala 296:45]
  wire [3:0] tDummy1_wdata_wire_action = wdata[15:12]; // @[CSR.scala 296:45]
  wire  tDummy1_wdata_wire_select = wdata[19]; // @[CSR.scala 296:45]
  wire  _tDummy1_tdata1_new_select_T_7 = 4'h3 == tselectPhy | 4'h2 == tselectPhy; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_9 = 4'h4 == tselectPhy ? 2'h2 : {{1'd0}, _tDummy1_tdata1_new_select_T_7}; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_11 = 4'h5 == tselectPhy ? 2'h2 : _tDummy1_tdata1_new_select_T_9; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_13 = 4'h6 == tselectPhy ? 2'h0 : _tDummy1_tdata1_new_select_T_11; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_15 = 4'h7 == tselectPhy ? 2'h1 : _tDummy1_tdata1_new_select_T_13; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_17 = 4'h8 == tselectPhy ? 2'h0 : _tDummy1_tdata1_new_select_T_15; // @[Mux.scala 81:58]
  wire [1:0] _tDummy1_tdata1_new_select_T_19 = 4'h9 == tselectPhy ? 2'h2 : _tDummy1_tdata1_new_select_T_17; // @[Mux.scala 81:58]
  wire  _tDummy1_tdata1_new_select_T_20 = _tDummy1_tdata1_new_select_T_19 == 2'h0; // @[CSR.scala 304:50]
  wire  tDummy1_tdata1_new_select = _tDummy1_tdata1_new_select_T_19 == 2'h0 & tDummy1_wdata_wire_select; // @[CSR.scala 304:65]
  wire [3:0] tDummy1_tdata1_new_action = tDummy1_wdata_wire_action <= 4'h1 ? tDummy1_wdata_wire_action : tdata1Wire[15:
    12]; // @[CSR.scala 305:35 308:25]
  wire  tDummy1_tdata1_new_chain = ~tselectPhy[0] & tDummy1_wdata_wire_chain; // @[CSR.scala 313:40]
  wire [3:0] tDummy1_tdata1_new_matchType = tDummy1_wdata_wire_matchType != 4'h0 & tDummy1_wdata_wire_matchType != 4'h2
     & tDummy1_wdata_wire_matchType != 4'h3 ? tdata1Wire[10:7] : tDummy1_wdata_wire_matchType; // @[CSR.scala 314:104 315:28]
  wire  _tDummy1_tdata1_new_sizehi_T_21 = tDummy1_wdata_wire_select & _tDummy1_tdata1_new_select_T_20; // @[CSR.scala 317:48]
  wire  _tDummy1_tdata1_new_sizehi_T_22 = tDummy1_wdata_wire_select & _tDummy1_tdata1_new_select_T_20 ? 1'h0 : 1'h1; // @[CSR.scala 317:29]
  wire [1:0] tDummy1_tdata1_new_sizelo = _tDummy1_tdata1_new_sizehi_T_21 ? 2'h3 : 2'h1; // @[CSR.scala 318:28]
  wire  tDummy1_tdata1_new_store = _tDummy1_tdata1_new_select_T_19 == 2'h1; // @[CSR.scala 320:48]
  wire  tDummy1_tdata1_new_load = _tDummy1_tdata1_new_select_T_19 == 2'h2; // @[CSR.scala 321:47]
  wire [1:0] tDummy1_tdata1_new_sizehi = {{1'd0}, _tDummy1_tdata1_new_sizehi_T_22};
  wire [51:0] tDummy1_tdata1Phy_hi = {tdata1Wire[63:60],1'h0,6'h0,30'h0,tDummy1_tdata1_new_sizehi,1'h0,
    tDummy1_tdata1_new_select,1'h0,tDummy1_tdata1_new_sizelo,tDummy1_tdata1_new_action}; // @[CSR.scala 323:43]
  wire [63:0] _tDummy1_tdata1Phy_T = {tDummy1_tdata1Phy_hi,tDummy1_tdata1_new_chain,tDummy1_tdata1_new_matchType,
    tDummy1_wdata_wire_m,1'h0,tDummy1_wdata_wire_s,tDummy1_wdata_wire_u,_tDummy1_tdata1_new_select_T_20,
    tDummy1_tdata1_new_store,tDummy1_tdata1_new_load}; // @[CSR.scala 323:43]
  wire  _T_412 = addr_4 == 12'h7b2; // @[RegMap.scala 52:65]
  wire [63:0] _mstatus_T = wdata & 64'hc6122; // @[BitUtils.scala 36:14]
  wire [63:0] _mstatus_T_2 = mstatus & 64'hfffffffffff39edd; // @[BitUtils.scala 36:37]
  wire [63:0] _mstatus_T_3 = _mstatus_T | _mstatus_T_2; // @[BitUtils.scala 36:26]
  wire [1:0] mstatus_mstatusOld_fs = _mstatus_T_3[14:13]; // @[CSR.scala 430:47]
  wire [1:0] mstatus_mstatusOld_xs = _mstatus_T_3[16:15]; // @[CSR.scala 430:47]
  wire  _mstatus_mstatusNew_T_2 = mstatus_mstatusOld_xs == 2'h3 | mstatus_mstatusOld_fs == 2'h3; // @[CSR.scala 431:52]
  wire [63:0] mstatus_mstatusNew = {_mstatus_mstatusNew_T_2,_mstatus_T_3[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_195 = _T_269 & addr_4 == 12'h100 ? mstatus_mstatusNew : mstatus; // @[CSR.scala 406:24 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_196 = _T_269 & addr_4 == 12'h5d5 ? wdata : REG_15; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _GEN_198 = _T_269 & addr_4 == 12'h5c6 ? wdata : REG_1; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_14_mask_14_T = cfgs_1_15_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_14_mask_14_T_2 = cfgs_1_14_l | cfgs_1_15_l & _addr_14_mask_14_T; // @[PMP.scala 61:51]
  wire  _addr_14_mask_14_T_3 = ~_addr_14_mask_14_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_14_T_8 = _addr_14_mask_14_T_3 ? wdata : {{30'd0}, addr_3_14}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_202 = _T_269 & addr_4 == 12'h7d6 ? _addr_14_T_8 : {{30'd0}, addr_3_14}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _T_438 = addr_4 == 12'h2; // @[RegMap.scala 52:65]
  wire [2:0] fcsr_fcsrOld_1_frm = wdata[2:0]; // @[CSR.scala 574:25]
  wire [63:0] _fcsr_T_9 = {fcsr_fcsrOld_reserved,fcsr_fcsrOld_1_frm,fcsr[4:0]}; // @[CSR.scala 575:13]
  wire  _GEN_244 = _T_269 & addr_4 == 12'h2 | _T_269 & addr_4 == 12'h1; // @[RegMap.scala 52:72 CSR.scala 573:25]
  wire [63:0] _perfEvents_2_T_2 = perfEvents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_2_T_3 = _perfEvents_6_T | _perfEvents_2_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_9_mask_9_T = cfgs__10_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_9_mask_9_T_2 = cfgs__9_l | cfgs__10_l & _addr_9_mask_9_T; // @[PMP.scala 61:51]
  wire  _addr_9_mask_9_T_3 = ~_addr_9_mask_9_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_9_T_8 = _addr_9_mask_9_T_3 ? wdata : {{30'd0}, addr_1_9}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_248 = _T_269 & addr_4 == 12'h3b9 ? _addr_9_T_8 : {{30'd0}, addr_1_9}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _mtvec_T_2 = mtvec & 64'h2; // @[BitUtils.scala 36:37]
  wire [63:0] _mtvec_T_3 = _stvec_T | _mtvec_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_4_mask_4_T_10 = cfgs_1_5_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_4_mask_4_T_12 = cfgs_1_4_l | cfgs_1_5_l & _addr_4_mask_4_T_10; // @[PMP.scala 61:51]
  wire  _addr_4_mask_4_T_13 = ~_addr_4_mask_4_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_4_T_17 = _addr_4_mask_4_T_13 ? wdata : {{30'd0}, addr_3_4}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_251 = _T_269 & addr_4 == 12'h7cc ? _addr_4_T_17 : {{30'd0}, addr_3_4}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_9_mask_9_T_10 = cfgs_1_10_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_9_mask_9_T_12 = cfgs_1_9_l | cfgs_1_10_l & _addr_9_mask_9_T_10; // @[PMP.scala 61:51]
  wire  _addr_9_mask_9_T_13 = ~_addr_9_mask_9_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_9_T_17 = _addr_9_mask_9_T_13 ? wdata : {{30'd0}, addr_3_9}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_253 = _T_269 & addr_4 == 12'h7d1 ? _addr_9_T_17 : {{30'd0}, addr_3_9}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_21_T_2 = perfEvents_21 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_21_T_3 = _perfEvents_6_T | _perfEvents_21_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_255 = _T_269 & addr_4 == 12'h5cb ? wdata : REG_5; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _perfEvents_16_T_2 = perfEvents_16 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_16_T_3 = _perfEvents_6_T | _perfEvents_16_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_23_T_2 = perfEvents_23 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_23_T_3 = _perfEvents_6_T | _perfEvents_23_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_14_mask_14_T_10 = cfgs__15_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_14_mask_14_T_12 = cfgs__14_l | cfgs__15_l & _addr_14_mask_14_T_10; // @[PMP.scala 61:51]
  wire  _addr_14_mask_14_T_13 = ~_addr_14_mask_14_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_14_T_17 = _addr_14_mask_14_T_13 ? wdata : {{30'd0}, addr_1_14}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_260 = _T_269 & addr_4 == 12'h3be ? _addr_14_T_17 : {{30'd0}, addr_1_14}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_261 = _T_269 & addr_4 == 12'h5d0 ? wdata : REG_13; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_5_mask_5_T_10 = cfgs_1_6_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_5_mask_5_T_12 = cfgs_1_5_l | cfgs_1_6_l & _addr_5_mask_5_T_10; // @[PMP.scala 61:51]
  wire  _addr_5_mask_5_T_13 = ~_addr_5_mask_5_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_5_T_17 = _addr_5_mask_5_T_13 ? wdata : {{30'd0}, addr_3_5}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_264 = _T_269 & addr_4 == 12'h7cd ? _addr_5_T_17 : {{30'd0}, addr_3_5}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_1_T_2 = perfEvents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_1_T_3 = _perfEvents_6_T | _perfEvents_1_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_3_mask_3_T_10 = cfgs__4_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_3_mask_3_T_12 = cfgs__3_l | cfgs__4_l & _addr_3_mask_3_T_10; // @[PMP.scala 61:51]
  wire  _addr_3_mask_3_T_13 = ~_addr_3_mask_3_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_3_T_17 = _addr_3_mask_3_T_13 ? wdata : {{30'd0}, addr_1_3}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_267 = _T_269 & addr_4 == 12'h3b3 ? _addr_3_T_17 : {{30'd0}, addr_1_3}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_28_T_2 = csrevents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_28_T_3 = _perfEvents_6_T | _perfEvents_28_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_269 = _T_269 & addr_4 == 12'h5d4 ? wdata : REG_17; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _GEN_271 = _T_269 & addr_4 == 12'h7b1 ? wdata : dpc; // @[CSR.scala 222:16 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_8_T_2 = perfEvents_8 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_8_T_3 = _perfEvents_6_T | _perfEvents_8_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_13_T_2 = perfEvents_13 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_13_T_3 = _perfEvents_6_T | _perfEvents_13_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_275 = _T_269 & addr_4 == 12'h143 ? wdata : stval; // @[CSR.scala 491:18 RegMap.scala 52:{72,76}]
  wire  _addr_1_mask_1_T_10 = cfgs_1_2_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_1_mask_1_T_12 = cfgs_1_1_l | cfgs_1_2_l & _addr_1_mask_1_T_10; // @[PMP.scala 61:51]
  wire  _addr_1_mask_1_T_13 = ~_addr_1_mask_1_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_1_T_17 = _addr_1_mask_1_T_13 ? wdata : {{30'd0}, addr_3_1}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_277 = _T_269 & addr_4 == 12'h7c9 ? _addr_1_T_17 : {{30'd0}, addr_3_1}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_15_mask_15_T_7 = ~cfgs__15_l; // @[PMP.scala 256:17]
  wire [63:0] _addr_15_T_11 = _addr_15_mask_15_T_7 ? wdata : {{30'd0}, addr_1_15}; // @[PMP.scala 257:8]
  wire [63:0] _GEN_283 = _T_269 & addr_4 == 12'h3bf ? _addr_15_T_11 : {{30'd0}, addr_1_15}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _mstatus_T_4 = wdata & 64'h80000000007e79bb; // @[BitUtils.scala 36:14]
  wire [63:0] _mstatus_T_6 = mstatus & 64'h7fffffffff818644; // @[BitUtils.scala 36:37]
  wire [63:0] _mstatus_T_7 = _mstatus_T_4 | _mstatus_T_6; // @[BitUtils.scala 36:26]
  wire [1:0] mstatus_mstatusOld_1_fs = _mstatus_T_7[14:13]; // @[CSR.scala 430:47]
  wire [1:0] mstatus_mstatusOld_1_xs = _mstatus_T_7[16:15]; // @[CSR.scala 430:47]
  wire  _mstatus_mstatusNew_T_6 = mstatus_mstatusOld_1_xs == 2'h3 | mstatus_mstatusOld_1_fs == 2'h3; // @[CSR.scala 431:52]
  wire [63:0] mstatus_mstatusNew_1 = {_mstatus_mstatusNew_T_6,_mstatus_T_7[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_284 = _T_269 & addr_4 == 12'h300 ? mstatus_mstatusNew_1 : _GEN_195; // @[RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_24_T_2 = csrevents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_24_T_3 = _perfEvents_6_T | _perfEvents_24_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_287 = _T_269 & addr_4 == 12'h5c5 ? wdata : REG; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _fcsr_T_20 = {fcsr_fcsrOld_reserved,wdata[7:5],fcsr_fcsrNew_fflags}; // @[Cat.scala 31:58]
  wire  _GEN_288 = _T_269 & addr_4 == 12'h3 | _GEN_244; // @[RegMap.scala 52:72 CSR.scala 594:25]
  wire [63:0] _GEN_290 = _T_269 & addr_4 == 12'h5d8 ? wdata : REG_20; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_13_mask_13_T_10 = cfgs_1_14_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_13_mask_13_T_12 = cfgs_1_13_l | cfgs_1_14_l & _addr_13_mask_13_T_10; // @[PMP.scala 61:51]
  wire  _addr_13_mask_13_T_13 = ~_addr_13_mask_13_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_13_T_17 = _addr_13_mask_13_T_13 ? wdata : {{30'd0}, addr_3_13}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_292 = _T_269 & addr_4 == 12'h7d5 ? _addr_13_T_17 : {{30'd0}, addr_3_13}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_0_mask_0_T_10 = cfgs__1_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_0_mask_0_T_12 = cfgs__0_l | cfgs__1_l & _addr_0_mask_0_T_10; // @[PMP.scala 61:51]
  wire  _addr_0_mask_0_T_13 = ~_addr_0_mask_0_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_0_T_17 = _addr_0_mask_0_T_13 ? wdata : {{30'd0}, addr_1_0}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_295 = _T_269 & addr_4 == 12'h3b0 ? _addr_0_T_17 : {{30'd0}, addr_1_0}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_9_T_2 = perfEvents_9 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_9_T_3 = _perfEvents_6_T | _perfEvents_9_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_20_T_2 = perfEvents_20 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_20_T_3 = _perfEvents_6_T | _perfEvents_20_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_10_mask_10_T_10 = cfgs__11_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_10_mask_10_T_12 = cfgs__10_l | cfgs__11_l & _addr_10_mask_10_T_10; // @[PMP.scala 61:51]
  wire  _addr_10_mask_10_T_13 = ~_addr_10_mask_10_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_10_T_17 = _addr_10_mask_10_T_13 ? wdata : {{30'd0}, addr_1_10}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_301 = _T_269 & addr_4 == 12'h3ba ? _addr_10_T_17 : {{30'd0}, addr_1_10}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_303 = _T_269 & addr_4 == 12'h5cc ? wdata : REG_3; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_7_mask_7_T_10 = cfgs__8_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_7_mask_7_T_12 = cfgs__7_l | cfgs__8_l & _addr_7_mask_7_T_10; // @[PMP.scala 61:51]
  wire  _addr_7_mask_7_T_13 = ~_addr_7_mask_7_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_7_T_17 = _addr_7_mask_7_T_13 ? wdata : {{30'd0}, addr_1_7}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_306 = _T_269 & addr_4 == 12'h3b7 ? _addr_7_T_17 : {{30'd0}, addr_1_7}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_5_T_2 = perfEvents_5 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_5_T_3 = _perfEvents_6_T | _perfEvents_5_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_310 = _T_269 & addr_4 == 12'h5cd ? wdata : REG_7; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _mideleg_T = wdata & 64'h222; // @[BitUtils.scala 36:14]
  wire [63:0] _mideleg_T_2 = mideleg & 64'hfffffffffffffddd; // @[BitUtils.scala 36:37]
  wire [63:0] _mideleg_T_3 = _mideleg_T | _mideleg_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_6_mask_6_T = cfgs_1_7_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_6_mask_6_T_2 = cfgs_1_6_l | cfgs_1_7_l & _addr_6_mask_6_T; // @[PMP.scala 61:51]
  wire  _addr_6_mask_6_T_3 = ~_addr_6_mask_6_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_6_T_8 = _addr_6_mask_6_T_3 ? wdata : {{30'd0}, addr_3_6}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_315 = _T_269 & addr_4 == 12'h7ce ? _addr_6_T_8 : {{30'd0}, addr_3_6}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_10_T_2 = perfEvents_10 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_10_T_3 = _perfEvents_6_T | _perfEvents_10_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_318 = _T_269 & addr_4 == 12'h5c9 ? wdata : REG_14; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_2_mask_2_T = cfgs__3_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_2_mask_2_T_2 = cfgs__2_l | cfgs__3_l & _addr_2_mask_2_T; // @[PMP.scala 61:51]
  wire  _addr_2_mask_2_T_3 = ~_addr_2_mask_2_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_2_T_8 = _addr_2_mask_2_T_3 ? wdata : {{30'd0}, addr_1_2}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_320 = _T_269 & addr_4 == 12'h3b2 ? _addr_2_T_8 : {{30'd0}, addr_1_2}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_12_mask_12_T_10 = cfgs_1_13_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_12_mask_12_T_12 = cfgs_1_12_l | cfgs_1_13_l & _addr_12_mask_12_T_10; // @[PMP.scala 61:51]
  wire  _addr_12_mask_12_T_13 = ~_addr_12_mask_12_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_12_T_17 = _addr_12_mask_12_T_13 ? wdata : {{30'd0}, addr_3_12}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_323 = _T_269 & addr_4 == 12'h7d4 ? _addr_12_T_17 : {{30'd0}, addr_3_12}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_324 = _T_269 & addr_4 == 12'h5d3 ? wdata : REG_6; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire  _addr_2_mask_2_T_10 = cfgs_1_3_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_2_mask_2_T_12 = cfgs_1_2_l | cfgs_1_3_l & _addr_2_mask_2_T_10; // @[PMP.scala 61:51]
  wire  _addr_2_mask_2_T_13 = ~_addr_2_mask_2_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_2_T_17 = _addr_2_mask_2_T_13 ? wdata : {{30'd0}, addr_3_2}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_327 = _T_269 & addr_4 == 12'h7ca ? _addr_2_T_17 : {{30'd0}, addr_3_2}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire  _addr_11_mask_11_T = cfgs_1_12_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_11_mask_11_T_2 = cfgs_1_11_l | cfgs_1_12_l & _addr_11_mask_11_T; // @[PMP.scala 61:51]
  wire  _addr_11_mask_11_T_3 = ~_addr_11_mask_11_T_2; // @[PMP.scala 251:17]
  wire [63:0] _addr_11_T_8 = _addr_11_mask_11_T_3 ? wdata : {{30'd0}, addr_3_11}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_330 = _T_269 & addr_4 == 12'h7d3 ? _addr_11_T_8 : {{30'd0}, addr_3_11}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _tControlPhy_T = wdata & 64'h88; // @[BitUtils.scala 36:14]
  wire [63:0] _tControlPhy_T_2 = tControlPhy & 64'hffffffffffffff77; // @[BitUtils.scala 36:37]
  wire [63:0] _tControlPhy_T_3 = _tControlPhy_T | _tControlPhy_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _mepc_T_2 = mepc & 64'h1; // @[BitUtils.scala 36:37]
  wire [63:0] _mepc_T_3 = _sepc_T | _mepc_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_332 = _T_269 & addr_4 == 12'h341 ? _mepc_T_3 : mepc; // @[CSR.scala 379:17 RegMap.scala 52:{72,76}]
  wire  _addr_6_mask_6_T_10 = cfgs__7_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_6_mask_6_T_12 = cfgs__6_l | cfgs__7_l & _addr_6_mask_6_T_10; // @[PMP.scala 61:51]
  wire  _addr_6_mask_6_T_13 = ~_addr_6_mask_6_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_6_T_17 = _addr_6_mask_6_T_13 ? wdata : {{30'd0}, addr_1_6}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_334 = _T_269 & addr_4 == 12'h3b6 ? _addr_6_T_17 : {{30'd0}, addr_1_6}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _GEN_335 = _T_269 & addr_4 == 12'h343 ? wdata : mtval; // @[CSR.scala 378:22 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_15_T_2 = perfEvents_15 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_15_T_3 = _perfEvents_6_T | _perfEvents_15_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_379 = _T_269 & addr_4 == 12'h5c8 ? wdata : REG_2; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _GEN_380 = _T_269 & addr_4 == 12'h5d7 ? wdata : REG_8; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _perfEvents_4_T_2 = perfEvents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_4_T_3 = _perfEvents_6_T | _perfEvents_4_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _perfEvents_25_T_2 = csrevents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_25_T_3 = _perfEvents_6_T | _perfEvents_25_T_2; // @[BitUtils.scala 36:26]
  wire  _addr_11_mask_11_T_10 = cfgs__12_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_11_mask_11_T_12 = cfgs__11_l | cfgs__12_l & _addr_11_mask_11_T_10; // @[PMP.scala 61:51]
  wire  _addr_11_mask_11_T_13 = ~_addr_11_mask_11_T_12; // @[PMP.scala 251:17]
  wire [63:0] _addr_11_T_17 = _addr_11_mask_11_T_13 ? wdata : {{30'd0}, addr_1_11}; // @[PMP.scala 252:8]
  wire [63:0] _GEN_385 = _T_269 & addr_4 == 12'h3bb ? _addr_11_T_17 : {{30'd0}, addr_1_11}; // @[PMP.scala 292:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_19_T_2 = perfEvents_19 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_19_T_3 = _perfEvents_6_T | _perfEvents_19_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_429 = _T_269 & addr_4 == 12'h142 ? wdata : scause; // @[CSR.scala 490:23 RegMap.scala 52:{72,76}]
  wire [63:0] _perfEvents_0_T_2 = perfEvents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 36:37]
  wire [63:0] _perfEvents_0_T_3 = _perfEvents_6_T | _perfEvents_0_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _GEN_432 = _T_269 & addr_4 == 12'h5d2 ? wdata : REG_10; // @[RegMap.scala 52:{72,76} CSR.scala 744:20]
  wire [63:0] _rdataFix_T_4 = _rdata_T_445 ? mipReg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataFix_T_1 = mipReg & sieMask; // @[RegMap.scala 50:93]
  wire [63:0] _rdataFix_T_5 = _rdata_T_386 ? _rdataFix_T_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] rdataFix = _rdataFix_T_4 | _rdataFix_T_5; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T = rdataFix | io_in_bits_src_0; // @[CSR.scala 812:33]
  wire [63:0] _wdataFix_T_2 = rdataFix & _wdata_T_1; // @[CSR.scala 813:33]
  wire [63:0] _wdataFix_T_3 = rdataFix | csri; // @[CSR.scala 815:33]
  wire [63:0] _wdataFix_T_5 = rdataFix & _wdata_T_4; // @[CSR.scala 816:33]
  wire [63:0] _wdataFix_T_13 = _wdata_T_7 ? _wdataFix_T : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_14 = _wdata_T_8 ? _wdataFix_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_16 = _wdata_T_10 ? _wdataFix_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_17 = _wdata_T_11 ? _wdataFix_T_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_18 = _wdata_T_12 | _wdataFix_T_13; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_19 = _wdataFix_T_18 | _wdataFix_T_14; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_20 = _wdataFix_T_19 | _wdata_T_15; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_21 = _wdataFix_T_20 | _wdataFix_T_16; // @[Mux.scala 27:73]
  wire [63:0] wdataFix = _wdataFix_T_21 | _wdataFix_T_17; // @[Mux.scala 27:73]
  wire [63:0] _mipReg_T = wdataFix & 64'h222; // @[BitUtils.scala 36:14]
  wire [63:0] _mipReg_T_2 = mipReg & 64'hfffffffffffffddd; // @[BitUtils.scala 36:37]
  wire [63:0] _mipReg_T_3 = _mipReg_T | _mipReg_T_2; // @[BitUtils.scala 36:26]
  wire [63:0] _mipReg_T_4 = wdataFix & 64'h2; // @[BitUtils.scala 36:14]
  wire [63:0] _mipReg_T_6 = mipReg & 64'hfffffffffffffffd; // @[BitUtils.scala 36:37]
  wire [63:0] _mipReg_T_7 = _mipReg_T_4 | _mipReg_T_6; // @[BitUtils.scala 36:26]
  reg  REG_21; // @[CSR.scala 820:16]
  reg [4:0] fcsr_REG; // @[CSR.scala 821:46]
  wire [4:0] fcsr_fcsrNew_1_fflags = fcsr_REG | fcsr[4:0]; // @[CSR.scala 584:36]
  wire [63:0] _fcsr_T_21 = {fcsr_fcsrOld_reserved,fcsr[7:5],fcsr_fcsrNew_1_fflags}; // @[CSR.scala 588:13]
  wire  csrw_dirty_fp_state = REG_21 | _GEN_288; // @[CSR.scala 582:25 820:42]
  reg  REG_22; // @[CSR.scala 824:39]
  wire [5:0] mstatus_lo_lo = {mstatusStruct_pie_s,mstatusStruct_pie_u,mstatusStruct_ie_m,mstatusStruct_ie_h,
    mstatusStruct_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 828:27]
  wire [16:0] mstatus_lo = {mstatusStruct_xs,2'h3,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo}; // @[CSR.scala 828:27]
  wire [5:0] mstatus_hi_lo = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum,
    mstatusStruct_mprv}; // @[CSR.scala 828:27]
  wire [63:0] _mstatus_T_8 = {1'h1,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl,
    mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo,mstatus_lo}; // @[CSR.scala 828:27]
  wire [63:0] _GEN_438 = csrw_dirty_fp_state | REG_22 ? _mstatus_T_8 : _GEN_284; // @[CSR.scala 824:61 828:13]
  wire  _T_712 = tdata1Phy_0[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_713 = tdata1Phy_0[6] & _perfcntPermitted_T | _T_712; // @[CSR.scala 836:42]
  wire  _T_733 = priviledgeMode == 2'h0; // @[CSR.scala 837:72]
  wire  _T_777 = tdata1Phy_1[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_778 = tdata1Phy_1[6] & _perfcntPermitted_T | _T_777; // @[CSR.scala 836:42]
  wire  _T_842 = tdata1Phy_2[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_843 = tdata1Phy_2[6] & _perfcntPermitted_T | _T_842; // @[CSR.scala 836:42]
  wire  _T_907 = tdata1Phy_3[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_908 = tdata1Phy_3[6] & _perfcntPermitted_T | _T_907; // @[CSR.scala 836:42]
  wire  _T_972 = tdata1Phy_4[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_973 = tdata1Phy_4[6] & _perfcntPermitted_T | _T_972; // @[CSR.scala 836:42]
  wire  _T_1037 = tdata1Phy_5[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_1038 = tdata1Phy_5[6] & _perfcntPermitted_T | _T_1037; // @[CSR.scala 836:42]
  wire  _T_1102 = tdata1Phy_6[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_1103 = tdata1Phy_6[6] & _perfcntPermitted_T | _T_1102; // @[CSR.scala 836:42]
  wire  _T_1167 = tdata1Phy_7[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_1168 = tdata1Phy_7[6] & _perfcntPermitted_T | _T_1167; // @[CSR.scala 836:42]
  wire  _T_1232 = tdata1Phy_8[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_1233 = tdata1Phy_8[6] & _perfcntPermitted_T | _T_1232; // @[CSR.scala 836:42]
  wire  _T_1297 = tdata1Phy_9[4] & _tvmNotPermit_T; // @[CSR.scala 837:14]
  wire  _T_1298 = tdata1Phy_9[6] & _perfcntPermitted_T | _T_1297; // @[CSR.scala 836:42]
  wire  _csrio_customCtrl_frontend_trigger_t_valid_T_3 = wen & (_T_408 | _T_300); // @[CSR.scala 839:60]
  reg  csrio_customCtrl_frontend_trigger_t_valid_REG; // @[CSR.scala 839:55]
  reg  csrio_customCtrl_mem_trigger_t_valid_REG; // @[CSR.scala 840:50]
  wire  _isEbreak_T_1 = io_in_bits_uop_ctrl_fuOpType == 7'h0; // @[CSR.scala 845:46]
  wire  isEbreak = _T_370 & io_in_bits_uop_ctrl_fuOpType == 7'h0; // @[CSR.scala 845:38]
  wire  isEcall = addr_4 == 12'h0 & _isEbreak_T_1; // @[CSR.scala 846:38]
  wire  isMret = _T_334 & _isEbreak_T_1; // @[CSR.scala 847:38]
  wire  isSret = addr_4 == 12'h102 & _isEbreak_T_1; // @[CSR.scala 848:38]
  wire  isUret = _T_438 & _isEbreak_T_1; // @[CSR.scala 849:38]
  wire  isDret = _T_412 & _isEbreak_T_1; // @[CSR.scala 850:38]
  wire  isWFI = io_in_bits_uop_ctrl_fuOpType == 7'h4; // @[CSR.scala 851:23]
  wire  _illegalMret_T = io_in_valid & isMret; // @[CSR.scala 857:27]
  wire  _illegalMret_T_1 = priviledgeMode < 2'h3; // @[CSR.scala 857:55]
  wire  illegalMret = io_in_valid & isMret & priviledgeMode < 2'h3; // @[CSR.scala 857:37]
  wire  _illegalSret_T = io_in_valid & isSret; // @[CSR.scala 858:27]
  wire  _illegalSret_T_1 = priviledgeMode < 2'h1; // @[CSR.scala 858:55]
  wire  illegalSret = io_in_valid & isSret & priviledgeMode < 2'h1; // @[CSR.scala 858:37]
  wire  illegalSModeSret = _illegalSret_T & _tvmNotPermit_T & mstatusStruct_tsr; // @[CSR.scala 859:70]
  wire  illegalWFI = io_in_valid & isWFI & _illegalMret_T_1 & mstatusStruct_tw; // @[CSR.scala 865:61]
  wire  _isIllegalAddr_T_1 = io_in_bits_uop_ctrl_fuOpType[1:0] != 2'h0; // @[package.scala 199:47]
  wire  _isIllegalAddr_illegalAddr_T_1 = _rdata_T_370 ? 1'h0 : 1'h1; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_3 = _rdata_T_400 ? 1'h0 : _isIllegalAddr_illegalAddr_T_1; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_5 = _rdata_T_436 ? 1'h0 : _isIllegalAddr_illegalAddr_T_3; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_7 = _rdata_T_392 ? 1'h0 : _isIllegalAddr_illegalAddr_T_5; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_9 = _rdata_T_378 ? 1'h0 : _isIllegalAddr_illegalAddr_T_7; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_11 = _rdata_T_358 ? 1'h0 : _isIllegalAddr_illegalAddr_T_9; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_13 = _rdata_T_476 ? 1'h0 : _isIllegalAddr_illegalAddr_T_11; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_15 = _rdata_T_348 ? 1'h0 : _isIllegalAddr_illegalAddr_T_13; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_17 = _rdata_T_362 ? 1'h0 : _isIllegalAddr_illegalAddr_T_15; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_19 = _rdata_T_488 ? 1'h0 : _isIllegalAddr_illegalAddr_T_17; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_21 = _rdata_T_424 ? 1'h0 : _isIllegalAddr_illegalAddr_T_19; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_23 = _rdata_T_386 ? 1'h0 : _isIllegalAddr_illegalAddr_T_21; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_25 = _rdata_T_339 ? 1'h0 : _isIllegalAddr_illegalAddr_T_23; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_27 = _rdata_T_432 ? 1'h0 : _isIllegalAddr_illegalAddr_T_25; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_29 = _rdata_T_426 ? 1'h0 : _isIllegalAddr_illegalAddr_T_27; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_31 = _rdata_T_356 ? 1'h0 : _isIllegalAddr_illegalAddr_T_29; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_33 = _rdata_T_457 ? 1'h0 : _isIllegalAddr_illegalAddr_T_31; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_35 = _rdata_T_409 ? 1'h0 : _isIllegalAddr_illegalAddr_T_33; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_37 = _rdata_T_403 ? 1'h0 : _isIllegalAddr_illegalAddr_T_35; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_39 = _rdata_T_368 ? 1'h0 : _isIllegalAddr_illegalAddr_T_37; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_41 = _rdata_T_469 ? 1'h0 : _isIllegalAddr_illegalAddr_T_39; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_43 = _rdata_T_489 ? 1'h0 : _isIllegalAddr_illegalAddr_T_41; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_45 = _rdata_T_415 ? 1'h0 : _isIllegalAddr_illegalAddr_T_43; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_47 = _rdata_T_401 ? 1'h0 : _isIllegalAddr_illegalAddr_T_45; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_49 = _rdata_T_364 ? 1'h0 : _isIllegalAddr_illegalAddr_T_47; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_51 = _rdata_T_481 ? 1'h0 : _isIllegalAddr_illegalAddr_T_49; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_53 = _rdata_T_451 ? 1'h0 : _isIllegalAddr_illegalAddr_T_51; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_55 = _rdata_T_331 ? 1'h0 : _isIllegalAddr_illegalAddr_T_53; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_57 = _rdata_T_372 ? 1'h0 : _isIllegalAddr_illegalAddr_T_55; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_59 = _rdata_T_422 ? 1'h0 : _isIllegalAddr_illegalAddr_T_57; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_61 = _rdata_T_441 ? 1'h0 : _isIllegalAddr_illegalAddr_T_59; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_63 = _rdata_T_459 ? 1'h0 : _isIllegalAddr_illegalAddr_T_61; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_65 = _rdata_T_341 ? 1'h0 : _isIllegalAddr_illegalAddr_T_63; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_67 = _rdata_T_381 ? 1'h0 : _isIllegalAddr_illegalAddr_T_65; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_69 = _rdata_T_423 ? 1'h0 : _isIllegalAddr_illegalAddr_T_67; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_71 = _rdata_T_354 ? 1'h0 : _isIllegalAddr_illegalAddr_T_69; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_73 = _rdata_T_477 ? 1'h0 : _isIllegalAddr_illegalAddr_T_71; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_75 = _rdata_T_408 ? 1'h0 : _isIllegalAddr_illegalAddr_T_73; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_77 = _rdata_T_379 ? 1'h0 : _isIllegalAddr_illegalAddr_T_75; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_79 = _rdata_T_365 ? 1'h0 : _isIllegalAddr_illegalAddr_T_77; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_81 = _rdata_T_487 ? 1'h0 : _isIllegalAddr_illegalAddr_T_79; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_83 = _rdata_T_444 ? 1'h0 : _isIllegalAddr_illegalAddr_T_81; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_85 = _rdata_T_406 ? 1'h0 : _isIllegalAddr_illegalAddr_T_83; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_87 = _rdata_T_376 ? 1'h0 : _isIllegalAddr_illegalAddr_T_85; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_89 = _rdata_T_410 ? 1'h0 : _isIllegalAddr_illegalAddr_T_87; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_91 = _rdata_T_433 ? 1'h0 : _isIllegalAddr_illegalAddr_T_89; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_93 = _rdata_T_482 ? 1'h0 : _isIllegalAddr_illegalAddr_T_91; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_95 = _rdata_T_346 ? 1'h0 : _isIllegalAddr_illegalAddr_T_93; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_97 = _rdata_T_385 ? 1'h0 : _isIllegalAddr_illegalAddr_T_95; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_99 = _rdata_T_417 ? 1'h0 : _isIllegalAddr_illegalAddr_T_97; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_101 = _rdata_T_467 ? 1'h0 : _isIllegalAddr_illegalAddr_T_99; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_103 = _rdata_T_473 ? 1'h0 : _isIllegalAddr_illegalAddr_T_101; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_105 = _rdata_T_363 ? 1'h0 : _isIllegalAddr_illegalAddr_T_103; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_107 = _rdata_T_475 ? 1'h0 : _isIllegalAddr_illegalAddr_T_105; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_109 = _rdata_T_445 ? 1'h0 : _isIllegalAddr_illegalAddr_T_107; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_111 = _rdata_T_485 ? 1'h0 : _isIllegalAddr_illegalAddr_T_109; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_113 = _rdata_T_345 ? 1'h0 : _isIllegalAddr_illegalAddr_T_111; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_115 = _rdata_T_440 ? 1'h0 : _isIllegalAddr_illegalAddr_T_113; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_117 = _rdata_T_342 ? 1'h0 : _isIllegalAddr_illegalAddr_T_115; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_119 = _rdata_T_462 ? 1'h0 : _isIllegalAddr_illegalAddr_T_117; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_121 = _rdata_T_416 ? 1'h0 : _isIllegalAddr_illegalAddr_T_119; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_123 = _rdata_T_388 ? 1'h0 : _isIllegalAddr_illegalAddr_T_121; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_125 = _rdata_T_353 ? 1'h0 : _isIllegalAddr_illegalAddr_T_123; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_127 = _rdata_T_474 ? 1'h0 : _isIllegalAddr_illegalAddr_T_125; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_129 = _rdata_T_450 ? 1'h0 : _isIllegalAddr_illegalAddr_T_127; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_131 = _rdata_T_377 ? 1'h0 : _isIllegalAddr_illegalAddr_T_129; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_133 = _rdata_T_402 ? 1'h0 : _isIllegalAddr_illegalAddr_T_131; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_135 = _rdata_T_446 ? 1'h0 : _isIllegalAddr_illegalAddr_T_133; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_137 = _rdata_T_484 ? 1'h0 : _isIllegalAddr_illegalAddr_T_135; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_139 = _rdata_T_367 ? 1'h0 : _isIllegalAddr_illegalAddr_T_137; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_141 = _rdata_T_375 ? 1'h0 : _isIllegalAddr_illegalAddr_T_139; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_143 = _rdata_T_411 ? 1'h0 : _isIllegalAddr_illegalAddr_T_141; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_145 = _rdata_T_431 ? 1'h0 : _isIllegalAddr_illegalAddr_T_143; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_147 = _rdata_T_442 ? 1'h0 : _isIllegalAddr_illegalAddr_T_145; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_149 = _rdata_T_483 ? 1'h0 : _isIllegalAddr_illegalAddr_T_147; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_151 = _rdata_T_430 ? 1'h0 : _isIllegalAddr_illegalAddr_T_149; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_153 = _rdata_T_347 ? 1'h0 : _isIllegalAddr_illegalAddr_T_151; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_155 = _rdata_T_460 ? 1'h0 : _isIllegalAddr_illegalAddr_T_153; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_157 = _rdata_T_435 ? 1'h0 : _isIllegalAddr_illegalAddr_T_155; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_159 = _rdata_T_395 ? 1'h0 : _isIllegalAddr_illegalAddr_T_157; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_161 = _rdata_T_355 ? 1'h0 : _isIllegalAddr_illegalAddr_T_159; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_163 = _rdata_T_479 ? 1'h0 : _isIllegalAddr_illegalAddr_T_161; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_165 = _rdata_T_461 ? 1'h0 : _isIllegalAddr_illegalAddr_T_163; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_167 = _rdata_T_351 ? 1'h0 : _isIllegalAddr_illegalAddr_T_165; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_169 = _rdata_T_407 ? 1'h0 : _isIllegalAddr_illegalAddr_T_167; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_171 = _rdata_T_448 ? 1'h0 : _isIllegalAddr_illegalAddr_T_169; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_173 = _rdata_T_454 ? 1'h0 : _isIllegalAddr_illegalAddr_T_171; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_175 = _rdata_T_337 ? 1'h0 : _isIllegalAddr_illegalAddr_T_173; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_177 = _rdata_T_380 ? 1'h0 : _isIllegalAddr_illegalAddr_T_175; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_179 = _rdata_T_412 ? 1'h0 : _isIllegalAddr_illegalAddr_T_177; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_181 = _rdata_T_361 ? 1'h0 : _isIllegalAddr_illegalAddr_T_179; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_183 = _rdata_T_491 ? 1'h0 : _isIllegalAddr_illegalAddr_T_181; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_185 = _rdata_T_466 ? 1'h0 : _isIllegalAddr_illegalAddr_T_183; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_187 = _rdata_T_418 ? 1'h0 : _isIllegalAddr_illegalAddr_T_185; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_189 = _rdata_T_393 ? 1'h0 : _isIllegalAddr_illegalAddr_T_187; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_191 = _rdata_T_357 ? 1'h0 : _isIllegalAddr_illegalAddr_T_189; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_193 = _rdata_T_480 ? 1'h0 : _isIllegalAddr_illegalAddr_T_191; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_195 = _rdata_T_437 ? 1'h0 : _isIllegalAddr_illegalAddr_T_193; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_197 = _rdata_T_338 ? 1'h0 : _isIllegalAddr_illegalAddr_T_195; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_199 = _rdata_T_429 ? 1'h0 : _isIllegalAddr_illegalAddr_T_197; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_201 = _rdata_T_389 ? 1'h0 : _isIllegalAddr_illegalAddr_T_199; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_203 = _rdata_T_343 ? 1'h0 : _isIllegalAddr_illegalAddr_T_201; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_205 = _rdata_T_333 ? 1'h0 : _isIllegalAddr_illegalAddr_T_203; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_207 = _rdata_T_471 ? 1'h0 : _isIllegalAddr_illegalAddr_T_205; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_209 = _rdata_T_382 ? 1'h0 : _isIllegalAddr_illegalAddr_T_207; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_211 = _rdata_T_420 ? 1'h0 : _isIllegalAddr_illegalAddr_T_209; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_213 = _rdata_T_391 ? 1'h0 : _isIllegalAddr_illegalAddr_T_211; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_215 = _rdata_T_336 ? 1'h0 : _isIllegalAddr_illegalAddr_T_213; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_217 = _rdata_T_399 ? 1'h0 : _isIllegalAddr_illegalAddr_T_215; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_219 = _rdata_T_478 ? 1'h0 : _isIllegalAddr_illegalAddr_T_217; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_221 = _rdata_T_352 ? 1'h0 : _isIllegalAddr_illegalAddr_T_219; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_223 = _rdata_T_425 ? 1'h0 : _isIllegalAddr_illegalAddr_T_221; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_225 = _rdata_T_468 ? 1'h0 : _isIllegalAddr_illegalAddr_T_223; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_227 = _rdata_T_332 ? 1'h0 : _isIllegalAddr_illegalAddr_T_225; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_229 = _rdata_T_404 ? 1'h0 : _isIllegalAddr_illegalAddr_T_227; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_231 = _rdata_T_414 ? 1'h0 : _isIllegalAddr_illegalAddr_T_229; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_233 = _rdata_T_458 ? 1'h0 : _isIllegalAddr_illegalAddr_T_231; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_235 = _rdata_T_340 ? 1'h0 : _isIllegalAddr_illegalAddr_T_233; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_237 = _rdata_T_374 ? 1'h0 : _isIllegalAddr_illegalAddr_T_235; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_239 = _rdata_T_405 ? 1'h0 : _isIllegalAddr_illegalAddr_T_237; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_241 = _rdata_T_369 ? 1'h0 : _isIllegalAddr_illegalAddr_T_239; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_243 = _rdata_T_470 ? 1'h0 : _isIllegalAddr_illegalAddr_T_241; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_245 = _rdata_T_464 ? 1'h0 : _isIllegalAddr_illegalAddr_T_243; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_247 = _rdata_T_438 ? 1'h0 : _isIllegalAddr_illegalAddr_T_245; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_249 = _rdata_T_398 ? 1'h0 : _isIllegalAddr_illegalAddr_T_247; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_251 = _rdata_T_360 ? 1'h0 : _isIllegalAddr_illegalAddr_T_249; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_253 = _rdata_T_373 ? 1'h0 : _isIllegalAddr_illegalAddr_T_251; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_255 = _rdata_T_439 ? 1'h0 : _isIllegalAddr_illegalAddr_T_253; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_257 = _rdata_T_455 ? 1'h0 : _isIllegalAddr_illegalAddr_T_255; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_259 = _rdata_T_350 ? 1'h0 : _isIllegalAddr_illegalAddr_T_257; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_261 = _rdata_T_384 ? 1'h0 : _isIllegalAddr_illegalAddr_T_259; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_263 = _rdata_T_447 ? 1'h0 : _isIllegalAddr_illegalAddr_T_261; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_265 = _rdata_T_330 ? 1'h0 : _isIllegalAddr_illegalAddr_T_263; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_267 = _rdata_T_463 ? 1'h0 : _isIllegalAddr_illegalAddr_T_265; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_269 = _rdata_T_421 ? 1'h0 : _isIllegalAddr_illegalAddr_T_267; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_271 = _rdata_T_349 ? 1'h0 : _isIllegalAddr_illegalAddr_T_269; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_273 = _rdata_T_383 ? 1'h0 : _isIllegalAddr_illegalAddr_T_271; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_275 = _rdata_T_413 ? 1'h0 : _isIllegalAddr_illegalAddr_T_273; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_277 = _rdata_T_456 ? 1'h0 : _isIllegalAddr_illegalAddr_T_275; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_279 = _rdata_T_359 ? 1'h0 : _isIllegalAddr_illegalAddr_T_277; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_281 = _rdata_T_394 ? 1'h0 : _isIllegalAddr_illegalAddr_T_279; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_283 = _rdata_T_449 ? 1'h0 : _isIllegalAddr_illegalAddr_T_281; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_285 = _rdata_T_490 ? 1'h0 : _isIllegalAddr_illegalAddr_T_283; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_287 = _rdata_T_366 ? 1'h0 : _isIllegalAddr_illegalAddr_T_285; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_289 = _rdata_T_492 ? 1'h0 : _isIllegalAddr_illegalAddr_T_287; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_291 = _rdata_T_434 ? 1'h0 : _isIllegalAddr_illegalAddr_T_289; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_293 = _rdata_T_396 ? 1'h0 : _isIllegalAddr_illegalAddr_T_291; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_295 = _rdata_T_335 ? 1'h0 : _isIllegalAddr_illegalAddr_T_293; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_297 = _rdata_T_452 ? 1'h0 : _isIllegalAddr_illegalAddr_T_295; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_299 = _rdata_T_419 ? 1'h0 : _isIllegalAddr_illegalAddr_T_297; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_301 = _rdata_T_387 ? 1'h0 : _isIllegalAddr_illegalAddr_T_299; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_303 = _rdata_T_390 ? 1'h0 : _isIllegalAddr_illegalAddr_T_301; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_305 = _rdata_T_428 ? 1'h0 : _isIllegalAddr_illegalAddr_T_303; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_307 = _rdata_T_453 ? 1'h0 : _isIllegalAddr_illegalAddr_T_305; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_309 = _rdata_T_344 ? 1'h0 : _isIllegalAddr_illegalAddr_T_307; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_311 = _rdata_T_397 ? 1'h0 : _isIllegalAddr_illegalAddr_T_309; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_313 = _rdata_T_443 ? 1'h0 : _isIllegalAddr_illegalAddr_T_311; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_315 = _rdata_T_486 ? 1'h0 : _isIllegalAddr_illegalAddr_T_313; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_317 = _rdata_T_371 ? 1'h0 : _isIllegalAddr_illegalAddr_T_315; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_319 = _rdata_T_334 ? 1'h0 : _isIllegalAddr_illegalAddr_T_317; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_321 = _rdata_T_465 ? 1'h0 : _isIllegalAddr_illegalAddr_T_319; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_323 = _rdata_T_472 ? 1'h0 : _isIllegalAddr_illegalAddr_T_321; // @[Mux.scala 81:58]
  wire  isIllegalAddr_illegalAddr = _rdata_T_427 ? 1'h0 : _isIllegalAddr_illegalAddr_T_323; // @[Mux.scala 81:58]
  wire  isIllegalAddr = io_in_valid & _isIllegalAddr_T_1 & isIllegalAddr_illegalAddr; // @[CSR.scala 868:59]
  wire  isIllegalAccess = wen & ~permitted; // @[CSR.scala 869:29]
  wire  isIllegalPrivOp = illegalMret | illegalSret | illegalSModeSret | illegalWFI; // @[CSR.scala 870:72]
  wire [1:0] _tlbBundle_priv_dmode_T_18 = mstatusStruct_mprv ? mstatusStruct_mpp : priviledgeMode; // @[CSR.scala 876:92]
  wire [1:0] tlbBundle_priv_dmode = debugMode & dcsrData_mprven ? 2'h3 : _tlbBundle_priv_dmode_T_18; // @[CSR.scala 876:30]
  wire  resetSatp = _accessPermitted_T & wen; // @[CSR.scala 880:35]
  wire  _flushPipe_T_4 = ~isEbreak; // @[CSR.scala 881:77]
  wire  _flushPipe_T_5 = io_in_valid & _isEbreak_T_1 & ~isEcall & ~isEbreak; // @[CSR.scala 881:74]
  wire  mstatusNew_1_mprv = dcsrData_prv != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 891:{56,73}]
  wire [16:0] mstatus_lo_1 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo}; // @[CSR.scala 892:27]
  wire [5:0] mstatus_hi_lo_1 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_1_mprv}; // @[CSR.scala 892:27]
  wire [63:0] _mstatus_T_9 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl,
    mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_1,mstatus_lo_1}; // @[CSR.scala 892:27]
  wire [63:0] _GEN_440 = io_in_valid & isDret ? _mstatus_T_9 : _GEN_438; // @[CSR.scala 886:26 892:13]
  wire [1:0] _GEN_441 = io_in_valid & isDret ? dcsrData_prv : priviledgeMode; // @[CSR.scala 886:26 893:20 605:31]
  wire  _GEN_443 = io_in_valid & isDret | debugIntrEnable; // @[CSR.scala 886:26 896:21 226:32]
  wire  mstatusNew_2_mprv = mstatusStruct_mpp != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 908:{37,55}]
  wire [5:0] mstatus_lo_lo_2 = {mstatusStruct_pie_s,mstatusStruct_pie_u,mstatusStruct_pie_m,mstatusStruct_ie_h,
    mstatusStruct_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 909:27]
  wire [16:0] mstatus_lo_2 = {mstatusStruct_xs,mstatusStruct_fs,2'h0,mstatusStruct_hpp,mstatusStruct_spp,1'h1,
    mstatusStruct_pie_h,mstatus_lo_lo_2}; // @[CSR.scala 909:27]
  wire [5:0] mstatus_hi_lo_2 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_2_mprv}; // @[CSR.scala 909:27]
  wire [63:0] _mstatus_T_10 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_2,mstatus_lo_2}; // @[CSR.scala 909:27]
  wire [1:0] _GEN_446 = _illegalMret_T & ~illegalMret ? mstatusStruct_mpp : _GEN_441; // @[CSR.scala 901:42 905:20]
  wire [63:0] _GEN_447 = _illegalMret_T & ~illegalMret ? _mstatus_T_10 : _GEN_440; // @[CSR.scala 901:42 909:13]
  wire [1:0] _priviledgeMode_T = {1'h0,mstatusStruct_spp}; // @[Cat.scala 31:58]
  wire [5:0] mstatus_lo_lo_3 = {1'h1,mstatusStruct_pie_u,mstatusStruct_ie_m,mstatusStruct_ie_h,mstatusStruct_pie_s,
    mstatusStruct_ie_u}; // @[CSR.scala 921:27]
  wire [16:0] mstatus_lo_3 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,1'h0,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_3}; // @[CSR.scala 921:27]
  wire [1:0] _GEN_620 = {{1'd0}, mstatusStruct_spp}; // @[CSR.scala 922:26]
  wire  mstatusNew_3_mprv = _GEN_620 != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 922:{37,55}]
  wire [5:0] mstatus_hi_lo_3 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_3_mprv}; // @[CSR.scala 921:27]
  wire [63:0] _mstatus_T_11 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_3,mstatus_lo_3}; // @[CSR.scala 921:27]
  wire [1:0] _GEN_450 = _illegalSret_T & ~illegalSret & ~illegalSModeSret ? _priviledgeMode_T : _GEN_446; // @[CSR.scala 914:63 918:20]
  wire [5:0] mstatus_lo_lo_4 = {mstatusStruct_pie_s,1'h1,mstatusStruct_ie_m,mstatusStruct_ie_h,mstatusStruct_ie_s,
    mstatusStruct_pie_u}; // @[CSR.scala 934:27]
  wire [16:0] mstatus_lo_4 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_4}; // @[CSR.scala 934:27]
  wire [63:0] _mstatus_T_12 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo,mstatus_lo_4}; // @[CSR.scala 934:27]
  wire [1:0] _GEN_453 = io_in_valid & isUret ? 2'h0 : _GEN_450; // @[CSR.scala 927:26 932:20]
  wire  ebreakCauseException = _perfcntPermitted_T & dcsrData_ebreakm | _tvmNotPermit_T & dcsrData_ebreaks | _T_733 &
    dcsrData_ebreaku; // @[CSR.scala 941:127]
  wire [63:0] ideleg = mideleg & _GEN_612; // @[CSR.scala 959:26]
  wire  debugIntr = csrio_externalInterrupt_debug & debugIntrEnable; // @[CSR.scala 963:49]
  wire  disableInterrupt = debugMode | dcsrData_step & ~dcsrData_stepie; // @[CSR.scala 967:36]
  wire  _intrVecEnable_0_T_7 = _perfcntPermitted_T & mstatusStruct_ie_m | _illegalMret_T_1; // @[CSR.scala 961:56]
  wire  _intrVecEnable_0_T_8 = ideleg[0] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_0 = _intrVecEnable_0_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_1_T_8 = ideleg[1] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_1 = _intrVecEnable_1_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_2_T_8 = ideleg[2] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_2 = _intrVecEnable_2_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_3_T_8 = ideleg[3] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_3 = _intrVecEnable_3_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_4_T_8 = ideleg[4] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_4 = _intrVecEnable_4_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_5_T_8 = ideleg[5] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_5 = _intrVecEnable_5_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_6_T_8 = ideleg[6] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_6 = _intrVecEnable_6_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_7_T_8 = ideleg[7] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_7 = _intrVecEnable_7_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_8_T_8 = ideleg[8] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_8 = _intrVecEnable_8_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_9_T_8 = ideleg[9] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_9 = _intrVecEnable_9_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_10_T_8 = ideleg[10] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_10 = _intrVecEnable_10_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVecEnable_11_T_8 = ideleg[11] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 960:51]
  wire  intrVecEnable_11 = _intrVecEnable_11_T_8 & ~disableInterrupt; // @[CSR.scala 968:86]
  wire  _intrVec_T_1 = debugIntr & _csrio_customCtrl_singlestep_T; // @[CSR.scala 969:31]
  wire [11:0] _intrVec_T_4 = mie[11:0] & _T_83; // @[CSR.scala 969:57]
  wire [5:0] intrVec_lo_1 = {intrVecEnable_5,intrVecEnable_4,intrVecEnable_3,intrVecEnable_2,intrVecEnable_1,
    intrVecEnable_0}; // @[CSR.scala 969:86]
  wire [11:0] _intrVec_T_5 = {intrVecEnable_11,intrVecEnable_10,intrVecEnable_9,intrVecEnable_8,intrVecEnable_7,
    intrVecEnable_6,intrVec_lo_1}; // @[CSR.scala 969:86]
  wire [11:0] _intrVec_T_6 = _intrVec_T_4 & _intrVec_T_5; // @[CSR.scala 969:70]
  wire [12:0] intrVec = {_intrVec_T_1,_intrVec_T_6}; // @[Cat.scala 31:58]
  wire [2:0] _intrNO_T_1 = intrVec[4] ? 3'h4 : 3'h0; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_3 = intrVec[8] ? 4'h8 : {{1'd0}, _intrNO_T_1}; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_5 = intrVec[0] ? 4'h0 : _intrNO_T_3; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_7 = intrVec[5] ? 4'h5 : _intrNO_T_5; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_9 = intrVec[9] ? 4'h9 : _intrNO_T_7; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_11 = intrVec[1] ? 4'h1 : _intrNO_T_9; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_13 = intrVec[7] ? 4'h7 : _intrNO_T_11; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_15 = intrVec[11] ? 4'hb : _intrNO_T_13; // @[CSR.scala 983:69]
  wire [3:0] _intrNO_T_17 = intrVec[3] ? 4'h3 : _intrNO_T_15; // @[CSR.scala 983:69]
  wire [3:0] intrNO = intrVec[12] ? 4'hc : _intrNO_T_17; // @[CSR.scala 983:69]
  wire  raiseIntr = csrio_exception_valid & csrio_exception_bits_isInterrupt; // @[CSR.scala 984:41]
  wire  _ivmEnable_T_4 = sa_mode == 4'h8; // @[CSR.scala 985:86]
  wire  ivmEnable = _illegalMret_T_1 & sa_mode == 4'h8; // @[CSR.scala 985:48]
  wire  iexceptionPC_signBit = csrio_exception_bits_uop_cf_pc[38]; // @[BitUtils.scala 43:20]
  wire [24:0] _iexceptionPC_T_1 = iexceptionPC_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _iexceptionPC_T_2 = {_iexceptionPC_T_1,csrio_exception_bits_uop_cf_pc}; // @[Cat.scala 31:58]
  wire [63:0] iexceptionPC = ivmEnable ? _iexceptionPC_T_2 : {{25'd0}, csrio_exception_bits_uop_cf_pc}; // @[CSR.scala 986:25]
  wire  dvmEnable = tlbBundle_priv_dmode < 2'h3 & _ivmEnable_T_4; // @[CSR.scala 987:48]
  wire [63:0] dexceptionPC = dvmEnable ? _iexceptionPC_T_2 : {{25'd0}, csrio_exception_bits_uop_cf_pc}; // @[CSR.scala 988:25]
  wire  raiseDebugIntr = intrNO == 4'hc & raiseIntr; // @[CSR.scala 990:47]
  wire  raiseException = csrio_exception_valid & ~csrio_exception_bits_isInterrupt; // @[CSR.scala 993:46]
  wire  hasInstrPageFault = csrio_exception_bits_uop_cf_exceptionVec_12 & raiseException; // @[CSR.scala 994:84]
  wire  hasLoadPageFault = csrio_exception_bits_uop_cf_exceptionVec_13 & raiseException; // @[CSR.scala 995:82]
  wire  hasStorePageFault = csrio_exception_bits_uop_cf_exceptionVec_15 & raiseException; // @[CSR.scala 996:84]
  wire  hasStoreAddrMisaligned = csrio_exception_bits_uop_cf_exceptionVec_6 & raiseException; // @[CSR.scala 997:94]
  wire  hasLoadAddrMisaligned = csrio_exception_bits_uop_cf_exceptionVec_4 & raiseException; // @[CSR.scala 998:92]
  wire  hasInstrAccessFault = csrio_exception_bits_uop_cf_exceptionVec_1 & raiseException; // @[CSR.scala 999:88]
  wire  hasLoadAccessFault = csrio_exception_bits_uop_cf_exceptionVec_5 & raiseException; // @[CSR.scala 1000:86]
  wire  hasStoreAccessFault = csrio_exception_bits_uop_cf_exceptionVec_7 & raiseException; // @[CSR.scala 1001:88]
  wire  hasbreakPoint = csrio_exception_bits_uop_cf_exceptionVec_3 & raiseException; // @[CSR.scala 1002:76]
  wire  hasSingleStep = csrio_exception_bits_uop_ctrl_singleStep & raiseException; // @[CSR.scala 1003:64]
  wire  _hasTriggerHit_T_2 = csrio_exception_bits_uop_cf_trigger_frontendHit_0 |
    csrio_exception_bits_uop_cf_trigger_frontendHit_1 | csrio_exception_bits_uop_cf_trigger_frontendHit_2 |
    csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[Bundle.scala 582:45]
  wire  _hasTriggerHit_T_7 = csrio_exception_bits_uop_cf_trigger_backendHit_0 |
    csrio_exception_bits_uop_cf_trigger_backendHit_1 | csrio_exception_bits_uop_cf_trigger_backendHit_2 |
    csrio_exception_bits_uop_cf_trigger_backendHit_3 | csrio_exception_bits_uop_cf_trigger_backendHit_4 |
    csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[Bundle.scala 583:43]
  wire  _hasTriggerHit_T_8 = _hasTriggerHit_T_2 | _hasTriggerHit_T_7; // @[Bundle.scala 584:28]
  wire  hasTriggerHit = _hasTriggerHit_T_8 & raiseException; // @[CSR.scala 1004:65]
  wire [2:0] _regularExceptionNO_T = csrio_exception_bits_uop_cf_exceptionVec_4 ? 3'h4 : 3'h0; // @[CSR.scala 1011:92]
  wire [2:0] _regularExceptionNO_T_1 = csrio_exception_bits_uop_cf_exceptionVec_6 ? 3'h6 : _regularExceptionNO_T; // @[CSR.scala 1011:92]
  wire [2:0] _regularExceptionNO_T_2 = csrio_exception_bits_uop_cf_exceptionVec_5 ? 3'h5 : _regularExceptionNO_T_1; // @[CSR.scala 1011:92]
  wire [2:0] _regularExceptionNO_T_3 = csrio_exception_bits_uop_cf_exceptionVec_7 ? 3'h7 : _regularExceptionNO_T_2; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_4 = csrio_exception_bits_uop_cf_exceptionVec_13 ? 4'hd : {{1'd0},
    _regularExceptionNO_T_3}; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_5 = csrio_exception_bits_uop_cf_exceptionVec_15 ? 4'hf : _regularExceptionNO_T_4; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_6 = csrio_exception_bits_uop_cf_exceptionVec_8 ? 4'h8 : _regularExceptionNO_T_5; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_7 = csrio_exception_bits_uop_cf_exceptionVec_9 ? 4'h9 : _regularExceptionNO_T_6; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_8 = csrio_exception_bits_uop_cf_exceptionVec_11 ? 4'hb : _regularExceptionNO_T_7; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_9 = csrio_exception_bits_uop_cf_exceptionVec_0 ? 4'h0 : _regularExceptionNO_T_8; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_10 = csrio_exception_bits_uop_cf_exceptionVec_2 ? 4'h2 : _regularExceptionNO_T_9; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_11 = csrio_exception_bits_uop_cf_exceptionVec_1 ? 4'h1 : _regularExceptionNO_T_10; // @[CSR.scala 1011:92]
  wire [3:0] _regularExceptionNO_T_12 = csrio_exception_bits_uop_cf_exceptionVec_12 ? 4'hc : _regularExceptionNO_T_11; // @[CSR.scala 1011:92]
  wire [3:0] regularExceptionNO = csrio_exception_bits_uop_cf_exceptionVec_3 ? 4'h3 : _regularExceptionNO_T_12; // @[CSR.scala 1011:92]
  wire [3:0] exceptionNO = hasSingleStep | hasTriggerHit ? 4'h3 : regularExceptionNO; // @[CSR.scala 1012:24]
  wire [63:0] _causeNO_T = {raiseIntr, 63'h0}; // @[CSR.scala 1013:28]
  wire [3:0] _causeNO_T_1 = raiseIntr ? intrNO : exceptionNO; // @[CSR.scala 1013:53]
  wire [63:0] _GEN_622 = {{60'd0}, _causeNO_T_1}; // @[CSR.scala 1013:48]
  wire [63:0] causeNO = _causeNO_T | _GEN_622; // @[CSR.scala 1013:48]
  wire  raiseDebugExceptionIntr = _csrio_customCtrl_singlestep_T & (hasbreakPoint | raiseDebugIntr | hasSingleStep |
    hasTriggerHit & triggerAction); // @[CSR.scala 1017:44]
  wire  ebreakEnterParkLoop = debugMode & csrio_exception_valid; // @[CSR.scala 1018:39]
  wire  memExceptionAddr_signBit = csrio_memExceptionVAddr[38]; // @[BitUtils.scala 43:20]
  wire [24:0] _memExceptionAddr_T_1 = memExceptionAddr_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] memExceptionAddr = {_memExceptionAddr_T_1,csrio_memExceptionVAddr}; // @[Cat.scala 31:58]
  wire [7:0] _updateTval_T = {hasStoreAddrMisaligned,hasLoadAddrMisaligned,hasStoreAccessFault,hasLoadAccessFault,
    hasInstrAccessFault,hasStorePageFault,hasLoadPageFault,hasInstrPageFault}; // @[CSR.scala 1044:6]
  wire  updateTval = |_updateTval_T; // @[CSR.scala 1044:13]
  reg  REG_23; // @[CSR.scala 1045:24]
  reg  REG_24; // @[CSR.scala 1045:16]
  wire  _tval_T = hasInstrPageFault | hasInstrAccessFault; // @[CSR.scala 1047:33]
  reg  tval_REG; // @[CSR.scala 1047:14]
  wire [38:0] _tval_T_2 = csrio_exception_bits_uop_cf_pc + 39'h2; // @[CSR.scala 1050:48]
  wire  tval_signBit = _tval_T_2[38]; // @[BitUtils.scala 43:20]
  wire [24:0] _tval_T_4 = tval_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _tval_T_5 = {_tval_T_4,_tval_T_2}; // @[Cat.scala 31:58]
  reg [63:0] tval_REG_1; // @[CSR.scala 1048:14]
  reg [63:0] tval; // @[CSR.scala 1046:25]
  reg  REG_25; // @[CSR.scala 1055:18]
  wire [63:0] _GEN_456 = REG_25 ? tval : _GEN_335; // @[CSR.scala 1055:46 1056:13]
  wire [63:0] _GEN_457 = REG_25 ? _GEN_275 : tval; // @[CSR.scala 1055:46 1058:13]
  wire [63:0] _GEN_458 = REG_24 ? _GEN_456 : _GEN_335; // @[CSR.scala 1045:39]
  wire [63:0] _GEN_459 = REG_24 ? _GEN_457 : _GEN_275; // @[CSR.scala 1045:39]
  wire [29:0] debugTrapTarget = _flushPipe_T_4 & debugMode ? 30'h38020808 : 30'h38020800; // @[CSR.scala 1062:28]
  wire [63:0] deleg = raiseIntr ? mideleg : medeleg; // @[CSR.scala 1063:18]
  wire [63:0] _delegS_T_1 = deleg >> causeNO[3:0]; // @[CSR.scala 1065:21]
  wire  delegS = _delegS_T_1[0] & _illegalMret_T_1; // @[CSR.scala 1065:36]
  wire  clearTval = ~updateTval | raiseIntr; // @[CSR.scala 1066:31]
  reg  isXRetFlag; // @[CSR.scala 1070:27]
  wire  _GEN_460 = _flushPipe_T_5 | isXRetFlag; // @[CSR.scala 1073:23 1074:16 1070:27]
  reg [38:0] retTargetReg; // @[Reg.scala 16:16]
  wire [63:0] tvec = delegS ? stvec : mtvec; // @[CSR.scala 1079:17]
  wire [36:0] tvecBase = tvec[38:2]; // @[CSR.scala 1080:22]
  wire [3:0] _csrio_trapTarget_T_4 = tvec[0] & raiseIntr ? causeNO[3:0] : 4'h0; // @[CSR.scala 1091:25]
  wire [36:0] _GEN_623 = {{33'd0}, _csrio_trapTarget_T_4}; // @[CSR.scala 1091:20]
  wire [36:0] _csrio_trapTarget_T_6 = tvecBase + _GEN_623; // @[CSR.scala 1091:20]
  wire [38:0] _csrio_trapTarget_T_7 = {_csrio_trapTarget_T_6,2'h0}; // @[Cat.scala 31:58]
  wire  _csrio_trapTarget_T_10 = isXRetFlag | csrio_exception_valid; // @[CSR.scala 1092:18]
  reg [38:0] csrio_trapTarget_r; // @[Reg.scala 16:16]
  wire [2:0] _dcsrNew_cause_T = hasbreakPoint ? 3'h1 : 3'h4; // @[CSR.scala 1113:53]
  wire [2:0] _dcsrNew_cause_T_1 = hasTriggerHit ? 3'h2 : _dcsrNew_cause_T; // @[CSR.scala 1113:29]
  wire  _GEN_464 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T | debugMode; // @[CSR.scala 1109:67 1111:22]
  wire [2:0] _GEN_466 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? _dcsrNew_cause_T_1 :
    dcsrData_cause; // @[CSR.scala 1109:67 1113:23]
  wire [1:0] _GEN_467 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? priviledgeMode : dcsrData_prv
    ; // @[CSR.scala 1109:67 1114:21]
  wire [1:0] _GEN_468 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? 2'h3 : _GEN_453; // @[CSR.scala 1109:67 1115:24]
  wire  _GEN_469 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 1109:67 1116:25]
  wire  _GEN_470 = raiseDebugIntr | _GEN_464; // @[CSR.scala 1101:29 1102:22]
  wire  _GEN_471 = raiseDebugIntr ? 1'h0 : _GEN_469; // @[CSR.scala 1101:29 1103:25]
  wire [2:0] _GEN_473 = raiseDebugIntr ? 3'h3 : _GEN_466; // @[CSR.scala 1101:29 1105:23]
  wire [1:0] _GEN_474 = raiseDebugIntr ? priviledgeMode : _GEN_467; // @[CSR.scala 1101:29 1106:21]
  wire [1:0] dcsrNew_1_prv = raiseDebugExceptionIntr ? _GEN_474 : dcsrData_prv; // @[CSR.scala 1100:36]
  wire [2:0] dcsrNew_1_cause = raiseDebugExceptionIntr ? _GEN_473 : dcsrData_cause; // @[CSR.scala 1100:36]
  wire [10:0] dcsr_lo = {dcsrData_stopcycle,dcsrData_stoptime,dcsrNew_1_cause,dcsrData_v,dcsrData_mprven,dcsrData_nmip,
    dcsrData_step,dcsrNew_1_prv}; // @[CSR.scala 1118:23]
  wire [31:0] _dcsr_T_4 = {dcsrData_xdebugver,dcsrData_zero4,dcsrData_zero3,dcsrData_ebreakm,dcsrData_ebreakh,
    dcsrData_ebreaks,dcsrData_ebreaku,dcsrData_stepie,dcsr_lo}; // @[CSR.scala 1118:23]
  wire [63:0] _sepc_T_5 = _tval_T ? iexceptionPC : dexceptionPC; // @[CSR.scala 1124:18]
  wire [63:0] _GEN_476 = clearTval ? 64'h0 : _GEN_459; // @[CSR.scala 1129:{24,32}]
  wire [63:0] _GEN_477 = clearTval ? 64'h0 : _GEN_458; // @[CSR.scala 1137:{24,32}]
  wire [63:0] _GEN_478 = delegS ? causeNO : _GEN_429; // @[CSR.scala 1122:25 1123:14]
  wire [63:0] _GEN_479 = delegS ? _sepc_T_5 : _GEN_126; // @[CSR.scala 1122:25 1124:12]
  wire [1:0] _GEN_480 = delegS ? priviledgeMode : {{1'd0}, mstatusStruct_spp}; // @[CSR.scala 1122:25 1125:22]
  wire  _GEN_481 = delegS ? mstatusStruct_ie_s : mstatusStruct_pie_s; // @[CSR.scala 1122:25 1126:24]
  wire  _GEN_482 = delegS ? 1'h0 : mstatusStruct_ie_s; // @[CSR.scala 1122:25 1127:23]
  wire [1:0] _GEN_483 = delegS ? 2'h1 : 2'h3; // @[CSR.scala 1122:25 1128:22 1136:22]
  wire [63:0] _GEN_485 = delegS ? _GEN_127 : causeNO; // @[CSR.scala 1122:25 1131:14]
  wire [63:0] _GEN_486 = delegS ? _GEN_332 : _sepc_T_5; // @[CSR.scala 1122:25 1132:12]
  wire [1:0] _GEN_487 = delegS ? mstatusStruct_mpp : priviledgeMode; // @[CSR.scala 1122:25 1133:22]
  wire  _GEN_488 = delegS ? mstatusStruct_pie_m : mstatusStruct_ie_m; // @[CSR.scala 1122:25 1134:24]
  wire  _GEN_489 = delegS & mstatusStruct_ie_m; // @[CSR.scala 1122:25 1135:23]
  wire [63:0] _GEN_490 = delegS ? _GEN_458 : _GEN_477; // @[CSR.scala 1122:25]
  wire [63:0] _GEN_492 = debugMode ? _GEN_126 : _GEN_479; // @[CSR.scala 1120:28]
  wire [1:0] _GEN_493 = debugMode ? {{1'd0}, mstatusStruct_spp} : _GEN_480; // @[CSR.scala 1120:28]
  wire  _GEN_494 = debugMode ? mstatusStruct_pie_s : _GEN_481; // @[CSR.scala 1120:28]
  wire  _GEN_495 = debugMode ? mstatusStruct_ie_s : _GEN_482; // @[CSR.scala 1120:28]
  wire [1:0] _GEN_500 = debugMode ? mstatusStruct_mpp : _GEN_487; // @[CSR.scala 1120:28]
  wire  _GEN_501 = debugMode ? mstatusStruct_pie_m : _GEN_488; // @[CSR.scala 1120:28]
  wire  _GEN_502 = debugMode ? mstatusStruct_ie_m : _GEN_489; // @[CSR.scala 1120:28]
  wire  mstatusNew_5_mprv = raiseDebugExceptionIntr ? _GEN_471 : mstatusStruct_mprv; // @[CSR.scala 1100:36]
  wire [63:0] _GEN_510 = raiseDebugExceptionIntr ? {{32'd0}, _dcsr_T_4} : _GEN_151; // @[CSR.scala 1100:36 1118:12]
  wire  _GEN_511 = raiseDebugExceptionIntr ? 1'h0 : _GEN_443; // @[CSR.scala 1100:36 1119:23]
  wire [1:0] _GEN_514 = raiseDebugExceptionIntr ? {{1'd0}, mstatusStruct_spp} : _GEN_493; // @[CSR.scala 1100:36]
  wire  mstatusNew_5_pie_s = raiseDebugExceptionIntr ? mstatusStruct_pie_s : _GEN_494; // @[CSR.scala 1100:36]
  wire  mstatusNew_5_ie_s = raiseDebugExceptionIntr ? mstatusStruct_ie_s : _GEN_495; // @[CSR.scala 1100:36]
  wire [1:0] mstatusNew_5_mpp = raiseDebugExceptionIntr ? mstatusStruct_mpp : _GEN_500; // @[CSR.scala 1100:36]
  wire  mstatusNew_5_pie_m = raiseDebugExceptionIntr ? mstatusStruct_pie_m : _GEN_501; // @[CSR.scala 1100:36]
  wire  mstatusNew_5_ie_m = raiseDebugExceptionIntr ? mstatusStruct_ie_m : _GEN_502; // @[CSR.scala 1100:36]
  wire [5:0] mstatus_lo_lo_5 = {mstatusNew_5_pie_s,mstatusStruct_pie_u,mstatusNew_5_ie_m,mstatusStruct_ie_h,
    mstatusNew_5_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 1139:27]
  wire  mstatusNew_5_spp = _GEN_514[0];
  wire [16:0] mstatus_lo_5 = {mstatusStruct_xs,mstatusStruct_fs,mstatusNew_5_mpp,mstatusStruct_hpp,mstatusNew_5_spp,
    mstatusNew_5_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_5}; // @[CSR.scala 1139:27]
  wire [5:0] mstatus_hi_lo_5 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_5_mprv}; // @[CSR.scala 1139:27]
  wire [63:0] _mstatus_T_13 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_5,mstatus_lo_5}; // @[CSR.scala 1139:27]
  wire [63:0] _GEN_526 = csrio_exception_valid ? _GEN_510 : _GEN_151; // @[CSR.scala 1094:29]
  wire  _GEN_527 = csrio_exception_valid ? _GEN_511 : _GEN_443; // @[CSR.scala 1094:29]
  wire  distributedUpdateValid = delayedUpdate0_delay_io_out_wvalid | delayedUpdate1_delay_io_out_wvalid; // @[CSR.scala 1152:55]
  wire [11:0] distributedUpdateAddr = delayedUpdate0_delay_io_out_wvalid ? delayedUpdate0_delay_io_out_waddr :
    delayedUpdate1_delay_io_out_waddr; // @[CSR.scala 1153:34]
  wire [63:0] _mepc_T_7 = {mepc[63:1],1'h0}; // @[Cat.scala 31:58]
  wire [63:0] _sepc_T_7 = {sepc[63:1],1'h0}; // @[Cat.scala 31:58]
  reg [63:0] difftest_io_intrNO_REG; // @[CSR.scala 1195:50]
  reg [63:0] difftest_io_intrNO_REG_1; // @[CSR.scala 1195:42]
  reg [63:0] difftest_io_intrNO_REG_2; // @[CSR.scala 1195:34]
  reg [63:0] difftest_io_cause_REG; // @[CSR.scala 1196:50]
  reg [63:0] difftest_io_cause_REG_1; // @[CSR.scala 1196:42]
  reg [63:0] difftest_io_cause_REG_2; // @[CSR.scala 1196:34]
  reg [63:0] difftest_io_exceptionPC_REG; // @[CSR.scala 1197:55]
  reg [63:0] difftest_io_exceptionPC_REG_1; // @[CSR.scala 1197:47]
  reg [63:0] difftest_io_exceptionPC_REG_2; // @[CSR.scala 1197:39]
  HPerfMonitor_1 hpm_hc ( // @[PerfCounterUtils.scala 252:21]
    .clock(hpm_hc_clock),
    .io_hpm_event_0(hpm_hc_io_hpm_event_0),
    .io_hpm_event_1(hpm_hc_io_hpm_event_1),
    .io_hpm_event_2(hpm_hc_io_hpm_event_2),
    .io_hpm_event_3(hpm_hc_io_hpm_event_3),
    .io_hpm_event_4(hpm_hc_io_hpm_event_4),
    .io_events_sets_0_value(hpm_hc_io_events_sets_0_value),
    .io_events_sets_1_value(hpm_hc_io_events_sets_1_value),
    .io_events_sets_2_value(hpm_hc_io_events_sets_2_value),
    .io_events_sets_3_value(hpm_hc_io_events_sets_3_value),
    .io_events_sets_4_value(hpm_hc_io_events_sets_4_value),
    .io_events_sets_5_value(hpm_hc_io_events_sets_5_value),
    .io_events_sets_6_value(hpm_hc_io_events_sets_6_value),
    .io_events_sets_7_value(hpm_hc_io_events_sets_7_value),
    .io_events_sets_8_value(hpm_hc_io_events_sets_8_value),
    .io_events_sets_9_value(hpm_hc_io_events_sets_9_value),
    .io_events_sets_10_value(hpm_hc_io_events_sets_10_value),
    .io_events_sets_11_value(hpm_hc_io_events_sets_11_value),
    .io_events_sets_12_value(hpm_hc_io_events_sets_12_value),
    .io_events_sets_13_value(hpm_hc_io_events_sets_13_value),
    .io_events_sets_14_value(hpm_hc_io_events_sets_14_value),
    .io_events_sets_15_value(hpm_hc_io_events_sets_15_value),
    .io_events_sets_16_value(hpm_hc_io_events_sets_16_value),
    .io_events_sets_17_value(hpm_hc_io_events_sets_17_value),
    .io_events_sets_18_value(hpm_hc_io_events_sets_18_value),
    .io_events_sets_19_value(hpm_hc_io_events_sets_19_value),
    .io_events_sets_20_value(hpm_hc_io_events_sets_20_value),
    .io_events_sets_21_value(hpm_hc_io_events_sets_21_value),
    .io_events_sets_22_value(hpm_hc_io_events_sets_22_value),
    .io_events_sets_23_value(hpm_hc_io_events_sets_23_value),
    .io_events_sets_24_value(hpm_hc_io_events_sets_24_value),
    .io_events_sets_25_value(hpm_hc_io_events_sets_25_value),
    .io_events_sets_26_value(hpm_hc_io_events_sets_26_value),
    .io_events_sets_27_value(hpm_hc_io_events_sets_27_value),
    .io_events_sets_28_value(hpm_hc_io_events_sets_28_value),
    .io_events_sets_29_value(hpm_hc_io_events_sets_29_value),
    .io_events_sets_30_value(hpm_hc_io_events_sets_30_value),
    .io_events_sets_31_value(hpm_hc_io_events_sets_31_value),
    .io_events_sets_32_value(hpm_hc_io_events_sets_32_value),
    .io_events_sets_33_value(hpm_hc_io_events_sets_33_value),
    .io_events_sets_34_value(hpm_hc_io_events_sets_34_value),
    .io_events_sets_35_value(hpm_hc_io_events_sets_35_value),
    .io_events_sets_36_value(hpm_hc_io_events_sets_36_value),
    .io_events_sets_37_value(hpm_hc_io_events_sets_37_value),
    .io_events_sets_38_value(hpm_hc_io_events_sets_38_value),
    .io_events_sets_39_value(hpm_hc_io_events_sets_39_value),
    .io_events_sets_40_value(hpm_hc_io_events_sets_40_value),
    .io_events_sets_41_value(hpm_hc_io_events_sets_41_value),
    .io_events_sets_42_value(hpm_hc_io_events_sets_42_value),
    .io_events_sets_43_value(hpm_hc_io_events_sets_43_value),
    .io_events_sets_44_value(hpm_hc_io_events_sets_44_value),
    .io_events_sets_45_value(hpm_hc_io_events_sets_45_value),
    .io_events_sets_46_value(hpm_hc_io_events_sets_46_value),
    .io_events_sets_47_value(hpm_hc_io_events_sets_47_value),
    .io_events_sets_48_value(hpm_hc_io_events_sets_48_value),
    .io_events_sets_49_value(hpm_hc_io_events_sets_49_value),
    .io_perf_0_value(hpm_hc_io_perf_0_value),
    .io_perf_1_value(hpm_hc_io_perf_1_value),
    .io_perf_2_value(hpm_hc_io_perf_2_value),
    .io_perf_3_value(hpm_hc_io_perf_3_value),
    .io_perf_4_value(hpm_hc_io_perf_4_value)
  );
  DelayN_19 delay ( // @[Hold.scala 94:23]
    .clock(delay_clock),
    .io_in(delay_io_in),
    .io_out(delay_io_out)
  );
  DelayN_20 delayedUpdate0_delay ( // @[Hold.scala 94:23]
    .clock(delayedUpdate0_delay_clock),
    .io_in_wvalid(delayedUpdate0_delay_io_in_wvalid),
    .io_in_waddr(delayedUpdate0_delay_io_in_waddr),
    .io_in_wdata(delayedUpdate0_delay_io_in_wdata),
    .io_out_wvalid(delayedUpdate0_delay_io_out_wvalid),
    .io_out_waddr(delayedUpdate0_delay_io_out_waddr),
    .io_out_wdata(delayedUpdate0_delay_io_out_wdata)
  );
  DelayN_20 delayedUpdate1_delay ( // @[Hold.scala 94:23]
    .clock(delayedUpdate1_delay_clock),
    .io_in_wvalid(delayedUpdate1_delay_io_in_wvalid),
    .io_in_waddr(delayedUpdate1_delay_io_in_waddr),
    .io_in_wdata(delayedUpdate1_delay_io_in_wdata),
    .io_out_wvalid(delayedUpdate1_delay_io_out_wvalid),
    .io_out_waddr(delayedUpdate1_delay_io_out_waddr),
    .io_out_wdata(delayedUpdate1_delay_io_out_wdata)
  );
  DifftestArchEvent difftest ( // @[CSR.scala 1192:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_intrNO(difftest_io_intrNO),
    .io_cause(difftest_io_cause),
    .io_exceptionPC(difftest_io_exceptionPC),
    .io_exceptionInst(difftest_io_exceptionInst)
  );
  DifftestCSRState difftest_1 ( // @[CSR.scala 1205:26]
    .io_clock(difftest_1_io_clock),
    .io_coreid(difftest_1_io_coreid),
    .io_priviledgeMode(difftest_1_io_priviledgeMode),
    .io_mstatus(difftest_1_io_mstatus),
    .io_sstatus(difftest_1_io_sstatus),
    .io_mepc(difftest_1_io_mepc),
    .io_sepc(difftest_1_io_sepc),
    .io_mtval(difftest_1_io_mtval),
    .io_stval(difftest_1_io_stval),
    .io_mtvec(difftest_1_io_mtvec),
    .io_stvec(difftest_1_io_stvec),
    .io_mcause(difftest_1_io_mcause),
    .io_scause(difftest_1_io_scause),
    .io_satp(difftest_1_io_satp),
    .io_mip(difftest_1_io_mip),
    .io_mie(difftest_1_io_mie),
    .io_mscratch(difftest_1_io_mscratch),
    .io_sscratch(difftest_1_io_sscratch),
    .io_mideleg(difftest_1_io_mideleg),
    .io_medeleg(difftest_1_io_medeleg)
  );
  DifftestDebugMode difftest_2 ( // @[CSR.scala 1229:26]
    .io_clock(difftest_2_io_clock),
    .io_coreid(difftest_2_io_coreid),
    .io_debugMode(difftest_2_io_debugMode),
    .io_dcsr(difftest_2_io_dcsr),
    .io_dpc(difftest_2_io_dpc),
    .io_dscratch0(difftest_2_io_dscratch0),
    .io_dscratch1(difftest_2_io_dscratch1)
  );
  assign io_out_valid = io_in_valid; // @[CSR.scala 939:16]
  assign io_out_bits_data = _rdata_T_816 | _rdata_T_655; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_exceptionVec_2 = isIllegalAddr | isIllegalAccess | isIllegalPrivOp; // @[CSR.scala 951:69]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_in_valid & isEbreak & (ebreakCauseException | debugMode); // @[CSR.scala 944:58]
  assign io_out_bits_uop_cf_exceptionVec_8 = _T_733 & io_in_valid & isEcall; // @[CSR.scala 947:70]
  assign io_out_bits_uop_cf_exceptionVec_9 = _tvmNotPermit_T & io_in_valid & isEcall; // @[CSR.scala 946:70]
  assign io_out_bits_uop_cf_exceptionVec_11 = _perfcntPermitted_T & io_in_valid & isEcall; // @[CSR.scala 945:70]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_isRVC = io_in_bits_uop_cf_pd_isRVC; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_brType = io_in_bits_uop_cf_pd_brType; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_isCall = io_in_bits_uop_cf_pd_isCall; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_isRet = io_in_bits_uop_cf_pd_isRet; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[CSR.scala 795:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[CSR.scala 795:19]
  assign io_out_bits_uop_ctrl_flushPipe = resetSatp | io_in_valid & _isEbreak_T_1 & ~isEcall & ~isEbreak; // @[CSR.scala 881:26]
  assign io_out_bits_uop_ctrl_imm = io_in_bits_uop_ctrl_imm; // @[CSR.scala 795:19]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[CSR.scala 795:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[CSR.scala 795:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[CSR.scala 795:19]
  assign csrio_isPerfCnt = addrInPerfCnt & io_in_valid & io_in_bits_uop_ctrl_fuOpType != 7'h0; // @[CSR.scala 775:45]
  assign csrio_fpu_frm = fcsr[7:5]; // @[CSR.scala 830:33]
  assign csrio_isXRet = isXRetFlag; // @[CSR.scala 1076:16]
  assign csrio_trapTarget = csrio_trapTarget_r; // @[CSR.scala 1084:20]
  assign csrio_interrupt = |intrVec; // @[CSR.scala 970:28]
  assign csrio_wfi_event = debugIntr | |_intrVec_T_4; // @[CSR.scala 976:32]
  assign csrio_tlb_satp_changed = sa_asid != tlbBundle_satp_changed_REG; // @[Hold.scala 73:10]
  assign csrio_tlb_satp_mode = satp[63:60]; // @[Bundle.scala 398:35]
  assign csrio_tlb_satp_asid = satp[59:44]; // @[Bundle.scala 398:35]
  assign csrio_tlb_satp_ppn = satp[43:0]; // @[Bundle.scala 398:35]
  assign csrio_tlb_priv_mxr = mstatus[19]; // @[CSR.scala 428:39]
  assign csrio_tlb_priv_sum = mstatus[18]; // @[CSR.scala 428:39]
  assign csrio_tlb_priv_imode = priviledgeMode; // @[CSR.scala 552:23 875:24]
  assign csrio_tlb_priv_dmode = debugMode & dcsrData_mprven ? 2'h3 : _tlbBundle_priv_dmode_T_18; // @[CSR.scala 876:30]
  assign csrio_disableSfence = priviledgeMode == 2'h1 & mstatusStruct_tvm; // @[CSR.scala 781:48]
  assign csrio_customCtrl_l1I_pf_enable = spfctl[0]; // @[CSR.scala 509:43]
  assign csrio_customCtrl_lvpred_disable = slvpredctl[0]; // @[CSR.scala 522:48]
  assign csrio_customCtrl_no_spec_load = slvpredctl[1]; // @[CSR.scala 523:46]
  assign csrio_customCtrl_storeset_wait_store = slvpredctl[2]; // @[CSR.scala 524:53]
  assign csrio_customCtrl_lvpred_timeout = slvpredctl[8:4]; // @[CSR.scala 526:48]
  assign csrio_customCtrl_bp_ctrl_ubtb_enable = sbpctl[0]; // @[CSR.scala 498:49]
  assign csrio_customCtrl_bp_ctrl_btb_enable = sbpctl[1]; // @[CSR.scala 499:49]
  assign csrio_customCtrl_bp_ctrl_tage_enable = sbpctl[3]; // @[CSR.scala 501:49]
  assign csrio_customCtrl_bp_ctrl_sc_enable = sbpctl[4]; // @[CSR.scala 502:49]
  assign csrio_customCtrl_bp_ctrl_ras_enable = sbpctl[5]; // @[CSR.scala 503:49]
  assign csrio_customCtrl_sbuffer_threshold = smblockctl[3:0]; // @[CSR.scala 536:51]
  assign csrio_customCtrl_ldld_vio_check_enable = smblockctl[4]; // @[CSR.scala 538:55]
  assign csrio_customCtrl_soft_prefetch_enable = smblockctl[5]; // @[CSR.scala 539:54]
  assign csrio_customCtrl_cache_error_enable = smblockctl[6]; // @[CSR.scala 540:52]
  assign csrio_customCtrl_svinval_enable = srnctl[1]; // @[CSR.scala 550:44]
  assign csrio_customCtrl_distribute_csr_wvalid = wen & permitted; // @[CSR.scala 800:50]
  assign csrio_customCtrl_distribute_csr_waddr = io_in_bits_uop_ctrl_imm[11:0]; // @[CSR.scala 760:18]
  assign csrio_customCtrl_distribute_csr_wdata = _wdata_T_21 | _wdata_T_17; // @[Mux.scala 27:73]
  assign csrio_customCtrl_singlestep = dcsrData_step & ~debugMode; // @[CSR.scala 260:48]
  assign csrio_customCtrl_frontend_trigger_t_valid = csrio_customCtrl_frontend_trigger_t_valid_REG; // @[CSR.scala 839:45]
  assign csrio_customCtrl_frontend_trigger_t_bits_addr = 4'h8 == tselectPhy ? 2'h3 :
    _csrio_customCtrl_frontend_trigger_t_bits_addr_T_5; // @[Mux.scala 81:58]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType = tdata1Wire[8:7]; // @[CSR.scala 345:19 346:19]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_select = tdata1Wire[19]; // @[CSR.scala 369:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_timing = tdata1Wire[18]; // @[CSR.scala 369:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_chain = tdata1Wire[11]; // @[CSR.scala 369:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 284:{14,14}]
  assign csrio_customCtrl_mem_trigger_t_valid = csrio_customCtrl_mem_trigger_t_valid_REG; // @[CSR.scala 840:40]
  assign csrio_customCtrl_mem_trigger_t_bits_addr = 4'h9 == tselectPhy ? 3'h5 :
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_9; // @[Mux.scala 81:58]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_matchType = tdata1Wire[8:7]; // @[CSR.scala 345:19 346:19]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_select = tdata1Wire[19]; // @[CSR.scala 370:97]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_chain = tdata1Wire[11]; // @[CSR.scala 370:97]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 284:{14,14}]
  assign csrio_customCtrl_trigger_enable_0 = _T_713 | tdata1Phy_0[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_1 = _T_778 | tdata1Phy_1[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_2 = _T_843 | tdata1Phy_2[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_3 = _T_908 | tdata1Phy_3[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_4 = _T_973 | tdata1Phy_4[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_5 = _T_1038 | tdata1Phy_5[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_6 = _T_1103 | tdata1Phy_6[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_7 = _T_1168 | tdata1Phy_7[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_8 = _T_1233 | tdata1Phy_8[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign csrio_customCtrl_trigger_enable_9 = _T_1298 | tdata1Phy_9[3] & priviledgeMode == 2'h0; // @[CSR.scala 837:42]
  assign hpm_hc_clock = clock;
  assign hpm_hc_io_hpm_event_0 = csrevents_0; // @[PerfCounterUtils.scala 253:22]
  assign hpm_hc_io_hpm_event_1 = csrevents_1; // @[PerfCounterUtils.scala 253:22]
  assign hpm_hc_io_hpm_event_2 = csrevents_2; // @[PerfCounterUtils.scala 253:22]
  assign hpm_hc_io_hpm_event_3 = csrevents_3; // @[PerfCounterUtils.scala 253:22]
  assign hpm_hc_io_hpm_event_4 = csrevents_4; // @[PerfCounterUtils.scala 253:22]
  assign hpm_hc_io_events_sets_0_value = csrio_perf_perfEventsHc_0_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_1_value = csrio_perf_perfEventsHc_1_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_2_value = csrio_perf_perfEventsHc_2_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_3_value = csrio_perf_perfEventsHc_3_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_4_value = csrio_perf_perfEventsHc_4_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_5_value = csrio_perf_perfEventsHc_5_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_6_value = csrio_perf_perfEventsHc_6_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_7_value = csrio_perf_perfEventsHc_7_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_8_value = csrio_perf_perfEventsHc_8_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_9_value = csrio_perf_perfEventsHc_9_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_10_value = csrio_perf_perfEventsHc_10_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_11_value = csrio_perf_perfEventsHc_11_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_12_value = csrio_perf_perfEventsHc_12_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_13_value = csrio_perf_perfEventsHc_13_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_14_value = csrio_perf_perfEventsHc_14_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_15_value = csrio_perf_perfEventsHc_15_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_16_value = csrio_perf_perfEventsHc_16_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_17_value = csrio_perf_perfEventsHc_17_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_18_value = csrio_perf_perfEventsHc_18_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_19_value = csrio_perf_perfEventsHc_19_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_20_value = csrio_perf_perfEventsHc_20_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_21_value = csrio_perf_perfEventsHc_21_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_22_value = csrio_perf_perfEventsHc_22_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_23_value = csrio_perf_perfEventsHc_23_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_24_value = csrio_perf_perfEventsHc_24_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_25_value = csrio_perf_perfEventsHc_25_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_26_value = csrio_perf_perfEventsHc_26_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_27_value = csrio_perf_perfEventsHc_27_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_28_value = csrio_perf_perfEventsHc_28_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_29_value = csrio_perf_perfEventsHc_29_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_30_value = csrio_perf_perfEventsHc_30_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_31_value = csrio_perf_perfEventsHc_31_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_32_value = csrio_perf_perfEventsHc_32_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_33_value = csrio_perf_perfEventsHc_33_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_34_value = csrio_perf_perfEventsHc_34_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_35_value = csrio_perf_perfEventsHc_35_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_36_value = csrio_perf_perfEventsHc_36_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_37_value = csrio_perf_perfEventsHc_37_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_38_value = csrio_perf_perfEventsHc_38_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_39_value = csrio_perf_perfEventsHc_39_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_40_value = csrio_perf_perfEventsHc_40_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_41_value = csrio_perf_perfEventsHc_41_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_42_value = csrio_perf_perfEventsHc_42_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_43_value = csrio_perf_perfEventsHc_43_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_44_value = csrio_perf_perfEventsHc_44_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_45_value = csrio_perf_perfEventsHc_45_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_46_value = csrio_perf_perfEventsHc_46_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_47_value = csrio_perf_perfEventsHc_47_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_48_value = csrio_perf_perfEventsHc_48_value; // @[CSR.scala 621:23 623:18]
  assign hpm_hc_io_events_sets_49_value = csrio_perf_perfEventsHc_49_value; // @[CSR.scala 621:23 623:18]
  assign delay_clock = clock;
  assign delay_io_in = io_redirectIn_valid; // @[Hold.scala 95:17]
  assign delayedUpdate0_delay_clock = clock;
  assign delayedUpdate0_delay_io_in_wvalid = csrio_distributedUpdate_0_wvalid; // @[Hold.scala 95:17]
  assign delayedUpdate0_delay_io_in_waddr = csrio_distributedUpdate_0_waddr; // @[Hold.scala 95:17]
  assign delayedUpdate0_delay_io_in_wdata = csrio_distributedUpdate_0_wdata; // @[Hold.scala 95:17]
  assign delayedUpdate1_delay_clock = clock;
  assign delayedUpdate1_delay_io_in_wvalid = csrio_distributedUpdate_1_wvalid; // @[Hold.scala 95:17]
  assign delayedUpdate1_delay_io_in_waddr = csrio_distributedUpdate_1_waddr; // @[Hold.scala 95:17]
  assign delayedUpdate1_delay_io_in_wdata = csrio_distributedUpdate_1_wdata; // @[Hold.scala 95:17]
  assign difftest_io_clock = clock; // @[CSR.scala 1193:23]
  assign difftest_io_coreid = csrio_hartId; // @[CSR.scala 1194:24]
  assign difftest_io_intrNO = difftest_io_intrNO_REG_2[31:0]; // @[CSR.scala 1195:24]
  assign difftest_io_cause = difftest_io_cause_REG_2[31:0]; // @[CSR.scala 1196:24]
  assign difftest_io_exceptionPC = difftest_io_exceptionPC_REG_2; // @[CSR.scala 1197:29]
  assign difftest_io_exceptionInst = 32'h0;
  assign difftest_1_io_clock = clock; // @[CSR.scala 1206:23]
  assign difftest_1_io_coreid = csrio_hartId; // @[CSR.scala 1207:24]
  assign difftest_1_io_priviledgeMode = priviledgeMode; // @[CSR.scala 1208:32]
  assign difftest_1_io_mstatus = mstatus; // @[CSR.scala 1209:25]
  assign difftest_1_io_sstatus = mstatus & 64'h80000003000de122; // @[CSR.scala 1210:36]
  assign difftest_1_io_mepc = mepc; // @[CSR.scala 1211:22]
  assign difftest_1_io_sepc = sepc; // @[CSR.scala 1212:22]
  assign difftest_1_io_mtval = mtval; // @[CSR.scala 1213:22]
  assign difftest_1_io_stval = stval; // @[CSR.scala 1214:22]
  assign difftest_1_io_mtvec = mtvec; // @[CSR.scala 1215:23]
  assign difftest_1_io_stvec = stvec; // @[CSR.scala 1216:23]
  assign difftest_1_io_mcause = mcause; // @[CSR.scala 1217:24]
  assign difftest_1_io_scause = scause; // @[CSR.scala 1218:24]
  assign difftest_1_io_satp = satp; // @[CSR.scala 1219:22]
  assign difftest_1_io_mip = mipReg; // @[CSR.scala 1220:21]
  assign difftest_1_io_mie = mie; // @[CSR.scala 1221:21]
  assign difftest_1_io_mscratch = mscratch; // @[CSR.scala 1222:26]
  assign difftest_1_io_sscratch = sscratch; // @[CSR.scala 1223:26]
  assign difftest_1_io_mideleg = mideleg; // @[CSR.scala 1224:25]
  assign difftest_1_io_medeleg = medeleg; // @[CSR.scala 1225:25]
  assign difftest_2_io_clock = clock; // @[CSR.scala 1230:23]
  assign difftest_2_io_coreid = csrio_hartId; // @[CSR.scala 1231:24]
  assign difftest_2_io_debugMode = debugMode; // @[CSR.scala 1232:27]
  assign difftest_2_io_dcsr = {{32'd0}, dcsr}; // @[CSR.scala 1233:22]
  assign difftest_2_io_dpc = dpc; // @[CSR.scala 1234:21]
  assign difftest_2_io_dscratch0 = dscratch; // @[CSR.scala 1235:27]
  assign difftest_2_io_dscratch1 = dscratch1; // @[CSR.scala 1236:27]
  always @(posedge clock) begin
    if (reset) begin // @[CSR.scala 221:21]
      dcsr <= 32'h4000b000; // @[CSR.scala 221:21]
    end else begin
      dcsr <= _GEN_526[31:0];
    end
    if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        if (raiseDebugIntr) begin // @[CSR.scala 1101:29]
          dpc <= iexceptionPC; // @[CSR.scala 1104:13]
        end else if ((hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T) begin // @[CSR.scala 1109:67]
          dpc <= iexceptionPC; // @[CSR.scala 1112:13]
        end else begin
          dpc <= _GEN_271;
        end
      end else begin
        dpc <= _GEN_271;
      end
    end else begin
      dpc <= _GEN_271;
    end
    if (_T_269 & addr_4 == 12'h7b2) begin // @[RegMap.scala 52:72]
      dscratch <= wdata; // @[RegMap.scala 52:76]
    end
    if (_T_269 & addr_4 == 12'h7b3) begin // @[RegMap.scala 52:72]
      dscratch1 <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 225:26]
      debugMode <= 1'h0; // @[CSR.scala 225:26]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        debugMode <= _GEN_470;
      end
    end else if (io_in_valid & isDret) begin // @[CSR.scala 886:26]
      debugMode <= 1'h0; // @[CSR.scala 897:15]
    end
    debugIntrEnable <= reset | _GEN_527; // @[CSR.scala 226:{32,32}]
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_0 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h0 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_0 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_1 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h1 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_1 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_2 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h2 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_2 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_3 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h3 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_3 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_4 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h4 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_4 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_5 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h5 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_5 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_6 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h6 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_6 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_7 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h7 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_7 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_8 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h8 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_8 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 273:26]
      tdata1Phy_9 <= 64'h2000000000000000; // @[CSR.scala 273:26]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_408) begin // @[CSR.scala 322:64]
        if (4'h9 == tselectPhy) begin // @[CSR.scala 323:29]
          tdata1Phy_9 <= _tDummy1_tdata1Phy_T; // @[CSR.scala 323:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h0 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_0 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h1 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_1 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h2 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_2 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h3 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_3 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h4 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_4 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h5 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_5 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h6 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_6 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h7 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_7 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h8 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_8 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (_T_269 & addr_4 == 12'h7a2) begin // @[RegMap.scala 52:72]
      if (_wen_T_1 & _T_300) begin // @[CSR.scala 334:64]
        if (4'h9 == tselectPhy) begin // @[CSR.scala 335:29]
          tdata2Phy_9 <= wdata; // @[CSR.scala 335:29]
        end
      end
    end
    if (reset) begin // @[CSR.scala 275:27]
      tselectPhy <= 4'h0; // @[CSR.scala 275:27]
    end else if (_T_269 & addr_4 == 12'h7a0) begin // @[RegMap.scala 52:72]
      if (wdata < 64'ha) begin // @[CSR.scala 329:8]
        tselectPhy <= wdata[3:0];
      end
    end
    if (reset) begin // @[CSR.scala 281:28]
      tControlPhy <= 64'h0; // @[CSR.scala 281:28]
    end else if (_T_269 & addr_4 == 12'h7a5) begin // @[RegMap.scala 52:72]
      tControlPhy <= _tControlPhy_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 282:30]
      triggerAction <= 1'h0; // @[CSR.scala 282:30]
    end else if (_T_269 & addr_4 == 12'h7a1) begin // @[RegMap.scala 52:72]
      if (tDummy1_wdata_wire_action <= 4'h1) begin // @[CSR.scala 305:35]
        triggerAction <= tDummy1_tdata1_new_action[0]; // @[CSR.scala 306:21]
      end
    end
    if (reset) begin // @[CSR.scala 375:22]
      mtvec <= 64'h0; // @[CSR.scala 375:22]
    end else if (_T_269 & addr_4 == 12'h305) begin // @[RegMap.scala 52:72]
      mtvec <= _mtvec_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 376:27]
      mcounteren <= 64'h0; // @[CSR.scala 376:27]
    end else if (_T_269 & addr_4 == 12'h306) begin // @[RegMap.scala 52:72]
      mcounteren <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 377:23]
      mcause <= 64'h0; // @[CSR.scala 377:23]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        mcause <= _GEN_127;
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        mcause <= _GEN_127;
      end else begin
        mcause <= _GEN_485;
      end
    end else begin
      mcause <= _GEN_127;
    end
    if (reset) begin // @[CSR.scala 378:22]
      mtval <= 64'h0; // @[CSR.scala 378:22]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        mtval <= _GEN_458;
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        mtval <= _GEN_458;
      end else begin
        mtval <= _GEN_490;
      end
    end else begin
      mtval <= _GEN_458;
    end
    if (reset) begin // @[CSR.scala 1181:23]
      mepc <= _mepc_T_7; // @[CSR.scala 1182:10]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        mepc <= _GEN_332;
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        mepc <= _GEN_332;
      end else begin
        mepc <= _GEN_486;
      end
    end else begin
      mepc <= _GEN_332;
    end
    if (reset) begin // @[CSR.scala 383:20]
      mie <= 64'h0; // @[CSR.scala 383:20]
    end else if (_T_269 & addr_4 == 12'h304) begin // @[RegMap.scala 52:72]
      mie <= wdata; // @[RegMap.scala 52:76]
    end else if (_T_269 & addr_4 == 12'h104) begin // @[RegMap.scala 52:72]
      mie <= _mie_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 385:24]
      mipReg <= 64'h0; // @[CSR.scala 385:24]
    end else if (_T_269 & addr_4 == 12'h144) begin // @[RegMap.scala 52:72]
      mipReg <= _mipReg_T_7; // @[RegMap.scala 52:76]
    end else if (_T_269 & _addrInPerfCnt_T_7) begin // @[RegMap.scala 52:72]
      mipReg <= _mipReg_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 396:21]
      misa <= 64'h800000000014112d; // @[CSR.scala 396:21]
    end else if (_T_269 & addr_4 == 12'h301) begin // @[RegMap.scala 52:72]
      misa <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 404:24]
      mhartid <= {{56'd0}, csrio_hartId}; // @[CSR.scala 404:24]
    end
    if (reset) begin // @[CSR.scala 406:24]
      mstatus <= 64'ha00002000; // @[CSR.scala 406:24]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      mstatus <= _mstatus_T_13; // @[CSR.scala 1139:13]
    end else if (io_in_valid & isUret) begin // @[CSR.scala 927:26]
      mstatus <= _mstatus_T_12; // @[CSR.scala 934:13]
    end else if (_illegalSret_T & ~illegalSret & ~illegalSModeSret) begin // @[CSR.scala 914:63]
      mstatus <= _mstatus_T_11; // @[CSR.scala 921:13]
    end else begin
      mstatus <= _GEN_447;
    end
    if (reset) begin // @[CSR.scala 452:24]
      medeleg <= 64'h0; // @[CSR.scala 452:24]
    end else if (_T_269 & addr_4 == 12'h302) begin // @[RegMap.scala 52:72]
      medeleg <= _medeleg_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 453:24]
      mideleg <= 64'h0; // @[CSR.scala 453:24]
    end else if (_T_269 & addr_4 == 12'h303) begin // @[RegMap.scala 52:72]
      mideleg <= _mideleg_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 454:25]
      mscratch <= 64'h0; // @[CSR.scala 454:25]
    end else if (_T_269 & addr_4 == 12'h340) begin // @[RegMap.scala 52:72]
      mscratch <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[PMP.scala 290:28]
      cfgMerged__0 <= 64'h0; // @[PMP.scala 290:28]
    end else if (_T_269 & addr_4 == 12'h3a0) begin // @[RegMap.scala 52:72]
      cfgMerged__0 <= _cfgMerged_1_T_20; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[PMP.scala 290:28]
      cfgMerged__1 <= 64'h0; // @[PMP.scala 290:28]
    end else if (_T_269 & addr_4 == 12'h3a2) begin // @[RegMap.scala 52:72]
      cfgMerged__1 <= _cfgMerged_1_T_20; // @[RegMap.scala 52:76]
    end
    addr_1_0 <= _GEN_295[33:0];
    addr_1_1 <= _GEN_33[33:0];
    addr_1_2 <= _GEN_320[33:0];
    addr_1_3 <= _GEN_267[33:0];
    addr_1_4 <= _GEN_157[33:0];
    addr_1_5 <= _GEN_116[33:0];
    addr_1_6 <= _GEN_334[33:0];
    addr_1_7 <= _GEN_306[33:0];
    addr_1_8 <= _GEN_146[33:0];
    addr_1_9 <= _GEN_248[33:0];
    addr_1_10 <= _GEN_301[33:0];
    addr_1_11 <= _GEN_385[33:0];
    addr_1_12 <= _GEN_132[33:0];
    addr_1_13 <= _GEN_143[33:0];
    addr_1_14 <= _GEN_260[33:0];
    addr_1_15 <= _GEN_283[33:0];
    if (reset) begin // @[PMP.scala 290:28]
      cfgMerged_1_0 <= 64'hb0f0b0b0b0f0b00; // @[PMP.scala 290:28]
    end else if (_T_269 & addr_4 == 12'h7c0) begin // @[RegMap.scala 52:72]
      cfgMerged_1_0 <= _cfgMerged_1_T_20; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[PMP.scala 290:28]
      cfgMerged_1_1 <= 64'h7f1b080b080b08; // @[PMP.scala 290:28]
    end else if (_T_269 & addr_4 == 12'h7c2) begin // @[RegMap.scala 52:72]
      cfgMerged_1_1 <= _cfgMerged_1_T_20; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_0 <= 34'h0; // @[PMP.scala 292:23]
    end else begin
      addr_3_0 <= _GEN_114[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_1 <= 34'h4000000; // @[PMP.scala 292:23]
    end else begin
      addr_3_1 <= _GEN_277[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_2 <= 34'h8000000; // @[PMP.scala 292:23]
    end else begin
      addr_3_2 <= _GEN_327[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_3 <= 34'hc004000; // @[PMP.scala 292:23]
    end else begin
      addr_3_3 <= _GEN_23[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_4 <= 34'hc014000; // @[PMP.scala 292:23]
    end else begin
      addr_3_4 <= _GEN_251[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_5 <= 34'he008000; // @[PMP.scala 292:23]
    end else begin
      addr_3_5 <= _GEN_264[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_6 <= 34'he008400; // @[PMP.scala 292:23]
    end else begin
      addr_3_6 <= _GEN_315[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_7 <= 34'he008800; // @[PMP.scala 292:23]
    end else begin
      addr_3_7 <= _GEN_30[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_8 <= 34'he400000; // @[PMP.scala 292:23]
    end else begin
      addr_3_8 <= _GEN_141[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_9 <= 34'he400800; // @[PMP.scala 292:23]
    end else begin
      addr_3_9 <= _GEN_253[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_10 <= 34'he800000; // @[PMP.scala 292:23]
    end else begin
      addr_3_10 <= _GEN_135[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_11 <= 34'he800400; // @[PMP.scala 292:23]
    end else begin
      addr_3_11 <= _GEN_330[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_12 <= 34'hf000000; // @[PMP.scala 292:23]
    end else begin
      addr_3_12 <= _GEN_323[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_13 <= 34'hfffffff; // @[PMP.scala 292:23]
    end else begin
      addr_3_13 <= _GEN_292[33:0];
    end
    if (reset) begin // @[PMP.scala 292:23]
      addr_3_14 <= 34'h3ffffffff; // @[PMP.scala 292:23]
    end else begin
      addr_3_14 <= _GEN_202[33:0];
    end
    addr_3_15 <= _GEN_124[33:0];
    if (reset) begin // @[CSR.scala 476:22]
      stvec <= 64'h0; // @[CSR.scala 476:22]
    end else if (_T_269 & addr_4 == 12'h105) begin // @[RegMap.scala 52:72]
      stvec <= _stvec_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 481:90]
      satp <= 64'h0; // @[CSR.scala 481:90]
    end else if (_T_269 & _accessPermitted_T) begin // @[RegMap.scala 52:72]
      satp <= _satp_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 487:21]
      sepc <= 64'h0; // @[CSR.scala 487:21]
    end else if (reset) begin // @[CSR.scala 1181:23]
      sepc <= _sepc_T_7; // @[CSR.scala 1183:10]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        sepc <= _GEN_126;
      end else begin
        sepc <= _GEN_492;
      end
    end else begin
      sepc <= _GEN_126;
    end
    if (reset) begin // @[CSR.scala 490:23]
      scause <= 64'h0; // @[CSR.scala 490:23]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        scause <= _GEN_429;
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        scause <= _GEN_429;
      end else begin
        scause <= _GEN_478;
      end
    end else begin
      scause <= _GEN_429;
    end
    if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        stval <= _GEN_459;
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        stval <= _GEN_459;
      end else if (delegS) begin // @[CSR.scala 1122:25]
        stval <= _GEN_476;
      end else begin
        stval <= _GEN_459;
      end
    end else begin
      stval <= _GEN_459;
    end
    if (reset) begin // @[CSR.scala 492:25]
      sscratch <= 64'h0; // @[CSR.scala 492:25]
    end else if (_T_269 & addr_4 == 12'h140) begin // @[RegMap.scala 52:72]
      sscratch <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 493:27]
      scounteren <= 64'h0; // @[CSR.scala 493:27]
    end else if (_T_269 & addr_4 == 12'h106) begin // @[RegMap.scala 52:72]
      scounteren <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 497:23]
      sbpctl <= 64'h7f; // @[CSR.scala 497:23]
    end else if (_T_269 & addr_4 == 12'h5c0) begin // @[RegMap.scala 52:72]
      sbpctl <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 508:23]
      spfctl <= 64'h3; // @[CSR.scala 508:23]
    end else if (_T_269 & addr_4 == 12'h5c1) begin // @[RegMap.scala 52:72]
      spfctl <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 517:22]
      sdsid <= 64'h0; // @[CSR.scala 517:22]
    end else if (_T_269 & addr_4 == 12'h9c0) begin // @[RegMap.scala 52:72]
      sdsid <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 521:27]
      slvpredctl <= 64'h70; // @[CSR.scala 521:27]
    end else if (_T_269 & addr_4 == 12'h5c2) begin // @[RegMap.scala 52:72]
      slvpredctl <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 535:27]
      smblockctl <= 64'h77; // @[CSR.scala 535:27]
    end else if (_T_269 & addr_4 == 12'h5c3) begin // @[RegMap.scala 52:72]
      smblockctl <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 548:23]
      srnctl <= 64'h3; // @[CSR.scala 548:23]
    end else if (_T_269 & addr_4 == 12'h5c4) begin // @[RegMap.scala 52:72]
      srnctl <= wdata; // @[RegMap.scala 52:76]
    end
    tlbBundle_satp_changed_REG <= satp[59:44]; // @[Bundle.scala 398:35]
    if (reset) begin // @[CSR.scala 567:21]
      fcsr <= 64'h0; // @[CSR.scala 567:21]
    end else if (REG_21) begin // @[CSR.scala 820:42]
      fcsr <= _fcsr_T_21; // @[CSR.scala 821:10]
    end else if (_T_269 & addr_4 == 12'h3) begin // @[RegMap.scala 52:72]
      fcsr <= _fcsr_T_20; // @[RegMap.scala 52:76]
    end else if (_T_269 & addr_4 == 12'h2) begin // @[RegMap.scala 52:72]
      fcsr <= _fcsr_T_9; // @[RegMap.scala 52:76]
    end else begin
      fcsr <= _GEN_137;
    end
    if (reset) begin // @[CSR.scala 605:31]
      priviledgeMode <= 2'h3; // @[CSR.scala 605:31]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1094:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1100:36]
        if (raiseDebugIntr) begin // @[CSR.scala 1101:29]
          priviledgeMode <= 2'h3; // @[CSR.scala 1107:24]
        end else begin
          priviledgeMode <= _GEN_468;
        end
      end else if (debugMode) begin // @[CSR.scala 1120:28]
        priviledgeMode <= _GEN_453;
      end else begin
        priviledgeMode <= _GEN_483;
      end
    end else begin
      priviledgeMode <= _GEN_453;
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_0 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_0 <= |_perfEventscounten_0_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_1 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_1 <= |_perfEventscounten_1_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_2 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_2 <= |_perfEventscounten_2_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_3 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_3 <= |_perfEventscounten_3_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_4 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_4 <= |_perfEventscounten_4_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_5 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_5 <= |_perfEventscounten_5_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_6 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_6 <= |_perfEventscounten_6_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_7 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_7 <= |_perfEventscounten_7_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_8 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_8 <= |_perfEventscounten_8_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_9 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_9 <= |_perfEventscounten_9_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_10 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_10 <= |_perfEventscounten_10_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_11 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_11 <= |_perfEventscounten_11_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_12 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_12 <= |_perfEventscounten_12_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_13 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_13 <= |_perfEventscounten_13_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_14 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_14 <= |_perfEventscounten_14_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_15 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_15 <= |_perfEventscounten_15_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_16 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_16 <= |_perfEventscounten_16_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_17 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_17 <= |_perfEventscounten_17_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_18 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_18 <= |_perfEventscounten_18_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_19 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_19 <= |_perfEventscounten_19_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_20 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_20 <= |_perfEventscounten_20_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_21 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_21 <= |_perfEventscounten_21_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_22 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_22 <= |_perfEventscounten_22_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_23 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_23 <= |_perfEventscounten_23_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_24 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_24 <= |_perfEventscounten_24_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_25 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_25 <= |_perfEventscounten_25_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_26 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_26 <= |_perfEventscounten_26_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_27 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_27 <= |_perfEventscounten_27_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 611:34]
      perfEventscounten_28 <= 1'h0; // @[CSR.scala 611:34]
    end else begin
      perfEventscounten_28 <= |_perfEventscounten_28_T_4; // @[CSR.scala 618:26]
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_0 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb03) begin // @[RegMap.scala 52:72]
      perfCnts_0 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[3] | ~perfEventscounten_0)) begin // @[CSR.scala 638:23]
      perfCnts_0 <= _perfCnts_0_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_1 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb04) begin // @[RegMap.scala 52:72]
      perfCnts_1 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[4] | ~perfEventscounten_1)) begin // @[CSR.scala 638:23]
      perfCnts_1 <= _perfCnts_1_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_2 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb05) begin // @[RegMap.scala 52:72]
      perfCnts_2 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[5] | ~perfEventscounten_2)) begin // @[CSR.scala 638:23]
      perfCnts_2 <= _perfCnts_2_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_3 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb06) begin // @[RegMap.scala 52:72]
      perfCnts_3 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[6] | ~perfEventscounten_3)) begin // @[CSR.scala 638:23]
      perfCnts_3 <= _perfCnts_3_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_4 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb07) begin // @[RegMap.scala 52:72]
      perfCnts_4 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[7] | ~perfEventscounten_4)) begin // @[CSR.scala 638:23]
      perfCnts_4 <= _perfCnts_4_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_5 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb08) begin // @[RegMap.scala 52:72]
      perfCnts_5 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[8] | ~perfEventscounten_5)) begin // @[CSR.scala 638:23]
      perfCnts_5 <= _perfCnts_5_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_6 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb09) begin // @[RegMap.scala 52:72]
      perfCnts_6 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[9] | ~perfEventscounten_6)) begin // @[CSR.scala 638:23]
      perfCnts_6 <= _perfCnts_6_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_7 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0a) begin // @[RegMap.scala 52:72]
      perfCnts_7 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[10] | ~perfEventscounten_7)) begin // @[CSR.scala 638:23]
      perfCnts_7 <= _perfCnts_7_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_8 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0b) begin // @[RegMap.scala 52:72]
      perfCnts_8 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[11] | ~perfEventscounten_8)) begin // @[CSR.scala 638:23]
      perfCnts_8 <= _perfCnts_8_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_9 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0c) begin // @[RegMap.scala 52:72]
      perfCnts_9 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[12] | ~perfEventscounten_9)) begin // @[CSR.scala 638:23]
      perfCnts_9 <= _perfCnts_9_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_10 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0d) begin // @[RegMap.scala 52:72]
      perfCnts_10 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[13] | ~perfEventscounten_10)) begin // @[CSR.scala 638:23]
      perfCnts_10 <= _perfCnts_10_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_11 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0e) begin // @[RegMap.scala 52:72]
      perfCnts_11 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[14] | ~perfEventscounten_11)) begin // @[CSR.scala 638:23]
      perfCnts_11 <= _perfCnts_11_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_12 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb0f) begin // @[RegMap.scala 52:72]
      perfCnts_12 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[15] | ~perfEventscounten_12)) begin // @[CSR.scala 638:23]
      perfCnts_12 <= _perfCnts_12_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_13 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb10) begin // @[RegMap.scala 52:72]
      perfCnts_13 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[16] | ~perfEventscounten_13)) begin // @[CSR.scala 638:23]
      perfCnts_13 <= _perfCnts_13_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_14 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb11) begin // @[RegMap.scala 52:72]
      perfCnts_14 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[17] | ~perfEventscounten_14)) begin // @[CSR.scala 638:23]
      perfCnts_14 <= _perfCnts_14_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_15 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb12) begin // @[RegMap.scala 52:72]
      perfCnts_15 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[18] | ~perfEventscounten_15)) begin // @[CSR.scala 638:23]
      perfCnts_15 <= _perfCnts_15_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_16 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb13) begin // @[RegMap.scala 52:72]
      perfCnts_16 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[19] | ~perfEventscounten_16)) begin // @[CSR.scala 638:23]
      perfCnts_16 <= _perfCnts_16_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_17 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb14) begin // @[RegMap.scala 52:72]
      perfCnts_17 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[20] | ~perfEventscounten_17)) begin // @[CSR.scala 638:23]
      perfCnts_17 <= _perfCnts_17_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_18 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb15) begin // @[RegMap.scala 52:72]
      perfCnts_18 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[21] | ~perfEventscounten_18)) begin // @[CSR.scala 638:23]
      perfCnts_18 <= _perfCnts_18_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_19 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb16) begin // @[RegMap.scala 52:72]
      perfCnts_19 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[22] | ~perfEventscounten_19)) begin // @[CSR.scala 638:23]
      perfCnts_19 <= _perfCnts_19_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_20 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb17) begin // @[RegMap.scala 52:72]
      perfCnts_20 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[23] | ~perfEventscounten_20)) begin // @[CSR.scala 638:23]
      perfCnts_20 <= _perfCnts_20_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_21 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb18) begin // @[RegMap.scala 52:72]
      perfCnts_21 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[24] | ~perfEventscounten_21)) begin // @[CSR.scala 638:23]
      perfCnts_21 <= _perfCnts_21_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_22 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb19) begin // @[RegMap.scala 52:72]
      perfCnts_22 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[25] | ~perfEventscounten_22)) begin // @[CSR.scala 638:23]
      perfCnts_22 <= _perfCnts_22_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_23 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1a) begin // @[RegMap.scala 52:72]
      perfCnts_23 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[26] | ~perfEventscounten_23)) begin // @[CSR.scala 638:23]
      perfCnts_23 <= _perfCnts_23_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_24 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1b) begin // @[RegMap.scala 52:72]
      perfCnts_24 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[27] | ~perfEventscounten_24)) begin // @[CSR.scala 638:23]
      perfCnts_24 <= _perfCnts_24_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_25 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1c) begin // @[RegMap.scala 52:72]
      perfCnts_25 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[28] | ~perfEventscounten_25)) begin // @[CSR.scala 638:23]
      perfCnts_25 <= _perfCnts_25_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_26 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1d) begin // @[RegMap.scala 52:72]
      perfCnts_26 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[29] | ~perfEventscounten_26)) begin // @[CSR.scala 638:23]
      perfCnts_26 <= _perfCnts_26_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_27 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1e) begin // @[RegMap.scala 52:72]
      perfCnts_27 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[30] | ~perfEventscounten_27)) begin // @[CSR.scala 638:23]
      perfCnts_27 <= _perfCnts_27_T_4;
    end
    if (reset) begin // @[CSR.scala 612:49]
      perfCnts_28 <= 64'h0; // @[CSR.scala 612:49]
    end else if (_T_269 & addr_4 == 12'hb1f) begin // @[RegMap.scala 52:72]
      perfCnts_28 <= wdata; // @[RegMap.scala 52:76]
    end else if (!(mcountinhibit[31] | ~perfEventscounten_28)) begin // @[CSR.scala 638:23]
      perfCnts_28 <= _perfCnts_28_T_4;
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_0 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h323) begin // @[RegMap.scala 52:72]
      perfEvents_0 <= _perfEvents_0_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_1 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h324) begin // @[RegMap.scala 52:72]
      perfEvents_1 <= _perfEvents_1_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_2 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h325) begin // @[RegMap.scala 52:72]
      perfEvents_2 <= _perfEvents_2_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_3 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h326) begin // @[RegMap.scala 52:72]
      perfEvents_3 <= _perfEvents_3_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_4 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h327) begin // @[RegMap.scala 52:72]
      perfEvents_4 <= _perfEvents_4_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_5 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h328) begin // @[RegMap.scala 52:72]
      perfEvents_5 <= _perfEvents_5_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_6 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h329) begin // @[RegMap.scala 52:72]
      perfEvents_6 <= _perfEvents_6_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 613:40]
      perfEvents_7 <= 64'h0; // @[CSR.scala 613:40]
    end else if (_T_269 & addr_4 == 12'h32a) begin // @[RegMap.scala 52:72]
      perfEvents_7 <= _perfEvents_7_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_8 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h32b) begin // @[RegMap.scala 52:72]
      perfEvents_8 <= _perfEvents_8_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_9 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h32c) begin // @[RegMap.scala 52:72]
      perfEvents_9 <= _perfEvents_9_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_10 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h32d) begin // @[RegMap.scala 52:72]
      perfEvents_10 <= _perfEvents_10_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_11 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h32e) begin // @[RegMap.scala 52:72]
      perfEvents_11 <= _perfEvents_11_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_12 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h32f) begin // @[RegMap.scala 52:72]
      perfEvents_12 <= _perfEvents_12_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_13 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h330) begin // @[RegMap.scala 52:72]
      perfEvents_13 <= _perfEvents_13_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_14 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h331) begin // @[RegMap.scala 52:72]
      perfEvents_14 <= _perfEvents_14_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 614:40]
      perfEvents_15 <= 64'h4010040100; // @[CSR.scala 614:40]
    end else if (_T_269 & addr_4 == 12'h332) begin // @[RegMap.scala 52:72]
      perfEvents_15 <= _perfEvents_15_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_16 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h333) begin // @[RegMap.scala 52:72]
      perfEvents_16 <= _perfEvents_16_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_17 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h334) begin // @[RegMap.scala 52:72]
      perfEvents_17 <= _perfEvents_17_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_18 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h335) begin // @[RegMap.scala 52:72]
      perfEvents_18 <= _perfEvents_18_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_19 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h336) begin // @[RegMap.scala 52:72]
      perfEvents_19 <= _perfEvents_19_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_20 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h337) begin // @[RegMap.scala 52:72]
      perfEvents_20 <= _perfEvents_20_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_21 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h338) begin // @[RegMap.scala 52:72]
      perfEvents_21 <= _perfEvents_21_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_22 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h339) begin // @[RegMap.scala 52:72]
      perfEvents_22 <= _perfEvents_22_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 615:40]
      perfEvents_23 <= 64'h8020080200; // @[CSR.scala 615:40]
    end else if (_T_269 & addr_4 == 12'h33a) begin // @[RegMap.scala 52:72]
      perfEvents_23 <= _perfEvents_23_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 616:40]
      csrevents_0 <= 64'hc0300c0300; // @[CSR.scala 616:40]
    end else if (_T_269 & addr_4 == 12'h33b) begin // @[RegMap.scala 52:72]
      csrevents_0 <= _perfEvents_24_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 616:40]
      csrevents_1 <= 64'hc0300c0300; // @[CSR.scala 616:40]
    end else if (_T_269 & addr_4 == 12'h33c) begin // @[RegMap.scala 52:72]
      csrevents_1 <= _perfEvents_25_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 616:40]
      csrevents_2 <= 64'hc0300c0300; // @[CSR.scala 616:40]
    end else if (_T_269 & addr_4 == 12'h33d) begin // @[RegMap.scala 52:72]
      csrevents_2 <= _perfEvents_26_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 616:40]
      csrevents_3 <= 64'hc0300c0300; // @[CSR.scala 616:40]
    end else if (_T_269 & addr_4 == 12'h33e) begin // @[RegMap.scala 52:72]
      csrevents_3 <= _perfEvents_27_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 616:40]
      csrevents_4 <= 64'hc0300c0300; // @[CSR.scala 616:40]
    end else if (_T_269 & addr_4 == 12'h33f) begin // @[RegMap.scala 52:72]
      csrevents_4 <= _perfEvents_28_T_3; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 628:30]
      mcountinhibit <= 64'h0; // @[CSR.scala 628:30]
    end else if (_T_269 & addr_4 == 12'h320) begin // @[RegMap.scala 52:72]
      mcountinhibit <= wdata; // @[RegMap.scala 52:76]
    end
    if (reset) begin // @[CSR.scala 629:23]
      mcycle <= 64'h0; // @[CSR.scala 629:23]
    end else if (_T_269 & addr_4 == 12'hb00) begin // @[RegMap.scala 52:72]
      mcycle <= wdata; // @[RegMap.scala 52:76]
    end else begin
      mcycle <= _mcycle_T_1; // @[CSR.scala 630:10]
    end
    if (reset) begin // @[CSR.scala 631:25]
      minstret <= 64'h0; // @[CSR.scala 631:25]
    end else if (_T_269 & addr_4 == 12'hb02) begin // @[RegMap.scala 52:72]
      minstret <= wdata; // @[RegMap.scala 52:76]
    end else begin
      minstret <= _minstret_T_1; // @[CSR.scala 636:12]
    end
    minstret_REG <= csrio_perf_retiredInstr; // @[CSR.scala 636:33]
    if (reset) begin // @[CSR.scala 744:20]
      REG <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5c5 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG <= _GEN_287;
      end
    end else begin
      REG <= _GEN_287;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_1 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5c6 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_1 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_1 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_1 <= _GEN_198;
      end
    end else begin
      REG_1 <= _GEN_198;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_2 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5c8 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_2 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_2 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_2 <= _GEN_379;
      end
    end else begin
      REG_2 <= _GEN_379;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_3 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5cc == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_3 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_3 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_3 <= _GEN_303;
      end
    end else begin
      REG_3 <= _GEN_303;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_4 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d9 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_4 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_4 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_4 <= _GEN_27;
      end
    end else begin
      REG_4 <= _GEN_27;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_5 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5cb == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_5 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_5 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_5 <= _GEN_255;
      end
    end else begin
      REG_5 <= _GEN_255;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_6 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d3 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_6 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_6 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_6 <= _GEN_324;
      end
    end else begin
      REG_6 <= _GEN_324;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_7 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5cd == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_7 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_7 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_7 <= _GEN_310;
      end
    end else begin
      REG_7 <= _GEN_310;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_8 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d7 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_8 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_8 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_8 <= _GEN_380;
      end
    end else begin
      REG_8 <= _GEN_380;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_9 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5ca == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_9 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_9 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_9 <= _GEN_112;
      end
    end else begin
      REG_9 <= _GEN_112;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_10 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d2 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_10 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_10 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_10 <= _GEN_432;
      end
    end else begin
      REG_10 <= _GEN_432;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_11 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d6 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_11 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_11 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_11 <= _GEN_120;
      end
    end else begin
      REG_11 <= _GEN_120;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_12 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5cf == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_12 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_12 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_12 <= _GEN_149;
      end
    end else begin
      REG_12 <= _GEN_149;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_13 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d0 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_13 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_13 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_13 <= _GEN_261;
      end
    end else begin
      REG_13 <= _GEN_261;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_14 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5c9 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_14 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_14 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_14 <= _GEN_318;
      end
    end else begin
      REG_14 <= _GEN_318;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_15 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d5 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_15 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_15 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_15 <= _GEN_196;
      end
    end else begin
      REG_15 <= _GEN_196;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_16 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5c7 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_16 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_16 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_16 <= _GEN_118;
      end
    end else begin
      REG_16 <= _GEN_118;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_17 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d4 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_17 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_17 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_17 <= _GEN_269;
      end
    end else begin
      REG_17 <= _GEN_269;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_18 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d1 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_18 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_18 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_18 <= _GEN_125;
      end
    end else begin
      REG_18 <= _GEN_125;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_19 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5ce == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_19 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_19 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_19 <= _GEN_26;
      end
    end else begin
      REG_19 <= _GEN_26;
    end
    if (reset) begin // @[CSR.scala 744:20]
      REG_20 <= 64'h0; // @[CSR.scala 744:20]
    end else if (distributedUpdateValid) begin // @[CSR.scala 1164:31]
      if (12'h5d8 == distributedUpdateAddr) begin // @[CSR.scala 1167:81]
        if (delayedUpdate0_delay_io_out_wvalid) begin // @[CSR.scala 1157:34]
          REG_20 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_20 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_20 <= _GEN_290;
      end
    end else begin
      REG_20 <= _GEN_290;
    end
    REG_21 <= csrio_fpu_fflags_valid; // @[CSR.scala 820:16]
    fcsr_REG <= csrio_fpu_fflags_bits; // @[CSR.scala 821:46]
    REG_22 <= csrio_fpu_dirty_fs; // @[CSR.scala 824:39]
    csrio_customCtrl_frontend_trigger_t_valid_REG <= wen & (_T_408 | _T_300) & _tDummy1_tdata1_new_select_T_20; // @[CSR.scala 839:104]
    csrio_customCtrl_mem_trigger_t_valid_REG <= _csrio_customCtrl_frontend_trigger_t_valid_T_3 &
      _tDummy1_tdata1_new_select_T_19 != 2'h0; // @[CSR.scala 840:99]
    REG_23 <= |_updateTval_T; // @[CSR.scala 1044:13]
    REG_24 <= REG_23; // @[CSR.scala 1045:16]
    tval_REG <= hasInstrPageFault | hasInstrAccessFault; // @[CSR.scala 1047:33]
    if (csrio_exception_bits_uop_cf_crossPageIPFFix) begin // @[CSR.scala 1048:18]
      tval_REG_1 <= _tval_T_5;
    end else if (ivmEnable) begin // @[CSR.scala 986:25]
      tval_REG_1 <= _iexceptionPC_T_2;
    end else begin
      tval_REG_1 <= {{25'd0}, csrio_exception_bits_uop_cf_pc};
    end
    if (tval_REG) begin // @[CSR.scala 1046:29]
      tval <= tval_REG_1;
    end else begin
      tval <= memExceptionAddr;
    end
    REG_25 <= priviledgeMode == 2'h3; // @[CSR.scala 1055:34]
    if (reset) begin // @[CSR.scala 1070:27]
      isXRetFlag <= 1'h0; // @[CSR.scala 1070:27]
    end else if (delay_io_out) begin // @[CSR.scala 1071:41]
      isXRetFlag <= 1'h0; // @[CSR.scala 1072:16]
    end else begin
      isXRetFlag <= _GEN_460;
    end
    if (_flushPipe_T_5) begin // @[Reg.scala 17:18]
      if (io_in_valid & isUret) begin // @[CSR.scala 927:26]
        retTargetReg <= 39'h0; // @[CSR.scala 935:15]
      end else if (_illegalSret_T & ~illegalSret & ~illegalSModeSret) begin // @[CSR.scala 914:63]
        retTargetReg <= sepc[38:0]; // @[CSR.scala 924:15]
      end else if (_illegalMret_T & ~illegalMret) begin // @[CSR.scala 901:42]
        retTargetReg <= mepc[38:0]; // @[CSR.scala 911:15]
      end else begin
        retTargetReg <= dpc[38:0];
      end
    end
    if (_csrio_trapTarget_T_10) begin // @[Reg.scala 17:18]
      if (isXRetFlag) begin // @[CSR.scala 1084:36]
        csrio_trapTarget_r <= retTargetReg;
      end else if (raiseDebugExceptionIntr | ebreakEnterParkLoop) begin // @[CSR.scala 1086:8]
        csrio_trapTarget_r <= {{9'd0}, debugTrapTarget};
      end else begin
        csrio_trapTarget_r <= _csrio_trapTarget_T_7;
      end
    end
    if (raiseIntr) begin // @[CSR.scala 1188:27]
      difftest_io_intrNO_REG <= causeNO;
    end else begin
      difftest_io_intrNO_REG <= 64'h0;
    end
    difftest_io_intrNO_REG_1 <= difftest_io_intrNO_REG; // @[CSR.scala 1195:42]
    difftest_io_intrNO_REG_2 <= difftest_io_intrNO_REG_1; // @[CSR.scala 1195:34]
    if (csrio_exception_valid) begin // @[CSR.scala 1196:54]
      difftest_io_cause_REG <= causeNO;
    end else begin
      difftest_io_cause_REG <= 64'h0;
    end
    difftest_io_cause_REG_1 <= difftest_io_cause_REG; // @[CSR.scala 1196:42]
    difftest_io_cause_REG_2 <= difftest_io_cause_REG_1; // @[CSR.scala 1196:34]
    if (dvmEnable) begin // @[CSR.scala 988:25]
      difftest_io_exceptionPC_REG <= _iexceptionPC_T_2;
    end else begin
      difftest_io_exceptionPC_REG <= {{25'd0}, csrio_exception_bits_uop_cf_pc};
    end
    difftest_io_exceptionPC_REG_1 <= difftest_io_exceptionPC_REG; // @[CSR.scala 1197:47]
    difftest_io_exceptionPC_REG_2 <= difftest_io_exceptionPC_REG_1; // @[CSR.scala 1197:39]
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
  dcsr = _RAND_0[31:0];
  _RAND_1 = {2{`RANDOM}};
  dpc = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  dscratch = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  dscratch1 = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  debugMode = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  debugIntrEnable = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  tdata1Phy_0 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  tdata1Phy_1 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  tdata1Phy_2 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  tdata1Phy_3 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  tdata1Phy_4 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  tdata1Phy_5 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  tdata1Phy_6 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  tdata1Phy_7 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  tdata1Phy_8 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  tdata1Phy_9 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  tdata2Phy_0 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  tdata2Phy_1 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  tdata2Phy_2 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  tdata2Phy_3 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  tdata2Phy_4 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  tdata2Phy_5 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  tdata2Phy_6 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  tdata2Phy_7 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  tdata2Phy_8 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  tdata2Phy_9 = _RAND_25[63:0];
  _RAND_26 = {1{`RANDOM}};
  tselectPhy = _RAND_26[3:0];
  _RAND_27 = {2{`RANDOM}};
  tControlPhy = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  triggerAction = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  mtvec = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  mcounteren = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  mcause = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  mtval = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  mepc = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  mie = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  mipReg = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  misa = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  mhartid = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  mstatus = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  medeleg = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  mideleg = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  mscratch = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  cfgMerged__0 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  cfgMerged__1 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  addr_1_0 = _RAND_44[33:0];
  _RAND_45 = {2{`RANDOM}};
  addr_1_1 = _RAND_45[33:0];
  _RAND_46 = {2{`RANDOM}};
  addr_1_2 = _RAND_46[33:0];
  _RAND_47 = {2{`RANDOM}};
  addr_1_3 = _RAND_47[33:0];
  _RAND_48 = {2{`RANDOM}};
  addr_1_4 = _RAND_48[33:0];
  _RAND_49 = {2{`RANDOM}};
  addr_1_5 = _RAND_49[33:0];
  _RAND_50 = {2{`RANDOM}};
  addr_1_6 = _RAND_50[33:0];
  _RAND_51 = {2{`RANDOM}};
  addr_1_7 = _RAND_51[33:0];
  _RAND_52 = {2{`RANDOM}};
  addr_1_8 = _RAND_52[33:0];
  _RAND_53 = {2{`RANDOM}};
  addr_1_9 = _RAND_53[33:0];
  _RAND_54 = {2{`RANDOM}};
  addr_1_10 = _RAND_54[33:0];
  _RAND_55 = {2{`RANDOM}};
  addr_1_11 = _RAND_55[33:0];
  _RAND_56 = {2{`RANDOM}};
  addr_1_12 = _RAND_56[33:0];
  _RAND_57 = {2{`RANDOM}};
  addr_1_13 = _RAND_57[33:0];
  _RAND_58 = {2{`RANDOM}};
  addr_1_14 = _RAND_58[33:0];
  _RAND_59 = {2{`RANDOM}};
  addr_1_15 = _RAND_59[33:0];
  _RAND_60 = {2{`RANDOM}};
  cfgMerged_1_0 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  cfgMerged_1_1 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  addr_3_0 = _RAND_62[33:0];
  _RAND_63 = {2{`RANDOM}};
  addr_3_1 = _RAND_63[33:0];
  _RAND_64 = {2{`RANDOM}};
  addr_3_2 = _RAND_64[33:0];
  _RAND_65 = {2{`RANDOM}};
  addr_3_3 = _RAND_65[33:0];
  _RAND_66 = {2{`RANDOM}};
  addr_3_4 = _RAND_66[33:0];
  _RAND_67 = {2{`RANDOM}};
  addr_3_5 = _RAND_67[33:0];
  _RAND_68 = {2{`RANDOM}};
  addr_3_6 = _RAND_68[33:0];
  _RAND_69 = {2{`RANDOM}};
  addr_3_7 = _RAND_69[33:0];
  _RAND_70 = {2{`RANDOM}};
  addr_3_8 = _RAND_70[33:0];
  _RAND_71 = {2{`RANDOM}};
  addr_3_9 = _RAND_71[33:0];
  _RAND_72 = {2{`RANDOM}};
  addr_3_10 = _RAND_72[33:0];
  _RAND_73 = {2{`RANDOM}};
  addr_3_11 = _RAND_73[33:0];
  _RAND_74 = {2{`RANDOM}};
  addr_3_12 = _RAND_74[33:0];
  _RAND_75 = {2{`RANDOM}};
  addr_3_13 = _RAND_75[33:0];
  _RAND_76 = {2{`RANDOM}};
  addr_3_14 = _RAND_76[33:0];
  _RAND_77 = {2{`RANDOM}};
  addr_3_15 = _RAND_77[33:0];
  _RAND_78 = {2{`RANDOM}};
  stvec = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  satp = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  sepc = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  scause = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  stval = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  sscratch = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  scounteren = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  sbpctl = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  spfctl = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  sdsid = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  slvpredctl = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  smblockctl = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  srnctl = _RAND_90[63:0];
  _RAND_91 = {1{`RANDOM}};
  tlbBundle_satp_changed_REG = _RAND_91[15:0];
  _RAND_92 = {2{`RANDOM}};
  fcsr = _RAND_92[63:0];
  _RAND_93 = {1{`RANDOM}};
  priviledgeMode = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  perfEventscounten_0 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  perfEventscounten_1 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  perfEventscounten_2 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  perfEventscounten_3 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  perfEventscounten_4 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  perfEventscounten_5 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  perfEventscounten_6 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  perfEventscounten_7 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  perfEventscounten_8 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  perfEventscounten_9 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  perfEventscounten_10 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  perfEventscounten_11 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  perfEventscounten_12 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  perfEventscounten_13 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  perfEventscounten_14 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  perfEventscounten_15 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  perfEventscounten_16 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  perfEventscounten_17 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  perfEventscounten_18 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  perfEventscounten_19 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  perfEventscounten_20 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  perfEventscounten_21 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  perfEventscounten_22 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  perfEventscounten_23 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  perfEventscounten_24 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  perfEventscounten_25 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  perfEventscounten_26 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  perfEventscounten_27 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  perfEventscounten_28 = _RAND_122[0:0];
  _RAND_123 = {2{`RANDOM}};
  perfCnts_0 = _RAND_123[63:0];
  _RAND_124 = {2{`RANDOM}};
  perfCnts_1 = _RAND_124[63:0];
  _RAND_125 = {2{`RANDOM}};
  perfCnts_2 = _RAND_125[63:0];
  _RAND_126 = {2{`RANDOM}};
  perfCnts_3 = _RAND_126[63:0];
  _RAND_127 = {2{`RANDOM}};
  perfCnts_4 = _RAND_127[63:0];
  _RAND_128 = {2{`RANDOM}};
  perfCnts_5 = _RAND_128[63:0];
  _RAND_129 = {2{`RANDOM}};
  perfCnts_6 = _RAND_129[63:0];
  _RAND_130 = {2{`RANDOM}};
  perfCnts_7 = _RAND_130[63:0];
  _RAND_131 = {2{`RANDOM}};
  perfCnts_8 = _RAND_131[63:0];
  _RAND_132 = {2{`RANDOM}};
  perfCnts_9 = _RAND_132[63:0];
  _RAND_133 = {2{`RANDOM}};
  perfCnts_10 = _RAND_133[63:0];
  _RAND_134 = {2{`RANDOM}};
  perfCnts_11 = _RAND_134[63:0];
  _RAND_135 = {2{`RANDOM}};
  perfCnts_12 = _RAND_135[63:0];
  _RAND_136 = {2{`RANDOM}};
  perfCnts_13 = _RAND_136[63:0];
  _RAND_137 = {2{`RANDOM}};
  perfCnts_14 = _RAND_137[63:0];
  _RAND_138 = {2{`RANDOM}};
  perfCnts_15 = _RAND_138[63:0];
  _RAND_139 = {2{`RANDOM}};
  perfCnts_16 = _RAND_139[63:0];
  _RAND_140 = {2{`RANDOM}};
  perfCnts_17 = _RAND_140[63:0];
  _RAND_141 = {2{`RANDOM}};
  perfCnts_18 = _RAND_141[63:0];
  _RAND_142 = {2{`RANDOM}};
  perfCnts_19 = _RAND_142[63:0];
  _RAND_143 = {2{`RANDOM}};
  perfCnts_20 = _RAND_143[63:0];
  _RAND_144 = {2{`RANDOM}};
  perfCnts_21 = _RAND_144[63:0];
  _RAND_145 = {2{`RANDOM}};
  perfCnts_22 = _RAND_145[63:0];
  _RAND_146 = {2{`RANDOM}};
  perfCnts_23 = _RAND_146[63:0];
  _RAND_147 = {2{`RANDOM}};
  perfCnts_24 = _RAND_147[63:0];
  _RAND_148 = {2{`RANDOM}};
  perfCnts_25 = _RAND_148[63:0];
  _RAND_149 = {2{`RANDOM}};
  perfCnts_26 = _RAND_149[63:0];
  _RAND_150 = {2{`RANDOM}};
  perfCnts_27 = _RAND_150[63:0];
  _RAND_151 = {2{`RANDOM}};
  perfCnts_28 = _RAND_151[63:0];
  _RAND_152 = {2{`RANDOM}};
  perfEvents_0 = _RAND_152[63:0];
  _RAND_153 = {2{`RANDOM}};
  perfEvents_1 = _RAND_153[63:0];
  _RAND_154 = {2{`RANDOM}};
  perfEvents_2 = _RAND_154[63:0];
  _RAND_155 = {2{`RANDOM}};
  perfEvents_3 = _RAND_155[63:0];
  _RAND_156 = {2{`RANDOM}};
  perfEvents_4 = _RAND_156[63:0];
  _RAND_157 = {2{`RANDOM}};
  perfEvents_5 = _RAND_157[63:0];
  _RAND_158 = {2{`RANDOM}};
  perfEvents_6 = _RAND_158[63:0];
  _RAND_159 = {2{`RANDOM}};
  perfEvents_7 = _RAND_159[63:0];
  _RAND_160 = {2{`RANDOM}};
  perfEvents_8 = _RAND_160[63:0];
  _RAND_161 = {2{`RANDOM}};
  perfEvents_9 = _RAND_161[63:0];
  _RAND_162 = {2{`RANDOM}};
  perfEvents_10 = _RAND_162[63:0];
  _RAND_163 = {2{`RANDOM}};
  perfEvents_11 = _RAND_163[63:0];
  _RAND_164 = {2{`RANDOM}};
  perfEvents_12 = _RAND_164[63:0];
  _RAND_165 = {2{`RANDOM}};
  perfEvents_13 = _RAND_165[63:0];
  _RAND_166 = {2{`RANDOM}};
  perfEvents_14 = _RAND_166[63:0];
  _RAND_167 = {2{`RANDOM}};
  perfEvents_15 = _RAND_167[63:0];
  _RAND_168 = {2{`RANDOM}};
  perfEvents_16 = _RAND_168[63:0];
  _RAND_169 = {2{`RANDOM}};
  perfEvents_17 = _RAND_169[63:0];
  _RAND_170 = {2{`RANDOM}};
  perfEvents_18 = _RAND_170[63:0];
  _RAND_171 = {2{`RANDOM}};
  perfEvents_19 = _RAND_171[63:0];
  _RAND_172 = {2{`RANDOM}};
  perfEvents_20 = _RAND_172[63:0];
  _RAND_173 = {2{`RANDOM}};
  perfEvents_21 = _RAND_173[63:0];
  _RAND_174 = {2{`RANDOM}};
  perfEvents_22 = _RAND_174[63:0];
  _RAND_175 = {2{`RANDOM}};
  perfEvents_23 = _RAND_175[63:0];
  _RAND_176 = {2{`RANDOM}};
  csrevents_0 = _RAND_176[63:0];
  _RAND_177 = {2{`RANDOM}};
  csrevents_1 = _RAND_177[63:0];
  _RAND_178 = {2{`RANDOM}};
  csrevents_2 = _RAND_178[63:0];
  _RAND_179 = {2{`RANDOM}};
  csrevents_3 = _RAND_179[63:0];
  _RAND_180 = {2{`RANDOM}};
  csrevents_4 = _RAND_180[63:0];
  _RAND_181 = {2{`RANDOM}};
  mcountinhibit = _RAND_181[63:0];
  _RAND_182 = {2{`RANDOM}};
  mcycle = _RAND_182[63:0];
  _RAND_183 = {2{`RANDOM}};
  minstret = _RAND_183[63:0];
  _RAND_184 = {1{`RANDOM}};
  minstret_REG = _RAND_184[2:0];
  _RAND_185 = {2{`RANDOM}};
  REG = _RAND_185[63:0];
  _RAND_186 = {2{`RANDOM}};
  REG_1 = _RAND_186[63:0];
  _RAND_187 = {2{`RANDOM}};
  REG_2 = _RAND_187[63:0];
  _RAND_188 = {2{`RANDOM}};
  REG_3 = _RAND_188[63:0];
  _RAND_189 = {2{`RANDOM}};
  REG_4 = _RAND_189[63:0];
  _RAND_190 = {2{`RANDOM}};
  REG_5 = _RAND_190[63:0];
  _RAND_191 = {2{`RANDOM}};
  REG_6 = _RAND_191[63:0];
  _RAND_192 = {2{`RANDOM}};
  REG_7 = _RAND_192[63:0];
  _RAND_193 = {2{`RANDOM}};
  REG_8 = _RAND_193[63:0];
  _RAND_194 = {2{`RANDOM}};
  REG_9 = _RAND_194[63:0];
  _RAND_195 = {2{`RANDOM}};
  REG_10 = _RAND_195[63:0];
  _RAND_196 = {2{`RANDOM}};
  REG_11 = _RAND_196[63:0];
  _RAND_197 = {2{`RANDOM}};
  REG_12 = _RAND_197[63:0];
  _RAND_198 = {2{`RANDOM}};
  REG_13 = _RAND_198[63:0];
  _RAND_199 = {2{`RANDOM}};
  REG_14 = _RAND_199[63:0];
  _RAND_200 = {2{`RANDOM}};
  REG_15 = _RAND_200[63:0];
  _RAND_201 = {2{`RANDOM}};
  REG_16 = _RAND_201[63:0];
  _RAND_202 = {2{`RANDOM}};
  REG_17 = _RAND_202[63:0];
  _RAND_203 = {2{`RANDOM}};
  REG_18 = _RAND_203[63:0];
  _RAND_204 = {2{`RANDOM}};
  REG_19 = _RAND_204[63:0];
  _RAND_205 = {2{`RANDOM}};
  REG_20 = _RAND_205[63:0];
  _RAND_206 = {1{`RANDOM}};
  REG_21 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  fcsr_REG = _RAND_207[4:0];
  _RAND_208 = {1{`RANDOM}};
  REG_22 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  csrio_customCtrl_frontend_trigger_t_valid_REG = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  csrio_customCtrl_mem_trigger_t_valid_REG = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  REG_23 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  REG_24 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  tval_REG = _RAND_213[0:0];
  _RAND_214 = {2{`RANDOM}};
  tval_REG_1 = _RAND_214[63:0];
  _RAND_215 = {2{`RANDOM}};
  tval = _RAND_215[63:0];
  _RAND_216 = {1{`RANDOM}};
  REG_25 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  isXRetFlag = _RAND_217[0:0];
  _RAND_218 = {2{`RANDOM}};
  retTargetReg = _RAND_218[38:0];
  _RAND_219 = {2{`RANDOM}};
  csrio_trapTarget_r = _RAND_219[38:0];
  _RAND_220 = {2{`RANDOM}};
  difftest_io_intrNO_REG = _RAND_220[63:0];
  _RAND_221 = {2{`RANDOM}};
  difftest_io_intrNO_REG_1 = _RAND_221[63:0];
  _RAND_222 = {2{`RANDOM}};
  difftest_io_intrNO_REG_2 = _RAND_222[63:0];
  _RAND_223 = {2{`RANDOM}};
  difftest_io_cause_REG = _RAND_223[63:0];
  _RAND_224 = {2{`RANDOM}};
  difftest_io_cause_REG_1 = _RAND_224[63:0];
  _RAND_225 = {2{`RANDOM}};
  difftest_io_cause_REG_2 = _RAND_225[63:0];
  _RAND_226 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG = _RAND_226[63:0];
  _RAND_227 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG_1 = _RAND_227[63:0];
  _RAND_228 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG_2 = _RAND_228[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
