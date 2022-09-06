module HuanCun(
  input          clock,
  input          reset,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [5:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [1:0]   auto_in_1_a_bits_user_alias,
  input          auto_in_1_a_bits_user_preferCache,
  input          auto_in_1_a_bits_user_needHint,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [1:0]   auto_in_1_bparam,
  output [5:0]   auto_in_1_bsource,
  output [35:0]  auto_in_1_baddress,
  output [255:0] auto_in_1_bdata,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_param,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [5:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input          auto_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [5:0]   auto_in_1_d_bits_source,
  output [3:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_denied,
  output         auto_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  input          auto_in_1_e_valid,
  input  [3:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [5:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [1:0]   auto_in_0_a_bits_user_alias,
  input          auto_in_0_a_bits_user_preferCache,
  input          auto_in_0_a_bits_user_needHint,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [1:0]   auto_in_0_bparam,
  output [5:0]   auto_in_0_bsource,
  output [35:0]  auto_in_0_baddress,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [5:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input          auto_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [5:0]   auto_in_0_d_bits_source,
  output [3:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  input          auto_in_0_e_valid,
  input  [3:0]   auto_in_0_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [3:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output         auto_out_1_a_bits_user_preferCache,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_a_bits_corrupt,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
  input  [3:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [3:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output         auto_out_1_c_bits_echo_blockisdirty,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [3:0]   auto_out_1_d_bits_source,
  input  [5:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input          auto_out_1_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [5:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [3:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output         auto_out_0_a_bits_user_preferCache,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_a_bits_corrupt,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
  input  [3:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [3:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output         auto_out_0_c_bits_echo_blockisdirty,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [3:0]   auto_out_0_d_bits_source,
  input  [5:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input          auto_out_0_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_e_ready,
  output         auto_out_0_e_valid,
  output [5:0]   auto_out_0_e_bits_sink,
  output [5:0]   io_perfEvents_0_0,
  output [5:0]   io_perfEvents_0_1,
  output [5:0]   io_perfEvents_0_2,
  output [5:0]   io_perfEvents_0_3,
  output [5:0]   io_perfEvents_0_4,
  output [5:0]   io_perfEvents_0_5,
  output [5:0]   io_perfEvents_0_6,
  output [5:0]   io_perfEvents_0_7,
  output [5:0]   io_perfEvents_0_8,
  output [5:0]   io_perfEvents_0_9,
  output [5:0]   io_perfEvents_0_10,
  output [5:0]   io_perfEvents_0_11,
  output [5:0]   io_perfEvents_0_12,
  output [5:0]   io_perfEvents_0_13,
  output [5:0]   io_perfEvents_0_14,
  output [5:0]   io_perfEvents_0_15,
  output [5:0]   io_perfEvents_0_16,
  output [5:0]   io_perfEvents_0_17,
  output [5:0]   io_perfEvents_0_18,
  output [5:0]   io_perfEvents_0_19,
  output [5:0]   io_perfEvents_0_20,
  output [5:0]   io_perfEvents_0_21,
  output [5:0]   io_perfEvents_0_22,
  output [5:0]   io_perfEvents_0_23,
  output [5:0]   io_perfEvents_0_24,
  output [5:0]   io_perfEvents_1_0,
  output [5:0]   io_perfEvents_1_1,
  output [5:0]   io_perfEvents_1_2,
  output [5:0]   io_perfEvents_1_3,
  output [5:0]   io_perfEvents_1_4,
  output [5:0]   io_perfEvents_1_5,
  output [5:0]   io_perfEvents_1_6,
  output [5:0]   io_perfEvents_1_7,
  output [5:0]   io_perfEvents_1_8,
  output [5:0]   io_perfEvents_1_9,
  output [5:0]   io_perfEvents_1_10,
  output [5:0]   io_perfEvents_1_11,
  output [5:0]   io_perfEvents_1_12,
  output [5:0]   io_perfEvents_1_13,
  output [5:0]   io_perfEvents_1_14,
  output [5:0]   io_perfEvents_1_15,
  output [5:0]   io_perfEvents_1_16,
  output [5:0]   io_perfEvents_1_17,
  output [5:0]   io_perfEvents_1_18,
  output [5:0]   io_perfEvents_1_19,
  output [5:0]   io_perfEvents_1_20,
  output [5:0]   io_perfEvents_1_21,
  output [5:0]   io_perfEvents_1_22,
  output [5:0]   io_perfEvents_1_23,
  output [5:0]   io_perfEvents_1_24,
  output         io_ecc_error_valid,
  output [63:0]  io_ecc_error_bits
);
  wire  prefetcher_clock; // @[HuanCun.scala 275:49]
  wire  prefetcher_reset; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_train_ready; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_train_valid; // @[HuanCun.scala 275:49]
  wire [21:0] prefetcher_io_train_bits_tag; // @[HuanCun.scala 275:49]
  wire [7:0] prefetcher_io_train_bits_set; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_train_bits_needT; // @[HuanCun.scala 275:49]
  wire [5:0] prefetcher_io_train_bits_source; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_req_ready; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_req_valid; // @[HuanCun.scala 275:49]
  wire [21:0] prefetcher_io_req_bits_tag; // @[HuanCun.scala 275:49]
  wire [7:0] prefetcher_io_req_bits_set; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_req_bits_needT; // @[HuanCun.scala 275:49]
  wire [5:0] prefetcher_io_req_bits_source; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_resp_ready; // @[HuanCun.scala 275:49]
  wire  prefetcher_io_resp_valid; // @[HuanCun.scala 275:49]
  wire [21:0] prefetcher_io_resp_bits_tag; // @[HuanCun.scala 275:49]
  wire [7:0] prefetcher_io_resp_bits_set; // @[HuanCun.scala 275:49]
  wire  prefetch_train_arb_clock; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_reset; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_0_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_0_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_train_arb_io_in_0_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_train_arb_io_in_0_bits_set; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_0_bits_needT; // @[HuanCun.scala 266:27]
  wire [5:0] prefetch_train_arb_io_in_0_bits_source; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_1_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_1_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_train_arb_io_in_1_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_train_arb_io_in_1_bits_set; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_in_1_bits_needT; // @[HuanCun.scala 266:27]
  wire [5:0] prefetch_train_arb_io_in_1_bits_source; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_out_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_out_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_train_arb_io_out_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_train_arb_io_out_bits_set; // @[HuanCun.scala 266:27]
  wire  prefetch_train_arb_io_out_bits_needT; // @[HuanCun.scala 266:27]
  wire [5:0] prefetch_train_arb_io_out_bits_source; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_clock; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_reset; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_in_0_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_in_0_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_resp_arb_io_in_0_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_resp_arb_io_in_0_bits_set; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_in_1_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_in_1_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_resp_arb_io_in_1_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_resp_arb_io_in_1_bits_set; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_out_ready; // @[HuanCun.scala 266:27]
  wire  prefetch_resp_arb_io_out_valid; // @[HuanCun.scala 266:27]
  wire [21:0] prefetch_resp_arb_io_out_bits_tag; // @[HuanCun.scala 266:27]
  wire [7:0] prefetch_resp_arb_io_out_bits_set; // @[HuanCun.scala 266:27]
  wire  slices_0_clock; // @[HuanCun.scala 309:43]
  wire  slices_0_reset; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_in_a_bits_user_alias; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_bits_user_needHint; // @[HuanCun.scala 309:43]
  wire [31:0] slices_0_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_in_bparam; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_in_bsource; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_in_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_in_bdata; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_c_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_in_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_in_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_in_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_in_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_d_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_in_d_bits_source; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_in_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_in_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_d_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_e_valid; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_in_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_a_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_out_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_0_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_bready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_bvalid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_bopcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_out_bparam; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_bsize; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_bsource; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_out_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_bdata; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_e_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_train_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_train_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_0_io_prefetch_train_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_prefetch_train_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_train_bits_needT; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_prefetch_train_bits_source; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_req_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_0_io_prefetch_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_prefetch_req_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_req_bits_needT; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_prefetch_req_bits_source; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_prefetch_resp_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_0_io_prefetch_resp_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_prefetch_resp_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_0; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_1; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_2; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_3; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_4; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_5; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_6; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_7; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_8; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_9; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_10; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_11; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_12; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_13; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_14; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_15; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_16; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_17; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_18; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_19; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_20; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_21; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_22; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_23; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_perfinfo_24; // @[HuanCun.scala 309:43]
  wire  train_pipeline_clock; // @[Pipeline.scala 29:26]
  wire  train_pipeline_reset; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_in_ready; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_in_valid; // @[Pipeline.scala 29:26]
  wire [21:0] train_pipeline_io_in_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] train_pipeline_io_in_bits_set; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_in_bits_needT; // @[Pipeline.scala 29:26]
  wire [5:0] train_pipeline_io_in_bits_source; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_out_ready; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_out_valid; // @[Pipeline.scala 29:26]
  wire [21:0] train_pipeline_io_out_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] train_pipeline_io_out_bits_set; // @[Pipeline.scala 29:26]
  wire  train_pipeline_io_out_bits_needT; // @[Pipeline.scala 29:26]
  wire [5:0] train_pipeline_io_out_bits_source; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_clock; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_reset; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_io_in_ready; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_io_in_valid; // @[Pipeline.scala 29:26]
  wire [21:0] resp_pipeline_io_in_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] resp_pipeline_io_in_bits_set; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_io_out_ready; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_io_out_valid; // @[Pipeline.scala 29:26]
  wire [21:0] resp_pipeline_io_out_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] resp_pipeline_io_out_bits_set; // @[Pipeline.scala 29:26]
  wire  slices_1_clock; // @[HuanCun.scala 309:43]
  wire  slices_1_reset; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_in_a_bits_user_alias; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_bits_user_needHint; // @[HuanCun.scala 309:43]
  wire [31:0] slices_1_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_in_bparam; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_in_bsource; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_in_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_in_bdata; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_c_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_in_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_in_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_in_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_in_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_d_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_in_d_bits_source; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_in_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_in_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_d_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_e_valid; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_in_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_a_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_out_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_1_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_bready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_bvalid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_bopcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_out_bparam; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_bsize; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_bsource; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_out_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_bdata; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_e_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_train_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_train_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_1_io_prefetch_train_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_prefetch_train_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_train_bits_needT; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_prefetch_train_bits_source; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_req_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_1_io_prefetch_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_prefetch_req_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_req_bits_needT; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_prefetch_req_bits_source; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_prefetch_resp_valid; // @[HuanCun.scala 309:43]
  wire [21:0] slices_1_io_prefetch_resp_bits_tag; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_prefetch_resp_bits_set; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_0; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_1; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_2; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_3; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_4; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_5; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_6; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_7; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_8; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_9; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_10; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_11; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_12; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_13; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_14; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_15; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_16; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_17; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_18; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_19; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_20; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_21; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_22; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_23; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_perfinfo_24; // @[HuanCun.scala 309:43]
  wire  train_pipeline_1_clock; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_reset; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_in_ready; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_in_valid; // @[Pipeline.scala 29:26]
  wire [21:0] train_pipeline_1_io_in_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] train_pipeline_1_io_in_bits_set; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_in_bits_needT; // @[Pipeline.scala 29:26]
  wire [5:0] train_pipeline_1_io_in_bits_source; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_out_ready; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_out_valid; // @[Pipeline.scala 29:26]
  wire [21:0] train_pipeline_1_io_out_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] train_pipeline_1_io_out_bits_set; // @[Pipeline.scala 29:26]
  wire  train_pipeline_1_io_out_bits_needT; // @[Pipeline.scala 29:26]
  wire [5:0] train_pipeline_1_io_out_bits_source; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_clock; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_reset; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_io_in_ready; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_io_in_valid; // @[Pipeline.scala 29:26]
  wire [21:0] resp_pipeline_1_io_in_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] resp_pipeline_1_io_in_bits_set; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_io_out_ready; // @[Pipeline.scala 29:26]
  wire  resp_pipeline_1_io_out_valid; // @[Pipeline.scala 29:26]
  wire [21:0] resp_pipeline_1_io_out_bits_tag; // @[Pipeline.scala 29:26]
  wire [7:0] resp_pipeline_1_io_out_bits_set; // @[Pipeline.scala 29:26]
  wire  ecc_arb_io_in_0_valid; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_0_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_1_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_1_valid; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_1_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_out_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_out_valid; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_out_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_chosen; // @[HuanCun.scala 348:25]
  wire  slices_ecc_ecc_buffer_0_clock; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_0_reset; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_0_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_0_io_in_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_0_io_in_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_0_io_out_ready; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_0_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_0_io_out_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_0_io_out_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_1_clock; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_1_reset; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_1_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_1_io_in_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_1_io_in_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_1_io_out_ready; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_1_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_1_io_out_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_1_io_out_bits_addr; // @[Pipeline.scala 29:26]
  wire  _prefetchReqsReady_0_T_1 = ~prefetcher_io_req_bits_set[0]; // @[HuanCun.scala 287:58]
  wire  prefetchReqsReady_0 = slices_0_io_prefetch_req_ready & _prefetchReqsReady_0_T_1; // @[HuanCun.scala 324:49]
  wire  prefetchReqsReady_1 = slices_1_io_prefetch_req_ready & prefetcher_io_req_bits_set[0]; // @[HuanCun.scala 324:49]
  wire [1:0] _prefetcher_io_req_ready_T = {prefetchReqsReady_0,prefetchReqsReady_1}; // @[Cat.scala 31:58]
  wire [29:0] bundleIn_0_baddress_high = slices_0_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_0_baddress_low = slices_0_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleIn_0_baddress_T = {bundleIn_0_baddress_high,1'h0,bundleIn_0_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_a_bits_address_high = slices_0_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_0_a_bits_address_low = slices_0_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleOut_0_a_bits_address_T = {bundleOut_0_a_bits_address_high,1'h0,bundleOut_0_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_c_bits_address_high = slices_0_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_0_c_bits_address_low = slices_0_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleOut_0_c_bits_address_T = {bundleOut_0_c_bits_address_high,1'h0,bundleOut_0_c_bits_address_low}; // @[Cat.scala 31:58]
  wire [36:0] train_full_addr = {train_pipeline_io_out_bits_tag,train_pipeline_io_out_bits_set,7'h0}; // @[Cat.scala 31:58]
  wire [30:0] set = train_full_addr[36:6]; // @[HuanCun.scala 132:22]
  wire [22:0] tag = set[30:8]; // @[HuanCun.scala 133:19]
  wire [36:0] resp_full_addr = {resp_pipeline_io_out_bits_tag,resp_pipeline_io_out_bits_set,7'h0}; // @[Cat.scala 31:58]
  wire [30:0] set_1 = resp_full_addr[36:6]; // @[HuanCun.scala 132:22]
  wire [22:0] tag_1 = set_1[30:8]; // @[HuanCun.scala 133:19]
  wire [29:0] bundleIn_1_baddress_high = slices_1_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_1_baddress_low = slices_1_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleIn_1_baddress_T = {bundleIn_1_baddress_high,1'h1,bundleIn_1_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_a_bits_address_high = slices_1_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_1_a_bits_address_low = slices_1_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleOut_1_a_bits_address_T = {bundleOut_1_a_bits_address_high,1'h1,bundleOut_1_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_c_bits_address_high = slices_1_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_1_c_bits_address_low = slices_1_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [36:0] _bundleOut_1_c_bits_address_T = {bundleOut_1_c_bits_address_high,1'h1,bundleOut_1_c_bits_address_low}; // @[Cat.scala 31:58]
  wire [36:0] train_full_addr_1 = {train_pipeline_1_io_out_bits_tag,train_pipeline_1_io_out_bits_set,7'h40}; // @[Cat.scala 31:58]
  wire [30:0] set_2 = train_full_addr_1[36:6]; // @[HuanCun.scala 132:22]
  wire [22:0] tag_2 = set_2[30:8]; // @[HuanCun.scala 133:19]
  wire [36:0] resp_full_addr_1 = {resp_pipeline_1_io_out_bits_tag,resp_pipeline_1_io_out_bits_set,7'h40}; // @[Cat.scala 31:58]
  wire [30:0] set_3 = resp_full_addr_1[36:6]; // @[HuanCun.scala 132:22]
  wire [22:0] tag_3 = set_3[30:8]; // @[HuanCun.scala 133:19]
  wire [57:0] io_ecc_error_bits_high = ecc_arb_io_out_bits_addr[63:6]; // @[HuanCun.scala 297:22]
  wire [5:0] io_ecc_error_bits_low = ecc_arb_io_out_bits_addr[5:0]; // @[HuanCun.scala 298:20]
  wire  _io_ecc_error_bits_T = ecc_arb_io_chosen; // @[HuanCun.scala 299:22]
  wire [64:0] _io_ecc_error_bits_T_1 = {io_ecc_error_bits_high,_io_ecc_error_bits_T,io_ecc_error_bits_low}; // @[Cat.scala 31:58]
  Prefetcher prefetcher ( // @[HuanCun.scala 275:49]
    .clock(prefetcher_clock),
    .reset(prefetcher_reset),
    .io_train_ready(prefetcher_io_train_ready),
    .io_train_valid(prefetcher_io_train_valid),
    .io_train_bits_tag(prefetcher_io_train_bits_tag),
    .io_train_bits_set(prefetcher_io_train_bits_set),
    .io_train_bits_needT(prefetcher_io_train_bits_needT),
    .io_train_bits_source(prefetcher_io_train_bits_source),
    .io_req_ready(prefetcher_io_req_ready),
    .io_req_valid(prefetcher_io_req_valid),
    .io_req_bits_tag(prefetcher_io_req_bits_tag),
    .io_req_bits_set(prefetcher_io_req_bits_set),
    .io_req_bits_needT(prefetcher_io_req_bits_needT),
    .io_req_bits_source(prefetcher_io_req_bits_source),
    .io_resp_ready(prefetcher_io_resp_ready),
    .io_resp_valid(prefetcher_io_resp_valid),
    .io_resp_bits_tag(prefetcher_io_resp_bits_tag),
    .io_resp_bits_set(prefetcher_io_resp_bits_set)
  );
  FastArbiter prefetch_train_arb ( // @[HuanCun.scala 266:27]
    .clock(prefetch_train_arb_clock),
    .reset(prefetch_train_arb_reset),
    .io_in_0_ready(prefetch_train_arb_io_in_0_ready),
    .io_in_0_valid(prefetch_train_arb_io_in_0_valid),
    .io_in_0_bits_tag(prefetch_train_arb_io_in_0_bits_tag),
    .io_in_0_bits_set(prefetch_train_arb_io_in_0_bits_set),
    .io_in_0_bits_needT(prefetch_train_arb_io_in_0_bits_needT),
    .io_in_0_bits_source(prefetch_train_arb_io_in_0_bits_source),
    .io_in_1_ready(prefetch_train_arb_io_in_1_ready),
    .io_in_1_valid(prefetch_train_arb_io_in_1_valid),
    .io_in_1_bits_tag(prefetch_train_arb_io_in_1_bits_tag),
    .io_in_1_bits_set(prefetch_train_arb_io_in_1_bits_set),
    .io_in_1_bits_needT(prefetch_train_arb_io_in_1_bits_needT),
    .io_in_1_bits_source(prefetch_train_arb_io_in_1_bits_source),
    .io_out_ready(prefetch_train_arb_io_out_ready),
    .io_out_valid(prefetch_train_arb_io_out_valid),
    .io_out_bits_tag(prefetch_train_arb_io_out_bits_tag),
    .io_out_bits_set(prefetch_train_arb_io_out_bits_set),
    .io_out_bits_needT(prefetch_train_arb_io_out_bits_needT),
    .io_out_bits_source(prefetch_train_arb_io_out_bits_source)
  );
  FastArbiter_1 prefetch_resp_arb ( // @[HuanCun.scala 266:27]
    .clock(prefetch_resp_arb_clock),
    .reset(prefetch_resp_arb_reset),
    .io_in_0_ready(prefetch_resp_arb_io_in_0_ready),
    .io_in_0_valid(prefetch_resp_arb_io_in_0_valid),
    .io_in_0_bits_tag(prefetch_resp_arb_io_in_0_bits_tag),
    .io_in_0_bits_set(prefetch_resp_arb_io_in_0_bits_set),
    .io_in_1_ready(prefetch_resp_arb_io_in_1_ready),
    .io_in_1_valid(prefetch_resp_arb_io_in_1_valid),
    .io_in_1_bits_tag(prefetch_resp_arb_io_in_1_bits_tag),
    .io_in_1_bits_set(prefetch_resp_arb_io_in_1_bits_set),
    .io_out_ready(prefetch_resp_arb_io_out_ready),
    .io_out_valid(prefetch_resp_arb_io_out_valid),
    .io_out_bits_tag(prefetch_resp_arb_io_out_bits_tag),
    .io_out_bits_set(prefetch_resp_arb_io_out_bits_set)
  );
  Slice slices_0 ( // @[HuanCun.scala 309:43]
    .clock(slices_0_clock),
    .reset(slices_0_reset),
    .io_in_a_ready(slices_0_io_in_a_ready),
    .io_in_a_valid(slices_0_io_in_a_valid),
    .io_in_a_bits_opcode(slices_0_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_0_io_in_a_bits_param),
    .io_in_a_bits_size(slices_0_io_in_a_bits_size),
    .io_in_a_bits_source(slices_0_io_in_a_bits_source),
    .io_in_a_bits_address(slices_0_io_in_a_bits_address),
    .io_in_a_bits_user_alias(slices_0_io_in_a_bits_user_alias),
    .io_in_a_bits_user_preferCache(slices_0_io_in_a_bits_user_preferCache),
    .io_in_a_bits_user_needHint(slices_0_io_in_a_bits_user_needHint),
    .io_in_a_bits_mask(slices_0_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_0_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_0_io_in_a_bits_corrupt),
    .io_in_bready(slices_0_io_in_bready),
    .io_in_bvalid(slices_0_io_in_bvalid),
    .io_in_bparam(slices_0_io_in_bparam),
    .io_in_bsource(slices_0_io_in_bsource),
    .io_in_baddress(slices_0_io_in_baddress),
    .io_in_bdata(slices_0_io_in_bdata),
    .io_in_c_ready(slices_0_io_in_c_ready),
    .io_in_c_valid(slices_0_io_in_c_valid),
    .io_in_c_bits_opcode(slices_0_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_0_io_in_c_bits_param),
    .io_in_c_bits_size(slices_0_io_in_c_bits_size),
    .io_in_c_bits_source(slices_0_io_in_c_bits_source),
    .io_in_c_bits_address(slices_0_io_in_c_bits_address),
    .io_in_c_bits_echo_blockisdirty(slices_0_io_in_c_bits_echo_blockisdirty),
    .io_in_c_bits_data(slices_0_io_in_c_bits_data),
    .io_in_d_ready(slices_0_io_in_d_ready),
    .io_in_d_valid(slices_0_io_in_d_valid),
    .io_in_d_bits_opcode(slices_0_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_0_io_in_d_bits_param),
    .io_in_d_bits_size(slices_0_io_in_d_bits_size),
    .io_in_d_bits_source(slices_0_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_0_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_0_io_in_d_bits_denied),
    .io_in_d_bits_echo_blockisdirty(slices_0_io_in_d_bits_echo_blockisdirty),
    .io_in_d_bits_data(slices_0_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_0_io_in_d_bits_corrupt),
    .io_in_e_valid(slices_0_io_in_e_valid),
    .io_in_e_bits_sink(slices_0_io_in_e_bits_sink),
    .io_out_a_ready(slices_0_io_out_a_ready),
    .io_out_a_valid(slices_0_io_out_a_valid),
    .io_out_a_bits_opcode(slices_0_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_0_io_out_a_bits_param),
    .io_out_a_bits_size(slices_0_io_out_a_bits_size),
    .io_out_a_bits_source(slices_0_io_out_a_bits_source),
    .io_out_a_bits_address(slices_0_io_out_a_bits_address),
    .io_out_a_bits_user_preferCache(slices_0_io_out_a_bits_user_preferCache),
    .io_out_a_bits_mask(slices_0_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_0_io_out_a_bits_data),
    .io_out_a_bits_corrupt(slices_0_io_out_a_bits_corrupt),
    .io_out_bready(slices_0_io_out_bready),
    .io_out_bvalid(slices_0_io_out_bvalid),
    .io_out_bopcode(slices_0_io_out_bopcode),
    .io_out_bparam(slices_0_io_out_bparam),
    .io_out_bsize(slices_0_io_out_bsize),
    .io_out_bsource(slices_0_io_out_bsource),
    .io_out_baddress(slices_0_io_out_baddress),
    .io_out_bdata(slices_0_io_out_bdata),
    .io_out_c_ready(slices_0_io_out_c_ready),
    .io_out_c_valid(slices_0_io_out_c_valid),
    .io_out_c_bits_opcode(slices_0_io_out_c_bits_opcode),
    .io_out_c_bits_param(slices_0_io_out_c_bits_param),
    .io_out_c_bits_size(slices_0_io_out_c_bits_size),
    .io_out_c_bits_source(slices_0_io_out_c_bits_source),
    .io_out_c_bits_address(slices_0_io_out_c_bits_address),
    .io_out_c_bits_echo_blockisdirty(slices_0_io_out_c_bits_echo_blockisdirty),
    .io_out_c_bits_data(slices_0_io_out_c_bits_data),
    .io_out_d_ready(slices_0_io_out_d_ready),
    .io_out_d_valid(slices_0_io_out_d_valid),
    .io_out_d_bits_opcode(slices_0_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_0_io_out_d_bits_param),
    .io_out_d_bits_size(slices_0_io_out_d_bits_size),
    .io_out_d_bits_source(slices_0_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_0_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_0_io_out_d_bits_denied),
    .io_out_d_bits_echo_blockisdirty(slices_0_io_out_d_bits_echo_blockisdirty),
    .io_out_d_bits_data(slices_0_io_out_d_bits_data),
    .io_out_e_ready(slices_0_io_out_e_ready),
    .io_out_e_valid(slices_0_io_out_e_valid),
    .io_out_e_bits_sink(slices_0_io_out_e_bits_sink),
    .io_prefetch_train_ready(slices_0_io_prefetch_train_ready),
    .io_prefetch_train_valid(slices_0_io_prefetch_train_valid),
    .io_prefetch_train_bits_tag(slices_0_io_prefetch_train_bits_tag),
    .io_prefetch_train_bits_set(slices_0_io_prefetch_train_bits_set),
    .io_prefetch_train_bits_needT(slices_0_io_prefetch_train_bits_needT),
    .io_prefetch_train_bits_source(slices_0_io_prefetch_train_bits_source),
    .io_prefetch_req_ready(slices_0_io_prefetch_req_ready),
    .io_prefetch_req_valid(slices_0_io_prefetch_req_valid),
    .io_prefetch_req_bits_tag(slices_0_io_prefetch_req_bits_tag),
    .io_prefetch_req_bits_set(slices_0_io_prefetch_req_bits_set),
    .io_prefetch_req_bits_needT(slices_0_io_prefetch_req_bits_needT),
    .io_prefetch_req_bits_source(slices_0_io_prefetch_req_bits_source),
    .io_prefetch_resp_ready(slices_0_io_prefetch_resp_ready),
    .io_prefetch_resp_valid(slices_0_io_prefetch_resp_valid),
    .io_prefetch_resp_bits_tag(slices_0_io_prefetch_resp_bits_tag),
    .io_prefetch_resp_bits_set(slices_0_io_prefetch_resp_bits_set),
    .io_ctl_ecc_valid(slices_0_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_0_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_0_io_ctl_ecc_bits_addr),
    .perfinfo_0(slices_0_perfinfo_0),
    .perfinfo_1(slices_0_perfinfo_1),
    .perfinfo_2(slices_0_perfinfo_2),
    .perfinfo_3(slices_0_perfinfo_3),
    .perfinfo_4(slices_0_perfinfo_4),
    .perfinfo_5(slices_0_perfinfo_5),
    .perfinfo_6(slices_0_perfinfo_6),
    .perfinfo_7(slices_0_perfinfo_7),
    .perfinfo_8(slices_0_perfinfo_8),
    .perfinfo_9(slices_0_perfinfo_9),
    .perfinfo_10(slices_0_perfinfo_10),
    .perfinfo_11(slices_0_perfinfo_11),
    .perfinfo_12(slices_0_perfinfo_12),
    .perfinfo_13(slices_0_perfinfo_13),
    .perfinfo_14(slices_0_perfinfo_14),
    .perfinfo_15(slices_0_perfinfo_15),
    .perfinfo_16(slices_0_perfinfo_16),
    .perfinfo_17(slices_0_perfinfo_17),
    .perfinfo_18(slices_0_perfinfo_18),
    .perfinfo_19(slices_0_perfinfo_19),
    .perfinfo_20(slices_0_perfinfo_20),
    .perfinfo_21(slices_0_perfinfo_21),
    .perfinfo_22(slices_0_perfinfo_22),
    .perfinfo_23(slices_0_perfinfo_23),
    .perfinfo_24(slices_0_perfinfo_24)
  );
  Pipeline train_pipeline ( // @[Pipeline.scala 29:26]
    .clock(train_pipeline_clock),
    .reset(train_pipeline_reset),
    .io_in_ready(train_pipeline_io_in_ready),
    .io_in_valid(train_pipeline_io_in_valid),
    .io_in_bits_tag(train_pipeline_io_in_bits_tag),
    .io_in_bits_set(train_pipeline_io_in_bits_set),
    .io_in_bits_needT(train_pipeline_io_in_bits_needT),
    .io_in_bits_source(train_pipeline_io_in_bits_source),
    .io_out_ready(train_pipeline_io_out_ready),
    .io_out_valid(train_pipeline_io_out_valid),
    .io_out_bits_tag(train_pipeline_io_out_bits_tag),
    .io_out_bits_set(train_pipeline_io_out_bits_set),
    .io_out_bits_needT(train_pipeline_io_out_bits_needT),
    .io_out_bits_source(train_pipeline_io_out_bits_source)
  );
  Pipeline_7 resp_pipeline ( // @[Pipeline.scala 29:26]
    .clock(resp_pipeline_clock),
    .reset(resp_pipeline_reset),
    .io_in_ready(resp_pipeline_io_in_ready),
    .io_in_valid(resp_pipeline_io_in_valid),
    .io_in_bits_tag(resp_pipeline_io_in_bits_tag),
    .io_in_bits_set(resp_pipeline_io_in_bits_set),
    .io_out_ready(resp_pipeline_io_out_ready),
    .io_out_valid(resp_pipeline_io_out_valid),
    .io_out_bits_tag(resp_pipeline_io_out_bits_tag),
    .io_out_bits_set(resp_pipeline_io_out_bits_set)
  );
  Slice slices_1 ( // @[HuanCun.scala 309:43]
    .clock(slices_1_clock),
    .reset(slices_1_reset),
    .io_in_a_ready(slices_1_io_in_a_ready),
    .io_in_a_valid(slices_1_io_in_a_valid),
    .io_in_a_bits_opcode(slices_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_1_io_in_a_bits_param),
    .io_in_a_bits_size(slices_1_io_in_a_bits_size),
    .io_in_a_bits_source(slices_1_io_in_a_bits_source),
    .io_in_a_bits_address(slices_1_io_in_a_bits_address),
    .io_in_a_bits_user_alias(slices_1_io_in_a_bits_user_alias),
    .io_in_a_bits_user_preferCache(slices_1_io_in_a_bits_user_preferCache),
    .io_in_a_bits_user_needHint(slices_1_io_in_a_bits_user_needHint),
    .io_in_a_bits_mask(slices_1_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_1_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_1_io_in_a_bits_corrupt),
    .io_in_bready(slices_1_io_in_bready),
    .io_in_bvalid(slices_1_io_in_bvalid),
    .io_in_bparam(slices_1_io_in_bparam),
    .io_in_bsource(slices_1_io_in_bsource),
    .io_in_baddress(slices_1_io_in_baddress),
    .io_in_bdata(slices_1_io_in_bdata),
    .io_in_c_ready(slices_1_io_in_c_ready),
    .io_in_c_valid(slices_1_io_in_c_valid),
    .io_in_c_bits_opcode(slices_1_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_1_io_in_c_bits_param),
    .io_in_c_bits_size(slices_1_io_in_c_bits_size),
    .io_in_c_bits_source(slices_1_io_in_c_bits_source),
    .io_in_c_bits_address(slices_1_io_in_c_bits_address),
    .io_in_c_bits_echo_blockisdirty(slices_1_io_in_c_bits_echo_blockisdirty),
    .io_in_c_bits_data(slices_1_io_in_c_bits_data),
    .io_in_d_ready(slices_1_io_in_d_ready),
    .io_in_d_valid(slices_1_io_in_d_valid),
    .io_in_d_bits_opcode(slices_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_1_io_in_d_bits_param),
    .io_in_d_bits_size(slices_1_io_in_d_bits_size),
    .io_in_d_bits_source(slices_1_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_1_io_in_d_bits_denied),
    .io_in_d_bits_echo_blockisdirty(slices_1_io_in_d_bits_echo_blockisdirty),
    .io_in_d_bits_data(slices_1_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_1_io_in_d_bits_corrupt),
    .io_in_e_valid(slices_1_io_in_e_valid),
    .io_in_e_bits_sink(slices_1_io_in_e_bits_sink),
    .io_out_a_ready(slices_1_io_out_a_ready),
    .io_out_a_valid(slices_1_io_out_a_valid),
    .io_out_a_bits_opcode(slices_1_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_1_io_out_a_bits_param),
    .io_out_a_bits_size(slices_1_io_out_a_bits_size),
    .io_out_a_bits_source(slices_1_io_out_a_bits_source),
    .io_out_a_bits_address(slices_1_io_out_a_bits_address),
    .io_out_a_bits_user_preferCache(slices_1_io_out_a_bits_user_preferCache),
    .io_out_a_bits_mask(slices_1_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_1_io_out_a_bits_data),
    .io_out_a_bits_corrupt(slices_1_io_out_a_bits_corrupt),
    .io_out_bready(slices_1_io_out_bready),
    .io_out_bvalid(slices_1_io_out_bvalid),
    .io_out_bopcode(slices_1_io_out_bopcode),
    .io_out_bparam(slices_1_io_out_bparam),
    .io_out_bsize(slices_1_io_out_bsize),
    .io_out_bsource(slices_1_io_out_bsource),
    .io_out_baddress(slices_1_io_out_baddress),
    .io_out_bdata(slices_1_io_out_bdata),
    .io_out_c_ready(slices_1_io_out_c_ready),
    .io_out_c_valid(slices_1_io_out_c_valid),
    .io_out_c_bits_opcode(slices_1_io_out_c_bits_opcode),
    .io_out_c_bits_param(slices_1_io_out_c_bits_param),
    .io_out_c_bits_size(slices_1_io_out_c_bits_size),
    .io_out_c_bits_source(slices_1_io_out_c_bits_source),
    .io_out_c_bits_address(slices_1_io_out_c_bits_address),
    .io_out_c_bits_echo_blockisdirty(slices_1_io_out_c_bits_echo_blockisdirty),
    .io_out_c_bits_data(slices_1_io_out_c_bits_data),
    .io_out_d_ready(slices_1_io_out_d_ready),
    .io_out_d_valid(slices_1_io_out_d_valid),
    .io_out_d_bits_opcode(slices_1_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_1_io_out_d_bits_param),
    .io_out_d_bits_size(slices_1_io_out_d_bits_size),
    .io_out_d_bits_source(slices_1_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_1_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_1_io_out_d_bits_denied),
    .io_out_d_bits_echo_blockisdirty(slices_1_io_out_d_bits_echo_blockisdirty),
    .io_out_d_bits_data(slices_1_io_out_d_bits_data),
    .io_out_e_ready(slices_1_io_out_e_ready),
    .io_out_e_valid(slices_1_io_out_e_valid),
    .io_out_e_bits_sink(slices_1_io_out_e_bits_sink),
    .io_prefetch_train_ready(slices_1_io_prefetch_train_ready),
    .io_prefetch_train_valid(slices_1_io_prefetch_train_valid),
    .io_prefetch_train_bits_tag(slices_1_io_prefetch_train_bits_tag),
    .io_prefetch_train_bits_set(slices_1_io_prefetch_train_bits_set),
    .io_prefetch_train_bits_needT(slices_1_io_prefetch_train_bits_needT),
    .io_prefetch_train_bits_source(slices_1_io_prefetch_train_bits_source),
    .io_prefetch_req_ready(slices_1_io_prefetch_req_ready),
    .io_prefetch_req_valid(slices_1_io_prefetch_req_valid),
    .io_prefetch_req_bits_tag(slices_1_io_prefetch_req_bits_tag),
    .io_prefetch_req_bits_set(slices_1_io_prefetch_req_bits_set),
    .io_prefetch_req_bits_needT(slices_1_io_prefetch_req_bits_needT),
    .io_prefetch_req_bits_source(slices_1_io_prefetch_req_bits_source),
    .io_prefetch_resp_ready(slices_1_io_prefetch_resp_ready),
    .io_prefetch_resp_valid(slices_1_io_prefetch_resp_valid),
    .io_prefetch_resp_bits_tag(slices_1_io_prefetch_resp_bits_tag),
    .io_prefetch_resp_bits_set(slices_1_io_prefetch_resp_bits_set),
    .io_ctl_ecc_valid(slices_1_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_1_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_1_io_ctl_ecc_bits_addr),
    .perfinfo_0(slices_1_perfinfo_0),
    .perfinfo_1(slices_1_perfinfo_1),
    .perfinfo_2(slices_1_perfinfo_2),
    .perfinfo_3(slices_1_perfinfo_3),
    .perfinfo_4(slices_1_perfinfo_4),
    .perfinfo_5(slices_1_perfinfo_5),
    .perfinfo_6(slices_1_perfinfo_6),
    .perfinfo_7(slices_1_perfinfo_7),
    .perfinfo_8(slices_1_perfinfo_8),
    .perfinfo_9(slices_1_perfinfo_9),
    .perfinfo_10(slices_1_perfinfo_10),
    .perfinfo_11(slices_1_perfinfo_11),
    .perfinfo_12(slices_1_perfinfo_12),
    .perfinfo_13(slices_1_perfinfo_13),
    .perfinfo_14(slices_1_perfinfo_14),
    .perfinfo_15(slices_1_perfinfo_15),
    .perfinfo_16(slices_1_perfinfo_16),
    .perfinfo_17(slices_1_perfinfo_17),
    .perfinfo_18(slices_1_perfinfo_18),
    .perfinfo_19(slices_1_perfinfo_19),
    .perfinfo_20(slices_1_perfinfo_20),
    .perfinfo_21(slices_1_perfinfo_21),
    .perfinfo_22(slices_1_perfinfo_22),
    .perfinfo_23(slices_1_perfinfo_23),
    .perfinfo_24(slices_1_perfinfo_24)
  );
  Pipeline train_pipeline_1 ( // @[Pipeline.scala 29:26]
    .clock(train_pipeline_1_clock),
    .reset(train_pipeline_1_reset),
    .io_in_ready(train_pipeline_1_io_in_ready),
    .io_in_valid(train_pipeline_1_io_in_valid),
    .io_in_bits_tag(train_pipeline_1_io_in_bits_tag),
    .io_in_bits_set(train_pipeline_1_io_in_bits_set),
    .io_in_bits_needT(train_pipeline_1_io_in_bits_needT),
    .io_in_bits_source(train_pipeline_1_io_in_bits_source),
    .io_out_ready(train_pipeline_1_io_out_ready),
    .io_out_valid(train_pipeline_1_io_out_valid),
    .io_out_bits_tag(train_pipeline_1_io_out_bits_tag),
    .io_out_bits_set(train_pipeline_1_io_out_bits_set),
    .io_out_bits_needT(train_pipeline_1_io_out_bits_needT),
    .io_out_bits_source(train_pipeline_1_io_out_bits_source)
  );
  Pipeline_7 resp_pipeline_1 ( // @[Pipeline.scala 29:26]
    .clock(resp_pipeline_1_clock),
    .reset(resp_pipeline_1_reset),
    .io_in_ready(resp_pipeline_1_io_in_ready),
    .io_in_valid(resp_pipeline_1_io_in_valid),
    .io_in_bits_tag(resp_pipeline_1_io_in_bits_tag),
    .io_in_bits_set(resp_pipeline_1_io_in_bits_set),
    .io_out_ready(resp_pipeline_1_io_out_ready),
    .io_out_valid(resp_pipeline_1_io_out_valid),
    .io_out_bits_tag(resp_pipeline_1_io_out_bits_tag),
    .io_out_bits_set(resp_pipeline_1_io_out_bits_set)
  );
  Arbiter_37 ecc_arb ( // @[HuanCun.scala 348:25]
    .io_in_0_valid(ecc_arb_io_in_0_valid),
    .io_in_0_bits_addr(ecc_arb_io_in_0_bits_addr),
    .io_in_1_ready(ecc_arb_io_in_1_ready),
    .io_in_1_valid(ecc_arb_io_in_1_valid),
    .io_in_1_bits_addr(ecc_arb_io_in_1_bits_addr),
    .io_out_ready(ecc_arb_io_out_ready),
    .io_out_valid(ecc_arb_io_out_valid),
    .io_out_bits_addr(ecc_arb_io_out_bits_addr),
    .io_chosen(ecc_arb_io_chosen)
  );
  Pipeline_15 slices_ecc_ecc_buffer_0 ( // @[Pipeline.scala 29:26]
    .clock(slices_ecc_ecc_buffer_0_clock),
    .reset(slices_ecc_ecc_buffer_0_reset),
    .io_in_valid(slices_ecc_ecc_buffer_0_io_in_valid),
    .io_in_bits_errCode(slices_ecc_ecc_buffer_0_io_in_bits_errCode),
    .io_in_bits_addr(slices_ecc_ecc_buffer_0_io_in_bits_addr),
    .io_out_ready(slices_ecc_ecc_buffer_0_io_out_ready),
    .io_out_valid(slices_ecc_ecc_buffer_0_io_out_valid),
    .io_out_bits_errCode(slices_ecc_ecc_buffer_0_io_out_bits_errCode),
    .io_out_bits_addr(slices_ecc_ecc_buffer_0_io_out_bits_addr)
  );
  Pipeline_15 slices_ecc_ecc_buffer_1 ( // @[Pipeline.scala 29:26]
    .clock(slices_ecc_ecc_buffer_1_clock),
    .reset(slices_ecc_ecc_buffer_1_reset),
    .io_in_valid(slices_ecc_ecc_buffer_1_io_in_valid),
    .io_in_bits_errCode(slices_ecc_ecc_buffer_1_io_in_bits_errCode),
    .io_in_bits_addr(slices_ecc_ecc_buffer_1_io_in_bits_addr),
    .io_out_ready(slices_ecc_ecc_buffer_1_io_out_ready),
    .io_out_valid(slices_ecc_ecc_buffer_1_io_out_valid),
    .io_out_bits_errCode(slices_ecc_ecc_buffer_1_io_out_bits_errCode),
    .io_out_bits_addr(slices_ecc_ecc_buffer_1_io_out_bits_addr)
  );
  assign auto_in_1_a_ready = slices_1_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_bvalid = slices_1_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_bparam = slices_1_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_bsource = slices_1_io_in_bsource; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_baddress = _bundleIn_1_baddress_T[35:0]; // @[Nodes.scala 1210:84 HuanCun.scala 315:27]
  assign auto_in_1_bdata = slices_1_io_in_bdata; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_c_ready = slices_1_io_in_c_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_valid = slices_1_io_in_d_valid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_opcode = slices_1_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_param = slices_1_io_in_d_bits_param; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_size = slices_1_io_in_d_bits_size; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_source = slices_1_io_in_d_bits_source; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_sink = slices_1_io_in_d_bits_sink; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_denied = slices_1_io_in_d_bits_denied; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_echo_blockisdirty = slices_1_io_in_d_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_data = slices_1_io_in_d_bits_data; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_d_bits_corrupt = slices_1_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_a_ready = slices_0_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_bvalid = slices_0_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_bparam = slices_0_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_bsource = slices_0_io_in_bsource; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_baddress = _bundleIn_0_baddress_T[35:0]; // @[Nodes.scala 1210:84 HuanCun.scala 315:27]
  assign auto_in_0_bdata = slices_0_io_in_bdata; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_c_ready = slices_0_io_in_c_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_valid = slices_0_io_in_d_valid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_opcode = slices_0_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_param = slices_0_io_in_d_bits_param; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_size = slices_0_io_in_d_bits_size; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_source = slices_0_io_in_d_bits_source; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_sink = slices_0_io_in_d_bits_sink; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_denied = slices_0_io_in_d_bits_denied; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_echo_blockisdirty = slices_0_io_in_d_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_data = slices_0_io_in_d_bits_data; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_0_d_bits_corrupt = slices_0_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_out_1_a_valid = slices_1_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_opcode = slices_1_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_param = slices_1_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_size = slices_1_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_source = slices_1_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_address = _bundleOut_1_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 317:28]
  assign auto_out_1_a_bits_user_preferCache = slices_1_io_out_a_bits_user_preferCache; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_mask = slices_1_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_data = slices_1_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_corrupt = slices_1_io_out_a_bits_corrupt; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_bready = slices_1_io_out_bready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_valid = slices_1_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_opcode = slices_1_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_param = slices_1_io_out_c_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_size = slices_1_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_source = slices_1_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_address = _bundleOut_1_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
  assign auto_out_1_c_bits_echo_blockisdirty = slices_1_io_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_data = slices_1_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_d_ready = slices_1_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_e_valid = slices_1_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_e_bits_sink = slices_1_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_valid = slices_0_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_opcode = slices_0_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_param = slices_0_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_size = slices_0_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_source = slices_0_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_address = _bundleOut_0_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 317:28]
  assign auto_out_0_a_bits_user_preferCache = slices_0_io_out_a_bits_user_preferCache; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_mask = slices_0_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_data = slices_0_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_corrupt = slices_0_io_out_a_bits_corrupt; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_bready = slices_0_io_out_bready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_valid = slices_0_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_opcode = slices_0_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_param = slices_0_io_out_c_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_size = slices_0_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_source = slices_0_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_address = _bundleOut_0_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
  assign auto_out_0_c_bits_echo_blockisdirty = slices_0_io_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_data = slices_0_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_d_ready = slices_0_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_e_valid = slices_0_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_e_bits_sink = slices_0_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign io_perfEvents_0_0 = slices_0_perfinfo_0; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_1 = slices_0_perfinfo_1; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_2 = slices_0_perfinfo_2; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_3 = slices_0_perfinfo_3; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_4 = slices_0_perfinfo_4; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_5 = slices_0_perfinfo_5; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_6 = slices_0_perfinfo_6; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_7 = slices_0_perfinfo_7; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_8 = slices_0_perfinfo_8; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_9 = slices_0_perfinfo_9; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_10 = slices_0_perfinfo_10; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_11 = slices_0_perfinfo_11; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_12 = slices_0_perfinfo_12; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_13 = slices_0_perfinfo_13; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_14 = slices_0_perfinfo_14; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_15 = slices_0_perfinfo_15; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_16 = slices_0_perfinfo_16; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_17 = slices_0_perfinfo_17; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_18 = slices_0_perfinfo_18; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_19 = slices_0_perfinfo_19; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_20 = slices_0_perfinfo_20; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_21 = slices_0_perfinfo_21; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_22 = slices_0_perfinfo_22; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_23 = slices_0_perfinfo_23; // @[HuanCun.scala 345:26]
  assign io_perfEvents_0_24 = slices_0_perfinfo_24; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_0 = slices_1_perfinfo_0; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_1 = slices_1_perfinfo_1; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_2 = slices_1_perfinfo_2; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_3 = slices_1_perfinfo_3; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_4 = slices_1_perfinfo_4; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_5 = slices_1_perfinfo_5; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_6 = slices_1_perfinfo_6; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_7 = slices_1_perfinfo_7; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_8 = slices_1_perfinfo_8; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_9 = slices_1_perfinfo_9; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_10 = slices_1_perfinfo_10; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_11 = slices_1_perfinfo_11; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_12 = slices_1_perfinfo_12; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_13 = slices_1_perfinfo_13; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_14 = slices_1_perfinfo_14; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_15 = slices_1_perfinfo_15; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_16 = slices_1_perfinfo_16; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_17 = slices_1_perfinfo_17; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_18 = slices_1_perfinfo_18; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_19 = slices_1_perfinfo_19; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_20 = slices_1_perfinfo_20; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_21 = slices_1_perfinfo_21; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_22 = slices_1_perfinfo_22; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_23 = slices_1_perfinfo_23; // @[HuanCun.scala 345:26]
  assign io_perfEvents_1_24 = slices_1_perfinfo_24; // @[HuanCun.scala 345:26]
  assign io_ecc_error_valid = ecc_arb_io_out_ready & ecc_arb_io_out_valid; // @[Decoupled.scala 50:35]
  assign io_ecc_error_bits = _io_ecc_error_bits_T_1[63:0]; // @[HuanCun.scala 354:23]
  assign prefetcher_clock = clock;
  assign prefetcher_reset = reset;
  assign prefetcher_io_train_valid = prefetch_train_arb_io_out_valid; // @[HuanCun.scala 273:11]
  assign prefetcher_io_train_bits_tag = prefetch_train_arb_io_out_bits_tag; // @[HuanCun.scala 273:11]
  assign prefetcher_io_train_bits_set = prefetch_train_arb_io_out_bits_set; // @[HuanCun.scala 273:11]
  assign prefetcher_io_train_bits_needT = prefetch_train_arb_io_out_bits_needT; // @[HuanCun.scala 273:11]
  assign prefetcher_io_train_bits_source = prefetch_train_arb_io_out_bits_source; // @[HuanCun.scala 273:11]
  assign prefetcher_io_req_ready = |_prefetcher_io_req_ready_T; // @[HuanCun.scala 282:63]
  assign prefetcher_io_resp_valid = prefetch_resp_arb_io_out_valid; // @[HuanCun.scala 273:11]
  assign prefetcher_io_resp_bits_tag = prefetch_resp_arb_io_out_bits_tag; // @[HuanCun.scala 273:11]
  assign prefetcher_io_resp_bits_set = prefetch_resp_arb_io_out_bits_set; // @[HuanCun.scala 273:11]
  assign prefetch_train_arb_clock = clock;
  assign prefetch_train_arb_reset = reset;
  assign prefetch_train_arb_io_in_0_valid = train_pipeline_io_out_valid; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_in_0_bits_tag = tag[21:0]; // @[HuanCun.scala 134:9]
  assign prefetch_train_arb_io_in_0_bits_set = set[7:0]; // @[HuanCun.scala 134:34]
  assign prefetch_train_arb_io_in_0_bits_needT = train_pipeline_io_out_bits_needT; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_in_0_bits_source = train_pipeline_io_out_bits_source; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_in_1_valid = train_pipeline_1_io_out_valid; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_in_1_bits_tag = tag_2[21:0]; // @[HuanCun.scala 134:9]
  assign prefetch_train_arb_io_in_1_bits_set = set_2[7:0]; // @[HuanCun.scala 134:34]
  assign prefetch_train_arb_io_in_1_bits_needT = train_pipeline_1_io_out_bits_needT; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_in_1_bits_source = train_pipeline_1_io_out_bits_source; // @[HuanCun.scala 276:51 327:35]
  assign prefetch_train_arb_io_out_ready = prefetcher_io_train_ready; // @[HuanCun.scala 273:11]
  assign prefetch_resp_arb_clock = clock;
  assign prefetch_resp_arb_reset = reset;
  assign prefetch_resp_arb_io_in_0_valid = resp_pipeline_io_out_valid; // @[HuanCun.scala 277:50 328:34]
  assign prefetch_resp_arb_io_in_0_bits_tag = tag_1[21:0]; // @[HuanCun.scala 134:9]
  assign prefetch_resp_arb_io_in_0_bits_set = set_1[7:0]; // @[HuanCun.scala 134:34]
  assign prefetch_resp_arb_io_in_1_valid = resp_pipeline_1_io_out_valid; // @[HuanCun.scala 277:50 328:34]
  assign prefetch_resp_arb_io_in_1_bits_tag = tag_3[21:0]; // @[HuanCun.scala 134:9]
  assign prefetch_resp_arb_io_in_1_bits_set = set_3[7:0]; // @[HuanCun.scala 134:34]
  assign prefetch_resp_arb_io_out_ready = prefetcher_io_resp_ready; // @[HuanCun.scala 273:11]
  assign slices_0_clock = clock;
  assign slices_0_reset = reset; // @[HuanCun.scala 308:22]
  assign slices_0_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_alias = auto_in_0_a_bits_user_alias; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_preferCache = auto_in_0_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_needHint = auto_in_0_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_data = auto_in_0_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_corrupt = auto_in_0_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_bready = auto_in_0_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_valid = auto_in_0_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_d_ready = auto_in_0_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_e_valid = auto_in_0_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_e_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_out_a_ready = auto_out_0_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bvalid = auto_out_0_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bopcode = auto_out_0_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bparam = auto_out_0_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bsize = auto_out_0_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bsource = auto_out_0_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_baddress = auto_out_0_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bdata = auto_out_0_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_c_ready = auto_out_0_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_valid = auto_out_0_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_echo_blockisdirty = auto_out_0_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_data = auto_out_0_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_e_ready = auto_out_0_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_prefetch_train_ready = train_pipeline_io_in_ready; // @[Pipeline.scala 31:20]
  assign slices_0_io_prefetch_req_valid = prefetcher_io_req_valid & _prefetchReqsReady_0_T_1; // @[HuanCun.scala 322:43]
  assign slices_0_io_prefetch_req_bits_tag = prefetcher_io_req_bits_tag; // @[HuanCun.scala 323:24]
  assign slices_0_io_prefetch_req_bits_set = prefetcher_io_req_bits_set; // @[HuanCun.scala 323:24]
  assign slices_0_io_prefetch_req_bits_needT = prefetcher_io_req_bits_needT; // @[HuanCun.scala 323:24]
  assign slices_0_io_prefetch_req_bits_source = prefetcher_io_req_bits_source; // @[HuanCun.scala 323:24]
  assign slices_0_io_prefetch_resp_ready = resp_pipeline_io_in_ready; // @[Pipeline.scala 31:20]
  assign train_pipeline_clock = clock;
  assign train_pipeline_reset = reset;
  assign train_pipeline_io_in_valid = slices_0_io_prefetch_train_valid; // @[Pipeline.scala 31:20]
  assign train_pipeline_io_in_bits_tag = slices_0_io_prefetch_train_bits_tag; // @[Pipeline.scala 31:20]
  assign train_pipeline_io_in_bits_set = slices_0_io_prefetch_train_bits_set; // @[Pipeline.scala 31:20]
  assign train_pipeline_io_in_bits_needT = slices_0_io_prefetch_train_bits_needT; // @[Pipeline.scala 31:20]
  assign train_pipeline_io_in_bits_source = slices_0_io_prefetch_train_bits_source; // @[Pipeline.scala 31:20]
  assign train_pipeline_io_out_ready = prefetch_train_arb_io_in_0_ready; // @[HuanCun.scala 271:13 276:51]
  assign resp_pipeline_clock = clock;
  assign resp_pipeline_reset = reset;
  assign resp_pipeline_io_in_valid = slices_0_io_prefetch_resp_valid; // @[Pipeline.scala 31:20]
  assign resp_pipeline_io_in_bits_tag = slices_0_io_prefetch_resp_bits_tag; // @[Pipeline.scala 31:20]
  assign resp_pipeline_io_in_bits_set = slices_0_io_prefetch_resp_bits_set; // @[Pipeline.scala 31:20]
  assign resp_pipeline_io_out_ready = prefetch_resp_arb_io_in_0_ready; // @[HuanCun.scala 271:13 277:50]
  assign slices_1_clock = clock;
  assign slices_1_reset = reset; // @[HuanCun.scala 308:22]
  assign slices_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_alias = auto_in_1_a_bits_user_alias; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_preferCache = auto_in_1_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_needHint = auto_in_1_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_data = auto_in_1_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_corrupt = auto_in_1_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_bready = auto_in_1_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_valid = auto_in_1_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_echo_blockisdirty = auto_in_1_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_data = auto_in_1_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_d_ready = auto_in_1_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_e_valid = auto_in_1_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_e_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_out_a_ready = auto_out_1_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bvalid = auto_out_1_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bopcode = auto_out_1_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bparam = auto_out_1_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bsize = auto_out_1_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bsource = auto_out_1_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_baddress = auto_out_1_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bdata = auto_out_1_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_c_ready = auto_out_1_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_valid = auto_out_1_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_echo_blockisdirty = auto_out_1_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_data = auto_out_1_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_e_ready = auto_out_1_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_prefetch_train_ready = train_pipeline_1_io_in_ready; // @[Pipeline.scala 31:20]
  assign slices_1_io_prefetch_req_valid = prefetcher_io_req_valid & prefetcher_io_req_bits_set[0]; // @[HuanCun.scala 322:43]
  assign slices_1_io_prefetch_req_bits_tag = prefetcher_io_req_bits_tag; // @[HuanCun.scala 323:24]
  assign slices_1_io_prefetch_req_bits_set = prefetcher_io_req_bits_set; // @[HuanCun.scala 323:24]
  assign slices_1_io_prefetch_req_bits_needT = prefetcher_io_req_bits_needT; // @[HuanCun.scala 323:24]
  assign slices_1_io_prefetch_req_bits_source = prefetcher_io_req_bits_source; // @[HuanCun.scala 323:24]
  assign slices_1_io_prefetch_resp_ready = resp_pipeline_1_io_in_ready; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_clock = clock;
  assign train_pipeline_1_reset = reset;
  assign train_pipeline_1_io_in_valid = slices_1_io_prefetch_train_valid; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_io_in_bits_tag = slices_1_io_prefetch_train_bits_tag; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_io_in_bits_set = slices_1_io_prefetch_train_bits_set; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_io_in_bits_needT = slices_1_io_prefetch_train_bits_needT; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_io_in_bits_source = slices_1_io_prefetch_train_bits_source; // @[Pipeline.scala 31:20]
  assign train_pipeline_1_io_out_ready = prefetch_train_arb_io_in_1_ready; // @[HuanCun.scala 271:13 276:51]
  assign resp_pipeline_1_clock = clock;
  assign resp_pipeline_1_reset = reset;
  assign resp_pipeline_1_io_in_valid = slices_1_io_prefetch_resp_valid; // @[Pipeline.scala 31:20]
  assign resp_pipeline_1_io_in_bits_tag = slices_1_io_prefetch_resp_bits_tag; // @[Pipeline.scala 31:20]
  assign resp_pipeline_1_io_in_bits_set = slices_1_io_prefetch_resp_bits_set; // @[Pipeline.scala 31:20]
  assign resp_pipeline_1_io_out_ready = prefetch_resp_arb_io_in_1_ready; // @[HuanCun.scala 271:13 277:50]
  assign ecc_arb_io_in_0_valid = slices_ecc_ecc_buffer_0_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_0_bits_addr = slices_ecc_ecc_buffer_0_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_1_valid = slices_ecc_ecc_buffer_1_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_1_bits_addr = slices_ecc_ecc_buffer_1_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_out_ready = 1'h1; // @[HuanCun.scala 379:28]
  assign slices_ecc_ecc_buffer_0_clock = clock;
  assign slices_ecc_ecc_buffer_0_reset = reset;
  assign slices_ecc_ecc_buffer_0_io_in_valid = slices_0_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_in_bits_errCode = slices_0_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_in_bits_addr = slices_0_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_out_ready = 1'h1; // @[HuanCun.scala 352:{19,29}]
  assign slices_ecc_ecc_buffer_1_clock = clock;
  assign slices_ecc_ecc_buffer_1_reset = reset;
  assign slices_ecc_ecc_buffer_1_io_in_valid = slices_1_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_in_bits_errCode = slices_1_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_in_bits_addr = slices_1_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_out_ready = ecc_arb_io_in_1_ready; // @[HuanCun.scala 352:{19,29}]
endmodule
