module HuanCun_1(
  input          clock,
  input          reset,
  output         auto_ctrl_unit_core_reset_nodes_out,
  output         auto_ctrl_unit_int_out_0,
  output         auto_ctrl_unit_ctl_in_a_ready,
  input          auto_ctrl_unit_ctl_in_a_valid,
  input  [2:0]   auto_ctrl_unit_ctl_in_a_bits_opcode,
  input  [1:0]   auto_ctrl_unit_ctl_in_a_bits_size,
  input          auto_ctrl_unit_ctl_in_a_bits_source,
  input  [29:0]  auto_ctrl_unit_ctl_in_a_bits_address,
  input  [7:0]   auto_ctrl_unit_ctl_in_a_bits_mask,
  input  [63:0]  auto_ctrl_unit_ctl_in_a_bits_data,
  input          auto_ctrl_unit_ctl_in_d_ready,
  output         auto_ctrl_unit_ctl_in_d_valid,
  output [2:0]   auto_ctrl_unit_ctl_in_d_bits_opcode,
  output [1:0]   auto_ctrl_unit_ctl_in_d_bits_size,
  output         auto_ctrl_unit_ctl_in_d_bits_source,
  output [63:0]  auto_ctrl_unit_ctl_in_d_bits_data,
  output         auto_in_3_a_ready,
  input          auto_in_3_a_valid,
  input  [2:0]   auto_in_3_a_bits_opcode,
  input  [2:0]   auto_in_3_a_bits_param,
  input  [2:0]   auto_in_3_a_bits_size,
  input  [5:0]   auto_in_3_a_bits_source,
  input  [35:0]  auto_in_3_a_bits_address,
  input          auto_in_3_a_bits_user_preferCache,
  input  [31:0]  auto_in_3_a_bits_mask,
  input  [255:0] auto_in_3_a_bits_data,
  input          auto_in_3_a_bits_corrupt,
  input          auto_in_3_bready,
  output         auto_in_3_bvalid,
  output [1:0]   auto_in_3_bparam,
  output [35:0]  auto_in_3_baddress,
  output [255:0] auto_in_3_bdata,
  output         auto_in_3_c_ready,
  input          auto_in_3_c_valid,
  input  [2:0]   auto_in_3_c_bits_opcode,
  input  [2:0]   auto_in_3_c_bits_param,
  input  [2:0]   auto_in_3_c_bits_size,
  input  [5:0]   auto_in_3_c_bits_source,
  input  [35:0]  auto_in_3_c_bits_address,
  input          auto_in_3_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_3_c_bits_data,
  input          auto_in_3_d_ready,
  output         auto_in_3_d_valid,
  output [2:0]   auto_in_3_d_bits_opcode,
  output [1:0]   auto_in_3_d_bits_param,
  output [2:0]   auto_in_3_d_bits_size,
  output [5:0]   auto_in_3_d_bits_source,
  output [3:0]   auto_in_3_d_bits_sink,
  output         auto_in_3_d_bits_denied,
  output         auto_in_3_d_bits_echo_blockisdirty,
  output [255:0] auto_in_3_d_bits_data,
  output         auto_in_3_d_bits_corrupt,
  input          auto_in_3_e_valid,
  input  [3:0]   auto_in_3_e_bits_sink,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_param,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [5:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input          auto_in_2_a_bits_user_preferCache,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  input          auto_in_2_a_bits_corrupt,
  input          auto_in_2_bready,
  output         auto_in_2_bvalid,
  output [1:0]   auto_in_2_bparam,
  output [35:0]  auto_in_2_baddress,
  output [255:0] auto_in_2_bdata,
  output         auto_in_2_c_ready,
  input          auto_in_2_c_valid,
  input  [2:0]   auto_in_2_c_bits_opcode,
  input  [2:0]   auto_in_2_c_bits_param,
  input  [2:0]   auto_in_2_c_bits_size,
  input  [5:0]   auto_in_2_c_bits_source,
  input  [35:0]  auto_in_2_c_bits_address,
  input          auto_in_2_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_2_c_bits_data,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [1:0]   auto_in_2_d_bits_param,
  output [2:0]   auto_in_2_d_bits_size,
  output [5:0]   auto_in_2_d_bits_source,
  output [3:0]   auto_in_2_d_bits_sink,
  output         auto_in_2_d_bits_denied,
  output         auto_in_2_d_bits_echo_blockisdirty,
  output [255:0] auto_in_2_d_bits_data,
  output         auto_in_2_d_bits_corrupt,
  input          auto_in_2_e_valid,
  input  [3:0]   auto_in_2_e_bits_sink,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [5:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input          auto_in_1_a_bits_user_preferCache,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [1:0]   auto_in_1_bparam,
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
  input          auto_in_0_a_bits_user_preferCache,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [1:0]   auto_in_0_bparam,
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
  input          auto_out_3_a_ready,
  output         auto_out_3_a_valid,
  output [2:0]   auto_out_3_a_bits_opcode,
  output [2:0]   auto_out_3_a_bits_param,
  output [2:0]   auto_out_3_a_bits_size,
  output [3:0]   auto_out_3_a_bits_source,
  output [35:0]  auto_out_3_a_bits_address,
  output [31:0]  auto_out_3_a_bits_mask,
  output [255:0] auto_out_3_a_bits_data,
  input          auto_out_3_c_ready,
  output         auto_out_3_c_valid,
  output [2:0]   auto_out_3_c_bits_opcode,
  output [2:0]   auto_out_3_c_bits_size,
  output [3:0]   auto_out_3_c_bits_source,
  output [35:0]  auto_out_3_c_bits_address,
  output [255:0] auto_out_3_c_bits_data,
  output         auto_out_3_d_ready,
  input          auto_out_3_d_valid,
  input  [2:0]   auto_out_3_d_bits_opcode,
  input  [1:0]   auto_out_3_d_bits_param,
  input  [2:0]   auto_out_3_d_bits_size,
  input  [3:0]   auto_out_3_d_bits_source,
  input  [2:0]   auto_out_3_d_bits_sink,
  input          auto_out_3_d_bits_denied,
  input  [255:0] auto_out_3_d_bits_data,
  output         auto_out_3_e_valid,
  output [2:0]   auto_out_3_e_bits_sink,
  input          auto_out_2_a_ready,
  output         auto_out_2_a_valid,
  output [2:0]   auto_out_2_a_bits_opcode,
  output [2:0]   auto_out_2_a_bits_param,
  output [2:0]   auto_out_2_a_bits_size,
  output [3:0]   auto_out_2_a_bits_source,
  output [35:0]  auto_out_2_a_bits_address,
  output [31:0]  auto_out_2_a_bits_mask,
  output [255:0] auto_out_2_a_bits_data,
  input          auto_out_2_c_ready,
  output         auto_out_2_c_valid,
  output [2:0]   auto_out_2_c_bits_opcode,
  output [2:0]   auto_out_2_c_bits_size,
  output [3:0]   auto_out_2_c_bits_source,
  output [35:0]  auto_out_2_c_bits_address,
  output [255:0] auto_out_2_c_bits_data,
  output         auto_out_2_d_ready,
  input          auto_out_2_d_valid,
  input  [2:0]   auto_out_2_d_bits_opcode,
  input  [1:0]   auto_out_2_d_bits_param,
  input  [2:0]   auto_out_2_d_bits_size,
  input  [3:0]   auto_out_2_d_bits_source,
  input  [2:0]   auto_out_2_d_bits_sink,
  input          auto_out_2_d_bits_denied,
  input  [255:0] auto_out_2_d_bits_data,
  output         auto_out_2_e_valid,
  output [2:0]   auto_out_2_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [3:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_size,
  output [3:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [3:0]   auto_out_1_d_bits_source,
  input  [2:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input  [255:0] auto_out_1_d_bits_data,
  output         auto_out_1_e_valid,
  output [2:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [3:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_size,
  output [3:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [3:0]   auto_out_0_d_bits_source,
  input  [2:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input  [255:0] auto_out_0_d_bits_data,
  output         auto_out_0_e_valid,
  output [2:0]   auto_out_0_e_bits_sink,
  output [63:0]  io_ecc_error_bits
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
`endif // RANDOMIZE_REG_INIT
  wire  ctrl_unit_clock; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_reset; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_core_reset_nodes_out; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_int_out_0; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_a_ready; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_a_valid; // @[HuanCun.scala 222:55]
  wire [2:0] ctrl_unit_auto_ctl_in_a_bits_opcode; // @[HuanCun.scala 222:55]
  wire [1:0] ctrl_unit_auto_ctl_in_a_bits_size; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_a_bits_source; // @[HuanCun.scala 222:55]
  wire [29:0] ctrl_unit_auto_ctl_in_a_bits_address; // @[HuanCun.scala 222:55]
  wire [7:0] ctrl_unit_auto_ctl_in_a_bits_mask; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_auto_ctl_in_a_bits_data; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_d_ready; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_d_valid; // @[HuanCun.scala 222:55]
  wire [2:0] ctrl_unit_auto_ctl_in_d_bits_opcode; // @[HuanCun.scala 222:55]
  wire [1:0] ctrl_unit_auto_ctl_in_d_bits_size; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_auto_ctl_in_d_bits_source; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_auto_ctl_in_d_bits_data; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_req_ready; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_req_valid; // @[HuanCun.scala 222:55]
  wire [7:0] ctrl_unit_io_req_bits_cmd; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_0; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_1; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_2; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_3; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_4; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_5; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_6; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_data_7; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_set; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_tag; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_way; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_req_bits_dir; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_resp_ready; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_resp_valid; // @[HuanCun.scala 222:55]
  wire [7:0] ctrl_unit_io_resp_bits_cmd; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_0; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_1; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_2; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_3; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_4; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_5; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_6; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_resp_bits_data_7; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_ecc_ready; // @[HuanCun.scala 222:55]
  wire  ctrl_unit_io_ecc_valid; // @[HuanCun.scala 222:55]
  wire [7:0] ctrl_unit_io_ecc_bits_errCode; // @[HuanCun.scala 222:55]
  wire [63:0] ctrl_unit_io_ecc_bits_addr; // @[HuanCun.scala 222:55]
  wire  slices_0_clock; // @[HuanCun.scala 309:43]
  wire  slices_0_reset; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_0_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_0_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_in_bparam; // @[HuanCun.scala 309:43]
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
  wire [31:0] slices_0_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_0_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_0_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_0_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire [255:0] slices_0_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_0_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_0_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_req_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_ctl_req_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_data_7; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_set; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_way; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_req_bits_dir; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_resp_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_ctl_resp_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_resp_bits_data_7; // @[HuanCun.scala 309:43]
  wire  slices_0_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_0_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_0_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire  slices_1_clock; // @[HuanCun.scala 309:43]
  wire  slices_1_reset; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_1_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_1_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_in_bparam; // @[HuanCun.scala 309:43]
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
  wire [31:0] slices_1_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_1_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_1_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_1_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire [255:0] slices_1_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_1_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_1_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_req_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_ctl_req_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_data_7; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_set; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_way; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_req_bits_dir; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_resp_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_ctl_resp_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_resp_bits_data_7; // @[HuanCun.scala 309:43]
  wire  slices_1_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_1_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_1_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire  slices_2_clock; // @[HuanCun.scala 309:43]
  wire  slices_2_reset; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_2_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_2_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_2_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_2_io_in_bparam; // @[HuanCun.scala 309:43]
  wire [35:0] slices_2_io_in_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_in_bdata; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_c_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_2_io_in_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_2_io_in_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_in_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_2_io_in_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_in_d_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_2_io_in_d_bits_source; // @[HuanCun.scala 309:43]
  wire [3:0] slices_2_io_in_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_in_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_d_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_2_io_in_e_valid; // @[HuanCun.scala 309:43]
  wire [3:0] slices_2_io_in_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_a_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_2_io_out_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_2_io_out_a_bits_address; // @[HuanCun.scala 309:43]
  wire [31:0] slices_2_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_2_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_2_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_2_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_2_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire [255:0] slices_2_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_2_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_2_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_2_io_ctl_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_ctl_req_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_2_io_ctl_req_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_data_7; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_set; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_way; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_req_bits_dir; // @[HuanCun.scala 309:43]
  wire  slices_2_io_ctl_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_2_io_ctl_resp_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_2_io_ctl_resp_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_resp_bits_data_7; // @[HuanCun.scala 309:43]
  wire  slices_2_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_2_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_2_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire  slices_3_clock; // @[HuanCun.scala 309:43]
  wire  slices_3_reset; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_a_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_3_io_in_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_3_io_in_a_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_a_bits_user_preferCache; // @[HuanCun.scala 309:43]
  wire [31:0] slices_3_io_in_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_in_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_a_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_bready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_bvalid; // @[HuanCun.scala 309:43]
  wire [1:0] slices_3_io_in_bparam; // @[HuanCun.scala 309:43]
  wire [35:0] slices_3_io_in_baddress; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_in_bdata; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_c_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_c_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_3_io_in_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_3_io_in_c_bits_address; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_c_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_in_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_3_io_in_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_in_d_bits_size; // @[HuanCun.scala 309:43]
  wire [5:0] slices_3_io_in_d_bits_source; // @[HuanCun.scala 309:43]
  wire [3:0] slices_3_io_in_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_d_bits_denied; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_d_bits_echo_blockisdirty; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_in_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_d_bits_corrupt; // @[HuanCun.scala 309:43]
  wire  slices_3_io_in_e_valid; // @[HuanCun.scala 309:43]
  wire [3:0] slices_3_io_in_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_a_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_a_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_a_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_a_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_a_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_3_io_out_a_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_3_io_out_a_bits_address; // @[HuanCun.scala 309:43]
  wire [31:0] slices_3_io_out_a_bits_mask; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_out_a_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_c_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_c_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_c_bits_opcode; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_c_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_3_io_out_c_bits_source; // @[HuanCun.scala 309:43]
  wire [35:0] slices_3_io_out_c_bits_address; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_out_c_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_d_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_d_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_d_bits_opcode; // @[HuanCun.scala 309:43]
  wire [1:0] slices_3_io_out_d_bits_param; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_d_bits_size; // @[HuanCun.scala 309:43]
  wire [3:0] slices_3_io_out_d_bits_source; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_d_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_d_bits_denied; // @[HuanCun.scala 309:43]
  wire [255:0] slices_3_io_out_d_bits_data; // @[HuanCun.scala 309:43]
  wire  slices_3_io_out_e_valid; // @[HuanCun.scala 309:43]
  wire [2:0] slices_3_io_out_e_bits_sink; // @[HuanCun.scala 309:43]
  wire  slices_3_io_ctl_req_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_ctl_req_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_3_io_ctl_req_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_data_7; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_set; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_tag; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_way; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_req_bits_dir; // @[HuanCun.scala 309:43]
  wire  slices_3_io_ctl_resp_ready; // @[HuanCun.scala 309:43]
  wire  slices_3_io_ctl_resp_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_3_io_ctl_resp_bits_cmd; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_0; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_1; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_2; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_3; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_4; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_5; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_6; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_resp_bits_data_7; // @[HuanCun.scala 309:43]
  wire  slices_3_io_ctl_ecc_valid; // @[HuanCun.scala 309:43]
  wire [7:0] slices_3_io_ctl_ecc_bits_errCode; // @[HuanCun.scala 309:43]
  wire [63:0] slices_3_io_ctl_ecc_bits_addr; // @[HuanCun.scala 309:43]
  wire  ecc_arb_io_in_0_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_0_valid; // @[HuanCun.scala 348:25]
  wire [7:0] ecc_arb_io_in_0_bits_errCode; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_0_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_1_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_1_valid; // @[HuanCun.scala 348:25]
  wire [7:0] ecc_arb_io_in_1_bits_errCode; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_1_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_2_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_2_valid; // @[HuanCun.scala 348:25]
  wire [7:0] ecc_arb_io_in_2_bits_errCode; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_2_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_3_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_in_3_valid; // @[HuanCun.scala 348:25]
  wire [7:0] ecc_arb_io_in_3_bits_errCode; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_in_3_bits_addr; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_out_ready; // @[HuanCun.scala 348:25]
  wire  ecc_arb_io_out_valid; // @[HuanCun.scala 348:25]
  wire [7:0] ecc_arb_io_out_bits_errCode; // @[HuanCun.scala 348:25]
  wire [63:0] ecc_arb_io_out_bits_addr; // @[HuanCun.scala 348:25]
  wire [1:0] ecc_arb_io_chosen; // @[HuanCun.scala 348:25]
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
  wire  slices_ecc_ecc_buffer_2_clock; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_2_reset; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_2_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_2_io_in_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_2_io_in_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_2_io_out_ready; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_2_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_2_io_out_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_2_io_out_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_3_clock; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_3_reset; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_3_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_3_io_in_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_3_io_in_bits_addr; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_3_io_out_ready; // @[Pipeline.scala 29:26]
  wire  slices_ecc_ecc_buffer_3_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] slices_ecc_ecc_buffer_3_io_out_bits_errCode; // @[Pipeline.scala 29:26]
  wire [63:0] slices_ecc_ecc_buffer_3_io_out_bits_addr; // @[Pipeline.scala 29:26]
  wire  ctl_reqs_req_buffer_0_clock; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_0_reset; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_0_io_in_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_0_io_in_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_0_io_in_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_in_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_0_io_out_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_0_io_out_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_0_io_out_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_0_io_out_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_clock; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_reset; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_io_in_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_io_in_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_1_io_in_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_in_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_io_out_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_1_io_out_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_1_io_out_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_1_io_out_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_clock; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_reset; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_io_in_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_io_in_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_2_io_in_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_in_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_io_out_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_2_io_out_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_2_io_out_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_2_io_out_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_clock; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_reset; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_io_in_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_io_in_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_3_io_in_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_in_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_io_out_ready; // @[Pipeline.scala 23:26]
  wire  ctl_reqs_req_buffer_3_io_out_valid; // @[Pipeline.scala 23:26]
  wire [7:0] ctl_reqs_req_buffer_3_io_out_bits_cmd; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_0; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_1; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_2; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_3; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_4; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_5; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_6; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_data_7; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_set; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_tag; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_way; // @[Pipeline.scala 23:26]
  wire [63:0] ctl_reqs_req_buffer_3_io_out_bits_dir; // @[Pipeline.scala 23:26]
  wire  ctl_resps_resp_buffer_0_clock; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_0_reset; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_0_io_in_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_0_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_0_io_in_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_in_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_0_io_out_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_0_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_0_io_out_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_0_io_out_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_clock; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_reset; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_io_in_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_1_io_in_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_in_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_io_out_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_1_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_1_io_out_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_1_io_out_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_clock; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_reset; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_io_in_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_2_io_in_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_in_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_io_out_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_2_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_2_io_out_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_2_io_out_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_clock; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_reset; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_io_in_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_io_in_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_3_io_in_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_in_bits_data_7; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_io_out_ready; // @[Pipeline.scala 29:26]
  wire  ctl_resps_resp_buffer_3_io_out_valid; // @[Pipeline.scala 29:26]
  wire [7:0] ctl_resps_resp_buffer_3_io_out_bits_cmd; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_0; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_1; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_2; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_3; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_4; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_5; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_6; // @[Pipeline.scala 29:26]
  wire [63:0] ctl_resps_resp_buffer_3_io_out_bits_data_7; // @[Pipeline.scala 29:26]
  wire  arb_io_in_0_ready; // @[HuanCun.scala 369:23]
  wire  arb_io_in_0_valid; // @[HuanCun.scala 369:23]
  wire [7:0] arb_io_in_0_bits_cmd; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_0; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_1; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_2; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_3; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_4; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_5; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_6; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_0_bits_data_7; // @[HuanCun.scala 369:23]
  wire  arb_io_in_1_ready; // @[HuanCun.scala 369:23]
  wire  arb_io_in_1_valid; // @[HuanCun.scala 369:23]
  wire [7:0] arb_io_in_1_bits_cmd; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_0; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_1; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_2; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_3; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_4; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_5; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_6; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_1_bits_data_7; // @[HuanCun.scala 369:23]
  wire  arb_io_in_2_ready; // @[HuanCun.scala 369:23]
  wire  arb_io_in_2_valid; // @[HuanCun.scala 369:23]
  wire [7:0] arb_io_in_2_bits_cmd; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_0; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_1; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_2; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_3; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_4; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_5; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_6; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_2_bits_data_7; // @[HuanCun.scala 369:23]
  wire  arb_io_in_3_ready; // @[HuanCun.scala 369:23]
  wire  arb_io_in_3_valid; // @[HuanCun.scala 369:23]
  wire [7:0] arb_io_in_3_bits_cmd; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_0; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_1; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_2; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_3; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_4; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_5; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_6; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_in_3_bits_data_7; // @[HuanCun.scala 369:23]
  wire  arb_io_out_ready; // @[HuanCun.scala 369:23]
  wire  arb_io_out_valid; // @[HuanCun.scala 369:23]
  wire [7:0] arb_io_out_bits_cmd; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_0; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_1; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_2; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_3; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_4; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_5; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_6; // @[HuanCun.scala 369:23]
  wire [63:0] arb_io_out_bits_data_7; // @[HuanCun.scala 369:23]
  reg  rst_REG; // @[HuanCun.scala 307:26]
  reg  rst; // @[HuanCun.scala 307:18]
  wire [29:0] bundleIn_0_baddress_high = slices_0_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_0_baddress_low = slices_0_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleIn_0_baddress_T = {bundleIn_0_baddress_high,2'h0,bundleIn_0_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_a_bits_address_high = slices_0_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_0_a_bits_address_low = slices_0_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_0_a_bits_address_T = {bundleOut_0_a_bits_address_high,2'h0,bundleOut_0_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_c_bits_address_high = slices_0_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_0_c_bits_address_low = slices_0_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_0_c_bits_address_T = {bundleOut_0_c_bits_address_high,2'h0,bundleOut_0_c_bits_address_low}; // @[Cat.scala 31:58]
  reg  rst_REG_1; // @[HuanCun.scala 307:26]
  reg  rst_1; // @[HuanCun.scala 307:18]
  wire [29:0] bundleIn_1_baddress_high = slices_1_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_1_baddress_low = slices_1_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleIn_1_baddress_T = {bundleIn_1_baddress_high,2'h1,bundleIn_1_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_a_bits_address_high = slices_1_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_1_a_bits_address_low = slices_1_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_1_a_bits_address_T = {bundleOut_1_a_bits_address_high,2'h1,bundleOut_1_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_c_bits_address_high = slices_1_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_1_c_bits_address_low = slices_1_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_1_c_bits_address_T = {bundleOut_1_c_bits_address_high,2'h1,bundleOut_1_c_bits_address_low}; // @[Cat.scala 31:58]
  reg  rst_REG_2; // @[HuanCun.scala 307:26]
  reg  rst_2; // @[HuanCun.scala 307:18]
  wire [29:0] bundleIn_2_baddress_high = slices_2_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_2_baddress_low = slices_2_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleIn_2_baddress_T = {bundleIn_2_baddress_high,2'h2,bundleIn_2_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_2_a_bits_address_high = slices_2_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_2_a_bits_address_low = slices_2_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_2_a_bits_address_T = {bundleOut_2_a_bits_address_high,2'h2,bundleOut_2_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_2_c_bits_address_high = slices_2_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_2_c_bits_address_low = slices_2_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_2_c_bits_address_T = {bundleOut_2_c_bits_address_high,2'h2,bundleOut_2_c_bits_address_low}; // @[Cat.scala 31:58]
  reg  rst_REG_3; // @[HuanCun.scala 307:26]
  reg  rst_3; // @[HuanCun.scala 307:18]
  wire [29:0] bundleIn_3_baddress_high = slices_3_io_in_baddress[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleIn_3_baddress_low = slices_3_io_in_baddress[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleIn_3_baddress_T = {bundleIn_3_baddress_high,2'h3,bundleIn_3_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_3_a_bits_address_high = slices_3_io_out_a_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_3_a_bits_address_low = slices_3_io_out_a_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_3_a_bits_address_T = {bundleOut_3_a_bits_address_high,2'h3,bundleOut_3_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_3_c_bits_address_high = slices_3_io_out_c_bits_address[35:6]; // @[HuanCun.scala 297:22]
  wire [5:0] bundleOut_3_c_bits_address_low = slices_3_io_out_c_bits_address[5:0]; // @[HuanCun.scala 298:20]
  wire [37:0] _bundleOut_3_c_bits_address_T = {bundleOut_3_c_bits_address_high,2'h3,bundleOut_3_c_bits_address_low}; // @[Cat.scala 31:58]
  wire [57:0] io_ecc_error_bits_high = ecc_arb_io_out_bits_addr[63:6]; // @[HuanCun.scala 297:22]
  wire [5:0] io_ecc_error_bits_low = ecc_arb_io_out_bits_addr[5:0]; // @[HuanCun.scala 298:20]
  wire [1:0] _io_ecc_error_bits_T = ecc_arb_io_chosen; // @[HuanCun.scala 299:22]
  wire [65:0] _io_ecc_error_bits_T_1 = {io_ecc_error_bits_high,_io_ecc_error_bits_T,io_ecc_error_bits_low}; // @[Cat.scala 31:58]
  wire  bank_match_0 = ctrl_unit_io_req_bits_set[1:0] == 2'h0; // @[HuanCun.scala 287:58]
  wire  bank_match_1 = ctrl_unit_io_req_bits_set[1:0] == 2'h1; // @[HuanCun.scala 287:58]
  wire  bank_match_2 = ctrl_unit_io_req_bits_set[1:0] == 2'h2; // @[HuanCun.scala 287:58]
  wire  bank_match_3 = ctrl_unit_io_req_bits_set[1:0] == 2'h3; // @[HuanCun.scala 287:58]
  CtrlUnit ctrl_unit ( // @[HuanCun.scala 222:55]
    .clock(ctrl_unit_clock),
    .reset(ctrl_unit_reset),
    .auto_core_reset_nodes_out(ctrl_unit_auto_core_reset_nodes_out),
    .auto_int_out_0(ctrl_unit_auto_int_out_0),
    .auto_ctl_in_a_ready(ctrl_unit_auto_ctl_in_a_ready),
    .auto_ctl_in_a_valid(ctrl_unit_auto_ctl_in_a_valid),
    .auto_ctl_in_a_bits_opcode(ctrl_unit_auto_ctl_in_a_bits_opcode),
    .auto_ctl_in_a_bits_size(ctrl_unit_auto_ctl_in_a_bits_size),
    .auto_ctl_in_a_bits_source(ctrl_unit_auto_ctl_in_a_bits_source),
    .auto_ctl_in_a_bits_address(ctrl_unit_auto_ctl_in_a_bits_address),
    .auto_ctl_in_a_bits_mask(ctrl_unit_auto_ctl_in_a_bits_mask),
    .auto_ctl_in_a_bits_data(ctrl_unit_auto_ctl_in_a_bits_data),
    .auto_ctl_in_d_ready(ctrl_unit_auto_ctl_in_d_ready),
    .auto_ctl_in_d_valid(ctrl_unit_auto_ctl_in_d_valid),
    .auto_ctl_in_d_bits_opcode(ctrl_unit_auto_ctl_in_d_bits_opcode),
    .auto_ctl_in_d_bits_size(ctrl_unit_auto_ctl_in_d_bits_size),
    .auto_ctl_in_d_bits_source(ctrl_unit_auto_ctl_in_d_bits_source),
    .auto_ctl_in_d_bits_data(ctrl_unit_auto_ctl_in_d_bits_data),
    .io_req_ready(ctrl_unit_io_req_ready),
    .io_req_valid(ctrl_unit_io_req_valid),
    .io_req_bits_cmd(ctrl_unit_io_req_bits_cmd),
    .io_req_bits_data_0(ctrl_unit_io_req_bits_data_0),
    .io_req_bits_data_1(ctrl_unit_io_req_bits_data_1),
    .io_req_bits_data_2(ctrl_unit_io_req_bits_data_2),
    .io_req_bits_data_3(ctrl_unit_io_req_bits_data_3),
    .io_req_bits_data_4(ctrl_unit_io_req_bits_data_4),
    .io_req_bits_data_5(ctrl_unit_io_req_bits_data_5),
    .io_req_bits_data_6(ctrl_unit_io_req_bits_data_6),
    .io_req_bits_data_7(ctrl_unit_io_req_bits_data_7),
    .io_req_bits_set(ctrl_unit_io_req_bits_set),
    .io_req_bits_tag(ctrl_unit_io_req_bits_tag),
    .io_req_bits_way(ctrl_unit_io_req_bits_way),
    .io_req_bits_dir(ctrl_unit_io_req_bits_dir),
    .io_resp_ready(ctrl_unit_io_resp_ready),
    .io_resp_valid(ctrl_unit_io_resp_valid),
    .io_resp_bits_cmd(ctrl_unit_io_resp_bits_cmd),
    .io_resp_bits_data_0(ctrl_unit_io_resp_bits_data_0),
    .io_resp_bits_data_1(ctrl_unit_io_resp_bits_data_1),
    .io_resp_bits_data_2(ctrl_unit_io_resp_bits_data_2),
    .io_resp_bits_data_3(ctrl_unit_io_resp_bits_data_3),
    .io_resp_bits_data_4(ctrl_unit_io_resp_bits_data_4),
    .io_resp_bits_data_5(ctrl_unit_io_resp_bits_data_5),
    .io_resp_bits_data_6(ctrl_unit_io_resp_bits_data_6),
    .io_resp_bits_data_7(ctrl_unit_io_resp_bits_data_7),
    .io_ecc_ready(ctrl_unit_io_ecc_ready),
    .io_ecc_valid(ctrl_unit_io_ecc_valid),
    .io_ecc_bits_errCode(ctrl_unit_io_ecc_bits_errCode),
    .io_ecc_bits_addr(ctrl_unit_io_ecc_bits_addr)
  );
  Slice_2 slices_0 ( // @[HuanCun.scala 309:43]
    .clock(slices_0_clock),
    .reset(slices_0_reset),
    .io_in_a_ready(slices_0_io_in_a_ready),
    .io_in_a_valid(slices_0_io_in_a_valid),
    .io_in_a_bits_opcode(slices_0_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_0_io_in_a_bits_param),
    .io_in_a_bits_size(slices_0_io_in_a_bits_size),
    .io_in_a_bits_source(slices_0_io_in_a_bits_source),
    .io_in_a_bits_address(slices_0_io_in_a_bits_address),
    .io_in_a_bits_user_preferCache(slices_0_io_in_a_bits_user_preferCache),
    .io_in_a_bits_mask(slices_0_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_0_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_0_io_in_a_bits_corrupt),
    .io_in_bready(slices_0_io_in_bready),
    .io_in_bvalid(slices_0_io_in_bvalid),
    .io_in_bparam(slices_0_io_in_bparam),
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
    .io_out_a_bits_mask(slices_0_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_0_io_out_a_bits_data),
    .io_out_c_ready(slices_0_io_out_c_ready),
    .io_out_c_valid(slices_0_io_out_c_valid),
    .io_out_c_bits_opcode(slices_0_io_out_c_bits_opcode),
    .io_out_c_bits_size(slices_0_io_out_c_bits_size),
    .io_out_c_bits_source(slices_0_io_out_c_bits_source),
    .io_out_c_bits_address(slices_0_io_out_c_bits_address),
    .io_out_c_bits_data(slices_0_io_out_c_bits_data),
    .io_out_d_ready(slices_0_io_out_d_ready),
    .io_out_d_valid(slices_0_io_out_d_valid),
    .io_out_d_bits_opcode(slices_0_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_0_io_out_d_bits_param),
    .io_out_d_bits_size(slices_0_io_out_d_bits_size),
    .io_out_d_bits_source(slices_0_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_0_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_0_io_out_d_bits_denied),
    .io_out_d_bits_data(slices_0_io_out_d_bits_data),
    .io_out_e_valid(slices_0_io_out_e_valid),
    .io_out_e_bits_sink(slices_0_io_out_e_bits_sink),
    .io_ctl_req_ready(slices_0_io_ctl_req_ready),
    .io_ctl_req_valid(slices_0_io_ctl_req_valid),
    .io_ctl_req_bits_cmd(slices_0_io_ctl_req_bits_cmd),
    .io_ctl_req_bits_data_0(slices_0_io_ctl_req_bits_data_0),
    .io_ctl_req_bits_data_1(slices_0_io_ctl_req_bits_data_1),
    .io_ctl_req_bits_data_2(slices_0_io_ctl_req_bits_data_2),
    .io_ctl_req_bits_data_3(slices_0_io_ctl_req_bits_data_3),
    .io_ctl_req_bits_data_4(slices_0_io_ctl_req_bits_data_4),
    .io_ctl_req_bits_data_5(slices_0_io_ctl_req_bits_data_5),
    .io_ctl_req_bits_data_6(slices_0_io_ctl_req_bits_data_6),
    .io_ctl_req_bits_data_7(slices_0_io_ctl_req_bits_data_7),
    .io_ctl_req_bits_set(slices_0_io_ctl_req_bits_set),
    .io_ctl_req_bits_tag(slices_0_io_ctl_req_bits_tag),
    .io_ctl_req_bits_way(slices_0_io_ctl_req_bits_way),
    .io_ctl_req_bits_dir(slices_0_io_ctl_req_bits_dir),
    .io_ctl_resp_ready(slices_0_io_ctl_resp_ready),
    .io_ctl_resp_valid(slices_0_io_ctl_resp_valid),
    .io_ctl_resp_bits_cmd(slices_0_io_ctl_resp_bits_cmd),
    .io_ctl_resp_bits_data_0(slices_0_io_ctl_resp_bits_data_0),
    .io_ctl_resp_bits_data_1(slices_0_io_ctl_resp_bits_data_1),
    .io_ctl_resp_bits_data_2(slices_0_io_ctl_resp_bits_data_2),
    .io_ctl_resp_bits_data_3(slices_0_io_ctl_resp_bits_data_3),
    .io_ctl_resp_bits_data_4(slices_0_io_ctl_resp_bits_data_4),
    .io_ctl_resp_bits_data_5(slices_0_io_ctl_resp_bits_data_5),
    .io_ctl_resp_bits_data_6(slices_0_io_ctl_resp_bits_data_6),
    .io_ctl_resp_bits_data_7(slices_0_io_ctl_resp_bits_data_7),
    .io_ctl_ecc_valid(slices_0_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_0_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_0_io_ctl_ecc_bits_addr)
  );
  Slice_2 slices_1 ( // @[HuanCun.scala 309:43]
    .clock(slices_1_clock),
    .reset(slices_1_reset),
    .io_in_a_ready(slices_1_io_in_a_ready),
    .io_in_a_valid(slices_1_io_in_a_valid),
    .io_in_a_bits_opcode(slices_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_1_io_in_a_bits_param),
    .io_in_a_bits_size(slices_1_io_in_a_bits_size),
    .io_in_a_bits_source(slices_1_io_in_a_bits_source),
    .io_in_a_bits_address(slices_1_io_in_a_bits_address),
    .io_in_a_bits_user_preferCache(slices_1_io_in_a_bits_user_preferCache),
    .io_in_a_bits_mask(slices_1_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_1_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_1_io_in_a_bits_corrupt),
    .io_in_bready(slices_1_io_in_bready),
    .io_in_bvalid(slices_1_io_in_bvalid),
    .io_in_bparam(slices_1_io_in_bparam),
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
    .io_out_a_bits_mask(slices_1_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_1_io_out_a_bits_data),
    .io_out_c_ready(slices_1_io_out_c_ready),
    .io_out_c_valid(slices_1_io_out_c_valid),
    .io_out_c_bits_opcode(slices_1_io_out_c_bits_opcode),
    .io_out_c_bits_size(slices_1_io_out_c_bits_size),
    .io_out_c_bits_source(slices_1_io_out_c_bits_source),
    .io_out_c_bits_address(slices_1_io_out_c_bits_address),
    .io_out_c_bits_data(slices_1_io_out_c_bits_data),
    .io_out_d_ready(slices_1_io_out_d_ready),
    .io_out_d_valid(slices_1_io_out_d_valid),
    .io_out_d_bits_opcode(slices_1_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_1_io_out_d_bits_param),
    .io_out_d_bits_size(slices_1_io_out_d_bits_size),
    .io_out_d_bits_source(slices_1_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_1_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_1_io_out_d_bits_denied),
    .io_out_d_bits_data(slices_1_io_out_d_bits_data),
    .io_out_e_valid(slices_1_io_out_e_valid),
    .io_out_e_bits_sink(slices_1_io_out_e_bits_sink),
    .io_ctl_req_ready(slices_1_io_ctl_req_ready),
    .io_ctl_req_valid(slices_1_io_ctl_req_valid),
    .io_ctl_req_bits_cmd(slices_1_io_ctl_req_bits_cmd),
    .io_ctl_req_bits_data_0(slices_1_io_ctl_req_bits_data_0),
    .io_ctl_req_bits_data_1(slices_1_io_ctl_req_bits_data_1),
    .io_ctl_req_bits_data_2(slices_1_io_ctl_req_bits_data_2),
    .io_ctl_req_bits_data_3(slices_1_io_ctl_req_bits_data_3),
    .io_ctl_req_bits_data_4(slices_1_io_ctl_req_bits_data_4),
    .io_ctl_req_bits_data_5(slices_1_io_ctl_req_bits_data_5),
    .io_ctl_req_bits_data_6(slices_1_io_ctl_req_bits_data_6),
    .io_ctl_req_bits_data_7(slices_1_io_ctl_req_bits_data_7),
    .io_ctl_req_bits_set(slices_1_io_ctl_req_bits_set),
    .io_ctl_req_bits_tag(slices_1_io_ctl_req_bits_tag),
    .io_ctl_req_bits_way(slices_1_io_ctl_req_bits_way),
    .io_ctl_req_bits_dir(slices_1_io_ctl_req_bits_dir),
    .io_ctl_resp_ready(slices_1_io_ctl_resp_ready),
    .io_ctl_resp_valid(slices_1_io_ctl_resp_valid),
    .io_ctl_resp_bits_cmd(slices_1_io_ctl_resp_bits_cmd),
    .io_ctl_resp_bits_data_0(slices_1_io_ctl_resp_bits_data_0),
    .io_ctl_resp_bits_data_1(slices_1_io_ctl_resp_bits_data_1),
    .io_ctl_resp_bits_data_2(slices_1_io_ctl_resp_bits_data_2),
    .io_ctl_resp_bits_data_3(slices_1_io_ctl_resp_bits_data_3),
    .io_ctl_resp_bits_data_4(slices_1_io_ctl_resp_bits_data_4),
    .io_ctl_resp_bits_data_5(slices_1_io_ctl_resp_bits_data_5),
    .io_ctl_resp_bits_data_6(slices_1_io_ctl_resp_bits_data_6),
    .io_ctl_resp_bits_data_7(slices_1_io_ctl_resp_bits_data_7),
    .io_ctl_ecc_valid(slices_1_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_1_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_1_io_ctl_ecc_bits_addr)
  );
  Slice_2 slices_2 ( // @[HuanCun.scala 309:43]
    .clock(slices_2_clock),
    .reset(slices_2_reset),
    .io_in_a_ready(slices_2_io_in_a_ready),
    .io_in_a_valid(slices_2_io_in_a_valid),
    .io_in_a_bits_opcode(slices_2_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_2_io_in_a_bits_param),
    .io_in_a_bits_size(slices_2_io_in_a_bits_size),
    .io_in_a_bits_source(slices_2_io_in_a_bits_source),
    .io_in_a_bits_address(slices_2_io_in_a_bits_address),
    .io_in_a_bits_user_preferCache(slices_2_io_in_a_bits_user_preferCache),
    .io_in_a_bits_mask(slices_2_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_2_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_2_io_in_a_bits_corrupt),
    .io_in_bready(slices_2_io_in_bready),
    .io_in_bvalid(slices_2_io_in_bvalid),
    .io_in_bparam(slices_2_io_in_bparam),
    .io_in_baddress(slices_2_io_in_baddress),
    .io_in_bdata(slices_2_io_in_bdata),
    .io_in_c_ready(slices_2_io_in_c_ready),
    .io_in_c_valid(slices_2_io_in_c_valid),
    .io_in_c_bits_opcode(slices_2_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_2_io_in_c_bits_param),
    .io_in_c_bits_size(slices_2_io_in_c_bits_size),
    .io_in_c_bits_source(slices_2_io_in_c_bits_source),
    .io_in_c_bits_address(slices_2_io_in_c_bits_address),
    .io_in_c_bits_echo_blockisdirty(slices_2_io_in_c_bits_echo_blockisdirty),
    .io_in_c_bits_data(slices_2_io_in_c_bits_data),
    .io_in_d_ready(slices_2_io_in_d_ready),
    .io_in_d_valid(slices_2_io_in_d_valid),
    .io_in_d_bits_opcode(slices_2_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_2_io_in_d_bits_param),
    .io_in_d_bits_size(slices_2_io_in_d_bits_size),
    .io_in_d_bits_source(slices_2_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_2_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_2_io_in_d_bits_denied),
    .io_in_d_bits_echo_blockisdirty(slices_2_io_in_d_bits_echo_blockisdirty),
    .io_in_d_bits_data(slices_2_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_2_io_in_d_bits_corrupt),
    .io_in_e_valid(slices_2_io_in_e_valid),
    .io_in_e_bits_sink(slices_2_io_in_e_bits_sink),
    .io_out_a_ready(slices_2_io_out_a_ready),
    .io_out_a_valid(slices_2_io_out_a_valid),
    .io_out_a_bits_opcode(slices_2_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_2_io_out_a_bits_param),
    .io_out_a_bits_size(slices_2_io_out_a_bits_size),
    .io_out_a_bits_source(slices_2_io_out_a_bits_source),
    .io_out_a_bits_address(slices_2_io_out_a_bits_address),
    .io_out_a_bits_mask(slices_2_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_2_io_out_a_bits_data),
    .io_out_c_ready(slices_2_io_out_c_ready),
    .io_out_c_valid(slices_2_io_out_c_valid),
    .io_out_c_bits_opcode(slices_2_io_out_c_bits_opcode),
    .io_out_c_bits_size(slices_2_io_out_c_bits_size),
    .io_out_c_bits_source(slices_2_io_out_c_bits_source),
    .io_out_c_bits_address(slices_2_io_out_c_bits_address),
    .io_out_c_bits_data(slices_2_io_out_c_bits_data),
    .io_out_d_ready(slices_2_io_out_d_ready),
    .io_out_d_valid(slices_2_io_out_d_valid),
    .io_out_d_bits_opcode(slices_2_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_2_io_out_d_bits_param),
    .io_out_d_bits_size(slices_2_io_out_d_bits_size),
    .io_out_d_bits_source(slices_2_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_2_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_2_io_out_d_bits_denied),
    .io_out_d_bits_data(slices_2_io_out_d_bits_data),
    .io_out_e_valid(slices_2_io_out_e_valid),
    .io_out_e_bits_sink(slices_2_io_out_e_bits_sink),
    .io_ctl_req_ready(slices_2_io_ctl_req_ready),
    .io_ctl_req_valid(slices_2_io_ctl_req_valid),
    .io_ctl_req_bits_cmd(slices_2_io_ctl_req_bits_cmd),
    .io_ctl_req_bits_data_0(slices_2_io_ctl_req_bits_data_0),
    .io_ctl_req_bits_data_1(slices_2_io_ctl_req_bits_data_1),
    .io_ctl_req_bits_data_2(slices_2_io_ctl_req_bits_data_2),
    .io_ctl_req_bits_data_3(slices_2_io_ctl_req_bits_data_3),
    .io_ctl_req_bits_data_4(slices_2_io_ctl_req_bits_data_4),
    .io_ctl_req_bits_data_5(slices_2_io_ctl_req_bits_data_5),
    .io_ctl_req_bits_data_6(slices_2_io_ctl_req_bits_data_6),
    .io_ctl_req_bits_data_7(slices_2_io_ctl_req_bits_data_7),
    .io_ctl_req_bits_set(slices_2_io_ctl_req_bits_set),
    .io_ctl_req_bits_tag(slices_2_io_ctl_req_bits_tag),
    .io_ctl_req_bits_way(slices_2_io_ctl_req_bits_way),
    .io_ctl_req_bits_dir(slices_2_io_ctl_req_bits_dir),
    .io_ctl_resp_ready(slices_2_io_ctl_resp_ready),
    .io_ctl_resp_valid(slices_2_io_ctl_resp_valid),
    .io_ctl_resp_bits_cmd(slices_2_io_ctl_resp_bits_cmd),
    .io_ctl_resp_bits_data_0(slices_2_io_ctl_resp_bits_data_0),
    .io_ctl_resp_bits_data_1(slices_2_io_ctl_resp_bits_data_1),
    .io_ctl_resp_bits_data_2(slices_2_io_ctl_resp_bits_data_2),
    .io_ctl_resp_bits_data_3(slices_2_io_ctl_resp_bits_data_3),
    .io_ctl_resp_bits_data_4(slices_2_io_ctl_resp_bits_data_4),
    .io_ctl_resp_bits_data_5(slices_2_io_ctl_resp_bits_data_5),
    .io_ctl_resp_bits_data_6(slices_2_io_ctl_resp_bits_data_6),
    .io_ctl_resp_bits_data_7(slices_2_io_ctl_resp_bits_data_7),
    .io_ctl_ecc_valid(slices_2_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_2_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_2_io_ctl_ecc_bits_addr)
  );
  Slice_2 slices_3 ( // @[HuanCun.scala 309:43]
    .clock(slices_3_clock),
    .reset(slices_3_reset),
    .io_in_a_ready(slices_3_io_in_a_ready),
    .io_in_a_valid(slices_3_io_in_a_valid),
    .io_in_a_bits_opcode(slices_3_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_3_io_in_a_bits_param),
    .io_in_a_bits_size(slices_3_io_in_a_bits_size),
    .io_in_a_bits_source(slices_3_io_in_a_bits_source),
    .io_in_a_bits_address(slices_3_io_in_a_bits_address),
    .io_in_a_bits_user_preferCache(slices_3_io_in_a_bits_user_preferCache),
    .io_in_a_bits_mask(slices_3_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_3_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_3_io_in_a_bits_corrupt),
    .io_in_bready(slices_3_io_in_bready),
    .io_in_bvalid(slices_3_io_in_bvalid),
    .io_in_bparam(slices_3_io_in_bparam),
    .io_in_baddress(slices_3_io_in_baddress),
    .io_in_bdata(slices_3_io_in_bdata),
    .io_in_c_ready(slices_3_io_in_c_ready),
    .io_in_c_valid(slices_3_io_in_c_valid),
    .io_in_c_bits_opcode(slices_3_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_3_io_in_c_bits_param),
    .io_in_c_bits_size(slices_3_io_in_c_bits_size),
    .io_in_c_bits_source(slices_3_io_in_c_bits_source),
    .io_in_c_bits_address(slices_3_io_in_c_bits_address),
    .io_in_c_bits_echo_blockisdirty(slices_3_io_in_c_bits_echo_blockisdirty),
    .io_in_c_bits_data(slices_3_io_in_c_bits_data),
    .io_in_d_ready(slices_3_io_in_d_ready),
    .io_in_d_valid(slices_3_io_in_d_valid),
    .io_in_d_bits_opcode(slices_3_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_3_io_in_d_bits_param),
    .io_in_d_bits_size(slices_3_io_in_d_bits_size),
    .io_in_d_bits_source(slices_3_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_3_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_3_io_in_d_bits_denied),
    .io_in_d_bits_echo_blockisdirty(slices_3_io_in_d_bits_echo_blockisdirty),
    .io_in_d_bits_data(slices_3_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_3_io_in_d_bits_corrupt),
    .io_in_e_valid(slices_3_io_in_e_valid),
    .io_in_e_bits_sink(slices_3_io_in_e_bits_sink),
    .io_out_a_ready(slices_3_io_out_a_ready),
    .io_out_a_valid(slices_3_io_out_a_valid),
    .io_out_a_bits_opcode(slices_3_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_3_io_out_a_bits_param),
    .io_out_a_bits_size(slices_3_io_out_a_bits_size),
    .io_out_a_bits_source(slices_3_io_out_a_bits_source),
    .io_out_a_bits_address(slices_3_io_out_a_bits_address),
    .io_out_a_bits_mask(slices_3_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_3_io_out_a_bits_data),
    .io_out_c_ready(slices_3_io_out_c_ready),
    .io_out_c_valid(slices_3_io_out_c_valid),
    .io_out_c_bits_opcode(slices_3_io_out_c_bits_opcode),
    .io_out_c_bits_size(slices_3_io_out_c_bits_size),
    .io_out_c_bits_source(slices_3_io_out_c_bits_source),
    .io_out_c_bits_address(slices_3_io_out_c_bits_address),
    .io_out_c_bits_data(slices_3_io_out_c_bits_data),
    .io_out_d_ready(slices_3_io_out_d_ready),
    .io_out_d_valid(slices_3_io_out_d_valid),
    .io_out_d_bits_opcode(slices_3_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_3_io_out_d_bits_param),
    .io_out_d_bits_size(slices_3_io_out_d_bits_size),
    .io_out_d_bits_source(slices_3_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_3_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_3_io_out_d_bits_denied),
    .io_out_d_bits_data(slices_3_io_out_d_bits_data),
    .io_out_e_valid(slices_3_io_out_e_valid),
    .io_out_e_bits_sink(slices_3_io_out_e_bits_sink),
    .io_ctl_req_ready(slices_3_io_ctl_req_ready),
    .io_ctl_req_valid(slices_3_io_ctl_req_valid),
    .io_ctl_req_bits_cmd(slices_3_io_ctl_req_bits_cmd),
    .io_ctl_req_bits_data_0(slices_3_io_ctl_req_bits_data_0),
    .io_ctl_req_bits_data_1(slices_3_io_ctl_req_bits_data_1),
    .io_ctl_req_bits_data_2(slices_3_io_ctl_req_bits_data_2),
    .io_ctl_req_bits_data_3(slices_3_io_ctl_req_bits_data_3),
    .io_ctl_req_bits_data_4(slices_3_io_ctl_req_bits_data_4),
    .io_ctl_req_bits_data_5(slices_3_io_ctl_req_bits_data_5),
    .io_ctl_req_bits_data_6(slices_3_io_ctl_req_bits_data_6),
    .io_ctl_req_bits_data_7(slices_3_io_ctl_req_bits_data_7),
    .io_ctl_req_bits_set(slices_3_io_ctl_req_bits_set),
    .io_ctl_req_bits_tag(slices_3_io_ctl_req_bits_tag),
    .io_ctl_req_bits_way(slices_3_io_ctl_req_bits_way),
    .io_ctl_req_bits_dir(slices_3_io_ctl_req_bits_dir),
    .io_ctl_resp_ready(slices_3_io_ctl_resp_ready),
    .io_ctl_resp_valid(slices_3_io_ctl_resp_valid),
    .io_ctl_resp_bits_cmd(slices_3_io_ctl_resp_bits_cmd),
    .io_ctl_resp_bits_data_0(slices_3_io_ctl_resp_bits_data_0),
    .io_ctl_resp_bits_data_1(slices_3_io_ctl_resp_bits_data_1),
    .io_ctl_resp_bits_data_2(slices_3_io_ctl_resp_bits_data_2),
    .io_ctl_resp_bits_data_3(slices_3_io_ctl_resp_bits_data_3),
    .io_ctl_resp_bits_data_4(slices_3_io_ctl_resp_bits_data_4),
    .io_ctl_resp_bits_data_5(slices_3_io_ctl_resp_bits_data_5),
    .io_ctl_resp_bits_data_6(slices_3_io_ctl_resp_bits_data_6),
    .io_ctl_resp_bits_data_7(slices_3_io_ctl_resp_bits_data_7),
    .io_ctl_ecc_valid(slices_3_io_ctl_ecc_valid),
    .io_ctl_ecc_bits_errCode(slices_3_io_ctl_ecc_bits_errCode),
    .io_ctl_ecc_bits_addr(slices_3_io_ctl_ecc_bits_addr)
  );
  Arbiter_70 ecc_arb ( // @[HuanCun.scala 348:25]
    .io_in_0_ready(ecc_arb_io_in_0_ready),
    .io_in_0_valid(ecc_arb_io_in_0_valid),
    .io_in_0_bits_errCode(ecc_arb_io_in_0_bits_errCode),
    .io_in_0_bits_addr(ecc_arb_io_in_0_bits_addr),
    .io_in_1_ready(ecc_arb_io_in_1_ready),
    .io_in_1_valid(ecc_arb_io_in_1_valid),
    .io_in_1_bits_errCode(ecc_arb_io_in_1_bits_errCode),
    .io_in_1_bits_addr(ecc_arb_io_in_1_bits_addr),
    .io_in_2_ready(ecc_arb_io_in_2_ready),
    .io_in_2_valid(ecc_arb_io_in_2_valid),
    .io_in_2_bits_errCode(ecc_arb_io_in_2_bits_errCode),
    .io_in_2_bits_addr(ecc_arb_io_in_2_bits_addr),
    .io_in_3_ready(ecc_arb_io_in_3_ready),
    .io_in_3_valid(ecc_arb_io_in_3_valid),
    .io_in_3_bits_errCode(ecc_arb_io_in_3_bits_errCode),
    .io_in_3_bits_addr(ecc_arb_io_in_3_bits_addr),
    .io_out_ready(ecc_arb_io_out_ready),
    .io_out_valid(ecc_arb_io_out_valid),
    .io_out_bits_errCode(ecc_arb_io_out_bits_errCode),
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
  Pipeline_15 slices_ecc_ecc_buffer_2 ( // @[Pipeline.scala 29:26]
    .clock(slices_ecc_ecc_buffer_2_clock),
    .reset(slices_ecc_ecc_buffer_2_reset),
    .io_in_valid(slices_ecc_ecc_buffer_2_io_in_valid),
    .io_in_bits_errCode(slices_ecc_ecc_buffer_2_io_in_bits_errCode),
    .io_in_bits_addr(slices_ecc_ecc_buffer_2_io_in_bits_addr),
    .io_out_ready(slices_ecc_ecc_buffer_2_io_out_ready),
    .io_out_valid(slices_ecc_ecc_buffer_2_io_out_valid),
    .io_out_bits_errCode(slices_ecc_ecc_buffer_2_io_out_bits_errCode),
    .io_out_bits_addr(slices_ecc_ecc_buffer_2_io_out_bits_addr)
  );
  Pipeline_15 slices_ecc_ecc_buffer_3 ( // @[Pipeline.scala 29:26]
    .clock(slices_ecc_ecc_buffer_3_clock),
    .reset(slices_ecc_ecc_buffer_3_reset),
    .io_in_valid(slices_ecc_ecc_buffer_3_io_in_valid),
    .io_in_bits_errCode(slices_ecc_ecc_buffer_3_io_in_bits_errCode),
    .io_in_bits_addr(slices_ecc_ecc_buffer_3_io_in_bits_addr),
    .io_out_ready(slices_ecc_ecc_buffer_3_io_out_ready),
    .io_out_valid(slices_ecc_ecc_buffer_3_io_out_valid),
    .io_out_bits_errCode(slices_ecc_ecc_buffer_3_io_out_bits_errCode),
    .io_out_bits_addr(slices_ecc_ecc_buffer_3_io_out_bits_addr)
  );
  Pipeline_45 ctl_reqs_req_buffer_0 ( // @[Pipeline.scala 23:26]
    .clock(ctl_reqs_req_buffer_0_clock),
    .reset(ctl_reqs_req_buffer_0_reset),
    .io_in_ready(ctl_reqs_req_buffer_0_io_in_ready),
    .io_in_valid(ctl_reqs_req_buffer_0_io_in_valid),
    .io_in_bits_cmd(ctl_reqs_req_buffer_0_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_reqs_req_buffer_0_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_reqs_req_buffer_0_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_reqs_req_buffer_0_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_reqs_req_buffer_0_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_reqs_req_buffer_0_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_reqs_req_buffer_0_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_reqs_req_buffer_0_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_reqs_req_buffer_0_io_in_bits_data_7),
    .io_in_bits_set(ctl_reqs_req_buffer_0_io_in_bits_set),
    .io_in_bits_tag(ctl_reqs_req_buffer_0_io_in_bits_tag),
    .io_in_bits_way(ctl_reqs_req_buffer_0_io_in_bits_way),
    .io_in_bits_dir(ctl_reqs_req_buffer_0_io_in_bits_dir),
    .io_out_ready(ctl_reqs_req_buffer_0_io_out_ready),
    .io_out_valid(ctl_reqs_req_buffer_0_io_out_valid),
    .io_out_bits_cmd(ctl_reqs_req_buffer_0_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_reqs_req_buffer_0_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_reqs_req_buffer_0_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_reqs_req_buffer_0_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_reqs_req_buffer_0_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_reqs_req_buffer_0_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_reqs_req_buffer_0_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_reqs_req_buffer_0_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_reqs_req_buffer_0_io_out_bits_data_7),
    .io_out_bits_set(ctl_reqs_req_buffer_0_io_out_bits_set),
    .io_out_bits_tag(ctl_reqs_req_buffer_0_io_out_bits_tag),
    .io_out_bits_way(ctl_reqs_req_buffer_0_io_out_bits_way),
    .io_out_bits_dir(ctl_reqs_req_buffer_0_io_out_bits_dir)
  );
  Pipeline_45 ctl_reqs_req_buffer_1 ( // @[Pipeline.scala 23:26]
    .clock(ctl_reqs_req_buffer_1_clock),
    .reset(ctl_reqs_req_buffer_1_reset),
    .io_in_ready(ctl_reqs_req_buffer_1_io_in_ready),
    .io_in_valid(ctl_reqs_req_buffer_1_io_in_valid),
    .io_in_bits_cmd(ctl_reqs_req_buffer_1_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_reqs_req_buffer_1_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_reqs_req_buffer_1_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_reqs_req_buffer_1_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_reqs_req_buffer_1_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_reqs_req_buffer_1_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_reqs_req_buffer_1_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_reqs_req_buffer_1_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_reqs_req_buffer_1_io_in_bits_data_7),
    .io_in_bits_set(ctl_reqs_req_buffer_1_io_in_bits_set),
    .io_in_bits_tag(ctl_reqs_req_buffer_1_io_in_bits_tag),
    .io_in_bits_way(ctl_reqs_req_buffer_1_io_in_bits_way),
    .io_in_bits_dir(ctl_reqs_req_buffer_1_io_in_bits_dir),
    .io_out_ready(ctl_reqs_req_buffer_1_io_out_ready),
    .io_out_valid(ctl_reqs_req_buffer_1_io_out_valid),
    .io_out_bits_cmd(ctl_reqs_req_buffer_1_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_reqs_req_buffer_1_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_reqs_req_buffer_1_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_reqs_req_buffer_1_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_reqs_req_buffer_1_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_reqs_req_buffer_1_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_reqs_req_buffer_1_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_reqs_req_buffer_1_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_reqs_req_buffer_1_io_out_bits_data_7),
    .io_out_bits_set(ctl_reqs_req_buffer_1_io_out_bits_set),
    .io_out_bits_tag(ctl_reqs_req_buffer_1_io_out_bits_tag),
    .io_out_bits_way(ctl_reqs_req_buffer_1_io_out_bits_way),
    .io_out_bits_dir(ctl_reqs_req_buffer_1_io_out_bits_dir)
  );
  Pipeline_45 ctl_reqs_req_buffer_2 ( // @[Pipeline.scala 23:26]
    .clock(ctl_reqs_req_buffer_2_clock),
    .reset(ctl_reqs_req_buffer_2_reset),
    .io_in_ready(ctl_reqs_req_buffer_2_io_in_ready),
    .io_in_valid(ctl_reqs_req_buffer_2_io_in_valid),
    .io_in_bits_cmd(ctl_reqs_req_buffer_2_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_reqs_req_buffer_2_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_reqs_req_buffer_2_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_reqs_req_buffer_2_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_reqs_req_buffer_2_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_reqs_req_buffer_2_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_reqs_req_buffer_2_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_reqs_req_buffer_2_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_reqs_req_buffer_2_io_in_bits_data_7),
    .io_in_bits_set(ctl_reqs_req_buffer_2_io_in_bits_set),
    .io_in_bits_tag(ctl_reqs_req_buffer_2_io_in_bits_tag),
    .io_in_bits_way(ctl_reqs_req_buffer_2_io_in_bits_way),
    .io_in_bits_dir(ctl_reqs_req_buffer_2_io_in_bits_dir),
    .io_out_ready(ctl_reqs_req_buffer_2_io_out_ready),
    .io_out_valid(ctl_reqs_req_buffer_2_io_out_valid),
    .io_out_bits_cmd(ctl_reqs_req_buffer_2_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_reqs_req_buffer_2_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_reqs_req_buffer_2_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_reqs_req_buffer_2_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_reqs_req_buffer_2_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_reqs_req_buffer_2_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_reqs_req_buffer_2_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_reqs_req_buffer_2_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_reqs_req_buffer_2_io_out_bits_data_7),
    .io_out_bits_set(ctl_reqs_req_buffer_2_io_out_bits_set),
    .io_out_bits_tag(ctl_reqs_req_buffer_2_io_out_bits_tag),
    .io_out_bits_way(ctl_reqs_req_buffer_2_io_out_bits_way),
    .io_out_bits_dir(ctl_reqs_req_buffer_2_io_out_bits_dir)
  );
  Pipeline_45 ctl_reqs_req_buffer_3 ( // @[Pipeline.scala 23:26]
    .clock(ctl_reqs_req_buffer_3_clock),
    .reset(ctl_reqs_req_buffer_3_reset),
    .io_in_ready(ctl_reqs_req_buffer_3_io_in_ready),
    .io_in_valid(ctl_reqs_req_buffer_3_io_in_valid),
    .io_in_bits_cmd(ctl_reqs_req_buffer_3_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_reqs_req_buffer_3_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_reqs_req_buffer_3_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_reqs_req_buffer_3_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_reqs_req_buffer_3_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_reqs_req_buffer_3_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_reqs_req_buffer_3_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_reqs_req_buffer_3_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_reqs_req_buffer_3_io_in_bits_data_7),
    .io_in_bits_set(ctl_reqs_req_buffer_3_io_in_bits_set),
    .io_in_bits_tag(ctl_reqs_req_buffer_3_io_in_bits_tag),
    .io_in_bits_way(ctl_reqs_req_buffer_3_io_in_bits_way),
    .io_in_bits_dir(ctl_reqs_req_buffer_3_io_in_bits_dir),
    .io_out_ready(ctl_reqs_req_buffer_3_io_out_ready),
    .io_out_valid(ctl_reqs_req_buffer_3_io_out_valid),
    .io_out_bits_cmd(ctl_reqs_req_buffer_3_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_reqs_req_buffer_3_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_reqs_req_buffer_3_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_reqs_req_buffer_3_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_reqs_req_buffer_3_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_reqs_req_buffer_3_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_reqs_req_buffer_3_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_reqs_req_buffer_3_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_reqs_req_buffer_3_io_out_bits_data_7),
    .io_out_bits_set(ctl_reqs_req_buffer_3_io_out_bits_set),
    .io_out_bits_tag(ctl_reqs_req_buffer_3_io_out_bits_tag),
    .io_out_bits_way(ctl_reqs_req_buffer_3_io_out_bits_way),
    .io_out_bits_dir(ctl_reqs_req_buffer_3_io_out_bits_dir)
  );
  Pipeline_49 ctl_resps_resp_buffer_0 ( // @[Pipeline.scala 29:26]
    .clock(ctl_resps_resp_buffer_0_clock),
    .reset(ctl_resps_resp_buffer_0_reset),
    .io_in_ready(ctl_resps_resp_buffer_0_io_in_ready),
    .io_in_valid(ctl_resps_resp_buffer_0_io_in_valid),
    .io_in_bits_cmd(ctl_resps_resp_buffer_0_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_resps_resp_buffer_0_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_resps_resp_buffer_0_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_resps_resp_buffer_0_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_resps_resp_buffer_0_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_resps_resp_buffer_0_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_resps_resp_buffer_0_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_resps_resp_buffer_0_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_resps_resp_buffer_0_io_in_bits_data_7),
    .io_out_ready(ctl_resps_resp_buffer_0_io_out_ready),
    .io_out_valid(ctl_resps_resp_buffer_0_io_out_valid),
    .io_out_bits_cmd(ctl_resps_resp_buffer_0_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_resps_resp_buffer_0_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_resps_resp_buffer_0_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_resps_resp_buffer_0_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_resps_resp_buffer_0_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_resps_resp_buffer_0_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_resps_resp_buffer_0_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_resps_resp_buffer_0_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_resps_resp_buffer_0_io_out_bits_data_7)
  );
  Pipeline_49 ctl_resps_resp_buffer_1 ( // @[Pipeline.scala 29:26]
    .clock(ctl_resps_resp_buffer_1_clock),
    .reset(ctl_resps_resp_buffer_1_reset),
    .io_in_ready(ctl_resps_resp_buffer_1_io_in_ready),
    .io_in_valid(ctl_resps_resp_buffer_1_io_in_valid),
    .io_in_bits_cmd(ctl_resps_resp_buffer_1_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_resps_resp_buffer_1_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_resps_resp_buffer_1_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_resps_resp_buffer_1_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_resps_resp_buffer_1_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_resps_resp_buffer_1_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_resps_resp_buffer_1_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_resps_resp_buffer_1_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_resps_resp_buffer_1_io_in_bits_data_7),
    .io_out_ready(ctl_resps_resp_buffer_1_io_out_ready),
    .io_out_valid(ctl_resps_resp_buffer_1_io_out_valid),
    .io_out_bits_cmd(ctl_resps_resp_buffer_1_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_resps_resp_buffer_1_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_resps_resp_buffer_1_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_resps_resp_buffer_1_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_resps_resp_buffer_1_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_resps_resp_buffer_1_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_resps_resp_buffer_1_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_resps_resp_buffer_1_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_resps_resp_buffer_1_io_out_bits_data_7)
  );
  Pipeline_49 ctl_resps_resp_buffer_2 ( // @[Pipeline.scala 29:26]
    .clock(ctl_resps_resp_buffer_2_clock),
    .reset(ctl_resps_resp_buffer_2_reset),
    .io_in_ready(ctl_resps_resp_buffer_2_io_in_ready),
    .io_in_valid(ctl_resps_resp_buffer_2_io_in_valid),
    .io_in_bits_cmd(ctl_resps_resp_buffer_2_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_resps_resp_buffer_2_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_resps_resp_buffer_2_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_resps_resp_buffer_2_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_resps_resp_buffer_2_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_resps_resp_buffer_2_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_resps_resp_buffer_2_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_resps_resp_buffer_2_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_resps_resp_buffer_2_io_in_bits_data_7),
    .io_out_ready(ctl_resps_resp_buffer_2_io_out_ready),
    .io_out_valid(ctl_resps_resp_buffer_2_io_out_valid),
    .io_out_bits_cmd(ctl_resps_resp_buffer_2_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_resps_resp_buffer_2_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_resps_resp_buffer_2_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_resps_resp_buffer_2_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_resps_resp_buffer_2_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_resps_resp_buffer_2_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_resps_resp_buffer_2_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_resps_resp_buffer_2_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_resps_resp_buffer_2_io_out_bits_data_7)
  );
  Pipeline_49 ctl_resps_resp_buffer_3 ( // @[Pipeline.scala 29:26]
    .clock(ctl_resps_resp_buffer_3_clock),
    .reset(ctl_resps_resp_buffer_3_reset),
    .io_in_ready(ctl_resps_resp_buffer_3_io_in_ready),
    .io_in_valid(ctl_resps_resp_buffer_3_io_in_valid),
    .io_in_bits_cmd(ctl_resps_resp_buffer_3_io_in_bits_cmd),
    .io_in_bits_data_0(ctl_resps_resp_buffer_3_io_in_bits_data_0),
    .io_in_bits_data_1(ctl_resps_resp_buffer_3_io_in_bits_data_1),
    .io_in_bits_data_2(ctl_resps_resp_buffer_3_io_in_bits_data_2),
    .io_in_bits_data_3(ctl_resps_resp_buffer_3_io_in_bits_data_3),
    .io_in_bits_data_4(ctl_resps_resp_buffer_3_io_in_bits_data_4),
    .io_in_bits_data_5(ctl_resps_resp_buffer_3_io_in_bits_data_5),
    .io_in_bits_data_6(ctl_resps_resp_buffer_3_io_in_bits_data_6),
    .io_in_bits_data_7(ctl_resps_resp_buffer_3_io_in_bits_data_7),
    .io_out_ready(ctl_resps_resp_buffer_3_io_out_ready),
    .io_out_valid(ctl_resps_resp_buffer_3_io_out_valid),
    .io_out_bits_cmd(ctl_resps_resp_buffer_3_io_out_bits_cmd),
    .io_out_bits_data_0(ctl_resps_resp_buffer_3_io_out_bits_data_0),
    .io_out_bits_data_1(ctl_resps_resp_buffer_3_io_out_bits_data_1),
    .io_out_bits_data_2(ctl_resps_resp_buffer_3_io_out_bits_data_2),
    .io_out_bits_data_3(ctl_resps_resp_buffer_3_io_out_bits_data_3),
    .io_out_bits_data_4(ctl_resps_resp_buffer_3_io_out_bits_data_4),
    .io_out_bits_data_5(ctl_resps_resp_buffer_3_io_out_bits_data_5),
    .io_out_bits_data_6(ctl_resps_resp_buffer_3_io_out_bits_data_6),
    .io_out_bits_data_7(ctl_resps_resp_buffer_3_io_out_bits_data_7)
  );
  Arbiter_71 arb ( // @[HuanCun.scala 369:23]
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_cmd(arb_io_in_0_bits_cmd),
    .io_in_0_bits_data_0(arb_io_in_0_bits_data_0),
    .io_in_0_bits_data_1(arb_io_in_0_bits_data_1),
    .io_in_0_bits_data_2(arb_io_in_0_bits_data_2),
    .io_in_0_bits_data_3(arb_io_in_0_bits_data_3),
    .io_in_0_bits_data_4(arb_io_in_0_bits_data_4),
    .io_in_0_bits_data_5(arb_io_in_0_bits_data_5),
    .io_in_0_bits_data_6(arb_io_in_0_bits_data_6),
    .io_in_0_bits_data_7(arb_io_in_0_bits_data_7),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_cmd(arb_io_in_1_bits_cmd),
    .io_in_1_bits_data_0(arb_io_in_1_bits_data_0),
    .io_in_1_bits_data_1(arb_io_in_1_bits_data_1),
    .io_in_1_bits_data_2(arb_io_in_1_bits_data_2),
    .io_in_1_bits_data_3(arb_io_in_1_bits_data_3),
    .io_in_1_bits_data_4(arb_io_in_1_bits_data_4),
    .io_in_1_bits_data_5(arb_io_in_1_bits_data_5),
    .io_in_1_bits_data_6(arb_io_in_1_bits_data_6),
    .io_in_1_bits_data_7(arb_io_in_1_bits_data_7),
    .io_in_2_ready(arb_io_in_2_ready),
    .io_in_2_valid(arb_io_in_2_valid),
    .io_in_2_bits_cmd(arb_io_in_2_bits_cmd),
    .io_in_2_bits_data_0(arb_io_in_2_bits_data_0),
    .io_in_2_bits_data_1(arb_io_in_2_bits_data_1),
    .io_in_2_bits_data_2(arb_io_in_2_bits_data_2),
    .io_in_2_bits_data_3(arb_io_in_2_bits_data_3),
    .io_in_2_bits_data_4(arb_io_in_2_bits_data_4),
    .io_in_2_bits_data_5(arb_io_in_2_bits_data_5),
    .io_in_2_bits_data_6(arb_io_in_2_bits_data_6),
    .io_in_2_bits_data_7(arb_io_in_2_bits_data_7),
    .io_in_3_ready(arb_io_in_3_ready),
    .io_in_3_valid(arb_io_in_3_valid),
    .io_in_3_bits_cmd(arb_io_in_3_bits_cmd),
    .io_in_3_bits_data_0(arb_io_in_3_bits_data_0),
    .io_in_3_bits_data_1(arb_io_in_3_bits_data_1),
    .io_in_3_bits_data_2(arb_io_in_3_bits_data_2),
    .io_in_3_bits_data_3(arb_io_in_3_bits_data_3),
    .io_in_3_bits_data_4(arb_io_in_3_bits_data_4),
    .io_in_3_bits_data_5(arb_io_in_3_bits_data_5),
    .io_in_3_bits_data_6(arb_io_in_3_bits_data_6),
    .io_in_3_bits_data_7(arb_io_in_3_bits_data_7),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_cmd(arb_io_out_bits_cmd),
    .io_out_bits_data_0(arb_io_out_bits_data_0),
    .io_out_bits_data_1(arb_io_out_bits_data_1),
    .io_out_bits_data_2(arb_io_out_bits_data_2),
    .io_out_bits_data_3(arb_io_out_bits_data_3),
    .io_out_bits_data_4(arb_io_out_bits_data_4),
    .io_out_bits_data_5(arb_io_out_bits_data_5),
    .io_out_bits_data_6(arb_io_out_bits_data_6),
    .io_out_bits_data_7(arb_io_out_bits_data_7)
  );
  assign auto_ctrl_unit_core_reset_nodes_out = ctrl_unit_auto_core_reset_nodes_out; // @[LazyModule.scala 311:12]
  assign auto_ctrl_unit_int_out_0 = ctrl_unit_auto_int_out_0; // @[LazyModule.scala 311:12]
  assign auto_ctrl_unit_ctl_in_a_ready = ctrl_unit_auto_ctl_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_ctrl_unit_ctl_in_d_valid = ctrl_unit_auto_ctl_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_ctrl_unit_ctl_in_d_bits_opcode = ctrl_unit_auto_ctl_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_ctrl_unit_ctl_in_d_bits_size = ctrl_unit_auto_ctl_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_ctrl_unit_ctl_in_d_bits_source = ctrl_unit_auto_ctl_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_ctrl_unit_ctl_in_d_bits_data = ctrl_unit_auto_ctl_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_in_3_a_ready = slices_3_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_bvalid = slices_3_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_bparam = slices_3_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_baddress = _bundleIn_3_baddress_T[35:0]; // @[Nodes.scala 1210:84 HuanCun.scala 315:27]
  assign auto_in_3_bdata = slices_3_io_in_bdata; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_c_ready = slices_3_io_in_c_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_valid = slices_3_io_in_d_valid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_opcode = slices_3_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_param = slices_3_io_in_d_bits_param; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_size = slices_3_io_in_d_bits_size; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_source = slices_3_io_in_d_bits_source; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_sink = slices_3_io_in_d_bits_sink; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_denied = slices_3_io_in_d_bits_denied; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_echo_blockisdirty = slices_3_io_in_d_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_data = slices_3_io_in_d_bits_data; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_3_d_bits_corrupt = slices_3_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_a_ready = slices_2_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_bvalid = slices_2_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_bparam = slices_2_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_baddress = _bundleIn_2_baddress_T[35:0]; // @[Nodes.scala 1210:84 HuanCun.scala 315:27]
  assign auto_in_2_bdata = slices_2_io_in_bdata; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_c_ready = slices_2_io_in_c_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_valid = slices_2_io_in_d_valid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_opcode = slices_2_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_param = slices_2_io_in_d_bits_param; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_size = slices_2_io_in_d_bits_size; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_source = slices_2_io_in_d_bits_source; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_sink = slices_2_io_in_d_bits_sink; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_denied = slices_2_io_in_d_bits_denied; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_echo_blockisdirty = slices_2_io_in_d_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_data = slices_2_io_in_d_bits_data; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_2_d_bits_corrupt = slices_2_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_a_ready = slices_1_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_bvalid = slices_1_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
  assign auto_in_1_bparam = slices_1_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 314:21]
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
  assign auto_out_3_a_valid = slices_3_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_opcode = slices_3_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_param = slices_3_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_size = slices_3_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_source = slices_3_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_address = _bundleOut_3_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 317:28]
  assign auto_out_3_a_bits_mask = slices_3_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_a_bits_data = slices_3_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_c_valid = slices_3_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_c_bits_opcode = slices_3_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_c_bits_size = slices_3_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_c_bits_source = slices_3_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_c_bits_address = _bundleOut_3_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
  assign auto_out_3_c_bits_data = slices_3_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_d_ready = slices_3_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_e_valid = slices_3_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_3_e_bits_sink = slices_3_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_valid = slices_2_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_opcode = slices_2_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_param = slices_2_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_size = slices_2_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_source = slices_2_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_address = _bundleOut_2_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 317:28]
  assign auto_out_2_a_bits_mask = slices_2_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_a_bits_data = slices_2_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_c_valid = slices_2_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_c_bits_opcode = slices_2_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_c_bits_size = slices_2_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_c_bits_source = slices_2_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_c_bits_address = _bundleOut_2_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
  assign auto_out_2_c_bits_data = slices_2_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_d_ready = slices_2_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_e_valid = slices_2_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_2_e_bits_sink = slices_2_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_valid = slices_1_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_opcode = slices_1_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_param = slices_1_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_size = slices_1_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_source = slices_1_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_address = _bundleOut_1_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 317:28]
  assign auto_out_1_a_bits_mask = slices_1_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_a_bits_data = slices_1_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_valid = slices_1_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_opcode = slices_1_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_size = slices_1_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_source = slices_1_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_1_c_bits_address = _bundleOut_1_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
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
  assign auto_out_0_a_bits_mask = slices_0_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_a_bits_data = slices_0_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_valid = slices_0_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_opcode = slices_0_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_size = slices_0_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_source = slices_0_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_c_bits_address = _bundleOut_0_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 HuanCun.scala 318:28]
  assign auto_out_0_c_bits_data = slices_0_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_d_ready = slices_0_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_e_valid = slices_0_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign auto_out_0_e_bits_sink = slices_0_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 316:13]
  assign io_ecc_error_bits = _io_ecc_error_bits_T_1[63:0]; // @[HuanCun.scala 354:23]
  assign ctrl_unit_clock = clock;
  assign ctrl_unit_reset = reset;
  assign ctrl_unit_auto_ctl_in_a_valid = auto_ctrl_unit_ctl_in_a_valid; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_opcode = auto_ctrl_unit_ctl_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_size = auto_ctrl_unit_ctl_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_source = auto_ctrl_unit_ctl_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_address = auto_ctrl_unit_ctl_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_mask = auto_ctrl_unit_ctl_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_a_bits_data = auto_ctrl_unit_ctl_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign ctrl_unit_auto_ctl_in_d_ready = auto_ctrl_unit_ctl_in_d_ready; // @[LazyModule.scala 309:16]
  assign ctrl_unit_io_req_ready = bank_match_0 & ctl_reqs_req_buffer_0_io_in_ready | bank_match_1 &
    ctl_reqs_req_buffer_1_io_in_ready | bank_match_2 & ctl_reqs_req_buffer_2_io_in_ready | bank_match_3 &
    ctl_reqs_req_buffer_3_io_in_ready; // @[Mux.scala 27:73]
  assign ctrl_unit_io_resp_valid = arb_io_out_valid; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_cmd = arb_io_out_bits_cmd; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_0 = arb_io_out_bits_data_0; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_1 = arb_io_out_bits_data_1; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_2 = arb_io_out_bits_data_2; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_3 = arb_io_out_bits_data_3; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_4 = arb_io_out_bits_data_4; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_5 = arb_io_out_bits_data_5; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_6 = arb_io_out_bits_data_6; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_resp_bits_data_7 = arb_io_out_bits_data_7; // @[HuanCun.scala 371:24]
  assign ctrl_unit_io_ecc_valid = ecc_arb_io_out_valid; // @[HuanCun.scala 372:23]
  assign ctrl_unit_io_ecc_bits_errCode = ecc_arb_io_out_bits_errCode; // @[HuanCun.scala 372:23]
  assign ctrl_unit_io_ecc_bits_addr = io_ecc_error_bits; // @[HuanCun.scala 373:33]
  assign slices_0_clock = clock;
  assign slices_0_reset = rst;
  assign slices_0_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_preferCache = auto_in_0_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
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
  assign slices_0_io_out_c_ready = auto_out_0_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_valid = auto_out_0_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_data = auto_out_0_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_ctl_req_valid = ctl_reqs_req_buffer_0_io_out_valid; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_cmd = ctl_reqs_req_buffer_0_io_out_bits_cmd; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_0 = ctl_reqs_req_buffer_0_io_out_bits_data_0; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_1 = ctl_reqs_req_buffer_0_io_out_bits_data_1; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_2 = ctl_reqs_req_buffer_0_io_out_bits_data_2; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_3 = ctl_reqs_req_buffer_0_io_out_bits_data_3; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_4 = ctl_reqs_req_buffer_0_io_out_bits_data_4; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_5 = ctl_reqs_req_buffer_0_io_out_bits_data_5; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_6 = ctl_reqs_req_buffer_0_io_out_bits_data_6; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_data_7 = ctl_reqs_req_buffer_0_io_out_bits_data_7; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_set = ctl_reqs_req_buffer_0_io_out_bits_set; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_tag = ctl_reqs_req_buffer_0_io_out_bits_tag; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_way = ctl_reqs_req_buffer_0_io_out_bits_way; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_req_bits_dir = ctl_reqs_req_buffer_0_io_out_bits_dir; // @[Pipeline.scala 25:9]
  assign slices_0_io_ctl_resp_ready = ctl_resps_resp_buffer_0_io_in_ready; // @[Pipeline.scala 31:20]
  assign slices_1_clock = clock;
  assign slices_1_reset = rst_1;
  assign slices_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_preferCache = auto_in_1_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
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
  assign slices_1_io_out_c_ready = auto_out_1_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_valid = auto_out_1_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_data = auto_out_1_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_ctl_req_valid = ctl_reqs_req_buffer_1_io_out_valid; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_cmd = ctl_reqs_req_buffer_1_io_out_bits_cmd; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_0 = ctl_reqs_req_buffer_1_io_out_bits_data_0; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_1 = ctl_reqs_req_buffer_1_io_out_bits_data_1; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_2 = ctl_reqs_req_buffer_1_io_out_bits_data_2; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_3 = ctl_reqs_req_buffer_1_io_out_bits_data_3; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_4 = ctl_reqs_req_buffer_1_io_out_bits_data_4; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_5 = ctl_reqs_req_buffer_1_io_out_bits_data_5; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_6 = ctl_reqs_req_buffer_1_io_out_bits_data_6; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_data_7 = ctl_reqs_req_buffer_1_io_out_bits_data_7; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_set = ctl_reqs_req_buffer_1_io_out_bits_set; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_tag = ctl_reqs_req_buffer_1_io_out_bits_tag; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_way = ctl_reqs_req_buffer_1_io_out_bits_way; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_req_bits_dir = ctl_reqs_req_buffer_1_io_out_bits_dir; // @[Pipeline.scala 25:9]
  assign slices_1_io_ctl_resp_ready = ctl_resps_resp_buffer_1_io_in_ready; // @[Pipeline.scala 31:20]
  assign slices_2_clock = clock;
  assign slices_2_reset = rst_2;
  assign slices_2_io_in_a_valid = auto_in_2_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_opcode = auto_in_2_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_param = auto_in_2_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_size = auto_in_2_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_source = auto_in_2_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_address = auto_in_2_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_user_preferCache = auto_in_2_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_mask = auto_in_2_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_data = auto_in_2_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_a_bits_corrupt = auto_in_2_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_bready = auto_in_2_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_valid = auto_in_2_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_opcode = auto_in_2_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_param = auto_in_2_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_size = auto_in_2_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_source = auto_in_2_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_address = auto_in_2_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_echo_blockisdirty = auto_in_2_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_c_bits_data = auto_in_2_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_d_ready = auto_in_2_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_e_valid = auto_in_2_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_in_e_bits_sink = auto_in_2_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_2_io_out_a_ready = auto_out_2_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_c_ready = auto_out_2_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_valid = auto_out_2_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_opcode = auto_out_2_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_param = auto_out_2_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_size = auto_out_2_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_source = auto_out_2_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_sink = auto_out_2_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_denied = auto_out_2_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_out_d_bits_data = auto_out_2_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_2_io_ctl_req_valid = ctl_reqs_req_buffer_2_io_out_valid; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_cmd = ctl_reqs_req_buffer_2_io_out_bits_cmd; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_0 = ctl_reqs_req_buffer_2_io_out_bits_data_0; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_1 = ctl_reqs_req_buffer_2_io_out_bits_data_1; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_2 = ctl_reqs_req_buffer_2_io_out_bits_data_2; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_3 = ctl_reqs_req_buffer_2_io_out_bits_data_3; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_4 = ctl_reqs_req_buffer_2_io_out_bits_data_4; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_5 = ctl_reqs_req_buffer_2_io_out_bits_data_5; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_6 = ctl_reqs_req_buffer_2_io_out_bits_data_6; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_data_7 = ctl_reqs_req_buffer_2_io_out_bits_data_7; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_set = ctl_reqs_req_buffer_2_io_out_bits_set; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_tag = ctl_reqs_req_buffer_2_io_out_bits_tag; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_way = ctl_reqs_req_buffer_2_io_out_bits_way; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_req_bits_dir = ctl_reqs_req_buffer_2_io_out_bits_dir; // @[Pipeline.scala 25:9]
  assign slices_2_io_ctl_resp_ready = ctl_resps_resp_buffer_2_io_in_ready; // @[Pipeline.scala 31:20]
  assign slices_3_clock = clock;
  assign slices_3_reset = rst_3;
  assign slices_3_io_in_a_valid = auto_in_3_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_opcode = auto_in_3_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_param = auto_in_3_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_size = auto_in_3_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_source = auto_in_3_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_address = auto_in_3_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_user_preferCache = auto_in_3_a_bits_user_preferCache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_mask = auto_in_3_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_data = auto_in_3_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_a_bits_corrupt = auto_in_3_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_bready = auto_in_3_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_valid = auto_in_3_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_opcode = auto_in_3_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_param = auto_in_3_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_size = auto_in_3_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_source = auto_in_3_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_address = auto_in_3_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_echo_blockisdirty = auto_in_3_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_c_bits_data = auto_in_3_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_d_ready = auto_in_3_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_e_valid = auto_in_3_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_in_e_bits_sink = auto_in_3_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_3_io_out_a_ready = auto_out_3_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_c_ready = auto_out_3_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_valid = auto_out_3_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_opcode = auto_out_3_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_param = auto_out_3_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_size = auto_out_3_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_source = auto_out_3_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_sink = auto_out_3_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_denied = auto_out_3_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_out_d_bits_data = auto_out_3_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_3_io_ctl_req_valid = ctl_reqs_req_buffer_3_io_out_valid; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_cmd = ctl_reqs_req_buffer_3_io_out_bits_cmd; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_0 = ctl_reqs_req_buffer_3_io_out_bits_data_0; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_1 = ctl_reqs_req_buffer_3_io_out_bits_data_1; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_2 = ctl_reqs_req_buffer_3_io_out_bits_data_2; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_3 = ctl_reqs_req_buffer_3_io_out_bits_data_3; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_4 = ctl_reqs_req_buffer_3_io_out_bits_data_4; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_5 = ctl_reqs_req_buffer_3_io_out_bits_data_5; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_6 = ctl_reqs_req_buffer_3_io_out_bits_data_6; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_data_7 = ctl_reqs_req_buffer_3_io_out_bits_data_7; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_set = ctl_reqs_req_buffer_3_io_out_bits_set; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_tag = ctl_reqs_req_buffer_3_io_out_bits_tag; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_way = ctl_reqs_req_buffer_3_io_out_bits_way; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_req_bits_dir = ctl_reqs_req_buffer_3_io_out_bits_dir; // @[Pipeline.scala 25:9]
  assign slices_3_io_ctl_resp_ready = ctl_resps_resp_buffer_3_io_in_ready; // @[Pipeline.scala 31:20]
  assign ecc_arb_io_in_0_valid = slices_ecc_ecc_buffer_0_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_0_bits_errCode = slices_ecc_ecc_buffer_0_io_out_bits_errCode; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_0_bits_addr = slices_ecc_ecc_buffer_0_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_1_valid = slices_ecc_ecc_buffer_1_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_1_bits_errCode = slices_ecc_ecc_buffer_1_io_out_bits_errCode; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_1_bits_addr = slices_ecc_ecc_buffer_1_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_2_valid = slices_ecc_ecc_buffer_2_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_2_bits_errCode = slices_ecc_ecc_buffer_2_io_out_bits_errCode; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_2_bits_addr = slices_ecc_ecc_buffer_2_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_3_valid = slices_ecc_ecc_buffer_3_io_out_valid; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_3_bits_errCode = slices_ecc_ecc_buffer_3_io_out_bits_errCode; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_in_3_bits_addr = slices_ecc_ecc_buffer_3_io_out_bits_addr; // @[HuanCun.scala 352:{29,29}]
  assign ecc_arb_io_out_ready = ctrl_unit_io_ecc_ready; // @[HuanCun.scala 372:23]
  assign slices_ecc_ecc_buffer_0_clock = clock;
  assign slices_ecc_ecc_buffer_0_reset = reset;
  assign slices_ecc_ecc_buffer_0_io_in_valid = slices_0_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_in_bits_errCode = slices_0_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_in_bits_addr = slices_0_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_0_io_out_ready = ecc_arb_io_in_0_ready; // @[HuanCun.scala 352:{19,29}]
  assign slices_ecc_ecc_buffer_1_clock = clock;
  assign slices_ecc_ecc_buffer_1_reset = reset;
  assign slices_ecc_ecc_buffer_1_io_in_valid = slices_1_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_in_bits_errCode = slices_1_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_in_bits_addr = slices_1_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_1_io_out_ready = ecc_arb_io_in_1_ready; // @[HuanCun.scala 352:{19,29}]
  assign slices_ecc_ecc_buffer_2_clock = clock;
  assign slices_ecc_ecc_buffer_2_reset = reset;
  assign slices_ecc_ecc_buffer_2_io_in_valid = slices_2_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_2_io_in_bits_errCode = slices_2_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_2_io_in_bits_addr = slices_2_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_2_io_out_ready = ecc_arb_io_in_2_ready; // @[HuanCun.scala 352:{19,29}]
  assign slices_ecc_ecc_buffer_3_clock = clock;
  assign slices_ecc_ecc_buffer_3_reset = reset;
  assign slices_ecc_ecc_buffer_3_io_in_valid = slices_3_io_ctl_ecc_valid; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_3_io_in_bits_errCode = slices_3_io_ctl_ecc_bits_errCode; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_3_io_in_bits_addr = slices_3_io_ctl_ecc_bits_addr; // @[Pipeline.scala 31:20]
  assign slices_ecc_ecc_buffer_3_io_out_ready = ecc_arb_io_in_3_ready; // @[HuanCun.scala 352:{19,29}]
  assign ctl_reqs_req_buffer_0_clock = clock;
  assign ctl_reqs_req_buffer_0_reset = reset;
  assign ctl_reqs_req_buffer_0_io_in_valid = ctrl_unit_io_req_valid & bank_match_0; // @[HuanCun.scala 366:42]
  assign ctl_reqs_req_buffer_0_io_in_bits_cmd = ctrl_unit_io_req_bits_cmd; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_0 = ctrl_unit_io_req_bits_data_0; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_1 = ctrl_unit_io_req_bits_data_1; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_2 = ctrl_unit_io_req_bits_data_2; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_3 = ctrl_unit_io_req_bits_data_3; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_4 = ctrl_unit_io_req_bits_data_4; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_5 = ctrl_unit_io_req_bits_data_5; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_6 = ctrl_unit_io_req_bits_data_6; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_data_7 = ctrl_unit_io_req_bits_data_7; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_set = ctrl_unit_io_req_bits_set; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_tag = ctrl_unit_io_req_bits_tag; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_way = ctrl_unit_io_req_bits_way; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_in_bits_dir = ctrl_unit_io_req_bits_dir; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_0_io_out_ready = slices_0_io_ctl_req_ready; // @[Pipeline.scala 25:9]
  assign ctl_reqs_req_buffer_1_clock = clock;
  assign ctl_reqs_req_buffer_1_reset = reset;
  assign ctl_reqs_req_buffer_1_io_in_valid = ctrl_unit_io_req_valid & bank_match_1; // @[HuanCun.scala 366:42]
  assign ctl_reqs_req_buffer_1_io_in_bits_cmd = ctrl_unit_io_req_bits_cmd; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_0 = ctrl_unit_io_req_bits_data_0; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_1 = ctrl_unit_io_req_bits_data_1; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_2 = ctrl_unit_io_req_bits_data_2; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_3 = ctrl_unit_io_req_bits_data_3; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_4 = ctrl_unit_io_req_bits_data_4; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_5 = ctrl_unit_io_req_bits_data_5; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_6 = ctrl_unit_io_req_bits_data_6; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_data_7 = ctrl_unit_io_req_bits_data_7; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_set = ctrl_unit_io_req_bits_set; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_tag = ctrl_unit_io_req_bits_tag; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_way = ctrl_unit_io_req_bits_way; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_in_bits_dir = ctrl_unit_io_req_bits_dir; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_1_io_out_ready = slices_1_io_ctl_req_ready; // @[Pipeline.scala 25:9]
  assign ctl_reqs_req_buffer_2_clock = clock;
  assign ctl_reqs_req_buffer_2_reset = reset;
  assign ctl_reqs_req_buffer_2_io_in_valid = ctrl_unit_io_req_valid & bank_match_2; // @[HuanCun.scala 366:42]
  assign ctl_reqs_req_buffer_2_io_in_bits_cmd = ctrl_unit_io_req_bits_cmd; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_0 = ctrl_unit_io_req_bits_data_0; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_1 = ctrl_unit_io_req_bits_data_1; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_2 = ctrl_unit_io_req_bits_data_2; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_3 = ctrl_unit_io_req_bits_data_3; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_4 = ctrl_unit_io_req_bits_data_4; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_5 = ctrl_unit_io_req_bits_data_5; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_6 = ctrl_unit_io_req_bits_data_6; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_data_7 = ctrl_unit_io_req_bits_data_7; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_set = ctrl_unit_io_req_bits_set; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_tag = ctrl_unit_io_req_bits_tag; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_way = ctrl_unit_io_req_bits_way; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_in_bits_dir = ctrl_unit_io_req_bits_dir; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_2_io_out_ready = slices_2_io_ctl_req_ready; // @[Pipeline.scala 25:9]
  assign ctl_reqs_req_buffer_3_clock = clock;
  assign ctl_reqs_req_buffer_3_reset = reset;
  assign ctl_reqs_req_buffer_3_io_in_valid = ctrl_unit_io_req_valid & bank_match_3; // @[HuanCun.scala 366:42]
  assign ctl_reqs_req_buffer_3_io_in_bits_cmd = ctrl_unit_io_req_bits_cmd; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_0 = ctrl_unit_io_req_bits_data_0; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_1 = ctrl_unit_io_req_bits_data_1; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_2 = ctrl_unit_io_req_bits_data_2; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_3 = ctrl_unit_io_req_bits_data_3; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_4 = ctrl_unit_io_req_bits_data_4; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_5 = ctrl_unit_io_req_bits_data_5; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_6 = ctrl_unit_io_req_bits_data_6; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_data_7 = ctrl_unit_io_req_bits_data_7; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_set = ctrl_unit_io_req_bits_set; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_tag = ctrl_unit_io_req_bits_tag; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_way = ctrl_unit_io_req_bits_way; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_in_bits_dir = ctrl_unit_io_req_bits_dir; // @[HuanCun.scala 367:16]
  assign ctl_reqs_req_buffer_3_io_out_ready = slices_3_io_ctl_req_ready; // @[Pipeline.scala 25:9]
  assign ctl_resps_resp_buffer_0_clock = clock;
  assign ctl_resps_resp_buffer_0_reset = reset;
  assign ctl_resps_resp_buffer_0_io_in_valid = slices_0_io_ctl_resp_valid; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_cmd = slices_0_io_ctl_resp_bits_cmd; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_0 = slices_0_io_ctl_resp_bits_data_0; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_1 = slices_0_io_ctl_resp_bits_data_1; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_2 = slices_0_io_ctl_resp_bits_data_2; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_3 = slices_0_io_ctl_resp_bits_data_3; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_4 = slices_0_io_ctl_resp_bits_data_4; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_5 = slices_0_io_ctl_resp_bits_data_5; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_6 = slices_0_io_ctl_resp_bits_data_6; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_in_bits_data_7 = slices_0_io_ctl_resp_bits_data_7; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_0_io_out_ready = arb_io_in_0_ready; // @[HuanCun.scala 370:17]
  assign ctl_resps_resp_buffer_1_clock = clock;
  assign ctl_resps_resp_buffer_1_reset = reset;
  assign ctl_resps_resp_buffer_1_io_in_valid = slices_1_io_ctl_resp_valid; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_cmd = slices_1_io_ctl_resp_bits_cmd; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_0 = slices_1_io_ctl_resp_bits_data_0; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_1 = slices_1_io_ctl_resp_bits_data_1; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_2 = slices_1_io_ctl_resp_bits_data_2; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_3 = slices_1_io_ctl_resp_bits_data_3; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_4 = slices_1_io_ctl_resp_bits_data_4; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_5 = slices_1_io_ctl_resp_bits_data_5; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_6 = slices_1_io_ctl_resp_bits_data_6; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_in_bits_data_7 = slices_1_io_ctl_resp_bits_data_7; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_1_io_out_ready = arb_io_in_1_ready; // @[HuanCun.scala 370:17]
  assign ctl_resps_resp_buffer_2_clock = clock;
  assign ctl_resps_resp_buffer_2_reset = reset;
  assign ctl_resps_resp_buffer_2_io_in_valid = slices_2_io_ctl_resp_valid; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_cmd = slices_2_io_ctl_resp_bits_cmd; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_0 = slices_2_io_ctl_resp_bits_data_0; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_1 = slices_2_io_ctl_resp_bits_data_1; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_2 = slices_2_io_ctl_resp_bits_data_2; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_3 = slices_2_io_ctl_resp_bits_data_3; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_4 = slices_2_io_ctl_resp_bits_data_4; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_5 = slices_2_io_ctl_resp_bits_data_5; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_6 = slices_2_io_ctl_resp_bits_data_6; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_in_bits_data_7 = slices_2_io_ctl_resp_bits_data_7; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_2_io_out_ready = arb_io_in_2_ready; // @[HuanCun.scala 370:17]
  assign ctl_resps_resp_buffer_3_clock = clock;
  assign ctl_resps_resp_buffer_3_reset = reset;
  assign ctl_resps_resp_buffer_3_io_in_valid = slices_3_io_ctl_resp_valid; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_cmd = slices_3_io_ctl_resp_bits_cmd; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_0 = slices_3_io_ctl_resp_bits_data_0; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_1 = slices_3_io_ctl_resp_bits_data_1; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_2 = slices_3_io_ctl_resp_bits_data_2; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_3 = slices_3_io_ctl_resp_bits_data_3; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_4 = slices_3_io_ctl_resp_bits_data_4; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_5 = slices_3_io_ctl_resp_bits_data_5; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_6 = slices_3_io_ctl_resp_bits_data_6; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_in_bits_data_7 = slices_3_io_ctl_resp_bits_data_7; // @[Pipeline.scala 31:20]
  assign ctl_resps_resp_buffer_3_io_out_ready = arb_io_in_3_ready; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_valid = ctl_resps_resp_buffer_0_io_out_valid; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_cmd = ctl_resps_resp_buffer_0_io_out_bits_cmd; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_0 = ctl_resps_resp_buffer_0_io_out_bits_data_0; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_1 = ctl_resps_resp_buffer_0_io_out_bits_data_1; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_2 = ctl_resps_resp_buffer_0_io_out_bits_data_2; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_3 = ctl_resps_resp_buffer_0_io_out_bits_data_3; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_4 = ctl_resps_resp_buffer_0_io_out_bits_data_4; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_5 = ctl_resps_resp_buffer_0_io_out_bits_data_5; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_6 = ctl_resps_resp_buffer_0_io_out_bits_data_6; // @[HuanCun.scala 370:17]
  assign arb_io_in_0_bits_data_7 = ctl_resps_resp_buffer_0_io_out_bits_data_7; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_valid = ctl_resps_resp_buffer_1_io_out_valid; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_cmd = ctl_resps_resp_buffer_1_io_out_bits_cmd; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_0 = ctl_resps_resp_buffer_1_io_out_bits_data_0; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_1 = ctl_resps_resp_buffer_1_io_out_bits_data_1; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_2 = ctl_resps_resp_buffer_1_io_out_bits_data_2; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_3 = ctl_resps_resp_buffer_1_io_out_bits_data_3; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_4 = ctl_resps_resp_buffer_1_io_out_bits_data_4; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_5 = ctl_resps_resp_buffer_1_io_out_bits_data_5; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_6 = ctl_resps_resp_buffer_1_io_out_bits_data_6; // @[HuanCun.scala 370:17]
  assign arb_io_in_1_bits_data_7 = ctl_resps_resp_buffer_1_io_out_bits_data_7; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_valid = ctl_resps_resp_buffer_2_io_out_valid; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_cmd = ctl_resps_resp_buffer_2_io_out_bits_cmd; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_0 = ctl_resps_resp_buffer_2_io_out_bits_data_0; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_1 = ctl_resps_resp_buffer_2_io_out_bits_data_1; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_2 = ctl_resps_resp_buffer_2_io_out_bits_data_2; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_3 = ctl_resps_resp_buffer_2_io_out_bits_data_3; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_4 = ctl_resps_resp_buffer_2_io_out_bits_data_4; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_5 = ctl_resps_resp_buffer_2_io_out_bits_data_5; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_6 = ctl_resps_resp_buffer_2_io_out_bits_data_6; // @[HuanCun.scala 370:17]
  assign arb_io_in_2_bits_data_7 = ctl_resps_resp_buffer_2_io_out_bits_data_7; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_valid = ctl_resps_resp_buffer_3_io_out_valid; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_cmd = ctl_resps_resp_buffer_3_io_out_bits_cmd; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_0 = ctl_resps_resp_buffer_3_io_out_bits_data_0; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_1 = ctl_resps_resp_buffer_3_io_out_bits_data_1; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_2 = ctl_resps_resp_buffer_3_io_out_bits_data_2; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_3 = ctl_resps_resp_buffer_3_io_out_bits_data_3; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_4 = ctl_resps_resp_buffer_3_io_out_bits_data_4; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_5 = ctl_resps_resp_buffer_3_io_out_bits_data_5; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_6 = ctl_resps_resp_buffer_3_io_out_bits_data_6; // @[HuanCun.scala 370:17]
  assign arb_io_in_3_bits_data_7 = ctl_resps_resp_buffer_3_io_out_bits_data_7; // @[HuanCun.scala 370:17]
  assign arb_io_out_ready = ctrl_unit_io_resp_ready; // @[HuanCun.scala 371:24]
  always @(posedge clock) begin
    rst_REG <= reset; // @[HuanCun.scala 307:33]
    rst <= rst_REG; // @[HuanCun.scala 307:18]
    rst_REG_1 <= reset; // @[HuanCun.scala 307:33]
    rst_1 <= rst_REG_1; // @[HuanCun.scala 307:18]
    rst_REG_2 <= reset; // @[HuanCun.scala 307:33]
    rst_2 <= rst_REG_2; // @[HuanCun.scala 307:18]
    rst_REG_3 <= reset; // @[HuanCun.scala 307:33]
    rst_3 <= rst_REG_3; // @[HuanCun.scala 307:18]
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
  rst_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  rst = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  rst_REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  rst_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rst_REG_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rst_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  rst_REG_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  rst_3 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
