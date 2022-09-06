module ICache(
  input          clock,
  input          reset,
  input          auto_client_out_a_ready,
  output         auto_client_out_a_valid,
  output [2:0]   auto_client_out_a_bits_opcode,
  output [2:0]   auto_client_out_a_bits_size,
  output [1:0]   auto_client_out_a_bits_source,
  output [35:0]  auto_client_out_a_bits_address,
  output [1:0]   auto_client_out_a_bits_user_alias,
  output         auto_client_out_a_bits_user_preferCache,
  output [31:0]  auto_client_out_a_bits_mask,
  output         auto_client_out_bready,
  input          auto_client_out_bvalid,
  input  [1:0]   auto_client_out_bparam,
  input  [35:0]  auto_client_out_baddress,
  input  [255:0] auto_client_out_bdata,
  input          auto_client_out_c_ready,
  output         auto_client_out_c_valid,
  output [2:0]   auto_client_out_c_bits_opcode,
  output [2:0]   auto_client_out_c_bits_param,
  output [35:0]  auto_client_out_c_bits_address,
  output         auto_client_out_c_bits_echo_blockisdirty,
  output [255:0] auto_client_out_c_bits_data,
  output         auto_client_out_d_ready,
  input          auto_client_out_d_valid,
  input  [2:0]   auto_client_out_d_bits_opcode,
  input  [1:0]   auto_client_out_d_bits_param,
  input  [1:0]   auto_client_out_d_bits_source,
  input  [4:0]   auto_client_out_d_bits_sink,
  input          auto_client_out_d_bits_echo_blockisdirty,
  input  [255:0] auto_client_out_d_bits_data,
  input          auto_client_out_d_bits_corrupt,
  input          auto_client_out_e_ready,
  output         auto_client_out_e_valid,
  output [4:0]   auto_client_out_e_bits_sink,
  input          io_prefetch_req_valid,
  input  [38:0]  io_prefetch_req_bits_target,
  input          io_stop,
  output         io_fetch_0_req_ready,
  input          io_fetch_0_req_valid,
  input  [38:0]  io_fetch_0_req_bits_vaddr,
  output         io_fetch_0_resp_valid,
  output [38:0]  io_fetch_0_resp_bits_vaddr,
  output [511:0] io_fetch_0_resp_bits_readData,
  output [35:0]  io_fetch_0_resp_bits_paddr,
  output         io_fetch_0_resp_bits_tlbExcp_pageFault,
  output         io_fetch_0_resp_bits_tlbExcp_accessFault,
  output         io_fetch_0_resp_bits_tlbExcp_mmio,
  output         io_fetch_1_req_ready,
  input          io_fetch_1_req_valid,
  input  [38:0]  io_fetch_1_req_bits_vaddr,
  output         io_fetch_1_resp_valid,
  output [38:0]  io_fetch_1_resp_bits_vaddr,
  output [511:0] io_fetch_1_resp_bits_readData,
  output         io_fetch_1_resp_bits_tlbExcp_pageFault,
  output         io_fetch_1_resp_bits_tlbExcp_accessFault,
  output [35:0]  io_pmp_0_req_bits_addr,
  input          io_pmp_0_resp_instr,
  input          io_pmp_0_resp_mmio,
  output [35:0]  io_pmp_1_req_bits_addr,
  input          io_pmp_1_resp_instr,
  output [35:0]  io_pmp_2_req_bits_addr,
  input          io_pmp_2_resp_instr,
  input          io_pmp_2_resp_mmio,
  output         io_itlb_0_req_valid,
  output [38:0]  io_itlb_0_req_bits_vaddr,
  input          io_itlb_0_resp_valid,
  input  [35:0]  io_itlb_0_resp_bits_paddr,
  input          io_itlb_0_resp_bits_miss,
  input          io_itlb_0_resp_bits_excp_pf_instr,
  input          io_itlb_0_resp_bits_excp_af_instr,
  output         io_itlb_1_req_valid,
  output [38:0]  io_itlb_1_req_bits_vaddr,
  input          io_itlb_1_resp_valid,
  input  [35:0]  io_itlb_1_resp_bits_paddr,
  input          io_itlb_1_resp_bits_miss,
  input          io_itlb_1_resp_bits_excp_pf_instr,
  input          io_itlb_1_resp_bits_excp_af_instr,
  output         io_itlb_2_req_valid,
  output [38:0]  io_itlb_2_req_bits_vaddr,
  input          io_itlb_2_resp_valid,
  input  [35:0]  io_itlb_2_resp_bits_paddr,
  input          io_itlb_2_resp_bits_miss,
  input          io_itlb_2_resp_bits_excp_pf_instr,
  input          io_itlb_2_resp_bits_excp_af_instr,
  output         io_itlb_3_req_valid,
  output [38:0]  io_itlb_3_req_bits_vaddr,
  input          io_itlb_3_resp_valid,
  input  [35:0]  io_itlb_3_resp_bits_paddr,
  input          io_itlb_3_resp_bits_miss,
  input          io_itlb_3_resp_bits_excp_pf_instr,
  input          io_itlb_3_resp_bits_excp_af_instr,
  input          io_itlb_4_req_ready,
  output         io_itlb_4_req_valid,
  output [38:0]  io_itlb_4_req_bits_vaddr,
  input  [35:0]  io_itlb_4_resp_bits_paddr,
  input          io_itlb_4_resp_bits_miss,
  input          io_itlb_4_resp_bits_excp_pf_instr,
  input          io_itlb_4_resp_bits_excp_af_instr,
  output         io_perfInfo_only_0_hit,
  output         io_perfInfo_only_0_miss,
  output         io_perfInfo_hit_0_hit_1,
  output         io_perfInfo_hit_0_miss_1,
  output         io_perfInfo_miss_0_hit_1,
  output         io_perfInfo_miss_0_miss_1,
  output         io_perfInfo_bank_hit_1,
  output         io_perfInfo_hit,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output         io_error_opType_fetch,
  output         io_error_opType_load,
  output         io_error_opType_store,
  output         io_error_opType_probe,
  output         io_error_opType_release,
  output         io_error_opType_atom,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  input          io_csr_distribute_csr_wvalid,
  input  [11:0]  io_csr_distribute_csr_waddr,
  input  [63:0]  io_csr_distribute_csr_wdata,
  output         io_csr_update_wvalid,
  output [11:0]  io_csr_update_waddr,
  output [63:0]  io_csr_update_wdata,
  input          io_csr_pf_enable,
  input          io_csr_parity_enable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[ICache.scala 490:30]
  wire  metaArray_reset; // @[ICache.scala 490:30]
  wire  metaArray_io_write_valid; // @[ICache.scala 490:30]
  wire [7:0] metaArray_io_write_bits_virIdx; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_write_bits_phyTag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_write_bits_coh_state; // @[ICache.scala 490:30]
  wire [3:0] metaArray_io_write_bits_waymask; // @[ICache.scala 490:30]
  wire  metaArray_io_write_bits_bankIdx; // @[ICache.scala 490:30]
  wire  metaArray_io_read_ready; // @[ICache.scala 490:30]
  wire  metaArray_io_read_valid; // @[ICache.scala 490:30]
  wire  metaArray_io_read_bits_isDoubleLine; // @[ICache.scala 490:30]
  wire [7:0] metaArray_io_read_bits_vSetIdx_0; // @[ICache.scala 490:30]
  wire [7:0] metaArray_io_read_bits_vSetIdx_1; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_0_0_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_0_1_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_0_2_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_0_3_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_1_0_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_1_0_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_1_1_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_1_1_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_1_2_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_1_2_tag; // @[ICache.scala 490:30]
  wire [1:0] metaArray_io_readResp_metaData_1_3_coh_state; // @[ICache.scala 490:30]
  wire [23:0] metaArray_io_readResp_metaData_1_3_tag; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_0_0; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_0_1; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_0_2; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_0_3; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_1_0; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_1_1; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_1_2; // @[ICache.scala 490:30]
  wire  metaArray_io_readResp_errors_1_3; // @[ICache.scala 490:30]
  wire  metaArray_io_cacheOp_req_valid; // @[ICache.scala 490:30]
  wire [63:0] metaArray_io_cacheOp_req_bits_wayNum; // @[ICache.scala 490:30]
  wire [63:0] metaArray_io_cacheOp_req_bits_index; // @[ICache.scala 490:30]
  wire [63:0] metaArray_io_cacheOp_req_bits_opCode; // @[ICache.scala 490:30]
  wire [63:0] metaArray_io_cacheOp_req_bits_write_tag_low; // @[ICache.scala 490:30]
  wire  metaArray_io_cacheOp_resp_valid; // @[ICache.scala 490:30]
  wire [63:0] metaArray_io_cacheOp_resp_bits_read_tag_low; // @[ICache.scala 490:30]
  wire  dataArray_clock; // @[ICache.scala 491:30]
  wire  dataArray_reset; // @[ICache.scala 491:30]
  wire  dataArray_io_write_valid; // @[ICache.scala 491:30]
  wire [7:0] dataArray_io_write_bits_virIdx; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_write_bits_data; // @[ICache.scala 491:30]
  wire [3:0] dataArray_io_write_bits_waymask; // @[ICache.scala 491:30]
  wire  dataArray_io_write_bits_bankIdx; // @[ICache.scala 491:30]
  wire  dataArray_io_read_ready; // @[ICache.scala 491:30]
  wire  dataArray_io_read_valid; // @[ICache.scala 491:30]
  wire  dataArray_io_read_bits_isDoubleLine; // @[ICache.scala 491:30]
  wire [7:0] dataArray_io_read_bits_vSetIdx_0; // @[ICache.scala 491:30]
  wire [7:0] dataArray_io_read_bits_vSetIdx_1; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_0_0; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_0_1; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_0_2; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_0_3; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_1_0; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_1_1; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_1_2; // @[ICache.scala 491:30]
  wire [511:0] dataArray_io_readResp_datas_1_3; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_0_0; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_0_1; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_0_2; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_0_3; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_1_0; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_1_1; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_1_2; // @[ICache.scala 491:30]
  wire [31:0] dataArray_io_readResp_codes_1_3; // @[ICache.scala 491:30]
  wire  dataArray_io_cacheOp_req_valid; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_wayNum; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_index; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_opCode; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_0; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_1; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_2; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_3; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_4; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_5; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_6; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_7; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_req_bits_bank_num; // @[ICache.scala 491:30]
  wire  dataArray_io_cacheOp_resp_valid; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_0; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_1; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_2; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_3; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_4; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_5; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_6; // @[ICache.scala 491:30]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_7; // @[ICache.scala 491:30]
  wire  mainPipe_clock; // @[ICache.scala 492:30]
  wire  mainPipe_reset; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_toIMeta_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_toIMeta_valid; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_toIMeta_bits_isDoubleLine; // @[ICache.scala 492:30]
  wire [7:0] mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0; // @[ICache.scala 492:30]
  wire [7:0] mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_0_0_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_0_1_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_0_2_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_0_3_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_1_0_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_1_1_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_1_2_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag; // @[ICache.scala 492:30]
  wire [1:0] mainPipe_io_metaArray_fromIMeta_metaData_1_3_coh_state; // @[ICache.scala 492:30]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_0; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_2; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_3; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_0; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_2; // @[ICache.scala 492:30]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_3; // @[ICache.scala 492:30]
  wire  mainPipe_io_dataArray_toIData_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_dataArray_toIData_valid; // @[ICache.scala 492:30]
  wire  mainPipe_io_dataArray_toIData_bits_isDoubleLine; // @[ICache.scala 492:30]
  wire [7:0] mainPipe_io_dataArray_toIData_bits_vSetIdx_0; // @[ICache.scala 492:30]
  wire [7:0] mainPipe_io_dataArray_toIData_bits_vSetIdx_1; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_0; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_1; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_2; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_3; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_0; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_1; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_2; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_3; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_0; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_1; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_2; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_3; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_0; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_1; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_2; // @[ICache.scala 492:30]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_3; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_0_toMSHR_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_0_toMSHR_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_mshr_0_toMSHR_bits_paddr; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_mshr_0_toMSHR_bits_vaddr; // @[ICache.scala 492:30]
  wire [3:0] mainPipe_io_mshr_0_toMSHR_bits_waymask; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_0_fromMSHR_valid; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_mshr_0_fromMSHR_bits_data; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_0_fromMSHR_bits_corrupt; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_1_toMSHR_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_1_toMSHR_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_mshr_1_toMSHR_bits_paddr; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_mshr_1_toMSHR_bits_vaddr; // @[ICache.scala 492:30]
  wire [3:0] mainPipe_io_mshr_1_toMSHR_bits_waymask; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_1_fromMSHR_valid; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_mshr_1_fromMSHR_bits_data; // @[ICache.scala 492:30]
  wire  mainPipe_io_mshr_1_fromMSHR_bits_corrupt; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_0_source_tag; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_0_source_data; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_0_source_l2; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_errors_0_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_0_report_to_beu; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_0_valid; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_1_source_tag; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_1_source_data; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_1_source_l2; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_errors_1_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_1_report_to_beu; // @[ICache.scala 492:30]
  wire  mainPipe_io_errors_1_valid; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_req_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_fetch_0_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_resp_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_fetch_0_resp_bits_vaddr; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_fetch_0_resp_bits_readData; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_fetch_0_resp_bits_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_resp_bits_tlbExcp_pageFault; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_resp_bits_tlbExcp_accessFault; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_0_resp_bits_tlbExcp_mmio; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_1_req_ready; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_1_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_fetch_1_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_1_resp_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_fetch_1_resp_bits_vaddr; // @[ICache.scala 492:30]
  wire [511:0] mainPipe_io_fetch_1_resp_bits_readData; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_1_resp_bits_tlbExcp_pageFault; // @[ICache.scala 492:30]
  wire  mainPipe_io_fetch_1_resp_bits_tlbExcp_accessFault; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_pmp_0_req_bits_addr; // @[ICache.scala 492:30]
  wire  mainPipe_io_pmp_0_resp_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_pmp_0_resp_mmio; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_pmp_1_req_bits_addr; // @[ICache.scala 492:30]
  wire  mainPipe_io_pmp_1_resp_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_0_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_itlb_0_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_0_resp_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_itlb_0_resp_bits_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_0_resp_bits_miss; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_0_resp_bits_excp_pf_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_0_resp_bits_excp_af_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_1_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_itlb_1_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_1_resp_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_itlb_1_resp_bits_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_1_resp_bits_miss; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_1_resp_bits_excp_pf_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_1_resp_bits_excp_af_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_2_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_itlb_2_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_2_resp_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_itlb_2_resp_bits_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_2_resp_bits_miss; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_2_resp_bits_excp_pf_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_2_resp_bits_excp_af_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_3_req_valid; // @[ICache.scala 492:30]
  wire [38:0] mainPipe_io_itlb_3_req_bits_vaddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_3_resp_valid; // @[ICache.scala 492:30]
  wire [35:0] mainPipe_io_itlb_3_resp_bits_paddr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_3_resp_bits_miss; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_3_resp_bits_excp_pf_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_itlb_3_resp_bits_excp_af_instr; // @[ICache.scala 492:30]
  wire  mainPipe_io_respStall; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_only_0_hit; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_only_0_miss; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_hit_0_hit_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_hit_0_miss_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_miss_0_hit_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_miss_0_miss_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_bank_hit_1; // @[ICache.scala 492:30]
  wire  mainPipe_io_perfInfo_hit; // @[ICache.scala 492:30]
  wire  mainPipe_io_prefetchEnable; // @[ICache.scala 492:30]
  wire  mainPipe_io_prefetchDisable; // @[ICache.scala 492:30]
  wire  mainPipe_io_csr_parity_enable; // @[ICache.scala 492:30]
  wire  missUnit_clock; // @[ICache.scala 493:29]
  wire  missUnit_reset; // @[ICache.scala 493:29]
  wire  missUnit_io_req_0_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_req_0_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_req_0_bits_paddr; // @[ICache.scala 493:29]
  wire [38:0] missUnit_io_req_0_bits_vaddr; // @[ICache.scala 493:29]
  wire [3:0] missUnit_io_req_0_bits_waymask; // @[ICache.scala 493:29]
  wire  missUnit_io_req_1_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_req_1_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_req_1_bits_paddr; // @[ICache.scala 493:29]
  wire [38:0] missUnit_io_req_1_bits_vaddr; // @[ICache.scala 493:29]
  wire [3:0] missUnit_io_req_1_bits_waymask; // @[ICache.scala 493:29]
  wire  missUnit_io_resp_0_valid; // @[ICache.scala 493:29]
  wire [511:0] missUnit_io_resp_0_bits_data; // @[ICache.scala 493:29]
  wire  missUnit_io_resp_0_bits_corrupt; // @[ICache.scala 493:29]
  wire  missUnit_io_resp_1_valid; // @[ICache.scala 493:29]
  wire [511:0] missUnit_io_resp_1_bits_data; // @[ICache.scala 493:29]
  wire  missUnit_io_resp_1_bits_corrupt; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_acquire_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_acquire_valid; // @[ICache.scala 493:29]
  wire [2:0] missUnit_io_mem_acquire_bits_opcode; // @[ICache.scala 493:29]
  wire [2:0] missUnit_io_mem_acquire_bits_size; // @[ICache.scala 493:29]
  wire [1:0] missUnit_io_mem_acquire_bits_source; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_mem_acquire_bits_address; // @[ICache.scala 493:29]
  wire [1:0] missUnit_io_mem_acquire_bits_user_alias; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_acquire_bits_user_preferCache; // @[ICache.scala 493:29]
  wire [31:0] missUnit_io_mem_acquire_bits_mask; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_grant_valid; // @[ICache.scala 493:29]
  wire [2:0] missUnit_io_mem_grant_bits_opcode; // @[ICache.scala 493:29]
  wire [1:0] missUnit_io_mem_grant_bits_param; // @[ICache.scala 493:29]
  wire [1:0] missUnit_io_mem_grant_bits_source; // @[ICache.scala 493:29]
  wire [4:0] missUnit_io_mem_grant_bits_sink; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_grant_bits_echo_blockisdirty; // @[ICache.scala 493:29]
  wire [255:0] missUnit_io_mem_grant_bits_data; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_grant_bits_corrupt; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_finish_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_mem_finish_valid; // @[ICache.scala 493:29]
  wire [4:0] missUnit_io_mem_finish_bits_sink; // @[ICache.scala 493:29]
  wire  missUnit_io_meta_write_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_meta_write_valid; // @[ICache.scala 493:29]
  wire [7:0] missUnit_io_meta_write_bits_virIdx; // @[ICache.scala 493:29]
  wire [23:0] missUnit_io_meta_write_bits_phyTag; // @[ICache.scala 493:29]
  wire [1:0] missUnit_io_meta_write_bits_coh_state; // @[ICache.scala 493:29]
  wire [3:0] missUnit_io_meta_write_bits_waymask; // @[ICache.scala 493:29]
  wire  missUnit_io_meta_write_bits_bankIdx; // @[ICache.scala 493:29]
  wire  missUnit_io_data_write_valid; // @[ICache.scala 493:29]
  wire [7:0] missUnit_io_data_write_bits_virIdx; // @[ICache.scala 493:29]
  wire [511:0] missUnit_io_data_write_bits_data; // @[ICache.scala 493:29]
  wire [3:0] missUnit_io_data_write_bits_waymask; // @[ICache.scala 493:29]
  wire  missUnit_io_data_write_bits_bankIdx; // @[ICache.scala 493:29]
  wire  missUnit_io_release_req_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_release_req_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_release_req_bits_paddr; // @[ICache.scala 493:29]
  wire [38:0] missUnit_io_release_req_bits_vaddr; // @[ICache.scala 493:29]
  wire [2:0] missUnit_io_release_req_bits_param; // @[ICache.scala 493:29]
  wire  missUnit_io_release_req_bits_voluntary; // @[ICache.scala 493:29]
  wire  missUnit_io_release_req_bits_needData; // @[ICache.scala 493:29]
  wire [3:0] missUnit_io_release_req_bits_waymask; // @[ICache.scala 493:29]
  wire [4:0] missUnit_io_release_req_bits_id; // @[ICache.scala 493:29]
  wire  missUnit_io_release_resp_valid; // @[ICache.scala 493:29]
  wire [4:0] missUnit_io_release_resp_bits; // @[ICache.scala 493:29]
  wire  missUnit_io_victimInfor_0_valid; // @[ICache.scala 493:29]
  wire [7:0] missUnit_io_victimInfor_0_vidx; // @[ICache.scala 493:29]
  wire  missUnit_io_victimInfor_1_valid; // @[ICache.scala 493:29]
  wire [7:0] missUnit_io_victimInfor_1_vidx; // @[ICache.scala 493:29]
  wire  missUnit_io_prefetch_req_ready; // @[ICache.scala 493:29]
  wire  missUnit_io_prefetch_req_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_prefetch_req_bits_paddr; // @[ICache.scala 493:29]
  wire  missUnit_io_prefetch_check_0_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_prefetch_check_0_bits; // @[ICache.scala 493:29]
  wire  missUnit_io_prefetch_check_1_valid; // @[ICache.scala 493:29]
  wire [35:0] missUnit_io_prefetch_check_1_bits; // @[ICache.scala 493:29]
  wire  releaseUnit_clock; // @[ICache.scala 494:30]
  wire  releaseUnit_reset; // @[ICache.scala 494:30]
  wire  releaseUnit_io_req_ready; // @[ICache.scala 494:30]
  wire  releaseUnit_io_req_valid; // @[ICache.scala 494:30]
  wire [35:0] releaseUnit_io_req_bits_addr; // @[ICache.scala 494:30]
  wire [2:0] releaseUnit_io_req_bits_param; // @[ICache.scala 494:30]
  wire  releaseUnit_io_req_bits_voluntary; // @[ICache.scala 494:30]
  wire  releaseUnit_io_req_bits_hasData; // @[ICache.scala 494:30]
  wire  releaseUnit_io_req_bits_dirty; // @[ICache.scala 494:30]
  wire [511:0] releaseUnit_io_req_bits_data; // @[ICache.scala 494:30]
  wire  releaseUnit_io_finish; // @[ICache.scala 494:30]
  wire  releaseUnit_io_mem_release_ready; // @[ICache.scala 494:30]
  wire  releaseUnit_io_mem_release_valid; // @[ICache.scala 494:30]
  wire [2:0] releaseUnit_io_mem_release_bits_opcode; // @[ICache.scala 494:30]
  wire [2:0] releaseUnit_io_mem_release_bits_param; // @[ICache.scala 494:30]
  wire [35:0] releaseUnit_io_mem_release_bits_address; // @[ICache.scala 494:30]
  wire  releaseUnit_io_mem_release_bits_echo_blockisdirty; // @[ICache.scala 494:30]
  wire [255:0] releaseUnit_io_mem_release_bits_data; // @[ICache.scala 494:30]
  wire  releaseUnit_io_mem_grant_ready; // @[ICache.scala 494:30]
  wire  releaseUnit_io_mem_grant_valid; // @[ICache.scala 494:30]
  wire [1:0] releaseUnit_io_mem_grant_bits_source; // @[ICache.scala 494:30]
  wire  replacePipe_clock; // @[ICache.scala 495:31]
  wire  replacePipe_reset; // @[ICache.scala 495:31]
  wire  replacePipe_io_pipe_req_ready; // @[ICache.scala 495:31]
  wire  replacePipe_io_pipe_req_valid; // @[ICache.scala 495:31]
  wire [35:0] replacePipe_io_pipe_req_bits_paddr; // @[ICache.scala 495:31]
  wire [38:0] replacePipe_io_pipe_req_bits_vaddr; // @[ICache.scala 495:31]
  wire [2:0] replacePipe_io_pipe_req_bits_param; // @[ICache.scala 495:31]
  wire  replacePipe_io_pipe_req_bits_voluntary; // @[ICache.scala 495:31]
  wire  replacePipe_io_pipe_req_bits_needData; // @[ICache.scala 495:31]
  wire [3:0] replacePipe_io_pipe_req_bits_waymask; // @[ICache.scala 495:31]
  wire [4:0] replacePipe_io_pipe_req_bits_id; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_read_ready; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_read_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_meta_read_bits_vSetIdx_0; // @[ICache.scala 495:31]
  wire  replacePipe_io_data_read_ready; // @[ICache.scala 495:31]
  wire  replacePipe_io_data_read_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_data_read_bits_vSetIdx_0; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_source_tag; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_source_data; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_opType_probe; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_opType_release; // @[ICache.scala 495:31]
  wire [35:0] replacePipe_io_error_paddr; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_report_to_beu; // @[ICache.scala 495:31]
  wire  replacePipe_io_error_valid; // @[ICache.scala 495:31]
  wire [1:0] replacePipe_io_meta_response_metaData_0_0_coh_state; // @[ICache.scala 495:31]
  wire [23:0] replacePipe_io_meta_response_metaData_0_0_tag; // @[ICache.scala 495:31]
  wire [1:0] replacePipe_io_meta_response_metaData_0_1_coh_state; // @[ICache.scala 495:31]
  wire [23:0] replacePipe_io_meta_response_metaData_0_1_tag; // @[ICache.scala 495:31]
  wire [1:0] replacePipe_io_meta_response_metaData_0_2_coh_state; // @[ICache.scala 495:31]
  wire [23:0] replacePipe_io_meta_response_metaData_0_2_tag; // @[ICache.scala 495:31]
  wire [1:0] replacePipe_io_meta_response_metaData_0_3_coh_state; // @[ICache.scala 495:31]
  wire [23:0] replacePipe_io_meta_response_metaData_0_3_tag; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_response_errors_0_0; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_response_errors_0_1; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_response_errors_0_2; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_response_errors_0_3; // @[ICache.scala 495:31]
  wire [511:0] replacePipe_io_data_response_datas_0_0; // @[ICache.scala 495:31]
  wire [511:0] replacePipe_io_data_response_datas_0_1; // @[ICache.scala 495:31]
  wire [511:0] replacePipe_io_data_response_datas_0_2; // @[ICache.scala 495:31]
  wire [511:0] replacePipe_io_data_response_datas_0_3; // @[ICache.scala 495:31]
  wire [31:0] replacePipe_io_data_response_codes_0_0; // @[ICache.scala 495:31]
  wire [31:0] replacePipe_io_data_response_codes_0_1; // @[ICache.scala 495:31]
  wire [31:0] replacePipe_io_data_response_codes_0_2; // @[ICache.scala 495:31]
  wire [31:0] replacePipe_io_data_response_codes_0_3; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_write_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_meta_write_bits_virIdx; // @[ICache.scala 495:31]
  wire [23:0] replacePipe_io_meta_write_bits_phyTag; // @[ICache.scala 495:31]
  wire [1:0] replacePipe_io_meta_write_bits_coh_state; // @[ICache.scala 495:31]
  wire [3:0] replacePipe_io_meta_write_bits_waymask; // @[ICache.scala 495:31]
  wire  replacePipe_io_meta_write_bits_bankIdx; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_req_ready; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_req_valid; // @[ICache.scala 495:31]
  wire [35:0] replacePipe_io_release_req_bits_addr; // @[ICache.scala 495:31]
  wire [2:0] replacePipe_io_release_req_bits_param; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_req_bits_voluntary; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_req_bits_hasData; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_req_bits_dirty; // @[ICache.scala 495:31]
  wire [511:0] replacePipe_io_release_req_bits_data; // @[ICache.scala 495:31]
  wire  replacePipe_io_release_finish; // @[ICache.scala 495:31]
  wire  replacePipe_io_pipe_resp_valid; // @[ICache.scala 495:31]
  wire [4:0] replacePipe_io_pipe_resp_bits; // @[ICache.scala 495:31]
  wire  replacePipe_io_status_r1_set_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_status_r1_set_bits; // @[ICache.scala 495:31]
  wire  replacePipe_io_status_r2_set_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_status_r2_set_bits; // @[ICache.scala 495:31]
  wire  replacePipe_io_status_r3_set_valid; // @[ICache.scala 495:31]
  wire [7:0] replacePipe_io_status_r3_set_bits; // @[ICache.scala 495:31]
  wire  replacePipe_io_csr_parity_enable; // @[ICache.scala 495:31]
  wire  probeQueue_clock; // @[ICache.scala 496:30]
  wire  probeQueue_reset; // @[ICache.scala 496:30]
  wire  probeQueue_io_mem_probe_ready; // @[ICache.scala 496:30]
  wire  probeQueue_io_mem_probe_valid; // @[ICache.scala 496:30]
  wire [1:0] probeQueue_io_mem_probe_bits_param; // @[ICache.scala 496:30]
  wire [35:0] probeQueue_io_mem_probe_bits_address; // @[ICache.scala 496:30]
  wire [255:0] probeQueue_io_mem_probe_bits_data; // @[ICache.scala 496:30]
  wire  probeQueue_io_pipe_req_ready; // @[ICache.scala 496:30]
  wire  probeQueue_io_pipe_req_valid; // @[ICache.scala 496:30]
  wire [35:0] probeQueue_io_pipe_req_bits_paddr; // @[ICache.scala 496:30]
  wire [38:0] probeQueue_io_pipe_req_bits_vaddr; // @[ICache.scala 496:30]
  wire [2:0] probeQueue_io_pipe_req_bits_param; // @[ICache.scala 496:30]
  wire  probeQueue_io_pipe_req_bits_needData; // @[ICache.scala 496:30]
  wire [4:0] probeQueue_io_pipe_req_bits_id; // @[ICache.scala 496:30]
  wire  prefetchPipe_clock; // @[ICache.scala 497:31]
  wire  prefetchPipe_reset; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_fromFtq_req_valid; // @[ICache.scala 497:31]
  wire [38:0] prefetchPipe_io_fromFtq_req_bits_target; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_iTLBInter_req_ready; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_iTLBInter_req_valid; // @[ICache.scala 497:31]
  wire [38:0] prefetchPipe_io_iTLBInter_req_bits_vaddr; // @[ICache.scala 497:31]
  wire [35:0] prefetchPipe_io_iTLBInter_resp_bits_paddr; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_iTLBInter_resp_bits_miss; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_iTLBInter_resp_bits_excp_pf_instr; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_iTLBInter_resp_bits_excp_af_instr; // @[ICache.scala 497:31]
  wire [35:0] prefetchPipe_io_pmp_req_bits_addr; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_pmp_resp_instr; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_pmp_resp_mmio; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_toIMeta_ready; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_toIMeta_valid; // @[ICache.scala 497:31]
  wire [7:0] prefetchPipe_io_toIMeta_bits_vSetIdx_0; // @[ICache.scala 497:31]
  wire [1:0] prefetchPipe_io_fromIMeta_metaData_0_0_coh_state; // @[ICache.scala 497:31]
  wire [23:0] prefetchPipe_io_fromIMeta_metaData_0_0_tag; // @[ICache.scala 497:31]
  wire [1:0] prefetchPipe_io_fromIMeta_metaData_0_1_coh_state; // @[ICache.scala 497:31]
  wire [23:0] prefetchPipe_io_fromIMeta_metaData_0_1_tag; // @[ICache.scala 497:31]
  wire [1:0] prefetchPipe_io_fromIMeta_metaData_0_2_coh_state; // @[ICache.scala 497:31]
  wire [23:0] prefetchPipe_io_fromIMeta_metaData_0_2_tag; // @[ICache.scala 497:31]
  wire [1:0] prefetchPipe_io_fromIMeta_metaData_0_3_coh_state; // @[ICache.scala 497:31]
  wire [23:0] prefetchPipe_io_fromIMeta_metaData_0_3_tag; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_toMissUnit_enqReq_ready; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_toMissUnit_enqReq_valid; // @[ICache.scala 497:31]
  wire [35:0] prefetchPipe_io_toMissUnit_enqReq_bits_paddr; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_fromMSHR_0_valid; // @[ICache.scala 497:31]
  wire [35:0] prefetchPipe_io_fromMSHR_0_bits; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_fromMSHR_1_valid; // @[ICache.scala 497:31]
  wire [35:0] prefetchPipe_io_fromMSHR_1_bits; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_prefetchEnable; // @[ICache.scala 497:31]
  wire  prefetchPipe_io_prefetchDisable; // @[ICache.scala 497:31]
  wire  meta_read_arb_io_in_0_ready; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_0_valid; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_in_0_bits_vSetIdx_0; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_1_ready; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_1_valid; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_1_bits_isDoubleLine; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_in_1_bits_vSetIdx_0; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_in_1_bits_vSetIdx_1; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_2_ready; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_in_2_valid; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_in_2_bits_vSetIdx_0; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_out_ready; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_out_valid; // @[ICache.scala 499:31]
  wire  meta_read_arb_io_out_bits_isDoubleLine; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_out_bits_vSetIdx_0; // @[ICache.scala 499:31]
  wire [7:0] meta_read_arb_io_out_bits_vSetIdx_1; // @[ICache.scala 499:31]
  wire  data_read_arb_io_in_0_ready; // @[ICache.scala 500:31]
  wire  data_read_arb_io_in_0_valid; // @[ICache.scala 500:31]
  wire [7:0] data_read_arb_io_in_0_bits_vSetIdx_0; // @[ICache.scala 500:31]
  wire  data_read_arb_io_in_1_ready; // @[ICache.scala 500:31]
  wire  data_read_arb_io_in_1_valid; // @[ICache.scala 500:31]
  wire  data_read_arb_io_in_1_bits_isDoubleLine; // @[ICache.scala 500:31]
  wire [7:0] data_read_arb_io_in_1_bits_vSetIdx_0; // @[ICache.scala 500:31]
  wire [7:0] data_read_arb_io_in_1_bits_vSetIdx_1; // @[ICache.scala 500:31]
  wire  data_read_arb_io_out_ready; // @[ICache.scala 500:31]
  wire  data_read_arb_io_out_valid; // @[ICache.scala 500:31]
  wire  data_read_arb_io_out_bits_isDoubleLine; // @[ICache.scala 500:31]
  wire [7:0] data_read_arb_io_out_bits_vSetIdx_0; // @[ICache.scala 500:31]
  wire [7:0] data_read_arb_io_out_bits_vSetIdx_1; // @[ICache.scala 500:31]
  wire  meta_write_arb_io_in_0_ready; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_in_0_valid; // @[ICache.scala 501:31]
  wire [7:0] meta_write_arb_io_in_0_bits_virIdx; // @[ICache.scala 501:31]
  wire [23:0] meta_write_arb_io_in_0_bits_phyTag; // @[ICache.scala 501:31]
  wire [1:0] meta_write_arb_io_in_0_bits_coh_state; // @[ICache.scala 501:31]
  wire [3:0] meta_write_arb_io_in_0_bits_waymask; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_in_0_bits_bankIdx; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_in_1_ready; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_in_1_valid; // @[ICache.scala 501:31]
  wire [7:0] meta_write_arb_io_in_1_bits_virIdx; // @[ICache.scala 501:31]
  wire [23:0] meta_write_arb_io_in_1_bits_phyTag; // @[ICache.scala 501:31]
  wire [1:0] meta_write_arb_io_in_1_bits_coh_state; // @[ICache.scala 501:31]
  wire [3:0] meta_write_arb_io_in_1_bits_waymask; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_in_1_bits_bankIdx; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_out_ready; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_out_valid; // @[ICache.scala 501:31]
  wire [7:0] meta_write_arb_io_out_bits_virIdx; // @[ICache.scala 501:31]
  wire [23:0] meta_write_arb_io_out_bits_phyTag; // @[ICache.scala 501:31]
  wire [1:0] meta_write_arb_io_out_bits_coh_state; // @[ICache.scala 501:31]
  wire [3:0] meta_write_arb_io_out_bits_waymask; // @[ICache.scala 501:31]
  wire  meta_write_arb_io_out_bits_bankIdx; // @[ICache.scala 501:31]
  wire  replace_req_arb_io_in_0_ready; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_0_valid; // @[ICache.scala 502:31]
  wire [35:0] replace_req_arb_io_in_0_bits_paddr; // @[ICache.scala 502:31]
  wire [38:0] replace_req_arb_io_in_0_bits_vaddr; // @[ICache.scala 502:31]
  wire [2:0] replace_req_arb_io_in_0_bits_param; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_0_bits_voluntary; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_0_bits_needData; // @[ICache.scala 502:31]
  wire [3:0] replace_req_arb_io_in_0_bits_waymask; // @[ICache.scala 502:31]
  wire [4:0] replace_req_arb_io_in_0_bits_id; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_1_ready; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_1_valid; // @[ICache.scala 502:31]
  wire [35:0] replace_req_arb_io_in_1_bits_paddr; // @[ICache.scala 502:31]
  wire [38:0] replace_req_arb_io_in_1_bits_vaddr; // @[ICache.scala 502:31]
  wire [2:0] replace_req_arb_io_in_1_bits_param; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_1_bits_voluntary; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_in_1_bits_needData; // @[ICache.scala 502:31]
  wire [3:0] replace_req_arb_io_in_1_bits_waymask; // @[ICache.scala 502:31]
  wire [4:0] replace_req_arb_io_in_1_bits_id; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_out_ready; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_out_valid; // @[ICache.scala 502:31]
  wire [35:0] replace_req_arb_io_out_bits_paddr; // @[ICache.scala 502:31]
  wire [38:0] replace_req_arb_io_out_bits_vaddr; // @[ICache.scala 502:31]
  wire [2:0] replace_req_arb_io_out_bits_param; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_out_bits_voluntary; // @[ICache.scala 502:31]
  wire  replace_req_arb_io_out_bits_needData; // @[ICache.scala 502:31]
  wire [3:0] replace_req_arb_io_out_bits_waymask; // @[ICache.scala 502:31]
  wire [4:0] replace_req_arb_io_out_bits_id; // @[ICache.scala 502:31]
  wire  cacheOpDecoder_clock; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_reset; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_csr_distribute_csr_wvalid; // @[ICache.scala 675:30]
  wire [11:0] cacheOpDecoder_io_csr_distribute_csr_waddr; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_csr_distribute_csr_wdata; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_csr_update_wvalid; // @[ICache.scala 675:30]
  wire [11:0] cacheOpDecoder_io_csr_update_waddr; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_csr_update_wdata; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_bank_num; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_cache_resp_valid; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_tag_low; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_0; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_1; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_2; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_3; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_4; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_5; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_6; // @[ICache.scala 675:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_7; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_source_tag; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_source_data; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_source_l2; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_fetch; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_load; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_store; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_probe; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_release; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_opType_atom; // @[ICache.scala 675:30]
  wire [35:0] cacheOpDecoder_io_error_paddr; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_report_to_beu; // @[ICache.scala 675:30]
  wire  cacheOpDecoder_io_error_valid; // @[ICache.scala 675:30]
  wire [35:0] _io_error_T_10 = mainPipe_io_errors_0_valid ? mainPipe_io_errors_0_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_11 = mainPipe_io_errors_1_valid ? mainPipe_io_errors_1_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_12 = replacePipe_io_error_valid ? replacePipe_io_error_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_13 = _io_error_T_10 | _io_error_T_11; // @[Mux.scala 27:73]
  reg  io_error_REG_source_tag; // @[ICache.scala 605:22]
  reg  io_error_REG_source_data; // @[ICache.scala 605:22]
  reg  io_error_REG_source_l2; // @[ICache.scala 605:22]
  reg  io_error_REG_opType_fetch; // @[ICache.scala 605:22]
  reg  io_error_REG_opType_probe; // @[ICache.scala 605:22]
  reg  io_error_REG_opType_release; // @[ICache.scala 605:22]
  reg [35:0] io_error_REG_paddr; // @[ICache.scala 605:22]
  reg  io_error_REG_report_to_beu; // @[ICache.scala 605:22]
  reg  io_error_REG_valid; // @[ICache.scala 605:22]
  wire [7:0] probeReqVidx = probeQueue_io_pipe_req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  hasVictim_0 = missUnit_io_victimInfor_0_valid; // @[ICache.scala 612:{26,26}]
  wire [7:0] victimSetSeq_0 = missUnit_io_victimInfor_0_vidx; // @[ICache.scala 613:{29,29}]
  wire  hasVictim_1 = missUnit_io_victimInfor_1_valid; // @[ICache.scala 612:{26,26}]
  wire [7:0] victimSetSeq_1 = missUnit_io_victimInfor_1_vidx; // @[ICache.scala 613:{29,29}]
  wire  probeShouldBlock = hasVictim_0 & probeQueue_io_pipe_req_valid & victimSetSeq_0 == probeReqVidx | hasVictim_1 &
    probeQueue_io_pipe_req_valid & victimSetSeq_1 == probeReqVidx; // @[ICache.scala 615:145]
  wire [7:0] releaseReqVidx = missUnit_io_release_req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  hasConflict_0 = replacePipe_io_status_r1_set_valid; // @[ICache.scala 620:{28,28}]
  wire [7:0] conflictIdx_0 = replacePipe_io_status_r1_set_bits; // @[ICache.scala 626:{28,28}]
  wire  hasConflict_1 = replacePipe_io_status_r2_set_valid; // @[ICache.scala 620:{28,28}]
  wire [7:0] conflictIdx_1 = replacePipe_io_status_r2_set_bits; // @[ICache.scala 626:{28,28}]
  wire  hasConflict_2 = replacePipe_io_status_r3_set_valid; // @[ICache.scala 620:{28,28}]
  wire [7:0] conflictIdx_2 = replacePipe_io_status_r3_set_bits; // @[ICache.scala 626:{28,28}]
  wire  releaseShouldBlock = hasConflict_0 & missUnit_io_release_req_valid & conflictIdx_0 == releaseReqVidx |
    hasConflict_1 & missUnit_io_release_req_valid & conflictIdx_1 == releaseReqVidx | hasConflict_2 &
    missUnit_io_release_req_valid & conflictIdx_2 == releaseReqVidx; // @[ICache.scala 632:152]
  wire  _GEN_14 = auto_client_out_d_bits_opcode == 3'h6 & releaseUnit_io_mem_grant_ready; // @[ICache.scala 659:15 662:61 663:30]
  wire  _GEN_13 = auto_client_out_d_bits_opcode == 3'h6 & auto_client_out_d_valid; // @[ICache.scala 662:61 663:30 597:34]
  ICacheMetaArray metaArray ( // @[ICache.scala 490:30]
    .clock(metaArray_clock),
    .reset(metaArray_reset),
    .io_write_valid(metaArray_io_write_valid),
    .io_write_bits_virIdx(metaArray_io_write_bits_virIdx),
    .io_write_bits_phyTag(metaArray_io_write_bits_phyTag),
    .io_write_bits_coh_state(metaArray_io_write_bits_coh_state),
    .io_write_bits_waymask(metaArray_io_write_bits_waymask),
    .io_write_bits_bankIdx(metaArray_io_write_bits_bankIdx),
    .io_read_ready(metaArray_io_read_ready),
    .io_read_valid(metaArray_io_read_valid),
    .io_read_bits_isDoubleLine(metaArray_io_read_bits_isDoubleLine),
    .io_read_bits_vSetIdx_0(metaArray_io_read_bits_vSetIdx_0),
    .io_read_bits_vSetIdx_1(metaArray_io_read_bits_vSetIdx_1),
    .io_readResp_metaData_0_0_coh_state(metaArray_io_readResp_metaData_0_0_coh_state),
    .io_readResp_metaData_0_0_tag(metaArray_io_readResp_metaData_0_0_tag),
    .io_readResp_metaData_0_1_coh_state(metaArray_io_readResp_metaData_0_1_coh_state),
    .io_readResp_metaData_0_1_tag(metaArray_io_readResp_metaData_0_1_tag),
    .io_readResp_metaData_0_2_coh_state(metaArray_io_readResp_metaData_0_2_coh_state),
    .io_readResp_metaData_0_2_tag(metaArray_io_readResp_metaData_0_2_tag),
    .io_readResp_metaData_0_3_coh_state(metaArray_io_readResp_metaData_0_3_coh_state),
    .io_readResp_metaData_0_3_tag(metaArray_io_readResp_metaData_0_3_tag),
    .io_readResp_metaData_1_0_coh_state(metaArray_io_readResp_metaData_1_0_coh_state),
    .io_readResp_metaData_1_0_tag(metaArray_io_readResp_metaData_1_0_tag),
    .io_readResp_metaData_1_1_coh_state(metaArray_io_readResp_metaData_1_1_coh_state),
    .io_readResp_metaData_1_1_tag(metaArray_io_readResp_metaData_1_1_tag),
    .io_readResp_metaData_1_2_coh_state(metaArray_io_readResp_metaData_1_2_coh_state),
    .io_readResp_metaData_1_2_tag(metaArray_io_readResp_metaData_1_2_tag),
    .io_readResp_metaData_1_3_coh_state(metaArray_io_readResp_metaData_1_3_coh_state),
    .io_readResp_metaData_1_3_tag(metaArray_io_readResp_metaData_1_3_tag),
    .io_readResp_errors_0_0(metaArray_io_readResp_errors_0_0),
    .io_readResp_errors_0_1(metaArray_io_readResp_errors_0_1),
    .io_readResp_errors_0_2(metaArray_io_readResp_errors_0_2),
    .io_readResp_errors_0_3(metaArray_io_readResp_errors_0_3),
    .io_readResp_errors_1_0(metaArray_io_readResp_errors_1_0),
    .io_readResp_errors_1_1(metaArray_io_readResp_errors_1_1),
    .io_readResp_errors_1_2(metaArray_io_readResp_errors_1_2),
    .io_readResp_errors_1_3(metaArray_io_readResp_errors_1_3),
    .io_cacheOp_req_valid(metaArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(metaArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(metaArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_opCode(metaArray_io_cacheOp_req_bits_opCode),
    .io_cacheOp_req_bits_write_tag_low(metaArray_io_cacheOp_req_bits_write_tag_low),
    .io_cacheOp_resp_valid(metaArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_tag_low(metaArray_io_cacheOp_resp_bits_read_tag_low)
  );
  ICacheDataArray dataArray ( // @[ICache.scala 491:30]
    .clock(dataArray_clock),
    .reset(dataArray_reset),
    .io_write_valid(dataArray_io_write_valid),
    .io_write_bits_virIdx(dataArray_io_write_bits_virIdx),
    .io_write_bits_data(dataArray_io_write_bits_data),
    .io_write_bits_waymask(dataArray_io_write_bits_waymask),
    .io_write_bits_bankIdx(dataArray_io_write_bits_bankIdx),
    .io_read_ready(dataArray_io_read_ready),
    .io_read_valid(dataArray_io_read_valid),
    .io_read_bits_isDoubleLine(dataArray_io_read_bits_isDoubleLine),
    .io_read_bits_vSetIdx_0(dataArray_io_read_bits_vSetIdx_0),
    .io_read_bits_vSetIdx_1(dataArray_io_read_bits_vSetIdx_1),
    .io_readResp_datas_0_0(dataArray_io_readResp_datas_0_0),
    .io_readResp_datas_0_1(dataArray_io_readResp_datas_0_1),
    .io_readResp_datas_0_2(dataArray_io_readResp_datas_0_2),
    .io_readResp_datas_0_3(dataArray_io_readResp_datas_0_3),
    .io_readResp_datas_1_0(dataArray_io_readResp_datas_1_0),
    .io_readResp_datas_1_1(dataArray_io_readResp_datas_1_1),
    .io_readResp_datas_1_2(dataArray_io_readResp_datas_1_2),
    .io_readResp_datas_1_3(dataArray_io_readResp_datas_1_3),
    .io_readResp_codes_0_0(dataArray_io_readResp_codes_0_0),
    .io_readResp_codes_0_1(dataArray_io_readResp_codes_0_1),
    .io_readResp_codes_0_2(dataArray_io_readResp_codes_0_2),
    .io_readResp_codes_0_3(dataArray_io_readResp_codes_0_3),
    .io_readResp_codes_1_0(dataArray_io_readResp_codes_1_0),
    .io_readResp_codes_1_1(dataArray_io_readResp_codes_1_1),
    .io_readResp_codes_1_2(dataArray_io_readResp_codes_1_2),
    .io_readResp_codes_1_3(dataArray_io_readResp_codes_1_3),
    .io_cacheOp_req_valid(dataArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(dataArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(dataArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_opCode(dataArray_io_cacheOp_req_bits_opCode),
    .io_cacheOp_req_bits_write_data_vec_0(dataArray_io_cacheOp_req_bits_write_data_vec_0),
    .io_cacheOp_req_bits_write_data_vec_1(dataArray_io_cacheOp_req_bits_write_data_vec_1),
    .io_cacheOp_req_bits_write_data_vec_2(dataArray_io_cacheOp_req_bits_write_data_vec_2),
    .io_cacheOp_req_bits_write_data_vec_3(dataArray_io_cacheOp_req_bits_write_data_vec_3),
    .io_cacheOp_req_bits_write_data_vec_4(dataArray_io_cacheOp_req_bits_write_data_vec_4),
    .io_cacheOp_req_bits_write_data_vec_5(dataArray_io_cacheOp_req_bits_write_data_vec_5),
    .io_cacheOp_req_bits_write_data_vec_6(dataArray_io_cacheOp_req_bits_write_data_vec_6),
    .io_cacheOp_req_bits_write_data_vec_7(dataArray_io_cacheOp_req_bits_write_data_vec_7),
    .io_cacheOp_req_bits_bank_num(dataArray_io_cacheOp_req_bits_bank_num),
    .io_cacheOp_resp_valid(dataArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_data_vec_0(dataArray_io_cacheOp_resp_bits_read_data_vec_0),
    .io_cacheOp_resp_bits_read_data_vec_1(dataArray_io_cacheOp_resp_bits_read_data_vec_1),
    .io_cacheOp_resp_bits_read_data_vec_2(dataArray_io_cacheOp_resp_bits_read_data_vec_2),
    .io_cacheOp_resp_bits_read_data_vec_3(dataArray_io_cacheOp_resp_bits_read_data_vec_3),
    .io_cacheOp_resp_bits_read_data_vec_4(dataArray_io_cacheOp_resp_bits_read_data_vec_4),
    .io_cacheOp_resp_bits_read_data_vec_5(dataArray_io_cacheOp_resp_bits_read_data_vec_5),
    .io_cacheOp_resp_bits_read_data_vec_6(dataArray_io_cacheOp_resp_bits_read_data_vec_6),
    .io_cacheOp_resp_bits_read_data_vec_7(dataArray_io_cacheOp_resp_bits_read_data_vec_7)
  );
  ICacheMainPipe mainPipe ( // @[ICache.scala 492:30]
    .clock(mainPipe_clock),
    .reset(mainPipe_reset),
    .io_metaArray_toIMeta_ready(mainPipe_io_metaArray_toIMeta_ready),
    .io_metaArray_toIMeta_valid(mainPipe_io_metaArray_toIMeta_valid),
    .io_metaArray_toIMeta_bits_isDoubleLine(mainPipe_io_metaArray_toIMeta_bits_isDoubleLine),
    .io_metaArray_toIMeta_bits_vSetIdx_0(mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0),
    .io_metaArray_toIMeta_bits_vSetIdx_1(mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1),
    .io_metaArray_fromIMeta_metaData_0_0_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_0_0_coh_state),
    .io_metaArray_fromIMeta_metaData_0_0_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag),
    .io_metaArray_fromIMeta_metaData_0_1_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_0_1_coh_state),
    .io_metaArray_fromIMeta_metaData_0_1_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag),
    .io_metaArray_fromIMeta_metaData_0_2_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_0_2_coh_state),
    .io_metaArray_fromIMeta_metaData_0_2_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag),
    .io_metaArray_fromIMeta_metaData_0_3_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_0_3_coh_state),
    .io_metaArray_fromIMeta_metaData_0_3_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag),
    .io_metaArray_fromIMeta_metaData_1_0_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_1_0_coh_state),
    .io_metaArray_fromIMeta_metaData_1_0_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag),
    .io_metaArray_fromIMeta_metaData_1_1_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_1_1_coh_state),
    .io_metaArray_fromIMeta_metaData_1_1_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag),
    .io_metaArray_fromIMeta_metaData_1_2_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_1_2_coh_state),
    .io_metaArray_fromIMeta_metaData_1_2_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag),
    .io_metaArray_fromIMeta_metaData_1_3_coh_state(mainPipe_io_metaArray_fromIMeta_metaData_1_3_coh_state),
    .io_metaArray_fromIMeta_metaData_1_3_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag),
    .io_metaArray_fromIMeta_errors_0_0(mainPipe_io_metaArray_fromIMeta_errors_0_0),
    .io_metaArray_fromIMeta_errors_0_1(mainPipe_io_metaArray_fromIMeta_errors_0_1),
    .io_metaArray_fromIMeta_errors_0_2(mainPipe_io_metaArray_fromIMeta_errors_0_2),
    .io_metaArray_fromIMeta_errors_0_3(mainPipe_io_metaArray_fromIMeta_errors_0_3),
    .io_metaArray_fromIMeta_errors_1_0(mainPipe_io_metaArray_fromIMeta_errors_1_0),
    .io_metaArray_fromIMeta_errors_1_1(mainPipe_io_metaArray_fromIMeta_errors_1_1),
    .io_metaArray_fromIMeta_errors_1_2(mainPipe_io_metaArray_fromIMeta_errors_1_2),
    .io_metaArray_fromIMeta_errors_1_3(mainPipe_io_metaArray_fromIMeta_errors_1_3),
    .io_dataArray_toIData_ready(mainPipe_io_dataArray_toIData_ready),
    .io_dataArray_toIData_valid(mainPipe_io_dataArray_toIData_valid),
    .io_dataArray_toIData_bits_isDoubleLine(mainPipe_io_dataArray_toIData_bits_isDoubleLine),
    .io_dataArray_toIData_bits_vSetIdx_0(mainPipe_io_dataArray_toIData_bits_vSetIdx_0),
    .io_dataArray_toIData_bits_vSetIdx_1(mainPipe_io_dataArray_toIData_bits_vSetIdx_1),
    .io_dataArray_fromIData_datas_0_0(mainPipe_io_dataArray_fromIData_datas_0_0),
    .io_dataArray_fromIData_datas_0_1(mainPipe_io_dataArray_fromIData_datas_0_1),
    .io_dataArray_fromIData_datas_0_2(mainPipe_io_dataArray_fromIData_datas_0_2),
    .io_dataArray_fromIData_datas_0_3(mainPipe_io_dataArray_fromIData_datas_0_3),
    .io_dataArray_fromIData_datas_1_0(mainPipe_io_dataArray_fromIData_datas_1_0),
    .io_dataArray_fromIData_datas_1_1(mainPipe_io_dataArray_fromIData_datas_1_1),
    .io_dataArray_fromIData_datas_1_2(mainPipe_io_dataArray_fromIData_datas_1_2),
    .io_dataArray_fromIData_datas_1_3(mainPipe_io_dataArray_fromIData_datas_1_3),
    .io_dataArray_fromIData_codes_0_0(mainPipe_io_dataArray_fromIData_codes_0_0),
    .io_dataArray_fromIData_codes_0_1(mainPipe_io_dataArray_fromIData_codes_0_1),
    .io_dataArray_fromIData_codes_0_2(mainPipe_io_dataArray_fromIData_codes_0_2),
    .io_dataArray_fromIData_codes_0_3(mainPipe_io_dataArray_fromIData_codes_0_3),
    .io_dataArray_fromIData_codes_1_0(mainPipe_io_dataArray_fromIData_codes_1_0),
    .io_dataArray_fromIData_codes_1_1(mainPipe_io_dataArray_fromIData_codes_1_1),
    .io_dataArray_fromIData_codes_1_2(mainPipe_io_dataArray_fromIData_codes_1_2),
    .io_dataArray_fromIData_codes_1_3(mainPipe_io_dataArray_fromIData_codes_1_3),
    .io_mshr_0_toMSHR_ready(mainPipe_io_mshr_0_toMSHR_ready),
    .io_mshr_0_toMSHR_valid(mainPipe_io_mshr_0_toMSHR_valid),
    .io_mshr_0_toMSHR_bits_paddr(mainPipe_io_mshr_0_toMSHR_bits_paddr),
    .io_mshr_0_toMSHR_bits_vaddr(mainPipe_io_mshr_0_toMSHR_bits_vaddr),
    .io_mshr_0_toMSHR_bits_waymask(mainPipe_io_mshr_0_toMSHR_bits_waymask),
    .io_mshr_0_fromMSHR_valid(mainPipe_io_mshr_0_fromMSHR_valid),
    .io_mshr_0_fromMSHR_bits_data(mainPipe_io_mshr_0_fromMSHR_bits_data),
    .io_mshr_0_fromMSHR_bits_corrupt(mainPipe_io_mshr_0_fromMSHR_bits_corrupt),
    .io_mshr_1_toMSHR_ready(mainPipe_io_mshr_1_toMSHR_ready),
    .io_mshr_1_toMSHR_valid(mainPipe_io_mshr_1_toMSHR_valid),
    .io_mshr_1_toMSHR_bits_paddr(mainPipe_io_mshr_1_toMSHR_bits_paddr),
    .io_mshr_1_toMSHR_bits_vaddr(mainPipe_io_mshr_1_toMSHR_bits_vaddr),
    .io_mshr_1_toMSHR_bits_waymask(mainPipe_io_mshr_1_toMSHR_bits_waymask),
    .io_mshr_1_fromMSHR_valid(mainPipe_io_mshr_1_fromMSHR_valid),
    .io_mshr_1_fromMSHR_bits_data(mainPipe_io_mshr_1_fromMSHR_bits_data),
    .io_mshr_1_fromMSHR_bits_corrupt(mainPipe_io_mshr_1_fromMSHR_bits_corrupt),
    .io_errors_0_source_tag(mainPipe_io_errors_0_source_tag),
    .io_errors_0_source_data(mainPipe_io_errors_0_source_data),
    .io_errors_0_source_l2(mainPipe_io_errors_0_source_l2),
    .io_errors_0_paddr(mainPipe_io_errors_0_paddr),
    .io_errors_0_report_to_beu(mainPipe_io_errors_0_report_to_beu),
    .io_errors_0_valid(mainPipe_io_errors_0_valid),
    .io_errors_1_source_tag(mainPipe_io_errors_1_source_tag),
    .io_errors_1_source_data(mainPipe_io_errors_1_source_data),
    .io_errors_1_source_l2(mainPipe_io_errors_1_source_l2),
    .io_errors_1_paddr(mainPipe_io_errors_1_paddr),
    .io_errors_1_report_to_beu(mainPipe_io_errors_1_report_to_beu),
    .io_errors_1_valid(mainPipe_io_errors_1_valid),
    .io_fetch_0_req_ready(mainPipe_io_fetch_0_req_ready),
    .io_fetch_0_req_valid(mainPipe_io_fetch_0_req_valid),
    .io_fetch_0_req_bits_vaddr(mainPipe_io_fetch_0_req_bits_vaddr),
    .io_fetch_0_resp_valid(mainPipe_io_fetch_0_resp_valid),
    .io_fetch_0_resp_bits_vaddr(mainPipe_io_fetch_0_resp_bits_vaddr),
    .io_fetch_0_resp_bits_readData(mainPipe_io_fetch_0_resp_bits_readData),
    .io_fetch_0_resp_bits_paddr(mainPipe_io_fetch_0_resp_bits_paddr),
    .io_fetch_0_resp_bits_tlbExcp_pageFault(mainPipe_io_fetch_0_resp_bits_tlbExcp_pageFault),
    .io_fetch_0_resp_bits_tlbExcp_accessFault(mainPipe_io_fetch_0_resp_bits_tlbExcp_accessFault),
    .io_fetch_0_resp_bits_tlbExcp_mmio(mainPipe_io_fetch_0_resp_bits_tlbExcp_mmio),
    .io_fetch_1_req_ready(mainPipe_io_fetch_1_req_ready),
    .io_fetch_1_req_valid(mainPipe_io_fetch_1_req_valid),
    .io_fetch_1_req_bits_vaddr(mainPipe_io_fetch_1_req_bits_vaddr),
    .io_fetch_1_resp_valid(mainPipe_io_fetch_1_resp_valid),
    .io_fetch_1_resp_bits_vaddr(mainPipe_io_fetch_1_resp_bits_vaddr),
    .io_fetch_1_resp_bits_readData(mainPipe_io_fetch_1_resp_bits_readData),
    .io_fetch_1_resp_bits_tlbExcp_pageFault(mainPipe_io_fetch_1_resp_bits_tlbExcp_pageFault),
    .io_fetch_1_resp_bits_tlbExcp_accessFault(mainPipe_io_fetch_1_resp_bits_tlbExcp_accessFault),
    .io_pmp_0_req_bits_addr(mainPipe_io_pmp_0_req_bits_addr),
    .io_pmp_0_resp_instr(mainPipe_io_pmp_0_resp_instr),
    .io_pmp_0_resp_mmio(mainPipe_io_pmp_0_resp_mmio),
    .io_pmp_1_req_bits_addr(mainPipe_io_pmp_1_req_bits_addr),
    .io_pmp_1_resp_instr(mainPipe_io_pmp_1_resp_instr),
    .io_itlb_0_req_valid(mainPipe_io_itlb_0_req_valid),
    .io_itlb_0_req_bits_vaddr(mainPipe_io_itlb_0_req_bits_vaddr),
    .io_itlb_0_resp_valid(mainPipe_io_itlb_0_resp_valid),
    .io_itlb_0_resp_bits_paddr(mainPipe_io_itlb_0_resp_bits_paddr),
    .io_itlb_0_resp_bits_miss(mainPipe_io_itlb_0_resp_bits_miss),
    .io_itlb_0_resp_bits_excp_pf_instr(mainPipe_io_itlb_0_resp_bits_excp_pf_instr),
    .io_itlb_0_resp_bits_excp_af_instr(mainPipe_io_itlb_0_resp_bits_excp_af_instr),
    .io_itlb_1_req_valid(mainPipe_io_itlb_1_req_valid),
    .io_itlb_1_req_bits_vaddr(mainPipe_io_itlb_1_req_bits_vaddr),
    .io_itlb_1_resp_valid(mainPipe_io_itlb_1_resp_valid),
    .io_itlb_1_resp_bits_paddr(mainPipe_io_itlb_1_resp_bits_paddr),
    .io_itlb_1_resp_bits_miss(mainPipe_io_itlb_1_resp_bits_miss),
    .io_itlb_1_resp_bits_excp_pf_instr(mainPipe_io_itlb_1_resp_bits_excp_pf_instr),
    .io_itlb_1_resp_bits_excp_af_instr(mainPipe_io_itlb_1_resp_bits_excp_af_instr),
    .io_itlb_2_req_valid(mainPipe_io_itlb_2_req_valid),
    .io_itlb_2_req_bits_vaddr(mainPipe_io_itlb_2_req_bits_vaddr),
    .io_itlb_2_resp_valid(mainPipe_io_itlb_2_resp_valid),
    .io_itlb_2_resp_bits_paddr(mainPipe_io_itlb_2_resp_bits_paddr),
    .io_itlb_2_resp_bits_miss(mainPipe_io_itlb_2_resp_bits_miss),
    .io_itlb_2_resp_bits_excp_pf_instr(mainPipe_io_itlb_2_resp_bits_excp_pf_instr),
    .io_itlb_2_resp_bits_excp_af_instr(mainPipe_io_itlb_2_resp_bits_excp_af_instr),
    .io_itlb_3_req_valid(mainPipe_io_itlb_3_req_valid),
    .io_itlb_3_req_bits_vaddr(mainPipe_io_itlb_3_req_bits_vaddr),
    .io_itlb_3_resp_valid(mainPipe_io_itlb_3_resp_valid),
    .io_itlb_3_resp_bits_paddr(mainPipe_io_itlb_3_resp_bits_paddr),
    .io_itlb_3_resp_bits_miss(mainPipe_io_itlb_3_resp_bits_miss),
    .io_itlb_3_resp_bits_excp_pf_instr(mainPipe_io_itlb_3_resp_bits_excp_pf_instr),
    .io_itlb_3_resp_bits_excp_af_instr(mainPipe_io_itlb_3_resp_bits_excp_af_instr),
    .io_respStall(mainPipe_io_respStall),
    .io_perfInfo_only_0_hit(mainPipe_io_perfInfo_only_0_hit),
    .io_perfInfo_only_0_miss(mainPipe_io_perfInfo_only_0_miss),
    .io_perfInfo_hit_0_hit_1(mainPipe_io_perfInfo_hit_0_hit_1),
    .io_perfInfo_hit_0_miss_1(mainPipe_io_perfInfo_hit_0_miss_1),
    .io_perfInfo_miss_0_hit_1(mainPipe_io_perfInfo_miss_0_hit_1),
    .io_perfInfo_miss_0_miss_1(mainPipe_io_perfInfo_miss_0_miss_1),
    .io_perfInfo_bank_hit_1(mainPipe_io_perfInfo_bank_hit_1),
    .io_perfInfo_hit(mainPipe_io_perfInfo_hit),
    .io_prefetchEnable(mainPipe_io_prefetchEnable),
    .io_prefetchDisable(mainPipe_io_prefetchDisable),
    .io_csr_parity_enable(mainPipe_io_csr_parity_enable)
  );
  ICacheMissUnit missUnit ( // @[ICache.scala 493:29]
    .clock(missUnit_clock),
    .reset(missUnit_reset),
    .io_req_0_ready(missUnit_io_req_0_ready),
    .io_req_0_valid(missUnit_io_req_0_valid),
    .io_req_0_bits_paddr(missUnit_io_req_0_bits_paddr),
    .io_req_0_bits_vaddr(missUnit_io_req_0_bits_vaddr),
    .io_req_0_bits_waymask(missUnit_io_req_0_bits_waymask),
    .io_req_1_ready(missUnit_io_req_1_ready),
    .io_req_1_valid(missUnit_io_req_1_valid),
    .io_req_1_bits_paddr(missUnit_io_req_1_bits_paddr),
    .io_req_1_bits_vaddr(missUnit_io_req_1_bits_vaddr),
    .io_req_1_bits_waymask(missUnit_io_req_1_bits_waymask),
    .io_resp_0_valid(missUnit_io_resp_0_valid),
    .io_resp_0_bits_data(missUnit_io_resp_0_bits_data),
    .io_resp_0_bits_corrupt(missUnit_io_resp_0_bits_corrupt),
    .io_resp_1_valid(missUnit_io_resp_1_valid),
    .io_resp_1_bits_data(missUnit_io_resp_1_bits_data),
    .io_resp_1_bits_corrupt(missUnit_io_resp_1_bits_corrupt),
    .io_mem_acquire_ready(missUnit_io_mem_acquire_ready),
    .io_mem_acquire_valid(missUnit_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(missUnit_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(missUnit_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(missUnit_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(missUnit_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_alias(missUnit_io_mem_acquire_bits_user_alias),
    .io_mem_acquire_bits_user_preferCache(missUnit_io_mem_acquire_bits_user_preferCache),
    .io_mem_acquire_bits_mask(missUnit_io_mem_acquire_bits_mask),
    .io_mem_grant_valid(missUnit_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(missUnit_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(missUnit_io_mem_grant_bits_param),
    .io_mem_grant_bits_source(missUnit_io_mem_grant_bits_source),
    .io_mem_grant_bits_sink(missUnit_io_mem_grant_bits_sink),
    .io_mem_grant_bits_echo_blockisdirty(missUnit_io_mem_grant_bits_echo_blockisdirty),
    .io_mem_grant_bits_data(missUnit_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(missUnit_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(missUnit_io_mem_finish_ready),
    .io_mem_finish_valid(missUnit_io_mem_finish_valid),
    .io_mem_finish_bits_sink(missUnit_io_mem_finish_bits_sink),
    .io_meta_write_ready(missUnit_io_meta_write_ready),
    .io_meta_write_valid(missUnit_io_meta_write_valid),
    .io_meta_write_bits_virIdx(missUnit_io_meta_write_bits_virIdx),
    .io_meta_write_bits_phyTag(missUnit_io_meta_write_bits_phyTag),
    .io_meta_write_bits_coh_state(missUnit_io_meta_write_bits_coh_state),
    .io_meta_write_bits_waymask(missUnit_io_meta_write_bits_waymask),
    .io_meta_write_bits_bankIdx(missUnit_io_meta_write_bits_bankIdx),
    .io_data_write_valid(missUnit_io_data_write_valid),
    .io_data_write_bits_virIdx(missUnit_io_data_write_bits_virIdx),
    .io_data_write_bits_data(missUnit_io_data_write_bits_data),
    .io_data_write_bits_waymask(missUnit_io_data_write_bits_waymask),
    .io_data_write_bits_bankIdx(missUnit_io_data_write_bits_bankIdx),
    .io_release_req_ready(missUnit_io_release_req_ready),
    .io_release_req_valid(missUnit_io_release_req_valid),
    .io_release_req_bits_paddr(missUnit_io_release_req_bits_paddr),
    .io_release_req_bits_vaddr(missUnit_io_release_req_bits_vaddr),
    .io_release_req_bits_param(missUnit_io_release_req_bits_param),
    .io_release_req_bits_voluntary(missUnit_io_release_req_bits_voluntary),
    .io_release_req_bits_needData(missUnit_io_release_req_bits_needData),
    .io_release_req_bits_waymask(missUnit_io_release_req_bits_waymask),
    .io_release_req_bits_id(missUnit_io_release_req_bits_id),
    .io_release_resp_valid(missUnit_io_release_resp_valid),
    .io_release_resp_bits(missUnit_io_release_resp_bits),
    .io_victimInfor_0_valid(missUnit_io_victimInfor_0_valid),
    .io_victimInfor_0_vidx(missUnit_io_victimInfor_0_vidx),
    .io_victimInfor_1_valid(missUnit_io_victimInfor_1_valid),
    .io_victimInfor_1_vidx(missUnit_io_victimInfor_1_vidx),
    .io_prefetch_req_ready(missUnit_io_prefetch_req_ready),
    .io_prefetch_req_valid(missUnit_io_prefetch_req_valid),
    .io_prefetch_req_bits_paddr(missUnit_io_prefetch_req_bits_paddr),
    .io_prefetch_check_0_valid(missUnit_io_prefetch_check_0_valid),
    .io_prefetch_check_0_bits(missUnit_io_prefetch_check_0_bits),
    .io_prefetch_check_1_valid(missUnit_io_prefetch_check_1_valid),
    .io_prefetch_check_1_bits(missUnit_io_prefetch_check_1_bits)
  );
  ReleaseUnit releaseUnit ( // @[ICache.scala 494:30]
    .clock(releaseUnit_clock),
    .reset(releaseUnit_reset),
    .io_req_ready(releaseUnit_io_req_ready),
    .io_req_valid(releaseUnit_io_req_valid),
    .io_req_bits_addr(releaseUnit_io_req_bits_addr),
    .io_req_bits_param(releaseUnit_io_req_bits_param),
    .io_req_bits_voluntary(releaseUnit_io_req_bits_voluntary),
    .io_req_bits_hasData(releaseUnit_io_req_bits_hasData),
    .io_req_bits_dirty(releaseUnit_io_req_bits_dirty),
    .io_req_bits_data(releaseUnit_io_req_bits_data),
    .io_finish(releaseUnit_io_finish),
    .io_mem_release_ready(releaseUnit_io_mem_release_ready),
    .io_mem_release_valid(releaseUnit_io_mem_release_valid),
    .io_mem_release_bits_opcode(releaseUnit_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(releaseUnit_io_mem_release_bits_param),
    .io_mem_release_bits_address(releaseUnit_io_mem_release_bits_address),
    .io_mem_release_bits_echo_blockisdirty(releaseUnit_io_mem_release_bits_echo_blockisdirty),
    .io_mem_release_bits_data(releaseUnit_io_mem_release_bits_data),
    .io_mem_grant_ready(releaseUnit_io_mem_grant_ready),
    .io_mem_grant_valid(releaseUnit_io_mem_grant_valid),
    .io_mem_grant_bits_source(releaseUnit_io_mem_grant_bits_source)
  );
  ICacheReplacePipe replacePipe ( // @[ICache.scala 495:31]
    .clock(replacePipe_clock),
    .reset(replacePipe_reset),
    .io_pipe_req_ready(replacePipe_io_pipe_req_ready),
    .io_pipe_req_valid(replacePipe_io_pipe_req_valid),
    .io_pipe_req_bits_paddr(replacePipe_io_pipe_req_bits_paddr),
    .io_pipe_req_bits_vaddr(replacePipe_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_param(replacePipe_io_pipe_req_bits_param),
    .io_pipe_req_bits_voluntary(replacePipe_io_pipe_req_bits_voluntary),
    .io_pipe_req_bits_needData(replacePipe_io_pipe_req_bits_needData),
    .io_pipe_req_bits_waymask(replacePipe_io_pipe_req_bits_waymask),
    .io_pipe_req_bits_id(replacePipe_io_pipe_req_bits_id),
    .io_meta_read_ready(replacePipe_io_meta_read_ready),
    .io_meta_read_valid(replacePipe_io_meta_read_valid),
    .io_meta_read_bits_vSetIdx_0(replacePipe_io_meta_read_bits_vSetIdx_0),
    .io_data_read_ready(replacePipe_io_data_read_ready),
    .io_data_read_valid(replacePipe_io_data_read_valid),
    .io_data_read_bits_vSetIdx_0(replacePipe_io_data_read_bits_vSetIdx_0),
    .io_error_source_tag(replacePipe_io_error_source_tag),
    .io_error_source_data(replacePipe_io_error_source_data),
    .io_error_opType_probe(replacePipe_io_error_opType_probe),
    .io_error_opType_release(replacePipe_io_error_opType_release),
    .io_error_paddr(replacePipe_io_error_paddr),
    .io_error_report_to_beu(replacePipe_io_error_report_to_beu),
    .io_error_valid(replacePipe_io_error_valid),
    .io_meta_response_metaData_0_0_coh_state(replacePipe_io_meta_response_metaData_0_0_coh_state),
    .io_meta_response_metaData_0_0_tag(replacePipe_io_meta_response_metaData_0_0_tag),
    .io_meta_response_metaData_0_1_coh_state(replacePipe_io_meta_response_metaData_0_1_coh_state),
    .io_meta_response_metaData_0_1_tag(replacePipe_io_meta_response_metaData_0_1_tag),
    .io_meta_response_metaData_0_2_coh_state(replacePipe_io_meta_response_metaData_0_2_coh_state),
    .io_meta_response_metaData_0_2_tag(replacePipe_io_meta_response_metaData_0_2_tag),
    .io_meta_response_metaData_0_3_coh_state(replacePipe_io_meta_response_metaData_0_3_coh_state),
    .io_meta_response_metaData_0_3_tag(replacePipe_io_meta_response_metaData_0_3_tag),
    .io_meta_response_errors_0_0(replacePipe_io_meta_response_errors_0_0),
    .io_meta_response_errors_0_1(replacePipe_io_meta_response_errors_0_1),
    .io_meta_response_errors_0_2(replacePipe_io_meta_response_errors_0_2),
    .io_meta_response_errors_0_3(replacePipe_io_meta_response_errors_0_3),
    .io_data_response_datas_0_0(replacePipe_io_data_response_datas_0_0),
    .io_data_response_datas_0_1(replacePipe_io_data_response_datas_0_1),
    .io_data_response_datas_0_2(replacePipe_io_data_response_datas_0_2),
    .io_data_response_datas_0_3(replacePipe_io_data_response_datas_0_3),
    .io_data_response_codes_0_0(replacePipe_io_data_response_codes_0_0),
    .io_data_response_codes_0_1(replacePipe_io_data_response_codes_0_1),
    .io_data_response_codes_0_2(replacePipe_io_data_response_codes_0_2),
    .io_data_response_codes_0_3(replacePipe_io_data_response_codes_0_3),
    .io_meta_write_valid(replacePipe_io_meta_write_valid),
    .io_meta_write_bits_virIdx(replacePipe_io_meta_write_bits_virIdx),
    .io_meta_write_bits_phyTag(replacePipe_io_meta_write_bits_phyTag),
    .io_meta_write_bits_coh_state(replacePipe_io_meta_write_bits_coh_state),
    .io_meta_write_bits_waymask(replacePipe_io_meta_write_bits_waymask),
    .io_meta_write_bits_bankIdx(replacePipe_io_meta_write_bits_bankIdx),
    .io_release_req_ready(replacePipe_io_release_req_ready),
    .io_release_req_valid(replacePipe_io_release_req_valid),
    .io_release_req_bits_addr(replacePipe_io_release_req_bits_addr),
    .io_release_req_bits_param(replacePipe_io_release_req_bits_param),
    .io_release_req_bits_voluntary(replacePipe_io_release_req_bits_voluntary),
    .io_release_req_bits_hasData(replacePipe_io_release_req_bits_hasData),
    .io_release_req_bits_dirty(replacePipe_io_release_req_bits_dirty),
    .io_release_req_bits_data(replacePipe_io_release_req_bits_data),
    .io_release_finish(replacePipe_io_release_finish),
    .io_pipe_resp_valid(replacePipe_io_pipe_resp_valid),
    .io_pipe_resp_bits(replacePipe_io_pipe_resp_bits),
    .io_status_r1_set_valid(replacePipe_io_status_r1_set_valid),
    .io_status_r1_set_bits(replacePipe_io_status_r1_set_bits),
    .io_status_r2_set_valid(replacePipe_io_status_r2_set_valid),
    .io_status_r2_set_bits(replacePipe_io_status_r2_set_bits),
    .io_status_r3_set_valid(replacePipe_io_status_r3_set_valid),
    .io_status_r3_set_bits(replacePipe_io_status_r3_set_bits),
    .io_csr_parity_enable(replacePipe_io_csr_parity_enable)
  );
  ICacheProbeQueue probeQueue ( // @[ICache.scala 496:30]
    .clock(probeQueue_clock),
    .reset(probeQueue_reset),
    .io_mem_probe_ready(probeQueue_io_mem_probe_ready),
    .io_mem_probe_valid(probeQueue_io_mem_probe_valid),
    .io_mem_probe_bits_param(probeQueue_io_mem_probe_bits_param),
    .io_mem_probe_bits_address(probeQueue_io_mem_probe_bits_address),
    .io_mem_probe_bits_data(probeQueue_io_mem_probe_bits_data),
    .io_pipe_req_ready(probeQueue_io_pipe_req_ready),
    .io_pipe_req_valid(probeQueue_io_pipe_req_valid),
    .io_pipe_req_bits_paddr(probeQueue_io_pipe_req_bits_paddr),
    .io_pipe_req_bits_vaddr(probeQueue_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_param(probeQueue_io_pipe_req_bits_param),
    .io_pipe_req_bits_needData(probeQueue_io_pipe_req_bits_needData),
    .io_pipe_req_bits_id(probeQueue_io_pipe_req_bits_id)
  );
  IPrefetchPipe prefetchPipe ( // @[ICache.scala 497:31]
    .clock(prefetchPipe_clock),
    .reset(prefetchPipe_reset),
    .io_fromFtq_req_valid(prefetchPipe_io_fromFtq_req_valid),
    .io_fromFtq_req_bits_target(prefetchPipe_io_fromFtq_req_bits_target),
    .io_iTLBInter_req_ready(prefetchPipe_io_iTLBInter_req_ready),
    .io_iTLBInter_req_valid(prefetchPipe_io_iTLBInter_req_valid),
    .io_iTLBInter_req_bits_vaddr(prefetchPipe_io_iTLBInter_req_bits_vaddr),
    .io_iTLBInter_resp_bits_paddr(prefetchPipe_io_iTLBInter_resp_bits_paddr),
    .io_iTLBInter_resp_bits_miss(prefetchPipe_io_iTLBInter_resp_bits_miss),
    .io_iTLBInter_resp_bits_excp_pf_instr(prefetchPipe_io_iTLBInter_resp_bits_excp_pf_instr),
    .io_iTLBInter_resp_bits_excp_af_instr(prefetchPipe_io_iTLBInter_resp_bits_excp_af_instr),
    .io_pmp_req_bits_addr(prefetchPipe_io_pmp_req_bits_addr),
    .io_pmp_resp_instr(prefetchPipe_io_pmp_resp_instr),
    .io_pmp_resp_mmio(prefetchPipe_io_pmp_resp_mmio),
    .io_toIMeta_ready(prefetchPipe_io_toIMeta_ready),
    .io_toIMeta_valid(prefetchPipe_io_toIMeta_valid),
    .io_toIMeta_bits_vSetIdx_0(prefetchPipe_io_toIMeta_bits_vSetIdx_0),
    .io_fromIMeta_metaData_0_0_coh_state(prefetchPipe_io_fromIMeta_metaData_0_0_coh_state),
    .io_fromIMeta_metaData_0_0_tag(prefetchPipe_io_fromIMeta_metaData_0_0_tag),
    .io_fromIMeta_metaData_0_1_coh_state(prefetchPipe_io_fromIMeta_metaData_0_1_coh_state),
    .io_fromIMeta_metaData_0_1_tag(prefetchPipe_io_fromIMeta_metaData_0_1_tag),
    .io_fromIMeta_metaData_0_2_coh_state(prefetchPipe_io_fromIMeta_metaData_0_2_coh_state),
    .io_fromIMeta_metaData_0_2_tag(prefetchPipe_io_fromIMeta_metaData_0_2_tag),
    .io_fromIMeta_metaData_0_3_coh_state(prefetchPipe_io_fromIMeta_metaData_0_3_coh_state),
    .io_fromIMeta_metaData_0_3_tag(prefetchPipe_io_fromIMeta_metaData_0_3_tag),
    .io_toMissUnit_enqReq_ready(prefetchPipe_io_toMissUnit_enqReq_ready),
    .io_toMissUnit_enqReq_valid(prefetchPipe_io_toMissUnit_enqReq_valid),
    .io_toMissUnit_enqReq_bits_paddr(prefetchPipe_io_toMissUnit_enqReq_bits_paddr),
    .io_fromMSHR_0_valid(prefetchPipe_io_fromMSHR_0_valid),
    .io_fromMSHR_0_bits(prefetchPipe_io_fromMSHR_0_bits),
    .io_fromMSHR_1_valid(prefetchPipe_io_fromMSHR_1_valid),
    .io_fromMSHR_1_bits(prefetchPipe_io_fromMSHR_1_bits),
    .io_prefetchEnable(prefetchPipe_io_prefetchEnable),
    .io_prefetchDisable(prefetchPipe_io_prefetchDisable)
  );
  Arbiter_4 meta_read_arb ( // @[ICache.scala 499:31]
    .io_in_0_ready(meta_read_arb_io_in_0_ready),
    .io_in_0_valid(meta_read_arb_io_in_0_valid),
    .io_in_0_bits_vSetIdx_0(meta_read_arb_io_in_0_bits_vSetIdx_0),
    .io_in_1_ready(meta_read_arb_io_in_1_ready),
    .io_in_1_valid(meta_read_arb_io_in_1_valid),
    .io_in_1_bits_isDoubleLine(meta_read_arb_io_in_1_bits_isDoubleLine),
    .io_in_1_bits_vSetIdx_0(meta_read_arb_io_in_1_bits_vSetIdx_0),
    .io_in_1_bits_vSetIdx_1(meta_read_arb_io_in_1_bits_vSetIdx_1),
    .io_in_2_ready(meta_read_arb_io_in_2_ready),
    .io_in_2_valid(meta_read_arb_io_in_2_valid),
    .io_in_2_bits_vSetIdx_0(meta_read_arb_io_in_2_bits_vSetIdx_0),
    .io_out_ready(meta_read_arb_io_out_ready),
    .io_out_valid(meta_read_arb_io_out_valid),
    .io_out_bits_isDoubleLine(meta_read_arb_io_out_bits_isDoubleLine),
    .io_out_bits_vSetIdx_0(meta_read_arb_io_out_bits_vSetIdx_0),
    .io_out_bits_vSetIdx_1(meta_read_arb_io_out_bits_vSetIdx_1)
  );
  Arbiter_5 data_read_arb ( // @[ICache.scala 500:31]
    .io_in_0_ready(data_read_arb_io_in_0_ready),
    .io_in_0_valid(data_read_arb_io_in_0_valid),
    .io_in_0_bits_vSetIdx_0(data_read_arb_io_in_0_bits_vSetIdx_0),
    .io_in_1_ready(data_read_arb_io_in_1_ready),
    .io_in_1_valid(data_read_arb_io_in_1_valid),
    .io_in_1_bits_isDoubleLine(data_read_arb_io_in_1_bits_isDoubleLine),
    .io_in_1_bits_vSetIdx_0(data_read_arb_io_in_1_bits_vSetIdx_0),
    .io_in_1_bits_vSetIdx_1(data_read_arb_io_in_1_bits_vSetIdx_1),
    .io_out_ready(data_read_arb_io_out_ready),
    .io_out_valid(data_read_arb_io_out_valid),
    .io_out_bits_isDoubleLine(data_read_arb_io_out_bits_isDoubleLine),
    .io_out_bits_vSetIdx_0(data_read_arb_io_out_bits_vSetIdx_0),
    .io_out_bits_vSetIdx_1(data_read_arb_io_out_bits_vSetIdx_1)
  );
  Arbiter_1 meta_write_arb ( // @[ICache.scala 501:31]
    .io_in_0_ready(meta_write_arb_io_in_0_ready),
    .io_in_0_valid(meta_write_arb_io_in_0_valid),
    .io_in_0_bits_virIdx(meta_write_arb_io_in_0_bits_virIdx),
    .io_in_0_bits_phyTag(meta_write_arb_io_in_0_bits_phyTag),
    .io_in_0_bits_coh_state(meta_write_arb_io_in_0_bits_coh_state),
    .io_in_0_bits_waymask(meta_write_arb_io_in_0_bits_waymask),
    .io_in_0_bits_bankIdx(meta_write_arb_io_in_0_bits_bankIdx),
    .io_in_1_ready(meta_write_arb_io_in_1_ready),
    .io_in_1_valid(meta_write_arb_io_in_1_valid),
    .io_in_1_bits_virIdx(meta_write_arb_io_in_1_bits_virIdx),
    .io_in_1_bits_phyTag(meta_write_arb_io_in_1_bits_phyTag),
    .io_in_1_bits_coh_state(meta_write_arb_io_in_1_bits_coh_state),
    .io_in_1_bits_waymask(meta_write_arb_io_in_1_bits_waymask),
    .io_in_1_bits_bankIdx(meta_write_arb_io_in_1_bits_bankIdx),
    .io_out_ready(meta_write_arb_io_out_ready),
    .io_out_valid(meta_write_arb_io_out_valid),
    .io_out_bits_virIdx(meta_write_arb_io_out_bits_virIdx),
    .io_out_bits_phyTag(meta_write_arb_io_out_bits_phyTag),
    .io_out_bits_coh_state(meta_write_arb_io_out_bits_coh_state),
    .io_out_bits_waymask(meta_write_arb_io_out_bits_waymask),
    .io_out_bits_bankIdx(meta_write_arb_io_out_bits_bankIdx)
  );
  Arbiter_3 replace_req_arb ( // @[ICache.scala 502:31]
    .io_in_0_ready(replace_req_arb_io_in_0_ready),
    .io_in_0_valid(replace_req_arb_io_in_0_valid),
    .io_in_0_bits_paddr(replace_req_arb_io_in_0_bits_paddr),
    .io_in_0_bits_vaddr(replace_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_param(replace_req_arb_io_in_0_bits_param),
    .io_in_0_bits_voluntary(replace_req_arb_io_in_0_bits_voluntary),
    .io_in_0_bits_needData(replace_req_arb_io_in_0_bits_needData),
    .io_in_0_bits_waymask(replace_req_arb_io_in_0_bits_waymask),
    .io_in_0_bits_id(replace_req_arb_io_in_0_bits_id),
    .io_in_1_ready(replace_req_arb_io_in_1_ready),
    .io_in_1_valid(replace_req_arb_io_in_1_valid),
    .io_in_1_bits_paddr(replace_req_arb_io_in_1_bits_paddr),
    .io_in_1_bits_vaddr(replace_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_param(replace_req_arb_io_in_1_bits_param),
    .io_in_1_bits_voluntary(replace_req_arb_io_in_1_bits_voluntary),
    .io_in_1_bits_needData(replace_req_arb_io_in_1_bits_needData),
    .io_in_1_bits_waymask(replace_req_arb_io_in_1_bits_waymask),
    .io_in_1_bits_id(replace_req_arb_io_in_1_bits_id),
    .io_out_ready(replace_req_arb_io_out_ready),
    .io_out_valid(replace_req_arb_io_out_valid),
    .io_out_bits_paddr(replace_req_arb_io_out_bits_paddr),
    .io_out_bits_vaddr(replace_req_arb_io_out_bits_vaddr),
    .io_out_bits_param(replace_req_arb_io_out_bits_param),
    .io_out_bits_voluntary(replace_req_arb_io_out_bits_voluntary),
    .io_out_bits_needData(replace_req_arb_io_out_bits_needData),
    .io_out_bits_waymask(replace_req_arb_io_out_bits_waymask),
    .io_out_bits_id(replace_req_arb_io_out_bits_id)
  );
  CSRCacheOpDecoder cacheOpDecoder ( // @[ICache.scala 675:30]
    .clock(cacheOpDecoder_clock),
    .reset(cacheOpDecoder_reset),
    .io_csr_distribute_csr_wvalid(cacheOpDecoder_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(cacheOpDecoder_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(cacheOpDecoder_io_csr_distribute_csr_wdata),
    .io_csr_update_wvalid(cacheOpDecoder_io_csr_update_wvalid),
    .io_csr_update_waddr(cacheOpDecoder_io_csr_update_waddr),
    .io_csr_update_wdata(cacheOpDecoder_io_csr_update_wdata),
    .io_cache_req_valid(cacheOpDecoder_io_cache_req_valid),
    .io_cache_req_bits_wayNum(cacheOpDecoder_io_cache_req_bits_wayNum),
    .io_cache_req_bits_index(cacheOpDecoder_io_cache_req_bits_index),
    .io_cache_req_bits_opCode(cacheOpDecoder_io_cache_req_bits_opCode),
    .io_cache_req_bits_write_tag_low(cacheOpDecoder_io_cache_req_bits_write_tag_low),
    .io_cache_req_bits_write_data_vec_0(cacheOpDecoder_io_cache_req_bits_write_data_vec_0),
    .io_cache_req_bits_write_data_vec_1(cacheOpDecoder_io_cache_req_bits_write_data_vec_1),
    .io_cache_req_bits_write_data_vec_2(cacheOpDecoder_io_cache_req_bits_write_data_vec_2),
    .io_cache_req_bits_write_data_vec_3(cacheOpDecoder_io_cache_req_bits_write_data_vec_3),
    .io_cache_req_bits_write_data_vec_4(cacheOpDecoder_io_cache_req_bits_write_data_vec_4),
    .io_cache_req_bits_write_data_vec_5(cacheOpDecoder_io_cache_req_bits_write_data_vec_5),
    .io_cache_req_bits_write_data_vec_6(cacheOpDecoder_io_cache_req_bits_write_data_vec_6),
    .io_cache_req_bits_write_data_vec_7(cacheOpDecoder_io_cache_req_bits_write_data_vec_7),
    .io_cache_req_bits_bank_num(cacheOpDecoder_io_cache_req_bits_bank_num),
    .io_cache_resp_valid(cacheOpDecoder_io_cache_resp_valid),
    .io_cache_resp_bits_read_tag_low(cacheOpDecoder_io_cache_resp_bits_read_tag_low),
    .io_cache_resp_bits_read_data_vec_0(cacheOpDecoder_io_cache_resp_bits_read_data_vec_0),
    .io_cache_resp_bits_read_data_vec_1(cacheOpDecoder_io_cache_resp_bits_read_data_vec_1),
    .io_cache_resp_bits_read_data_vec_2(cacheOpDecoder_io_cache_resp_bits_read_data_vec_2),
    .io_cache_resp_bits_read_data_vec_3(cacheOpDecoder_io_cache_resp_bits_read_data_vec_3),
    .io_cache_resp_bits_read_data_vec_4(cacheOpDecoder_io_cache_resp_bits_read_data_vec_4),
    .io_cache_resp_bits_read_data_vec_5(cacheOpDecoder_io_cache_resp_bits_read_data_vec_5),
    .io_cache_resp_bits_read_data_vec_6(cacheOpDecoder_io_cache_resp_bits_read_data_vec_6),
    .io_cache_resp_bits_read_data_vec_7(cacheOpDecoder_io_cache_resp_bits_read_data_vec_7),
    .io_error_source_tag(cacheOpDecoder_io_error_source_tag),
    .io_error_source_data(cacheOpDecoder_io_error_source_data),
    .io_error_source_l2(cacheOpDecoder_io_error_source_l2),
    .io_error_opType_fetch(cacheOpDecoder_io_error_opType_fetch),
    .io_error_opType_load(cacheOpDecoder_io_error_opType_load),
    .io_error_opType_store(cacheOpDecoder_io_error_opType_store),
    .io_error_opType_probe(cacheOpDecoder_io_error_opType_probe),
    .io_error_opType_release(cacheOpDecoder_io_error_opType_release),
    .io_error_opType_atom(cacheOpDecoder_io_error_opType_atom),
    .io_error_paddr(cacheOpDecoder_io_error_paddr),
    .io_error_report_to_beu(cacheOpDecoder_io_error_report_to_beu),
    .io_error_valid(cacheOpDecoder_io_error_valid)
  );
  assign auto_client_out_a_valid = missUnit_io_mem_acquire_valid; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_opcode = missUnit_io_mem_acquire_bits_opcode; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_size = missUnit_io_mem_acquire_bits_size; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_source = missUnit_io_mem_acquire_bits_source; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_address = missUnit_io_mem_acquire_bits_address; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_user_alias = missUnit_io_mem_acquire_bits_user_alias; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_user_preferCache = missUnit_io_mem_acquire_bits_user_preferCache; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_a_bits_mask = missUnit_io_mem_acquire_bits_mask; // @[Nodes.scala 1207:84 ICache.scala 586:9]
  assign auto_client_out_bready = probeQueue_io_mem_probe_ready; // @[Nodes.scala 1207:84 ICache.scala 601:30]
  assign auto_client_out_c_valid = releaseUnit_io_mem_release_valid; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_c_bits_opcode = releaseUnit_io_mem_release_bits_opcode; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_c_bits_param = releaseUnit_io_mem_release_bits_param; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_c_bits_address = releaseUnit_io_mem_release_bits_address; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_c_bits_echo_blockisdirty = releaseUnit_io_mem_release_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_c_bits_data = releaseUnit_io_mem_release_bits_data; // @[Nodes.scala 1207:84 ICache.scala 591:9]
  assign auto_client_out_d_ready = auto_client_out_d_bits_opcode == 3'h5 | _GEN_14; // @[ICache.scala 660:54 661:27]
  assign auto_client_out_e_valid = missUnit_io_mem_finish_valid; // @[Nodes.scala 1207:84 ICache.scala 587:9]
  assign auto_client_out_e_bits_sink = missUnit_io_mem_finish_bits_sink; // @[Nodes.scala 1207:84 ICache.scala 587:9]
  assign io_fetch_0_req_ready = mainPipe_io_fetch_0_req_ready; // @[ICache.scala 654:38]
  assign io_fetch_0_resp_valid = mainPipe_io_fetch_0_resp_valid; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_vaddr = mainPipe_io_fetch_0_resp_bits_vaddr; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_readData = mainPipe_io_fetch_0_resp_bits_readData; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_paddr = mainPipe_io_fetch_0_resp_bits_paddr; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_tlbExcp_pageFault = mainPipe_io_fetch_0_resp_bits_tlbExcp_pageFault; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_tlbExcp_accessFault = mainPipe_io_fetch_0_resp_bits_tlbExcp_accessFault; // @[ICache.scala 569:26]
  assign io_fetch_0_resp_bits_tlbExcp_mmio = mainPipe_io_fetch_0_resp_bits_tlbExcp_mmio; // @[ICache.scala 569:26]
  assign io_fetch_1_req_ready = mainPipe_io_fetch_1_req_ready; // @[ICache.scala 654:38]
  assign io_fetch_1_resp_valid = mainPipe_io_fetch_1_resp_valid; // @[ICache.scala 569:26]
  assign io_fetch_1_resp_bits_vaddr = mainPipe_io_fetch_1_resp_bits_vaddr; // @[ICache.scala 569:26]
  assign io_fetch_1_resp_bits_readData = mainPipe_io_fetch_1_resp_bits_readData; // @[ICache.scala 569:26]
  assign io_fetch_1_resp_bits_tlbExcp_pageFault = mainPipe_io_fetch_1_resp_bits_tlbExcp_pageFault; // @[ICache.scala 569:26]
  assign io_fetch_1_resp_bits_tlbExcp_accessFault = mainPipe_io_fetch_1_resp_bits_tlbExcp_accessFault; // @[ICache.scala 569:26]
  assign io_pmp_0_req_bits_addr = mainPipe_io_pmp_0_req_bits_addr; // @[ICache.scala 542:13]
  assign io_pmp_1_req_bits_addr = mainPipe_io_pmp_1_req_bits_addr; // @[ICache.scala 543:13]
  assign io_pmp_2_req_bits_addr = prefetchPipe_io_pmp_req_bits_addr; // @[ICache.scala 544:13]
  assign io_itlb_0_req_valid = mainPipe_io_itlb_0_req_valid; // @[ICache.scala 562:21]
  assign io_itlb_0_req_bits_vaddr = mainPipe_io_itlb_0_req_bits_vaddr; // @[ICache.scala 562:21]
  assign io_itlb_1_req_valid = mainPipe_io_itlb_1_req_valid; // @[ICache.scala 563:21]
  assign io_itlb_1_req_bits_vaddr = mainPipe_io_itlb_1_req_bits_vaddr; // @[ICache.scala 563:21]
  assign io_itlb_2_req_valid = mainPipe_io_itlb_2_req_valid; // @[ICache.scala 564:21]
  assign io_itlb_2_req_bits_vaddr = mainPipe_io_itlb_2_req_bits_vaddr; // @[ICache.scala 564:21]
  assign io_itlb_3_req_valid = mainPipe_io_itlb_3_req_valid; // @[ICache.scala 565:21]
  assign io_itlb_3_req_bits_vaddr = mainPipe_io_itlb_3_req_bits_vaddr; // @[ICache.scala 565:21]
  assign io_itlb_4_req_valid = prefetchPipe_io_iTLBInter_req_valid; // @[ICache.scala 566:21]
  assign io_itlb_4_req_bits_vaddr = prefetchPipe_io_iTLBInter_req_bits_vaddr; // @[ICache.scala 566:21]
  assign io_perfInfo_only_0_hit = mainPipe_io_perfInfo_only_0_hit; // @[ICache.scala 521:15]
  assign io_perfInfo_only_0_miss = mainPipe_io_perfInfo_only_0_miss; // @[ICache.scala 521:15]
  assign io_perfInfo_hit_0_hit_1 = mainPipe_io_perfInfo_hit_0_hit_1; // @[ICache.scala 521:15]
  assign io_perfInfo_hit_0_miss_1 = mainPipe_io_perfInfo_hit_0_miss_1; // @[ICache.scala 521:15]
  assign io_perfInfo_miss_0_hit_1 = mainPipe_io_perfInfo_miss_0_hit_1; // @[ICache.scala 521:15]
  assign io_perfInfo_miss_0_miss_1 = mainPipe_io_perfInfo_miss_0_miss_1; // @[ICache.scala 521:15]
  assign io_perfInfo_bank_hit_1 = mainPipe_io_perfInfo_bank_hit_1; // @[ICache.scala 521:15]
  assign io_perfInfo_hit = mainPipe_io_perfInfo_hit; // @[ICache.scala 521:15]
  assign io_error_source_tag = io_error_REG_source_tag; // @[ICache.scala 605:12]
  assign io_error_source_data = io_error_REG_source_data; // @[ICache.scala 605:12]
  assign io_error_source_l2 = io_error_REG_source_l2; // @[ICache.scala 605:12]
  assign io_error_opType_fetch = io_error_REG_opType_fetch; // @[ICache.scala 605:12]
  assign io_error_opType_load = 1'h0; // @[ICache.scala 605:12]
  assign io_error_opType_store = 1'h0; // @[ICache.scala 605:12]
  assign io_error_opType_probe = io_error_REG_opType_probe; // @[ICache.scala 605:12]
  assign io_error_opType_release = io_error_REG_opType_release; // @[ICache.scala 605:12]
  assign io_error_opType_atom = 1'h0; // @[ICache.scala 605:12]
  assign io_error_paddr = io_error_REG_paddr; // @[ICache.scala 605:12]
  assign io_error_report_to_beu = io_error_REG_report_to_beu; // @[ICache.scala 605:12]
  assign io_error_valid = io_error_REG_valid; // @[ICache.scala 605:12]
  assign io_csr_update_wvalid = cacheOpDecoder_io_csr_update_wvalid; // @[ICache.scala 676:25]
  assign io_csr_update_waddr = cacheOpDecoder_io_csr_update_waddr; // @[ICache.scala 676:25]
  assign io_csr_update_wdata = cacheOpDecoder_io_csr_update_wdata; // @[ICache.scala 676:25]
  assign metaArray_clock = clock;
  assign metaArray_reset = reset;
  assign metaArray_io_write_valid = meta_write_arb_io_out_valid; // @[ICache.scala 526:22]
  assign metaArray_io_write_bits_virIdx = meta_write_arb_io_out_bits_virIdx; // @[ICache.scala 526:22]
  assign metaArray_io_write_bits_phyTag = meta_write_arb_io_out_bits_phyTag; // @[ICache.scala 526:22]
  assign metaArray_io_write_bits_coh_state = meta_write_arb_io_out_bits_coh_state; // @[ICache.scala 526:22]
  assign metaArray_io_write_bits_waymask = meta_write_arb_io_out_bits_waymask; // @[ICache.scala 526:22]
  assign metaArray_io_write_bits_bankIdx = meta_write_arb_io_out_bits_bankIdx; // @[ICache.scala 526:22]
  assign metaArray_io_read_valid = meta_read_arb_io_out_valid; // @[ICache.scala 508:41]
  assign metaArray_io_read_bits_isDoubleLine = meta_read_arb_io_out_bits_isDoubleLine; // @[ICache.scala 508:41]
  assign metaArray_io_read_bits_vSetIdx_0 = meta_read_arb_io_out_bits_vSetIdx_0; // @[ICache.scala 508:41]
  assign metaArray_io_read_bits_vSetIdx_1 = meta_read_arb_io_out_bits_vSetIdx_1; // @[ICache.scala 508:41]
  assign metaArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 678:28]
  assign metaArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 678:28]
  assign metaArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 678:28]
  assign metaArray_io_cacheOp_req_bits_opCode = cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 678:28]
  assign metaArray_io_cacheOp_req_bits_write_tag_low = cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[ICache.scala 678:28]
  assign dataArray_clock = clock;
  assign dataArray_reset = reset;
  assign dataArray_io_write_valid = missUnit_io_data_write_valid; // @[ICache.scala 527:22]
  assign dataArray_io_write_bits_virIdx = missUnit_io_data_write_bits_virIdx; // @[ICache.scala 527:22]
  assign dataArray_io_write_bits_data = missUnit_io_data_write_bits_data; // @[ICache.scala 527:22]
  assign dataArray_io_write_bits_waymask = missUnit_io_data_write_bits_waymask; // @[ICache.scala 527:22]
  assign dataArray_io_write_bits_bankIdx = missUnit_io_data_write_bits_bankIdx; // @[ICache.scala 527:22]
  assign dataArray_io_read_valid = data_read_arb_io_out_valid; // @[ICache.scala 516:39]
  assign dataArray_io_read_bits_isDoubleLine = data_read_arb_io_out_bits_isDoubleLine; // @[ICache.scala 516:39]
  assign dataArray_io_read_bits_vSetIdx_0 = data_read_arb_io_out_bits_vSetIdx_0; // @[ICache.scala 516:39]
  assign dataArray_io_read_bits_vSetIdx_1 = data_read_arb_io_out_bits_vSetIdx_1; // @[ICache.scala 516:39]
  assign dataArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_opCode = cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_0 = cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_1 = cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_2 = cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_3 = cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_4 = cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_5 = cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_6 = cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_7 = cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[ICache.scala 677:28]
  assign dataArray_io_cacheOp_req_bits_bank_num = cacheOpDecoder_io_cache_req_bits_bank_num; // @[ICache.scala 677:28]
  assign mainPipe_clock = clock;
  assign mainPipe_reset = reset;
  assign mainPipe_io_metaArray_toIMeta_ready = meta_read_arb_io_in_1_ready; // @[ICache.scala 506:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_0_coh_state = metaArray_io_readResp_metaData_0_0_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag = metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_1_coh_state = metaArray_io_readResp_metaData_0_1_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag = metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_2_coh_state = metaArray_io_readResp_metaData_0_2_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag = metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_3_coh_state = metaArray_io_readResp_metaData_0_3_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag = metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_0_coh_state = metaArray_io_readResp_metaData_1_0_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag = metaArray_io_readResp_metaData_1_0_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_1_coh_state = metaArray_io_readResp_metaData_1_1_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag = metaArray_io_readResp_metaData_1_1_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_2_coh_state = metaArray_io_readResp_metaData_1_2_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag = metaArray_io_readResp_metaData_1_2_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_3_coh_state = metaArray_io_readResp_metaData_1_3_coh_state; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag = metaArray_io_readResp_metaData_1_3_tag; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_0 = metaArray_io_readResp_errors_0_0; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_1 = metaArray_io_readResp_errors_0_1; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_2 = metaArray_io_readResp_errors_0_2; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_3 = metaArray_io_readResp_errors_0_3; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_0 = metaArray_io_readResp_errors_1_0; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_1 = metaArray_io_readResp_errors_1_1; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_2 = metaArray_io_readResp_errors_1_2; // @[ICache.scala 511:41]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_3 = metaArray_io_readResp_errors_1_3; // @[ICache.scala 511:41]
  assign mainPipe_io_dataArray_toIData_ready = data_read_arb_io_in_1_ready; // @[ICache.scala 515:39]
  assign mainPipe_io_dataArray_fromIData_datas_0_0 = dataArray_io_readResp_datas_0_0; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_0_1 = dataArray_io_readResp_datas_0_1; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_0_2 = dataArray_io_readResp_datas_0_2; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_0_3 = dataArray_io_readResp_datas_0_3; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_1_0 = dataArray_io_readResp_datas_1_0; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_1_1 = dataArray_io_readResp_datas_1_1; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_1_2 = dataArray_io_readResp_datas_1_2; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_datas_1_3 = dataArray_io_readResp_datas_1_3; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_0_0 = dataArray_io_readResp_codes_0_0; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_0_1 = dataArray_io_readResp_codes_0_1; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_0_2 = dataArray_io_readResp_codes_0_2; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_0_3 = dataArray_io_readResp_codes_0_3; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_1_0 = dataArray_io_readResp_codes_1_0; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_1_1 = dataArray_io_readResp_codes_1_1; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_1_2 = dataArray_io_readResp_codes_1_2; // @[ICache.scala 518:39]
  assign mainPipe_io_dataArray_fromIData_codes_1_3 = dataArray_io_readResp_codes_1_3; // @[ICache.scala 518:39]
  assign mainPipe_io_mshr_0_toMSHR_ready = missUnit_io_req_0_ready; // @[ICache.scala 571:34]
  assign mainPipe_io_mshr_0_fromMSHR_valid = missUnit_io_resp_0_valid; // @[ICache.scala 572:34]
  assign mainPipe_io_mshr_0_fromMSHR_bits_data = missUnit_io_resp_0_bits_data; // @[ICache.scala 572:34]
  assign mainPipe_io_mshr_0_fromMSHR_bits_corrupt = missUnit_io_resp_0_bits_corrupt; // @[ICache.scala 572:34]
  assign mainPipe_io_mshr_1_toMSHR_ready = missUnit_io_req_1_ready; // @[ICache.scala 571:34]
  assign mainPipe_io_mshr_1_fromMSHR_valid = missUnit_io_resp_1_valid; // @[ICache.scala 572:34]
  assign mainPipe_io_mshr_1_fromMSHR_bits_data = missUnit_io_resp_1_bits_data; // @[ICache.scala 572:34]
  assign mainPipe_io_mshr_1_fromMSHR_bits_corrupt = missUnit_io_resp_1_bits_corrupt; // @[ICache.scala 572:34]
  assign mainPipe_io_fetch_0_req_valid = io_fetch_0_req_valid; // @[ICache.scala 653:38]
  assign mainPipe_io_fetch_0_req_bits_vaddr = io_fetch_0_req_bits_vaddr; // @[ICache.scala 655:38]
  assign mainPipe_io_fetch_1_req_valid = io_fetch_1_req_valid; // @[ICache.scala 653:38]
  assign mainPipe_io_fetch_1_req_bits_vaddr = io_fetch_1_req_bits_vaddr; // @[ICache.scala 655:38]
  assign mainPipe_io_pmp_0_resp_instr = io_pmp_0_resp_instr; // @[ICache.scala 542:13]
  assign mainPipe_io_pmp_0_resp_mmio = io_pmp_0_resp_mmio; // @[ICache.scala 542:13]
  assign mainPipe_io_pmp_1_resp_instr = io_pmp_1_resp_instr; // @[ICache.scala 543:13]
  assign mainPipe_io_itlb_0_resp_valid = io_itlb_0_resp_valid; // @[ICache.scala 562:21]
  assign mainPipe_io_itlb_0_resp_bits_paddr = io_itlb_0_resp_bits_paddr; // @[ICache.scala 562:21]
  assign mainPipe_io_itlb_0_resp_bits_miss = io_itlb_0_resp_bits_miss; // @[ICache.scala 562:21]
  assign mainPipe_io_itlb_0_resp_bits_excp_pf_instr = io_itlb_0_resp_bits_excp_pf_instr; // @[ICache.scala 562:21]
  assign mainPipe_io_itlb_0_resp_bits_excp_af_instr = io_itlb_0_resp_bits_excp_af_instr; // @[ICache.scala 562:21]
  assign mainPipe_io_itlb_1_resp_valid = io_itlb_1_resp_valid; // @[ICache.scala 563:21]
  assign mainPipe_io_itlb_1_resp_bits_paddr = io_itlb_1_resp_bits_paddr; // @[ICache.scala 563:21]
  assign mainPipe_io_itlb_1_resp_bits_miss = io_itlb_1_resp_bits_miss; // @[ICache.scala 563:21]
  assign mainPipe_io_itlb_1_resp_bits_excp_pf_instr = io_itlb_1_resp_bits_excp_pf_instr; // @[ICache.scala 563:21]
  assign mainPipe_io_itlb_1_resp_bits_excp_af_instr = io_itlb_1_resp_bits_excp_af_instr; // @[ICache.scala 563:21]
  assign mainPipe_io_itlb_2_resp_valid = io_itlb_2_resp_valid; // @[ICache.scala 564:21]
  assign mainPipe_io_itlb_2_resp_bits_paddr = io_itlb_2_resp_bits_paddr; // @[ICache.scala 564:21]
  assign mainPipe_io_itlb_2_resp_bits_miss = io_itlb_2_resp_bits_miss; // @[ICache.scala 564:21]
  assign mainPipe_io_itlb_2_resp_bits_excp_pf_instr = io_itlb_2_resp_bits_excp_pf_instr; // @[ICache.scala 564:21]
  assign mainPipe_io_itlb_2_resp_bits_excp_af_instr = io_itlb_2_resp_bits_excp_af_instr; // @[ICache.scala 564:21]
  assign mainPipe_io_itlb_3_resp_valid = io_itlb_3_resp_valid; // @[ICache.scala 565:21]
  assign mainPipe_io_itlb_3_resp_bits_paddr = io_itlb_3_resp_bits_paddr; // @[ICache.scala 565:21]
  assign mainPipe_io_itlb_3_resp_bits_miss = io_itlb_3_resp_bits_miss; // @[ICache.scala 565:21]
  assign mainPipe_io_itlb_3_resp_bits_excp_pf_instr = io_itlb_3_resp_bits_excp_pf_instr; // @[ICache.scala 565:21]
  assign mainPipe_io_itlb_3_resp_bits_excp_af_instr = io_itlb_3_resp_bits_excp_af_instr; // @[ICache.scala 565:21]
  assign mainPipe_io_respStall = io_stop; // @[ICache.scala 520:25]
  assign mainPipe_io_csr_parity_enable = io_csr_parity_enable; // @[ICache.scala 529:33]
  assign missUnit_clock = clock;
  assign missUnit_reset = reset;
  assign missUnit_io_req_0_valid = mainPipe_io_mshr_0_toMSHR_valid; // @[ICache.scala 571:34]
  assign missUnit_io_req_0_bits_paddr = mainPipe_io_mshr_0_toMSHR_bits_paddr; // @[ICache.scala 571:34]
  assign missUnit_io_req_0_bits_vaddr = mainPipe_io_mshr_0_toMSHR_bits_vaddr; // @[ICache.scala 571:34]
  assign missUnit_io_req_0_bits_waymask = mainPipe_io_mshr_0_toMSHR_bits_waymask; // @[ICache.scala 571:34]
  assign missUnit_io_req_1_valid = mainPipe_io_mshr_1_toMSHR_valid; // @[ICache.scala 571:34]
  assign missUnit_io_req_1_bits_paddr = mainPipe_io_mshr_1_toMSHR_bits_paddr; // @[ICache.scala 571:34]
  assign missUnit_io_req_1_bits_vaddr = mainPipe_io_mshr_1_toMSHR_bits_vaddr; // @[ICache.scala 571:34]
  assign missUnit_io_req_1_bits_waymask = mainPipe_io_mshr_1_toMSHR_bits_waymask; // @[ICache.scala 571:34]
  assign missUnit_io_mem_acquire_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_valid = auto_client_out_d_bits_opcode == 3'h5 & auto_client_out_d_valid; // @[ICache.scala 660:54 661:27 594:31]
  assign missUnit_io_mem_grant_bits_opcode = auto_client_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_param = auto_client_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_sink = auto_client_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_echo_blockisdirty = auto_client_out_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_corrupt = auto_client_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_finish_ready = auto_client_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_meta_write_ready = meta_write_arb_io_in_1_ready; // @[ICache.scala 524:41]
  assign missUnit_io_release_req_ready = releaseShouldBlock ? 1'h0 : replace_req_arb_io_in_1_ready; // @[ICache.scala 640:27 641:35 636:40]
  assign missUnit_io_release_resp_valid = replacePipe_io_pipe_resp_valid; // @[ICache.scala 649:28]
  assign missUnit_io_release_resp_bits = replacePipe_io_pipe_resp_bits; // @[ICache.scala 649:28]
  assign missUnit_io_prefetch_req_valid = prefetchPipe_io_toMissUnit_enqReq_valid; // @[ICache.scala 576:28]
  assign missUnit_io_prefetch_req_bits_paddr = prefetchPipe_io_toMissUnit_enqReq_bits_paddr; // @[ICache.scala 576:28]
  assign releaseUnit_clock = clock;
  assign releaseUnit_reset = reset;
  assign releaseUnit_io_req_valid = replacePipe_io_release_req_valid; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_addr = replacePipe_io_release_req_bits_addr; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_param = replacePipe_io_release_req_bits_param; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_voluntary = replacePipe_io_release_req_bits_voluntary; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_hasData = replacePipe_io_release_req_bits_hasData; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_dirty = replacePipe_io_release_req_bits_dirty; // @[ICache.scala 589:22]
  assign releaseUnit_io_req_bits_data = replacePipe_io_release_req_bits_data; // @[ICache.scala 589:22]
  assign releaseUnit_io_mem_release_ready = auto_client_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign releaseUnit_io_mem_grant_valid = auto_client_out_d_bits_opcode == 3'h5 ? 1'h0 : _GEN_13; // @[ICache.scala 597:34 660:54]
  assign releaseUnit_io_mem_grant_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign replacePipe_clock = clock;
  assign replacePipe_reset = reset;
  assign replacePipe_io_pipe_req_valid = replace_req_arb_io_out_valid; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_paddr = replace_req_arb_io_out_bits_paddr; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_vaddr = replace_req_arb_io_out_bits_vaddr; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_param = replace_req_arb_io_out_bits_param; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_voluntary = replace_req_arb_io_out_bits_voluntary; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_needData = replace_req_arb_io_out_bits_needData; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_waymask = replace_req_arb_io_out_bits_waymask; // @[ICache.scala 638:41]
  assign replacePipe_io_pipe_req_bits_id = replace_req_arb_io_out_bits_id; // @[ICache.scala 638:41]
  assign replacePipe_io_meta_read_ready = meta_read_arb_io_in_0_ready; // @[ICache.scala 505:41]
  assign replacePipe_io_data_read_ready = data_read_arb_io_in_0_ready; // @[ICache.scala 514:39]
  assign replacePipe_io_meta_response_metaData_0_0_coh_state = metaArray_io_readResp_metaData_0_0_coh_state; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_0_tag = metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_1_coh_state = metaArray_io_readResp_metaData_0_1_coh_state; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_1_tag = metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_2_coh_state = metaArray_io_readResp_metaData_0_2_coh_state; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_2_tag = metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_3_coh_state = metaArray_io_readResp_metaData_0_3_coh_state; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_metaData_0_3_tag = metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_errors_0_0 = metaArray_io_readResp_errors_0_0; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_errors_0_1 = metaArray_io_readResp_errors_0_1; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_errors_0_2 = metaArray_io_readResp_errors_0_2; // @[ICache.scala 510:41]
  assign replacePipe_io_meta_response_errors_0_3 = metaArray_io_readResp_errors_0_3; // @[ICache.scala 510:41]
  assign replacePipe_io_data_response_datas_0_0 = dataArray_io_readResp_datas_0_0; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_datas_0_1 = dataArray_io_readResp_datas_0_1; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_datas_0_2 = dataArray_io_readResp_datas_0_2; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_datas_0_3 = dataArray_io_readResp_datas_0_3; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_codes_0_0 = dataArray_io_readResp_codes_0_0; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_codes_0_1 = dataArray_io_readResp_codes_0_1; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_codes_0_2 = dataArray_io_readResp_codes_0_2; // @[ICache.scala 517:39]
  assign replacePipe_io_data_response_codes_0_3 = dataArray_io_readResp_codes_0_3; // @[ICache.scala 517:39]
  assign replacePipe_io_release_req_ready = releaseUnit_io_req_ready; // @[ICache.scala 589:22]
  assign replacePipe_io_release_finish = releaseUnit_io_finish; // @[ICache.scala 590:33]
  assign replacePipe_io_csr_parity_enable = io_csr_parity_enable; // @[ICache.scala 530:36]
  assign probeQueue_clock = clock;
  assign probeQueue_reset = reset;
  assign probeQueue_io_mem_probe_valid = auto_client_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_mem_probe_bits_param = auto_client_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_mem_probe_bits_address = auto_client_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_mem_probe_bits_data = auto_client_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_pipe_req_ready = probeShouldBlock ? 1'h0 : replace_req_arb_io_in_0_ready; // @[ICache.scala 644:25 645:34 634:41]
  assign prefetchPipe_clock = clock;
  assign prefetchPipe_reset = reset;
  assign prefetchPipe_io_fromFtq_req_valid = ~io_csr_pf_enable ? 1'h0 : io_prefetch_req_valid; // @[ICache.scala 534:28 533:29 535:41]
  assign prefetchPipe_io_fromFtq_req_bits_target = io_prefetch_req_bits_target; // @[ICache.scala 533:29]
  assign prefetchPipe_io_iTLBInter_req_ready = io_itlb_4_req_ready; // @[ICache.scala 566:21]
  assign prefetchPipe_io_iTLBInter_resp_bits_paddr = io_itlb_4_resp_bits_paddr; // @[ICache.scala 566:21]
  assign prefetchPipe_io_iTLBInter_resp_bits_miss = io_itlb_4_resp_bits_miss; // @[ICache.scala 566:21]
  assign prefetchPipe_io_iTLBInter_resp_bits_excp_pf_instr = io_itlb_4_resp_bits_excp_pf_instr; // @[ICache.scala 566:21]
  assign prefetchPipe_io_iTLBInter_resp_bits_excp_af_instr = io_itlb_4_resp_bits_excp_af_instr; // @[ICache.scala 566:21]
  assign prefetchPipe_io_pmp_resp_instr = io_pmp_2_resp_instr; // @[ICache.scala 544:13]
  assign prefetchPipe_io_pmp_resp_mmio = io_pmp_2_resp_mmio; // @[ICache.scala 544:13]
  assign prefetchPipe_io_toIMeta_ready = meta_read_arb_io_in_2_ready; // @[ICache.scala 507:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_0_coh_state = metaArray_io_readResp_metaData_0_0_coh_state; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_0_tag = metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_1_coh_state = metaArray_io_readResp_metaData_0_1_coh_state; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_1_tag = metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_2_coh_state = metaArray_io_readResp_metaData_0_2_coh_state; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_2_tag = metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_3_coh_state = metaArray_io_readResp_metaData_0_3_coh_state; // @[ICache.scala 512:41]
  assign prefetchPipe_io_fromIMeta_metaData_0_3_tag = metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 512:41]
  assign prefetchPipe_io_toMissUnit_enqReq_ready = missUnit_io_prefetch_req_ready; // @[ICache.scala 576:28]
  assign prefetchPipe_io_fromMSHR_0_valid = missUnit_io_prefetch_check_0_valid; // @[ICache.scala 578:28]
  assign prefetchPipe_io_fromMSHR_0_bits = missUnit_io_prefetch_check_0_bits; // @[ICache.scala 578:28]
  assign prefetchPipe_io_fromMSHR_1_valid = missUnit_io_prefetch_check_1_valid; // @[ICache.scala 578:28]
  assign prefetchPipe_io_fromMSHR_1_bits = missUnit_io_prefetch_check_1_bits; // @[ICache.scala 578:28]
  assign prefetchPipe_io_prefetchEnable = mainPipe_io_prefetchEnable; // @[ICache.scala 546:34]
  assign prefetchPipe_io_prefetchDisable = mainPipe_io_prefetchDisable; // @[ICache.scala 547:35]
  assign meta_read_arb_io_in_0_valid = replacePipe_io_meta_read_valid; // @[ICache.scala 505:41]
  assign meta_read_arb_io_in_0_bits_vSetIdx_0 = replacePipe_io_meta_read_bits_vSetIdx_0; // @[ICache.scala 505:41]
  assign meta_read_arb_io_in_1_valid = mainPipe_io_metaArray_toIMeta_valid; // @[ICache.scala 506:41]
  assign meta_read_arb_io_in_1_bits_isDoubleLine = mainPipe_io_metaArray_toIMeta_bits_isDoubleLine; // @[ICache.scala 506:41]
  assign meta_read_arb_io_in_1_bits_vSetIdx_0 = mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0; // @[ICache.scala 506:41]
  assign meta_read_arb_io_in_1_bits_vSetIdx_1 = mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1; // @[ICache.scala 506:41]
  assign meta_read_arb_io_in_2_valid = prefetchPipe_io_toIMeta_valid; // @[ICache.scala 507:41]
  assign meta_read_arb_io_in_2_bits_vSetIdx_0 = prefetchPipe_io_toIMeta_bits_vSetIdx_0; // @[ICache.scala 507:41]
  assign meta_read_arb_io_out_ready = metaArray_io_read_ready; // @[ICache.scala 508:41]
  assign data_read_arb_io_in_0_valid = replacePipe_io_data_read_valid; // @[ICache.scala 514:39]
  assign data_read_arb_io_in_0_bits_vSetIdx_0 = replacePipe_io_data_read_bits_vSetIdx_0; // @[ICache.scala 514:39]
  assign data_read_arb_io_in_1_valid = mainPipe_io_dataArray_toIData_valid; // @[ICache.scala 515:39]
  assign data_read_arb_io_in_1_bits_isDoubleLine = mainPipe_io_dataArray_toIData_bits_isDoubleLine; // @[ICache.scala 515:39]
  assign data_read_arb_io_in_1_bits_vSetIdx_0 = mainPipe_io_dataArray_toIData_bits_vSetIdx_0; // @[ICache.scala 515:39]
  assign data_read_arb_io_in_1_bits_vSetIdx_1 = mainPipe_io_dataArray_toIData_bits_vSetIdx_1; // @[ICache.scala 515:39]
  assign data_read_arb_io_out_ready = dataArray_io_read_ready; // @[ICache.scala 516:39]
  assign meta_write_arb_io_in_0_valid = replacePipe_io_meta_write_valid; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_0_bits_virIdx = replacePipe_io_meta_write_bits_virIdx; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_0_bits_phyTag = replacePipe_io_meta_write_bits_phyTag; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_0_bits_coh_state = replacePipe_io_meta_write_bits_coh_state; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_0_bits_waymask = replacePipe_io_meta_write_bits_waymask; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_0_bits_bankIdx = replacePipe_io_meta_write_bits_bankIdx; // @[ICache.scala 523:41]
  assign meta_write_arb_io_in_1_valid = missUnit_io_meta_write_valid; // @[ICache.scala 524:41]
  assign meta_write_arb_io_in_1_bits_virIdx = missUnit_io_meta_write_bits_virIdx; // @[ICache.scala 524:41]
  assign meta_write_arb_io_in_1_bits_phyTag = missUnit_io_meta_write_bits_phyTag; // @[ICache.scala 524:41]
  assign meta_write_arb_io_in_1_bits_coh_state = missUnit_io_meta_write_bits_coh_state; // @[ICache.scala 524:41]
  assign meta_write_arb_io_in_1_bits_waymask = missUnit_io_meta_write_bits_waymask; // @[ICache.scala 524:41]
  assign meta_write_arb_io_in_1_bits_bankIdx = missUnit_io_meta_write_bits_bankIdx; // @[ICache.scala 524:41]
  assign meta_write_arb_io_out_ready = 1'h1; // @[ICache.scala 526:22]
  assign replace_req_arb_io_in_0_valid = probeQueue_io_pipe_req_valid & ~probeShouldBlock; // @[ICache.scala 635:79]
  assign replace_req_arb_io_in_0_bits_paddr = probeQueue_io_pipe_req_bits_paddr; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_vaddr = probeQueue_io_pipe_req_bits_vaddr; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_param = probeQueue_io_pipe_req_bits_param; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_voluntary = 1'h0; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_needData = probeQueue_io_pipe_req_bits_needData; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_waymask = 4'h0; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_0_bits_id = probeQueue_io_pipe_req_bits_id; // @[ICache.scala 634:41]
  assign replace_req_arb_io_in_1_valid = missUnit_io_release_req_valid & ~releaseShouldBlock; // @[ICache.scala 637:77]
  assign replace_req_arb_io_in_1_bits_paddr = missUnit_io_release_req_bits_paddr; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_vaddr = missUnit_io_release_req_bits_vaddr; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_param = missUnit_io_release_req_bits_param; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_voluntary = missUnit_io_release_req_bits_voluntary; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_needData = missUnit_io_release_req_bits_needData; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_waymask = missUnit_io_release_req_bits_waymask; // @[ICache.scala 636:40]
  assign replace_req_arb_io_in_1_bits_id = missUnit_io_release_req_bits_id; // @[ICache.scala 636:40]
  assign replace_req_arb_io_out_ready = replacePipe_io_pipe_req_ready; // @[ICache.scala 638:41]
  assign cacheOpDecoder_clock = clock;
  assign cacheOpDecoder_reset = reset;
  assign cacheOpDecoder_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[ICache.scala 676:25]
  assign cacheOpDecoder_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[ICache.scala 676:25]
  assign cacheOpDecoder_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[ICache.scala 676:25]
  assign cacheOpDecoder_io_cache_resp_valid = dataArray_io_cacheOp_resp_valid | metaArray_io_cacheOp_resp_valid; // @[ICache.scala 680:37]
  assign cacheOpDecoder_io_cache_resp_bits_read_tag_low = metaArray_io_cacheOp_resp_valid ?
    metaArray_io_cacheOp_resp_bits_read_tag_low : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_0 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_0 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_1 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_1 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_2 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_2 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_3 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_3 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_4 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_4 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_5 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_5 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_6 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_6 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_7 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_7 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_error_source_tag = io_error_source_tag; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_source_data = io_error_source_data; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_source_l2 = io_error_source_l2; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_fetch = io_error_opType_fetch; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_load = io_error_opType_load; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_store = io_error_opType_store; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_probe = io_error_opType_probe; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_release = io_error_opType_release; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_opType_atom = io_error_opType_atom; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_paddr = io_error_paddr; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_report_to_beu = io_error_report_to_beu; // @[ICache.scala 686:27]
  assign cacheOpDecoder_io_error_valid = io_error_valid; // @[ICache.scala 686:27]
  always @(posedge clock) begin
    io_error_REG_source_tag <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_tag | mainPipe_io_errors_1_valid
       & mainPipe_io_errors_1_source_tag | replacePipe_io_error_valid & replacePipe_io_error_source_tag; // @[Mux.scala 27:73]
    io_error_REG_source_data <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_data |
      mainPipe_io_errors_1_valid & mainPipe_io_errors_1_source_data | replacePipe_io_error_valid &
      replacePipe_io_error_source_data; // @[Mux.scala 27:73]
    io_error_REG_source_l2 <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_l2 | mainPipe_io_errors_1_valid
       & mainPipe_io_errors_1_source_l2; // @[Mux.scala 27:73]
    io_error_REG_opType_fetch <= mainPipe_io_errors_0_valid | mainPipe_io_errors_1_valid | replacePipe_io_error_valid; // @[Mux.scala 27:73]
    io_error_REG_opType_probe <= replacePipe_io_error_valid & replacePipe_io_error_opType_probe; // @[Mux.scala 27:73]
    io_error_REG_opType_release <= replacePipe_io_error_valid & replacePipe_io_error_opType_release; // @[Mux.scala 27:73]
    io_error_REG_paddr <= _io_error_T_13 | _io_error_T_12; // @[Mux.scala 27:73]
    io_error_REG_report_to_beu <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_report_to_beu |
      mainPipe_io_errors_1_valid & mainPipe_io_errors_1_report_to_beu | replacePipe_io_error_valid &
      replacePipe_io_error_report_to_beu; // @[Mux.scala 27:73]
    io_error_REG_valid <= mainPipe_io_errors_0_valid | mainPipe_io_errors_1_valid | replacePipe_io_error_valid; // @[Mux.scala 27:73]
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
  io_error_REG_source_tag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_error_REG_source_data = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_error_REG_source_l2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_error_REG_opType_fetch = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_error_REG_opType_probe = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_error_REG_opType_release = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  io_error_REG_paddr = _RAND_6[35:0];
  _RAND_7 = {1{`RANDOM}};
  io_error_REG_report_to_beu = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_error_REG_valid = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
