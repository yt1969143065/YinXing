module NewIFU(
  input          clock,
  input          reset,
  output         io_ftqInter_fromFtq_req_ready,
  input          io_ftqInter_fromFtq_req_valid,
  input  [38:0]  io_ftqInter_fromFtq_req_bits_startAddr,
  input  [38:0]  io_ftqInter_fromFtq_req_bits_nextlineStart,
  input          io_ftqInter_fromFtq_req_bits_ftqIdx_flag,
  input  [5:0]   io_ftqInter_fromFtq_req_bits_ftqIdx_value,
  input          io_ftqInter_fromFtq_req_bits_ftqOffset_valid,
  input  [2:0]   io_ftqInter_fromFtq_req_bits_ftqOffset_bits,
  input  [38:0]  io_ftqInter_fromFtq_req_bits_nextStartAddr,
  input          io_ftqInter_fromFtq_redirect_valid,
  input          io_ftqInter_fromFtq_redirect_bits_ftqIdx_flag,
  input  [5:0]   io_ftqInter_fromFtq_redirect_bits_ftqIdx_value,
  input  [2:0]   io_ftqInter_fromFtq_redirect_bits_ftqOffset,
  input          io_ftqInter_fromFtq_redirect_bits_level,
  input          io_ftqInter_fromFtq_flushFromBpu_s2_valid,
  input          io_ftqInter_fromFtq_flushFromBpu_s2_bits_flag,
  input  [5:0]   io_ftqInter_fromFtq_flushFromBpu_s2_bits_value,
  input          io_ftqInter_fromFtq_flushFromBpu_s3_valid,
  input          io_ftqInter_fromFtq_flushFromBpu_s3_bits_flag,
  input  [5:0]   io_ftqInter_fromFtq_flushFromBpu_s3_bits_value,
  output         io_ftqInter_toFtq_pdWb_valid,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_0,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_1,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_2,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_3,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_4,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_5,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_6,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_pc_7,
  output         io_ftqInter_toFtq_pdWb_bits_pd_0_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_0_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_0_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_0_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_0_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_1_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_1_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_1_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_1_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_1_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_2_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_2_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_2_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_2_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_2_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_3_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_3_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_3_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_3_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_3_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_4_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_4_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_4_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_4_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_4_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_5_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_5_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_5_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_5_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_5_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_6_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_6_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_6_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_6_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_6_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_pd_7_valid,
  output         io_ftqInter_toFtq_pdWb_bits_pd_7_isRVC,
  output [1:0]   io_ftqInter_toFtq_pdWb_bits_pd_7_brType,
  output         io_ftqInter_toFtq_pdWb_bits_pd_7_isCall,
  output         io_ftqInter_toFtq_pdWb_bits_pd_7_isRet,
  output         io_ftqInter_toFtq_pdWb_bits_ftqIdx_flag,
  output [5:0]   io_ftqInter_toFtq_pdWb_bits_ftqIdx_value,
  output         io_ftqInter_toFtq_pdWb_bits_misOffset_valid,
  output [2:0]   io_ftqInter_toFtq_pdWb_bits_misOffset_bits,
  output         io_ftqInter_toFtq_pdWb_bits_cfiOffset_valid,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_target,
  output [38:0]  io_ftqInter_toFtq_pdWb_bits_jalTarget,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_0,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_1,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_2,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_3,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_4,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_5,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_6,
  output         io_ftqInter_toFtq_pdWb_bits_instrRange_7,
  input          io_icacheInter_0_req_ready,
  output         io_icacheInter_0_req_valid,
  output [38:0]  io_icacheInter_0_req_bits_vaddr,
  input          io_icacheInter_0_resp_valid,
  input  [38:0]  io_icacheInter_0_resp_bits_vaddr,
  input  [511:0] io_icacheInter_0_resp_bits_readData,
  input  [35:0]  io_icacheInter_0_resp_bits_paddr,
  input          io_icacheInter_0_resp_bits_tlbExcp_pageFault,
  input          io_icacheInter_0_resp_bits_tlbExcp_accessFault,
  input          io_icacheInter_0_resp_bits_tlbExcp_mmio,
  input          io_icacheInter_1_req_ready,
  output         io_icacheInter_1_req_valid,
  output [38:0]  io_icacheInter_1_req_bits_vaddr,
  input          io_icacheInter_1_resp_valid,
  input  [38:0]  io_icacheInter_1_resp_bits_vaddr,
  input  [511:0] io_icacheInter_1_resp_bits_readData,
  input          io_icacheInter_1_resp_bits_tlbExcp_pageFault,
  input          io_icacheInter_1_resp_bits_tlbExcp_accessFault,
  output         io_icacheStop,
  input          io_icachePerfInfo_only_0_hit,
  input          io_icachePerfInfo_only_0_miss,
  input          io_icachePerfInfo_hit_0_hit_1,
  input          io_icachePerfInfo_hit_0_miss_1,
  input          io_icachePerfInfo_miss_0_hit_1,
  input          io_icachePerfInfo_miss_0_miss_1,
  input          io_icachePerfInfo_bank_hit_1,
  input          io_icachePerfInfo_hit,
  input          io_toIbuffer_ready,
  output         io_toIbuffer_valid,
  output [31:0]  io_toIbuffer_bits_instrs_0,
  output [31:0]  io_toIbuffer_bits_instrs_1,
  output [31:0]  io_toIbuffer_bits_instrs_2,
  output [31:0]  io_toIbuffer_bits_instrs_3,
  output [31:0]  io_toIbuffer_bits_instrs_4,
  output [31:0]  io_toIbuffer_bits_instrs_5,
  output [31:0]  io_toIbuffer_bits_instrs_6,
  output [31:0]  io_toIbuffer_bits_instrs_7,
  output [7:0]   io_toIbuffer_bits_valid,
  output [7:0]   io_toIbuffer_bits_enqEnable,
  output         io_toIbuffer_bits_pd_0_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_0_brType,
  output         io_toIbuffer_bits_pd_0_isCall,
  output         io_toIbuffer_bits_pd_0_isRet,
  output         io_toIbuffer_bits_pd_1_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_1_brType,
  output         io_toIbuffer_bits_pd_1_isCall,
  output         io_toIbuffer_bits_pd_1_isRet,
  output         io_toIbuffer_bits_pd_2_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_2_brType,
  output         io_toIbuffer_bits_pd_2_isCall,
  output         io_toIbuffer_bits_pd_2_isRet,
  output         io_toIbuffer_bits_pd_3_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_3_brType,
  output         io_toIbuffer_bits_pd_3_isCall,
  output         io_toIbuffer_bits_pd_3_isRet,
  output         io_toIbuffer_bits_pd_4_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_4_brType,
  output         io_toIbuffer_bits_pd_4_isCall,
  output         io_toIbuffer_bits_pd_4_isRet,
  output         io_toIbuffer_bits_pd_5_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_5_brType,
  output         io_toIbuffer_bits_pd_5_isCall,
  output         io_toIbuffer_bits_pd_5_isRet,
  output         io_toIbuffer_bits_pd_6_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_6_brType,
  output         io_toIbuffer_bits_pd_6_isCall,
  output         io_toIbuffer_bits_pd_6_isRet,
  output         io_toIbuffer_bits_pd_7_isRVC,
  output [1:0]   io_toIbuffer_bits_pd_7_brType,
  output         io_toIbuffer_bits_pd_7_isCall,
  output         io_toIbuffer_bits_pd_7_isRet,
  output [9:0]   io_toIbuffer_bits_foldpc_0,
  output [9:0]   io_toIbuffer_bits_foldpc_1,
  output [9:0]   io_toIbuffer_bits_foldpc_2,
  output [9:0]   io_toIbuffer_bits_foldpc_3,
  output [9:0]   io_toIbuffer_bits_foldpc_4,
  output [9:0]   io_toIbuffer_bits_foldpc_5,
  output [9:0]   io_toIbuffer_bits_foldpc_6,
  output [9:0]   io_toIbuffer_bits_foldpc_7,
  output         io_toIbuffer_bits_ftqPtr_flag,
  output [5:0]   io_toIbuffer_bits_ftqPtr_value,
  output         io_toIbuffer_bits_ftqOffset_0_valid,
  output         io_toIbuffer_bits_ftqOffset_1_valid,
  output         io_toIbuffer_bits_ftqOffset_2_valid,
  output         io_toIbuffer_bits_ftqOffset_3_valid,
  output         io_toIbuffer_bits_ftqOffset_4_valid,
  output         io_toIbuffer_bits_ftqOffset_5_valid,
  output         io_toIbuffer_bits_ftqOffset_6_valid,
  output         io_toIbuffer_bits_ftqOffset_7_valid,
  output         io_toIbuffer_bits_ipf_0,
  output         io_toIbuffer_bits_ipf_1,
  output         io_toIbuffer_bits_ipf_2,
  output         io_toIbuffer_bits_ipf_3,
  output         io_toIbuffer_bits_ipf_4,
  output         io_toIbuffer_bits_ipf_5,
  output         io_toIbuffer_bits_ipf_6,
  output         io_toIbuffer_bits_ipf_7,
  output         io_toIbuffer_bits_acf_0,
  output         io_toIbuffer_bits_acf_1,
  output         io_toIbuffer_bits_acf_2,
  output         io_toIbuffer_bits_acf_3,
  output         io_toIbuffer_bits_acf_4,
  output         io_toIbuffer_bits_acf_5,
  output         io_toIbuffer_bits_acf_6,
  output         io_toIbuffer_bits_acf_7,
  output         io_toIbuffer_bits_crossPageIPFFix_0,
  output         io_toIbuffer_bits_crossPageIPFFix_1,
  output         io_toIbuffer_bits_crossPageIPFFix_2,
  output         io_toIbuffer_bits_crossPageIPFFix_3,
  output         io_toIbuffer_bits_crossPageIPFFix_4,
  output         io_toIbuffer_bits_crossPageIPFFix_5,
  output         io_toIbuffer_bits_crossPageIPFFix_6,
  output         io_toIbuffer_bits_crossPageIPFFix_7,
  output         io_toIbuffer_bits_triggered_0_frontendHit_0,
  output         io_toIbuffer_bits_triggered_0_frontendHit_1,
  output         io_toIbuffer_bits_triggered_0_frontendHit_2,
  output         io_toIbuffer_bits_triggered_0_frontendHit_3,
  output         io_toIbuffer_bits_triggered_0_backendEn_0,
  output         io_toIbuffer_bits_triggered_0_backendEn_1,
  output         io_toIbuffer_bits_triggered_1_frontendHit_0,
  output         io_toIbuffer_bits_triggered_1_frontendHit_1,
  output         io_toIbuffer_bits_triggered_1_frontendHit_2,
  output         io_toIbuffer_bits_triggered_1_frontendHit_3,
  output         io_toIbuffer_bits_triggered_1_backendEn_0,
  output         io_toIbuffer_bits_triggered_1_backendEn_1,
  output         io_toIbuffer_bits_triggered_2_frontendHit_0,
  output         io_toIbuffer_bits_triggered_2_frontendHit_1,
  output         io_toIbuffer_bits_triggered_2_frontendHit_2,
  output         io_toIbuffer_bits_triggered_2_frontendHit_3,
  output         io_toIbuffer_bits_triggered_2_backendEn_0,
  output         io_toIbuffer_bits_triggered_2_backendEn_1,
  output         io_toIbuffer_bits_triggered_3_frontendHit_0,
  output         io_toIbuffer_bits_triggered_3_frontendHit_1,
  output         io_toIbuffer_bits_triggered_3_frontendHit_2,
  output         io_toIbuffer_bits_triggered_3_frontendHit_3,
  output         io_toIbuffer_bits_triggered_3_backendEn_0,
  output         io_toIbuffer_bits_triggered_3_backendEn_1,
  output         io_toIbuffer_bits_triggered_4_frontendHit_0,
  output         io_toIbuffer_bits_triggered_4_frontendHit_1,
  output         io_toIbuffer_bits_triggered_4_frontendHit_2,
  output         io_toIbuffer_bits_triggered_4_frontendHit_3,
  output         io_toIbuffer_bits_triggered_4_backendEn_0,
  output         io_toIbuffer_bits_triggered_4_backendEn_1,
  output         io_toIbuffer_bits_triggered_5_frontendHit_0,
  output         io_toIbuffer_bits_triggered_5_frontendHit_1,
  output         io_toIbuffer_bits_triggered_5_frontendHit_2,
  output         io_toIbuffer_bits_triggered_5_frontendHit_3,
  output         io_toIbuffer_bits_triggered_5_backendEn_0,
  output         io_toIbuffer_bits_triggered_5_backendEn_1,
  output         io_toIbuffer_bits_triggered_6_frontendHit_0,
  output         io_toIbuffer_bits_triggered_6_frontendHit_1,
  output         io_toIbuffer_bits_triggered_6_frontendHit_2,
  output         io_toIbuffer_bits_triggered_6_frontendHit_3,
  output         io_toIbuffer_bits_triggered_6_backendEn_0,
  output         io_toIbuffer_bits_triggered_6_backendEn_1,
  output         io_toIbuffer_bits_triggered_7_frontendHit_0,
  output         io_toIbuffer_bits_triggered_7_frontendHit_1,
  output         io_toIbuffer_bits_triggered_7_frontendHit_2,
  output         io_toIbuffer_bits_triggered_7_frontendHit_3,
  output         io_toIbuffer_bits_triggered_7_backendEn_0,
  output         io_toIbuffer_bits_triggered_7_backendEn_1,
  output         io_uncacheInter_fromUncache_ready,
  input          io_uncacheInter_fromUncache_valid,
  input  [31:0]  io_uncacheInter_fromUncache_bits_data,
  input          io_uncacheInter_toUncache_ready,
  output         io_uncacheInter_toUncache_valid,
  output [35:0]  io_uncacheInter_toUncache_bits_addr,
  input          io_frontendTrigger_t_valid,
  input  [1:0]   io_frontendTrigger_t_bits_addr,
  input  [1:0]   io_frontendTrigger_t_bits_tdata_matchType,
  input          io_frontendTrigger_t_bits_tdata_select,
  input          io_frontendTrigger_t_bits_tdata_timing,
  input          io_frontendTrigger_t_bits_tdata_chain,
  input  [63:0]  io_frontendTrigger_t_bits_tdata_tdata2,
  input          io_csrTriggerEnable_0,
  input          io_csrTriggerEnable_1,
  input          io_csrTriggerEnable_2,
  input          io_csrTriggerEnable_3,
  input          io_rob_commits_0_valid,
  input          io_rob_commits_0_bits_ftqIdx_flag,
  input  [5:0]   io_rob_commits_0_bits_ftqIdx_value,
  input  [2:0]   io_rob_commits_0_bits_ftqOffset,
  input          io_rob_commits_1_valid,
  input          io_rob_commits_1_bits_ftqIdx_flag,
  input  [5:0]   io_rob_commits_1_bits_ftqIdx_value,
  input  [2:0]   io_rob_commits_1_bits_ftqOffset,
  input          io_rob_commits_2_valid,
  input          io_rob_commits_2_bits_ftqIdx_flag,
  input  [5:0]   io_rob_commits_2_bits_ftqIdx_value,
  input  [2:0]   io_rob_commits_2_bits_ftqOffset,
  input          io_rob_commits_3_valid,
  input          io_rob_commits_3_bits_ftqIdx_flag,
  input  [5:0]   io_rob_commits_3_bits_ftqIdx_value,
  input  [2:0]   io_rob_commits_3_bits_ftqOffset,
  output         io_iTLBInter_req_valid,
  output [38:0]  io_iTLBInter_req_bits_vaddr,
  input  [35:0]  io_iTLBInter_resp_bits_paddr,
  input          io_iTLBInter_resp_bits_miss,
  input          io_iTLBInter_resp_bits_excp_pf_instr,
  input          io_iTLBInter_resp_bits_excp_af_instr,
  output [35:0]  io_pmp_req_bits_addr,
  input          io_pmp_resp_instr,
  input          io_pmp_resp_mmio,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value
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
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
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
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [63:0] _RAND_68;
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
  reg [63:0] _RAND_126;
  reg [63:0] _RAND_127;
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
  reg [63:0] _RAND_130;
  reg [63:0] _RAND_131;
  reg [63:0] _RAND_132;
  reg [63:0] _RAND_133;
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
  reg [63:0] _RAND_189;
  reg [63:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [63:0] _RAND_194;
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
  reg [63:0] _RAND_215;
  reg [63:0] _RAND_216;
  reg [63:0] _RAND_217;
  reg [63:0] _RAND_218;
  reg [63:0] _RAND_219;
  reg [63:0] _RAND_220;
  reg [63:0] _RAND_221;
  reg [63:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [63:0] _RAND_224;
  reg [63:0] _RAND_225;
  reg [63:0] _RAND_226;
  reg [63:0] _RAND_227;
  reg [63:0] _RAND_228;
  reg [63:0] _RAND_229;
  reg [63:0] _RAND_230;
  reg [63:0] _RAND_231;
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
  reg [63:0] _RAND_272;
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
`endif // RANDOMIZE_REG_INIT
  wire [15:0] preDecoder_io_in_data_0; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_1; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_2; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_3; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_4; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_5; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_6; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_7; // @[IFU.scala 121:31]
  wire [15:0] preDecoder_io_in_data_8; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_0_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_0_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_0_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_0_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_1_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_1_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_1_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_1_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_1_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_2_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_2_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_2_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_2_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_2_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_3_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_3_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_3_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_3_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_3_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_4_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_4_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_4_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_4_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_4_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_5_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_5_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_5_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_5_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_5_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_6_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_6_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_6_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_6_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_6_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_7_valid; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_7_isRVC; // @[IFU.scala 121:31]
  wire [1:0] preDecoder_io_out_pd_7_brType; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_7_isCall; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_pd_7_isRet; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_2; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_3; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_4; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_5; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_6; // @[IFU.scala 121:31]
  wire  preDecoder_io_out_hasHalfValid_7; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_0; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_1; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_2; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_3; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_4; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_5; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_6; // @[IFU.scala 121:31]
  wire [31:0] preDecoder_io_out_expInstr_7; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_0; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_1; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_2; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_3; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_4; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_5; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_6; // @[IFU.scala 121:31]
  wire [63:0] preDecoder_io_out_jumpOffset_7; // @[IFU.scala 121:31]
  wire  predChecker_io_in_ftqOffset_valid; // @[IFU.scala 122:31]
  wire [2:0] predChecker_io_in_ftqOffset_bits; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_0; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_1; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_2; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_3; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_4; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_5; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_6; // @[IFU.scala 122:31]
  wire [63:0] predChecker_io_in_jumpOffset_7; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_target; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_0; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_1; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_2; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_3; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_4; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_5; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_6; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrRange_7; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_0; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_1; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_2; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_3; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_4; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_5; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_6; // @[IFU.scala 122:31]
  wire  predChecker_io_in_instrValid_7; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_0_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_0_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_0_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_1_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_1_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_1_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_2_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_2_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_2_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_3_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_3_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_3_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_4_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_4_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_4_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_5_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_5_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_5_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_6_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_6_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_6_isRet; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_7_isRVC; // @[IFU.scala 122:31]
  wire [1:0] predChecker_io_in_pds_7_brType; // @[IFU.scala 122:31]
  wire  predChecker_io_in_pds_7_isRet; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_0; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_1; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_2; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_3; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_4; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_5; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_6; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_in_pc_7; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_0; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_1; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_2; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_3; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_4; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_5; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_6; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedRange_7; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_0; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_1; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_2; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_3; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_4; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_5; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_6; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedTaken_7; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_0; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_1; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_2; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_3; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_4; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_5; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_6; // @[IFU.scala 122:31]
  wire [38:0] predChecker_io_out_fixedTarget_7; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_0; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_1; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_2; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_3; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_4; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_5; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_6; // @[IFU.scala 122:31]
  wire  predChecker_io_out_fixedMissPred_7; // @[IFU.scala 122:31]
  wire  frontendTrigger_clock; // @[IFU.scala 123:31]
  wire  frontendTrigger_reset; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_frontendTrigger_t_valid; // @[IFU.scala 123:31]
  wire [1:0] frontendTrigger_io_frontendTrigger_t_bits_addr; // @[IFU.scala 123:31]
  wire [1:0] frontendTrigger_io_frontendTrigger_t_bits_tdata_matchType; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_frontendTrigger_t_bits_tdata_select; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_frontendTrigger_t_bits_tdata_timing; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_frontendTrigger_t_bits_tdata_chain; // @[IFU.scala 123:31]
  wire [63:0] frontendTrigger_io_frontendTrigger_t_bits_tdata_tdata2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_csrTriggerEnable_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_csrTriggerEnable_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_csrTriggerEnable_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_csrTriggerEnable_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_0_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_1_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_2_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_3_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_4_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_5_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_6_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_frontendHit_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_frontendHit_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_frontendHit_2; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_frontendHit_3; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_backendEn_0; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_triggered_7_backendEn_1; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_0_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_1_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_2_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_3_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_4_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_5_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_6_isRVC; // @[IFU.scala 123:31]
  wire  frontendTrigger_io_pds_7_isRVC; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_0; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_1; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_2; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_3; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_4; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_5; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_6; // @[IFU.scala 123:31]
  wire [38:0] frontendTrigger_io_pc_7; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_0; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_1; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_2; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_3; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_4; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_5; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_6; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_7; // @[IFU.scala 123:31]
  wire [15:0] frontendTrigger_io_data_8; // @[IFU.scala 123:31]
  wire  f0_doubleLine = io_ftqInter_fromFtq_req_bits_startAddr[5]; // @[FrontendBundle.scala 36:33]
  wire  f0_fire = io_ftqInter_fromFtq_req_ready & io_ftqInter_fromFtq_req_valid; // @[Decoupled.scala 50:35]
  wire  from_bpu_f0_flush_differentFlag = io_ftqInter_fromFtq_flushFromBpu_s2_bits_flag ^
    io_ftqInter_fromFtq_req_bits_ftqIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  from_bpu_f0_flush_compare = io_ftqInter_fromFtq_flushFromBpu_s2_bits_value >
    io_ftqInter_fromFtq_req_bits_ftqIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _from_bpu_f0_flush_T = from_bpu_f0_flush_differentFlag ^ from_bpu_f0_flush_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _from_bpu_f0_flush_T_2 = io_ftqInter_fromFtq_flushFromBpu_s2_valid & ~_from_bpu_f0_flush_T; // @[NewFtq.scala 216:17]
  wire  from_bpu_f0_flush_differentFlag_1 = io_ftqInter_fromFtq_flushFromBpu_s3_bits_flag ^
    io_ftqInter_fromFtq_req_bits_ftqIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  from_bpu_f0_flush_compare_1 = io_ftqInter_fromFtq_flushFromBpu_s3_bits_value >
    io_ftqInter_fromFtq_req_bits_ftqIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _from_bpu_f0_flush_T_3 = from_bpu_f0_flush_differentFlag_1 ^ from_bpu_f0_flush_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _from_bpu_f0_flush_T_5 = io_ftqInter_fromFtq_flushFromBpu_s3_valid & ~_from_bpu_f0_flush_T_3; // @[NewFtq.scala 216:17]
  wire  from_bpu_f0_flush = _from_bpu_f0_flush_T_2 | _from_bpu_f0_flush_T_5; // @[IFU.scala 145:84]
  reg  wb_ftq_req_ftqIdx_flag; // @[IFU.scala 632:34]
  reg [5:0] wb_ftq_req_ftqIdx_value; // @[IFU.scala 632:34]
  wire [6:0] _f3_wb_not_flush_T = {wb_ftq_req_ftqIdx_flag,wb_ftq_req_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  reg  f3_ftq_req_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [5:0] f3_ftq_req_ftqIdx_value; // @[Reg.scala 16:16]
  wire [6:0] _f3_wb_not_flush_T_1 = {f3_ftq_req_ftqIdx_flag,f3_ftq_req_ftqIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _f3_wb_not_flush_T_2 = _f3_wb_not_flush_T == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  reg  f3_valid; // @[IFU.scala 328:34]
  reg  wb_valid; // @[IFU.scala 631:34]
  wire  f3_wb_not_flush = _f3_wb_not_flush_T_2 & f3_valid & wb_valid; // @[IFU.scala 653:74]
  reg  wb_check_result_fixedMissPred_0; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedMissPred_1; // @[IFU.scala 634:34]
  wire  _checkFlushWb_bits_misOffset_valid_T = wb_check_result_fixedMissPred_0 | wb_check_result_fixedMissPred_1; // @[ParallelMux.scala 37:55]
  reg  wb_check_result_fixedMissPred_2; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedMissPred_3; // @[IFU.scala 634:34]
  wire  _checkFlushWb_bits_misOffset_valid_T_2 = wb_check_result_fixedMissPred_0 | wb_check_result_fixedMissPred_1 | (
    wb_check_result_fixedMissPred_2 | wb_check_result_fixedMissPred_3); // @[ParallelMux.scala 37:55]
  reg  wb_check_result_fixedMissPred_4; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedMissPred_5; // @[IFU.scala 634:34]
  wire  _checkFlushWb_bits_misOffset_valid_T_3 = wb_check_result_fixedMissPred_4 | wb_check_result_fixedMissPred_5; // @[ParallelMux.scala 37:55]
  reg  wb_check_result_fixedMissPred_6; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedMissPred_7; // @[IFU.scala 634:34]
  wire  _checkFlushWb_bits_misOffset_valid_T_6 = wb_check_result_fixedMissPred_0 | wb_check_result_fixedMissPred_1 | (
    wb_check_result_fixedMissPred_2 | wb_check_result_fixedMissPred_3) | (wb_check_result_fixedMissPred_4 |
    wb_check_result_fixedMissPred_5 | (wb_check_result_fixedMissPred_6 | wb_check_result_fixedMissPred_7)); // @[ParallelMux.scala 37:55]
  reg  wb_false_lastHalf_REG; // @[IFU.scala 642:34]
  reg [2:0] wb_lastIdx; // @[IFU.scala 641:34]
  wire  wb_false_lastHalf = wb_false_lastHalf_REG & wb_lastIdx != 3'h7; // @[IFU.scala 642:54]
  wire  checkFlushWb_bits_misOffset_valid = _checkFlushWb_bits_misOffset_valid_T_6 | wb_false_lastHalf; // @[IFU.scala 662:84]
  wire  wb_redirect = checkFlushWb_bits_misOffset_valid & wb_valid; // @[IFU.scala 672:52]
  wire  f3_flush = io_ftqInter_fromFtq_redirect_valid | wb_redirect & ~f3_wb_not_flush; // @[IFU.scala 152:32]
  reg  f3_mmio; // @[Reg.scala 16:16]
  wire  f3_req_is_mmio = f3_mmio & f3_valid; // @[IFU.scala 373:36]
  reg [3:0] mmio_state; // @[IFU.scala 371:27]
  wire  _mmio_redirect_T = mmio_state == 4'h8; // @[IFU.scala 617:50]
  wire  _mmio_redirect_T_1 = f3_req_is_mmio & mmio_state == 4'h8; // @[IFU.scala 617:36]
  reg  mmio_redirect_REG; // @[IFU.scala 617:77]
  reg  f3_mmio_use_seq_pc; // @[IFU.scala 392:35]
  wire  mmio_redirect = f3_req_is_mmio & mmio_state == 4'h8 & mmio_redirect_REG & f3_mmio_use_seq_pc; // @[IFU.scala 617:99]
  wire  f2_flush = io_ftqInter_fromFtq_redirect_valid | mmio_redirect | wb_redirect; // @[IFU.scala 153:49]
  reg  f1_ftq_req_ftqIdx_flag; // @[Reg.scala 16:16]
  wire  from_bpu_f1_flush_differentFlag = io_ftqInter_fromFtq_flushFromBpu_s3_bits_flag ^ f1_ftq_req_ftqIdx_flag; // @[CircularQueuePtr.scala 85:35]
  reg [5:0] f1_ftq_req_ftqIdx_value; // @[Reg.scala 16:16]
  wire  from_bpu_f1_flush_compare = io_ftqInter_fromFtq_flushFromBpu_s3_bits_value > f1_ftq_req_ftqIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _from_bpu_f1_flush_T = from_bpu_f1_flush_differentFlag ^ from_bpu_f1_flush_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _from_bpu_f1_flush_T_2 = io_ftqInter_fromFtq_flushFromBpu_s3_valid & ~_from_bpu_f1_flush_T; // @[NewFtq.scala 216:17]
  reg  f1_valid; // @[IFU.scala 185:30]
  wire  from_bpu_f1_flush = _from_bpu_f1_flush_T_2 & f1_valid; // @[IFU.scala 194:84]
  wire  f1_flush = f2_flush | from_bpu_f1_flush; // @[IFU.scala 154:24]
  wire  f0_flush = f1_flush | from_bpu_f0_flush; // @[IFU.scala 155:24]
  reg  f2_valid; // @[IFU.scala 219:30]
  wire  f3_mmio_req_commit = f3_req_is_mmio & mmio_state == 4'h9; // @[IFU.scala 375:43]
  wire  f3_ready = f3_req_is_mmio ? io_toIbuffer_ready & f3_mmio_req_commit | ~f3_valid : io_toIbuffer_ready | ~f3_valid
    ; // @[IFU.scala 400:18]
  reg  f2_icache_all_resp_reg; // @[IFU.scala 229:46]
  reg [38:0] f2_ftq_req_startAddr; // @[Reg.scala 16:16]
  reg [38:0] f2_ftq_req_nextlineStart; // @[Reg.scala 16:16]
  reg  f2_doubleLine; // @[Reg.scala 16:16]
  wire  f2_icache_all_resp_wire = io_icacheInter_0_resp_valid & io_icacheInter_0_resp_bits_vaddr == f2_ftq_req_startAddr
     & (io_icacheInter_1_resp_valid & io_icacheInter_1_resp_bits_vaddr == f2_ftq_req_nextlineStart | ~f2_doubleLine); // @[IFU.scala 228:116]
  wire  icacheRespAllValid = f2_icache_all_resp_reg | f2_icache_all_resp_wire; // @[IFU.scala 231:48]
  wire  f2_fire = f2_valid & f3_ready & icacheRespAllValid; // @[IFU.scala 224:44]
  wire  f2_ready = f2_fire | ~f2_valid; // @[IFU.scala 226:23]
  wire  f1_fire = f1_valid & f2_ready; // @[IFU.scala 190:32]
  wire  f1_ready = f1_fire | ~f1_valid; // @[IFU.scala 192:23]
  reg [38:0] f1_ftq_req_startAddr; // @[Reg.scala 16:16]
  reg [38:0] f1_ftq_req_nextlineStart; // @[Reg.scala 16:16]
  reg  f1_ftq_req_ftqOffset_valid; // @[Reg.scala 16:16]
  reg [2:0] f1_ftq_req_ftqOffset_bits; // @[Reg.scala 16:16]
  reg [38:0] f1_ftq_req_nextStartAddr; // @[Reg.scala 16:16]
  reg  f1_doubleLine; // @[Reg.scala 16:16]
  wire  _GEN_10 = f1_fire ? 1'h0 : f1_valid; // @[IFU.scala 185:30 199:{35,46}]
  wire  _GEN_11 = f0_fire & ~f0_flush | _GEN_10; // @[IFU.scala 198:{35,46}]
  wire [39:0] _f1_pc_T = {{1'd0}, f1_ftq_req_startAddr}; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_0 = _f1_pc_T[38:0]; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_1 = f1_ftq_req_startAddr + 39'h2; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_2 = f1_ftq_req_startAddr + 39'h4; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_3 = f1_ftq_req_startAddr + 39'h6; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_4 = f1_ftq_req_startAddr + 39'h8; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_5 = f1_ftq_req_startAddr + 39'ha; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_6 = f1_ftq_req_startAddr + 39'hc; // @[IFU.scala 201:92]
  wire [38:0] f1_pc_7 = f1_ftq_req_startAddr + 39'he; // @[IFU.scala 201:92]
  wire [38:0] f1_half_snpc_6 = f1_ftq_req_startAddr + 39'h10; // @[IFU.scala 202:92]
  wire [38:0] f1_half_snpc_7 = f1_ftq_req_startAddr + 39'h12; // @[IFU.scala 202:92]
  wire [5:0] _f1_cut_ptr_T_1 = {1'h0,f1_ftq_req_startAddr[5:1]}; // @[Cat.scala 31:58]
  wire [6:0] _f1_cut_ptr_T_2 = {{1'd0}, _f1_cut_ptr_T_1}; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_0 = _f1_cut_ptr_T_2[5:0]; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_1 = _f1_cut_ptr_T_1 + 6'h1; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_2 = _f1_cut_ptr_T_1 + 6'h2; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_3 = _f1_cut_ptr_T_1 + 6'h3; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_4 = _f1_cut_ptr_T_1 + 6'h4; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_5 = _f1_cut_ptr_T_1 + 6'h5; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_6 = _f1_cut_ptr_T_1 + 6'h6; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_7 = _f1_cut_ptr_T_1 + 6'h7; // @[IFU.scala 203:150]
  wire [5:0] f1_cut_ptr_8 = _f1_cut_ptr_T_1 + 6'h8; // @[IFU.scala 203:150]
  reg  f2_ftq_req_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [5:0] f2_ftq_req_ftqIdx_value; // @[Reg.scala 16:16]
  reg  f2_ftq_req_ftqOffset_valid; // @[Reg.scala 16:16]
  reg [2:0] f2_ftq_req_ftqOffset_bits; // @[Reg.scala 16:16]
  reg [38:0] f2_ftq_req_nextStartAddr; // @[Reg.scala 16:16]
  wire  _io_icacheStop_T = ~f3_ready; // @[IFU.scala 233:20]
  wire  _GEN_23 = f2_fire & f2_icache_all_resp_reg ? 1'h0 : f2_icache_all_resp_reg; // @[IFU.scala 229:46 237:{63,87}]
  wire  _GEN_24 = f2_valid & f2_icache_all_resp_wire & _io_icacheStop_T | _GEN_23; // @[IFU.scala 236:{63,87}]
  wire  _GEN_26 = f2_fire ? 1'h0 : f2_valid; // @[IFU.scala 219:30 241:{35,45}]
  wire  _GEN_27 = f1_fire & ~f1_flush | _GEN_26; // @[IFU.scala 240:{35,45}]
  wire  _f2_mmio_T_2 = ~io_icacheInter_0_resp_bits_tlbExcp_pageFault; // @[IFU.scala 250:60]
  wire  f2_mmio = io_icacheInter_0_resp_bits_tlbExcp_mmio & ~io_icacheInter_0_resp_bits_tlbExcp_accessFault &
    _f2_mmio_T_2; // @[IFU.scala 249:100]
  reg [38:0] f2_pc_0; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_1; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_2; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_3; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_4; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_5; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_6; // @[Reg.scala 16:16]
  reg [38:0] f2_pc_7; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_0; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_1; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_2; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_3; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_4; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_5; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_6; // @[Reg.scala 16:16]
  reg [38:0] f2_half_snpc_7; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_0; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_1; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_2; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_3; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_4; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_5; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_6; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_7; // @[Reg.scala 16:16]
  reg [5:0] f2_cut_ptr_8; // @[Reg.scala 16:16]
  reg [38:0] f2_resend_vaddr; // @[Reg.scala 16:16]
  wire [29:0] f2_foldpc_value = f2_pc_0[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_4 = f2_foldpc_value[19:10] ^ f2_foldpc_value[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_0 = f2_foldpc_value[9:0] ^ _f2_foldpc_T_4; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_1 = f2_pc_1[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_10 = f2_foldpc_value_1[19:10] ^ f2_foldpc_value_1[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_1 = f2_foldpc_value_1[9:0] ^ _f2_foldpc_T_10; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_2 = f2_pc_2[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_16 = f2_foldpc_value_2[19:10] ^ f2_foldpc_value_2[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_2 = f2_foldpc_value_2[9:0] ^ _f2_foldpc_T_16; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_3 = f2_pc_3[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_22 = f2_foldpc_value_3[19:10] ^ f2_foldpc_value_3[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_3 = f2_foldpc_value_3[9:0] ^ _f2_foldpc_T_22; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_4 = f2_pc_4[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_28 = f2_foldpc_value_4[19:10] ^ f2_foldpc_value_4[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_4 = f2_foldpc_value_4[9:0] ^ _f2_foldpc_T_28; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_5 = f2_pc_5[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_34 = f2_foldpc_value_5[19:10] ^ f2_foldpc_value_5[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_5 = f2_foldpc_value_5[9:0] ^ _f2_foldpc_T_34; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_6 = f2_pc_6[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_40 = f2_foldpc_value_6[19:10] ^ f2_foldpc_value_6[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_6 = f2_foldpc_value_6[9:0] ^ _f2_foldpc_T_40; // @[ParallelMux.scala 59:54]
  wire [29:0] f2_foldpc_value_7 = f2_pc_7[30:1]; // @[BitUtils.scala 51:23]
  wire [9:0] _f2_foldpc_T_46 = f2_foldpc_value_7[19:10] ^ f2_foldpc_value_7[29:20]; // @[ParallelMux.scala 59:54]
  wire [9:0] f2_foldpc_7 = f2_foldpc_value_7[9:0] ^ _f2_foldpc_T_46; // @[ParallelMux.scala 59:54]
  wire  _f2_jump_range_T = ~f2_ftq_req_ftqOffset_valid; // @[IFU.scala 267:42]
  wire [7:0] _f2_jump_range_T_2 = _f2_jump_range_T ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [2:0] _f2_jump_range_T_4 = ~f2_ftq_req_ftqOffset_bits; // @[IFU.scala 267:105]
  wire [7:0] _f2_jump_range_T_5 = 8'hff >> _f2_jump_range_T_4; // @[IFU.scala 267:102]
  wire [7:0] f2_jump_range = _f2_jump_range_T_2 | _f2_jump_range_T_5; // @[IFU.scala 267:71]
  wire [7:0] _f2_ftr_range_T_1 = f2_ftq_req_ftqOffset_valid ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [38:0] f2_ftr_range_byteOffset = f2_ftq_req_nextStartAddr - f2_ftq_req_startAddr; // @[IFU.scala 41:25]
  wire [38:0] _f2_ftr_range_T_4 = f2_ftr_range_byteOffset - 39'h2; // @[IFU.scala 42:17]
  wire [2:0] _f2_ftr_range_T_6 = ~_f2_ftr_range_T_4[3:1]; // @[IFU.scala 268:105]
  wire [7:0] _f2_ftr_range_T_7 = 8'hff >> _f2_ftr_range_T_6; // @[IFU.scala 268:102]
  wire [7:0] f2_ftr_range = _f2_ftr_range_T_1 | _f2_ftr_range_T_7; // @[IFU.scala 268:71]
  wire [7:0] f2_instr_range = f2_jump_range & f2_ftr_range; // @[IFU.scala 269:38]
  wire  _f2_pf_vec_T_2 = f2_ftq_req_startAddr[6] ^ f2_pc_0[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_3 = ~_f2_pf_vec_T_2; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_8 = _f2_pf_vec_T_2 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_0 = ~_f2_pf_vec_T_2 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_13 = f2_ftq_req_startAddr[6] ^ f2_pc_1[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_14 = ~_f2_pf_vec_T_13; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_19 = _f2_pf_vec_T_13 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_1 = ~_f2_pf_vec_T_13 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_13 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_24 = f2_ftq_req_startAddr[6] ^ f2_pc_2[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_25 = ~_f2_pf_vec_T_24; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_30 = _f2_pf_vec_T_24 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_2 = ~_f2_pf_vec_T_24 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_24 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_35 = f2_ftq_req_startAddr[6] ^ f2_pc_3[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_36 = ~_f2_pf_vec_T_35; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_41 = _f2_pf_vec_T_35 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_3 = ~_f2_pf_vec_T_35 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_35 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_46 = f2_ftq_req_startAddr[6] ^ f2_pc_4[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_47 = ~_f2_pf_vec_T_46; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_52 = _f2_pf_vec_T_46 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_4 = ~_f2_pf_vec_T_46 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_46 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_57 = f2_ftq_req_startAddr[6] ^ f2_pc_5[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_58 = ~_f2_pf_vec_T_57; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_63 = _f2_pf_vec_T_57 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_5 = ~_f2_pf_vec_T_57 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_57 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_68 = f2_ftq_req_startAddr[6] ^ f2_pc_6[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_69 = ~_f2_pf_vec_T_68; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_74 = _f2_pf_vec_T_68 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_6 = ~_f2_pf_vec_T_68 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_68 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  _f2_pf_vec_T_79 = f2_ftq_req_startAddr[6] ^ f2_pc_7[6]; // @[IFU.scala 259:29]
  wire  _f2_pf_vec_T_80 = ~_f2_pf_vec_T_79; // @[IFU.scala 270:60]
  wire  _f2_pf_vec_T_85 = _f2_pf_vec_T_79 & f2_doubleLine; // @[IFU.scala 270:172]
  wire  f2_pf_vec_7 = ~_f2_pf_vec_T_79 & io_icacheInter_0_resp_bits_tlbExcp_pageFault | _f2_pf_vec_T_79 & f2_doubleLine
     & io_icacheInter_1_resp_bits_tlbExcp_pageFault; // @[IFU.scala 270:125]
  wire  f2_af_vec_0 = _f2_pf_vec_T_3 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_8 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_1 = _f2_pf_vec_T_14 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_19 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_2 = _f2_pf_vec_T_25 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_30 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_3 = _f2_pf_vec_T_36 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_41 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_4 = _f2_pf_vec_T_47 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_52 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_5 = _f2_pf_vec_T_58 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_63 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_6 = _f2_pf_vec_T_69 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_74 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire  f2_af_vec_7 = _f2_pf_vec_T_80 & io_icacheInter_0_resp_bits_tlbExcp_accessFault | _f2_pf_vec_T_85 &
    io_icacheInter_1_resp_bits_tlbExcp_accessFault; // @[IFU.scala 271:125]
  wire [1023:0] _f2_cut_data_T = {io_icacheInter_1_resp_bits_readData,io_icacheInter_0_resp_bits_readData}; // @[Cat.scala 31:58]
  wire [15:0] f2_cut_data_dataVec_0 = _f2_cut_data_T[15:0]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_1 = _f2_cut_data_T[31:16]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_2 = _f2_cut_data_T[47:32]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_3 = _f2_cut_data_T[63:48]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_4 = _f2_cut_data_T[79:64]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_5 = _f2_cut_data_T[95:80]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_6 = _f2_cut_data_T[111:96]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_7 = _f2_cut_data_T[127:112]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_8 = _f2_cut_data_T[143:128]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_9 = _f2_cut_data_T[159:144]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_10 = _f2_cut_data_T[175:160]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_11 = _f2_cut_data_T[191:176]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_12 = _f2_cut_data_T[207:192]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_13 = _f2_cut_data_T[223:208]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_14 = _f2_cut_data_T[239:224]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_15 = _f2_cut_data_T[255:240]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_16 = _f2_cut_data_T[271:256]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_17 = _f2_cut_data_T[287:272]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_18 = _f2_cut_data_T[303:288]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_19 = _f2_cut_data_T[319:304]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_20 = _f2_cut_data_T[335:320]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_21 = _f2_cut_data_T[351:336]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_22 = _f2_cut_data_T[367:352]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_23 = _f2_cut_data_T[383:368]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_24 = _f2_cut_data_T[399:384]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_25 = _f2_cut_data_T[415:400]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_26 = _f2_cut_data_T[431:416]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_27 = _f2_cut_data_T[447:432]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_28 = _f2_cut_data_T[463:448]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_29 = _f2_cut_data_T[479:464]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_30 = _f2_cut_data_T[495:480]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_31 = _f2_cut_data_T[511:496]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_32 = _f2_cut_data_T[527:512]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_33 = _f2_cut_data_T[543:528]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_34 = _f2_cut_data_T[559:544]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_35 = _f2_cut_data_T[575:560]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_36 = _f2_cut_data_T[591:576]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_37 = _f2_cut_data_T[607:592]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_38 = _f2_cut_data_T[623:608]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_39 = _f2_cut_data_T[639:624]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_40 = _f2_cut_data_T[655:640]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_41 = _f2_cut_data_T[671:656]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_42 = _f2_cut_data_T[687:672]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_43 = _f2_cut_data_T[703:688]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_44 = _f2_cut_data_T[719:704]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_45 = _f2_cut_data_T[735:720]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_46 = _f2_cut_data_T[751:736]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_47 = _f2_cut_data_T[767:752]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_48 = _f2_cut_data_T[783:768]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_49 = _f2_cut_data_T[799:784]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_50 = _f2_cut_data_T[815:800]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_51 = _f2_cut_data_T[831:816]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_52 = _f2_cut_data_T[847:832]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_53 = _f2_cut_data_T[863:848]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_54 = _f2_cut_data_T[879:864]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_55 = _f2_cut_data_T[895:880]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_56 = _f2_cut_data_T[911:896]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_57 = _f2_cut_data_T[927:912]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_58 = _f2_cut_data_T[943:928]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_59 = _f2_cut_data_T[959:944]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_60 = _f2_cut_data_T[975:960]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_61 = _f2_cut_data_T[991:976]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_62 = _f2_cut_data_T[1007:992]; // @[IFU.scala 279:40]
  wire [15:0] f2_cut_data_dataVec_63 = _f2_cut_data_T[1023:1008]; // @[IFU.scala 279:40]
  wire [15:0] _GEN_56 = 6'h1 == f2_cut_ptr_0 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_57 = 6'h2 == f2_cut_ptr_0 ? f2_cut_data_dataVec_2 : _GEN_56; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_58 = 6'h3 == f2_cut_ptr_0 ? f2_cut_data_dataVec_3 : _GEN_57; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_59 = 6'h4 == f2_cut_ptr_0 ? f2_cut_data_dataVec_4 : _GEN_58; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_60 = 6'h5 == f2_cut_ptr_0 ? f2_cut_data_dataVec_5 : _GEN_59; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_61 = 6'h6 == f2_cut_ptr_0 ? f2_cut_data_dataVec_6 : _GEN_60; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_62 = 6'h7 == f2_cut_ptr_0 ? f2_cut_data_dataVec_7 : _GEN_61; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_63 = 6'h8 == f2_cut_ptr_0 ? f2_cut_data_dataVec_8 : _GEN_62; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_64 = 6'h9 == f2_cut_ptr_0 ? f2_cut_data_dataVec_9 : _GEN_63; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_65 = 6'ha == f2_cut_ptr_0 ? f2_cut_data_dataVec_10 : _GEN_64; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_66 = 6'hb == f2_cut_ptr_0 ? f2_cut_data_dataVec_11 : _GEN_65; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_67 = 6'hc == f2_cut_ptr_0 ? f2_cut_data_dataVec_12 : _GEN_66; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_68 = 6'hd == f2_cut_ptr_0 ? f2_cut_data_dataVec_13 : _GEN_67; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_69 = 6'he == f2_cut_ptr_0 ? f2_cut_data_dataVec_14 : _GEN_68; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_70 = 6'hf == f2_cut_ptr_0 ? f2_cut_data_dataVec_15 : _GEN_69; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_71 = 6'h10 == f2_cut_ptr_0 ? f2_cut_data_dataVec_16 : _GEN_70; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_72 = 6'h11 == f2_cut_ptr_0 ? f2_cut_data_dataVec_17 : _GEN_71; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_73 = 6'h12 == f2_cut_ptr_0 ? f2_cut_data_dataVec_18 : _GEN_72; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_74 = 6'h13 == f2_cut_ptr_0 ? f2_cut_data_dataVec_19 : _GEN_73; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_75 = 6'h14 == f2_cut_ptr_0 ? f2_cut_data_dataVec_20 : _GEN_74; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_76 = 6'h15 == f2_cut_ptr_0 ? f2_cut_data_dataVec_21 : _GEN_75; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_77 = 6'h16 == f2_cut_ptr_0 ? f2_cut_data_dataVec_22 : _GEN_76; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_78 = 6'h17 == f2_cut_ptr_0 ? f2_cut_data_dataVec_23 : _GEN_77; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_79 = 6'h18 == f2_cut_ptr_0 ? f2_cut_data_dataVec_24 : _GEN_78; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_80 = 6'h19 == f2_cut_ptr_0 ? f2_cut_data_dataVec_25 : _GEN_79; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_81 = 6'h1a == f2_cut_ptr_0 ? f2_cut_data_dataVec_26 : _GEN_80; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_82 = 6'h1b == f2_cut_ptr_0 ? f2_cut_data_dataVec_27 : _GEN_81; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_83 = 6'h1c == f2_cut_ptr_0 ? f2_cut_data_dataVec_28 : _GEN_82; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_84 = 6'h1d == f2_cut_ptr_0 ? f2_cut_data_dataVec_29 : _GEN_83; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_85 = 6'h1e == f2_cut_ptr_0 ? f2_cut_data_dataVec_30 : _GEN_84; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_86 = 6'h1f == f2_cut_ptr_0 ? f2_cut_data_dataVec_31 : _GEN_85; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_87 = 6'h20 == f2_cut_ptr_0 ? f2_cut_data_dataVec_32 : _GEN_86; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_88 = 6'h21 == f2_cut_ptr_0 ? f2_cut_data_dataVec_33 : _GEN_87; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_89 = 6'h22 == f2_cut_ptr_0 ? f2_cut_data_dataVec_34 : _GEN_88; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_90 = 6'h23 == f2_cut_ptr_0 ? f2_cut_data_dataVec_35 : _GEN_89; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_91 = 6'h24 == f2_cut_ptr_0 ? f2_cut_data_dataVec_36 : _GEN_90; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_92 = 6'h25 == f2_cut_ptr_0 ? f2_cut_data_dataVec_37 : _GEN_91; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_93 = 6'h26 == f2_cut_ptr_0 ? f2_cut_data_dataVec_38 : _GEN_92; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_94 = 6'h27 == f2_cut_ptr_0 ? f2_cut_data_dataVec_39 : _GEN_93; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_95 = 6'h28 == f2_cut_ptr_0 ? f2_cut_data_dataVec_40 : _GEN_94; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_96 = 6'h29 == f2_cut_ptr_0 ? f2_cut_data_dataVec_41 : _GEN_95; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_97 = 6'h2a == f2_cut_ptr_0 ? f2_cut_data_dataVec_42 : _GEN_96; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_98 = 6'h2b == f2_cut_ptr_0 ? f2_cut_data_dataVec_43 : _GEN_97; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_99 = 6'h2c == f2_cut_ptr_0 ? f2_cut_data_dataVec_44 : _GEN_98; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_100 = 6'h2d == f2_cut_ptr_0 ? f2_cut_data_dataVec_45 : _GEN_99; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_101 = 6'h2e == f2_cut_ptr_0 ? f2_cut_data_dataVec_46 : _GEN_100; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_102 = 6'h2f == f2_cut_ptr_0 ? f2_cut_data_dataVec_47 : _GEN_101; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_103 = 6'h30 == f2_cut_ptr_0 ? f2_cut_data_dataVec_48 : _GEN_102; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_104 = 6'h31 == f2_cut_ptr_0 ? f2_cut_data_dataVec_49 : _GEN_103; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_105 = 6'h32 == f2_cut_ptr_0 ? f2_cut_data_dataVec_50 : _GEN_104; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_106 = 6'h33 == f2_cut_ptr_0 ? f2_cut_data_dataVec_51 : _GEN_105; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_107 = 6'h34 == f2_cut_ptr_0 ? f2_cut_data_dataVec_52 : _GEN_106; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_108 = 6'h35 == f2_cut_ptr_0 ? f2_cut_data_dataVec_53 : _GEN_107; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_109 = 6'h36 == f2_cut_ptr_0 ? f2_cut_data_dataVec_54 : _GEN_108; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_110 = 6'h37 == f2_cut_ptr_0 ? f2_cut_data_dataVec_55 : _GEN_109; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_111 = 6'h38 == f2_cut_ptr_0 ? f2_cut_data_dataVec_56 : _GEN_110; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_112 = 6'h39 == f2_cut_ptr_0 ? f2_cut_data_dataVec_57 : _GEN_111; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_113 = 6'h3a == f2_cut_ptr_0 ? f2_cut_data_dataVec_58 : _GEN_112; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_114 = 6'h3b == f2_cut_ptr_0 ? f2_cut_data_dataVec_59 : _GEN_113; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_115 = 6'h3c == f2_cut_ptr_0 ? f2_cut_data_dataVec_60 : _GEN_114; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_116 = 6'h3d == f2_cut_ptr_0 ? f2_cut_data_dataVec_61 : _GEN_115; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_117 = 6'h3e == f2_cut_ptr_0 ? f2_cut_data_dataVec_62 : _GEN_116; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_120 = 6'h1 == f2_cut_ptr_1 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_121 = 6'h2 == f2_cut_ptr_1 ? f2_cut_data_dataVec_2 : _GEN_120; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_122 = 6'h3 == f2_cut_ptr_1 ? f2_cut_data_dataVec_3 : _GEN_121; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_123 = 6'h4 == f2_cut_ptr_1 ? f2_cut_data_dataVec_4 : _GEN_122; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_124 = 6'h5 == f2_cut_ptr_1 ? f2_cut_data_dataVec_5 : _GEN_123; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_125 = 6'h6 == f2_cut_ptr_1 ? f2_cut_data_dataVec_6 : _GEN_124; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_126 = 6'h7 == f2_cut_ptr_1 ? f2_cut_data_dataVec_7 : _GEN_125; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_127 = 6'h8 == f2_cut_ptr_1 ? f2_cut_data_dataVec_8 : _GEN_126; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_128 = 6'h9 == f2_cut_ptr_1 ? f2_cut_data_dataVec_9 : _GEN_127; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_129 = 6'ha == f2_cut_ptr_1 ? f2_cut_data_dataVec_10 : _GEN_128; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_130 = 6'hb == f2_cut_ptr_1 ? f2_cut_data_dataVec_11 : _GEN_129; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_131 = 6'hc == f2_cut_ptr_1 ? f2_cut_data_dataVec_12 : _GEN_130; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_132 = 6'hd == f2_cut_ptr_1 ? f2_cut_data_dataVec_13 : _GEN_131; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_133 = 6'he == f2_cut_ptr_1 ? f2_cut_data_dataVec_14 : _GEN_132; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_134 = 6'hf == f2_cut_ptr_1 ? f2_cut_data_dataVec_15 : _GEN_133; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_135 = 6'h10 == f2_cut_ptr_1 ? f2_cut_data_dataVec_16 : _GEN_134; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_136 = 6'h11 == f2_cut_ptr_1 ? f2_cut_data_dataVec_17 : _GEN_135; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_137 = 6'h12 == f2_cut_ptr_1 ? f2_cut_data_dataVec_18 : _GEN_136; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_138 = 6'h13 == f2_cut_ptr_1 ? f2_cut_data_dataVec_19 : _GEN_137; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_139 = 6'h14 == f2_cut_ptr_1 ? f2_cut_data_dataVec_20 : _GEN_138; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_140 = 6'h15 == f2_cut_ptr_1 ? f2_cut_data_dataVec_21 : _GEN_139; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_141 = 6'h16 == f2_cut_ptr_1 ? f2_cut_data_dataVec_22 : _GEN_140; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_142 = 6'h17 == f2_cut_ptr_1 ? f2_cut_data_dataVec_23 : _GEN_141; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_143 = 6'h18 == f2_cut_ptr_1 ? f2_cut_data_dataVec_24 : _GEN_142; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_144 = 6'h19 == f2_cut_ptr_1 ? f2_cut_data_dataVec_25 : _GEN_143; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_145 = 6'h1a == f2_cut_ptr_1 ? f2_cut_data_dataVec_26 : _GEN_144; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_146 = 6'h1b == f2_cut_ptr_1 ? f2_cut_data_dataVec_27 : _GEN_145; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_147 = 6'h1c == f2_cut_ptr_1 ? f2_cut_data_dataVec_28 : _GEN_146; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_148 = 6'h1d == f2_cut_ptr_1 ? f2_cut_data_dataVec_29 : _GEN_147; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_149 = 6'h1e == f2_cut_ptr_1 ? f2_cut_data_dataVec_30 : _GEN_148; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_150 = 6'h1f == f2_cut_ptr_1 ? f2_cut_data_dataVec_31 : _GEN_149; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_151 = 6'h20 == f2_cut_ptr_1 ? f2_cut_data_dataVec_32 : _GEN_150; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_152 = 6'h21 == f2_cut_ptr_1 ? f2_cut_data_dataVec_33 : _GEN_151; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_153 = 6'h22 == f2_cut_ptr_1 ? f2_cut_data_dataVec_34 : _GEN_152; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_154 = 6'h23 == f2_cut_ptr_1 ? f2_cut_data_dataVec_35 : _GEN_153; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_155 = 6'h24 == f2_cut_ptr_1 ? f2_cut_data_dataVec_36 : _GEN_154; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_156 = 6'h25 == f2_cut_ptr_1 ? f2_cut_data_dataVec_37 : _GEN_155; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_157 = 6'h26 == f2_cut_ptr_1 ? f2_cut_data_dataVec_38 : _GEN_156; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_158 = 6'h27 == f2_cut_ptr_1 ? f2_cut_data_dataVec_39 : _GEN_157; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_159 = 6'h28 == f2_cut_ptr_1 ? f2_cut_data_dataVec_40 : _GEN_158; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_160 = 6'h29 == f2_cut_ptr_1 ? f2_cut_data_dataVec_41 : _GEN_159; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_161 = 6'h2a == f2_cut_ptr_1 ? f2_cut_data_dataVec_42 : _GEN_160; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_162 = 6'h2b == f2_cut_ptr_1 ? f2_cut_data_dataVec_43 : _GEN_161; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_163 = 6'h2c == f2_cut_ptr_1 ? f2_cut_data_dataVec_44 : _GEN_162; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_164 = 6'h2d == f2_cut_ptr_1 ? f2_cut_data_dataVec_45 : _GEN_163; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_165 = 6'h2e == f2_cut_ptr_1 ? f2_cut_data_dataVec_46 : _GEN_164; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_166 = 6'h2f == f2_cut_ptr_1 ? f2_cut_data_dataVec_47 : _GEN_165; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_167 = 6'h30 == f2_cut_ptr_1 ? f2_cut_data_dataVec_48 : _GEN_166; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_168 = 6'h31 == f2_cut_ptr_1 ? f2_cut_data_dataVec_49 : _GEN_167; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_169 = 6'h32 == f2_cut_ptr_1 ? f2_cut_data_dataVec_50 : _GEN_168; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_170 = 6'h33 == f2_cut_ptr_1 ? f2_cut_data_dataVec_51 : _GEN_169; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_171 = 6'h34 == f2_cut_ptr_1 ? f2_cut_data_dataVec_52 : _GEN_170; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_172 = 6'h35 == f2_cut_ptr_1 ? f2_cut_data_dataVec_53 : _GEN_171; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_173 = 6'h36 == f2_cut_ptr_1 ? f2_cut_data_dataVec_54 : _GEN_172; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_174 = 6'h37 == f2_cut_ptr_1 ? f2_cut_data_dataVec_55 : _GEN_173; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_175 = 6'h38 == f2_cut_ptr_1 ? f2_cut_data_dataVec_56 : _GEN_174; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_176 = 6'h39 == f2_cut_ptr_1 ? f2_cut_data_dataVec_57 : _GEN_175; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_177 = 6'h3a == f2_cut_ptr_1 ? f2_cut_data_dataVec_58 : _GEN_176; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_178 = 6'h3b == f2_cut_ptr_1 ? f2_cut_data_dataVec_59 : _GEN_177; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_179 = 6'h3c == f2_cut_ptr_1 ? f2_cut_data_dataVec_60 : _GEN_178; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_180 = 6'h3d == f2_cut_ptr_1 ? f2_cut_data_dataVec_61 : _GEN_179; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_181 = 6'h3e == f2_cut_ptr_1 ? f2_cut_data_dataVec_62 : _GEN_180; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_184 = 6'h1 == f2_cut_ptr_2 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_185 = 6'h2 == f2_cut_ptr_2 ? f2_cut_data_dataVec_2 : _GEN_184; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_186 = 6'h3 == f2_cut_ptr_2 ? f2_cut_data_dataVec_3 : _GEN_185; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_187 = 6'h4 == f2_cut_ptr_2 ? f2_cut_data_dataVec_4 : _GEN_186; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_188 = 6'h5 == f2_cut_ptr_2 ? f2_cut_data_dataVec_5 : _GEN_187; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_189 = 6'h6 == f2_cut_ptr_2 ? f2_cut_data_dataVec_6 : _GEN_188; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_190 = 6'h7 == f2_cut_ptr_2 ? f2_cut_data_dataVec_7 : _GEN_189; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_191 = 6'h8 == f2_cut_ptr_2 ? f2_cut_data_dataVec_8 : _GEN_190; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_192 = 6'h9 == f2_cut_ptr_2 ? f2_cut_data_dataVec_9 : _GEN_191; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_193 = 6'ha == f2_cut_ptr_2 ? f2_cut_data_dataVec_10 : _GEN_192; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_194 = 6'hb == f2_cut_ptr_2 ? f2_cut_data_dataVec_11 : _GEN_193; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_195 = 6'hc == f2_cut_ptr_2 ? f2_cut_data_dataVec_12 : _GEN_194; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_196 = 6'hd == f2_cut_ptr_2 ? f2_cut_data_dataVec_13 : _GEN_195; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_197 = 6'he == f2_cut_ptr_2 ? f2_cut_data_dataVec_14 : _GEN_196; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_198 = 6'hf == f2_cut_ptr_2 ? f2_cut_data_dataVec_15 : _GEN_197; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_199 = 6'h10 == f2_cut_ptr_2 ? f2_cut_data_dataVec_16 : _GEN_198; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_200 = 6'h11 == f2_cut_ptr_2 ? f2_cut_data_dataVec_17 : _GEN_199; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_201 = 6'h12 == f2_cut_ptr_2 ? f2_cut_data_dataVec_18 : _GEN_200; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_202 = 6'h13 == f2_cut_ptr_2 ? f2_cut_data_dataVec_19 : _GEN_201; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_203 = 6'h14 == f2_cut_ptr_2 ? f2_cut_data_dataVec_20 : _GEN_202; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_204 = 6'h15 == f2_cut_ptr_2 ? f2_cut_data_dataVec_21 : _GEN_203; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_205 = 6'h16 == f2_cut_ptr_2 ? f2_cut_data_dataVec_22 : _GEN_204; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_206 = 6'h17 == f2_cut_ptr_2 ? f2_cut_data_dataVec_23 : _GEN_205; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_207 = 6'h18 == f2_cut_ptr_2 ? f2_cut_data_dataVec_24 : _GEN_206; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_208 = 6'h19 == f2_cut_ptr_2 ? f2_cut_data_dataVec_25 : _GEN_207; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_209 = 6'h1a == f2_cut_ptr_2 ? f2_cut_data_dataVec_26 : _GEN_208; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_210 = 6'h1b == f2_cut_ptr_2 ? f2_cut_data_dataVec_27 : _GEN_209; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_211 = 6'h1c == f2_cut_ptr_2 ? f2_cut_data_dataVec_28 : _GEN_210; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_212 = 6'h1d == f2_cut_ptr_2 ? f2_cut_data_dataVec_29 : _GEN_211; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_213 = 6'h1e == f2_cut_ptr_2 ? f2_cut_data_dataVec_30 : _GEN_212; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_214 = 6'h1f == f2_cut_ptr_2 ? f2_cut_data_dataVec_31 : _GEN_213; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_215 = 6'h20 == f2_cut_ptr_2 ? f2_cut_data_dataVec_32 : _GEN_214; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_216 = 6'h21 == f2_cut_ptr_2 ? f2_cut_data_dataVec_33 : _GEN_215; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_217 = 6'h22 == f2_cut_ptr_2 ? f2_cut_data_dataVec_34 : _GEN_216; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_218 = 6'h23 == f2_cut_ptr_2 ? f2_cut_data_dataVec_35 : _GEN_217; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_219 = 6'h24 == f2_cut_ptr_2 ? f2_cut_data_dataVec_36 : _GEN_218; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_220 = 6'h25 == f2_cut_ptr_2 ? f2_cut_data_dataVec_37 : _GEN_219; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_221 = 6'h26 == f2_cut_ptr_2 ? f2_cut_data_dataVec_38 : _GEN_220; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_222 = 6'h27 == f2_cut_ptr_2 ? f2_cut_data_dataVec_39 : _GEN_221; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_223 = 6'h28 == f2_cut_ptr_2 ? f2_cut_data_dataVec_40 : _GEN_222; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_224 = 6'h29 == f2_cut_ptr_2 ? f2_cut_data_dataVec_41 : _GEN_223; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_225 = 6'h2a == f2_cut_ptr_2 ? f2_cut_data_dataVec_42 : _GEN_224; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_226 = 6'h2b == f2_cut_ptr_2 ? f2_cut_data_dataVec_43 : _GEN_225; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_227 = 6'h2c == f2_cut_ptr_2 ? f2_cut_data_dataVec_44 : _GEN_226; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_228 = 6'h2d == f2_cut_ptr_2 ? f2_cut_data_dataVec_45 : _GEN_227; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_229 = 6'h2e == f2_cut_ptr_2 ? f2_cut_data_dataVec_46 : _GEN_228; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_230 = 6'h2f == f2_cut_ptr_2 ? f2_cut_data_dataVec_47 : _GEN_229; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_231 = 6'h30 == f2_cut_ptr_2 ? f2_cut_data_dataVec_48 : _GEN_230; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_232 = 6'h31 == f2_cut_ptr_2 ? f2_cut_data_dataVec_49 : _GEN_231; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_233 = 6'h32 == f2_cut_ptr_2 ? f2_cut_data_dataVec_50 : _GEN_232; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_234 = 6'h33 == f2_cut_ptr_2 ? f2_cut_data_dataVec_51 : _GEN_233; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_235 = 6'h34 == f2_cut_ptr_2 ? f2_cut_data_dataVec_52 : _GEN_234; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_236 = 6'h35 == f2_cut_ptr_2 ? f2_cut_data_dataVec_53 : _GEN_235; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_237 = 6'h36 == f2_cut_ptr_2 ? f2_cut_data_dataVec_54 : _GEN_236; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_238 = 6'h37 == f2_cut_ptr_2 ? f2_cut_data_dataVec_55 : _GEN_237; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_239 = 6'h38 == f2_cut_ptr_2 ? f2_cut_data_dataVec_56 : _GEN_238; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_240 = 6'h39 == f2_cut_ptr_2 ? f2_cut_data_dataVec_57 : _GEN_239; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_241 = 6'h3a == f2_cut_ptr_2 ? f2_cut_data_dataVec_58 : _GEN_240; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_242 = 6'h3b == f2_cut_ptr_2 ? f2_cut_data_dataVec_59 : _GEN_241; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_243 = 6'h3c == f2_cut_ptr_2 ? f2_cut_data_dataVec_60 : _GEN_242; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_244 = 6'h3d == f2_cut_ptr_2 ? f2_cut_data_dataVec_61 : _GEN_243; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_245 = 6'h3e == f2_cut_ptr_2 ? f2_cut_data_dataVec_62 : _GEN_244; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_248 = 6'h1 == f2_cut_ptr_3 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_249 = 6'h2 == f2_cut_ptr_3 ? f2_cut_data_dataVec_2 : _GEN_248; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_250 = 6'h3 == f2_cut_ptr_3 ? f2_cut_data_dataVec_3 : _GEN_249; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_251 = 6'h4 == f2_cut_ptr_3 ? f2_cut_data_dataVec_4 : _GEN_250; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_252 = 6'h5 == f2_cut_ptr_3 ? f2_cut_data_dataVec_5 : _GEN_251; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_253 = 6'h6 == f2_cut_ptr_3 ? f2_cut_data_dataVec_6 : _GEN_252; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_254 = 6'h7 == f2_cut_ptr_3 ? f2_cut_data_dataVec_7 : _GEN_253; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_255 = 6'h8 == f2_cut_ptr_3 ? f2_cut_data_dataVec_8 : _GEN_254; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_256 = 6'h9 == f2_cut_ptr_3 ? f2_cut_data_dataVec_9 : _GEN_255; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_257 = 6'ha == f2_cut_ptr_3 ? f2_cut_data_dataVec_10 : _GEN_256; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_258 = 6'hb == f2_cut_ptr_3 ? f2_cut_data_dataVec_11 : _GEN_257; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_259 = 6'hc == f2_cut_ptr_3 ? f2_cut_data_dataVec_12 : _GEN_258; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_260 = 6'hd == f2_cut_ptr_3 ? f2_cut_data_dataVec_13 : _GEN_259; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_261 = 6'he == f2_cut_ptr_3 ? f2_cut_data_dataVec_14 : _GEN_260; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_262 = 6'hf == f2_cut_ptr_3 ? f2_cut_data_dataVec_15 : _GEN_261; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_263 = 6'h10 == f2_cut_ptr_3 ? f2_cut_data_dataVec_16 : _GEN_262; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_264 = 6'h11 == f2_cut_ptr_3 ? f2_cut_data_dataVec_17 : _GEN_263; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_265 = 6'h12 == f2_cut_ptr_3 ? f2_cut_data_dataVec_18 : _GEN_264; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_266 = 6'h13 == f2_cut_ptr_3 ? f2_cut_data_dataVec_19 : _GEN_265; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_267 = 6'h14 == f2_cut_ptr_3 ? f2_cut_data_dataVec_20 : _GEN_266; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_268 = 6'h15 == f2_cut_ptr_3 ? f2_cut_data_dataVec_21 : _GEN_267; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_269 = 6'h16 == f2_cut_ptr_3 ? f2_cut_data_dataVec_22 : _GEN_268; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_270 = 6'h17 == f2_cut_ptr_3 ? f2_cut_data_dataVec_23 : _GEN_269; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_271 = 6'h18 == f2_cut_ptr_3 ? f2_cut_data_dataVec_24 : _GEN_270; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_272 = 6'h19 == f2_cut_ptr_3 ? f2_cut_data_dataVec_25 : _GEN_271; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_273 = 6'h1a == f2_cut_ptr_3 ? f2_cut_data_dataVec_26 : _GEN_272; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_274 = 6'h1b == f2_cut_ptr_3 ? f2_cut_data_dataVec_27 : _GEN_273; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_275 = 6'h1c == f2_cut_ptr_3 ? f2_cut_data_dataVec_28 : _GEN_274; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_276 = 6'h1d == f2_cut_ptr_3 ? f2_cut_data_dataVec_29 : _GEN_275; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_277 = 6'h1e == f2_cut_ptr_3 ? f2_cut_data_dataVec_30 : _GEN_276; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_278 = 6'h1f == f2_cut_ptr_3 ? f2_cut_data_dataVec_31 : _GEN_277; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_279 = 6'h20 == f2_cut_ptr_3 ? f2_cut_data_dataVec_32 : _GEN_278; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_280 = 6'h21 == f2_cut_ptr_3 ? f2_cut_data_dataVec_33 : _GEN_279; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_281 = 6'h22 == f2_cut_ptr_3 ? f2_cut_data_dataVec_34 : _GEN_280; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_282 = 6'h23 == f2_cut_ptr_3 ? f2_cut_data_dataVec_35 : _GEN_281; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_283 = 6'h24 == f2_cut_ptr_3 ? f2_cut_data_dataVec_36 : _GEN_282; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_284 = 6'h25 == f2_cut_ptr_3 ? f2_cut_data_dataVec_37 : _GEN_283; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_285 = 6'h26 == f2_cut_ptr_3 ? f2_cut_data_dataVec_38 : _GEN_284; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_286 = 6'h27 == f2_cut_ptr_3 ? f2_cut_data_dataVec_39 : _GEN_285; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_287 = 6'h28 == f2_cut_ptr_3 ? f2_cut_data_dataVec_40 : _GEN_286; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_288 = 6'h29 == f2_cut_ptr_3 ? f2_cut_data_dataVec_41 : _GEN_287; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_289 = 6'h2a == f2_cut_ptr_3 ? f2_cut_data_dataVec_42 : _GEN_288; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_290 = 6'h2b == f2_cut_ptr_3 ? f2_cut_data_dataVec_43 : _GEN_289; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_291 = 6'h2c == f2_cut_ptr_3 ? f2_cut_data_dataVec_44 : _GEN_290; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_292 = 6'h2d == f2_cut_ptr_3 ? f2_cut_data_dataVec_45 : _GEN_291; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_293 = 6'h2e == f2_cut_ptr_3 ? f2_cut_data_dataVec_46 : _GEN_292; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_294 = 6'h2f == f2_cut_ptr_3 ? f2_cut_data_dataVec_47 : _GEN_293; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_295 = 6'h30 == f2_cut_ptr_3 ? f2_cut_data_dataVec_48 : _GEN_294; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_296 = 6'h31 == f2_cut_ptr_3 ? f2_cut_data_dataVec_49 : _GEN_295; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_297 = 6'h32 == f2_cut_ptr_3 ? f2_cut_data_dataVec_50 : _GEN_296; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_298 = 6'h33 == f2_cut_ptr_3 ? f2_cut_data_dataVec_51 : _GEN_297; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_299 = 6'h34 == f2_cut_ptr_3 ? f2_cut_data_dataVec_52 : _GEN_298; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_300 = 6'h35 == f2_cut_ptr_3 ? f2_cut_data_dataVec_53 : _GEN_299; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_301 = 6'h36 == f2_cut_ptr_3 ? f2_cut_data_dataVec_54 : _GEN_300; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_302 = 6'h37 == f2_cut_ptr_3 ? f2_cut_data_dataVec_55 : _GEN_301; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_303 = 6'h38 == f2_cut_ptr_3 ? f2_cut_data_dataVec_56 : _GEN_302; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_304 = 6'h39 == f2_cut_ptr_3 ? f2_cut_data_dataVec_57 : _GEN_303; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_305 = 6'h3a == f2_cut_ptr_3 ? f2_cut_data_dataVec_58 : _GEN_304; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_306 = 6'h3b == f2_cut_ptr_3 ? f2_cut_data_dataVec_59 : _GEN_305; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_307 = 6'h3c == f2_cut_ptr_3 ? f2_cut_data_dataVec_60 : _GEN_306; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_308 = 6'h3d == f2_cut_ptr_3 ? f2_cut_data_dataVec_61 : _GEN_307; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_309 = 6'h3e == f2_cut_ptr_3 ? f2_cut_data_dataVec_62 : _GEN_308; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_312 = 6'h1 == f2_cut_ptr_4 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_313 = 6'h2 == f2_cut_ptr_4 ? f2_cut_data_dataVec_2 : _GEN_312; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_314 = 6'h3 == f2_cut_ptr_4 ? f2_cut_data_dataVec_3 : _GEN_313; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_315 = 6'h4 == f2_cut_ptr_4 ? f2_cut_data_dataVec_4 : _GEN_314; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_316 = 6'h5 == f2_cut_ptr_4 ? f2_cut_data_dataVec_5 : _GEN_315; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_317 = 6'h6 == f2_cut_ptr_4 ? f2_cut_data_dataVec_6 : _GEN_316; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_318 = 6'h7 == f2_cut_ptr_4 ? f2_cut_data_dataVec_7 : _GEN_317; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_319 = 6'h8 == f2_cut_ptr_4 ? f2_cut_data_dataVec_8 : _GEN_318; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_320 = 6'h9 == f2_cut_ptr_4 ? f2_cut_data_dataVec_9 : _GEN_319; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_321 = 6'ha == f2_cut_ptr_4 ? f2_cut_data_dataVec_10 : _GEN_320; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_322 = 6'hb == f2_cut_ptr_4 ? f2_cut_data_dataVec_11 : _GEN_321; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_323 = 6'hc == f2_cut_ptr_4 ? f2_cut_data_dataVec_12 : _GEN_322; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_324 = 6'hd == f2_cut_ptr_4 ? f2_cut_data_dataVec_13 : _GEN_323; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_325 = 6'he == f2_cut_ptr_4 ? f2_cut_data_dataVec_14 : _GEN_324; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_326 = 6'hf == f2_cut_ptr_4 ? f2_cut_data_dataVec_15 : _GEN_325; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_327 = 6'h10 == f2_cut_ptr_4 ? f2_cut_data_dataVec_16 : _GEN_326; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_328 = 6'h11 == f2_cut_ptr_4 ? f2_cut_data_dataVec_17 : _GEN_327; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_329 = 6'h12 == f2_cut_ptr_4 ? f2_cut_data_dataVec_18 : _GEN_328; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_330 = 6'h13 == f2_cut_ptr_4 ? f2_cut_data_dataVec_19 : _GEN_329; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_331 = 6'h14 == f2_cut_ptr_4 ? f2_cut_data_dataVec_20 : _GEN_330; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_332 = 6'h15 == f2_cut_ptr_4 ? f2_cut_data_dataVec_21 : _GEN_331; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_333 = 6'h16 == f2_cut_ptr_4 ? f2_cut_data_dataVec_22 : _GEN_332; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_334 = 6'h17 == f2_cut_ptr_4 ? f2_cut_data_dataVec_23 : _GEN_333; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_335 = 6'h18 == f2_cut_ptr_4 ? f2_cut_data_dataVec_24 : _GEN_334; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_336 = 6'h19 == f2_cut_ptr_4 ? f2_cut_data_dataVec_25 : _GEN_335; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_337 = 6'h1a == f2_cut_ptr_4 ? f2_cut_data_dataVec_26 : _GEN_336; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_338 = 6'h1b == f2_cut_ptr_4 ? f2_cut_data_dataVec_27 : _GEN_337; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_339 = 6'h1c == f2_cut_ptr_4 ? f2_cut_data_dataVec_28 : _GEN_338; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_340 = 6'h1d == f2_cut_ptr_4 ? f2_cut_data_dataVec_29 : _GEN_339; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_341 = 6'h1e == f2_cut_ptr_4 ? f2_cut_data_dataVec_30 : _GEN_340; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_342 = 6'h1f == f2_cut_ptr_4 ? f2_cut_data_dataVec_31 : _GEN_341; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_343 = 6'h20 == f2_cut_ptr_4 ? f2_cut_data_dataVec_32 : _GEN_342; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_344 = 6'h21 == f2_cut_ptr_4 ? f2_cut_data_dataVec_33 : _GEN_343; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_345 = 6'h22 == f2_cut_ptr_4 ? f2_cut_data_dataVec_34 : _GEN_344; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_346 = 6'h23 == f2_cut_ptr_4 ? f2_cut_data_dataVec_35 : _GEN_345; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_347 = 6'h24 == f2_cut_ptr_4 ? f2_cut_data_dataVec_36 : _GEN_346; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_348 = 6'h25 == f2_cut_ptr_4 ? f2_cut_data_dataVec_37 : _GEN_347; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_349 = 6'h26 == f2_cut_ptr_4 ? f2_cut_data_dataVec_38 : _GEN_348; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_350 = 6'h27 == f2_cut_ptr_4 ? f2_cut_data_dataVec_39 : _GEN_349; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_351 = 6'h28 == f2_cut_ptr_4 ? f2_cut_data_dataVec_40 : _GEN_350; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_352 = 6'h29 == f2_cut_ptr_4 ? f2_cut_data_dataVec_41 : _GEN_351; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_353 = 6'h2a == f2_cut_ptr_4 ? f2_cut_data_dataVec_42 : _GEN_352; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_354 = 6'h2b == f2_cut_ptr_4 ? f2_cut_data_dataVec_43 : _GEN_353; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_355 = 6'h2c == f2_cut_ptr_4 ? f2_cut_data_dataVec_44 : _GEN_354; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_356 = 6'h2d == f2_cut_ptr_4 ? f2_cut_data_dataVec_45 : _GEN_355; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_357 = 6'h2e == f2_cut_ptr_4 ? f2_cut_data_dataVec_46 : _GEN_356; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_358 = 6'h2f == f2_cut_ptr_4 ? f2_cut_data_dataVec_47 : _GEN_357; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_359 = 6'h30 == f2_cut_ptr_4 ? f2_cut_data_dataVec_48 : _GEN_358; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_360 = 6'h31 == f2_cut_ptr_4 ? f2_cut_data_dataVec_49 : _GEN_359; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_361 = 6'h32 == f2_cut_ptr_4 ? f2_cut_data_dataVec_50 : _GEN_360; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_362 = 6'h33 == f2_cut_ptr_4 ? f2_cut_data_dataVec_51 : _GEN_361; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_363 = 6'h34 == f2_cut_ptr_4 ? f2_cut_data_dataVec_52 : _GEN_362; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_364 = 6'h35 == f2_cut_ptr_4 ? f2_cut_data_dataVec_53 : _GEN_363; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_365 = 6'h36 == f2_cut_ptr_4 ? f2_cut_data_dataVec_54 : _GEN_364; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_366 = 6'h37 == f2_cut_ptr_4 ? f2_cut_data_dataVec_55 : _GEN_365; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_367 = 6'h38 == f2_cut_ptr_4 ? f2_cut_data_dataVec_56 : _GEN_366; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_368 = 6'h39 == f2_cut_ptr_4 ? f2_cut_data_dataVec_57 : _GEN_367; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_369 = 6'h3a == f2_cut_ptr_4 ? f2_cut_data_dataVec_58 : _GEN_368; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_370 = 6'h3b == f2_cut_ptr_4 ? f2_cut_data_dataVec_59 : _GEN_369; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_371 = 6'h3c == f2_cut_ptr_4 ? f2_cut_data_dataVec_60 : _GEN_370; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_372 = 6'h3d == f2_cut_ptr_4 ? f2_cut_data_dataVec_61 : _GEN_371; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_373 = 6'h3e == f2_cut_ptr_4 ? f2_cut_data_dataVec_62 : _GEN_372; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_376 = 6'h1 == f2_cut_ptr_5 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_377 = 6'h2 == f2_cut_ptr_5 ? f2_cut_data_dataVec_2 : _GEN_376; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_378 = 6'h3 == f2_cut_ptr_5 ? f2_cut_data_dataVec_3 : _GEN_377; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_379 = 6'h4 == f2_cut_ptr_5 ? f2_cut_data_dataVec_4 : _GEN_378; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_380 = 6'h5 == f2_cut_ptr_5 ? f2_cut_data_dataVec_5 : _GEN_379; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_381 = 6'h6 == f2_cut_ptr_5 ? f2_cut_data_dataVec_6 : _GEN_380; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_382 = 6'h7 == f2_cut_ptr_5 ? f2_cut_data_dataVec_7 : _GEN_381; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_383 = 6'h8 == f2_cut_ptr_5 ? f2_cut_data_dataVec_8 : _GEN_382; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_384 = 6'h9 == f2_cut_ptr_5 ? f2_cut_data_dataVec_9 : _GEN_383; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_385 = 6'ha == f2_cut_ptr_5 ? f2_cut_data_dataVec_10 : _GEN_384; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_386 = 6'hb == f2_cut_ptr_5 ? f2_cut_data_dataVec_11 : _GEN_385; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_387 = 6'hc == f2_cut_ptr_5 ? f2_cut_data_dataVec_12 : _GEN_386; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_388 = 6'hd == f2_cut_ptr_5 ? f2_cut_data_dataVec_13 : _GEN_387; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_389 = 6'he == f2_cut_ptr_5 ? f2_cut_data_dataVec_14 : _GEN_388; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_390 = 6'hf == f2_cut_ptr_5 ? f2_cut_data_dataVec_15 : _GEN_389; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_391 = 6'h10 == f2_cut_ptr_5 ? f2_cut_data_dataVec_16 : _GEN_390; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_392 = 6'h11 == f2_cut_ptr_5 ? f2_cut_data_dataVec_17 : _GEN_391; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_393 = 6'h12 == f2_cut_ptr_5 ? f2_cut_data_dataVec_18 : _GEN_392; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_394 = 6'h13 == f2_cut_ptr_5 ? f2_cut_data_dataVec_19 : _GEN_393; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_395 = 6'h14 == f2_cut_ptr_5 ? f2_cut_data_dataVec_20 : _GEN_394; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_396 = 6'h15 == f2_cut_ptr_5 ? f2_cut_data_dataVec_21 : _GEN_395; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_397 = 6'h16 == f2_cut_ptr_5 ? f2_cut_data_dataVec_22 : _GEN_396; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_398 = 6'h17 == f2_cut_ptr_5 ? f2_cut_data_dataVec_23 : _GEN_397; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_399 = 6'h18 == f2_cut_ptr_5 ? f2_cut_data_dataVec_24 : _GEN_398; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_400 = 6'h19 == f2_cut_ptr_5 ? f2_cut_data_dataVec_25 : _GEN_399; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_401 = 6'h1a == f2_cut_ptr_5 ? f2_cut_data_dataVec_26 : _GEN_400; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_402 = 6'h1b == f2_cut_ptr_5 ? f2_cut_data_dataVec_27 : _GEN_401; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_403 = 6'h1c == f2_cut_ptr_5 ? f2_cut_data_dataVec_28 : _GEN_402; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_404 = 6'h1d == f2_cut_ptr_5 ? f2_cut_data_dataVec_29 : _GEN_403; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_405 = 6'h1e == f2_cut_ptr_5 ? f2_cut_data_dataVec_30 : _GEN_404; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_406 = 6'h1f == f2_cut_ptr_5 ? f2_cut_data_dataVec_31 : _GEN_405; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_407 = 6'h20 == f2_cut_ptr_5 ? f2_cut_data_dataVec_32 : _GEN_406; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_408 = 6'h21 == f2_cut_ptr_5 ? f2_cut_data_dataVec_33 : _GEN_407; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_409 = 6'h22 == f2_cut_ptr_5 ? f2_cut_data_dataVec_34 : _GEN_408; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_410 = 6'h23 == f2_cut_ptr_5 ? f2_cut_data_dataVec_35 : _GEN_409; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_411 = 6'h24 == f2_cut_ptr_5 ? f2_cut_data_dataVec_36 : _GEN_410; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_412 = 6'h25 == f2_cut_ptr_5 ? f2_cut_data_dataVec_37 : _GEN_411; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_413 = 6'h26 == f2_cut_ptr_5 ? f2_cut_data_dataVec_38 : _GEN_412; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_414 = 6'h27 == f2_cut_ptr_5 ? f2_cut_data_dataVec_39 : _GEN_413; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_415 = 6'h28 == f2_cut_ptr_5 ? f2_cut_data_dataVec_40 : _GEN_414; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_416 = 6'h29 == f2_cut_ptr_5 ? f2_cut_data_dataVec_41 : _GEN_415; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_417 = 6'h2a == f2_cut_ptr_5 ? f2_cut_data_dataVec_42 : _GEN_416; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_418 = 6'h2b == f2_cut_ptr_5 ? f2_cut_data_dataVec_43 : _GEN_417; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_419 = 6'h2c == f2_cut_ptr_5 ? f2_cut_data_dataVec_44 : _GEN_418; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_420 = 6'h2d == f2_cut_ptr_5 ? f2_cut_data_dataVec_45 : _GEN_419; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_421 = 6'h2e == f2_cut_ptr_5 ? f2_cut_data_dataVec_46 : _GEN_420; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_422 = 6'h2f == f2_cut_ptr_5 ? f2_cut_data_dataVec_47 : _GEN_421; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_423 = 6'h30 == f2_cut_ptr_5 ? f2_cut_data_dataVec_48 : _GEN_422; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_424 = 6'h31 == f2_cut_ptr_5 ? f2_cut_data_dataVec_49 : _GEN_423; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_425 = 6'h32 == f2_cut_ptr_5 ? f2_cut_data_dataVec_50 : _GEN_424; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_426 = 6'h33 == f2_cut_ptr_5 ? f2_cut_data_dataVec_51 : _GEN_425; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_427 = 6'h34 == f2_cut_ptr_5 ? f2_cut_data_dataVec_52 : _GEN_426; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_428 = 6'h35 == f2_cut_ptr_5 ? f2_cut_data_dataVec_53 : _GEN_427; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_429 = 6'h36 == f2_cut_ptr_5 ? f2_cut_data_dataVec_54 : _GEN_428; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_430 = 6'h37 == f2_cut_ptr_5 ? f2_cut_data_dataVec_55 : _GEN_429; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_431 = 6'h38 == f2_cut_ptr_5 ? f2_cut_data_dataVec_56 : _GEN_430; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_432 = 6'h39 == f2_cut_ptr_5 ? f2_cut_data_dataVec_57 : _GEN_431; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_433 = 6'h3a == f2_cut_ptr_5 ? f2_cut_data_dataVec_58 : _GEN_432; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_434 = 6'h3b == f2_cut_ptr_5 ? f2_cut_data_dataVec_59 : _GEN_433; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_435 = 6'h3c == f2_cut_ptr_5 ? f2_cut_data_dataVec_60 : _GEN_434; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_436 = 6'h3d == f2_cut_ptr_5 ? f2_cut_data_dataVec_61 : _GEN_435; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_437 = 6'h3e == f2_cut_ptr_5 ? f2_cut_data_dataVec_62 : _GEN_436; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_440 = 6'h1 == f2_cut_ptr_6 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_441 = 6'h2 == f2_cut_ptr_6 ? f2_cut_data_dataVec_2 : _GEN_440; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_442 = 6'h3 == f2_cut_ptr_6 ? f2_cut_data_dataVec_3 : _GEN_441; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_443 = 6'h4 == f2_cut_ptr_6 ? f2_cut_data_dataVec_4 : _GEN_442; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_444 = 6'h5 == f2_cut_ptr_6 ? f2_cut_data_dataVec_5 : _GEN_443; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_445 = 6'h6 == f2_cut_ptr_6 ? f2_cut_data_dataVec_6 : _GEN_444; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_446 = 6'h7 == f2_cut_ptr_6 ? f2_cut_data_dataVec_7 : _GEN_445; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_447 = 6'h8 == f2_cut_ptr_6 ? f2_cut_data_dataVec_8 : _GEN_446; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_448 = 6'h9 == f2_cut_ptr_6 ? f2_cut_data_dataVec_9 : _GEN_447; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_449 = 6'ha == f2_cut_ptr_6 ? f2_cut_data_dataVec_10 : _GEN_448; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_450 = 6'hb == f2_cut_ptr_6 ? f2_cut_data_dataVec_11 : _GEN_449; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_451 = 6'hc == f2_cut_ptr_6 ? f2_cut_data_dataVec_12 : _GEN_450; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_452 = 6'hd == f2_cut_ptr_6 ? f2_cut_data_dataVec_13 : _GEN_451; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_453 = 6'he == f2_cut_ptr_6 ? f2_cut_data_dataVec_14 : _GEN_452; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_454 = 6'hf == f2_cut_ptr_6 ? f2_cut_data_dataVec_15 : _GEN_453; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_455 = 6'h10 == f2_cut_ptr_6 ? f2_cut_data_dataVec_16 : _GEN_454; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_456 = 6'h11 == f2_cut_ptr_6 ? f2_cut_data_dataVec_17 : _GEN_455; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_457 = 6'h12 == f2_cut_ptr_6 ? f2_cut_data_dataVec_18 : _GEN_456; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_458 = 6'h13 == f2_cut_ptr_6 ? f2_cut_data_dataVec_19 : _GEN_457; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_459 = 6'h14 == f2_cut_ptr_6 ? f2_cut_data_dataVec_20 : _GEN_458; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_460 = 6'h15 == f2_cut_ptr_6 ? f2_cut_data_dataVec_21 : _GEN_459; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_461 = 6'h16 == f2_cut_ptr_6 ? f2_cut_data_dataVec_22 : _GEN_460; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_462 = 6'h17 == f2_cut_ptr_6 ? f2_cut_data_dataVec_23 : _GEN_461; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_463 = 6'h18 == f2_cut_ptr_6 ? f2_cut_data_dataVec_24 : _GEN_462; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_464 = 6'h19 == f2_cut_ptr_6 ? f2_cut_data_dataVec_25 : _GEN_463; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_465 = 6'h1a == f2_cut_ptr_6 ? f2_cut_data_dataVec_26 : _GEN_464; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_466 = 6'h1b == f2_cut_ptr_6 ? f2_cut_data_dataVec_27 : _GEN_465; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_467 = 6'h1c == f2_cut_ptr_6 ? f2_cut_data_dataVec_28 : _GEN_466; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_468 = 6'h1d == f2_cut_ptr_6 ? f2_cut_data_dataVec_29 : _GEN_467; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_469 = 6'h1e == f2_cut_ptr_6 ? f2_cut_data_dataVec_30 : _GEN_468; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_470 = 6'h1f == f2_cut_ptr_6 ? f2_cut_data_dataVec_31 : _GEN_469; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_471 = 6'h20 == f2_cut_ptr_6 ? f2_cut_data_dataVec_32 : _GEN_470; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_472 = 6'h21 == f2_cut_ptr_6 ? f2_cut_data_dataVec_33 : _GEN_471; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_473 = 6'h22 == f2_cut_ptr_6 ? f2_cut_data_dataVec_34 : _GEN_472; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_474 = 6'h23 == f2_cut_ptr_6 ? f2_cut_data_dataVec_35 : _GEN_473; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_475 = 6'h24 == f2_cut_ptr_6 ? f2_cut_data_dataVec_36 : _GEN_474; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_476 = 6'h25 == f2_cut_ptr_6 ? f2_cut_data_dataVec_37 : _GEN_475; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_477 = 6'h26 == f2_cut_ptr_6 ? f2_cut_data_dataVec_38 : _GEN_476; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_478 = 6'h27 == f2_cut_ptr_6 ? f2_cut_data_dataVec_39 : _GEN_477; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_479 = 6'h28 == f2_cut_ptr_6 ? f2_cut_data_dataVec_40 : _GEN_478; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_480 = 6'h29 == f2_cut_ptr_6 ? f2_cut_data_dataVec_41 : _GEN_479; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_481 = 6'h2a == f2_cut_ptr_6 ? f2_cut_data_dataVec_42 : _GEN_480; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_482 = 6'h2b == f2_cut_ptr_6 ? f2_cut_data_dataVec_43 : _GEN_481; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_483 = 6'h2c == f2_cut_ptr_6 ? f2_cut_data_dataVec_44 : _GEN_482; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_484 = 6'h2d == f2_cut_ptr_6 ? f2_cut_data_dataVec_45 : _GEN_483; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_485 = 6'h2e == f2_cut_ptr_6 ? f2_cut_data_dataVec_46 : _GEN_484; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_486 = 6'h2f == f2_cut_ptr_6 ? f2_cut_data_dataVec_47 : _GEN_485; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_487 = 6'h30 == f2_cut_ptr_6 ? f2_cut_data_dataVec_48 : _GEN_486; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_488 = 6'h31 == f2_cut_ptr_6 ? f2_cut_data_dataVec_49 : _GEN_487; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_489 = 6'h32 == f2_cut_ptr_6 ? f2_cut_data_dataVec_50 : _GEN_488; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_490 = 6'h33 == f2_cut_ptr_6 ? f2_cut_data_dataVec_51 : _GEN_489; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_491 = 6'h34 == f2_cut_ptr_6 ? f2_cut_data_dataVec_52 : _GEN_490; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_492 = 6'h35 == f2_cut_ptr_6 ? f2_cut_data_dataVec_53 : _GEN_491; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_493 = 6'h36 == f2_cut_ptr_6 ? f2_cut_data_dataVec_54 : _GEN_492; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_494 = 6'h37 == f2_cut_ptr_6 ? f2_cut_data_dataVec_55 : _GEN_493; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_495 = 6'h38 == f2_cut_ptr_6 ? f2_cut_data_dataVec_56 : _GEN_494; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_496 = 6'h39 == f2_cut_ptr_6 ? f2_cut_data_dataVec_57 : _GEN_495; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_497 = 6'h3a == f2_cut_ptr_6 ? f2_cut_data_dataVec_58 : _GEN_496; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_498 = 6'h3b == f2_cut_ptr_6 ? f2_cut_data_dataVec_59 : _GEN_497; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_499 = 6'h3c == f2_cut_ptr_6 ? f2_cut_data_dataVec_60 : _GEN_498; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_500 = 6'h3d == f2_cut_ptr_6 ? f2_cut_data_dataVec_61 : _GEN_499; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_501 = 6'h3e == f2_cut_ptr_6 ? f2_cut_data_dataVec_62 : _GEN_500; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_504 = 6'h1 == f2_cut_ptr_7 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_505 = 6'h2 == f2_cut_ptr_7 ? f2_cut_data_dataVec_2 : _GEN_504; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_506 = 6'h3 == f2_cut_ptr_7 ? f2_cut_data_dataVec_3 : _GEN_505; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_507 = 6'h4 == f2_cut_ptr_7 ? f2_cut_data_dataVec_4 : _GEN_506; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_508 = 6'h5 == f2_cut_ptr_7 ? f2_cut_data_dataVec_5 : _GEN_507; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_509 = 6'h6 == f2_cut_ptr_7 ? f2_cut_data_dataVec_6 : _GEN_508; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_510 = 6'h7 == f2_cut_ptr_7 ? f2_cut_data_dataVec_7 : _GEN_509; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_511 = 6'h8 == f2_cut_ptr_7 ? f2_cut_data_dataVec_8 : _GEN_510; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_512 = 6'h9 == f2_cut_ptr_7 ? f2_cut_data_dataVec_9 : _GEN_511; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_513 = 6'ha == f2_cut_ptr_7 ? f2_cut_data_dataVec_10 : _GEN_512; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_514 = 6'hb == f2_cut_ptr_7 ? f2_cut_data_dataVec_11 : _GEN_513; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_515 = 6'hc == f2_cut_ptr_7 ? f2_cut_data_dataVec_12 : _GEN_514; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_516 = 6'hd == f2_cut_ptr_7 ? f2_cut_data_dataVec_13 : _GEN_515; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_517 = 6'he == f2_cut_ptr_7 ? f2_cut_data_dataVec_14 : _GEN_516; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_518 = 6'hf == f2_cut_ptr_7 ? f2_cut_data_dataVec_15 : _GEN_517; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_519 = 6'h10 == f2_cut_ptr_7 ? f2_cut_data_dataVec_16 : _GEN_518; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_520 = 6'h11 == f2_cut_ptr_7 ? f2_cut_data_dataVec_17 : _GEN_519; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_521 = 6'h12 == f2_cut_ptr_7 ? f2_cut_data_dataVec_18 : _GEN_520; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_522 = 6'h13 == f2_cut_ptr_7 ? f2_cut_data_dataVec_19 : _GEN_521; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_523 = 6'h14 == f2_cut_ptr_7 ? f2_cut_data_dataVec_20 : _GEN_522; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_524 = 6'h15 == f2_cut_ptr_7 ? f2_cut_data_dataVec_21 : _GEN_523; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_525 = 6'h16 == f2_cut_ptr_7 ? f2_cut_data_dataVec_22 : _GEN_524; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_526 = 6'h17 == f2_cut_ptr_7 ? f2_cut_data_dataVec_23 : _GEN_525; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_527 = 6'h18 == f2_cut_ptr_7 ? f2_cut_data_dataVec_24 : _GEN_526; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_528 = 6'h19 == f2_cut_ptr_7 ? f2_cut_data_dataVec_25 : _GEN_527; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_529 = 6'h1a == f2_cut_ptr_7 ? f2_cut_data_dataVec_26 : _GEN_528; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_530 = 6'h1b == f2_cut_ptr_7 ? f2_cut_data_dataVec_27 : _GEN_529; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_531 = 6'h1c == f2_cut_ptr_7 ? f2_cut_data_dataVec_28 : _GEN_530; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_532 = 6'h1d == f2_cut_ptr_7 ? f2_cut_data_dataVec_29 : _GEN_531; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_533 = 6'h1e == f2_cut_ptr_7 ? f2_cut_data_dataVec_30 : _GEN_532; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_534 = 6'h1f == f2_cut_ptr_7 ? f2_cut_data_dataVec_31 : _GEN_533; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_535 = 6'h20 == f2_cut_ptr_7 ? f2_cut_data_dataVec_32 : _GEN_534; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_536 = 6'h21 == f2_cut_ptr_7 ? f2_cut_data_dataVec_33 : _GEN_535; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_537 = 6'h22 == f2_cut_ptr_7 ? f2_cut_data_dataVec_34 : _GEN_536; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_538 = 6'h23 == f2_cut_ptr_7 ? f2_cut_data_dataVec_35 : _GEN_537; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_539 = 6'h24 == f2_cut_ptr_7 ? f2_cut_data_dataVec_36 : _GEN_538; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_540 = 6'h25 == f2_cut_ptr_7 ? f2_cut_data_dataVec_37 : _GEN_539; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_541 = 6'h26 == f2_cut_ptr_7 ? f2_cut_data_dataVec_38 : _GEN_540; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_542 = 6'h27 == f2_cut_ptr_7 ? f2_cut_data_dataVec_39 : _GEN_541; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_543 = 6'h28 == f2_cut_ptr_7 ? f2_cut_data_dataVec_40 : _GEN_542; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_544 = 6'h29 == f2_cut_ptr_7 ? f2_cut_data_dataVec_41 : _GEN_543; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_545 = 6'h2a == f2_cut_ptr_7 ? f2_cut_data_dataVec_42 : _GEN_544; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_546 = 6'h2b == f2_cut_ptr_7 ? f2_cut_data_dataVec_43 : _GEN_545; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_547 = 6'h2c == f2_cut_ptr_7 ? f2_cut_data_dataVec_44 : _GEN_546; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_548 = 6'h2d == f2_cut_ptr_7 ? f2_cut_data_dataVec_45 : _GEN_547; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_549 = 6'h2e == f2_cut_ptr_7 ? f2_cut_data_dataVec_46 : _GEN_548; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_550 = 6'h2f == f2_cut_ptr_7 ? f2_cut_data_dataVec_47 : _GEN_549; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_551 = 6'h30 == f2_cut_ptr_7 ? f2_cut_data_dataVec_48 : _GEN_550; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_552 = 6'h31 == f2_cut_ptr_7 ? f2_cut_data_dataVec_49 : _GEN_551; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_553 = 6'h32 == f2_cut_ptr_7 ? f2_cut_data_dataVec_50 : _GEN_552; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_554 = 6'h33 == f2_cut_ptr_7 ? f2_cut_data_dataVec_51 : _GEN_553; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_555 = 6'h34 == f2_cut_ptr_7 ? f2_cut_data_dataVec_52 : _GEN_554; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_556 = 6'h35 == f2_cut_ptr_7 ? f2_cut_data_dataVec_53 : _GEN_555; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_557 = 6'h36 == f2_cut_ptr_7 ? f2_cut_data_dataVec_54 : _GEN_556; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_558 = 6'h37 == f2_cut_ptr_7 ? f2_cut_data_dataVec_55 : _GEN_557; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_559 = 6'h38 == f2_cut_ptr_7 ? f2_cut_data_dataVec_56 : _GEN_558; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_560 = 6'h39 == f2_cut_ptr_7 ? f2_cut_data_dataVec_57 : _GEN_559; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_561 = 6'h3a == f2_cut_ptr_7 ? f2_cut_data_dataVec_58 : _GEN_560; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_562 = 6'h3b == f2_cut_ptr_7 ? f2_cut_data_dataVec_59 : _GEN_561; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_563 = 6'h3c == f2_cut_ptr_7 ? f2_cut_data_dataVec_60 : _GEN_562; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_564 = 6'h3d == f2_cut_ptr_7 ? f2_cut_data_dataVec_61 : _GEN_563; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_565 = 6'h3e == f2_cut_ptr_7 ? f2_cut_data_dataVec_62 : _GEN_564; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_568 = 6'h1 == f2_cut_ptr_8 ? f2_cut_data_dataVec_1 : f2_cut_data_dataVec_0; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_569 = 6'h2 == f2_cut_ptr_8 ? f2_cut_data_dataVec_2 : _GEN_568; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_570 = 6'h3 == f2_cut_ptr_8 ? f2_cut_data_dataVec_3 : _GEN_569; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_571 = 6'h4 == f2_cut_ptr_8 ? f2_cut_data_dataVec_4 : _GEN_570; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_572 = 6'h5 == f2_cut_ptr_8 ? f2_cut_data_dataVec_5 : _GEN_571; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_573 = 6'h6 == f2_cut_ptr_8 ? f2_cut_data_dataVec_6 : _GEN_572; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_574 = 6'h7 == f2_cut_ptr_8 ? f2_cut_data_dataVec_7 : _GEN_573; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_575 = 6'h8 == f2_cut_ptr_8 ? f2_cut_data_dataVec_8 : _GEN_574; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_576 = 6'h9 == f2_cut_ptr_8 ? f2_cut_data_dataVec_9 : _GEN_575; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_577 = 6'ha == f2_cut_ptr_8 ? f2_cut_data_dataVec_10 : _GEN_576; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_578 = 6'hb == f2_cut_ptr_8 ? f2_cut_data_dataVec_11 : _GEN_577; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_579 = 6'hc == f2_cut_ptr_8 ? f2_cut_data_dataVec_12 : _GEN_578; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_580 = 6'hd == f2_cut_ptr_8 ? f2_cut_data_dataVec_13 : _GEN_579; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_581 = 6'he == f2_cut_ptr_8 ? f2_cut_data_dataVec_14 : _GEN_580; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_582 = 6'hf == f2_cut_ptr_8 ? f2_cut_data_dataVec_15 : _GEN_581; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_583 = 6'h10 == f2_cut_ptr_8 ? f2_cut_data_dataVec_16 : _GEN_582; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_584 = 6'h11 == f2_cut_ptr_8 ? f2_cut_data_dataVec_17 : _GEN_583; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_585 = 6'h12 == f2_cut_ptr_8 ? f2_cut_data_dataVec_18 : _GEN_584; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_586 = 6'h13 == f2_cut_ptr_8 ? f2_cut_data_dataVec_19 : _GEN_585; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_587 = 6'h14 == f2_cut_ptr_8 ? f2_cut_data_dataVec_20 : _GEN_586; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_588 = 6'h15 == f2_cut_ptr_8 ? f2_cut_data_dataVec_21 : _GEN_587; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_589 = 6'h16 == f2_cut_ptr_8 ? f2_cut_data_dataVec_22 : _GEN_588; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_590 = 6'h17 == f2_cut_ptr_8 ? f2_cut_data_dataVec_23 : _GEN_589; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_591 = 6'h18 == f2_cut_ptr_8 ? f2_cut_data_dataVec_24 : _GEN_590; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_592 = 6'h19 == f2_cut_ptr_8 ? f2_cut_data_dataVec_25 : _GEN_591; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_593 = 6'h1a == f2_cut_ptr_8 ? f2_cut_data_dataVec_26 : _GEN_592; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_594 = 6'h1b == f2_cut_ptr_8 ? f2_cut_data_dataVec_27 : _GEN_593; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_595 = 6'h1c == f2_cut_ptr_8 ? f2_cut_data_dataVec_28 : _GEN_594; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_596 = 6'h1d == f2_cut_ptr_8 ? f2_cut_data_dataVec_29 : _GEN_595; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_597 = 6'h1e == f2_cut_ptr_8 ? f2_cut_data_dataVec_30 : _GEN_596; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_598 = 6'h1f == f2_cut_ptr_8 ? f2_cut_data_dataVec_31 : _GEN_597; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_599 = 6'h20 == f2_cut_ptr_8 ? f2_cut_data_dataVec_32 : _GEN_598; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_600 = 6'h21 == f2_cut_ptr_8 ? f2_cut_data_dataVec_33 : _GEN_599; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_601 = 6'h22 == f2_cut_ptr_8 ? f2_cut_data_dataVec_34 : _GEN_600; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_602 = 6'h23 == f2_cut_ptr_8 ? f2_cut_data_dataVec_35 : _GEN_601; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_603 = 6'h24 == f2_cut_ptr_8 ? f2_cut_data_dataVec_36 : _GEN_602; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_604 = 6'h25 == f2_cut_ptr_8 ? f2_cut_data_dataVec_37 : _GEN_603; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_605 = 6'h26 == f2_cut_ptr_8 ? f2_cut_data_dataVec_38 : _GEN_604; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_606 = 6'h27 == f2_cut_ptr_8 ? f2_cut_data_dataVec_39 : _GEN_605; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_607 = 6'h28 == f2_cut_ptr_8 ? f2_cut_data_dataVec_40 : _GEN_606; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_608 = 6'h29 == f2_cut_ptr_8 ? f2_cut_data_dataVec_41 : _GEN_607; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_609 = 6'h2a == f2_cut_ptr_8 ? f2_cut_data_dataVec_42 : _GEN_608; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_610 = 6'h2b == f2_cut_ptr_8 ? f2_cut_data_dataVec_43 : _GEN_609; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_611 = 6'h2c == f2_cut_ptr_8 ? f2_cut_data_dataVec_44 : _GEN_610; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_612 = 6'h2d == f2_cut_ptr_8 ? f2_cut_data_dataVec_45 : _GEN_611; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_613 = 6'h2e == f2_cut_ptr_8 ? f2_cut_data_dataVec_46 : _GEN_612; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_614 = 6'h2f == f2_cut_ptr_8 ? f2_cut_data_dataVec_47 : _GEN_613; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_615 = 6'h30 == f2_cut_ptr_8 ? f2_cut_data_dataVec_48 : _GEN_614; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_616 = 6'h31 == f2_cut_ptr_8 ? f2_cut_data_dataVec_49 : _GEN_615; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_617 = 6'h32 == f2_cut_ptr_8 ? f2_cut_data_dataVec_50 : _GEN_616; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_618 = 6'h33 == f2_cut_ptr_8 ? f2_cut_data_dataVec_51 : _GEN_617; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_619 = 6'h34 == f2_cut_ptr_8 ? f2_cut_data_dataVec_52 : _GEN_618; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_620 = 6'h35 == f2_cut_ptr_8 ? f2_cut_data_dataVec_53 : _GEN_619; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_621 = 6'h36 == f2_cut_ptr_8 ? f2_cut_data_dataVec_54 : _GEN_620; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_622 = 6'h37 == f2_cut_ptr_8 ? f2_cut_data_dataVec_55 : _GEN_621; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_623 = 6'h38 == f2_cut_ptr_8 ? f2_cut_data_dataVec_56 : _GEN_622; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_624 = 6'h39 == f2_cut_ptr_8 ? f2_cut_data_dataVec_57 : _GEN_623; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_625 = 6'h3a == f2_cut_ptr_8 ? f2_cut_data_dataVec_58 : _GEN_624; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_626 = 6'h3b == f2_cut_ptr_8 ? f2_cut_data_dataVec_59 : _GEN_625; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_627 = 6'h3c == f2_cut_ptr_8 ? f2_cut_data_dataVec_60 : _GEN_626; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_628 = 6'h3d == f2_cut_ptr_8 ? f2_cut_data_dataVec_61 : _GEN_627; // @[IFU.scala 281:{19,19}]
  wire [15:0] _GEN_629 = 6'h3e == f2_cut_ptr_8 ? f2_cut_data_dataVec_62 : _GEN_628; // @[IFU.scala 281:{19,19}]
  wire  _f2_crossPageFault_T_1 = f2_pc_0[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_0 = _f2_crossPageFault_T_1 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_0_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_9 = f2_pc_1[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_1 = _f2_crossPageFault_T_9 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_1_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_17 = f2_pc_2[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_2 = _f2_crossPageFault_T_17 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_2_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_25 = f2_pc_3[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_3 = _f2_crossPageFault_T_25 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_3_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_33 = f2_pc_4[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_4 = _f2_crossPageFault_T_33 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_4_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_41 = f2_pc_5[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_5 = _f2_crossPageFault_T_41 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_5_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_49 = f2_pc_6[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_6 = _f2_crossPageFault_T_49 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_6_isRVC; // @[IFU.scala 307:147]
  wire  _f2_crossPageFault_T_57 = f2_pc_7[5:0] == 6'h3e; // @[IFU.scala 263:29]
  wire  f2_crossPageFault_7 = _f2_crossPageFault_T_57 & _f2_mmio_T_2 & f2_doubleLine &
    io_icacheInter_1_resp_bits_tlbExcp_pageFault & ~preDecoder_io_out_pd_7_isRVC; // @[IFU.scala 307:147]
  reg [38:0] f3_ftq_req_startAddr; // @[Reg.scala 16:16]
  reg  f3_ftq_req_ftqOffset_valid; // @[Reg.scala 16:16]
  reg [2:0] f3_ftq_req_ftqOffset_bits; // @[Reg.scala 16:16]
  reg [38:0] f3_ftq_req_nextStartAddr; // @[Reg.scala 16:16]
  reg  f3_doubleLine; // @[Reg.scala 16:16]
  wire  f3_fire = io_toIbuffer_ready & io_toIbuffer_valid; // @[Decoupled.scala 50:35]
  reg [15:0] f3_cut_data_0; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_1; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_2; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_3; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_4; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_5; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_6; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_7; // @[Reg.scala 16:16]
  reg [15:0] f3_cut_data_8; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_0; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_1; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_2; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_3; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_4; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_5; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_6; // @[Reg.scala 16:16]
  reg [31:0] f3_expd_instr_7; // @[Reg.scala 16:16]
  reg  f3_pd_0_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_0_brType; // @[Reg.scala 16:16]
  reg  f3_pd_0_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_0_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_1_valid; // @[Reg.scala 16:16]
  reg  f3_pd_1_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_1_brType; // @[Reg.scala 16:16]
  reg  f3_pd_1_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_1_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_2_valid; // @[Reg.scala 16:16]
  reg  f3_pd_2_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_2_brType; // @[Reg.scala 16:16]
  reg  f3_pd_2_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_2_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_3_valid; // @[Reg.scala 16:16]
  reg  f3_pd_3_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_3_brType; // @[Reg.scala 16:16]
  reg  f3_pd_3_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_3_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_4_valid; // @[Reg.scala 16:16]
  reg  f3_pd_4_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_4_brType; // @[Reg.scala 16:16]
  reg  f3_pd_4_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_4_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_5_valid; // @[Reg.scala 16:16]
  reg  f3_pd_5_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_5_brType; // @[Reg.scala 16:16]
  reg  f3_pd_5_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_5_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_6_valid; // @[Reg.scala 16:16]
  reg  f3_pd_6_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_6_brType; // @[Reg.scala 16:16]
  reg  f3_pd_6_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_6_isRet; // @[Reg.scala 16:16]
  reg  f3_pd_7_valid; // @[Reg.scala 16:16]
  reg  f3_pd_7_isRVC; // @[Reg.scala 16:16]
  reg [1:0] f3_pd_7_brType; // @[Reg.scala 16:16]
  reg  f3_pd_7_isCall; // @[Reg.scala 16:16]
  reg  f3_pd_7_isRet; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_0; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_1; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_2; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_3; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_4; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_5; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_6; // @[Reg.scala 16:16]
  reg [63:0] f3_jump_offset_7; // @[Reg.scala 16:16]
  reg  f3_af_vec_0; // @[Reg.scala 16:16]
  reg  f3_af_vec_1; // @[Reg.scala 16:16]
  reg  f3_af_vec_2; // @[Reg.scala 16:16]
  reg  f3_af_vec_3; // @[Reg.scala 16:16]
  reg  f3_af_vec_4; // @[Reg.scala 16:16]
  reg  f3_af_vec_5; // @[Reg.scala 16:16]
  reg  f3_af_vec_6; // @[Reg.scala 16:16]
  reg  f3_af_vec_7; // @[Reg.scala 16:16]
  reg  f3_pf_vec_0; // @[Reg.scala 16:16]
  reg  f3_pf_vec_1; // @[Reg.scala 16:16]
  reg  f3_pf_vec_2; // @[Reg.scala 16:16]
  reg  f3_pf_vec_3; // @[Reg.scala 16:16]
  reg  f3_pf_vec_4; // @[Reg.scala 16:16]
  reg  f3_pf_vec_5; // @[Reg.scala 16:16]
  reg  f3_pf_vec_6; // @[Reg.scala 16:16]
  reg  f3_pf_vec_7; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_0; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_1; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_2; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_3; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_4; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_5; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_6; // @[Reg.scala 16:16]
  reg [38:0] f3_pc_7; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_0; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_1; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_2; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_3; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_4; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_5; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_6; // @[Reg.scala 16:16]
  reg [38:0] f3_half_snpc_7; // @[Reg.scala 16:16]
  reg [7:0] f3_instr_range; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_0; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_1; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_2; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_3; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_4; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_5; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_6; // @[Reg.scala 16:16]
  reg [9:0] f3_foldpc_7; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_0; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_1; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_2; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_3; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_4; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_5; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_6; // @[Reg.scala 16:16]
  reg  f3_crossPageFault_7; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_2; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_3; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_4; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_5; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_6; // @[Reg.scala 16:16]
  reg  f3_hasHalfValid_7; // @[Reg.scala 16:16]
  reg [35:0] f3_pAddrs_0; // @[Reg.scala 16:16]
  reg [38:0] f3_resend_vaddr; // @[Reg.scala 16:16]
  reg [15:0] f3_mmio_data_0; // @[IFU.scala 363:28]
  reg [15:0] f3_mmio_data_1; // @[IFU.scala 363:28]
  reg  mmio_is_RVC; // @[IFU.scala 364:32]
  reg [35:0] mmio_resend_addr; // @[IFU.scala 365:32]
  reg  mmio_resend_af; // @[IFU.scala 366:32]
  reg  mmio_resend_pf; // @[IFU.scala 367:32]
  wire [6:0] _mmio_commit_T = {io_rob_commits_0_bits_ftqIdx_flag,io_rob_commits_0_bits_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _mmio_commit_T_2 = _mmio_commit_T == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  wire  _mmio_commit_T_5 = io_rob_commits_0_valid & _mmio_commit_T_2 & io_rob_commits_0_bits_ftqOffset == 3'h0; // @[IFU.scala 374:115]
  wire [6:0] _mmio_commit_T_6 = {io_rob_commits_1_bits_ftqIdx_flag,io_rob_commits_1_bits_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _mmio_commit_T_8 = _mmio_commit_T_6 == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  wire  _mmio_commit_T_11 = io_rob_commits_1_valid & _mmio_commit_T_8 & io_rob_commits_1_bits_ftqOffset == 3'h0; // @[IFU.scala 374:115]
  wire [6:0] _mmio_commit_T_12 = {io_rob_commits_2_bits_ftqIdx_flag,io_rob_commits_2_bits_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _mmio_commit_T_14 = _mmio_commit_T_12 == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  wire  _mmio_commit_T_17 = io_rob_commits_2_valid & _mmio_commit_T_14 & io_rob_commits_2_bits_ftqOffset == 3'h0; // @[IFU.scala 374:115]
  wire [6:0] _mmio_commit_T_18 = {io_rob_commits_3_bits_ftqIdx_flag,io_rob_commits_3_bits_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _mmio_commit_T_20 = _mmio_commit_T_18 == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  wire  _mmio_commit_T_23 = io_rob_commits_3_valid & _mmio_commit_T_20 & io_rob_commits_3_bits_ftqOffset == 3'h0; // @[IFU.scala 374:115]
  wire [3:0] _mmio_commit_T_24 = {_mmio_commit_T_23,_mmio_commit_T_17,_mmio_commit_T_11,_mmio_commit_T_5}; // @[IFU.scala 374:151]
  wire  mmio_commit = |_mmio_commit_T_24; // @[IFU.scala 374:158]
  reg  f3_mmio_to_commit_next; // @[IFU.scala 378:39]
  wire  f3_mmio_can_go = _mmio_redirect_T_1 & ~f3_mmio_to_commit_next; // @[IFU.scala 379:47]
  reg  fromFtqRedirectReg_valid; // @[IFU.scala 381:35]
  reg  fromFtqRedirectReg_bits_ftqIdx_flag; // @[IFU.scala 381:35]
  reg [5:0] fromFtqRedirectReg_bits_ftqIdx_value; // @[IFU.scala 381:35]
  reg [2:0] fromFtqRedirectReg_bits_ftqOffset; // @[IFU.scala 381:35]
  reg  fromFtqRedirectReg_bits_level; // @[IFU.scala 381:35]
  wire  f3_ftq_flush_self = fromFtqRedirectReg_valid & fromFtqRedirectReg_bits_level; // @[IFU.scala 382:56]
  wire  f3_ftq_flush_by_older_differentFlag = fromFtqRedirectReg_bits_ftqIdx_flag ^ f3_ftq_req_ftqIdx_flag; // @[CircularQueuePtr.scala 91:35]
  wire  f3_ftq_flush_by_older_compare = fromFtqRedirectReg_bits_ftqIdx_value < f3_ftq_req_ftqIdx_value; // @[CircularQueuePtr.scala 92:30]
  wire  _f3_ftq_flush_by_older_T = f3_ftq_flush_by_older_differentFlag ^ f3_ftq_flush_by_older_compare; // @[CircularQueuePtr.scala 93:19]
  wire  f3_ftq_flush_by_older = fromFtqRedirectReg_valid & _f3_ftq_flush_by_older_T; // @[IFU.scala 383:56]
  wire  f3_need_not_flush = f3_req_is_mmio & fromFtqRedirectReg_valid & ~f3_ftq_flush_self & ~f3_ftq_flush_by_older; // @[IFU.scala 385:92]
  wire  _T_22 = ~f2_flush; // @[IFU.scala 388:24]
  wire  _T_25 = ~f3_req_is_mmio; // @[IFU.scala 389:36]
  wire  _GEN_769 = f3_req_is_mmio & f3_mmio_req_commit ? 1'h0 : f3_valid; // @[IFU.scala 328:34 390:{62,72}]
  wire  _GEN_770 = f3_fire & ~f3_req_is_mmio ? 1'h0 : _GEN_769; // @[IFU.scala 389:{62,72}]
  wire  _GEN_771 = f2_fire & ~f2_flush | _GEN_770; // @[IFU.scala 388:{54,64}]
  wire [6:0] _redirect_mmio_req_T = {fromFtqRedirectReg_bits_ftqIdx_flag,fromFtqRedirectReg_bits_ftqIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _redirect_mmio_req_T_2 = _redirect_mmio_req_T == _f3_wb_not_flush_T_1; // @[CircularQueuePtr.scala 62:52]
  wire  redirect_mmio_req = fromFtqRedirectReg_valid & _redirect_mmio_req_T_2 & fromFtqRedirectReg_bits_ftqOffset == 3'h0
    ; // @[IFU.scala 395:93]
  reg  REG; // @[IFU.scala 397:15]
  wire  _GEN_773 = redirect_mmio_req ? 1'h0 : f3_mmio_use_seq_pc; // @[IFU.scala 392:35 398:{64,85}]
  wire  _GEN_774 = REG & f3_req_is_mmio | _GEN_773; // @[IFU.scala 397:{64,85}]
  wire  _mmio_state_T = io_uncacheInter_toUncache_ready & io_uncacheInter_toUncache_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _mmio_state_T_1 = _mmio_state_T ? 4'h2 : 4'h1; // @[IFU.scala 413:25]
  wire  _T_34 = io_uncacheInter_fromUncache_ready & io_uncacheInter_fromUncache_valid; // @[Decoupled.scala 50:35]
  wire  isRVC = io_uncacheInter_fromUncache_bits_data[1:0] != 2'h3; // @[IFU.scala 418:51]
  wire  needResend = ~isRVC & f3_pAddrs_0[2:1] == 2'h3; // @[IFU.scala 419:35]
  wire [3:0] _mmio_state_T_2 = needResend ? 4'h3 : 4'h8; // @[IFU.scala 420:29]
  wire [3:0] _GEN_776 = _T_34 ? _mmio_state_T_2 : mmio_state; // @[IFU.scala 417:31 420:22 371:27]
  wire  _GEN_777 = _T_34 ? isRVC : mmio_is_RVC; // @[IFU.scala 417:31 422:23 364:32]
  wire [15:0] _GEN_778 = _T_34 ? io_uncacheInter_fromUncache_bits_data[15:0] : f3_mmio_data_0; // @[IFU.scala 363:28 417:31 423:29]
  wire [15:0] _GEN_779 = _T_34 ? io_uncacheInter_fromUncache_bits_data[31:16] : f3_mmio_data_1; // @[IFU.scala 363:28 417:31 424:29]
  wire [3:0] _GEN_780 = io_iTLBInter_req_valid & ~io_iTLBInter_resp_bits_miss ? 4'h4 : mmio_state; // @[IFU.scala 429:69 430:20 371:27]
  wire  tlbExept = io_iTLBInter_resp_bits_excp_pf_instr | io_iTLBInter_resp_bits_excp_af_instr; // @[IFU.scala 435:59]
  wire [3:0] _mmio_state_T_3 = tlbExept ? 4'h8 : 4'h5; // @[IFU.scala 437:25]
  wire  pmpExcpAF = io_pmp_resp_instr | ~io_pmp_resp_mmio; // @[IFU.scala 444:45]
  wire [3:0] _mmio_state_T_4 = pmpExcpAF ? 4'h8 : 4'h6; // @[IFU.scala 445:29]
  wire [3:0] _mmio_state_T_6 = _mmio_state_T ? 4'h7 : 4'h6; // @[IFU.scala 450:25]
  wire [3:0] _GEN_781 = _T_34 ? 4'h8 : mmio_state; // @[IFU.scala 454:31 455:22 371:27]
  wire [15:0] _GEN_782 = _T_34 ? io_uncacheInter_fromUncache_bits_data[15:0] : f3_mmio_data_1; // @[IFU.scala 363:28 454:31 456:29]
  wire [3:0] _GEN_783 = mmio_commit ? 4'h9 : mmio_state; // @[IFU.scala 461:24 462:23 371:27]
  wire [3:0] _GEN_784 = 4'h9 == mmio_state ? 4'h0 : mmio_state; // @[IFU.scala 405:21 468:20 371:27]
  wire  _GEN_785 = 4'h9 == mmio_state ? 1'h0 : mmio_is_RVC; // @[IFU.scala 405:21 469:21 364:32]
  wire [35:0] _GEN_786 = 4'h9 == mmio_state ? 36'h0 : mmio_resend_addr; // @[IFU.scala 405:21 470:26 365:32]
  wire [3:0] _GEN_787 = 4'h8 == mmio_state ? _GEN_783 : _GEN_784; // @[IFU.scala 405:21]
  wire  _GEN_788 = 4'h8 == mmio_state ? mmio_is_RVC : _GEN_785; // @[IFU.scala 405:21 364:32]
  wire [35:0] _GEN_789 = 4'h8 == mmio_state ? mmio_resend_addr : _GEN_786; // @[IFU.scala 405:21 365:32]
  wire [3:0] _GEN_790 = 4'h7 == mmio_state ? _GEN_781 : _GEN_787; // @[IFU.scala 405:21]
  wire [15:0] _GEN_791 = 4'h7 == mmio_state ? _GEN_782 : f3_mmio_data_1; // @[IFU.scala 405:21 363:28]
  wire  _GEN_792 = 4'h7 == mmio_state ? mmio_is_RVC : _GEN_788; // @[IFU.scala 405:21 364:32]
  wire [35:0] _GEN_793 = 4'h7 == mmio_state ? mmio_resend_addr : _GEN_789; // @[IFU.scala 405:21 365:32]
  wire [3:0] _GEN_794 = 4'h6 == mmio_state ? _mmio_state_T_6 : _GEN_790; // @[IFU.scala 405:21 450:18]
  wire [15:0] _GEN_795 = 4'h6 == mmio_state ? f3_mmio_data_1 : _GEN_791; // @[IFU.scala 405:21 363:28]
  wire  _GEN_796 = 4'h6 == mmio_state ? mmio_is_RVC : _GEN_792; // @[IFU.scala 405:21 364:32]
  wire [35:0] _GEN_797 = 4'h6 == mmio_state ? mmio_resend_addr : _GEN_793; // @[IFU.scala 405:21 365:32]
  wire [3:0] _GEN_798 = 4'h5 == mmio_state ? _mmio_state_T_4 : _GEN_794; // @[IFU.scala 405:21 445:22]
  wire  _GEN_799 = 4'h5 == mmio_state ? pmpExcpAF : mmio_resend_af; // @[IFU.scala 405:21 446:26 366:32]
  wire [15:0] _GEN_800 = 4'h5 == mmio_state ? f3_mmio_data_1 : _GEN_795; // @[IFU.scala 405:21 363:28]
  wire  _GEN_801 = 4'h5 == mmio_state ? mmio_is_RVC : _GEN_796; // @[IFU.scala 405:21 364:32]
  wire [35:0] _GEN_802 = 4'h5 == mmio_state ? mmio_resend_addr : _GEN_797; // @[IFU.scala 405:21 365:32]
  wire [3:0] _GEN_803 = 4'h4 == mmio_state ? _mmio_state_T_3 : _GEN_798; // @[IFU.scala 405:21 437:18]
  wire [35:0] _GEN_804 = 4'h4 == mmio_state ? io_iTLBInter_resp_bits_paddr : _GEN_802; // @[IFU.scala 405:21 438:24]
  wire  _GEN_805 = 4'h4 == mmio_state ? io_iTLBInter_resp_bits_excp_af_instr : _GEN_799; // @[IFU.scala 405:21 439:22]
  wire  _GEN_806 = 4'h4 == mmio_state ? io_iTLBInter_resp_bits_excp_pf_instr : mmio_resend_pf; // @[IFU.scala 405:21 440:22 367:32]
  wire [15:0] _GEN_807 = 4'h4 == mmio_state ? f3_mmio_data_1 : _GEN_800; // @[IFU.scala 405:21 363:28]
  wire  _GEN_808 = 4'h4 == mmio_state ? mmio_is_RVC : _GEN_801; // @[IFU.scala 405:21 364:32]
  wire [3:0] _GEN_809 = 4'h3 == mmio_state ? _GEN_780 : _GEN_803; // @[IFU.scala 405:21]
  wire [35:0] _GEN_810 = 4'h3 == mmio_state ? mmio_resend_addr : _GEN_804; // @[IFU.scala 405:21 365:32]
  wire  _GEN_811 = 4'h3 == mmio_state ? mmio_resend_af : _GEN_805; // @[IFU.scala 405:21 366:32]
  wire  _GEN_812 = 4'h3 == mmio_state ? mmio_resend_pf : _GEN_806; // @[IFU.scala 405:21 367:32]
  wire [15:0] _GEN_813 = 4'h3 == mmio_state ? f3_mmio_data_1 : _GEN_807; // @[IFU.scala 405:21 363:28]
  wire  _GEN_814 = 4'h3 == mmio_state ? mmio_is_RVC : _GEN_808; // @[IFU.scala 405:21 364:32]
  wire [3:0] _GEN_815 = 4'h2 == mmio_state ? _GEN_776 : _GEN_809; // @[IFU.scala 405:21]
  wire  _GEN_816 = 4'h2 == mmio_state ? _GEN_777 : _GEN_814; // @[IFU.scala 405:21]
  wire [35:0] _GEN_819 = 4'h2 == mmio_state ? mmio_resend_addr : _GEN_810; // @[IFU.scala 405:21 365:32]
  wire  _GEN_820 = 4'h2 == mmio_state ? mmio_resend_af : _GEN_811; // @[IFU.scala 405:21 366:32]
  wire  _io_uncacheInter_toUncache_valid_T_1 = mmio_state == 4'h6; // @[IFU.scala 483:70]
  reg  f3_lastHalf_valid; // @[IFU.scala 501:34]
  wire  f3_instr_valid_1 = f3_lastHalf_valid | f3_pd_1_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_0 = f3_lastHalf_valid ? 1'h0 : 1'h1; // @[IFU.scala 537:24]
  wire  f3_instr_valid_3 = f3_lastHalf_valid ? f3_hasHalfValid_3 : f3_pd_3_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_2 = f3_lastHalf_valid ? f3_hasHalfValid_2 : f3_pd_2_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_5 = f3_lastHalf_valid ? f3_hasHalfValid_5 : f3_pd_5_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_4 = f3_lastHalf_valid ? f3_hasHalfValid_4 : f3_pd_4_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_7 = f3_lastHalf_valid ? f3_hasHalfValid_7 : f3_pd_7_valid; // @[IFU.scala 537:24]
  wire  f3_instr_valid_6 = f3_lastHalf_valid ? f3_hasHalfValid_6 : f3_pd_6_valid; // @[IFU.scala 537:24]
  wire [7:0] _T_54 = {f3_instr_valid_7,f3_instr_valid_6,f3_instr_valid_5,f3_instr_valid_4,f3_instr_valid_3,
    f3_instr_valid_2,f3_instr_valid_1,f3_instr_valid_0}; // @[IFU.scala 512:51]
  wire  _f3_last_validIdx_T_1 = predChecker_io_out_fixedRange_7 ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _f3_last_validIdx_T_3 = predChecker_io_out_fixedRange_5 ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _f3_last_validIdx_T_5 = predChecker_io_out_fixedRange_7 | predChecker_io_out_fixedRange_6 ? {{1'd0},
    _f3_last_validIdx_T_1} : _f3_last_validIdx_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _f3_last_validIdx_T_7 = predChecker_io_out_fixedRange_3 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _f3_last_validIdx_T_9 = predChecker_io_out_fixedRange_1 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _f3_last_validIdx_T_11 = predChecker_io_out_fixedRange_3 | predChecker_io_out_fixedRange_2 ?
    _f3_last_validIdx_T_7 : _f3_last_validIdx_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] _f3_last_validIdx_T_13 = predChecker_io_out_fixedRange_7 | predChecker_io_out_fixedRange_6 | (
    predChecker_io_out_fixedRange_5 | predChecker_io_out_fixedRange_4) ? {{1'd0}, _f3_last_validIdx_T_5} :
    _f3_last_validIdx_T_11; // @[ParallelMux.scala 90:77]
  wire [2:0] f3_last_validIdx = ~_f3_last_validIdx_T_13; // @[IFU.scala 522:38]
  wire  f3_hasLastHalf = ~f3_pd_7_isRVC & predChecker_io_out_fixedRange_7 & f3_instr_valid_7 & ~
    predChecker_io_out_fixedTaken_7 & ~predChecker_io_out_fixedMissPred_7 & _T_25; // @[IFU.scala 519:141]
  wire  _GEN_843 = 3'h1 == f3_last_validIdx ? f3_pd_1_isRVC : f3_pd_0_isRVC; // @[IFU.scala 519:{5,5}]
  wire  _GEN_844 = 3'h2 == f3_last_validIdx ? f3_pd_2_isRVC : _GEN_843; // @[IFU.scala 519:{5,5}]
  wire  _GEN_845 = 3'h3 == f3_last_validIdx ? f3_pd_3_isRVC : _GEN_844; // @[IFU.scala 519:{5,5}]
  wire  _GEN_846 = 3'h4 == f3_last_validIdx ? f3_pd_4_isRVC : _GEN_845; // @[IFU.scala 519:{5,5}]
  wire  _GEN_847 = 3'h5 == f3_last_validIdx ? f3_pd_5_isRVC : _GEN_846; // @[IFU.scala 519:{5,5}]
  wire  _GEN_848 = 3'h6 == f3_last_validIdx ? f3_pd_6_isRVC : _GEN_847; // @[IFU.scala 519:{5,5}]
  wire  _GEN_849 = 3'h7 == f3_last_validIdx ? f3_pd_7_isRVC : _GEN_848; // @[IFU.scala 519:{5,5}]
  wire  _GEN_851 = 3'h1 == f3_last_validIdx ? predChecker_io_out_fixedRange_1 : predChecker_io_out_fixedRange_0; // @[IFU.scala 519:{23,23}]
  wire  _GEN_852 = 3'h2 == f3_last_validIdx ? predChecker_io_out_fixedRange_2 : _GEN_851; // @[IFU.scala 519:{23,23}]
  wire  _GEN_853 = 3'h3 == f3_last_validIdx ? predChecker_io_out_fixedRange_3 : _GEN_852; // @[IFU.scala 519:{23,23}]
  wire  _GEN_854 = 3'h4 == f3_last_validIdx ? predChecker_io_out_fixedRange_4 : _GEN_853; // @[IFU.scala 519:{23,23}]
  wire  _GEN_855 = 3'h5 == f3_last_validIdx ? predChecker_io_out_fixedRange_5 : _GEN_854; // @[IFU.scala 519:{23,23}]
  wire  _GEN_856 = 3'h6 == f3_last_validIdx ? predChecker_io_out_fixedRange_6 : _GEN_855; // @[IFU.scala 519:{23,23}]
  wire  _GEN_857 = 3'h7 == f3_last_validIdx ? predChecker_io_out_fixedRange_7 : _GEN_856; // @[IFU.scala 519:{23,23}]
  wire  _GEN_859 = 3'h1 == f3_last_validIdx ? f3_instr_valid_1 : f3_instr_valid_0; // @[IFU.scala 519:{53,53}]
  wire  _GEN_860 = 3'h2 == f3_last_validIdx ? f3_instr_valid_2 : _GEN_859; // @[IFU.scala 519:{53,53}]
  wire  _GEN_861 = 3'h3 == f3_last_validIdx ? f3_instr_valid_3 : _GEN_860; // @[IFU.scala 519:{53,53}]
  wire  _GEN_862 = 3'h4 == f3_last_validIdx ? f3_instr_valid_4 : _GEN_861; // @[IFU.scala 519:{53,53}]
  wire  _GEN_863 = 3'h5 == f3_last_validIdx ? f3_instr_valid_5 : _GEN_862; // @[IFU.scala 519:{53,53}]
  wire  _GEN_864 = 3'h6 == f3_last_validIdx ? f3_instr_valid_6 : _GEN_863; // @[IFU.scala 519:{53,53}]
  wire  _GEN_865 = 3'h7 == f3_last_validIdx ? f3_instr_valid_7 : _GEN_864; // @[IFU.scala 519:{53,53}]
  wire  _GEN_867 = 3'h1 == f3_last_validIdx ? predChecker_io_out_fixedTaken_1 : predChecker_io_out_fixedTaken_0; // @[IFU.scala 519:{79,79}]
  wire  _GEN_868 = 3'h2 == f3_last_validIdx ? predChecker_io_out_fixedTaken_2 : _GEN_867; // @[IFU.scala 519:{79,79}]
  wire  _GEN_869 = 3'h3 == f3_last_validIdx ? predChecker_io_out_fixedTaken_3 : _GEN_868; // @[IFU.scala 519:{79,79}]
  wire  _GEN_870 = 3'h4 == f3_last_validIdx ? predChecker_io_out_fixedTaken_4 : _GEN_869; // @[IFU.scala 519:{79,79}]
  wire  _GEN_871 = 3'h5 == f3_last_validIdx ? predChecker_io_out_fixedTaken_5 : _GEN_870; // @[IFU.scala 519:{79,79}]
  wire  _GEN_872 = 3'h6 == f3_last_validIdx ? predChecker_io_out_fixedTaken_6 : _GEN_871; // @[IFU.scala 519:{79,79}]
  wire  _GEN_873 = 3'h7 == f3_last_validIdx ? predChecker_io_out_fixedTaken_7 : _GEN_872; // @[IFU.scala 519:{79,79}]
  wire  _GEN_875 = 3'h1 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_1 : predChecker_io_out_fixedMissPred_0; // @[IFU.scala 519:{110,110}]
  wire  _GEN_876 = 3'h2 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_2 : _GEN_875; // @[IFU.scala 519:{110,110}]
  wire  _GEN_877 = 3'h3 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_3 : _GEN_876; // @[IFU.scala 519:{110,110}]
  wire  _GEN_878 = 3'h4 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_4 : _GEN_877; // @[IFU.scala 519:{110,110}]
  wire  _GEN_879 = 3'h5 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_5 : _GEN_878; // @[IFU.scala 519:{110,110}]
  wire  _GEN_880 = 3'h6 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_6 : _GEN_879; // @[IFU.scala 519:{110,110}]
  wire  _GEN_881 = 3'h7 == f3_last_validIdx ? predChecker_io_out_fixedMissPred_7 : _GEN_880; // @[IFU.scala 519:{110,110}]
  wire  _io_toIbuffer_valid_T_3 = ~f3_flush; // @[IFU.scala 551:87]
  wire [7:0] _io_toIbuffer_bits_enqEnable_T = {predChecker_io_out_fixedRange_7,predChecker_io_out_fixedRange_6,
    predChecker_io_out_fixedRange_5,predChecker_io_out_fixedRange_4,predChecker_io_out_fixedRange_3,
    predChecker_io_out_fixedRange_2,predChecker_io_out_fixedRange_1,predChecker_io_out_fixedRange_0}; // @[IFU.scala 554:58]
  wire [7:0] _io_toIbuffer_bits_enqEnable_T_2 = _io_toIbuffer_bits_enqEnable_T & _T_54; // @[IFU.scala 554:65]
  wire [7:0] _io_toIbuffer_bits_enqEnable_T_7 = _io_toIbuffer_bits_enqEnable_T_2 & 8'hfe; // @[IFU.scala 567:89]
  wire [7:0] _io_toIbuffer_bits_valid_T_2 = 8'hfe & _T_54; // @[IFU.scala 568:53]
  wire [7:0] _GEN_886 = f3_lastHalf_valid ? _io_toIbuffer_bits_enqEnable_T_7 : _io_toIbuffer_bits_enqEnable_T_2; // @[IFU.scala 566:26 554:33 567:33]
  wire [31:0] inst = {f3_mmio_data_1,f3_mmio_data_0}; // @[Cat.scala 31:58]
  wire  currentIsRVC = inst[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T = inst & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_1 = 32'ha001 == _brType_T; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_2 = inst & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_3 = 32'h8002 == _brType_T_2; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_4 = inst & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_5 = 32'hc001 == _brType_T_4; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_6 = inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_7 = 32'h6f == _brType_T_6; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_8 = inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_9 = 32'h67 == _brType_T_8; // @[Lookup.scala 31:38]
  wire  _brType_T_11 = 32'h63 == _brType_T_6; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_13 = _brType_T_9 ? 2'h3 : {{1'd0}, _brType_T_11}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_14 = _brType_T_7 ? 2'h2 : _brType_T_13; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_15 = _brType_T_5 ? 2'h1 : _brType_T_14; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_16 = _brType_T_3 ? 2'h3 : _brType_T_15; // @[Lookup.scala 34:39]
  wire [1:0] brType = _brType_T_1 ? 2'h2 : _brType_T_16; // @[Lookup.scala 34:39]
  wire [4:0] rd = currentIsRVC ? {{4'd0}, inst[12]} : inst[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_2 = brType == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_4 = brType == 2'h2 ? 5'h0 : inst[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs = currentIsRVC ? _rs_T_4 : inst[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_5 = brType == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_9 = rd == 5'h1 | rd == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall = (_rs_T_2 & ~currentIsRVC | brType == 2'h3) & _isCall_T_9; // @[PreDecode.scala 36:85]
  wire  _isRet_T_3 = rs == 5'h1 | rs == 5'h5; // @[PreDecode.scala 31:38]
  wire  isRet = _isCall_T_5 & _isRet_T_3 & ~isCall; // @[PreDecode.scala 37:54]
  wire [2:0] brOffset_rvc_offset_hi_hi = {inst[12],inst[6:5]}; // @[Cat.scala 31:58]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_opc = |inst[12:5] ? 7'h13 : 7'h1f; // @[RVC.scala 53:20]
  wire [29:0] _io_toIbuffer_bits_instrs_0_s_T_7 = {inst[10:7],inst[12:11],inst[5],inst[6],2'h0,5'h2,3'h0,2'h1,inst[4:2],
    io_toIbuffer_bits_instrs_0_s_opc}; // @[Cat.scala 31:58]
  wire [7:0] _io_toIbuffer_bits_instrs_0_s_T_15 = {inst[6:5],inst[12:10],3'h0}; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_20 = {inst[6:5],inst[12:10],3'h0,2'h1,inst[9:7],3'h3,2'h1,inst[4:2],7'h7}; // @[Cat.scala 31:58]
  wire [6:0] _io_toIbuffer_bits_instrs_0_s_T_31 = {inst[5],inst[12:10],inst[6],2'h0}; // @[Cat.scala 31:58]
  wire [26:0] _io_toIbuffer_bits_instrs_0_s_T_36 = {inst[5],inst[12:10],inst[6],2'h0,2'h1,inst[9:7],3'h2,2'h1,inst[4:2],7'h3
    }; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_51 = {inst[6:5],inst[12:10],3'h0,2'h1,inst[9:7],3'h3,2'h1,inst[4:2],7'h3}; // @[Cat.scala 31:58]
  wire [26:0] _io_toIbuffer_bits_instrs_0_s_T_73 = {_io_toIbuffer_bits_instrs_0_s_T_31[6:5],2'h1,inst[4:2],2'h1,inst[9:7
    ],3'h2,_io_toIbuffer_bits_instrs_0_s_T_31[4:0],7'h3f}; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_93 = {_io_toIbuffer_bits_instrs_0_s_T_15[7:5],2'h1,inst[4:2],2'h1,inst[9:7
    ],3'h3,_io_toIbuffer_bits_instrs_0_s_T_15[4:0],7'h27}; // @[Cat.scala 31:58]
  wire [26:0] _io_toIbuffer_bits_instrs_0_s_T_115 = {_io_toIbuffer_bits_instrs_0_s_T_31[6:5],2'h1,inst[4:2],2'h1,inst[9:
    7],3'h2,_io_toIbuffer_bits_instrs_0_s_T_31[4:0],7'h23}; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_135 = {_io_toIbuffer_bits_instrs_0_s_T_15[7:5],2'h1,inst[4:2],2'h1,inst[9:
    7],3'h3,_io_toIbuffer_bits_instrs_0_s_T_15[4:0],7'h23}; // @[Cat.scala 31:58]
  wire [6:0] _io_toIbuffer_bits_instrs_0_s_T_145 = inst[12] ? 7'h7f : 7'h0; // @[Bitwise.scala 74:12]
  wire [11:0] _io_toIbuffer_bits_instrs_0_s_T_147 = {_io_toIbuffer_bits_instrs_0_s_T_145,inst[6:2]}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_8_bits = {_io_toIbuffer_bits_instrs_0_s_T_145,inst[6:2],inst[11:7],3'h0,inst[
    11:7],7'h13}; // @[Cat.scala 31:58]
  wire  _io_toIbuffer_bits_instrs_0_s_opc_T_3 = |inst[11:7]; // @[RVC.scala 77:24]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_opc_1 = |inst[11:7] ? 7'h1b : 7'h1f; // @[RVC.scala 77:20]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_9_bits = {_io_toIbuffer_bits_instrs_0_s_T_145,inst[6:2],inst[11:7],3'h0,inst[
    11:7],io_toIbuffer_bits_instrs_0_s_opc_1}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_10_bits = {_io_toIbuffer_bits_instrs_0_s_T_145,inst[6:2],5'h0,3'h0,inst[11:7]
    ,7'h13}; // @[Cat.scala 31:58]
  wire  _io_toIbuffer_bits_instrs_0_s_opc_T_9 = |_io_toIbuffer_bits_instrs_0_s_T_147; // @[RVC.scala 90:29]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_opc_2 = |_io_toIbuffer_bits_instrs_0_s_T_147 ? 7'h37 : 7'h3f; // @[RVC.scala 90:20]
  wire [14:0] _io_toIbuffer_bits_instrs_0_s_me_T_2 = inst[12] ? 15'h7fff : 15'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _io_toIbuffer_bits_instrs_0_s_me_T_4 = {_io_toIbuffer_bits_instrs_0_s_me_T_2,inst[6:2],12'h0}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_me_bits = {_io_toIbuffer_bits_instrs_0_s_me_T_4[31:12],inst[11:7],
    io_toIbuffer_bits_instrs_0_s_opc_2}; // @[Cat.scala 31:58]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_opc_3 = _io_toIbuffer_bits_instrs_0_s_opc_T_9 ? 7'h13 : 7'h1f; // @[RVC.scala 86:20]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_T_187 = inst[12] ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_res_bits = {_io_toIbuffer_bits_instrs_0_s_T_187,inst[4:3],inst[5],inst[2],
    inst[6],4'h0,inst[11:7],3'h0,inst[11:7],io_toIbuffer_bits_instrs_0_s_opc_3}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_11_bits = inst[11:7] == 5'h0 | inst[11:7] == 5'h2 ?
    io_toIbuffer_bits_instrs_0_s_res_bits : io_toIbuffer_bits_instrs_0_s_me_bits; // @[RVC.scala 92:10]
  wire [25:0] _io_toIbuffer_bits_instrs_0_s_T_208 = {inst[12],inst[6:2],2'h1,inst[9:7],3'h5,2'h1,inst[9:7],7'h13}; // @[Cat.scala 31:58]
  wire [30:0] _GEN_934 = {{5'd0}, _io_toIbuffer_bits_instrs_0_s_T_208}; // @[RVC.scala 99:23]
  wire [30:0] _io_toIbuffer_bits_instrs_0_s_T_217 = _GEN_934 | 31'h40000000; // @[RVC.scala 99:23]
  wire [31:0] _io_toIbuffer_bits_instrs_0_s_T_227 = {_io_toIbuffer_bits_instrs_0_s_T_145,inst[6:2],2'h1,inst[9:7],3'h7,2'h1
    ,inst[9:7],7'h13}; // @[Cat.scala 31:58]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_4 = brOffset_rvc_offset_hi_hi == 3'h1 ? 3'h4 : 3'h0; // @[package.scala 32:76]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_6 = brOffset_rvc_offset_hi_hi == 3'h2 ? 3'h6 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_4; // @[package.scala 32:76]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_8 = brOffset_rvc_offset_hi_hi == 3'h3 ? 3'h7 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_6; // @[package.scala 32:76]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_10 = brOffset_rvc_offset_hi_hi == 3'h4 ? 3'h0 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_8; // @[package.scala 32:76]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_12 = brOffset_rvc_offset_hi_hi == 3'h5 ? 3'h0 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_10; // @[package.scala 32:76]
  wire [2:0] _io_toIbuffer_bits_instrs_0_s_funct_T_14 = brOffset_rvc_offset_hi_hi == 3'h6 ? 3'h2 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_12; // @[package.scala 32:76]
  wire [2:0] io_toIbuffer_bits_instrs_0_s_funct = brOffset_rvc_offset_hi_hi == 3'h7 ? 3'h3 :
    _io_toIbuffer_bits_instrs_0_s_funct_T_14; // @[package.scala 32:76]
  wire [30:0] io_toIbuffer_bits_instrs_0_s_sub = inst[6:5] == 2'h0 ? 31'h40000000 : 31'h0; // @[RVC.scala 103:22]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_opc_4 = inst[12] ? 7'h3b : 7'h33; // @[RVC.scala 104:22]
  wire [24:0] _io_toIbuffer_bits_instrs_0_s_T_234 = {2'h1,inst[4:2],2'h1,inst[9:7],io_toIbuffer_bits_instrs_0_s_funct,2'h1
    ,inst[9:7],io_toIbuffer_bits_instrs_0_s_opc_4}; // @[Cat.scala 31:58]
  wire [30:0] _GEN_935 = {{6'd0}, _io_toIbuffer_bits_instrs_0_s_T_234}; // @[RVC.scala 105:43]
  wire [30:0] _io_toIbuffer_bits_instrs_0_s_T_235 = _GEN_935 | io_toIbuffer_bits_instrs_0_s_sub; // @[RVC.scala 105:43]
  wire [30:0] _io_toIbuffer_bits_instrs_0_s_T_238 = inst[11:10] == 2'h1 ? _io_toIbuffer_bits_instrs_0_s_T_217 : {{5
    'd0}, _io_toIbuffer_bits_instrs_0_s_T_208}; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_s_T_240 = inst[11:10] == 2'h2 ? _io_toIbuffer_bits_instrs_0_s_T_227 : {{1
    'd0}, _io_toIbuffer_bits_instrs_0_s_T_238}; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_12_bits = inst[11:10] == 2'h3 ? {{1'd0}, _io_toIbuffer_bits_instrs_0_s_T_235}
     : _io_toIbuffer_bits_instrs_0_s_T_240; // @[package.scala 32:76]
  wire [9:0] _io_toIbuffer_bits_instrs_0_s_T_252 = inst[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _io_toIbuffer_bits_instrs_0_s_T_260 = {_io_toIbuffer_bits_instrs_0_s_T_252,inst[8],inst[10:9],inst[6],inst
    [7],inst[2],inst[11],inst[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_13_bits = {_io_toIbuffer_bits_instrs_0_s_T_260[20],
    _io_toIbuffer_bits_instrs_0_s_T_260[10:1],_io_toIbuffer_bits_instrs_0_s_T_260[11],
    _io_toIbuffer_bits_instrs_0_s_T_260[19:12],5'h0,7'h6f}; // @[Cat.scala 31:58]
  wire [4:0] _io_toIbuffer_bits_instrs_0_s_T_306 = inst[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _io_toIbuffer_bits_instrs_0_s_T_311 = {_io_toIbuffer_bits_instrs_0_s_T_306,inst[6:5],inst[2],inst[11:10],
    inst[4:3],1'h0}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_14_bits = {_io_toIbuffer_bits_instrs_0_s_T_311[12],
    _io_toIbuffer_bits_instrs_0_s_T_311[10:5],5'h0,2'h1,inst[9:7],3'h0,_io_toIbuffer_bits_instrs_0_s_T_311[4:1],
    _io_toIbuffer_bits_instrs_0_s_T_311[11],7'h63}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_15_bits = {_io_toIbuffer_bits_instrs_0_s_T_311[12],
    _io_toIbuffer_bits_instrs_0_s_T_311[10:5],5'h0,2'h1,inst[9:7],3'h1,_io_toIbuffer_bits_instrs_0_s_T_311[4:1],
    _io_toIbuffer_bits_instrs_0_s_T_311[11],7'h63}; // @[Cat.scala 31:58]
  wire [6:0] io_toIbuffer_bits_instrs_0_s_load_opc = _io_toIbuffer_bits_instrs_0_s_opc_T_3 ? 7'h3 : 7'h1f; // @[RVC.scala 113:23]
  wire [25:0] _io_toIbuffer_bits_instrs_0_s_T_395 = {inst[12],inst[6:2],inst[11:7],3'h1,inst[11:7],7'h13}; // @[Cat.scala 31:58]
  wire [28:0] _io_toIbuffer_bits_instrs_0_s_T_405 = {inst[4:2],inst[12],inst[6:5],3'h0,5'h2,3'h3,inst[11:7],7'h7}; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_414 = {inst[3:2],inst[12],inst[6:4],2'h0,5'h2,3'h2,inst[11:7],
    io_toIbuffer_bits_instrs_0_s_load_opc}; // @[Cat.scala 31:58]
  wire [28:0] _io_toIbuffer_bits_instrs_0_s_T_423 = {inst[4:2],inst[12],inst[6:5],3'h0,5'h2,3'h3,inst[11:7],
    io_toIbuffer_bits_instrs_0_s_load_opc}; // @[Cat.scala 31:58]
  wire [19:0] _io_toIbuffer_bits_instrs_0_s_mv_T_2 = {inst[6:2],3'h0,inst[11:7],7'h13}; // @[Cat.scala 31:58]
  wire [24:0] _io_toIbuffer_bits_instrs_0_s_add_T_3 = {inst[6:2],inst[11:7],3'h0,inst[11:7],7'h33}; // @[Cat.scala 31:58]
  wire [24:0] io_toIbuffer_bits_instrs_0_s_jr = {inst[6:2],inst[11:7],3'h0,12'h67}; // @[Cat.scala 31:58]
  wire [24:0] io_toIbuffer_bits_instrs_0_s_reserved = {io_toIbuffer_bits_instrs_0_s_jr[24:7],7'h1f}; // @[Cat.scala 31:58]
  wire [24:0] _io_toIbuffer_bits_instrs_0_s_jr_reserved_T_2 = _io_toIbuffer_bits_instrs_0_s_opc_T_3 ?
    io_toIbuffer_bits_instrs_0_s_jr : io_toIbuffer_bits_instrs_0_s_reserved; // @[RVC.scala 134:33]
  wire  _io_toIbuffer_bits_instrs_0_s_jr_mv_T_1 = |inst[6:2]; // @[RVC.scala 135:27]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_mv_bits = {{12'd0}, _io_toIbuffer_bits_instrs_0_s_mv_T_2}; // @[RVC.scala 21:19 22:14]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_jr_reserved_bits = {{7'd0}, _io_toIbuffer_bits_instrs_0_s_jr_reserved_T_2}; // @[RVC.scala 21:19 22:14]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_jr_mv_bits = |inst[6:2] ? io_toIbuffer_bits_instrs_0_s_mv_bits :
    io_toIbuffer_bits_instrs_0_s_jr_reserved_bits; // @[RVC.scala 135:22]
  wire [24:0] io_toIbuffer_bits_instrs_0_s_jalr = {inst[6:2],inst[11:7],3'h0,12'he7}; // @[Cat.scala 31:58]
  wire [24:0] _io_toIbuffer_bits_instrs_0_s_ebreak_T_1 = {io_toIbuffer_bits_instrs_0_s_jr[24:7],7'h73}; // @[Cat.scala 31:58]
  wire [24:0] io_toIbuffer_bits_instrs_0_s_ebreak = _io_toIbuffer_bits_instrs_0_s_ebreak_T_1 | 25'h100000; // @[RVC.scala 137:46]
  wire [24:0] _io_toIbuffer_bits_instrs_0_s_jalr_ebreak_T_2 = _io_toIbuffer_bits_instrs_0_s_opc_T_3 ?
    io_toIbuffer_bits_instrs_0_s_jalr : io_toIbuffer_bits_instrs_0_s_ebreak; // @[RVC.scala 138:33]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_add_bits = {{7'd0}, _io_toIbuffer_bits_instrs_0_s_add_T_3}; // @[RVC.scala 21:19 22:14]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_jalr_ebreak_bits = {{7'd0}, _io_toIbuffer_bits_instrs_0_s_jalr_ebreak_T_2}; // @[RVC.scala 21:19 22:14]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_jalr_add_bits = _io_toIbuffer_bits_instrs_0_s_jr_mv_T_1 ?
    io_toIbuffer_bits_instrs_0_s_add_bits : io_toIbuffer_bits_instrs_0_s_jalr_ebreak_bits; // @[RVC.scala 139:25]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_20_bits = inst[12] ? io_toIbuffer_bits_instrs_0_s_jalr_add_bits :
    io_toIbuffer_bits_instrs_0_s_jr_mv_bits; // @[RVC.scala 140:10]
  wire [8:0] _io_toIbuffer_bits_instrs_0_s_T_430 = {inst[9:7],inst[12:10],3'h0}; // @[Cat.scala 31:58]
  wire [28:0] _io_toIbuffer_bits_instrs_0_s_T_437 = {_io_toIbuffer_bits_instrs_0_s_T_430[8:5],inst[6:2],5'h2,3'h3,
    _io_toIbuffer_bits_instrs_0_s_T_430[4:0],7'h27}; // @[Cat.scala 31:58]
  wire [7:0] _io_toIbuffer_bits_instrs_0_s_T_443 = {inst[8:7],inst[12:9],2'h0}; // @[Cat.scala 31:58]
  wire [27:0] _io_toIbuffer_bits_instrs_0_s_T_450 = {_io_toIbuffer_bits_instrs_0_s_T_443[7:5],inst[6:2],5'h2,3'h2,
    _io_toIbuffer_bits_instrs_0_s_T_443[4:0],7'h23}; // @[Cat.scala 31:58]
  wire [28:0] _io_toIbuffer_bits_instrs_0_s_T_463 = {_io_toIbuffer_bits_instrs_0_s_T_430[8:5],inst[6:2],5'h2,3'h3,
    _io_toIbuffer_bits_instrs_0_s_T_430[4:0],7'h23}; // @[Cat.scala 31:58]
  wire [4:0] _io_toIbuffer_bits_instrs_0_T_2 = {inst[1:0],inst[15:13]}; // @[Cat.scala 31:58]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_1_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_20}; // @[RVC.scala 21:19 22:14]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_0_bits = {{2'd0}, _io_toIbuffer_bits_instrs_0_s_T_7}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_4_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1 ?
    io_toIbuffer_bits_instrs_0_s_1_bits : io_toIbuffer_bits_instrs_0_s_0_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_2_bits = {{5'd0}, _io_toIbuffer_bits_instrs_0_s_T_36}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_6_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h2 ?
    io_toIbuffer_bits_instrs_0_s_2_bits : _io_toIbuffer_bits_instrs_0_T_4_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_3_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_51}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_8_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h3 ?
    io_toIbuffer_bits_instrs_0_s_3_bits : _io_toIbuffer_bits_instrs_0_T_6_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_4_bits = {{5'd0}, _io_toIbuffer_bits_instrs_0_s_T_73}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_10_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h4 ?
    io_toIbuffer_bits_instrs_0_s_4_bits : _io_toIbuffer_bits_instrs_0_T_8_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_5_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_93}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_12_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h5 ?
    io_toIbuffer_bits_instrs_0_s_5_bits : _io_toIbuffer_bits_instrs_0_T_10_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_6_bits = {{5'd0}, _io_toIbuffer_bits_instrs_0_s_T_115}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_14_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h6 ?
    io_toIbuffer_bits_instrs_0_s_6_bits : _io_toIbuffer_bits_instrs_0_T_12_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_7_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_135}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_16_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h7 ?
    io_toIbuffer_bits_instrs_0_s_7_bits : _io_toIbuffer_bits_instrs_0_T_14_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_18_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h8 ?
    io_toIbuffer_bits_instrs_0_s_8_bits : _io_toIbuffer_bits_instrs_0_T_16_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_20_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h9 ?
    io_toIbuffer_bits_instrs_0_s_9_bits : _io_toIbuffer_bits_instrs_0_T_18_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_22_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'ha ?
    io_toIbuffer_bits_instrs_0_s_10_bits : _io_toIbuffer_bits_instrs_0_T_20_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_24_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'hb ?
    io_toIbuffer_bits_instrs_0_s_11_bits : _io_toIbuffer_bits_instrs_0_T_22_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_26_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'hc ?
    io_toIbuffer_bits_instrs_0_s_12_bits : _io_toIbuffer_bits_instrs_0_T_24_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_28_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'hd ?
    io_toIbuffer_bits_instrs_0_s_13_bits : _io_toIbuffer_bits_instrs_0_T_26_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_30_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'he ?
    io_toIbuffer_bits_instrs_0_s_14_bits : _io_toIbuffer_bits_instrs_0_T_28_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_32_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'hf ?
    io_toIbuffer_bits_instrs_0_s_15_bits : _io_toIbuffer_bits_instrs_0_T_30_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_16_bits = {{6'd0}, _io_toIbuffer_bits_instrs_0_s_T_395}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_34_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h10 ?
    io_toIbuffer_bits_instrs_0_s_16_bits : _io_toIbuffer_bits_instrs_0_T_32_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_17_bits = {{3'd0}, _io_toIbuffer_bits_instrs_0_s_T_405}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_36_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h11 ?
    io_toIbuffer_bits_instrs_0_s_17_bits : _io_toIbuffer_bits_instrs_0_T_34_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_18_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_414}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_38_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h12 ?
    io_toIbuffer_bits_instrs_0_s_18_bits : _io_toIbuffer_bits_instrs_0_T_36_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_19_bits = {{3'd0}, _io_toIbuffer_bits_instrs_0_s_T_423}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_40_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h13 ?
    io_toIbuffer_bits_instrs_0_s_19_bits : _io_toIbuffer_bits_instrs_0_T_38_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_42_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h14 ?
    io_toIbuffer_bits_instrs_0_s_20_bits : _io_toIbuffer_bits_instrs_0_T_40_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_21_bits = {{3'd0}, _io_toIbuffer_bits_instrs_0_s_T_437}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_44_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h15 ?
    io_toIbuffer_bits_instrs_0_s_21_bits : _io_toIbuffer_bits_instrs_0_T_42_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_22_bits = {{4'd0}, _io_toIbuffer_bits_instrs_0_s_T_450}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_46_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h16 ?
    io_toIbuffer_bits_instrs_0_s_22_bits : _io_toIbuffer_bits_instrs_0_T_44_bits; // @[package.scala 32:76]
  wire [31:0] io_toIbuffer_bits_instrs_0_s_23_bits = {{3'd0}, _io_toIbuffer_bits_instrs_0_s_T_463}; // @[RVC.scala 21:19 22:14]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_48_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h17 ?
    io_toIbuffer_bits_instrs_0_s_23_bits : _io_toIbuffer_bits_instrs_0_T_46_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_50_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h18 ? inst :
    _io_toIbuffer_bits_instrs_0_T_48_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_52_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h19 ? inst :
    _io_toIbuffer_bits_instrs_0_T_50_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_54_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1a ? inst :
    _io_toIbuffer_bits_instrs_0_T_52_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_56_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1b ? inst :
    _io_toIbuffer_bits_instrs_0_T_54_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_58_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1c ? inst :
    _io_toIbuffer_bits_instrs_0_T_56_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_60_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1d ? inst :
    _io_toIbuffer_bits_instrs_0_T_58_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_62_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1e ? inst :
    _io_toIbuffer_bits_instrs_0_T_60_bits; // @[package.scala 32:76]
  wire [31:0] _io_toIbuffer_bits_instrs_0_T_64_bits = _io_toIbuffer_bits_instrs_0_T_2 == 5'h1f ? inst :
    _io_toIbuffer_bits_instrs_0_T_62_bits; // @[package.scala 32:76]
  reg  mmioFlushWb_valid_REG; // @[IFU.scala 605:91]
  wire  mmioFlushWb_valid = _mmio_redirect_T_1 & mmioFlushWb_valid_REG & f3_mmio_use_seq_pc; // @[IFU.scala 605:113]
  wire [38:0] _mmioFlushWb_bits_target_T_1 = f3_ftq_req_startAddr + 39'h2; // @[IFU.scala 613:72]
  wire [38:0] _mmioFlushWb_bits_target_T_3 = f3_ftq_req_startAddr + 39'h4; // @[IFU.scala 613:101]
  wire [38:0] mmioFlushWb_bits_target = mmio_is_RVC ? _mmioFlushWb_bits_target_T_1 : _mmioFlushWb_bits_target_T_3; // @[IFU.scala 613:37]
  reg  wb_valid_REG; // @[IFU.scala 631:42]
  reg  wb_check_result_fixedTaken_0; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_1; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_2; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_3; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_4; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_5; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_6; // @[IFU.scala 634:34]
  reg  wb_check_result_fixedTaken_7; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_0; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_1; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_2; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_3; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_4; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_5; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_6; // @[IFU.scala 634:34]
  reg [38:0] wb_check_result_fixedTarget_7; // @[IFU.scala 634:34]
  reg [7:0] wb_instr_range; // @[IFU.scala 635:34]
  reg [38:0] wb_pc_0; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_1; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_2; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_3; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_4; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_5; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_6; // @[IFU.scala 636:34]
  reg [38:0] wb_pc_7; // @[IFU.scala 636:34]
  reg  wb_pd_0_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_0_brType; // @[IFU.scala 637:34]
  reg  wb_pd_0_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_0_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_1_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_1_brType; // @[IFU.scala 637:34]
  reg  wb_pd_1_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_1_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_2_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_2_brType; // @[IFU.scala 637:34]
  reg  wb_pd_2_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_2_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_3_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_3_brType; // @[IFU.scala 637:34]
  reg  wb_pd_3_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_3_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_4_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_4_brType; // @[IFU.scala 637:34]
  reg  wb_pd_4_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_4_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_5_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_5_brType; // @[IFU.scala 637:34]
  reg  wb_pd_5_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_5_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_6_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_6_brType; // @[IFU.scala 637:34]
  reg  wb_pd_6_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_6_isRet; // @[IFU.scala 637:34]
  reg  wb_pd_7_isRVC; // @[IFU.scala 637:34]
  reg [1:0] wb_pd_7_brType; // @[IFU.scala 637:34]
  reg  wb_pd_7_isCall; // @[IFU.scala 637:34]
  reg  wb_pd_7_isRet; // @[IFU.scala 637:34]
  reg  wb_instr_valid_0; // @[IFU.scala 638:34]
  reg  wb_instr_valid_1; // @[IFU.scala 638:34]
  reg  wb_instr_valid_2; // @[IFU.scala 638:34]
  reg  wb_instr_valid_3; // @[IFU.scala 638:34]
  reg  wb_instr_valid_4; // @[IFU.scala 638:34]
  reg  wb_instr_valid_5; // @[IFU.scala 638:34]
  reg  wb_instr_valid_6; // @[IFU.scala 638:34]
  reg  wb_instr_valid_7; // @[IFU.scala 638:34]
  reg [38:0] wb_false_target; // @[IFU.scala 643:34]
  wire [38:0] _GEN_899 = 3'h1 == f3_last_validIdx ? f3_half_snpc_1 : f3_half_snpc_0; // @[IFU.scala 643:{34,34}]
  wire [38:0] _GEN_900 = 3'h2 == f3_last_validIdx ? f3_half_snpc_2 : _GEN_899; // @[IFU.scala 643:{34,34}]
  wire [38:0] _GEN_901 = 3'h3 == f3_last_validIdx ? f3_half_snpc_3 : _GEN_900; // @[IFU.scala 643:{34,34}]
  wire  _checkFlushWb_bits_misOffset_bits_T_1 = wb_check_result_fixedMissPred_0 ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _checkFlushWb_bits_misOffset_bits_T_3 = wb_check_result_fixedMissPred_2 ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _checkFlushWb_bits_misOffset_bits_T_5 = _checkFlushWb_bits_misOffset_valid_T ? {{1'd0},
    _checkFlushWb_bits_misOffset_bits_T_1} : _checkFlushWb_bits_misOffset_bits_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_misOffset_bits_T_7 = wb_check_result_fixedMissPred_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_misOffset_bits_T_9 = wb_check_result_fixedMissPred_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_misOffset_bits_T_11 = _checkFlushWb_bits_misOffset_valid_T_3 ?
    _checkFlushWb_bits_misOffset_bits_T_7 : _checkFlushWb_bits_misOffset_bits_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_misOffset_bits_T_13 = _checkFlushWb_bits_misOffset_valid_T_2 ? {{1'd0},
    _checkFlushWb_bits_misOffset_bits_T_5} : _checkFlushWb_bits_misOffset_bits_T_11; // @[ParallelMux.scala 90:77]
  wire [2:0] checkFlushWb_bits_misOffset_bits = wb_false_lastHalf ? wb_lastIdx : _checkFlushWb_bits_misOffset_bits_T_13; // @[IFU.scala 663:45]
  wire  checkFlushWb_bits_cfiOffset_valid = wb_check_result_fixedTaken_0 | wb_check_result_fixedTaken_1 | (
    wb_check_result_fixedTaken_2 | wb_check_result_fixedTaken_3) | (wb_check_result_fixedTaken_4 |
    wb_check_result_fixedTaken_5 | (wb_check_result_fixedTaken_6 | wb_check_result_fixedTaken_7)); // @[ParallelMux.scala 37:55]
  wire [38:0] _GEN_907 = 3'h1 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_1 :
    wb_check_result_fixedTarget_0; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_908 = 3'h2 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_2 : _GEN_907; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_909 = 3'h3 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_3 : _GEN_908; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_910 = 3'h4 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_4 : _GEN_909; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_911 = 3'h5 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_5 : _GEN_910; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_912 = 3'h6 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_6 : _GEN_911; // @[IFU.scala 666:{45,45}]
  wire [38:0] _GEN_913 = 3'h7 == _checkFlushWb_bits_misOffset_bits_T_13 ? wb_check_result_fixedTarget_7 : _GEN_912; // @[IFU.scala 666:{45,45}]
  wire [38:0] checkFlushWb_bits_target = wb_false_lastHalf ? wb_false_target : _GEN_913; // @[IFU.scala 666:45]
  wire  _checkFlushWb_bits_jalTarget_T = wb_pd_0_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_1 = wb_instr_valid_0 & _checkFlushWb_bits_jalTarget_T; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_2 = wb_pd_1_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_3 = wb_instr_valid_1 & _checkFlushWb_bits_jalTarget_T_2; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_4 = wb_pd_2_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_5 = wb_instr_valid_2 & _checkFlushWb_bits_jalTarget_T_4; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_6 = wb_pd_3_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_7 = wb_instr_valid_3 & _checkFlushWb_bits_jalTarget_T_6; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_8 = wb_pd_4_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_9 = wb_instr_valid_4 & _checkFlushWb_bits_jalTarget_T_8; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_10 = wb_pd_5_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_11 = wb_instr_valid_5 & _checkFlushWb_bits_jalTarget_T_10; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_12 = wb_pd_6_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _checkFlushWb_bits_jalTarget_T_13 = wb_instr_valid_6 & _checkFlushWb_bits_jalTarget_T_12; // @[IFU.scala 667:150]
  wire  _checkFlushWb_bits_jalTarget_T_17 = _checkFlushWb_bits_jalTarget_T_1 ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _checkFlushWb_bits_jalTarget_T_19 = _checkFlushWb_bits_jalTarget_T_5 ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _checkFlushWb_bits_jalTarget_T_21 = _checkFlushWb_bits_jalTarget_T_1 | _checkFlushWb_bits_jalTarget_T_3 ?
    {{1'd0}, _checkFlushWb_bits_jalTarget_T_17} : _checkFlushWb_bits_jalTarget_T_19; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_jalTarget_T_23 = _checkFlushWb_bits_jalTarget_T_9 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_jalTarget_T_25 = _checkFlushWb_bits_jalTarget_T_13 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_jalTarget_T_27 = _checkFlushWb_bits_jalTarget_T_9 | _checkFlushWb_bits_jalTarget_T_11 ?
    _checkFlushWb_bits_jalTarget_T_23 : _checkFlushWb_bits_jalTarget_T_25; // @[ParallelMux.scala 90:77]
  wire [2:0] _checkFlushWb_bits_jalTarget_T_29 = _checkFlushWb_bits_jalTarget_T_1 | _checkFlushWb_bits_jalTarget_T_3 | (
    _checkFlushWb_bits_jalTarget_T_5 | _checkFlushWb_bits_jalTarget_T_7) ? {{1'd0}, _checkFlushWb_bits_jalTarget_T_21}
     : _checkFlushWb_bits_jalTarget_T_27; // @[ParallelMux.scala 90:77]
  wire [38:0] _GEN_915 = 3'h1 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_1 :
    wb_check_result_fixedTarget_0; // @[IFU.scala 667:{39,39}]
  wire [38:0] _GEN_916 = 3'h2 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_2 : _GEN_915; // @[IFU.scala 667:{39,39}]
  wire [38:0] _GEN_917 = 3'h3 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_3 : _GEN_916; // @[IFU.scala 667:{39,39}]
  wire [38:0] _GEN_918 = 3'h4 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_4 : _GEN_917; // @[IFU.scala 667:{39,39}]
  wire [38:0] _GEN_919 = 3'h5 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_5 : _GEN_918; // @[IFU.scala 667:{39,39}]
  wire [38:0] _GEN_920 = 3'h6 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_6 : _GEN_919; // @[IFU.scala 667:{39,39}]
  wire [38:0] checkFlushWb_bits_jalTarget = 3'h7 == _checkFlushWb_bits_jalTarget_T_29 ? wb_check_result_fixedTarget_7 :
    _GEN_920; // @[IFU.scala 667:{39,39}]
  reg  f3_perf_info_only_0_hit; // @[Reg.scala 16:16]
  reg  f3_perf_info_only_0_miss; // @[Reg.scala 16:16]
  reg  f3_perf_info_hit_0_hit_1; // @[Reg.scala 16:16]
  reg  f3_perf_info_hit_0_miss_1; // @[Reg.scala 16:16]
  reg  f3_perf_info_miss_0_hit_1; // @[Reg.scala 16:16]
  reg  f3_perf_info_miss_0_miss_1; // @[Reg.scala 16:16]
  reg  f3_perf_info_bank_hit_1; // @[Reg.scala 16:16]
  reg  f3_perf_info_hit; // @[Reg.scala 16:16]
  wire  f3_req_1 = f3_fire & f3_doubleLine; // @[IFU.scala 697:41]
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
  reg  io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  PreDecode preDecoder ( // @[IFU.scala 121:31]
    .io_in_data_0(preDecoder_io_in_data_0),
    .io_in_data_1(preDecoder_io_in_data_1),
    .io_in_data_2(preDecoder_io_in_data_2),
    .io_in_data_3(preDecoder_io_in_data_3),
    .io_in_data_4(preDecoder_io_in_data_4),
    .io_in_data_5(preDecoder_io_in_data_5),
    .io_in_data_6(preDecoder_io_in_data_6),
    .io_in_data_7(preDecoder_io_in_data_7),
    .io_in_data_8(preDecoder_io_in_data_8),
    .io_out_pd_0_isRVC(preDecoder_io_out_pd_0_isRVC),
    .io_out_pd_0_brType(preDecoder_io_out_pd_0_brType),
    .io_out_pd_0_isCall(preDecoder_io_out_pd_0_isCall),
    .io_out_pd_0_isRet(preDecoder_io_out_pd_0_isRet),
    .io_out_pd_1_valid(preDecoder_io_out_pd_1_valid),
    .io_out_pd_1_isRVC(preDecoder_io_out_pd_1_isRVC),
    .io_out_pd_1_brType(preDecoder_io_out_pd_1_brType),
    .io_out_pd_1_isCall(preDecoder_io_out_pd_1_isCall),
    .io_out_pd_1_isRet(preDecoder_io_out_pd_1_isRet),
    .io_out_pd_2_valid(preDecoder_io_out_pd_2_valid),
    .io_out_pd_2_isRVC(preDecoder_io_out_pd_2_isRVC),
    .io_out_pd_2_brType(preDecoder_io_out_pd_2_brType),
    .io_out_pd_2_isCall(preDecoder_io_out_pd_2_isCall),
    .io_out_pd_2_isRet(preDecoder_io_out_pd_2_isRet),
    .io_out_pd_3_valid(preDecoder_io_out_pd_3_valid),
    .io_out_pd_3_isRVC(preDecoder_io_out_pd_3_isRVC),
    .io_out_pd_3_brType(preDecoder_io_out_pd_3_brType),
    .io_out_pd_3_isCall(preDecoder_io_out_pd_3_isCall),
    .io_out_pd_3_isRet(preDecoder_io_out_pd_3_isRet),
    .io_out_pd_4_valid(preDecoder_io_out_pd_4_valid),
    .io_out_pd_4_isRVC(preDecoder_io_out_pd_4_isRVC),
    .io_out_pd_4_brType(preDecoder_io_out_pd_4_brType),
    .io_out_pd_4_isCall(preDecoder_io_out_pd_4_isCall),
    .io_out_pd_4_isRet(preDecoder_io_out_pd_4_isRet),
    .io_out_pd_5_valid(preDecoder_io_out_pd_5_valid),
    .io_out_pd_5_isRVC(preDecoder_io_out_pd_5_isRVC),
    .io_out_pd_5_brType(preDecoder_io_out_pd_5_brType),
    .io_out_pd_5_isCall(preDecoder_io_out_pd_5_isCall),
    .io_out_pd_5_isRet(preDecoder_io_out_pd_5_isRet),
    .io_out_pd_6_valid(preDecoder_io_out_pd_6_valid),
    .io_out_pd_6_isRVC(preDecoder_io_out_pd_6_isRVC),
    .io_out_pd_6_brType(preDecoder_io_out_pd_6_brType),
    .io_out_pd_6_isCall(preDecoder_io_out_pd_6_isCall),
    .io_out_pd_6_isRet(preDecoder_io_out_pd_6_isRet),
    .io_out_pd_7_valid(preDecoder_io_out_pd_7_valid),
    .io_out_pd_7_isRVC(preDecoder_io_out_pd_7_isRVC),
    .io_out_pd_7_brType(preDecoder_io_out_pd_7_brType),
    .io_out_pd_7_isCall(preDecoder_io_out_pd_7_isCall),
    .io_out_pd_7_isRet(preDecoder_io_out_pd_7_isRet),
    .io_out_hasHalfValid_2(preDecoder_io_out_hasHalfValid_2),
    .io_out_hasHalfValid_3(preDecoder_io_out_hasHalfValid_3),
    .io_out_hasHalfValid_4(preDecoder_io_out_hasHalfValid_4),
    .io_out_hasHalfValid_5(preDecoder_io_out_hasHalfValid_5),
    .io_out_hasHalfValid_6(preDecoder_io_out_hasHalfValid_6),
    .io_out_hasHalfValid_7(preDecoder_io_out_hasHalfValid_7),
    .io_out_expInstr_0(preDecoder_io_out_expInstr_0),
    .io_out_expInstr_1(preDecoder_io_out_expInstr_1),
    .io_out_expInstr_2(preDecoder_io_out_expInstr_2),
    .io_out_expInstr_3(preDecoder_io_out_expInstr_3),
    .io_out_expInstr_4(preDecoder_io_out_expInstr_4),
    .io_out_expInstr_5(preDecoder_io_out_expInstr_5),
    .io_out_expInstr_6(preDecoder_io_out_expInstr_6),
    .io_out_expInstr_7(preDecoder_io_out_expInstr_7),
    .io_out_jumpOffset_0(preDecoder_io_out_jumpOffset_0),
    .io_out_jumpOffset_1(preDecoder_io_out_jumpOffset_1),
    .io_out_jumpOffset_2(preDecoder_io_out_jumpOffset_2),
    .io_out_jumpOffset_3(preDecoder_io_out_jumpOffset_3),
    .io_out_jumpOffset_4(preDecoder_io_out_jumpOffset_4),
    .io_out_jumpOffset_5(preDecoder_io_out_jumpOffset_5),
    .io_out_jumpOffset_6(preDecoder_io_out_jumpOffset_6),
    .io_out_jumpOffset_7(preDecoder_io_out_jumpOffset_7)
  );
  PredChecker predChecker ( // @[IFU.scala 122:31]
    .io_in_ftqOffset_valid(predChecker_io_in_ftqOffset_valid),
    .io_in_ftqOffset_bits(predChecker_io_in_ftqOffset_bits),
    .io_in_jumpOffset_0(predChecker_io_in_jumpOffset_0),
    .io_in_jumpOffset_1(predChecker_io_in_jumpOffset_1),
    .io_in_jumpOffset_2(predChecker_io_in_jumpOffset_2),
    .io_in_jumpOffset_3(predChecker_io_in_jumpOffset_3),
    .io_in_jumpOffset_4(predChecker_io_in_jumpOffset_4),
    .io_in_jumpOffset_5(predChecker_io_in_jumpOffset_5),
    .io_in_jumpOffset_6(predChecker_io_in_jumpOffset_6),
    .io_in_jumpOffset_7(predChecker_io_in_jumpOffset_7),
    .io_in_target(predChecker_io_in_target),
    .io_in_instrRange_0(predChecker_io_in_instrRange_0),
    .io_in_instrRange_1(predChecker_io_in_instrRange_1),
    .io_in_instrRange_2(predChecker_io_in_instrRange_2),
    .io_in_instrRange_3(predChecker_io_in_instrRange_3),
    .io_in_instrRange_4(predChecker_io_in_instrRange_4),
    .io_in_instrRange_5(predChecker_io_in_instrRange_5),
    .io_in_instrRange_6(predChecker_io_in_instrRange_6),
    .io_in_instrRange_7(predChecker_io_in_instrRange_7),
    .io_in_instrValid_0(predChecker_io_in_instrValid_0),
    .io_in_instrValid_1(predChecker_io_in_instrValid_1),
    .io_in_instrValid_2(predChecker_io_in_instrValid_2),
    .io_in_instrValid_3(predChecker_io_in_instrValid_3),
    .io_in_instrValid_4(predChecker_io_in_instrValid_4),
    .io_in_instrValid_5(predChecker_io_in_instrValid_5),
    .io_in_instrValid_6(predChecker_io_in_instrValid_6),
    .io_in_instrValid_7(predChecker_io_in_instrValid_7),
    .io_in_pds_0_isRVC(predChecker_io_in_pds_0_isRVC),
    .io_in_pds_0_brType(predChecker_io_in_pds_0_brType),
    .io_in_pds_0_isRet(predChecker_io_in_pds_0_isRet),
    .io_in_pds_1_isRVC(predChecker_io_in_pds_1_isRVC),
    .io_in_pds_1_brType(predChecker_io_in_pds_1_brType),
    .io_in_pds_1_isRet(predChecker_io_in_pds_1_isRet),
    .io_in_pds_2_isRVC(predChecker_io_in_pds_2_isRVC),
    .io_in_pds_2_brType(predChecker_io_in_pds_2_brType),
    .io_in_pds_2_isRet(predChecker_io_in_pds_2_isRet),
    .io_in_pds_3_isRVC(predChecker_io_in_pds_3_isRVC),
    .io_in_pds_3_brType(predChecker_io_in_pds_3_brType),
    .io_in_pds_3_isRet(predChecker_io_in_pds_3_isRet),
    .io_in_pds_4_isRVC(predChecker_io_in_pds_4_isRVC),
    .io_in_pds_4_brType(predChecker_io_in_pds_4_brType),
    .io_in_pds_4_isRet(predChecker_io_in_pds_4_isRet),
    .io_in_pds_5_isRVC(predChecker_io_in_pds_5_isRVC),
    .io_in_pds_5_brType(predChecker_io_in_pds_5_brType),
    .io_in_pds_5_isRet(predChecker_io_in_pds_5_isRet),
    .io_in_pds_6_isRVC(predChecker_io_in_pds_6_isRVC),
    .io_in_pds_6_brType(predChecker_io_in_pds_6_brType),
    .io_in_pds_6_isRet(predChecker_io_in_pds_6_isRet),
    .io_in_pds_7_isRVC(predChecker_io_in_pds_7_isRVC),
    .io_in_pds_7_brType(predChecker_io_in_pds_7_brType),
    .io_in_pds_7_isRet(predChecker_io_in_pds_7_isRet),
    .io_in_pc_0(predChecker_io_in_pc_0),
    .io_in_pc_1(predChecker_io_in_pc_1),
    .io_in_pc_2(predChecker_io_in_pc_2),
    .io_in_pc_3(predChecker_io_in_pc_3),
    .io_in_pc_4(predChecker_io_in_pc_4),
    .io_in_pc_5(predChecker_io_in_pc_5),
    .io_in_pc_6(predChecker_io_in_pc_6),
    .io_in_pc_7(predChecker_io_in_pc_7),
    .io_out_fixedRange_0(predChecker_io_out_fixedRange_0),
    .io_out_fixedRange_1(predChecker_io_out_fixedRange_1),
    .io_out_fixedRange_2(predChecker_io_out_fixedRange_2),
    .io_out_fixedRange_3(predChecker_io_out_fixedRange_3),
    .io_out_fixedRange_4(predChecker_io_out_fixedRange_4),
    .io_out_fixedRange_5(predChecker_io_out_fixedRange_5),
    .io_out_fixedRange_6(predChecker_io_out_fixedRange_6),
    .io_out_fixedRange_7(predChecker_io_out_fixedRange_7),
    .io_out_fixedTaken_0(predChecker_io_out_fixedTaken_0),
    .io_out_fixedTaken_1(predChecker_io_out_fixedTaken_1),
    .io_out_fixedTaken_2(predChecker_io_out_fixedTaken_2),
    .io_out_fixedTaken_3(predChecker_io_out_fixedTaken_3),
    .io_out_fixedTaken_4(predChecker_io_out_fixedTaken_4),
    .io_out_fixedTaken_5(predChecker_io_out_fixedTaken_5),
    .io_out_fixedTaken_6(predChecker_io_out_fixedTaken_6),
    .io_out_fixedTaken_7(predChecker_io_out_fixedTaken_7),
    .io_out_fixedTarget_0(predChecker_io_out_fixedTarget_0),
    .io_out_fixedTarget_1(predChecker_io_out_fixedTarget_1),
    .io_out_fixedTarget_2(predChecker_io_out_fixedTarget_2),
    .io_out_fixedTarget_3(predChecker_io_out_fixedTarget_3),
    .io_out_fixedTarget_4(predChecker_io_out_fixedTarget_4),
    .io_out_fixedTarget_5(predChecker_io_out_fixedTarget_5),
    .io_out_fixedTarget_6(predChecker_io_out_fixedTarget_6),
    .io_out_fixedTarget_7(predChecker_io_out_fixedTarget_7),
    .io_out_fixedMissPred_0(predChecker_io_out_fixedMissPred_0),
    .io_out_fixedMissPred_1(predChecker_io_out_fixedMissPred_1),
    .io_out_fixedMissPred_2(predChecker_io_out_fixedMissPred_2),
    .io_out_fixedMissPred_3(predChecker_io_out_fixedMissPred_3),
    .io_out_fixedMissPred_4(predChecker_io_out_fixedMissPred_4),
    .io_out_fixedMissPred_5(predChecker_io_out_fixedMissPred_5),
    .io_out_fixedMissPred_6(predChecker_io_out_fixedMissPred_6),
    .io_out_fixedMissPred_7(predChecker_io_out_fixedMissPred_7)
  );
  FrontendTrigger frontendTrigger ( // @[IFU.scala 123:31]
    .clock(frontendTrigger_clock),
    .reset(frontendTrigger_reset),
    .io_frontendTrigger_t_valid(frontendTrigger_io_frontendTrigger_t_valid),
    .io_frontendTrigger_t_bits_addr(frontendTrigger_io_frontendTrigger_t_bits_addr),
    .io_frontendTrigger_t_bits_tdata_matchType(frontendTrigger_io_frontendTrigger_t_bits_tdata_matchType),
    .io_frontendTrigger_t_bits_tdata_select(frontendTrigger_io_frontendTrigger_t_bits_tdata_select),
    .io_frontendTrigger_t_bits_tdata_timing(frontendTrigger_io_frontendTrigger_t_bits_tdata_timing),
    .io_frontendTrigger_t_bits_tdata_chain(frontendTrigger_io_frontendTrigger_t_bits_tdata_chain),
    .io_frontendTrigger_t_bits_tdata_tdata2(frontendTrigger_io_frontendTrigger_t_bits_tdata_tdata2),
    .io_csrTriggerEnable_0(frontendTrigger_io_csrTriggerEnable_0),
    .io_csrTriggerEnable_1(frontendTrigger_io_csrTriggerEnable_1),
    .io_csrTriggerEnable_2(frontendTrigger_io_csrTriggerEnable_2),
    .io_csrTriggerEnable_3(frontendTrigger_io_csrTriggerEnable_3),
    .io_triggered_0_frontendHit_0(frontendTrigger_io_triggered_0_frontendHit_0),
    .io_triggered_0_frontendHit_1(frontendTrigger_io_triggered_0_frontendHit_1),
    .io_triggered_0_frontendHit_2(frontendTrigger_io_triggered_0_frontendHit_2),
    .io_triggered_0_frontendHit_3(frontendTrigger_io_triggered_0_frontendHit_3),
    .io_triggered_0_backendEn_0(frontendTrigger_io_triggered_0_backendEn_0),
    .io_triggered_0_backendEn_1(frontendTrigger_io_triggered_0_backendEn_1),
    .io_triggered_1_frontendHit_0(frontendTrigger_io_triggered_1_frontendHit_0),
    .io_triggered_1_frontendHit_1(frontendTrigger_io_triggered_1_frontendHit_1),
    .io_triggered_1_frontendHit_2(frontendTrigger_io_triggered_1_frontendHit_2),
    .io_triggered_1_frontendHit_3(frontendTrigger_io_triggered_1_frontendHit_3),
    .io_triggered_1_backendEn_0(frontendTrigger_io_triggered_1_backendEn_0),
    .io_triggered_1_backendEn_1(frontendTrigger_io_triggered_1_backendEn_1),
    .io_triggered_2_frontendHit_0(frontendTrigger_io_triggered_2_frontendHit_0),
    .io_triggered_2_frontendHit_1(frontendTrigger_io_triggered_2_frontendHit_1),
    .io_triggered_2_frontendHit_2(frontendTrigger_io_triggered_2_frontendHit_2),
    .io_triggered_2_frontendHit_3(frontendTrigger_io_triggered_2_frontendHit_3),
    .io_triggered_2_backendEn_0(frontendTrigger_io_triggered_2_backendEn_0),
    .io_triggered_2_backendEn_1(frontendTrigger_io_triggered_2_backendEn_1),
    .io_triggered_3_frontendHit_0(frontendTrigger_io_triggered_3_frontendHit_0),
    .io_triggered_3_frontendHit_1(frontendTrigger_io_triggered_3_frontendHit_1),
    .io_triggered_3_frontendHit_2(frontendTrigger_io_triggered_3_frontendHit_2),
    .io_triggered_3_frontendHit_3(frontendTrigger_io_triggered_3_frontendHit_3),
    .io_triggered_3_backendEn_0(frontendTrigger_io_triggered_3_backendEn_0),
    .io_triggered_3_backendEn_1(frontendTrigger_io_triggered_3_backendEn_1),
    .io_triggered_4_frontendHit_0(frontendTrigger_io_triggered_4_frontendHit_0),
    .io_triggered_4_frontendHit_1(frontendTrigger_io_triggered_4_frontendHit_1),
    .io_triggered_4_frontendHit_2(frontendTrigger_io_triggered_4_frontendHit_2),
    .io_triggered_4_frontendHit_3(frontendTrigger_io_triggered_4_frontendHit_3),
    .io_triggered_4_backendEn_0(frontendTrigger_io_triggered_4_backendEn_0),
    .io_triggered_4_backendEn_1(frontendTrigger_io_triggered_4_backendEn_1),
    .io_triggered_5_frontendHit_0(frontendTrigger_io_triggered_5_frontendHit_0),
    .io_triggered_5_frontendHit_1(frontendTrigger_io_triggered_5_frontendHit_1),
    .io_triggered_5_frontendHit_2(frontendTrigger_io_triggered_5_frontendHit_2),
    .io_triggered_5_frontendHit_3(frontendTrigger_io_triggered_5_frontendHit_3),
    .io_triggered_5_backendEn_0(frontendTrigger_io_triggered_5_backendEn_0),
    .io_triggered_5_backendEn_1(frontendTrigger_io_triggered_5_backendEn_1),
    .io_triggered_6_frontendHit_0(frontendTrigger_io_triggered_6_frontendHit_0),
    .io_triggered_6_frontendHit_1(frontendTrigger_io_triggered_6_frontendHit_1),
    .io_triggered_6_frontendHit_2(frontendTrigger_io_triggered_6_frontendHit_2),
    .io_triggered_6_frontendHit_3(frontendTrigger_io_triggered_6_frontendHit_3),
    .io_triggered_6_backendEn_0(frontendTrigger_io_triggered_6_backendEn_0),
    .io_triggered_6_backendEn_1(frontendTrigger_io_triggered_6_backendEn_1),
    .io_triggered_7_frontendHit_0(frontendTrigger_io_triggered_7_frontendHit_0),
    .io_triggered_7_frontendHit_1(frontendTrigger_io_triggered_7_frontendHit_1),
    .io_triggered_7_frontendHit_2(frontendTrigger_io_triggered_7_frontendHit_2),
    .io_triggered_7_frontendHit_3(frontendTrigger_io_triggered_7_frontendHit_3),
    .io_triggered_7_backendEn_0(frontendTrigger_io_triggered_7_backendEn_0),
    .io_triggered_7_backendEn_1(frontendTrigger_io_triggered_7_backendEn_1),
    .io_pds_0_isRVC(frontendTrigger_io_pds_0_isRVC),
    .io_pds_1_isRVC(frontendTrigger_io_pds_1_isRVC),
    .io_pds_2_isRVC(frontendTrigger_io_pds_2_isRVC),
    .io_pds_3_isRVC(frontendTrigger_io_pds_3_isRVC),
    .io_pds_4_isRVC(frontendTrigger_io_pds_4_isRVC),
    .io_pds_5_isRVC(frontendTrigger_io_pds_5_isRVC),
    .io_pds_6_isRVC(frontendTrigger_io_pds_6_isRVC),
    .io_pds_7_isRVC(frontendTrigger_io_pds_7_isRVC),
    .io_pc_0(frontendTrigger_io_pc_0),
    .io_pc_1(frontendTrigger_io_pc_1),
    .io_pc_2(frontendTrigger_io_pc_2),
    .io_pc_3(frontendTrigger_io_pc_3),
    .io_pc_4(frontendTrigger_io_pc_4),
    .io_pc_5(frontendTrigger_io_pc_5),
    .io_pc_6(frontendTrigger_io_pc_6),
    .io_pc_7(frontendTrigger_io_pc_7),
    .io_data_0(frontendTrigger_io_data_0),
    .io_data_1(frontendTrigger_io_data_1),
    .io_data_2(frontendTrigger_io_data_2),
    .io_data_3(frontendTrigger_io_data_3),
    .io_data_4(frontendTrigger_io_data_4),
    .io_data_5(frontendTrigger_io_data_5),
    .io_data_6(frontendTrigger_io_data_6),
    .io_data_7(frontendTrigger_io_data_7),
    .io_data_8(frontendTrigger_io_data_8)
  );
  assign io_ftqInter_fromFtq_req_ready = io_icacheInter_0_req_ready & io_icacheInter_1_req_ready & f1_ready; // @[IFU.scala 159:63]
  assign io_ftqInter_toFtq_pdWb_valid = wb_valid ? wb_valid : mmioFlushWb_valid; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_0 = wb_valid ? wb_pc_0 : f3_pc_0; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_1 = wb_valid ? wb_pc_1 : f3_pc_1; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_2 = wb_valid ? wb_pc_2 : f3_pc_2; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_3 = wb_valid ? wb_pc_3 : f3_pc_3; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_4 = wb_valid ? wb_pc_4 : f3_pc_4; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_5 = wb_valid ? wb_pc_5 : f3_pc_5; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_6 = wb_valid ? wb_pc_6 : f3_pc_6; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pc_7 = wb_valid ? wb_pc_7 : f3_pc_7; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_0_valid = wb_valid ? wb_instr_valid_0 : 1'h1; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_0_isRVC = wb_valid ? wb_pd_0_isRVC : f3_pd_0_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_0_brType = wb_valid ? wb_pd_0_brType : f3_pd_0_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_0_isCall = wb_valid ? wb_pd_0_isCall : f3_pd_0_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_0_isRet = wb_valid ? wb_pd_0_isRet : f3_pd_0_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_1_valid = wb_valid & wb_instr_valid_1; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_1_isRVC = wb_valid ? wb_pd_1_isRVC : f3_pd_1_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_1_brType = wb_valid ? wb_pd_1_brType : f3_pd_1_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_1_isCall = wb_valid ? wb_pd_1_isCall : f3_pd_1_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_1_isRet = wb_valid ? wb_pd_1_isRet : f3_pd_1_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_2_valid = wb_valid & wb_instr_valid_2; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_2_isRVC = wb_valid ? wb_pd_2_isRVC : f3_pd_2_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_2_brType = wb_valid ? wb_pd_2_brType : f3_pd_2_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_2_isCall = wb_valid ? wb_pd_2_isCall : f3_pd_2_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_2_isRet = wb_valid ? wb_pd_2_isRet : f3_pd_2_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_3_valid = wb_valid & wb_instr_valid_3; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_3_isRVC = wb_valid ? wb_pd_3_isRVC : f3_pd_3_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_3_brType = wb_valid ? wb_pd_3_brType : f3_pd_3_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_3_isCall = wb_valid ? wb_pd_3_isCall : f3_pd_3_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_3_isRet = wb_valid ? wb_pd_3_isRet : f3_pd_3_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_4_valid = wb_valid & wb_instr_valid_4; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_4_isRVC = wb_valid ? wb_pd_4_isRVC : f3_pd_4_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_4_brType = wb_valid ? wb_pd_4_brType : f3_pd_4_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_4_isCall = wb_valid ? wb_pd_4_isCall : f3_pd_4_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_4_isRet = wb_valid ? wb_pd_4_isRet : f3_pd_4_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_5_valid = wb_valid & wb_instr_valid_5; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_5_isRVC = wb_valid ? wb_pd_5_isRVC : f3_pd_5_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_5_brType = wb_valid ? wb_pd_5_brType : f3_pd_5_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_5_isCall = wb_valid ? wb_pd_5_isCall : f3_pd_5_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_5_isRet = wb_valid ? wb_pd_5_isRet : f3_pd_5_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_6_valid = wb_valid & wb_instr_valid_6; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_6_isRVC = wb_valid ? wb_pd_6_isRVC : f3_pd_6_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_6_brType = wb_valid ? wb_pd_6_brType : f3_pd_6_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_6_isCall = wb_valid ? wb_pd_6_isCall : f3_pd_6_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_6_isRet = wb_valid ? wb_pd_6_isRet : f3_pd_6_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_7_valid = wb_valid & wb_instr_valid_7; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_7_isRVC = wb_valid ? wb_pd_7_isRVC : f3_pd_7_isRVC; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_7_brType = wb_valid ? wb_pd_7_brType : f3_pd_7_brType; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_7_isCall = wb_valid ? wb_pd_7_isCall : f3_pd_7_isCall; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_pd_7_isRet = wb_valid ? wb_pd_7_isRet : f3_pd_7_isRet; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_ftqIdx_flag = wb_valid ? wb_ftq_req_ftqIdx_flag : f3_ftq_req_ftqIdx_flag; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_ftqIdx_value = wb_valid ? wb_ftq_req_ftqIdx_value : f3_ftq_req_ftqIdx_value; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_misOffset_valid = wb_valid ? checkFlushWb_bits_misOffset_valid : f3_req_is_mmio; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_misOffset_bits = wb_valid ? checkFlushWb_bits_misOffset_bits : 3'h0; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_cfiOffset_valid = wb_valid & checkFlushWb_bits_cfiOffset_valid; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_target = wb_valid ? checkFlushWb_bits_target : mmioFlushWb_bits_target; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_jalTarget = wb_valid ? checkFlushWb_bits_jalTarget : 39'h0; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_0 = wb_valid ? wb_instr_range[0] : 1'h1; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_1 = wb_valid & wb_instr_range[1]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_2 = wb_valid & wb_instr_range[2]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_3 = wb_valid & wb_instr_range[3]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_4 = wb_valid & wb_instr_range[4]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_5 = wb_valid & wb_instr_range[5]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_6 = wb_valid & wb_instr_range[6]; // @[IFU.scala 670:20]
  assign io_ftqInter_toFtq_pdWb_bits_instrRange_7 = wb_valid & wb_instr_range[7]; // @[IFU.scala 670:20]
  assign io_icacheInter_0_req_valid = io_ftqInter_fromFtq_req_valid; // @[IFU.scala 108:40 161:27]
  assign io_icacheInter_0_req_bits_vaddr = io_ftqInter_fromFtq_req_bits_startAddr; // @[IFU.scala 108:40 162:27]
  assign io_icacheInter_1_req_valid = io_ftqInter_fromFtq_req_valid & f0_doubleLine; // @[IFU.scala 163:48]
  assign io_icacheInter_1_req_bits_vaddr = io_ftqInter_fromFtq_req_bits_nextlineStart; // @[IFU.scala 108:40 164:27]
  assign io_icacheStop = ~f3_ready; // @[IFU.scala 233:20]
  assign io_toIbuffer_valid = f3_valid & (_T_25 | f3_mmio_can_go) & ~f3_flush; // @[IFU.scala 551:84]
  assign io_toIbuffer_bits_instrs_0 = f3_req_is_mmio ? _io_toIbuffer_bits_instrs_0_T_64_bits : f3_expd_instr_0; // @[IFU.scala 572:23 552:33 580:34]
  assign io_toIbuffer_bits_instrs_1 = f3_expd_instr_1; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_2 = f3_expd_instr_2; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_3 = f3_expd_instr_3; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_4 = f3_expd_instr_4; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_5 = f3_expd_instr_5; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_6 = f3_expd_instr_6; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_instrs_7 = f3_expd_instr_7; // @[IFU.scala 552:33]
  assign io_toIbuffer_bits_valid = f3_lastHalf_valid ? _io_toIbuffer_bits_valid_T_2 : _T_54; // @[IFU.scala 566:26 553:33 568:33]
  assign io_toIbuffer_bits_enqEnable = f3_req_is_mmio ? 8'h1 : _GEN_886; // @[IFU.scala 572:23 592:35]
  assign io_toIbuffer_bits_pd_0_isRVC = f3_req_is_mmio ? currentIsRVC : f3_pd_0_isRVC; // @[IFU.scala 572:23 555:33 583:37]
  assign io_toIbuffer_bits_pd_0_brType = f3_req_is_mmio ? brType : f3_pd_0_brType; // @[IFU.scala 572:23 555:33 584:37]
  assign io_toIbuffer_bits_pd_0_isCall = f3_req_is_mmio ? isCall : f3_pd_0_isCall; // @[IFU.scala 572:23 555:33 585:37]
  assign io_toIbuffer_bits_pd_0_isRet = f3_req_is_mmio ? isRet : f3_pd_0_isRet; // @[IFU.scala 572:23 555:33 586:37]
  assign io_toIbuffer_bits_pd_1_isRVC = f3_pd_1_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_1_brType = f3_pd_1_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_1_isCall = f3_pd_1_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_1_isRet = f3_pd_1_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_2_isRVC = f3_pd_2_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_2_brType = f3_pd_2_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_2_isCall = f3_pd_2_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_2_isRet = f3_pd_2_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_3_isRVC = f3_pd_3_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_3_brType = f3_pd_3_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_3_isCall = f3_pd_3_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_3_isRet = f3_pd_3_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_4_isRVC = f3_pd_4_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_4_brType = f3_pd_4_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_4_isCall = f3_pd_4_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_4_isRet = f3_pd_4_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_5_isRVC = f3_pd_5_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_5_brType = f3_pd_5_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_5_isCall = f3_pd_5_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_5_isRet = f3_pd_5_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_6_isRVC = f3_pd_6_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_6_brType = f3_pd_6_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_6_isCall = f3_pd_6_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_6_isRet = f3_pd_6_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_7_isRVC = f3_pd_7_isRVC; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_7_brType = f3_pd_7_brType; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_7_isCall = f3_pd_7_isCall; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_pd_7_isRet = f3_pd_7_isRet; // @[IFU.scala 555:33]
  assign io_toIbuffer_bits_foldpc_0 = f3_foldpc_0; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_1 = f3_foldpc_1; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_2 = f3_foldpc_2; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_3 = f3_foldpc_3; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_4 = f3_foldpc_4; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_5 = f3_foldpc_5; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_6 = f3_foldpc_6; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_foldpc_7 = f3_foldpc_7; // @[IFU.scala 559:33]
  assign io_toIbuffer_bits_ftqPtr_flag = f3_ftq_req_ftqIdx_flag; // @[IFU.scala 556:33]
  assign io_toIbuffer_bits_ftqPtr_value = f3_ftq_req_ftqIdx_value; // @[IFU.scala 556:33]
  assign io_toIbuffer_bits_ftqOffset_0_valid = predChecker_io_out_fixedTaken_0 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_1_valid = predChecker_io_out_fixedTaken_1 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_2_valid = predChecker_io_out_fixedTaken_2 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_3_valid = predChecker_io_out_fixedTaken_3 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_4_valid = predChecker_io_out_fixedTaken_4 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_5_valid = predChecker_io_out_fixedTaken_5 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_6_valid = predChecker_io_out_fixedTaken_6 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ftqOffset_7_valid = predChecker_io_out_fixedTaken_7 & _T_25; // @[IFU.scala 558:113]
  assign io_toIbuffer_bits_ipf_0 = f3_req_is_mmio ? mmio_resend_pf : f3_pf_vec_0 | f3_crossPageFault_0; // @[IFU.scala 572:23 589:30 560:33]
  assign io_toIbuffer_bits_ipf_1 = f3_pf_vec_1 | f3_crossPageFault_1; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_2 = f3_pf_vec_2 | f3_crossPageFault_2; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_3 = f3_pf_vec_3 | f3_crossPageFault_3; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_4 = f3_pf_vec_4 | f3_crossPageFault_4; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_5 = f3_pf_vec_5 | f3_crossPageFault_5; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_6 = f3_pf_vec_6 | f3_crossPageFault_6; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_ipf_7 = f3_pf_vec_7 | f3_crossPageFault_7; // @[IFU.scala 560:106]
  assign io_toIbuffer_bits_acf_0 = f3_req_is_mmio ? mmio_resend_af : f3_af_vec_0; // @[IFU.scala 572:23 588:30 561:33]
  assign io_toIbuffer_bits_acf_1 = f3_af_vec_1; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_2 = f3_af_vec_2; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_3 = f3_af_vec_3; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_4 = f3_af_vec_4; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_5 = f3_af_vec_5; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_6 = f3_af_vec_6; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_acf_7 = f3_af_vec_7; // @[IFU.scala 561:33]
  assign io_toIbuffer_bits_crossPageIPFFix_0 = f3_req_is_mmio ? mmio_resend_pf : f3_crossPageFault_0; // @[IFU.scala 572:23 562:37 590:42]
  assign io_toIbuffer_bits_crossPageIPFFix_1 = f3_crossPageFault_1; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_2 = f3_crossPageFault_2; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_3 = f3_crossPageFault_3; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_4 = f3_crossPageFault_4; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_5 = f3_crossPageFault_5; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_6 = f3_crossPageFault_6; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_crossPageIPFFix_7 = f3_crossPageFault_7; // @[IFU.scala 562:37]
  assign io_toIbuffer_bits_triggered_0_frontendHit_0 = frontendTrigger_io_triggered_0_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_0_frontendHit_1 = frontendTrigger_io_triggered_0_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_0_frontendHit_2 = frontendTrigger_io_triggered_0_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_0_frontendHit_3 = frontendTrigger_io_triggered_0_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_0_backendEn_0 = frontendTrigger_io_triggered_0_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_0_backendEn_1 = frontendTrigger_io_triggered_0_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_frontendHit_0 = frontendTrigger_io_triggered_1_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_frontendHit_1 = frontendTrigger_io_triggered_1_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_frontendHit_2 = frontendTrigger_io_triggered_1_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_frontendHit_3 = frontendTrigger_io_triggered_1_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_backendEn_0 = frontendTrigger_io_triggered_1_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_1_backendEn_1 = frontendTrigger_io_triggered_1_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_frontendHit_0 = frontendTrigger_io_triggered_2_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_frontendHit_1 = frontendTrigger_io_triggered_2_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_frontendHit_2 = frontendTrigger_io_triggered_2_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_frontendHit_3 = frontendTrigger_io_triggered_2_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_backendEn_0 = frontendTrigger_io_triggered_2_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_2_backendEn_1 = frontendTrigger_io_triggered_2_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_frontendHit_0 = frontendTrigger_io_triggered_3_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_frontendHit_1 = frontendTrigger_io_triggered_3_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_frontendHit_2 = frontendTrigger_io_triggered_3_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_frontendHit_3 = frontendTrigger_io_triggered_3_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_backendEn_0 = frontendTrigger_io_triggered_3_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_3_backendEn_1 = frontendTrigger_io_triggered_3_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_frontendHit_0 = frontendTrigger_io_triggered_4_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_frontendHit_1 = frontendTrigger_io_triggered_4_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_frontendHit_2 = frontendTrigger_io_triggered_4_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_frontendHit_3 = frontendTrigger_io_triggered_4_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_backendEn_0 = frontendTrigger_io_triggered_4_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_4_backendEn_1 = frontendTrigger_io_triggered_4_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_frontendHit_0 = frontendTrigger_io_triggered_5_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_frontendHit_1 = frontendTrigger_io_triggered_5_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_frontendHit_2 = frontendTrigger_io_triggered_5_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_frontendHit_3 = frontendTrigger_io_triggered_5_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_backendEn_0 = frontendTrigger_io_triggered_5_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_5_backendEn_1 = frontendTrigger_io_triggered_5_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_frontendHit_0 = frontendTrigger_io_triggered_6_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_frontendHit_1 = frontendTrigger_io_triggered_6_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_frontendHit_2 = frontendTrigger_io_triggered_6_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_frontendHit_3 = frontendTrigger_io_triggered_6_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_backendEn_0 = frontendTrigger_io_triggered_6_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_6_backendEn_1 = frontendTrigger_io_triggered_6_backendEn_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_frontendHit_0 = frontendTrigger_io_triggered_7_frontendHit_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_frontendHit_1 = frontendTrigger_io_triggered_7_frontendHit_1; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_frontendHit_2 = frontendTrigger_io_triggered_7_frontendHit_2; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_frontendHit_3 = frontendTrigger_io_triggered_7_frontendHit_3; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_backendEn_0 = frontendTrigger_io_triggered_7_backendEn_0; // @[IFU.scala 563:33]
  assign io_toIbuffer_bits_triggered_7_backendEn_1 = frontendTrigger_io_triggered_7_backendEn_1; // @[IFU.scala 563:33]
  assign io_uncacheInter_fromUncache_ready = 1'h1; // @[IFU.scala 485:23]
  assign io_uncacheInter_toUncache_valid = (mmio_state == 4'h1 | mmio_state == 4'h6) & f3_req_is_mmio; // @[IFU.scala 483:88]
  assign io_uncacheInter_toUncache_bits_addr = _io_uncacheInter_toUncache_valid_T_1 ? mmio_resend_addr : f3_pAddrs_0; // @[IFU.scala 484:29]
  assign io_iTLBInter_req_valid = mmio_state == 4'h3 & f3_req_is_mmio; // @[IFU.scala 487:64]
  assign io_iTLBInter_req_bits_vaddr = f3_resend_vaddr; // @[IFU.scala 489:34]
  assign io_pmp_req_bits_addr = mmio_resend_addr; // @[IFU.scala 497:25]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = {{5'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_9_value = {{5'd0}, io_perf_9_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_10_value = {{5'd0}, io_perf_10_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_11_value = {{5'd0}, io_perf_11_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_12_value = {{5'd0}, io_perf_12_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign preDecoder_io_in_data_0 = 6'h3f == f2_cut_ptr_0 ? f2_cut_data_dataVec_63 : _GEN_117; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_1 = 6'h3f == f2_cut_ptr_1 ? f2_cut_data_dataVec_63 : _GEN_181; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_2 = 6'h3f == f2_cut_ptr_2 ? f2_cut_data_dataVec_63 : _GEN_245; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_3 = 6'h3f == f2_cut_ptr_3 ? f2_cut_data_dataVec_63 : _GEN_309; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_4 = 6'h3f == f2_cut_ptr_4 ? f2_cut_data_dataVec_63 : _GEN_373; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_5 = 6'h3f == f2_cut_ptr_5 ? f2_cut_data_dataVec_63 : _GEN_437; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_6 = 6'h3f == f2_cut_ptr_6 ? f2_cut_data_dataVec_63 : _GEN_501; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_7 = 6'h3f == f2_cut_ptr_7 ? f2_cut_data_dataVec_63 : _GEN_565; // @[IFU.scala 281:{19,19}]
  assign preDecoder_io_in_data_8 = 6'h3f == f2_cut_ptr_8 ? f2_cut_data_dataVec_63 : _GEN_629; // @[IFU.scala 281:{19,19}]
  assign predChecker_io_in_ftqOffset_valid = f3_ftq_req_ftqOffset_valid; // @[IFU.scala 508:25]
  assign predChecker_io_in_ftqOffset_bits = f3_ftq_req_ftqOffset_bits; // @[IFU.scala 508:25]
  assign predChecker_io_in_jumpOffset_0 = f3_jump_offset_0; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_1 = f3_jump_offset_1; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_2 = f3_jump_offset_2; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_3 = f3_jump_offset_3; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_4 = f3_jump_offset_4; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_5 = f3_jump_offset_5; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_6 = f3_jump_offset_6; // @[IFU.scala 509:25]
  assign predChecker_io_in_jumpOffset_7 = f3_jump_offset_7; // @[IFU.scala 509:25]
  assign predChecker_io_in_target = f3_ftq_req_nextStartAddr; // @[IFU.scala 510:25]
  assign predChecker_io_in_instrRange_0 = f3_instr_range[0]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_1 = f3_instr_range[1]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_2 = f3_instr_range[2]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_3 = f3_instr_range[3]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_4 = f3_instr_range[4]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_5 = f3_instr_range[5]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_6 = f3_instr_range[6]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrRange_7 = f3_instr_range[7]; // @[IFU.scala 511:51]
  assign predChecker_io_in_instrValid_0 = _T_54[0]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_1 = _T_54[1]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_2 = _T_54[2]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_3 = _T_54[3]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_4 = _T_54[4]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_5 = _T_54[5]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_6 = _T_54[6]; // @[IFU.scala 512:51]
  assign predChecker_io_in_instrValid_7 = _T_54[7]; // @[IFU.scala 512:51]
  assign predChecker_io_in_pds_0_isRVC = f3_pd_0_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_0_brType = f3_pd_0_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_0_isRet = f3_pd_0_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_1_isRVC = f3_pd_1_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_1_brType = f3_pd_1_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_1_isRet = f3_pd_1_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_2_isRVC = f3_pd_2_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_2_brType = f3_pd_2_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_2_isRet = f3_pd_2_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_3_isRVC = f3_pd_3_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_3_brType = f3_pd_3_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_3_isRet = f3_pd_3_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_4_isRVC = f3_pd_4_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_4_brType = f3_pd_4_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_4_isRet = f3_pd_4_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_5_isRVC = f3_pd_5_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_5_brType = f3_pd_5_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_5_isRet = f3_pd_5_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_6_isRVC = f3_pd_6_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_6_brType = f3_pd_6_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_6_isRet = f3_pd_6_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_7_isRVC = f3_pd_7_isRVC; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_7_brType = f3_pd_7_brType; // @[IFU.scala 513:25]
  assign predChecker_io_in_pds_7_isRet = f3_pd_7_isRet; // @[IFU.scala 513:25]
  assign predChecker_io_in_pc_0 = f3_pc_0; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_1 = f3_pc_1; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_2 = f3_pc_2; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_3 = f3_pc_3; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_4 = f3_pc_4; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_5 = f3_pc_5; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_6 = f3_pc_6; // @[IFU.scala 514:25]
  assign predChecker_io_in_pc_7 = f3_pc_7; // @[IFU.scala 514:25]
  assign frontendTrigger_clock = clock;
  assign frontendTrigger_reset = reset;
  assign frontendTrigger_io_frontendTrigger_t_valid = io_frontendTrigger_t_valid; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_addr = io_frontendTrigger_t_bits_addr; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_tdata_matchType = io_frontendTrigger_t_bits_tdata_matchType; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_tdata_select = io_frontendTrigger_t_bits_tdata_select; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_tdata_timing = io_frontendTrigger_t_bits_tdata_timing; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_tdata_chain = io_frontendTrigger_t_bits_tdata_chain; // @[IFU.scala 544:39]
  assign frontendTrigger_io_frontendTrigger_t_bits_tdata_tdata2 = io_frontendTrigger_t_bits_tdata_tdata2; // @[IFU.scala 544:39]
  assign frontendTrigger_io_csrTriggerEnable_0 = io_csrTriggerEnable_0; // @[IFU.scala 545:39]
  assign frontendTrigger_io_csrTriggerEnable_1 = io_csrTriggerEnable_1; // @[IFU.scala 545:39]
  assign frontendTrigger_io_csrTriggerEnable_2 = io_csrTriggerEnable_2; // @[IFU.scala 545:39]
  assign frontendTrigger_io_csrTriggerEnable_3 = io_csrTriggerEnable_3; // @[IFU.scala 545:39]
  assign frontendTrigger_io_pds_0_isRVC = f3_pd_0_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_1_isRVC = f3_pd_1_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_2_isRVC = f3_pd_2_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_3_isRVC = f3_pd_3_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_4_isRVC = f3_pd_4_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_5_isRVC = f3_pd_5_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_6_isRVC = f3_pd_6_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pds_7_isRVC = f3_pd_7_isRVC; // @[IFU.scala 540:27]
  assign frontendTrigger_io_pc_0 = f3_pc_0; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_1 = f3_pc_1; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_2 = f3_pc_2; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_3 = f3_pc_3; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_4 = f3_pc_4; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_5 = f3_pc_5; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_6 = f3_pc_6; // @[IFU.scala 541:27]
  assign frontendTrigger_io_pc_7 = f3_pc_7; // @[IFU.scala 541:27]
  assign frontendTrigger_io_data_0 = f3_cut_data_0; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_1 = f3_cut_data_1; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_2 = f3_cut_data_2; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_3 = f3_cut_data_3; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_4 = f3_cut_data_4; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_5 = f3_cut_data_5; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_6 = f3_cut_data_6; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_7 = f3_cut_data_7; // @[IFU.scala 542:29]
  assign frontendTrigger_io_data_8 = f3_cut_data_8; // @[IFU.scala 542:29]
  always @(posedge clock) begin
    wb_ftq_req_ftqIdx_flag <= f3_ftq_req_ftqIdx_flag; // @[IFU.scala 632:34]
    wb_ftq_req_ftqIdx_value <= f3_ftq_req_ftqIdx_value; // @[IFU.scala 632:34]
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_ftqIdx_flag <= f2_ftq_req_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_ftqIdx_value <= f2_ftq_req_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[IFU.scala 328:34]
      f3_valid <= 1'h0; // @[IFU.scala 328:34]
    end else if (f3_flush & ~f3_need_not_flush) begin // @[IFU.scala 387:54]
      f3_valid <= 1'h0; // @[IFU.scala 387:64]
    end else begin
      f3_valid <= _GEN_771;
    end
    wb_valid <= wb_valid_REG & _T_25 & _io_toIbuffer_valid_T_3; // @[IFU.scala 631:84]
    wb_check_result_fixedMissPred_0 <= predChecker_io_out_fixedMissPred_0; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_1 <= predChecker_io_out_fixedMissPred_1; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_2 <= predChecker_io_out_fixedMissPred_2; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_3 <= predChecker_io_out_fixedMissPred_3; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_4 <= predChecker_io_out_fixedMissPred_4; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_5 <= predChecker_io_out_fixedMissPred_5; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_6 <= predChecker_io_out_fixedMissPred_6; // @[IFU.scala 634:34]
    wb_check_result_fixedMissPred_7 <= predChecker_io_out_fixedMissPred_7; // @[IFU.scala 634:34]
    wb_false_lastHalf_REG <= ~_GEN_849 & _GEN_857 & _GEN_865 & ~_GEN_873 & ~_GEN_881 & _T_25; // @[IFU.scala 519:141]
    wb_lastIdx <= ~_f3_last_validIdx_T_13; // @[IFU.scala 522:38]
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_mmio <= f2_mmio; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[IFU.scala 371:27]
      mmio_state <= 4'h0; // @[IFU.scala 371:27]
    end else if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      mmio_state <= 4'h0; // @[IFU.scala 476:16]
    end else if (4'h0 == mmio_state) begin // @[IFU.scala 405:21]
      if (f3_req_is_mmio) begin // @[IFU.scala 407:27]
        mmio_state <= 4'h1; // @[IFU.scala 408:20]
      end
    end else if (4'h1 == mmio_state) begin // @[IFU.scala 405:21]
      mmio_state <= _mmio_state_T_1; // @[IFU.scala 413:18]
    end else begin
      mmio_state <= _GEN_815;
    end
    mmio_redirect_REG <= io_uncacheInter_fromUncache_ready & io_uncacheInter_fromUncache_valid; // @[Decoupled.scala 50:35]
    if (reset) begin // @[IFU.scala 392:35]
      f3_mmio_use_seq_pc <= 1'h0; // @[IFU.scala 392:35]
    end else begin
      f3_mmio_use_seq_pc <= _GEN_774;
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_ftqIdx_flag <= io_ftqInter_fromFtq_req_bits_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_ftqIdx_value <= io_ftqInter_fromFtq_req_bits_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[IFU.scala 185:30]
      f1_valid <= 1'h0; // @[IFU.scala 185:30]
    end else if (f1_flush) begin // @[IFU.scala 197:35]
      f1_valid <= 1'h0; // @[IFU.scala 197:46]
    end else begin
      f1_valid <= _GEN_11;
    end
    if (reset) begin // @[IFU.scala 219:30]
      f2_valid <= 1'h0; // @[IFU.scala 219:30]
    end else if (f2_flush) begin // @[IFU.scala 239:35]
      f2_valid <= 1'h0; // @[IFU.scala 239:45]
    end else begin
      f2_valid <= _GEN_27;
    end
    if (reset) begin // @[IFU.scala 229:46]
      f2_icache_all_resp_reg <= 1'h0; // @[IFU.scala 229:46]
    end else if (f2_flush) begin // @[IFU.scala 235:63]
      f2_icache_all_resp_reg <= 1'h0; // @[IFU.scala 235:87]
    end else begin
      f2_icache_all_resp_reg <= _GEN_24;
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_startAddr <= f1_ftq_req_startAddr; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_nextlineStart <= f1_ftq_req_nextlineStart; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_doubleLine <= f1_doubleLine; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_startAddr <= io_ftqInter_fromFtq_req_bits_startAddr; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_nextlineStart <= io_ftqInter_fromFtq_req_bits_nextlineStart; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_ftqOffset_valid <= io_ftqInter_fromFtq_req_bits_ftqOffset_valid; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_ftqOffset_bits <= io_ftqInter_fromFtq_req_bits_ftqOffset_bits; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_ftq_req_nextStartAddr <= io_ftqInter_fromFtq_req_bits_nextStartAddr; // @[Reg.scala 17:22]
    end
    if (f0_fire) begin // @[Reg.scala 17:18]
      f1_doubleLine <= f0_doubleLine; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_ftqIdx_flag <= f1_ftq_req_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_ftqIdx_value <= f1_ftq_req_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_ftqOffset_valid <= f1_ftq_req_ftqOffset_valid; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_ftqOffset_bits <= f1_ftq_req_ftqOffset_bits; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_ftq_req_nextStartAddr <= f1_ftq_req_nextStartAddr; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_0 <= f1_pc_0; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_1 <= f1_pc_1; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_2 <= f1_pc_2; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_3 <= f1_pc_3; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_4 <= f1_pc_4; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_5 <= f1_pc_5; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_6 <= f1_pc_6; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_pc_7 <= f1_pc_7; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_0 <= f1_pc_2; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_1 <= f1_pc_3; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_2 <= f1_pc_4; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_3 <= f1_pc_5; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_4 <= f1_pc_6; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_5 <= f1_pc_7; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_6 <= f1_half_snpc_6; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_half_snpc_7 <= f1_half_snpc_7; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_0 <= f1_cut_ptr_0; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_1 <= f1_cut_ptr_1; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_2 <= f1_cut_ptr_2; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_3 <= f1_cut_ptr_3; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_4 <= f1_cut_ptr_4; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_5 <= f1_cut_ptr_5; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_6 <= f1_cut_ptr_6; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_7 <= f1_cut_ptr_7; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_cut_ptr_8 <= f1_cut_ptr_8; // @[Reg.scala 17:22]
    end
    if (f1_fire) begin // @[Reg.scala 17:18]
      f2_resend_vaddr <= f1_pc_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_startAddr <= f2_ftq_req_startAddr; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_ftqOffset_valid <= f2_ftq_req_ftqOffset_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_ftqOffset_bits <= f2_ftq_req_ftqOffset_bits; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_ftq_req_nextStartAddr <= f2_ftq_req_nextStartAddr; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_doubleLine <= f2_doubleLine; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_0) begin // @[IFU.scala 281:19]
        f3_cut_data_0 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_0) begin // @[IFU.scala 281:19]
        f3_cut_data_0 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_0) begin // @[IFU.scala 281:19]
        f3_cut_data_0 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_0 <= _GEN_115;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_1) begin // @[IFU.scala 281:19]
        f3_cut_data_1 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_1) begin // @[IFU.scala 281:19]
        f3_cut_data_1 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_1) begin // @[IFU.scala 281:19]
        f3_cut_data_1 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_1 <= _GEN_179;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_2) begin // @[IFU.scala 281:19]
        f3_cut_data_2 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_2) begin // @[IFU.scala 281:19]
        f3_cut_data_2 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_2) begin // @[IFU.scala 281:19]
        f3_cut_data_2 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_2 <= _GEN_243;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_3) begin // @[IFU.scala 281:19]
        f3_cut_data_3 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_3) begin // @[IFU.scala 281:19]
        f3_cut_data_3 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_3) begin // @[IFU.scala 281:19]
        f3_cut_data_3 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_3 <= _GEN_307;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_4) begin // @[IFU.scala 281:19]
        f3_cut_data_4 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_4) begin // @[IFU.scala 281:19]
        f3_cut_data_4 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_4) begin // @[IFU.scala 281:19]
        f3_cut_data_4 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_4 <= _GEN_371;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_5) begin // @[IFU.scala 281:19]
        f3_cut_data_5 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_5) begin // @[IFU.scala 281:19]
        f3_cut_data_5 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_5) begin // @[IFU.scala 281:19]
        f3_cut_data_5 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_5 <= _GEN_435;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_6) begin // @[IFU.scala 281:19]
        f3_cut_data_6 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_6) begin // @[IFU.scala 281:19]
        f3_cut_data_6 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_6) begin // @[IFU.scala 281:19]
        f3_cut_data_6 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_6 <= _GEN_499;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_7) begin // @[IFU.scala 281:19]
        f3_cut_data_7 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_7) begin // @[IFU.scala 281:19]
        f3_cut_data_7 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_7) begin // @[IFU.scala 281:19]
        f3_cut_data_7 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_7 <= _GEN_563;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      if (6'h3f == f2_cut_ptr_8) begin // @[IFU.scala 281:19]
        f3_cut_data_8 <= f2_cut_data_dataVec_63; // @[IFU.scala 281:19]
      end else if (6'h3e == f2_cut_ptr_8) begin // @[IFU.scala 281:19]
        f3_cut_data_8 <= f2_cut_data_dataVec_62; // @[IFU.scala 281:19]
      end else if (6'h3d == f2_cut_ptr_8) begin // @[IFU.scala 281:19]
        f3_cut_data_8 <= f2_cut_data_dataVec_61; // @[IFU.scala 281:19]
      end else begin
        f3_cut_data_8 <= _GEN_627;
      end
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_0 <= preDecoder_io_out_expInstr_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_1 <= preDecoder_io_out_expInstr_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_2 <= preDecoder_io_out_expInstr_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_3 <= preDecoder_io_out_expInstr_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_4 <= preDecoder_io_out_expInstr_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_5 <= preDecoder_io_out_expInstr_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_6 <= preDecoder_io_out_expInstr_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_expd_instr_7 <= preDecoder_io_out_expInstr_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_0_isRVC <= preDecoder_io_out_pd_0_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_0_brType <= preDecoder_io_out_pd_0_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_0_isCall <= preDecoder_io_out_pd_0_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_0_isRet <= preDecoder_io_out_pd_0_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_1_valid <= preDecoder_io_out_pd_1_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_1_isRVC <= preDecoder_io_out_pd_1_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_1_brType <= preDecoder_io_out_pd_1_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_1_isCall <= preDecoder_io_out_pd_1_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_1_isRet <= preDecoder_io_out_pd_1_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_2_valid <= preDecoder_io_out_pd_2_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_2_isRVC <= preDecoder_io_out_pd_2_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_2_brType <= preDecoder_io_out_pd_2_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_2_isCall <= preDecoder_io_out_pd_2_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_2_isRet <= preDecoder_io_out_pd_2_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_3_valid <= preDecoder_io_out_pd_3_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_3_isRVC <= preDecoder_io_out_pd_3_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_3_brType <= preDecoder_io_out_pd_3_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_3_isCall <= preDecoder_io_out_pd_3_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_3_isRet <= preDecoder_io_out_pd_3_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_4_valid <= preDecoder_io_out_pd_4_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_4_isRVC <= preDecoder_io_out_pd_4_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_4_brType <= preDecoder_io_out_pd_4_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_4_isCall <= preDecoder_io_out_pd_4_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_4_isRet <= preDecoder_io_out_pd_4_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_5_valid <= preDecoder_io_out_pd_5_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_5_isRVC <= preDecoder_io_out_pd_5_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_5_brType <= preDecoder_io_out_pd_5_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_5_isCall <= preDecoder_io_out_pd_5_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_5_isRet <= preDecoder_io_out_pd_5_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_6_valid <= preDecoder_io_out_pd_6_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_6_isRVC <= preDecoder_io_out_pd_6_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_6_brType <= preDecoder_io_out_pd_6_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_6_isCall <= preDecoder_io_out_pd_6_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_6_isRet <= preDecoder_io_out_pd_6_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_7_valid <= preDecoder_io_out_pd_7_valid; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_7_isRVC <= preDecoder_io_out_pd_7_isRVC; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_7_brType <= preDecoder_io_out_pd_7_brType; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_7_isCall <= preDecoder_io_out_pd_7_isCall; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pd_7_isRet <= preDecoder_io_out_pd_7_isRet; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_0 <= preDecoder_io_out_jumpOffset_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_1 <= preDecoder_io_out_jumpOffset_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_2 <= preDecoder_io_out_jumpOffset_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_3 <= preDecoder_io_out_jumpOffset_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_4 <= preDecoder_io_out_jumpOffset_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_5 <= preDecoder_io_out_jumpOffset_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_6 <= preDecoder_io_out_jumpOffset_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_jump_offset_7 <= preDecoder_io_out_jumpOffset_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_0 <= f2_af_vec_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_1 <= f2_af_vec_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_2 <= f2_af_vec_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_3 <= f2_af_vec_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_4 <= f2_af_vec_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_5 <= f2_af_vec_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_6 <= f2_af_vec_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_af_vec_7 <= f2_af_vec_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_0 <= f2_pf_vec_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_1 <= f2_pf_vec_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_2 <= f2_pf_vec_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_3 <= f2_pf_vec_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_4 <= f2_pf_vec_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_5 <= f2_pf_vec_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_6 <= f2_pf_vec_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pf_vec_7 <= f2_pf_vec_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_0 <= f2_pc_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_1 <= f2_pc_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_2 <= f2_pc_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_3 <= f2_pc_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_4 <= f2_pc_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_5 <= f2_pc_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_6 <= f2_pc_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pc_7 <= f2_pc_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_0 <= f2_half_snpc_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_1 <= f2_half_snpc_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_2 <= f2_half_snpc_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_3 <= f2_half_snpc_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_4 <= f2_half_snpc_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_5 <= f2_half_snpc_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_6 <= f2_half_snpc_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_half_snpc_7 <= f2_half_snpc_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_instr_range <= f2_instr_range; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_0 <= f2_foldpc_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_1 <= f2_foldpc_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_2 <= f2_foldpc_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_3 <= f2_foldpc_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_4 <= f2_foldpc_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_5 <= f2_foldpc_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_6 <= f2_foldpc_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_foldpc_7 <= f2_foldpc_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_0 <= f2_crossPageFault_0; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_1 <= f2_crossPageFault_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_2 <= f2_crossPageFault_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_3 <= f2_crossPageFault_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_4 <= f2_crossPageFault_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_5 <= f2_crossPageFault_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_6 <= f2_crossPageFault_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_crossPageFault_7 <= f2_crossPageFault_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_2 <= preDecoder_io_out_hasHalfValid_2; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_3 <= preDecoder_io_out_hasHalfValid_3; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_4 <= preDecoder_io_out_hasHalfValid_4; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_5 <= preDecoder_io_out_hasHalfValid_5; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_6 <= preDecoder_io_out_hasHalfValid_6; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_hasHalfValid_7 <= preDecoder_io_out_hasHalfValid_7; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_pAddrs_0 <= io_icacheInter_0_resp_bits_paddr; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_resend_vaddr <= f2_resend_vaddr; // @[Reg.scala 17:22]
    end
    if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      f3_mmio_data_0 <= 16'h0; // @[IFU.scala 480:24]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        if (4'h2 == mmio_state) begin // @[IFU.scala 405:21]
          f3_mmio_data_0 <= _GEN_778;
        end
      end
    end
    if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      f3_mmio_data_1 <= 16'h0; // @[IFU.scala 480:24]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        if (4'h2 == mmio_state) begin // @[IFU.scala 405:21]
          f3_mmio_data_1 <= _GEN_779;
        end else begin
          f3_mmio_data_1 <= _GEN_813;
        end
      end
    end
    if (reset) begin // @[IFU.scala 364:32]
      mmio_is_RVC <= 1'h0; // @[IFU.scala 364:32]
    end else if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      mmio_is_RVC <= 1'h0; // @[IFU.scala 477:17]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        mmio_is_RVC <= _GEN_816;
      end
    end
    if (reset) begin // @[IFU.scala 365:32]
      mmio_resend_addr <= 36'h0; // @[IFU.scala 365:32]
    end else if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      mmio_resend_addr <= 36'h0; // @[IFU.scala 478:22]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        mmio_resend_addr <= _GEN_819;
      end
    end
    if (reset) begin // @[IFU.scala 366:32]
      mmio_resend_af <= 1'h0; // @[IFU.scala 366:32]
    end else if (f3_ftq_flush_self | f3_ftq_flush_by_older) begin // @[IFU.scala 475:53]
      mmio_resend_af <= 1'h0; // @[IFU.scala 479:20]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        mmio_resend_af <= _GEN_820;
      end
    end
    if (reset) begin // @[IFU.scala 367:32]
      mmio_resend_pf <= 1'h0; // @[IFU.scala 367:32]
    end else if (!(4'h0 == mmio_state)) begin // @[IFU.scala 405:21]
      if (!(4'h1 == mmio_state)) begin // @[IFU.scala 405:21]
        if (!(4'h2 == mmio_state)) begin // @[IFU.scala 405:21]
          mmio_resend_pf <= _GEN_812;
        end
      end
    end
    f3_mmio_to_commit_next <= f3_req_is_mmio & _mmio_redirect_T; // @[IFU.scala 377:43]
    fromFtqRedirectReg_valid <= io_ftqInter_fromFtq_redirect_valid; // @[IFU.scala 381:35]
    fromFtqRedirectReg_bits_ftqIdx_flag <= io_ftqInter_fromFtq_redirect_bits_ftqIdx_flag; // @[IFU.scala 381:35]
    fromFtqRedirectReg_bits_ftqIdx_value <= io_ftqInter_fromFtq_redirect_bits_ftqIdx_value; // @[IFU.scala 381:35]
    fromFtqRedirectReg_bits_ftqOffset <= io_ftqInter_fromFtq_redirect_bits_ftqOffset; // @[IFU.scala 381:35]
    fromFtqRedirectReg_bits_level <= io_ftqInter_fromFtq_redirect_bits_level; // @[IFU.scala 381:35]
    REG <= f2_fire & _T_22; // @[IFU.scala 397:24]
    if (reset) begin // @[IFU.scala 501:34]
      f3_lastHalf_valid <= 1'h0; // @[IFU.scala 501:34]
    end else if (f3_flush) begin // @[IFU.scala 530:19]
      f3_lastHalf_valid <= 1'h0; // @[IFU.scala 531:23]
    end else if (f3_fire) begin // @[IFU.scala 532:24]
      f3_lastHalf_valid <= f3_hasLastHalf; // @[IFU.scala 533:23]
    end
    mmioFlushWb_valid_REG <= io_uncacheInter_fromUncache_ready & io_uncacheInter_fromUncache_valid; // @[Decoupled.scala 50:35]
    wb_valid_REG <= f2_fire & _T_22; // @[IFU.scala 631:51]
    wb_check_result_fixedTaken_0 <= predChecker_io_out_fixedTaken_0; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_1 <= predChecker_io_out_fixedTaken_1; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_2 <= predChecker_io_out_fixedTaken_2; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_3 <= predChecker_io_out_fixedTaken_3; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_4 <= predChecker_io_out_fixedTaken_4; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_5 <= predChecker_io_out_fixedTaken_5; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_6 <= predChecker_io_out_fixedTaken_6; // @[IFU.scala 634:34]
    wb_check_result_fixedTaken_7 <= predChecker_io_out_fixedTaken_7; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_0 <= predChecker_io_out_fixedTarget_0; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_1 <= predChecker_io_out_fixedTarget_1; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_2 <= predChecker_io_out_fixedTarget_2; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_3 <= predChecker_io_out_fixedTarget_3; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_4 <= predChecker_io_out_fixedTarget_4; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_5 <= predChecker_io_out_fixedTarget_5; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_6 <= predChecker_io_out_fixedTarget_6; // @[IFU.scala 634:34]
    wb_check_result_fixedTarget_7 <= predChecker_io_out_fixedTarget_7; // @[IFU.scala 634:34]
    wb_instr_range <= io_toIbuffer_bits_enqEnable; // @[IFU.scala 635:34]
    wb_pc_0 <= f3_pc_0; // @[IFU.scala 636:34]
    wb_pc_1 <= f3_pc_1; // @[IFU.scala 636:34]
    wb_pc_2 <= f3_pc_2; // @[IFU.scala 636:34]
    wb_pc_3 <= f3_pc_3; // @[IFU.scala 636:34]
    wb_pc_4 <= f3_pc_4; // @[IFU.scala 636:34]
    wb_pc_5 <= f3_pc_5; // @[IFU.scala 636:34]
    wb_pc_6 <= f3_pc_6; // @[IFU.scala 636:34]
    wb_pc_7 <= f3_pc_7; // @[IFU.scala 636:34]
    wb_pd_0_isRVC <= f3_pd_0_isRVC; // @[IFU.scala 637:34]
    wb_pd_0_brType <= f3_pd_0_brType; // @[IFU.scala 637:34]
    wb_pd_0_isCall <= f3_pd_0_isCall; // @[IFU.scala 637:34]
    wb_pd_0_isRet <= f3_pd_0_isRet; // @[IFU.scala 637:34]
    wb_pd_1_isRVC <= f3_pd_1_isRVC; // @[IFU.scala 637:34]
    wb_pd_1_brType <= f3_pd_1_brType; // @[IFU.scala 637:34]
    wb_pd_1_isCall <= f3_pd_1_isCall; // @[IFU.scala 637:34]
    wb_pd_1_isRet <= f3_pd_1_isRet; // @[IFU.scala 637:34]
    wb_pd_2_isRVC <= f3_pd_2_isRVC; // @[IFU.scala 637:34]
    wb_pd_2_brType <= f3_pd_2_brType; // @[IFU.scala 637:34]
    wb_pd_2_isCall <= f3_pd_2_isCall; // @[IFU.scala 637:34]
    wb_pd_2_isRet <= f3_pd_2_isRet; // @[IFU.scala 637:34]
    wb_pd_3_isRVC <= f3_pd_3_isRVC; // @[IFU.scala 637:34]
    wb_pd_3_brType <= f3_pd_3_brType; // @[IFU.scala 637:34]
    wb_pd_3_isCall <= f3_pd_3_isCall; // @[IFU.scala 637:34]
    wb_pd_3_isRet <= f3_pd_3_isRet; // @[IFU.scala 637:34]
    wb_pd_4_isRVC <= f3_pd_4_isRVC; // @[IFU.scala 637:34]
    wb_pd_4_brType <= f3_pd_4_brType; // @[IFU.scala 637:34]
    wb_pd_4_isCall <= f3_pd_4_isCall; // @[IFU.scala 637:34]
    wb_pd_4_isRet <= f3_pd_4_isRet; // @[IFU.scala 637:34]
    wb_pd_5_isRVC <= f3_pd_5_isRVC; // @[IFU.scala 637:34]
    wb_pd_5_brType <= f3_pd_5_brType; // @[IFU.scala 637:34]
    wb_pd_5_isCall <= f3_pd_5_isCall; // @[IFU.scala 637:34]
    wb_pd_5_isRet <= f3_pd_5_isRet; // @[IFU.scala 637:34]
    wb_pd_6_isRVC <= f3_pd_6_isRVC; // @[IFU.scala 637:34]
    wb_pd_6_brType <= f3_pd_6_brType; // @[IFU.scala 637:34]
    wb_pd_6_isCall <= f3_pd_6_isCall; // @[IFU.scala 637:34]
    wb_pd_6_isRet <= f3_pd_6_isRet; // @[IFU.scala 637:34]
    wb_pd_7_isRVC <= f3_pd_7_isRVC; // @[IFU.scala 637:34]
    wb_pd_7_brType <= f3_pd_7_brType; // @[IFU.scala 637:34]
    wb_pd_7_isCall <= f3_pd_7_isCall; // @[IFU.scala 637:34]
    wb_pd_7_isRet <= f3_pd_7_isRet; // @[IFU.scala 637:34]
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_0 <= 1'h0;
    end else begin
      wb_instr_valid_0 <= 1'h1;
    end
    wb_instr_valid_1 <= f3_lastHalf_valid | f3_pd_1_valid; // @[IFU.scala 537:24]
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_2 <= f3_hasHalfValid_2;
    end else begin
      wb_instr_valid_2 <= f3_pd_2_valid;
    end
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_3 <= f3_hasHalfValid_3;
    end else begin
      wb_instr_valid_3 <= f3_pd_3_valid;
    end
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_4 <= f3_hasHalfValid_4;
    end else begin
      wb_instr_valid_4 <= f3_pd_4_valid;
    end
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_5 <= f3_hasHalfValid_5;
    end else begin
      wb_instr_valid_5 <= f3_pd_5_valid;
    end
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_6 <= f3_hasHalfValid_6;
    end else begin
      wb_instr_valid_6 <= f3_pd_6_valid;
    end
    if (f3_lastHalf_valid) begin // @[IFU.scala 537:24]
      wb_instr_valid_7 <= f3_hasHalfValid_7;
    end else begin
      wb_instr_valid_7 <= f3_pd_7_valid;
    end
    if (3'h7 == f3_last_validIdx) begin // @[IFU.scala 643:34]
      wb_false_target <= f3_half_snpc_7; // @[IFU.scala 643:34]
    end else if (3'h6 == f3_last_validIdx) begin // @[IFU.scala 643:34]
      wb_false_target <= f3_half_snpc_6; // @[IFU.scala 643:34]
    end else if (3'h5 == f3_last_validIdx) begin // @[IFU.scala 643:34]
      wb_false_target <= f3_half_snpc_5; // @[IFU.scala 643:34]
    end else if (3'h4 == f3_last_validIdx) begin // @[IFU.scala 643:34]
      wb_false_target <= f3_half_snpc_4; // @[IFU.scala 643:34]
    end else begin
      wb_false_target <= _GEN_901;
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_only_0_hit <= io_icachePerfInfo_only_0_hit; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_only_0_miss <= io_icachePerfInfo_only_0_miss; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_hit_0_hit_1 <= io_icachePerfInfo_hit_0_hit_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_hit_0_miss_1 <= io_icachePerfInfo_hit_0_miss_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_miss_0_hit_1 <= io_icachePerfInfo_miss_0_hit_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_miss_0_miss_1 <= io_icachePerfInfo_miss_0_miss_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_bank_hit_1 <= io_icachePerfInfo_bank_hit_1; // @[Reg.scala 17:22]
    end
    if (f2_fire) begin // @[Reg.scala 17:18]
      f3_perf_info_hit <= io_icachePerfInfo_hit; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= checkFlushWb_bits_misOffset_valid & wb_valid; // @[IFU.scala 672:52]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= io_toIbuffer_ready & io_toIbuffer_valid; // @[Decoupled.scala 50:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= f3_fire & ~f3_perf_info_hit; // @[IFU.scala 704:59]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= io_toIbuffer_ready & io_toIbuffer_valid; // @[Decoupled.scala 50:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= f3_fire & f3_doubleLine; // @[IFU.scala 697:41]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= f3_req_1 & f3_perf_info_bank_hit_1; // @[IFU.scala 699:58]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= f3_req_1 & f3_perf_info_bank_hit_1; // @[IFU.scala 699:58]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= f3_perf_info_only_0_hit & f3_fire; // @[IFU.scala 709:69]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= f3_perf_info_only_0_miss & f3_fire; // @[IFU.scala 710:69]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= f3_perf_info_hit_0_hit_1 & f3_fire; // @[IFU.scala 711:69]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= f3_perf_info_hit_0_miss_1 & f3_fire; // @[IFU.scala 712:69]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= f3_perf_info_miss_0_hit_1 & f3_fire; // @[IFU.scala 713:69]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_12_value_REG <= f3_perf_info_miss_0_miss_1 & f3_fire; // @[IFU.scala 714:69]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  wb_ftq_req_ftqIdx_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  wb_ftq_req_ftqIdx_value = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  f3_ftq_req_ftqIdx_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  f3_ftq_req_ftqIdx_value = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  f3_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  wb_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_5 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_6 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  wb_check_result_fixedMissPred_7 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  wb_false_lastHalf_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  wb_lastIdx = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  f3_mmio = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  mmio_state = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  mmio_redirect_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  f3_mmio_use_seq_pc = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  f1_ftq_req_ftqIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  f1_ftq_req_ftqIdx_value = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  f1_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  f2_valid = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  f2_icache_all_resp_reg = _RAND_24[0:0];
  _RAND_25 = {2{`RANDOM}};
  f2_ftq_req_startAddr = _RAND_25[38:0];
  _RAND_26 = {2{`RANDOM}};
  f2_ftq_req_nextlineStart = _RAND_26[38:0];
  _RAND_27 = {1{`RANDOM}};
  f2_doubleLine = _RAND_27[0:0];
  _RAND_28 = {2{`RANDOM}};
  f1_ftq_req_startAddr = _RAND_28[38:0];
  _RAND_29 = {2{`RANDOM}};
  f1_ftq_req_nextlineStart = _RAND_29[38:0];
  _RAND_30 = {1{`RANDOM}};
  f1_ftq_req_ftqOffset_valid = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  f1_ftq_req_ftqOffset_bits = _RAND_31[2:0];
  _RAND_32 = {2{`RANDOM}};
  f1_ftq_req_nextStartAddr = _RAND_32[38:0];
  _RAND_33 = {1{`RANDOM}};
  f1_doubleLine = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  f2_ftq_req_ftqIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  f2_ftq_req_ftqIdx_value = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  f2_ftq_req_ftqOffset_valid = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  f2_ftq_req_ftqOffset_bits = _RAND_37[2:0];
  _RAND_38 = {2{`RANDOM}};
  f2_ftq_req_nextStartAddr = _RAND_38[38:0];
  _RAND_39 = {2{`RANDOM}};
  f2_pc_0 = _RAND_39[38:0];
  _RAND_40 = {2{`RANDOM}};
  f2_pc_1 = _RAND_40[38:0];
  _RAND_41 = {2{`RANDOM}};
  f2_pc_2 = _RAND_41[38:0];
  _RAND_42 = {2{`RANDOM}};
  f2_pc_3 = _RAND_42[38:0];
  _RAND_43 = {2{`RANDOM}};
  f2_pc_4 = _RAND_43[38:0];
  _RAND_44 = {2{`RANDOM}};
  f2_pc_5 = _RAND_44[38:0];
  _RAND_45 = {2{`RANDOM}};
  f2_pc_6 = _RAND_45[38:0];
  _RAND_46 = {2{`RANDOM}};
  f2_pc_7 = _RAND_46[38:0];
  _RAND_47 = {2{`RANDOM}};
  f2_half_snpc_0 = _RAND_47[38:0];
  _RAND_48 = {2{`RANDOM}};
  f2_half_snpc_1 = _RAND_48[38:0];
  _RAND_49 = {2{`RANDOM}};
  f2_half_snpc_2 = _RAND_49[38:0];
  _RAND_50 = {2{`RANDOM}};
  f2_half_snpc_3 = _RAND_50[38:0];
  _RAND_51 = {2{`RANDOM}};
  f2_half_snpc_4 = _RAND_51[38:0];
  _RAND_52 = {2{`RANDOM}};
  f2_half_snpc_5 = _RAND_52[38:0];
  _RAND_53 = {2{`RANDOM}};
  f2_half_snpc_6 = _RAND_53[38:0];
  _RAND_54 = {2{`RANDOM}};
  f2_half_snpc_7 = _RAND_54[38:0];
  _RAND_55 = {1{`RANDOM}};
  f2_cut_ptr_0 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  f2_cut_ptr_1 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  f2_cut_ptr_2 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  f2_cut_ptr_3 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  f2_cut_ptr_4 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  f2_cut_ptr_5 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  f2_cut_ptr_6 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  f2_cut_ptr_7 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  f2_cut_ptr_8 = _RAND_63[5:0];
  _RAND_64 = {2{`RANDOM}};
  f2_resend_vaddr = _RAND_64[38:0];
  _RAND_65 = {2{`RANDOM}};
  f3_ftq_req_startAddr = _RAND_65[38:0];
  _RAND_66 = {1{`RANDOM}};
  f3_ftq_req_ftqOffset_valid = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  f3_ftq_req_ftqOffset_bits = _RAND_67[2:0];
  _RAND_68 = {2{`RANDOM}};
  f3_ftq_req_nextStartAddr = _RAND_68[38:0];
  _RAND_69 = {1{`RANDOM}};
  f3_doubleLine = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  f3_cut_data_0 = _RAND_70[15:0];
  _RAND_71 = {1{`RANDOM}};
  f3_cut_data_1 = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  f3_cut_data_2 = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  f3_cut_data_3 = _RAND_73[15:0];
  _RAND_74 = {1{`RANDOM}};
  f3_cut_data_4 = _RAND_74[15:0];
  _RAND_75 = {1{`RANDOM}};
  f3_cut_data_5 = _RAND_75[15:0];
  _RAND_76 = {1{`RANDOM}};
  f3_cut_data_6 = _RAND_76[15:0];
  _RAND_77 = {1{`RANDOM}};
  f3_cut_data_7 = _RAND_77[15:0];
  _RAND_78 = {1{`RANDOM}};
  f3_cut_data_8 = _RAND_78[15:0];
  _RAND_79 = {1{`RANDOM}};
  f3_expd_instr_0 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  f3_expd_instr_1 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  f3_expd_instr_2 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  f3_expd_instr_3 = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  f3_expd_instr_4 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  f3_expd_instr_5 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  f3_expd_instr_6 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  f3_expd_instr_7 = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  f3_pd_0_isRVC = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  f3_pd_0_brType = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  f3_pd_0_isCall = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  f3_pd_0_isRet = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  f3_pd_1_valid = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  f3_pd_1_isRVC = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  f3_pd_1_brType = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  f3_pd_1_isCall = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  f3_pd_1_isRet = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  f3_pd_2_valid = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  f3_pd_2_isRVC = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  f3_pd_2_brType = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  f3_pd_2_isCall = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  f3_pd_2_isRet = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  f3_pd_3_valid = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  f3_pd_3_isRVC = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  f3_pd_3_brType = _RAND_103[1:0];
  _RAND_104 = {1{`RANDOM}};
  f3_pd_3_isCall = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  f3_pd_3_isRet = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  f3_pd_4_valid = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  f3_pd_4_isRVC = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  f3_pd_4_brType = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  f3_pd_4_isCall = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  f3_pd_4_isRet = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  f3_pd_5_valid = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  f3_pd_5_isRVC = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  f3_pd_5_brType = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  f3_pd_5_isCall = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  f3_pd_5_isRet = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  f3_pd_6_valid = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  f3_pd_6_isRVC = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  f3_pd_6_brType = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  f3_pd_6_isCall = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  f3_pd_6_isRet = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  f3_pd_7_valid = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  f3_pd_7_isRVC = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  f3_pd_7_brType = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  f3_pd_7_isCall = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  f3_pd_7_isRet = _RAND_125[0:0];
  _RAND_126 = {2{`RANDOM}};
  f3_jump_offset_0 = _RAND_126[63:0];
  _RAND_127 = {2{`RANDOM}};
  f3_jump_offset_1 = _RAND_127[63:0];
  _RAND_128 = {2{`RANDOM}};
  f3_jump_offset_2 = _RAND_128[63:0];
  _RAND_129 = {2{`RANDOM}};
  f3_jump_offset_3 = _RAND_129[63:0];
  _RAND_130 = {2{`RANDOM}};
  f3_jump_offset_4 = _RAND_130[63:0];
  _RAND_131 = {2{`RANDOM}};
  f3_jump_offset_5 = _RAND_131[63:0];
  _RAND_132 = {2{`RANDOM}};
  f3_jump_offset_6 = _RAND_132[63:0];
  _RAND_133 = {2{`RANDOM}};
  f3_jump_offset_7 = _RAND_133[63:0];
  _RAND_134 = {1{`RANDOM}};
  f3_af_vec_0 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  f3_af_vec_1 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  f3_af_vec_2 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  f3_af_vec_3 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  f3_af_vec_4 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  f3_af_vec_5 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  f3_af_vec_6 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  f3_af_vec_7 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  f3_pf_vec_0 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  f3_pf_vec_1 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  f3_pf_vec_2 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  f3_pf_vec_3 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  f3_pf_vec_4 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  f3_pf_vec_5 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  f3_pf_vec_6 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  f3_pf_vec_7 = _RAND_149[0:0];
  _RAND_150 = {2{`RANDOM}};
  f3_pc_0 = _RAND_150[38:0];
  _RAND_151 = {2{`RANDOM}};
  f3_pc_1 = _RAND_151[38:0];
  _RAND_152 = {2{`RANDOM}};
  f3_pc_2 = _RAND_152[38:0];
  _RAND_153 = {2{`RANDOM}};
  f3_pc_3 = _RAND_153[38:0];
  _RAND_154 = {2{`RANDOM}};
  f3_pc_4 = _RAND_154[38:0];
  _RAND_155 = {2{`RANDOM}};
  f3_pc_5 = _RAND_155[38:0];
  _RAND_156 = {2{`RANDOM}};
  f3_pc_6 = _RAND_156[38:0];
  _RAND_157 = {2{`RANDOM}};
  f3_pc_7 = _RAND_157[38:0];
  _RAND_158 = {2{`RANDOM}};
  f3_half_snpc_0 = _RAND_158[38:0];
  _RAND_159 = {2{`RANDOM}};
  f3_half_snpc_1 = _RAND_159[38:0];
  _RAND_160 = {2{`RANDOM}};
  f3_half_snpc_2 = _RAND_160[38:0];
  _RAND_161 = {2{`RANDOM}};
  f3_half_snpc_3 = _RAND_161[38:0];
  _RAND_162 = {2{`RANDOM}};
  f3_half_snpc_4 = _RAND_162[38:0];
  _RAND_163 = {2{`RANDOM}};
  f3_half_snpc_5 = _RAND_163[38:0];
  _RAND_164 = {2{`RANDOM}};
  f3_half_snpc_6 = _RAND_164[38:0];
  _RAND_165 = {2{`RANDOM}};
  f3_half_snpc_7 = _RAND_165[38:0];
  _RAND_166 = {1{`RANDOM}};
  f3_instr_range = _RAND_166[7:0];
  _RAND_167 = {1{`RANDOM}};
  f3_foldpc_0 = _RAND_167[9:0];
  _RAND_168 = {1{`RANDOM}};
  f3_foldpc_1 = _RAND_168[9:0];
  _RAND_169 = {1{`RANDOM}};
  f3_foldpc_2 = _RAND_169[9:0];
  _RAND_170 = {1{`RANDOM}};
  f3_foldpc_3 = _RAND_170[9:0];
  _RAND_171 = {1{`RANDOM}};
  f3_foldpc_4 = _RAND_171[9:0];
  _RAND_172 = {1{`RANDOM}};
  f3_foldpc_5 = _RAND_172[9:0];
  _RAND_173 = {1{`RANDOM}};
  f3_foldpc_6 = _RAND_173[9:0];
  _RAND_174 = {1{`RANDOM}};
  f3_foldpc_7 = _RAND_174[9:0];
  _RAND_175 = {1{`RANDOM}};
  f3_crossPageFault_0 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  f3_crossPageFault_1 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  f3_crossPageFault_2 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  f3_crossPageFault_3 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  f3_crossPageFault_4 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  f3_crossPageFault_5 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  f3_crossPageFault_6 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  f3_crossPageFault_7 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  f3_hasHalfValid_2 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  f3_hasHalfValid_3 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  f3_hasHalfValid_4 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  f3_hasHalfValid_5 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  f3_hasHalfValid_6 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  f3_hasHalfValid_7 = _RAND_188[0:0];
  _RAND_189 = {2{`RANDOM}};
  f3_pAddrs_0 = _RAND_189[35:0];
  _RAND_190 = {2{`RANDOM}};
  f3_resend_vaddr = _RAND_190[38:0];
  _RAND_191 = {1{`RANDOM}};
  f3_mmio_data_0 = _RAND_191[15:0];
  _RAND_192 = {1{`RANDOM}};
  f3_mmio_data_1 = _RAND_192[15:0];
  _RAND_193 = {1{`RANDOM}};
  mmio_is_RVC = _RAND_193[0:0];
  _RAND_194 = {2{`RANDOM}};
  mmio_resend_addr = _RAND_194[35:0];
  _RAND_195 = {1{`RANDOM}};
  mmio_resend_af = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  mmio_resend_pf = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  f3_mmio_to_commit_next = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  fromFtqRedirectReg_valid = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  fromFtqRedirectReg_bits_ftqIdx_flag = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  fromFtqRedirectReg_bits_ftqIdx_value = _RAND_200[5:0];
  _RAND_201 = {1{`RANDOM}};
  fromFtqRedirectReg_bits_ftqOffset = _RAND_201[2:0];
  _RAND_202 = {1{`RANDOM}};
  fromFtqRedirectReg_bits_level = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  REG = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  f3_lastHalf_valid = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  mmioFlushWb_valid_REG = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  wb_valid_REG = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  wb_check_result_fixedTaken_0 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  wb_check_result_fixedTaken_1 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  wb_check_result_fixedTaken_2 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  wb_check_result_fixedTaken_3 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  wb_check_result_fixedTaken_4 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  wb_check_result_fixedTaken_5 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  wb_check_result_fixedTaken_6 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  wb_check_result_fixedTaken_7 = _RAND_214[0:0];
  _RAND_215 = {2{`RANDOM}};
  wb_check_result_fixedTarget_0 = _RAND_215[38:0];
  _RAND_216 = {2{`RANDOM}};
  wb_check_result_fixedTarget_1 = _RAND_216[38:0];
  _RAND_217 = {2{`RANDOM}};
  wb_check_result_fixedTarget_2 = _RAND_217[38:0];
  _RAND_218 = {2{`RANDOM}};
  wb_check_result_fixedTarget_3 = _RAND_218[38:0];
  _RAND_219 = {2{`RANDOM}};
  wb_check_result_fixedTarget_4 = _RAND_219[38:0];
  _RAND_220 = {2{`RANDOM}};
  wb_check_result_fixedTarget_5 = _RAND_220[38:0];
  _RAND_221 = {2{`RANDOM}};
  wb_check_result_fixedTarget_6 = _RAND_221[38:0];
  _RAND_222 = {2{`RANDOM}};
  wb_check_result_fixedTarget_7 = _RAND_222[38:0];
  _RAND_223 = {1{`RANDOM}};
  wb_instr_range = _RAND_223[7:0];
  _RAND_224 = {2{`RANDOM}};
  wb_pc_0 = _RAND_224[38:0];
  _RAND_225 = {2{`RANDOM}};
  wb_pc_1 = _RAND_225[38:0];
  _RAND_226 = {2{`RANDOM}};
  wb_pc_2 = _RAND_226[38:0];
  _RAND_227 = {2{`RANDOM}};
  wb_pc_3 = _RAND_227[38:0];
  _RAND_228 = {2{`RANDOM}};
  wb_pc_4 = _RAND_228[38:0];
  _RAND_229 = {2{`RANDOM}};
  wb_pc_5 = _RAND_229[38:0];
  _RAND_230 = {2{`RANDOM}};
  wb_pc_6 = _RAND_230[38:0];
  _RAND_231 = {2{`RANDOM}};
  wb_pc_7 = _RAND_231[38:0];
  _RAND_232 = {1{`RANDOM}};
  wb_pd_0_isRVC = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  wb_pd_0_brType = _RAND_233[1:0];
  _RAND_234 = {1{`RANDOM}};
  wb_pd_0_isCall = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  wb_pd_0_isRet = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  wb_pd_1_isRVC = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  wb_pd_1_brType = _RAND_237[1:0];
  _RAND_238 = {1{`RANDOM}};
  wb_pd_1_isCall = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  wb_pd_1_isRet = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  wb_pd_2_isRVC = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  wb_pd_2_brType = _RAND_241[1:0];
  _RAND_242 = {1{`RANDOM}};
  wb_pd_2_isCall = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  wb_pd_2_isRet = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  wb_pd_3_isRVC = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  wb_pd_3_brType = _RAND_245[1:0];
  _RAND_246 = {1{`RANDOM}};
  wb_pd_3_isCall = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  wb_pd_3_isRet = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  wb_pd_4_isRVC = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  wb_pd_4_brType = _RAND_249[1:0];
  _RAND_250 = {1{`RANDOM}};
  wb_pd_4_isCall = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  wb_pd_4_isRet = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  wb_pd_5_isRVC = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  wb_pd_5_brType = _RAND_253[1:0];
  _RAND_254 = {1{`RANDOM}};
  wb_pd_5_isCall = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  wb_pd_5_isRet = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  wb_pd_6_isRVC = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  wb_pd_6_brType = _RAND_257[1:0];
  _RAND_258 = {1{`RANDOM}};
  wb_pd_6_isCall = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  wb_pd_6_isRet = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  wb_pd_7_isRVC = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  wb_pd_7_brType = _RAND_261[1:0];
  _RAND_262 = {1{`RANDOM}};
  wb_pd_7_isCall = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  wb_pd_7_isRet = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  wb_instr_valid_0 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  wb_instr_valid_1 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  wb_instr_valid_2 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  wb_instr_valid_3 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  wb_instr_valid_4 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  wb_instr_valid_5 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  wb_instr_valid_6 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  wb_instr_valid_7 = _RAND_271[0:0];
  _RAND_272 = {2{`RANDOM}};
  wb_false_target = _RAND_272[38:0];
  _RAND_273 = {1{`RANDOM}};
  f3_perf_info_only_0_hit = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  f3_perf_info_only_0_miss = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  f3_perf_info_hit_0_hit_1 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  f3_perf_info_hit_0_miss_1 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  f3_perf_info_miss_0_hit_1 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  f3_perf_info_miss_0_miss_1 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  f3_perf_info_bank_hit_1 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  f3_perf_info_hit = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_305[0:0];
  _RAND_306 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_306[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
